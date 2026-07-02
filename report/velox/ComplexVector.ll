inline.NumInlined: 9532
inline.NumDeleted: 3275
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 32
begin_hunk_0_@"_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_T0_SE_T1_T2_":bb.a
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.035
  store i32 %i.r, ptr %i.s, align 4, !tbaa !3
  %i.t = icmp slt i64 %spec.select, %i.b
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !859

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit" ] ; 5 uses
  %i.u = and i64 %2, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.w = add nsw i64 %2, -2
  %i.x = ashr exact i64 %i.w, 1
  %i.y = icmp eq i64 %.0.lcssa, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = shl nuw nsw i64 %.0.lcssa, 1
  %i.aa = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.128 = phi i64 [ %i.aa, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ae = icmp samesign ugt i64 %.128, %1
  br i1 %i.ae, label %.lr.ph.i, label %"_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_T0_SE_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.0135.i = phi i64 [ %.069.i, %bb.g ], [ %.128, %bb.e ] ; 3 uses
  %.06.in.i = add nsw i64 %.0135.i, -1
  %.069.i = lshr i64 %.06.in.i, 1                 ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.069.i ; 2 uses
  %.val14.i = load i32, ptr %i.af, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %4, align 8, !tbaa !490
  %i.ag = getelementptr i8, ptr %.val.val.i, i64 128
  %.val.val.val.i = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 3 uses
  %i.ah = load ptr, ptr %.val.val.val.i, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.val.i, ptr noundef nonnull %.val.val.val.i, i32 noundef %.val14.i, i32 noundef %3, i64 257), !inline_history !860 ; 2 uses
  %i.al = and i64 %i.ak, 4294967296
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiiEEbT_RT0_.exit.i"

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #38
  unreachable

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiiEEbT_RT0_.exit.i": ; preds = %.lr.ph.i
  %i.am = and i64 %i.ak, 2147483648
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %"_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_T0_SE_T1_RT2_.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiiEEbT_RT0_.exit.i"
  %i.an = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0135.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %i.ap = icmp samesign ugt i64 %.069.i, %1
  br i1 %i.ap, label %.lr.ph.i, label %"_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_T0_SE_T1_RT2_.exit", !llvm.loop !861

"_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_T0_SE_T1_RT2_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiiEEbT_RT0_.exit.i", %bb.g, %bb.e
  %.013.lcssa.i = phi i64 [ %.128, %bb.e ], [ %.0135.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiiEEbT_RT0_.exit.i" ], [ %.069.i, %bb.g ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i
  store i32 %3, ptr %i.aq, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_SD_T0_"(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.021 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not22 = icmp eq ptr %.021, %1
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %.024 = phi ptr [ %.021, %.lr.ph ], [ %.0, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit ] ; 6 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.024, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit ] ; 4 uses
  %.0.val = load i32, ptr %.024, align 4, !tbaa !3
  %.val17 = load i32, ptr %0, align 4, !tbaa !3
  %.val.val = load ptr, ptr %2, align 8, !tbaa !490
  %i.c = getelementptr i8, ptr %.val.val, i64 128
  %.val.val.val = load ptr, ptr %i.c, align 8, !tbaa !47 ; 3 uses
  %i.d = load ptr, ptr %.val.val.val, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 %i.f(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.val, ptr noundef nonnull %.val.val.val, i32 noundef %.0.val, i32 noundef %.val17, i64 257), !inline_history !858 ; 2 uses
  %i.h = and i64 %i.g, 4294967296
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.c, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #38
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit": ; preds = %bb.b
  %i.i = and i64 %i.g, 2147483648
  %.not18 = icmp eq i64 %i.i, 0
  %i.j = load i32, ptr %.024, align 4, !tbaa !3   ; 3 uses
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit"
  %i.k = ptrtoint ptr %.024 to i64
  %i.l = sub i64 %i.k, %i.b                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.f, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.pn23, i64 8
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.q, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.l, 4
  br i1 %i.r, label %bb.g, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.pn23, i64 4
  %i.t = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.t, ptr %i.s, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit"
  %.0.val14.i = load i32, ptr %.pn23, align 4, !tbaa !3
  %.val.val15.i = load ptr, ptr %2, align 8, !tbaa !490
  %i.u = getelementptr i8, ptr %.val.val15.i, i64 128
  %.val.val.val16.i = load ptr, ptr %i.u, align 8, !tbaa !47 ; 3 uses
  %i.v = load ptr, ptr %.val.val.val16.i, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i64 %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.val16.i, ptr noundef nonnull %.val.val.val16.i, i32 noundef %i.j, i32 noundef %.0.val14.i, i64 257), !inline_history !862 ; 2 uses
  %i.z = and i64 %i.y, 4294967296
  %.not.i.i.i17.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i17.i, label %._crit_edge.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIiPiEEbRT_T0_.exit.i"

._crit_edge.i:                                    ; preds = %bb.h, %bb.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #38
  unreachable

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIiPiEEbRT_T0_.exit.i": ; preds = %bb.h, %bb.i
  %i.aa = phi i64 [ %i.ah, %bb.i ], [ %i.y, %bb.h ]
  %.019.i = phi ptr [ %.0.i, %bb.i ], [ %.pn23, %bb.h ] ; 3 uses
  %.0918.i = phi ptr [ %.019.i, %bb.i ], [ %.024, %bb.h ] ; 2 uses
  %i.ab = and i64 %i.aa, 2147483648
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit, label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIiPiEEbRT_T0_.exit.i"
  %i.ac = load i32, ptr %.019.i, align 4, !tbaa !3
  store i32 %i.ac, ptr %.0918.i, align 4, !tbaa !3
  %.0.i = getelementptr inbounds i8, ptr %.019.i, i64 -4 ; 2 uses
  %.0.val.i = load i32, ptr %.0.i, align 4, !tbaa !3
  %.val.val.i = load ptr, ptr %2, align 8, !tbaa !490
  %i.ad = getelementptr i8, ptr %.val.val.i, i64 128
  %.val.val.val.i = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 3 uses
  %i.ae = load ptr, ptr %.val.val.val.i, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.val.i, ptr noundef nonnull %.val.val.val.i, i32 noundef %i.j, i32 noundef %.0.val.i, i64 257), !inline_history !862 ; 2 uses
  %i.ai = and i64 %i.ah, 4294967296
  %.not.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIiPiEEbRT_T0_.exit.i", !llvm.loop !508

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIiPiEEbRT_T0_.exit.i", %bb.g, %bb.f, %bb.e
  %.sink = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0918.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIiPiEEbRT_T0_.exit.i" ]
  store i32 %i.j, ptr %.sink, align 4, !tbaa !3
  %.0 = getelementptr inbounds nuw i8, ptr %.024, i64 4 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !863

.loopexit:                                        ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.170") align 8 %0, ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %5 = alloca %"class.std::optional", align 4     ; 5 uses
  %6 = alloca %"class.std::optional.229", align 1 ; 5 uses
  %7 = alloca %"class.std::optional", align 4     ; 5 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 13 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::vector.179", align 8  ; 19 uses
  %13 = alloca %"class.facebook::velox::(anonymous namespace)::UpdateMapRow", align 8 ; 19 uses
  %14 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %15 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %16 = alloca %"class.folly::Range", align 8     ; 10 uses
  %17 = alloca %"class.folly::Range", align 8     ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !109
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = atomicrmw add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !533    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !536  ; 2 uses
  %.not350 = icmp eq ptr %i.g, %i.i
  br i1 %.not350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110
  %i.r = sext i32 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !864
  store i32 0, ptr %7, align 4, !tbaa !61, !noalias !864
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.s, align 4, !tbaa !111, !noalias !864
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %10, i64 noundef %i.r, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.ak

bb.c:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit
  %.0351 = phi ptr [ %i.g, %.lr.ph ], [ %i.gg, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit ] ; 5 uses
  %i.t = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0351, ptr noundef null)
          to label %bb.d unwind label %.loopexit324

bb.d:                                             ; preds = %bb.c
  %.not139 = icmp eq ptr %i.t, null
  br i1 %.not139, label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, label %bb.e

.loopexit324:                                     ; preds = %bb.c, %bb.l, %bb.n, %bb.q, %bb.v
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp325:                            ; preds = %.invoke
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %8, align 8, !tbaa !109    ; 3 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.x = load i32, ptr %i.j, align 8, !tbaa !162
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.z = sext i32 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !867
  store i8 -1, ptr %6, align 1, !tbaa !61, !noalias !867
  store i8 1, ptr %i.l, align 1, !tbaa !356, !noalias !867
  %i.aa = add nsw i64 %i.z, 7
  %i.ab = lshr i64 %i.aa, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.ab, ptr noundef %i.y, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !867
  %i.ac = load ptr, ptr %9, align 8, !tbaa !109
  store ptr null, ptr %9, align 8, !tbaa !109
  %i.ad = load ptr, ptr %8, align 8, !tbaa !109   ; 7 uses
  store ptr %i.ac, ptr %8, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %.noexc.i.i unwind label %bb.i, !inline_history !124

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.al, null
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !50
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %..i.i.i
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.i, !inline_history !124

bb.i:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.h, %.noexc.i.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !109    ; 7 uses
  %.not.i144 = icmp eq ptr %.pr, null
  br i1 %.not.i144, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.as = atomicrmw sub ptr %i.ar, i32 1 acq_rel, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.au = load ptr, ptr %.pr, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !124

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125
  %.not.i.i145 = icmp eq ptr %i.ay, null
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !50
  %..i.i = select i1 %.not.i.i145, i64 8, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %..i.i
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !124

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.g, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !29  ; 6 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %.not140 = icmp eq ptr %i.be, null
  br i1 %.not140, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.bg = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0351, ptr noundef null)
          to label %bb.m unwind label %.loopexit324

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !112
  %i.bk = and i8 %i.bj, 2
  %.not.i146 = icmp eq i8 %i.bk, 0
  br i1 %.not.i146, label %bb.n, label %.invoke, !prof !20

.invoke:                                          ; preds = %bb.u, %bb.p, %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont unwind label %.loopexit.split-lp325

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !117
  %i.bn = load i32, ptr %i.j, align 8, !tbaa !162
  %i.bo = sext i32 %i.bn to i64
  invoke void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %i.bg, i64 noundef 0, ptr noundef %i.bm, i64 noundef 0, i64 noundef %i.bo)
          to label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit unwind label %.loopexit324

bb.o:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.ft
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  br label %bb.fq

bb.am:                                            ; preds = %bb.ab
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277

bb.an:                                            ; preds = %bb.ad
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EE11_M_allocateEm.exit.i, %bb.af
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

.lr.ph354:                                        ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183
  %.0111353 = phi ptr [ %i.jn, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 ], [ %i.hz, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0111353, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !211
  %i.iu = invoke noundef ptr @_ZNK8facebook5velox10BaseVector9asCheckedINS0_9MapVectorEEEPKT_v(ptr noundef nonnull align 8 dereferenceable(94) %i.it)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %.lr.ph354
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 128 ; 2 uses
  %i.iw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !7  ; 2 uses
  %i.iz = load ptr, ptr %i.iv, align 8, !tbaa !47
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !7
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = invoke noundef zeroext i1 %i.je(ptr noundef nonnull align 8 dereferenceable(18) %i.iy, ptr noundef nonnull align 8 dereferenceable(18) %i.jb)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.jf, label %bb.av, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs) #38
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ax, %bb.aw, %bb.ap, %.lr.ph354
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.au:                                            ; preds = %bb.ar
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.av:                                            ; preds = %bb.aq
  %i.ji = load ptr, ptr %i.iv, align 8, !tbaa !47 ; 2 uses
  %i.jj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 3 uses
  %i.jk = load ptr, ptr %i.hf, align 8, !tbaa !560
  %.not.i179 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not.i179, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji, i1 noundef zeroext true)
          to label %.noexc181 unwind label %bb.at

.noexc181:                                        ; preds = %bb.aw
  %i.jl = load ptr, ptr %i.hx, align 8, !tbaa !559
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 120
  store ptr %i.jm, ptr %i.hx, align 8, !tbaa !559
  br label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE17_M_realloc_insertIJRNS1_10BaseVectorEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji)
          to label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 unwind label %bb.at

_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183: ; preds = %bb.ax, %.noexc181
  %i.jn = getelementptr inbounds nuw i8, ptr %.0111353, i64 120 ; 2 uses
  %.not120 = icmp eq ptr %i.jn, %i.ia
  br i1 %.not120, label %._crit_edge355.loopexit, label %.lr.ph354

_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit: ; preds = %.noexc178, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.sroa.0.0 = phi ptr [ %i.ik, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 19 uses
  %.sink.i = phi i64 [ %i.im, %.noexc178 ], [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !886
  %i.jo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  %i.jp = load i32, ptr %i.n, align 8, !tbaa !162
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph371, label %._crit_edge372

.lr.ph371:                                        ; preds = %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  br label %bb.az

._crit_edge372:                                   ; preds = %bb.di, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %.0314.lcssa = phi i32 [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit ], [ %.1, %bb.di ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.jw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !892
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i32 noundef %.0314.lcssa, ptr noundef %i.jy)
          to label %bb.dj unwind label %bb.dn

bb.ay:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.aj
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.az:                                            ; preds = %.lr.ph371, %bb.di
  %indvars.iv407 = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next408, %bb.di ] ; 13 uses
  %.0314367 = phi i32 [ 0, %.lr.ph371 ], [ %.1, %bb.di ] ; 8 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv407
  store i32 %.0314367, ptr %i.ka, align 4, !tbaa !3
  %i.kb = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %.not317 = icmp eq ptr %i.kb, null
  br i1 %.not317, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !117
  %i.ke = lshr i64 %indvars.iv407, 6
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !43
  %i.kh = and i64 %indvars.iv407, 63
  %i.ki = shl nuw i64 1, %i.kh
  %i.kj = and i64 %i.kg, %i.ki
  %.not.i185 = icmp eq i64 %i.kj, 0
  br i1 %.not.i185, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 0, ptr %i.kk, align 4, !tbaa !3
  br label %bb.di

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.kl = load ptr, ptr %2, align 8, !tbaa !533   ; 2 uses
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !536 ; 2 uses
  %.not125.not356 = icmp eq ptr %i.kl, %i.km
  br i1 %.not125.not356, label %.critedge, label %.lr.ph360

.lr.ph360:                                        ; preds = %bb.bc
  %i.kn = trunc nuw nsw i64 %indvars.iv407 to i32 ; 3 uses
  br label %bb.be

bb.bd:                                            ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %.0117357, i64 120 ; 2 uses
  %.not125.not = icmp eq ptr %i.ko, %i.km
  br i1 %.not125.not, label %.critedge, label %bb.be

bb.be:                                            ; preds = %.lr.ph360, %bb.bd
  %.0117357 = phi ptr [ %i.kl, %.lr.ph360 ], [ %i.ko, %bb.bd ] ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0117357, i64 58
  %i.kq = load i8, ptr %i.kp, align 2, !tbaa !166, !range !147, !noundef !148
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ks = getelementptr inbounds nuw i8, ptr %.0117357, i64 59
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !256, !range !147, !noundef !148
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kv = getelementptr inbounds nuw i8, ptr %.0117357, i64 64
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.bh:                                            ; preds = %bb.bf
  %i.kx = getelementptr inbounds nuw i8, ptr %.0117357, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !203
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv407
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.be, %bb.bg, %bb.bh
  %.0.i = phi i32 [ %i.la, %bb.bh ], [ %i.kw, %bb.bg ], [ %i.kn, %bb.be ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.0117357, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !211
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !304
  %i.lf = sext i32 %.0.i to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !3
  %i.li = icmp slt i32 %i.lh, 1
  br i1 %i.li, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.lj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 2 uses
  %i.lk = load ptr, ptr %12, align 8, !tbaa !557  ; 3 uses
  %.not377 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not377, label %._crit_edge366, label %.lr.ph365

.critedge:                                        ; preds = %bb.bd, %bb.bc
  %i.ll = load ptr, ptr %i.js, align 8, !tbaa !304 ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv407
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3  ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !3
  %i.lp = icmp sgt i32 %i.ln, 0
  br i1 %i.lp, label %bb.bi, label %bb.di

bb.bi:                                            ; preds = %.critedge
  %i.lq = load ptr, ptr %i.jt, align 8, !tbaa !306
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv407
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3  ; 2 uses
  %i.lt = load ptr, ptr %i.ju, align 8, !tbaa !895 ; 6 uses
  %i.lu = load ptr, ptr %i.jv, align 8, !tbaa !897
  %.not.i.i186 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not.i.i186, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store i32 %.0314367, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.7294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 %i.ln, ptr %.sroa.7294.0..sroa_idx, align 4, !tbaa !3
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store ptr %i.lv, ptr %i.ju, align 8, !tbaa !895
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.lw = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 4 uses
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.bl, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc188 unwind label %.loopexit.split-lp320

.noexc188:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.mb = sdiv exact i64 %i.lz, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 768614336404564650)
  %i.mf = select i1 %i.md, i64 768614336404564650, i64 %i.me ; 3 uses
  %.not.i.i.i.i187 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i187)
  %i.mg = mul nuw nsw i64 %i.mf, 12
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #42
          to label %.noexc189 unwind label %.loopexit319 ; 4 uses

.noexc189:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 4 uses
  store i32 %i.ls, ptr %i.mi, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %.0314367, ptr %.sroa.6.0..sroa_idx292, align 4, !tbaa !3
  %.sroa.7294.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store i32 %i.ln, ptr %.sroa.7294.0..sroa_idx295, align 4, !tbaa !3
  %i.mj = icmp sgt i64 %i.lz, 0
  br i1 %i.mj, label %bb.bm, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.bm:                                            ; preds = %.noexc189
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr align 4 %i.lw, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.bm, %.noexc189
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %.not.i17.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #40
  %.pre431.pre = load ptr, ptr %i.js, align 8, !tbaa !304
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %.pre431 = phi ptr [ %.pre431.pre, %bb.bn ], [ %i.ll, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i ]
  store ptr %i.mh, ptr %.sroa.0.0, align 8, !tbaa !898
  store ptr %i.mk, ptr %i.ju, align 8, !tbaa !895
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %i.mh, i64 %i.mf
  store ptr %i.ml, ptr %i.jv, align 8, !tbaa !897
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bj
  %i.mm = phi ptr [ %.pre431, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ll, %bb.bj ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv407
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !3
  %i.mp = add nsw i32 %i.mo, %.0314367
  br label %bb.di

.loopexit319:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp320:                            ; preds = %bb.bl
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

._crit_edge366:                                   ; preds = %._crit_edge363, %.preheader
  %.val = load i64, ptr %i.jr, align 8, !tbaa !899 ; 3 uses
  %i.mq = and i64 %.val, -4                       ; 2 uses
  %.not9.i = icmp eq i64 %i.mq, 0
  br i1 %.not9.i, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge366
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = lshr i64 %.val, 2
  %i.mt = mul nuw i64 %i.ms, 3
  %i.mu = and i64 %i.mt, 3
  %i.mv = shl i64 %.val, 2
  %i.mw = and i64 %i.mv, 12
  %i.mx = or disjoint i64 %i.mu, %i.mw
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, %.lr.ph.i
  %i.my = phi i32 [ 0, %.lr.ph.i ], [ %i.nz, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 2 uses
  %.sroa.8.011.i = phi i64 [ %i.mx, %.lr.ph.i ], [ %.sroa.8.011.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %.sroa.01.010.i = phi ptr [ %i.mr, %.lr.ph.i ], [ %.sroa.01.010.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 4
  %.sroa.0.0.copyload.i = load i64, ptr %i.mz, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %i.na = shl i64 %.sroa.0.0.copyload.i, 24
  %i.nb = ashr i64 %i.na, 56
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.nb ; 4 uses
  %i.nd = add nsw i32 %i.my, %.0314367            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !895 ; 6 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !897
  %.not.i.i.i.i191 = icmp eq ptr %i.nf, %i.nh
  br i1 %.not.i.i.i.i191, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.nf, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store i32 %i.nd, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  store ptr %i.ni, ptr %i.ne, align 8, !tbaa !895
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

bb.bp:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  %i.nj = load ptr, ptr %i.nc, align 8, !tbaa !898 ; 4 uses
  %i.nk = ptrtoint ptr %i.nf to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl                    ; 6 uses
  %i.nn = icmp eq i64 %i.nm, 9223372036854775800
  br i1 %i.nn, label %bb.bq, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc194 unwind label %.loopexit.split-lp

.noexc194:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bp
  %i.no = sdiv exact i64 %i.nm, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.no, i64 1)
  %i.np = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.no ; 2 uses
  %i.nq = icmp ult i64 %i.np, %i.no
  %i.nr = call i64 @llvm.umin.i64(i64 %i.np, i64 768614336404564650)
  %i.ns = select i1 %i.nq, i64 768614336404564650, i64 %i.nr ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ns, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.nt = mul nuw nsw i64 %i.ns, 12
  %i.nu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nt) #42
          to label %.noexc195 unwind label %.loopexit318 ; 4 uses

.noexc195:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 %i.nm ; 4 uses
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.nv, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 %i.nd, ptr %.sroa.5.0..sroa_idx2.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx4.i.i, align 4, !tbaa !3
  %i.nw = icmp sgt i64 %i.nm, 0
  br i1 %i.nw, label %bb.br, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.br:                                            ; preds = %.noexc195
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nu, ptr align 4 %i.nj, i64 %i.nm, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.br, %.noexc195
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.nm) #40
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bs, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.nu, ptr %i.nc, align 8, !tbaa !898
  store ptr %i.nx, ptr %i.ne, align 8, !tbaa !895
  %i.ny = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.ns
  store ptr %i.ny, ptr %i.ng, align 8, !tbaa !897
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.bo
  %i.nz = add nuw nsw i32 %i.my, 1                ; 2 uses
  %i.oa = getelementptr inbounds i8, ptr %.sroa.01.010.i, i64 -16
  %.neg.i.i.i.i = mul nsw i64 %.sroa.8.011.i, -12
  %i.ob = getelementptr inbounds i8, ptr %i.oa, i64 %.neg.i.i.i.i ; 2 uses
  %.not.i9.i.i = icmp eq i64 %.sroa.8.011.i, 0
  br i1 %.not.i9.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.bt, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i
  br label %.critedge.i.i.i

bb.bt:                                            ; preds = %thread-pre-split.i.i
  %.not.i.i.i193 = icmp eq i64 %i.oe, 0
  br i1 %.not.i.i.i193, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i, %bb.bt
  %i.oc = phi i64 [ %i.oe, %bb.bt ], [ %.sroa.8.011.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.od = phi ptr [ %i.of, %bb.bt ], [ %.sroa.01.010.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.oe = add nsw i64 %i.oc, -1                   ; 4 uses
  %i.of = getelementptr inbounds i8, ptr %i.od, i64 -12 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oe
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !61
  %.not.i.i192 = icmp eq i8 %i.oh, 0
  br i1 %.not.i.i192, label %bb.bt, label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, !prof !13, !llvm.loop !900

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %bb.bu
  %.017.i.i.i = phi ptr [ %i.ok, %bb.bu ], [ %i.ob, %.critedge.i.i.i.preheader ] ; 4 uses
  %i.oi = getelementptr i8, ptr %.017.i.i.i, i64 14
  %.017.i.val.i.i = load i8, ptr %i.oi, align 1, !tbaa !61
  %i.oj = and i8 %.017.i.val.i.i, 15
  %.not4.i.i = icmp eq i8 %i.oj, 0
  br i1 %.not4.i.i, label %bb.bu, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, !prof !20

bb.bu:                                            ; preds = %.critedge.i.i.i
  %i.ok = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -192 ; 3 uses
  %.val25.i.i = load <16 x i8>, ptr %i.ok, align 16, !tbaa !61
  %i.ol = icmp slt <16 x i8> %.val25.i.i, zeroinitializer
  %i.om = bitcast <16 x i1> %i.ol to i16
  %i.on = and i16 %i.om, 16383                    ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -384
  call void @llvm.prefetch.p0(ptr nonnull %i.oo, i32 0, i32 3, i32 1)
  %.not6.i.i = icmp eq i16 %i.on, 0
  br i1 %.not6.i.i, label %.critedge.i.i.i, label %bb.bv, !prof !13, !llvm.loop !901

bb.bv:                                            ; preds = %bb.bu
  %i.op = zext nneg i16 %i.on to i32
  %i.oq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.op, i1 true)
  %i.or = xor i32 %i.oq, 31
  %i.os = zext nneg i32 %i.or to i64              ; 2 uses
  %i.ot = icmp ne ptr %i.ok, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ot)
  %i.ou = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -176
  %i.ov = getelementptr inbounds nuw [12 x i8], ptr %i.ou, i64 %i.os
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge: ; preds = %thread-pre-split.i.i, %bb.bv
  %.sroa.8.011.i.be = phi i64 [ %i.os, %bb.bv ], [ %i.oe, %thread-pre-split.i.i ]
  %.sroa.01.010.i.be = phi ptr [ %i.ov, %bb.bv ], [ %i.of, %thread-pre-split.i.i ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

.lr.ph365:                                        ; preds = %.preheader, %._crit_edge363
  %.pre428 = phi ptr [ %.pre428434, %._crit_edge363 ], [ %i.lk, %.preheader ] ; 3 uses
  %i.ow = phi ptr [ %i.qd, %._crit_edge363 ], [ %i.lk, %.preheader ]
  %i.ox = phi ptr [ %i.qe, %._crit_edge363 ], [ %i.lj, %.preheader ]
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %._crit_edge363 ], [ 0, %.preheader ] ; 5 uses
  %i.oy = icmp eq i64 %indvars.iv404, 0
  br i1 %i.oy, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph365
  %i.oz = load ptr, ptr %2, align 8, !tbaa !533
  %i.pa = getelementptr [120 x i8], ptr %i.oz, i64 %indvars.iv404 ; 5 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 -72
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !211 ; 3 uses
  %i.pd = getelementptr i8, ptr %i.pa, i64 -62
  %i.pe = load i8, ptr %i.pd, align 2, !tbaa !166, !range !147, !noundef !148
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pg = getelementptr i8, ptr %i.pa, i64 -61
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !256, !range !147, !noundef !148
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pj = getelementptr i8, ptr %i.pa, i64 -56
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

bb.bz:                                            ; preds = %bb.bx
  %i.pl = getelementptr i8, ptr %i.pa, i64 -112
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !203
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv407
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

_ZNK8facebook5velox13DecodedVector5indexEi.exit197: ; preds = %.lr.ph365, %bb.bz, %bb.by, %bb.bw
  %i.pp = phi ptr [ %i.pc, %bb.bz ], [ %i.pc, %bb.bw ], [ %i.pc, %bb.by ], [ %1, %.lr.ph365 ] ; 2 uses
  %i.pq = phi i32 [ %i.po, %bb.bz ], [ %i.kn, %bb.bw ], [ %i.pk, %bb.by ], [ %i.kn, %.lr.ph365 ]
  %i.pr = sext i32 %i.pq to i64                   ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 120
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !304
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pr
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3  ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph362, label %._crit_edge363

.lr.ph362:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 104
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !306
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.pr
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !3
  %i.qb = trunc i64 %indvars.iv404 to i8
  %i.qc = sext i32 %i.qa to i64
  %wide.trip.count = zext nneg i32 %i.pv to i64
  br label %bb.ca

._crit_edge363.loopexit:                          ; preds = %.loopexit
  %.pre430 = load ptr, ptr %i.hx, align 8, !tbaa !559
  br label %._crit_edge363

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %.pre428434 = phi ptr [ %.pre428436, %._crit_edge363.loopexit ], [ %.pre428, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ]
  %i.qd = phi ptr [ %20, %._crit_edge363.loopexit ], [ %i.ow, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %i.qe = phi ptr [ %.pre430, %._crit_edge363.loopexit ], [ %i.ox, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = ptrtoint ptr %i.qd to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = sdiv exact i64 %i.qh, 120
  %i.qj = icmp ugt i64 %i.qi, %indvars.iv.next405
  br i1 %i.qj, label %.lr.ph365, label %._crit_edge366, !llvm.loop !902

bb.ca:                                            ; preds = %.lr.ph362, %.loopexit
  %.pre428435 = phi ptr [ %.pre428, %.lr.ph362 ], [ %.pre428436, %.loopexit ]
  %18 = phi ptr [ %.pre428, %.lr.ph362 ], [ %20, %.loopexit ] ; 2 uses
  %indvars.iv401 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next402, %.loopexit ] ; 2 uses
  %19 = add nsw i64 %indvars.iv401, %i.qc         ; 6 uses
  %i.qk = getelementptr inbounds nuw [120 x i8], ptr %18, i64 %indvars.iv404 ; 10 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !254 ; 4 uses
  %.not.i198 = icmp eq ptr %i.qm, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.qk, i64 58
  %.pre429.a = load i8, ptr %.phi.trans.insert, align 2, !tbaa !166, !range !147 ; 2 uses
  br i1 %.not.i198, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qn = trunc nuw i8 %.pre429.a to i1
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 57
  %i.qp = load i8, ptr %i.qo, align 1, !range !147
  %i.qq = trunc nuw i8 %i.qp to i1
  %or.cond.i = select i1 %i.qn, i1 true, i1 %i.qq
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.qr = lshr i64 %19, 6
  %i.qs = and i64 %i.qr, 67108863
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !43
  %i.qv = and i64 %19, 63
  %i.qw = shl nuw i64 1, %i.qv
  %i.qx = and i64 %i.qu, %i.qw
  %.not.i.i200 = icmp eq i64 %i.qx, 0
  br i1 %.not.i.i200, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !903

bb.cd:                                            ; preds = %bb.cb
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qk, i64 59
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !256, !range !147, !noundef !148
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !203
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %19
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !3
  %i.rf = zext i32 %i.re to i64                   ; 2 uses
  %i.rg = lshr i64 %i.rf, 6
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.rg
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !43
  %i.rj = and i64 %i.rf, 63
  %i.rk = shl nuw i64 1, %i.rj
  %i.rl = and i64 %i.rk, %i.ri
  %.not.i7.i = icmp eq i64 %i.rl, 0
  br i1 %.not.i7.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.rm = load i64, ptr %i.qm, align 8, !tbaa !43
  %i.rn = and i64 %i.rm, 1
  %.not.i6.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i6.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

bb.cf:                                            ; preds = %bb.ce, %bb.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %bb.cr
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.ci:                                            ; preds = %bb.cf
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %bb.ce, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !904
  %i.rs = trunc nsw i64 %19 to i32
  br label %bb.cj

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.ca, %bb.cc
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !904 ; 2 uses
  %i.rv = trunc nuw i8 %.pre429.a to i1
  %i.rw = trunc nsw i64 %19 to i32                ; 3 uses
  br i1 %i.rv, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.rx = phi i32 [ %i.rs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.ry = phi ptr [ %i.rr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qk, i64 59
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !256, !range !147, !noundef !148
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.se = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !203
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %19
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i: ; preds = %bb.cl, %bb.ck, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.si = phi i32 [ %i.rx, %bb.cl ], [ %i.rx, %bb.ck ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sj = phi ptr [ %i.ry, %bb.cl ], [ %i.ry, %bb.ck ], [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.sh, %bb.cl ], [ %i.sd, %bb.ck ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sk = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.sl = lshr i64 %i.sk, 6
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sl
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !43
  %i.so = and i64 %i.sk, 63
  %i.sp = lshr i64 %i.sn, %i.so                   ; 2 uses
  %i.sq = trunc i64 %i.sp to i8
  %i.sr = and i8 %i.sq, 1                         ; 2 uses
  %i.ss = and i64 %i.sp, 1                        ; 2 uses
  %i.st = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ss) ; 2 uses
  %i.su = lshr i64 %i.st, 24
  %i.sv = or i64 %i.su, 128                       ; 4 uses
  %i.sw = add nuw nsw i64 %i.ss, %i.st            ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !906 ; 3 uses
  %i.sx = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.sx, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !886, !noalias !906 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i
  %i.sy = shl nuw nsw i64 %i.sv, 1
  %i.sz = or disjoint i64 %i.sy, 1
  %i.ta = trunc nuw i64 %i.sv to i8
  %i.tb = insertelement <16 x i8> poison, i8 %i.ta, i64 0
  %i.tc = shufflevector <16 x i8> %i.tb, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.td = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.te = shl nuw i64 1, %i.td
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %bb.cm
  %.0.i43.i.i.i.i.i = phi i64 [ %i.sw, %bb.cm ], [ %i.tx, %bb.cq ] ; 2 uses
  %.023.i42.i.i.i.i.i = phi i64 [ %i.te, %bb.cm ], [ %i.tw, %bb.cq ]
  %i.tf = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i43.i.i.i.i.i, i64 range(i64 0, 256) %i.td)
  %i.tg = getelementptr inbounds nuw [192 x i8], ptr %.pre.i.i.i.i.i, i64 %i.tf ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 112
  call void @llvm.prefetch.p0(ptr nonnull %i.ti, i32 0, i32 3, i32 1), !noalias !906
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.tg, align 16, !noalias !906 ; 2 uses
  %i.tj = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.tc
  %i.tk = bitcast <16 x i1> %i.tj to i16
  %i.tl = and i16 %i.tk, 16383
  %i.tm = zext nneg i16 %i.tl to i32
  %i.tn = icmp ne ptr %i.tg, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.to = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.co, %bb.cn
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.tm, %bb.cn ], [ %i.tr, %bb.co ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tp = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.tq = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.tr = and i32 %i.tq, %.sroa.07.0.i.i.i.i.i
  %i.ts = zext nneg i32 %i.tp to i64
  call void @llvm.assume(i1 %i.tn)
  %i.tt = getelementptr inbounds nuw [12 x i8], ptr %i.th, i64 %i.ts ; 2 uses
  %.val38.i.i.i.i.i = load i8, ptr %i.tt, align 1, !tbaa !149, !range !147, !noalias !906, !noundef !148
  %i.tu = icmp eq i8 %i.sr, %.val38.i.i.i.i.i
  br i1 %i.tu, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !20, !llvm.loop !913

bb.cp:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tv = icmp eq i8 %i.to, 0
  br i1 %i.tv, label %.thread31.i.i.i.i.i, label %bb.cq, !prof !20

bb.cq:                                            ; preds = %bb.cp
  %i.tw = add i64 %.023.i42.i.i.i.i.i, -1         ; 2 uses
  %i.tx = add i64 %i.sz, %.0.i43.i.i.i.i.i
  %.not.i.i.i.i.i.i201 = icmp eq i64 %i.tw, 0
  br i1 %.not.i.i.i.i.i.i201, label %.thread31.i.i.i.i.i, label %bb.cn, !llvm.loop !914

.thread31.i.i.i.i.i:                              ; preds = %bb.cq, %bb.cp, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i ], [ %i.td, %bb.cp ], [ %i.td, %bb.cq ] ; 3 uses
  %i.ty = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.ty, align 1, !tbaa !61, !noalias !906
  %i.tz = and i8 %.val.i.i.i.i.i.i, 15
  %i.ua = zext nneg i8 %i.tz to i64               ; 2 uses
  %i.ub = shl i64 %i.ua, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.sx, %i.ub
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.thread31.i.i.i.i.i
  %i.uc = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.sx, i64 noundef %i.uc, i64 noundef %i.ua, i64 noundef %i.ub)
          to label %.noexc202 unwind label %bb.ch

.noexc202:                                        ; preds = %bb.cr
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !886, !noalias !906
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !906
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc202, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc202 ] ; 2 uses
  %i.ud = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc202 ] ; 3 uses
  %i.ue = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.sw, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.uf = getelementptr inbounds nuw [192 x i8], ptr %i.ud, i64 %i.ue ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.uf, align 16, !tbaa !61, !noalias !906
  %i.ug = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.uh = bitcast <16 x i1> %i.ug to i16
  %i.ui = and i16 %i.uh, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.ui, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.uj = shl nuw nsw i64 %i.sv, 1
  %i.uk = or disjoint i64 %i.uj, 1
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cs
  %i.ul = phi i64 [ %i.ue, %bb.cs ], [ %i.ur, %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.sw, %bb.cs ], [ %i.uq, %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.um = getelementptr inbounds nuw [192 x i8], ptr %i.ud, i64 %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 15 ; 2 uses
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !915, !noalias !906 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.uo, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.up = add i8 %i.uo, 1
  store i8 %i.up, ptr %i.un, align 1, !tbaa !915, !noalias !906
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %i.uq = add i64 %i.uk, %.030.i.i.i.i.i          ; 2 uses
  %i.ur = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.uq, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.us = getelementptr inbounds nuw [192 x i8], ptr %i.ud, i64 %i.ur ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.us, align 16, !noalias !906 ; 2 uses
  %i.ut = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.uu = bitcast <16 x i1> %i.ut to i16
  %i.uv = and i16 %i.uu, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.uv, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.ct, label %bb.cv, !llvm.loop !919

bb.cv:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.uw = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.ux = getelementptr inbounds nuw i8, ptr %i.us, i64 14
  %i.uy = add i8 %i.uw, 16
  store i8 %i.uy, ptr %i.ux, align 2, !tbaa !920, !noalias !906
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.ui, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.uv, %bb.cv ]
  %.1.i.i.i.i.i = phi ptr [ %i.uf, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.us, %bb.cv ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.uz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.va = zext nneg i16 %i.uz to i64              ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.va ; 2 uses
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !61, !noalias !906
  %i.vd = icmp eq i8 %i.vc, 0
  br i1 %i.vd, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !906
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cw
  %i.ve = trunc nuw i64 %i.sv to i8
  store i8 %i.ve, ptr %i.vb, align 1, !tbaa !61, !noalias !906
  %i.vf = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.vg = getelementptr inbounds nuw [12 x i8], ptr %i.vf, i64 %i.va ; 4 uses
  %i.vh = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vh)
  store i8 %i.sr, ptr %i.vg, align 4, !tbaa !921, !noalias !906
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  store i64 0, ptr %i.vi, align 4, !noalias !906
  %i.vj = lshr i64 %i.va, 2
  %i.vk = ptrtoint ptr %i.vg to i64
  %i.vl = or i64 %i.vj, %i.vk                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.jr, align 8, !tbaa !899, !noalias !906
  %i.vm = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.vl
  %.pre427 = load ptr, ptr %12, align 8, !tbaa !557 ; 2 uses
  br i1 %i.vm, label %bb.cy, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cy:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.vl, ptr %i.jr, align 8, !tbaa !43, !noalias !906
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cy, %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !906 ; 2 uses
  %i.vn = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.vo = add i64 %i.vn, 256
  %i.vp = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.vq = or disjoint i64 %i.vo, %i.vp
  store i64 %i.vq, ptr %i.jo, align 8, !tbaa !905, !noalias !906
  br label %.loopexit

.loopexit:                                        ; preds = %bb.co, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre428436 = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre428435, %bb.co ] ; 2 uses
  %20 = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %18, %bb.co ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.vg, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.tt, %bb.co ] ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 4
  store i32 %i.si, ptr %i.vr, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i8 %i.qb, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !61
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge363.loopexit, label %bb.ca, !llvm.loop !924

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge366
  %.0 = phi i32 [ 0, %._crit_edge366 ], [ %i.nz, %.critedge.i.i.i ] ; 2 uses
  %i.vs = load ptr, ptr %13, align 8, !tbaa !886  ; 4 uses
  %i.vt = getelementptr i8, ptr %i.vs, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.vt, align 1, !tbaa !925
  %i.vu = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.vu, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE5clearEv.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905 ; 4 uses
  %i.vv = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i203 = icmp eq i64 %i.vv, 0         ; 2 uses
  %i.vw = getelementptr i8, ptr %i.vs, i64 14
  %.val.i.i.i.i.i204 = load i8, ptr %i.vw, align 1, !tbaa !61
  %i.vx = and i8 %.val.i.i.i.i.i204, 15
  %i.vy = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.vy, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i.i.i.i203, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.da
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.dc

bb.db:                                            ; preds = %.preheader.i.i.i.i
  %i.vz = load ptr, ptr %13, align 8, !tbaa !886  ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 14
  store i8 %i.vx, ptr %i.wa, align 2, !tbaa !920
  br label %bb.dc

.preheader.i.i.i.i:                               ; preds = %bb.da, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.wd, %.preheader.i.i.i.i ], [ 0, %bb.da ] ; 2 uses
  %i.wb = load ptr, ptr %13, align 8, !tbaa !886
  %i.wc = getelementptr inbounds nuw [192 x i8], ptr %i.wb, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.wc, i8 0, i64 16, i1 false)
  %i.wd = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905
  %i.we = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.wd, %i.we
  %i.wf = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.wf, label %.preheader.i.i.i.i, label %bb.db, !llvm.loop !928

bb.dc:                                            ; preds = %bb.db, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.we, %bb.db ] ; 2 uses
  %i.wg = phi ptr [ %i.vs, %._crit_edge.i.i.i.i ], [ %i.vz, %bb.db ]
  store i64 0, ptr %i.jr, align 8, !tbaa !43
  store i64 %.pre-phi.i.i.i.i, ptr %i.jo, align 8, !tbaa !905
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cz
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.dc ], [ %.val23.i.i.i.i, %bb.cz ] ; 2 uses
  %i.wh = phi ptr [ %i.wg, %bb.dc ], [ %i.vs, %bb.cz ] ; 2 uses
  br i1 %.not.i.i.i.i203, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE5clearEv.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wi = icmp eq i64 %.val21.i.i.i.i, 0
  br i1 %i.wi, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.wj = getelementptr i8, ptr %i.wh, i64 14
  %.val18.i.i.i.i = load i8, ptr %i.wj, align 1, !tbaa !61
  %i.wk = and i8 %.val18.i.i.i.i, 15
  %narrow.i.i.i.i = mul nuw i8 %i.wk, 12
  %i.wl = zext i8 %narrow.i.i.i.i to i64
  %i.wm = add nuw nsw i64 %i.wl, 16
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.wn = shl i64 192, %.val21.i.i.i.i
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i.i = phi i64 [ %i.wm, %bb.df ], [ %i.wn, %bb.dg ]
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !886
  store i64 0, ptr %i.jo, align 8, !tbaa !905
  call void @_ZdlPvm(ptr noundef nonnull %i.wh, i64 noundef %.0.i.i.i.i.i) #39
  br label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE5clearEv.exit

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE5clearEv.exit: ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, %bb.dd, %bb.dh
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 %.0, ptr %i.wo, align 4, !tbaa !3
  %i.wp = add nsw i32 %.0, %.0314367
  br label %bb.di

bb.di:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE5clearEv.exit, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit, %.critedge, %bb.bb
  %.1 = phi i32 [ %.0314367, %bb.bb ], [ %i.wp, %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE5clearEv.exit ], [ %i.mp, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit ], [ %.0314367, %.critedge ] ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %i.wq = load i32, ptr %i.n, align 8, !tbaa !162
  %i.wr = sext i32 %i.wq to i64
  %i.ws = icmp slt i64 %indvars.iv.next408, %i.wr
  br i1 %i.ws, label %bb.az, label %._crit_edge372, !llvm.loop !929

.loopexit318:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp:                               ; preds = %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.dj:                                            ; preds = %._crit_edge372
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.wt = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wu = load <2 x ptr>, ptr %4, align 16, !tbaa !27, !noalias !933
  store <2 x ptr> %i.wu, ptr %14, align 16, !tbaa !27, !alias.scope !933
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !892
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !47
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.wy = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !934
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.wx, i32 noundef %.0314.lcssa, ptr noundef %i.wy)
          to label %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206 unwind label %bb.do

_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206: ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.wz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.xa = load <2 x ptr>, ptr %3, align 16, !tbaa !27, !noalias !940
  store <2 x ptr> %i.xa, ptr %15, align 16, !tbaa !27, !alias.scope !940
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !934
  %i.xb = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %.not378 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %.sroa.0.0 ; 2 uses
  br i1 %.not378, label %._crit_edge375, label %bb.dk

bb.dk:                                            ; preds = %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  %i.xc = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.xd = sub i64 %i.xc, %i.xb                    ; 2 uses
  %i.xe = sdiv exact i64 %i.xd, 24
  %i.xf = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.xh = load ptr, ptr %14, align 16, !tbaa !47  ; 2 uses
  %i.xi = load ptr, ptr %i.hy, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.xj = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !895
  %i.xm = ptrtoint ptr %i.xl to i64
  %i.xn = ptrtoint ptr %i.xj to i64
  %i.xo = sub i64 %i.xm, %i.xn
  store ptr %i.xj, ptr %16, align 8, !tbaa !233
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xo
  store ptr %i.xp, ptr %i.xf, align 8, !tbaa !236
  %i.xq = load ptr, ptr %i.xh, align 8, !tbaa !50
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 216
  %i.xs = load ptr, ptr %i.xr, align 8
  invoke void %i.xs(ptr noundef nonnull align 8 dereferenceable(94) %i.xh, ptr noundef %i.xi, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.dl unwind label %.loopexit.split-lp416

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %i.xt = load ptr, ptr %15, align 16, !tbaa !47  ; 2 uses
  %i.xu = load ptr, ptr %i.wv, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.xv = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.xw = load ptr, ptr %i.xk, align 8, !tbaa !895
  %i.xx = ptrtoint ptr %i.xw to i64
  %i.xy = ptrtoint ptr %i.xv to i64
  %i.xz = sub i64 %i.xx, %i.xy
  store ptr %i.xv, ptr %17, align 8, !tbaa !233
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xz
  store ptr %i.ya, ptr %i.xg, align 8, !tbaa !236
  %i.yb = load ptr, ptr %i.xt, align 8, !tbaa !50
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 216
  %i.yd = load ptr, ptr %i.yc, align 8
  invoke void %i.yd(ptr noundef nonnull align 8 dereferenceable(94) %i.xt, ptr noundef %i.xu, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.dm unwind label %.loopexit.split-lp421

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  %exitcond413.peel.not = icmp eq i64 %i.xd, 24
  br i1 %exitcond413.peel.not, label %._crit_edge375, label %.peel.next

._crit_edge375:                                   ; preds = %bb.dq, %bb.dm, %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.ye = load ptr, ptr %i.p, align 8, !tbaa !110
  store ptr %i.ye, ptr %i.a, align 8, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.yf = load i32, ptr %i.n, align 8, !tbaa !162
  store i32 %i.yf, ptr %i.b, align 4, !tbaa !3
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  store ptr null, ptr %0, align 8, !tbaa !490, !alias.scope !941
  %i.yg = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #42
          to label %.noexc207 unwind label %bb.ex ; 6 uses

.noexc207:                                        ; preds = %._crit_edge375
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !559 ; 2 uses
  %.not4.i.i.i259 = icmp eq ptr %i.afb, %i.afd
  br i1 %.not4.i.i.i259, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269, label %.lr.ph.i.i.i260

.lr.ph.i.i.i260:                                  ; preds = %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265
  %.05.i.i.i261 = phi ptr [ %i.afs, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265 ], [ %i.afb, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258 ] ; 5 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 96
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i262 = icmp eq ptr %i.aff, null
  br i1 %.not.i.i.i.i.i.i.i.i.i262, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i260
  %i.afg = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 112
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !89
  %i.afi = ptrtoint ptr %i.afh to i64
  %i.afj = ptrtoint ptr %i.aff to i64
  %i.afk = sub i64 %i.afi, %i.afj
  call void @_ZdlPvm(ptr noundef nonnull %i.aff, i64 noundef %i.afk) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263:     ; preds = %bb.fk, %.lr.ph.i.i.i260
  %i.afl = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 72
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !219 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i264 = icmp eq ptr %i.afm, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i264, label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263
  %i.afn = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 88
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !220
  %i.afp = ptrtoint ptr %i.afo to i64
  %i.afq = ptrtoint ptr %i.afm to i64
  %i.afr = sub i64 %i.afp, %i.afq
  call void @_ZdlPvm(ptr noundef nonnull %i.afm, i64 noundef %i.afr) #40
  br label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265

_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265: ; preds = %bb.fl, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263
  %i.afs = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 120 ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.afs, %i.afd
  br i1 %.not.i.i.i266, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267, label %.lr.ph.i.i.i260, !llvm.loop !561

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267: ; preds = %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265
  %.pr.i268 = load ptr, ptr %12, align 8, !tbaa !557
  br label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258
  %i.aft = phi ptr [ %.pr.i268, %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267 ], [ %i.afb, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258 ] ; 3 uses
  %.not.i.i1.i270 = icmp eq ptr %i.aft, null
  br i1 %.not.i.i1.i270, label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271, label %bb.fm

bb.fm:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269
  %i.afu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !560
  %i.afw = ptrtoint ptr %i.afv to i64
  %i.afx = ptrtoint ptr %i.aft to i64
  %i.afy = sub i64 %i.afw, %i.afx
  call void @_ZdlPvm(ptr noundef nonnull %i.aft, i64 noundef %i.afy) #40
  br label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271

_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271, %bb.an
  %.pn132.pn.pn = phi { ptr, i32 } [ %.pn132.pn, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271 ], [ %i.iq, %bb.an ] ; 3 uses
  %i.afz = load ptr, ptr %11, align 8, !tbaa !109 ; 7 uses
  %.not.i272 = icmp eq ptr %i.afz, null
  br i1 %.not.i272, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 40
  %i.agb = atomicrmw sub ptr %i.aga, i32 1 acq_rel, align 4
  %i.agc = icmp eq i32 %i.agb, 1
  br i1 %i.agc, label %.sink.split.i.i273, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277

.sink.split.i.i273:                               ; preds = %bb.fo
  %i.agd = load ptr, ptr %i.afz, align 8, !tbaa !50
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 64
  %i.agf = load ptr, ptr %i.age, align 8
  invoke void %i.agf(ptr noundef nonnull align 8 dereferenceable(64) %i.afz)
          to label %.noexc.i274 unwind label %bb.fp, !inline_history !124

.noexc.i274:                                      ; preds = %.sink.split.i.i273
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !125
  %.not.i.i275 = icmp eq ptr %i.agh, null
  %i.agi = load ptr, ptr %i.afz, align 8, !tbaa !50
  %..i.i276 = select i1 %.not.i.i275, i64 8, i64 48
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 %..i.i276
  %i.agk = load ptr, ptr %i.agj, align 8
  invoke void %i.agk(ptr noundef nonnull align 8 dereferenceable(64) %i.afz)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277 unwind label %bb.fp, !inline_history !124

bb.fp:                                            ; preds = %.noexc.i274, %.sink.split.i.i273
  %i.agl = landingpad { ptr, i32 }
          catch ptr null
  %i.agm = extractvalue { ptr, i32 } %i.agl, 0
  call void @__clang_call_terminate(ptr %i.agm) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277: ; preds = %.noexc.i274, %bb.fo, %bb.fn, %bb.am
  %.pn132.pn.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.am ], [ %.pn132.pn.pn, %bb.fn ], [ %.pn132.pn.pn, %bb.fo ], [ %.pn132.pn.pn, %.noexc.i274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.fq

bb.fq:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277, %bb.al
  %.pn132.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277 ], [ %i.io, %bb.al ] ; 3 uses
  %i.agn = load ptr, ptr %10, align 8, !tbaa !109 ; 7 uses
  %.not.i278 = icmp eq ptr %i.agn, null
  br i1 %.not.i278, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 40
  %i.agp = atomicrmw sub ptr %i.ago, i32 1 acq_rel, align 4
  %i.agq = icmp eq i32 %i.agp, 1
  br i1 %i.agq, label %.sink.split.i.i279, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283

.sink.split.i.i279:                               ; preds = %bb.fr
  %i.agr = load ptr, ptr %i.agn, align 8, !tbaa !50
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 64
  %i.agt = load ptr, ptr %i.ags, align 8
  invoke void %i.agt(ptr noundef nonnull align 8 dereferenceable(64) %i.agn)
          to label %.noexc.i280 unwind label %bb.fs, !inline_history !124

.noexc.i280:                                      ; preds = %.sink.split.i.i279
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !125
  %.not.i.i281 = icmp eq ptr %i.agv, null
  %i.agw = load ptr, ptr %i.agn, align 8, !tbaa !50
  %..i.i282 = select i1 %.not.i.i281, i64 8, i64 48
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 %..i.i282
  %i.agy = load ptr, ptr %i.agx, align 8
  invoke void %i.agy(ptr noundef nonnull align 8 dereferenceable(64) %i.agn)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283 unwind label %bb.fs, !inline_history !124

bb.fs:                                            ; preds = %.noexc.i280, %.sink.split.i.i279
  %i.agz = landingpad { ptr, i32 }
          catch ptr null
  %i.aha = extractvalue { ptr, i32 } %i.agz, 0
  call void @__clang_call_terminate(ptr %i.aha) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283: ; preds = %.noexc.i280, %bb.fr, %bb.fq, %bb.ak
  %.pn132.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.in, %bb.ak ], [ %.pn132.pn.pn.pn.pn, %bb.fq ], [ %.pn132.pn.pn.pn.pn, %bb.fr ], [ %.pn132.pn.pn.pn.pn, %.noexc.i280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.ft

bb.ft:                                            ; preds = %.loopexit324, %.loopexit.split-lp325, %bb.o, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283
  %.pn141.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn.pn.pn, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283 ], [ %i.bp, %bb.o ], [ %lpad.loopexit326, %.loopexit324 ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp325 ]
  %i.ahb = load ptr, ptr %8, align 8, !tbaa !109  ; 7 uses
  %.not.i284 = icmp eq ptr %i.ahb, null
  br i1 %.not.i284, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 40
  %i.ahd = atomicrmw sub ptr %i.ahc, i32 1 acq_rel, align 4
  %i.ahe = icmp eq i32 %i.ahd, 1
  br i1 %i.ahe, label %.sink.split.i.i285, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289

.sink.split.i.i285:                               ; preds = %bb.fu
  %i.ahf = load ptr, ptr %i.ahb, align 8, !tbaa !50
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 64
  %i.ahh = load ptr, ptr %i.ahg, align 8
  invoke void %i.ahh(ptr noundef nonnull align 8 dereferenceable(64) %i.ahb)
          to label %.noexc.i286 unwind label %bb.fv, !inline_history !124

.noexc.i286:                                      ; preds = %.sink.split.i.i285
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !125
  %.not.i.i287 = icmp eq ptr %i.ahj, null
  %i.ahk = load ptr, ptr %i.ahb, align 8, !tbaa !50
  %..i.i288 = select i1 %.not.i.i287, i64 8, i64 48
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %..i.i288
  %i.ahm = load ptr, ptr %i.ahl, align 8
  invoke void %i.ahm(ptr noundef nonnull align 8 dereferenceable(64) %i.ahb)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289 unwind label %bb.fv, !inline_history !124

bb.fv:                                            ; preds = %.noexc.i286, %.sink.split.i.i285
  %i.ahn = landingpad { ptr, i32 }
          catch ptr null
  %i.aho = extractvalue { ptr, i32 } %i.ahn, 0
  call void @__clang_call_terminate(ptr %i.aho) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289: ; preds = %bb.ft, %bb.fu, %.noexc.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  resume { ptr, i32 } %.pn141.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.170") align 8 %0, ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %5 = alloca %"class.std::optional", align 4     ; 5 uses
  %6 = alloca %"class.std::optional.229", align 1 ; 5 uses
  %7 = alloca %"class.std::optional", align 4     ; 5 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 13 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::vector.179", align 8  ; 19 uses
  %13 = alloca %"class.facebook::velox::(anonymous namespace)::UpdateMapRow.363", align 8 ; 19 uses
  %14 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %15 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %16 = alloca %"class.folly::Range", align 8     ; 10 uses
  %17 = alloca %"class.folly::Range", align 8     ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !109
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = atomicrmw add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !533    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !536  ; 2 uses
  %.not350 = icmp eq ptr %i.g, %i.i
  br i1 %.not350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110
  %i.r = sext i32 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !947
  store i32 0, ptr %7, align 4, !tbaa !61, !noalias !947
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.s, align 4, !tbaa !111, !noalias !947
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %10, i64 noundef %i.r, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.ak

bb.c:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit
  %.0351 = phi ptr [ %i.g, %.lr.ph ], [ %i.gg, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit ] ; 5 uses
  %i.t = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0351, ptr noundef null)
          to label %bb.d unwind label %.loopexit324

bb.d:                                             ; preds = %bb.c
  %.not139 = icmp eq ptr %i.t, null
  br i1 %.not139, label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, label %bb.e

.loopexit324:                                     ; preds = %bb.c, %bb.l, %bb.n, %bb.q, %bb.v
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp325:                            ; preds = %.invoke
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %8, align 8, !tbaa !109    ; 3 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.x = load i32, ptr %i.j, align 8, !tbaa !162
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.z = sext i32 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !950
  store i8 -1, ptr %6, align 1, !tbaa !61, !noalias !950
  store i8 1, ptr %i.l, align 1, !tbaa !356, !noalias !950
  %i.aa = add nsw i64 %i.z, 7
  %i.ab = lshr i64 %i.aa, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.ab, ptr noundef %i.y, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !950
  %i.ac = load ptr, ptr %9, align 8, !tbaa !109
  store ptr null, ptr %9, align 8, !tbaa !109
  %i.ad = load ptr, ptr %8, align 8, !tbaa !109   ; 7 uses
  store ptr %i.ac, ptr %8, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %.noexc.i.i unwind label %bb.i, !inline_history !124

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.al, null
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !50
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %..i.i.i
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.i, !inline_history !124

bb.i:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.h, %.noexc.i.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !109    ; 7 uses
  %.not.i144 = icmp eq ptr %.pr, null
  br i1 %.not.i144, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.as = atomicrmw sub ptr %i.ar, i32 1 acq_rel, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.au = load ptr, ptr %.pr, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !124

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125
  %.not.i.i145 = icmp eq ptr %i.ay, null
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !50
  %..i.i = select i1 %.not.i.i145, i64 8, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %..i.i
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !124

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.g, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !29  ; 6 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %.not140 = icmp eq ptr %i.be, null
  br i1 %.not140, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.bg = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0351, ptr noundef null)
          to label %bb.m unwind label %.loopexit324

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !112
  %i.bk = and i8 %i.bj, 2
  %.not.i146 = icmp eq i8 %i.bk, 0
  br i1 %.not.i146, label %bb.n, label %.invoke, !prof !20

.invoke:                                          ; preds = %bb.u, %bb.p, %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont unwind label %.loopexit.split-lp325

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !117
  %i.bn = load i32, ptr %i.j, align 8, !tbaa !162
  %i.bo = sext i32 %i.bn to i64
  invoke void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %i.bg, i64 noundef 0, ptr noundef %i.bm, i64 noundef 0, i64 noundef %i.bo)
          to label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit unwind label %.loopexit324

bb.o:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.ft
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  br label %bb.fq

bb.am:                                            ; preds = %bb.ab
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277

bb.an:                                            ; preds = %bb.ad
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EE11_M_allocateEm.exit.i, %bb.af
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

.lr.ph354:                                        ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183
  %.0111353 = phi ptr [ %i.jn, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 ], [ %i.hz, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0111353, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !211
  %i.iu = invoke noundef ptr @_ZNK8facebook5velox10BaseVector9asCheckedINS0_9MapVectorEEEPKT_v(ptr noundef nonnull align 8 dereferenceable(94) %i.it)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %.lr.ph354
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 128 ; 2 uses
  %i.iw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !7  ; 2 uses
  %i.iz = load ptr, ptr %i.iv, align 8, !tbaa !47
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !7
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = invoke noundef zeroext i1 %i.je(ptr noundef nonnull align 8 dereferenceable(18) %i.iy, ptr noundef nonnull align 8 dereferenceable(18) %i.jb)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.jf, label %bb.av, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs) #38
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ax, %bb.aw, %bb.ap, %.lr.ph354
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.au:                                            ; preds = %bb.ar
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.av:                                            ; preds = %bb.aq
  %i.ji = load ptr, ptr %i.iv, align 8, !tbaa !47 ; 2 uses
  %i.jj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 3 uses
  %i.jk = load ptr, ptr %i.hf, align 8, !tbaa !560
  %.not.i179 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not.i179, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji, i1 noundef zeroext true)
          to label %.noexc181 unwind label %bb.at

.noexc181:                                        ; preds = %bb.aw
  %i.jl = load ptr, ptr %i.hx, align 8, !tbaa !559
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 120
  store ptr %i.jm, ptr %i.hx, align 8, !tbaa !559
  br label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE17_M_realloc_insertIJRNS1_10BaseVectorEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji)
          to label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 unwind label %bb.at

_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183: ; preds = %bb.ax, %.noexc181
  %i.jn = getelementptr inbounds nuw i8, ptr %.0111353, i64 120 ; 2 uses
  %.not120 = icmp eq ptr %i.jn, %i.ia
  br i1 %.not120, label %._crit_edge355.loopexit, label %.lr.ph354

_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit: ; preds = %.noexc178, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.sroa.0.0 = phi ptr [ %i.ik, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 19 uses
  %.sink.i = phi i64 [ %i.im, %.noexc178 ], [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !969
  %i.jo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  %i.jp = load i32, ptr %i.n, align 8, !tbaa !162
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph371, label %._crit_edge372

.lr.ph371:                                        ; preds = %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  br label %bb.az

._crit_edge372:                                   ; preds = %bb.di, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %.0314.lcssa = phi i32 [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit ], [ %.1, %bb.di ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.jw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !974
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i32 noundef %.0314.lcssa, ptr noundef %i.jy)
          to label %bb.dj unwind label %bb.dn

bb.ay:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.aj
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.az:                                            ; preds = %.lr.ph371, %bb.di
  %indvars.iv407 = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next408, %bb.di ] ; 13 uses
  %.0314367 = phi i32 [ 0, %.lr.ph371 ], [ %.1, %bb.di ] ; 8 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv407
  store i32 %.0314367, ptr %i.ka, align 4, !tbaa !3
  %i.kb = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %.not317 = icmp eq ptr %i.kb, null
  br i1 %.not317, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !117
  %i.ke = lshr i64 %indvars.iv407, 6
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !43
  %i.kh = and i64 %indvars.iv407, 63
  %i.ki = shl nuw i64 1, %i.kh
  %i.kj = and i64 %i.kg, %i.ki
  %.not.i185 = icmp eq i64 %i.kj, 0
  br i1 %.not.i185, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 0, ptr %i.kk, align 4, !tbaa !3
  br label %bb.di

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.kl = load ptr, ptr %2, align 8, !tbaa !533   ; 2 uses
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !536 ; 2 uses
  %.not125.not356 = icmp eq ptr %i.kl, %i.km
  br i1 %.not125.not356, label %.critedge, label %.lr.ph360

.lr.ph360:                                        ; preds = %bb.bc
  %i.kn = trunc nuw nsw i64 %indvars.iv407 to i32 ; 3 uses
  br label %bb.be

bb.bd:                                            ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %.0117357, i64 120 ; 2 uses
  %.not125.not = icmp eq ptr %i.ko, %i.km
  br i1 %.not125.not, label %.critedge, label %bb.be

bb.be:                                            ; preds = %.lr.ph360, %bb.bd
  %.0117357 = phi ptr [ %i.kl, %.lr.ph360 ], [ %i.ko, %bb.bd ] ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0117357, i64 58
  %i.kq = load i8, ptr %i.kp, align 2, !tbaa !166, !range !147, !noundef !148
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ks = getelementptr inbounds nuw i8, ptr %.0117357, i64 59
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !256, !range !147, !noundef !148
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kv = getelementptr inbounds nuw i8, ptr %.0117357, i64 64
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.bh:                                            ; preds = %bb.bf
  %i.kx = getelementptr inbounds nuw i8, ptr %.0117357, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !203
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv407
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.be, %bb.bg, %bb.bh
  %.0.i = phi i32 [ %i.la, %bb.bh ], [ %i.kw, %bb.bg ], [ %i.kn, %bb.be ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.0117357, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !211
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !304
  %i.lf = sext i32 %.0.i to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !3
  %i.li = icmp slt i32 %i.lh, 1
  br i1 %i.li, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.lj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 2 uses
  %i.lk = load ptr, ptr %12, align 8, !tbaa !557  ; 3 uses
  %.not377 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not377, label %._crit_edge366, label %.lr.ph365

.critedge:                                        ; preds = %bb.bd, %bb.bc
  %i.ll = load ptr, ptr %i.js, align 8, !tbaa !304 ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv407
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3  ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !3
  %i.lp = icmp sgt i32 %i.ln, 0
  br i1 %i.lp, label %bb.bi, label %bb.di

bb.bi:                                            ; preds = %.critedge
  %i.lq = load ptr, ptr %i.jt, align 8, !tbaa !306
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv407
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3  ; 2 uses
  %i.lt = load ptr, ptr %i.ju, align 8, !tbaa !895 ; 6 uses
  %i.lu = load ptr, ptr %i.jv, align 8, !tbaa !897
  %.not.i.i186 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not.i.i186, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store i32 %.0314367, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.7294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 %i.ln, ptr %.sroa.7294.0..sroa_idx, align 4, !tbaa !3
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store ptr %i.lv, ptr %i.ju, align 8, !tbaa !895
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.lw = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 4 uses
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.bl, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc188 unwind label %.loopexit.split-lp320

.noexc188:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.mb = sdiv exact i64 %i.lz, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 768614336404564650)
  %i.mf = select i1 %i.md, i64 768614336404564650, i64 %i.me ; 3 uses
  %.not.i.i.i.i187 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i187)
  %i.mg = mul nuw nsw i64 %i.mf, 12
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #42
          to label %.noexc189 unwind label %.loopexit319 ; 4 uses

.noexc189:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 4 uses
  store i32 %i.ls, ptr %i.mi, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %.0314367, ptr %.sroa.6.0..sroa_idx292, align 4, !tbaa !3
  %.sroa.7294.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store i32 %i.ln, ptr %.sroa.7294.0..sroa_idx295, align 4, !tbaa !3
  %i.mj = icmp sgt i64 %i.lz, 0
  br i1 %i.mj, label %bb.bm, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.bm:                                            ; preds = %.noexc189
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr align 4 %i.lw, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.bm, %.noexc189
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %.not.i17.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #40
  %.pre431.pre = load ptr, ptr %i.js, align 8, !tbaa !304
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %.pre431 = phi ptr [ %.pre431.pre, %bb.bn ], [ %i.ll, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i ]
  store ptr %i.mh, ptr %.sroa.0.0, align 8, !tbaa !898
  store ptr %i.mk, ptr %i.ju, align 8, !tbaa !895
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %i.mh, i64 %i.mf
  store ptr %i.ml, ptr %i.jv, align 8, !tbaa !897
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bj
  %i.mm = phi ptr [ %.pre431, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ll, %bb.bj ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv407
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !3
  %i.mp = add nsw i32 %i.mo, %.0314367
  br label %bb.di

.loopexit319:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp320:                            ; preds = %bb.bl
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

._crit_edge366:                                   ; preds = %._crit_edge363, %.preheader
  %.val = load i64, ptr %i.jr, align 8, !tbaa !977 ; 3 uses
  %i.mq = and i64 %.val, -4                       ; 2 uses
  %.not9.i = icmp eq i64 %i.mq, 0
  br i1 %.not9.i, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge366
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = lshr i64 %.val, 2
  %i.mt = mul nuw i64 %i.ms, 3
  %i.mu = and i64 %i.mt, 3
  %i.mv = shl i64 %.val, 2
  %i.mw = and i64 %i.mv, 12
  %i.mx = or disjoint i64 %i.mu, %i.mw
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, %.lr.ph.i
  %i.my = phi i32 [ 0, %.lr.ph.i ], [ %i.nz, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 2 uses
  %.sroa.8.011.i = phi i64 [ %i.mx, %.lr.ph.i ], [ %.sroa.8.011.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %.sroa.01.010.i = phi ptr [ %i.mr, %.lr.ph.i ], [ %.sroa.01.010.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 4
  %.sroa.0.0.copyload.i = load i64, ptr %i.mz, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %i.na = shl i64 %.sroa.0.0.copyload.i, 24
  %i.nb = ashr i64 %i.na, 56
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.nb ; 4 uses
  %i.nd = add nsw i32 %i.my, %.0314367            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !895 ; 6 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !897
  %.not.i.i.i.i191 = icmp eq ptr %i.nf, %i.nh
  br i1 %.not.i.i.i.i191, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.nf, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store i32 %i.nd, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  store ptr %i.ni, ptr %i.ne, align 8, !tbaa !895
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

bb.bp:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  %i.nj = load ptr, ptr %i.nc, align 8, !tbaa !898 ; 4 uses
  %i.nk = ptrtoint ptr %i.nf to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl                    ; 6 uses
  %i.nn = icmp eq i64 %i.nm, 9223372036854775800
  br i1 %i.nn, label %bb.bq, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc194 unwind label %.loopexit.split-lp

.noexc194:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bp
  %i.no = sdiv exact i64 %i.nm, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.no, i64 1)
  %i.np = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.no ; 2 uses
  %i.nq = icmp ult i64 %i.np, %i.no
  %i.nr = call i64 @llvm.umin.i64(i64 %i.np, i64 768614336404564650)
  %i.ns = select i1 %i.nq, i64 768614336404564650, i64 %i.nr ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ns, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.nt = mul nuw nsw i64 %i.ns, 12
  %i.nu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nt) #42
          to label %.noexc195 unwind label %.loopexit318 ; 4 uses

.noexc195:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 %i.nm ; 4 uses
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.nv, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 %i.nd, ptr %.sroa.5.0..sroa_idx2.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx4.i.i, align 4, !tbaa !3
  %i.nw = icmp sgt i64 %i.nm, 0
  br i1 %i.nw, label %bb.br, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.br:                                            ; preds = %.noexc195
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nu, ptr align 4 %i.nj, i64 %i.nm, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.br, %.noexc195
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.nm) #40
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bs, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.nu, ptr %i.nc, align 8, !tbaa !898
  store ptr %i.nx, ptr %i.ne, align 8, !tbaa !895
  %i.ny = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.ns
  store ptr %i.ny, ptr %i.ng, align 8, !tbaa !897
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.bo
  %i.nz = add nuw nsw i32 %i.my, 1                ; 2 uses
  %i.oa = getelementptr inbounds i8, ptr %.sroa.01.010.i, i64 -16
  %.neg.i.i.i.i = mul nsw i64 %.sroa.8.011.i, -12
  %i.ob = getelementptr inbounds i8, ptr %i.oa, i64 %.neg.i.i.i.i ; 2 uses
  %.not.i9.i.i = icmp eq i64 %.sroa.8.011.i, 0
  br i1 %.not.i9.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.bt, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i
  br label %.critedge.i.i.i

bb.bt:                                            ; preds = %thread-pre-split.i.i
  %.not.i.i.i193 = icmp eq i64 %i.oe, 0
  br i1 %.not.i.i.i193, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i, %bb.bt
  %i.oc = phi i64 [ %i.oe, %bb.bt ], [ %.sroa.8.011.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.od = phi ptr [ %i.of, %bb.bt ], [ %.sroa.01.010.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.oe = add nsw i64 %i.oc, -1                   ; 4 uses
  %i.of = getelementptr inbounds i8, ptr %i.od, i64 -12 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oe
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !61
  %.not.i.i192 = icmp eq i8 %i.oh, 0
  br i1 %.not.i.i192, label %bb.bt, label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, !prof !13, !llvm.loop !978

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %bb.bu
  %.017.i.i.i = phi ptr [ %i.ok, %bb.bu ], [ %i.ob, %.critedge.i.i.i.preheader ] ; 4 uses
  %i.oi = getelementptr i8, ptr %.017.i.i.i, i64 14
  %.017.i.val.i.i = load i8, ptr %i.oi, align 1, !tbaa !61
  %i.oj = and i8 %.017.i.val.i.i, 15
  %.not4.i.i = icmp eq i8 %i.oj, 0
  br i1 %.not4.i.i, label %bb.bu, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, !prof !20

bb.bu:                                            ; preds = %.critedge.i.i.i
  %i.ok = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -192 ; 3 uses
  %.val25.i.i = load <16 x i8>, ptr %i.ok, align 16, !tbaa !61
  %i.ol = icmp slt <16 x i8> %.val25.i.i, zeroinitializer
  %i.om = bitcast <16 x i1> %i.ol to i16
  %i.on = and i16 %i.om, 16383                    ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -384
  call void @llvm.prefetch.p0(ptr nonnull %i.oo, i32 0, i32 3, i32 1)
  %.not6.i.i = icmp eq i16 %i.on, 0
  br i1 %.not6.i.i, label %.critedge.i.i.i, label %bb.bv, !prof !13, !llvm.loop !979

bb.bv:                                            ; preds = %bb.bu
  %i.op = zext nneg i16 %i.on to i32
  %i.oq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.op, i1 true)
  %i.or = xor i32 %i.oq, 31
  %i.os = zext nneg i32 %i.or to i64              ; 2 uses
  %i.ot = icmp ne ptr %i.ok, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ot)
  %i.ou = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -176
  %i.ov = getelementptr inbounds nuw [12 x i8], ptr %i.ou, i64 %i.os
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge: ; preds = %thread-pre-split.i.i, %bb.bv
  %.sroa.8.011.i.be = phi i64 [ %i.os, %bb.bv ], [ %i.oe, %thread-pre-split.i.i ]
  %.sroa.01.010.i.be = phi ptr [ %i.ov, %bb.bv ], [ %i.of, %thread-pre-split.i.i ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

.lr.ph365:                                        ; preds = %.preheader, %._crit_edge363
  %.pre428 = phi ptr [ %.pre428434, %._crit_edge363 ], [ %i.lk, %.preheader ] ; 3 uses
  %i.ow = phi ptr [ %i.qd, %._crit_edge363 ], [ %i.lk, %.preheader ]
  %i.ox = phi ptr [ %i.qe, %._crit_edge363 ], [ %i.lj, %.preheader ]
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %._crit_edge363 ], [ 0, %.preheader ] ; 5 uses
  %i.oy = icmp eq i64 %indvars.iv404, 0
  br i1 %i.oy, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph365
  %i.oz = load ptr, ptr %2, align 8, !tbaa !533
  %i.pa = getelementptr [120 x i8], ptr %i.oz, i64 %indvars.iv404 ; 5 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 -72
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !211 ; 3 uses
  %i.pd = getelementptr i8, ptr %i.pa, i64 -62
  %i.pe = load i8, ptr %i.pd, align 2, !tbaa !166, !range !147, !noundef !148
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pg = getelementptr i8, ptr %i.pa, i64 -61
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !256, !range !147, !noundef !148
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pj = getelementptr i8, ptr %i.pa, i64 -56
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

bb.bz:                                            ; preds = %bb.bx
  %i.pl = getelementptr i8, ptr %i.pa, i64 -112
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !203
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv407
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

_ZNK8facebook5velox13DecodedVector5indexEi.exit197: ; preds = %.lr.ph365, %bb.bz, %bb.by, %bb.bw
  %i.pp = phi ptr [ %i.pc, %bb.bz ], [ %i.pc, %bb.bw ], [ %i.pc, %bb.by ], [ %1, %.lr.ph365 ] ; 2 uses
  %i.pq = phi i32 [ %i.po, %bb.bz ], [ %i.kn, %bb.bw ], [ %i.pk, %bb.by ], [ %i.kn, %.lr.ph365 ]
  %i.pr = sext i32 %i.pq to i64                   ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 120
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !304
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pr
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3  ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph362, label %._crit_edge363

.lr.ph362:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 104
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !306
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.pr
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !3
  %i.qb = trunc i64 %indvars.iv404 to i8
  %i.qc = sext i32 %i.qa to i64
  %wide.trip.count = zext nneg i32 %i.pv to i64
  br label %bb.ca

._crit_edge363.loopexit:                          ; preds = %.loopexit
  %.pre430 = load ptr, ptr %i.hx, align 8, !tbaa !559
  br label %._crit_edge363

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %.pre428434 = phi ptr [ %.pre428436, %._crit_edge363.loopexit ], [ %.pre428, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ]
  %i.qd = phi ptr [ %20, %._crit_edge363.loopexit ], [ %i.ow, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %i.qe = phi ptr [ %.pre430, %._crit_edge363.loopexit ], [ %i.ox, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = ptrtoint ptr %i.qd to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = sdiv exact i64 %i.qh, 120
  %i.qj = icmp ugt i64 %i.qi, %indvars.iv.next405
  br i1 %i.qj, label %.lr.ph365, label %._crit_edge366, !llvm.loop !980

bb.ca:                                            ; preds = %.lr.ph362, %.loopexit
  %.pre428435 = phi ptr [ %.pre428, %.lr.ph362 ], [ %.pre428436, %.loopexit ]
  %18 = phi ptr [ %.pre428, %.lr.ph362 ], [ %20, %.loopexit ] ; 2 uses
  %indvars.iv401 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next402, %.loopexit ] ; 2 uses
  %19 = add nsw i64 %indvars.iv401, %i.qc         ; 6 uses
  %i.qk = getelementptr inbounds nuw [120 x i8], ptr %18, i64 %indvars.iv404 ; 10 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !254 ; 4 uses
  %.not.i198 = icmp eq ptr %i.qm, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.qk, i64 58
  %.pre429.a = load i8, ptr %.phi.trans.insert, align 2, !tbaa !166, !range !147 ; 2 uses
  br i1 %.not.i198, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qn = trunc nuw i8 %.pre429.a to i1
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 57
  %i.qp = load i8, ptr %i.qo, align 1, !range !147
  %i.qq = trunc nuw i8 %i.qp to i1
  %or.cond.i = select i1 %i.qn, i1 true, i1 %i.qq
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.qr = lshr i64 %19, 6
  %i.qs = and i64 %i.qr, 67108863
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !43
  %i.qv = and i64 %19, 63
  %i.qw = shl nuw i64 1, %i.qv
  %i.qx = and i64 %i.qu, %i.qw
  %.not.i.i200 = icmp eq i64 %i.qx, 0
  br i1 %.not.i.i200, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !903

bb.cd:                                            ; preds = %bb.cb
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qk, i64 59
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !256, !range !147, !noundef !148
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !203
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %19
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !3
  %i.rf = zext i32 %i.re to i64                   ; 2 uses
  %i.rg = lshr i64 %i.rf, 6
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.rg
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !43
  %i.rj = and i64 %i.rf, 63
  %i.rk = shl nuw i64 1, %i.rj
  %i.rl = and i64 %i.rk, %i.ri
  %.not.i7.i = icmp eq i64 %i.rl, 0
  br i1 %.not.i7.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.rm = load i64, ptr %i.qm, align 8, !tbaa !43
  %i.rn = and i64 %i.rm, 1
  %.not.i6.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i6.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

bb.cf:                                            ; preds = %bb.ce, %bb.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %bb.cr
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.ci:                                            ; preds = %bb.cf
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %bb.ce, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !904
  %i.rs = trunc nsw i64 %19 to i32
  br label %bb.cj

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.ca, %bb.cc
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !904 ; 2 uses
  %i.rv = trunc nuw i8 %.pre429.a to i1
  %i.rw = trunc nsw i64 %19 to i32                ; 3 uses
  br i1 %i.rv, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.rx = phi i32 [ %i.rs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.ry = phi ptr [ %i.rr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qk, i64 59
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !256, !range !147, !noundef !148
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.se = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !203
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %19
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i: ; preds = %bb.cl, %bb.ck, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.si = phi i32 [ %i.rx, %bb.cl ], [ %i.rx, %bb.ck ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sj = phi ptr [ %i.ry, %bb.cl ], [ %i.ry, %bb.ck ], [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.sh, %bb.cl ], [ %i.sd, %bb.ck ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sk = sext i32 %.0.i.i.i to i64
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !3  ; 3 uses
  %i.sn = sext i32 %i.sm to i64                   ; 2 uses
  %i.so = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.sn) ; 2 uses
  %i.sp = lshr i64 %i.so, 24
  %i.sq = or i64 %i.sp, 128                       ; 4 uses
  %i.sr = add nsw i64 %i.so, %i.sn                ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !981 ; 3 uses
  %i.ss = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ss, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !969, !noalias !981 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i
  %i.st = shl nuw nsw i64 %i.sq, 1
  %i.su = or disjoint i64 %i.st, 1
  %i.sv = trunc nuw i64 %i.sq to i8
  %i.sw = insertelement <16 x i8> poison, i8 %i.sv, i64 0
  %i.sx = shufflevector <16 x i8> %i.sw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.sy = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.sz = shl nuw i64 1, %i.sy
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %bb.cm
  %.0.i43.i.i.i.i.i = phi i64 [ %i.sr, %bb.cm ], [ %i.ts, %bb.cq ] ; 2 uses
  %.023.i42.i.i.i.i.i = phi i64 [ %i.sz, %bb.cm ], [ %i.tr, %bb.cq ]
  %i.ta = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i43.i.i.i.i.i, i64 range(i64 0, 256) %i.sy)
  %i.tb = getelementptr inbounds nuw [192 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ta ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 112
  call void @llvm.prefetch.p0(ptr nonnull %i.td, i32 0, i32 3, i32 1), !noalias !981
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.tb, align 16, !noalias !981 ; 2 uses
  %i.te = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.sx
  %i.tf = bitcast <16 x i1> %i.te to i16
  %i.tg = and i16 %i.tf, 16383
  %i.th = zext nneg i16 %i.tg to i32
  %i.ti = icmp ne ptr %i.tb, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.tj = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.co, %bb.cn
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.th, %bb.cn ], [ %i.tm, %bb.co ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.tl = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.tm = and i32 %i.tl, %.sroa.07.0.i.i.i.i.i
  %i.tn = zext nneg i32 %i.tk to i64
  call void @llvm.assume(i1 %i.ti)
  %i.to = getelementptr inbounds nuw [12 x i8], ptr %i.tc, i64 %i.tn ; 2 uses
  %.val38.i.i.i.i.i = load i32, ptr %i.to, align 4, !tbaa !3, !noalias !981
  %i.tp = icmp eq i32 %i.sm, %.val38.i.i.i.i.i
  br i1 %i.tp, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !20, !llvm.loop !988

bb.cp:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tq = icmp eq i8 %i.tj, 0
  br i1 %i.tq, label %.thread31.i.i.i.i.i, label %bb.cq, !prof !20

bb.cq:                                            ; preds = %bb.cp
  %i.tr = add i64 %.023.i42.i.i.i.i.i, -1         ; 2 uses
  %i.ts = add i64 %i.su, %.0.i43.i.i.i.i.i
  %.not.i.i.i.i.i.i201 = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i.i.i.i.i201, label %.thread31.i.i.i.i.i, label %bb.cn, !llvm.loop !989

.thread31.i.i.i.i.i:                              ; preds = %bb.cq, %bb.cp, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i ], [ %i.sy, %bb.cp ], [ %i.sy, %bb.cq ] ; 3 uses
  %i.tt = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.tt, align 1, !tbaa !61, !noalias !981
  %i.tu = and i8 %.val.i.i.i.i.i.i, 15
  %i.tv = zext nneg i8 %i.tu to i64               ; 2 uses
  %i.tw = shl i64 %i.tv, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.ss, %i.tw
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.thread31.i.i.i.i.i
  %i.tx = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.ss, i64 noundef %i.tx, i64 noundef %i.tv, i64 noundef %i.tw)
          to label %.noexc202 unwind label %bb.ch

.noexc202:                                        ; preds = %bb.cr
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !969, !noalias !981
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !981
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc202, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc202 ] ; 2 uses
  %i.ty = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc202 ] ; 3 uses
  %i.tz = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.sr, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.ua = getelementptr inbounds nuw [192 x i8], ptr %i.ty, i64 %i.tz ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.ua, align 16, !tbaa !61, !noalias !981
  %i.ub = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.uc = bitcast <16 x i1> %i.ub to i16
  %i.ud = and i16 %i.uc, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.ud, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.ue = shl nuw nsw i64 %i.sq, 1
  %i.uf = or disjoint i64 %i.ue, 1
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cs
  %i.ug = phi i64 [ %i.tz, %bb.cs ], [ %i.um, %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.sr, %bb.cs ], [ %i.ul, %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.uh = getelementptr inbounds nuw [192 x i8], ptr %i.ty, i64 %i.ug
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 15 ; 2 uses
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !990, !noalias !981 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.uj, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uk = add i8 %i.uj, 1
  store i8 %i.uk, ptr %i.ui, align 1, !tbaa !990, !noalias !981
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %i.ul = add i64 %i.uf, %.030.i.i.i.i.i          ; 2 uses
  %i.um = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ul, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.un = getelementptr inbounds nuw [192 x i8], ptr %i.ty, i64 %i.um ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.un, align 16, !noalias !981 ; 2 uses
  %i.uo = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.up = bitcast <16 x i1> %i.uo to i16
  %i.uq = and i16 %i.up, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.uq, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.ct, label %bb.cv, !llvm.loop !992

bb.cv:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.ur = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 14
  %i.ut = add i8 %i.ur, 16
  store i8 %i.ut, ptr %i.us, align 2, !tbaa !993, !noalias !981
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.ud, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.uq, %bb.cv ]
  %.1.i.i.i.i.i = phi ptr [ %i.ua, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.un, %bb.cv ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.uu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.uv = zext nneg i16 %i.uu to i64              ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.uv ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !61, !noalias !981
  %i.uy = icmp eq i8 %i.ux, 0
  br i1 %i.uy, label %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !981
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cw
  %i.uz = trunc nuw i64 %i.sq to i8
  store i8 %i.uz, ptr %i.uw, align 1, !tbaa !61, !noalias !981
  %i.va = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.vb = getelementptr inbounds nuw [12 x i8], ptr %i.va, i64 %i.uv ; 4 uses
  %i.vc = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vc)
  store i32 %i.sm, ptr %i.vb, align 4, !tbaa !994, !noalias !981
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store i64 0, ptr %i.vd, align 4, !noalias !981
  %i.ve = lshr i64 %i.uv, 2
  %i.vf = ptrtoint ptr %i.vb to i64
  %i.vg = or i64 %i.ve, %i.vf                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.jr, align 8, !tbaa !977, !noalias !981
  %i.vh = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.vg
  %.pre427 = load ptr, ptr %12, align 8, !tbaa !557 ; 2 uses
  br i1 %i.vh, label %bb.cy, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cy:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.vg, ptr %i.jr, align 8, !tbaa !43, !noalias !981
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cy, %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !981 ; 2 uses
  %i.vi = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.vj = add i64 %i.vi, 256
  %i.vk = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.vl = or disjoint i64 %i.vj, %i.vk
  store i64 %i.vl, ptr %i.jo, align 8, !tbaa !905, !noalias !981
  br label %.loopexit

.loopexit:                                        ; preds = %bb.co, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre428436 = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre428435, %bb.co ] ; 2 uses
  %20 = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %18, %bb.co ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.vb, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.to, %bb.co ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 4
  store i32 %i.si, ptr %i.vm, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i8 %i.qb, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !61
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge363.loopexit, label %bb.ca, !llvm.loop !996

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge366
  %.0 = phi i32 [ 0, %._crit_edge366 ], [ %i.nz, %.critedge.i.i.i ] ; 2 uses
  %i.vn = load ptr, ptr %13, align 8, !tbaa !969  ; 4 uses
  %i.vo = getelementptr i8, ptr %i.vn, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.vo, align 1, !tbaa !925
  %i.vp = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.vp, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE5clearEv.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905 ; 4 uses
  %i.vq = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i203 = icmp eq i64 %i.vq, 0         ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vn, i64 14
  %.val.i.i.i.i.i204 = load i8, ptr %i.vr, align 1, !tbaa !61
  %i.vs = and i8 %.val.i.i.i.i.i204, 15
  %i.vt = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.vt, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i.i.i.i203, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.da
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.dc

bb.db:                                            ; preds = %.preheader.i.i.i.i
  %i.vu = load ptr, ptr %13, align 8, !tbaa !969  ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 14
  store i8 %i.vs, ptr %i.vv, align 2, !tbaa !993
  br label %bb.dc

.preheader.i.i.i.i:                               ; preds = %bb.da, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.vy, %.preheader.i.i.i.i ], [ 0, %bb.da ] ; 2 uses
  %i.vw = load ptr, ptr %13, align 8, !tbaa !969
  %i.vx = getelementptr inbounds nuw [192 x i8], ptr %i.vw, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.vx, i8 0, i64 16, i1 false)
  %i.vy = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905
  %i.vz = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.vy, %i.vz
  %i.wa = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.wa, label %.preheader.i.i.i.i, label %bb.db, !llvm.loop !997

bb.dc:                                            ; preds = %bb.db, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.vz, %bb.db ] ; 2 uses
  %i.wb = phi ptr [ %i.vn, %._crit_edge.i.i.i.i ], [ %i.vu, %bb.db ]
  store i64 0, ptr %i.jr, align 8, !tbaa !43
  store i64 %.pre-phi.i.i.i.i, ptr %i.jo, align 8, !tbaa !905
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cz
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.dc ], [ %.val23.i.i.i.i, %bb.cz ] ; 2 uses
  %i.wc = phi ptr [ %i.wb, %bb.dc ], [ %i.vn, %bb.cz ] ; 2 uses
  br i1 %.not.i.i.i.i203, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE5clearEv.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wd = icmp eq i64 %.val21.i.i.i.i, 0
  br i1 %i.wd, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.we = getelementptr i8, ptr %i.wc, i64 14
  %.val18.i.i.i.i = load i8, ptr %i.we, align 1, !tbaa !61
  %i.wf = and i8 %.val18.i.i.i.i, 15
  %narrow.i.i.i.i = mul nuw i8 %i.wf, 12
  %i.wg = zext i8 %narrow.i.i.i.i to i64
  %i.wh = add nuw nsw i64 %i.wg, 16
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.wi = shl i64 192, %.val21.i.i.i.i
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i.i = phi i64 [ %i.wh, %bb.df ], [ %i.wi, %bb.dg ]
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !969
  store i64 0, ptr %i.jo, align 8, !tbaa !905
  call void @_ZdlPvm(ptr noundef nonnull %i.wc, i64 noundef %.0.i.i.i.i.i) #39
  br label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE5clearEv.exit

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE5clearEv.exit: ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, %bb.dd, %bb.dh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 %.0, ptr %i.wj, align 4, !tbaa !3
  %i.wk = add nsw i32 %.0, %.0314367
  br label %bb.di

bb.di:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE5clearEv.exit, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit, %.critedge, %bb.bb
  %.1 = phi i32 [ %.0314367, %bb.bb ], [ %i.wk, %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE5clearEv.exit ], [ %i.mp, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit ], [ %.0314367, %.critedge ] ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %i.wl = load i32, ptr %i.n, align 8, !tbaa !162
  %i.wm = sext i32 %i.wl to i64
  %i.wn = icmp slt i64 %indvars.iv.next408, %i.wm
  br i1 %i.wn, label %bb.az, label %._crit_edge372, !llvm.loop !998

.loopexit318:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp:                               ; preds = %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.dj:                                            ; preds = %._crit_edge372
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.wo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wp = load <2 x ptr>, ptr %4, align 16, !tbaa !27, !noalias !1002
  store <2 x ptr> %i.wp, ptr %14, align 16, !tbaa !27, !alias.scope !1002
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !974
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !47
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !1003
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ws, i32 noundef %.0314.lcssa, ptr noundef %i.wt)
          to label %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206 unwind label %bb.do

_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206: ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.wu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.wv = load <2 x ptr>, ptr %3, align 16, !tbaa !27, !noalias !1009
  store <2 x ptr> %i.wv, ptr %15, align 16, !tbaa !27, !alias.scope !1009
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !1003
  %i.ww = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %.not378 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %.sroa.0.0 ; 2 uses
  br i1 %.not378, label %._crit_edge375, label %bb.dk

bb.dk:                                            ; preds = %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  %i.wx = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.wy = sub i64 %i.wx, %i.ww                    ; 2 uses
  %i.wz = sdiv exact i64 %i.wy, 24
  %i.xa = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.xc = load ptr, ptr %14, align 16, !tbaa !47  ; 2 uses
  %i.xd = load ptr, ptr %i.hy, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.xe = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !895
  %i.xh = ptrtoint ptr %i.xg to i64
  %i.xi = ptrtoint ptr %i.xe to i64
  %i.xj = sub i64 %i.xh, %i.xi
  store ptr %i.xe, ptr %16, align 8, !tbaa !233
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xj
  store ptr %i.xk, ptr %i.xa, align 8, !tbaa !236
  %i.xl = load ptr, ptr %i.xc, align 8, !tbaa !50
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 216
  %i.xn = load ptr, ptr %i.xm, align 8
  invoke void %i.xn(ptr noundef nonnull align 8 dereferenceable(94) %i.xc, ptr noundef %i.xd, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.dl unwind label %.loopexit.split-lp416

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %i.xo = load ptr, ptr %15, align 16, !tbaa !47  ; 2 uses
  %i.xp = load ptr, ptr %i.wq, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.xq = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.xr = load ptr, ptr %i.xf, align 8, !tbaa !895
  %i.xs = ptrtoint ptr %i.xr to i64
  %i.xt = ptrtoint ptr %i.xq to i64
  %i.xu = sub i64 %i.xs, %i.xt
  store ptr %i.xq, ptr %17, align 8, !tbaa !233
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xu
  store ptr %i.xv, ptr %i.xb, align 8, !tbaa !236
  %i.xw = load ptr, ptr %i.xo, align 8, !tbaa !50
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 216
  %i.xy = load ptr, ptr %i.xx, align 8
  invoke void %i.xy(ptr noundef nonnull align 8 dereferenceable(94) %i.xo, ptr noundef %i.xp, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.dm unwind label %.loopexit.split-lp421

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  %exitcond413.peel.not = icmp eq i64 %i.wy, 24
  br i1 %exitcond413.peel.not, label %._crit_edge375, label %.peel.next

._crit_edge375:                                   ; preds = %bb.dq, %bb.dm, %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.xz = load ptr, ptr %i.p, align 8, !tbaa !110
  store ptr %i.xz, ptr %i.a, align 8, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.ya = load i32, ptr %i.n, align 8, !tbaa !162
  store i32 %i.ya, ptr %i.b, align 4, !tbaa !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  store ptr null, ptr %0, align 8, !tbaa !490, !alias.scope !1010
  %i.yb = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #42
          to label %.noexc207 unwind label %bb.ex ; 6 uses

.noexc207:                                        ; preds = %._crit_edge375
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !559 ; 2 uses
  %.not4.i.i.i259 = icmp eq ptr %i.aew, %i.aey
  br i1 %.not4.i.i.i259, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269, label %.lr.ph.i.i.i260

.lr.ph.i.i.i260:                                  ; preds = %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265
  %.05.i.i.i261 = phi ptr [ %i.afn, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265 ], [ %i.aew, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258 ] ; 5 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 96
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i262 = icmp eq ptr %i.afa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i262, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i260
  %i.afb = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 112
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !89
  %i.afd = ptrtoint ptr %i.afc to i64
  %i.afe = ptrtoint ptr %i.afa to i64
  %i.aff = sub i64 %i.afd, %i.afe
  call void @_ZdlPvm(ptr noundef nonnull %i.afa, i64 noundef %i.aff) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263:     ; preds = %bb.fk, %.lr.ph.i.i.i260
  %i.afg = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 72
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !219 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i264 = icmp eq ptr %i.afh, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i264, label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263
  %i.afi = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 88
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !220
  %i.afk = ptrtoint ptr %i.afj to i64
  %i.afl = ptrtoint ptr %i.afh to i64
  %i.afm = sub i64 %i.afk, %i.afl
  call void @_ZdlPvm(ptr noundef nonnull %i.afh, i64 noundef %i.afm) #40
  br label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265

_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265: ; preds = %bb.fl, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263
  %i.afn = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 120 ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.afn, %i.aey
  br i1 %.not.i.i.i266, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267, label %.lr.ph.i.i.i260, !llvm.loop !561

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267: ; preds = %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265
  %.pr.i268 = load ptr, ptr %12, align 8, !tbaa !557
  br label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258
  %i.afo = phi ptr [ %.pr.i268, %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267 ], [ %i.aew, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258 ] ; 3 uses
  %.not.i.i1.i270 = icmp eq ptr %i.afo, null
  br i1 %.not.i.i1.i270, label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271, label %bb.fm

bb.fm:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269
  %i.afp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !560
  %i.afr = ptrtoint ptr %i.afq to i64
  %i.afs = ptrtoint ptr %i.afo to i64
  %i.aft = sub i64 %i.afr, %i.afs
  call void @_ZdlPvm(ptr noundef nonnull %i.afo, i64 noundef %i.aft) #40
  br label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271

_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271, %bb.an
  %.pn132.pn.pn = phi { ptr, i32 } [ %.pn132.pn, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271 ], [ %i.iq, %bb.an ] ; 3 uses
  %i.afu = load ptr, ptr %11, align 8, !tbaa !109 ; 7 uses
  %.not.i272 = icmp eq ptr %i.afu, null
  br i1 %.not.i272, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 40
  %i.afw = atomicrmw sub ptr %i.afv, i32 1 acq_rel, align 4
  %i.afx = icmp eq i32 %i.afw, 1
  br i1 %i.afx, label %.sink.split.i.i273, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277

.sink.split.i.i273:                               ; preds = %bb.fo
  %i.afy = load ptr, ptr %i.afu, align 8, !tbaa !50
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 64
  %i.aga = load ptr, ptr %i.afz, align 8
  invoke void %i.aga(ptr noundef nonnull align 8 dereferenceable(64) %i.afu)
          to label %.noexc.i274 unwind label %bb.fp, !inline_history !124

.noexc.i274:                                      ; preds = %.sink.split.i.i273
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !125
  %.not.i.i275 = icmp eq ptr %i.agc, null
  %i.agd = load ptr, ptr %i.afu, align 8, !tbaa !50
  %..i.i276 = select i1 %.not.i.i275, i64 8, i64 48
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 %..i.i276
  %i.agf = load ptr, ptr %i.age, align 8
  invoke void %i.agf(ptr noundef nonnull align 8 dereferenceable(64) %i.afu)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277 unwind label %bb.fp, !inline_history !124

bb.fp:                                            ; preds = %.noexc.i274, %.sink.split.i.i273
  %i.agg = landingpad { ptr, i32 }
          catch ptr null
  %i.agh = extractvalue { ptr, i32 } %i.agg, 0
  call void @__clang_call_terminate(ptr %i.agh) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277: ; preds = %.noexc.i274, %bb.fo, %bb.fn, %bb.am
  %.pn132.pn.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.am ], [ %.pn132.pn.pn, %bb.fn ], [ %.pn132.pn.pn, %bb.fo ], [ %.pn132.pn.pn, %.noexc.i274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.fq

bb.fq:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277, %bb.al
  %.pn132.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277 ], [ %i.io, %bb.al ] ; 3 uses
  %i.agi = load ptr, ptr %10, align 8, !tbaa !109 ; 7 uses
  %.not.i278 = icmp eq ptr %i.agi, null
  br i1 %.not.i278, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 40
  %i.agk = atomicrmw sub ptr %i.agj, i32 1 acq_rel, align 4
  %i.agl = icmp eq i32 %i.agk, 1
  br i1 %i.agl, label %.sink.split.i.i279, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283

.sink.split.i.i279:                               ; preds = %bb.fr
  %i.agm = load ptr, ptr %i.agi, align 8, !tbaa !50
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 64
  %i.ago = load ptr, ptr %i.agn, align 8
  invoke void %i.ago(ptr noundef nonnull align 8 dereferenceable(64) %i.agi)
          to label %.noexc.i280 unwind label %bb.fs, !inline_history !124

.noexc.i280:                                      ; preds = %.sink.split.i.i279
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !125
  %.not.i.i281 = icmp eq ptr %i.agq, null
  %i.agr = load ptr, ptr %i.agi, align 8, !tbaa !50
  %..i.i282 = select i1 %.not.i.i281, i64 8, i64 48
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 %..i.i282
  %i.agt = load ptr, ptr %i.ags, align 8
  invoke void %i.agt(ptr noundef nonnull align 8 dereferenceable(64) %i.agi)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283 unwind label %bb.fs, !inline_history !124

bb.fs:                                            ; preds = %.noexc.i280, %.sink.split.i.i279
  %i.agu = landingpad { ptr, i32 }
          catch ptr null
  %i.agv = extractvalue { ptr, i32 } %i.agu, 0
  call void @__clang_call_terminate(ptr %i.agv) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283: ; preds = %.noexc.i280, %bb.fr, %bb.fq, %bb.ak
  %.pn132.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.in, %bb.ak ], [ %.pn132.pn.pn.pn.pn, %bb.fq ], [ %.pn132.pn.pn.pn.pn, %bb.fr ], [ %.pn132.pn.pn.pn.pn, %.noexc.i280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.ft

bb.ft:                                            ; preds = %.loopexit324, %.loopexit.split-lp325, %bb.o, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283
  %.pn141.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn.pn.pn, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283 ], [ %i.bp, %bb.o ], [ %lpad.loopexit326, %.loopexit324 ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp325 ]
  %i.agw = load ptr, ptr %8, align 8, !tbaa !109  ; 7 uses
  %.not.i284 = icmp eq ptr %i.agw, null
  br i1 %.not.i284, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 40
  %i.agy = atomicrmw sub ptr %i.agx, i32 1 acq_rel, align 4
  %i.agz = icmp eq i32 %i.agy, 1
  br i1 %i.agz, label %.sink.split.i.i285, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289

.sink.split.i.i285:                               ; preds = %bb.fu
  %i.aha = load ptr, ptr %i.agw, align 8, !tbaa !50
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 64
  %i.ahc = load ptr, ptr %i.ahb, align 8
  invoke void %i.ahc(ptr noundef nonnull align 8 dereferenceable(64) %i.agw)
          to label %.noexc.i286 unwind label %bb.fv, !inline_history !124

.noexc.i286:                                      ; preds = %.sink.split.i.i285
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !125
  %.not.i.i287 = icmp eq ptr %i.ahe, null
  %i.ahf = load ptr, ptr %i.agw, align 8, !tbaa !50
  %..i.i288 = select i1 %.not.i.i287, i64 8, i64 48
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %..i.i288
  %i.ahh = load ptr, ptr %i.ahg, align 8
  invoke void %i.ahh(ptr noundef nonnull align 8 dereferenceable(64) %i.agw)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289 unwind label %bb.fv, !inline_history !124

bb.fv:                                            ; preds = %.noexc.i286, %.sink.split.i.i285
  %i.ahi = landingpad { ptr, i32 }
          catch ptr null
  %i.ahj = extractvalue { ptr, i32 } %i.ahi, 0
  call void @__clang_call_terminate(ptr %i.ahj) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289: ; preds = %bb.ft, %bb.fu, %.noexc.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  resume { ptr, i32 } %.pn141.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.170") align 8 %0, ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %5 = alloca %"class.std::optional", align 4     ; 5 uses
  %6 = alloca %"class.std::optional.229", align 1 ; 5 uses
  %7 = alloca %"class.std::optional", align 4     ; 5 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 13 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::vector.179", align 8  ; 19 uses
  %13 = alloca %"class.facebook::velox::(anonymous namespace)::UpdateMapRow.409", align 8 ; 19 uses
  %14 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %15 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %16 = alloca %"class.folly::Range", align 8     ; 10 uses
  %17 = alloca %"class.folly::Range", align 8     ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !109
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = atomicrmw add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !533    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !536  ; 2 uses
  %.not350 = icmp eq ptr %i.g, %i.i
  br i1 %.not350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110
  %i.r = sext i32 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !1014
  store i32 0, ptr %7, align 4, !tbaa !61, !noalias !1014
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.s, align 4, !tbaa !111, !noalias !1014
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %10, i64 noundef %i.r, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.ak

bb.c:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit
  %.0351 = phi ptr [ %i.g, %.lr.ph ], [ %i.gg, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit ] ; 5 uses
  %i.t = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0351, ptr noundef null)
          to label %bb.d unwind label %.loopexit324

bb.d:                                             ; preds = %bb.c
  %.not139 = icmp eq ptr %i.t, null
  br i1 %.not139, label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, label %bb.e

.loopexit324:                                     ; preds = %bb.c, %bb.l, %bb.n, %bb.q, %bb.v
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp325:                            ; preds = %.invoke
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %8, align 8, !tbaa !109    ; 3 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.x = load i32, ptr %i.j, align 8, !tbaa !162
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.z = sext i32 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !1017
  store i8 -1, ptr %6, align 1, !tbaa !61, !noalias !1017
  store i8 1, ptr %i.l, align 1, !tbaa !356, !noalias !1017
  %i.aa = add nsw i64 %i.z, 7
  %i.ab = lshr i64 %i.aa, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.ab, ptr noundef %i.y, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !1017
  %i.ac = load ptr, ptr %9, align 8, !tbaa !109
  store ptr null, ptr %9, align 8, !tbaa !109
  %i.ad = load ptr, ptr %8, align 8, !tbaa !109   ; 7 uses
  store ptr %i.ac, ptr %8, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %.noexc.i.i unwind label %bb.i, !inline_history !124

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.al, null
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !50
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %..i.i.i
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.i, !inline_history !124

bb.i:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.h, %.noexc.i.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !109    ; 7 uses
  %.not.i144 = icmp eq ptr %.pr, null
  br i1 %.not.i144, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.as = atomicrmw sub ptr %i.ar, i32 1 acq_rel, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.au = load ptr, ptr %.pr, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !124

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125
  %.not.i.i145 = icmp eq ptr %i.ay, null
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !50
  %..i.i = select i1 %.not.i.i145, i64 8, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %..i.i
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !124

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.g, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !29  ; 6 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %.not140 = icmp eq ptr %i.be, null
  br i1 %.not140, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.bg = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0351, ptr noundef null)
          to label %bb.m unwind label %.loopexit324

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !112
  %i.bk = and i8 %i.bj, 2
  %.not.i146 = icmp eq i8 %i.bk, 0
  br i1 %.not.i146, label %bb.n, label %.invoke, !prof !20

.invoke:                                          ; preds = %bb.u, %bb.p, %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont unwind label %.loopexit.split-lp325

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !117
  %i.bn = load i32, ptr %i.j, align 8, !tbaa !162
  %i.bo = sext i32 %i.bn to i64
  invoke void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %i.bg, i64 noundef 0, ptr noundef %i.bm, i64 noundef 0, i64 noundef %i.bo)
          to label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit unwind label %.loopexit324

bb.o:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.ft
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  br label %bb.fq

bb.am:                                            ; preds = %bb.ab
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277

bb.an:                                            ; preds = %bb.ad
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EE11_M_allocateEm.exit.i, %bb.af
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

.lr.ph354:                                        ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183
  %.0111353 = phi ptr [ %i.jn, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 ], [ %i.hz, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0111353, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !211
  %i.iu = invoke noundef ptr @_ZNK8facebook5velox10BaseVector9asCheckedINS0_9MapVectorEEEPKT_v(ptr noundef nonnull align 8 dereferenceable(94) %i.it)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %.lr.ph354
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 128 ; 2 uses
  %i.iw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !7  ; 2 uses
  %i.iz = load ptr, ptr %i.iv, align 8, !tbaa !47
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !7
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = invoke noundef zeroext i1 %i.je(ptr noundef nonnull align 8 dereferenceable(18) %i.iy, ptr noundef nonnull align 8 dereferenceable(18) %i.jb)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.jf, label %bb.av, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs) #38
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ax, %bb.aw, %bb.ap, %.lr.ph354
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.au:                                            ; preds = %bb.ar
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.av:                                            ; preds = %bb.aq
  %i.ji = load ptr, ptr %i.iv, align 8, !tbaa !47 ; 2 uses
  %i.jj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 3 uses
  %i.jk = load ptr, ptr %i.hf, align 8, !tbaa !560
  %.not.i179 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not.i179, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji, i1 noundef zeroext true)
          to label %.noexc181 unwind label %bb.at

.noexc181:                                        ; preds = %bb.aw
  %i.jl = load ptr, ptr %i.hx, align 8, !tbaa !559
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 120
  store ptr %i.jm, ptr %i.hx, align 8, !tbaa !559
  br label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE17_M_realloc_insertIJRNS1_10BaseVectorEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji)
          to label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 unwind label %bb.at

_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183: ; preds = %bb.ax, %.noexc181
  %i.jn = getelementptr inbounds nuw i8, ptr %.0111353, i64 120 ; 2 uses
  %.not120 = icmp eq ptr %i.jn, %i.ia
  br i1 %.not120, label %._crit_edge355.loopexit, label %.lr.ph354

_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit: ; preds = %.noexc178, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.sroa.0.0 = phi ptr [ %i.ik, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 19 uses
  %.sink.i = phi i64 [ %i.im, %.noexc178 ], [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !1036
  %i.jo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  %i.jp = load i32, ptr %i.n, align 8, !tbaa !162
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph371, label %._crit_edge372

.lr.ph371:                                        ; preds = %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  br label %bb.az

._crit_edge372:                                   ; preds = %bb.di, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %.0314.lcssa = phi i32 [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit ], [ %.1, %bb.di ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.jw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !1041
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i32 noundef %.0314.lcssa, ptr noundef %i.jy)
          to label %bb.dj unwind label %bb.dn

bb.ay:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.aj
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.az:                                            ; preds = %.lr.ph371, %bb.di
  %indvars.iv407 = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next408, %bb.di ] ; 13 uses
  %.0314367 = phi i32 [ 0, %.lr.ph371 ], [ %.1, %bb.di ] ; 8 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv407
  store i32 %.0314367, ptr %i.ka, align 4, !tbaa !3
  %i.kb = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %.not317 = icmp eq ptr %i.kb, null
  br i1 %.not317, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !117
  %i.ke = lshr i64 %indvars.iv407, 6
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !43
  %i.kh = and i64 %indvars.iv407, 63
  %i.ki = shl nuw i64 1, %i.kh
  %i.kj = and i64 %i.kg, %i.ki
  %.not.i185 = icmp eq i64 %i.kj, 0
  br i1 %.not.i185, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 0, ptr %i.kk, align 4, !tbaa !3
  br label %bb.di

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.kl = load ptr, ptr %2, align 8, !tbaa !533   ; 2 uses
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !536 ; 2 uses
  %.not125.not356 = icmp eq ptr %i.kl, %i.km
  br i1 %.not125.not356, label %.critedge, label %.lr.ph360

.lr.ph360:                                        ; preds = %bb.bc
  %i.kn = trunc nuw nsw i64 %indvars.iv407 to i32 ; 3 uses
  br label %bb.be

bb.bd:                                            ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %.0117357, i64 120 ; 2 uses
  %.not125.not = icmp eq ptr %i.ko, %i.km
  br i1 %.not125.not, label %.critedge, label %bb.be

bb.be:                                            ; preds = %.lr.ph360, %bb.bd
  %.0117357 = phi ptr [ %i.kl, %.lr.ph360 ], [ %i.ko, %bb.bd ] ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0117357, i64 58
  %i.kq = load i8, ptr %i.kp, align 2, !tbaa !166, !range !147, !noundef !148
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ks = getelementptr inbounds nuw i8, ptr %.0117357, i64 59
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !256, !range !147, !noundef !148
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kv = getelementptr inbounds nuw i8, ptr %.0117357, i64 64
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.bh:                                            ; preds = %bb.bf
  %i.kx = getelementptr inbounds nuw i8, ptr %.0117357, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !203
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv407
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.be, %bb.bg, %bb.bh
  %.0.i = phi i32 [ %i.la, %bb.bh ], [ %i.kw, %bb.bg ], [ %i.kn, %bb.be ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.0117357, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !211
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !304
  %i.lf = sext i32 %.0.i to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !3
  %i.li = icmp slt i32 %i.lh, 1
  br i1 %i.li, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.lj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 2 uses
  %i.lk = load ptr, ptr %12, align 8, !tbaa !557  ; 3 uses
  %.not377 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not377, label %._crit_edge366, label %.lr.ph365

.critedge:                                        ; preds = %bb.bd, %bb.bc
  %i.ll = load ptr, ptr %i.js, align 8, !tbaa !304 ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv407
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3  ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !3
  %i.lp = icmp sgt i32 %i.ln, 0
  br i1 %i.lp, label %bb.bi, label %bb.di

bb.bi:                                            ; preds = %.critedge
  %i.lq = load ptr, ptr %i.jt, align 8, !tbaa !306
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv407
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3  ; 2 uses
  %i.lt = load ptr, ptr %i.ju, align 8, !tbaa !895 ; 6 uses
  %i.lu = load ptr, ptr %i.jv, align 8, !tbaa !897
  %.not.i.i186 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not.i.i186, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store i32 %.0314367, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.7294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 %i.ln, ptr %.sroa.7294.0..sroa_idx, align 4, !tbaa !3
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store ptr %i.lv, ptr %i.ju, align 8, !tbaa !895
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.lw = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 4 uses
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.bl, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc188 unwind label %.loopexit.split-lp320

.noexc188:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.mb = sdiv exact i64 %i.lz, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 768614336404564650)
  %i.mf = select i1 %i.md, i64 768614336404564650, i64 %i.me ; 3 uses
  %.not.i.i.i.i187 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i187)
  %i.mg = mul nuw nsw i64 %i.mf, 12
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #42
          to label %.noexc189 unwind label %.loopexit319 ; 4 uses

.noexc189:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 4 uses
  store i32 %i.ls, ptr %i.mi, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %.0314367, ptr %.sroa.6.0..sroa_idx292, align 4, !tbaa !3
  %.sroa.7294.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store i32 %i.ln, ptr %.sroa.7294.0..sroa_idx295, align 4, !tbaa !3
  %i.mj = icmp sgt i64 %i.lz, 0
  br i1 %i.mj, label %bb.bm, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.bm:                                            ; preds = %.noexc189
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr align 4 %i.lw, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.bm, %.noexc189
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %.not.i17.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #40
  %.pre431.pre = load ptr, ptr %i.js, align 8, !tbaa !304
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %.pre431 = phi ptr [ %.pre431.pre, %bb.bn ], [ %i.ll, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i ]
  store ptr %i.mh, ptr %.sroa.0.0, align 8, !tbaa !898
  store ptr %i.mk, ptr %i.ju, align 8, !tbaa !895
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %i.mh, i64 %i.mf
  store ptr %i.ml, ptr %i.jv, align 8, !tbaa !897
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bj
  %i.mm = phi ptr [ %.pre431, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ll, %bb.bj ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv407
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !3
  %i.mp = add nsw i32 %i.mo, %.0314367
  br label %bb.di

.loopexit319:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp320:                            ; preds = %bb.bl
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

._crit_edge366:                                   ; preds = %._crit_edge363, %.preheader
  %.val = load i64, ptr %i.jr, align 8, !tbaa !1044 ; 3 uses
  %i.mq = and i64 %.val, -4                       ; 2 uses
  %.not9.i = icmp eq i64 %i.mq, 0
  br i1 %.not9.i, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge366
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = lshr i64 %.val, 2
  %i.mt = mul nuw i64 %i.ms, 3
  %i.mu = and i64 %i.mt, 3
  %i.mv = shl i64 %.val, 2
  %i.mw = and i64 %i.mv, 12
  %i.mx = or disjoint i64 %i.mu, %i.mw
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, %.lr.ph.i
  %i.my = phi i32 [ 0, %.lr.ph.i ], [ %i.nz, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 2 uses
  %.sroa.8.011.i = phi i64 [ %i.mx, %.lr.ph.i ], [ %.sroa.8.011.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %.sroa.01.010.i = phi ptr [ %i.mr, %.lr.ph.i ], [ %.sroa.01.010.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 4
  %.sroa.0.0.copyload.i = load i64, ptr %i.mz, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %i.na = shl i64 %.sroa.0.0.copyload.i, 24
  %i.nb = ashr i64 %i.na, 56
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.nb ; 4 uses
  %i.nd = add nsw i32 %i.my, %.0314367            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !895 ; 6 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !897
  %.not.i.i.i.i191 = icmp eq ptr %i.nf, %i.nh
  br i1 %.not.i.i.i.i191, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.nf, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store i32 %i.nd, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  store ptr %i.ni, ptr %i.ne, align 8, !tbaa !895
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

bb.bp:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  %i.nj = load ptr, ptr %i.nc, align 8, !tbaa !898 ; 4 uses
  %i.nk = ptrtoint ptr %i.nf to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl                    ; 6 uses
  %i.nn = icmp eq i64 %i.nm, 9223372036854775800
  br i1 %i.nn, label %bb.bq, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc194 unwind label %.loopexit.split-lp

.noexc194:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bp
  %i.no = sdiv exact i64 %i.nm, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.no, i64 1)
  %i.np = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.no ; 2 uses
  %i.nq = icmp ult i64 %i.np, %i.no
  %i.nr = call i64 @llvm.umin.i64(i64 %i.np, i64 768614336404564650)
  %i.ns = select i1 %i.nq, i64 768614336404564650, i64 %i.nr ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ns, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.nt = mul nuw nsw i64 %i.ns, 12
  %i.nu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nt) #42
          to label %.noexc195 unwind label %.loopexit318 ; 4 uses

.noexc195:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 %i.nm ; 4 uses
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.nv, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 %i.nd, ptr %.sroa.5.0..sroa_idx2.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx4.i.i, align 4, !tbaa !3
  %i.nw = icmp sgt i64 %i.nm, 0
  br i1 %i.nw, label %bb.br, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.br:                                            ; preds = %.noexc195
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nu, ptr align 4 %i.nj, i64 %i.nm, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.br, %.noexc195
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.nm) #40
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bs, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.nu, ptr %i.nc, align 8, !tbaa !898
  store ptr %i.nx, ptr %i.ne, align 8, !tbaa !895
  %i.ny = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.ns
  store ptr %i.ny, ptr %i.ng, align 8, !tbaa !897
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.bo
  %i.nz = add nuw nsw i32 %i.my, 1                ; 2 uses
  %i.oa = getelementptr inbounds i8, ptr %.sroa.01.010.i, i64 -16
  %.neg.i.i.i.i = mul nsw i64 %.sroa.8.011.i, -12
  %i.ob = getelementptr inbounds i8, ptr %i.oa, i64 %.neg.i.i.i.i ; 2 uses
  %.not.i9.i.i = icmp eq i64 %.sroa.8.011.i, 0
  br i1 %.not.i9.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.bt, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i
  br label %.critedge.i.i.i

bb.bt:                                            ; preds = %thread-pre-split.i.i
  %.not.i.i.i193 = icmp eq i64 %i.oe, 0
  br i1 %.not.i.i.i193, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i, %bb.bt
  %i.oc = phi i64 [ %i.oe, %bb.bt ], [ %.sroa.8.011.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.od = phi ptr [ %i.of, %bb.bt ], [ %.sroa.01.010.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.oe = add nsw i64 %i.oc, -1                   ; 4 uses
  %i.of = getelementptr inbounds i8, ptr %i.od, i64 -12 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oe
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !61
  %.not.i.i192 = icmp eq i8 %i.oh, 0
  br i1 %.not.i.i192, label %bb.bt, label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, !prof !13, !llvm.loop !1045

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %bb.bu
  %.017.i.i.i = phi ptr [ %i.ok, %bb.bu ], [ %i.ob, %.critedge.i.i.i.preheader ] ; 4 uses
  %i.oi = getelementptr i8, ptr %.017.i.i.i, i64 14
  %.017.i.val.i.i = load i8, ptr %i.oi, align 1, !tbaa !61
  %i.oj = and i8 %.017.i.val.i.i, 15
  %.not4.i.i = icmp eq i8 %i.oj, 0
  br i1 %.not4.i.i, label %bb.bu, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, !prof !20

bb.bu:                                            ; preds = %.critedge.i.i.i
  %i.ok = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -192 ; 3 uses
  %.val25.i.i = load <16 x i8>, ptr %i.ok, align 16, !tbaa !61
  %i.ol = icmp slt <16 x i8> %.val25.i.i, zeroinitializer
  %i.om = bitcast <16 x i1> %i.ol to i16
  %i.on = and i16 %i.om, 16383                    ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -384
  call void @llvm.prefetch.p0(ptr nonnull %i.oo, i32 0, i32 3, i32 1)
  %.not6.i.i = icmp eq i16 %i.on, 0
  br i1 %.not6.i.i, label %.critedge.i.i.i, label %bb.bv, !prof !13, !llvm.loop !1046

bb.bv:                                            ; preds = %bb.bu
  %i.op = zext nneg i16 %i.on to i32
  %i.oq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.op, i1 true)
  %i.or = xor i32 %i.oq, 31
  %i.os = zext nneg i32 %i.or to i64              ; 2 uses
  %i.ot = icmp ne ptr %i.ok, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ot)
  %i.ou = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -176
  %i.ov = getelementptr inbounds nuw [12 x i8], ptr %i.ou, i64 %i.os
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge: ; preds = %thread-pre-split.i.i, %bb.bv
  %.sroa.8.011.i.be = phi i64 [ %i.os, %bb.bv ], [ %i.oe, %thread-pre-split.i.i ]
  %.sroa.01.010.i.be = phi ptr [ %i.ov, %bb.bv ], [ %i.of, %thread-pre-split.i.i ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

.lr.ph365:                                        ; preds = %.preheader, %._crit_edge363
  %.pre428 = phi ptr [ %.pre428434, %._crit_edge363 ], [ %i.lk, %.preheader ] ; 3 uses
  %i.ow = phi ptr [ %i.qd, %._crit_edge363 ], [ %i.lk, %.preheader ]
  %i.ox = phi ptr [ %i.qe, %._crit_edge363 ], [ %i.lj, %.preheader ]
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %._crit_edge363 ], [ 0, %.preheader ] ; 5 uses
  %i.oy = icmp eq i64 %indvars.iv404, 0
  br i1 %i.oy, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph365
  %i.oz = load ptr, ptr %2, align 8, !tbaa !533
  %i.pa = getelementptr [120 x i8], ptr %i.oz, i64 %indvars.iv404 ; 5 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 -72
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !211 ; 3 uses
  %i.pd = getelementptr i8, ptr %i.pa, i64 -62
  %i.pe = load i8, ptr %i.pd, align 2, !tbaa !166, !range !147, !noundef !148
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pg = getelementptr i8, ptr %i.pa, i64 -61
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !256, !range !147, !noundef !148
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pj = getelementptr i8, ptr %i.pa, i64 -56
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

bb.bz:                                            ; preds = %bb.bx
  %i.pl = getelementptr i8, ptr %i.pa, i64 -112
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !203
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv407
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

_ZNK8facebook5velox13DecodedVector5indexEi.exit197: ; preds = %.lr.ph365, %bb.bz, %bb.by, %bb.bw
  %i.pp = phi ptr [ %i.pc, %bb.bz ], [ %i.pc, %bb.bw ], [ %i.pc, %bb.by ], [ %1, %.lr.ph365 ] ; 2 uses
  %i.pq = phi i32 [ %i.po, %bb.bz ], [ %i.kn, %bb.bw ], [ %i.pk, %bb.by ], [ %i.kn, %.lr.ph365 ]
  %i.pr = sext i32 %i.pq to i64                   ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 120
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !304
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pr
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3  ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph362, label %._crit_edge363

.lr.ph362:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 104
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !306
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.pr
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !3
  %i.qb = trunc i64 %indvars.iv404 to i8
  %i.qc = sext i32 %i.qa to i64
  %wide.trip.count = zext nneg i32 %i.pv to i64
  br label %bb.ca

._crit_edge363.loopexit:                          ; preds = %.loopexit
  %.pre430 = load ptr, ptr %i.hx, align 8, !tbaa !559
  br label %._crit_edge363

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %.pre428434 = phi ptr [ %.pre428436, %._crit_edge363.loopexit ], [ %.pre428, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ]
  %i.qd = phi ptr [ %20, %._crit_edge363.loopexit ], [ %i.ow, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %i.qe = phi ptr [ %.pre430, %._crit_edge363.loopexit ], [ %i.ox, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = ptrtoint ptr %i.qd to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = sdiv exact i64 %i.qh, 120
  %i.qj = icmp ugt i64 %i.qi, %indvars.iv.next405
  br i1 %i.qj, label %.lr.ph365, label %._crit_edge366, !llvm.loop !1047

bb.ca:                                            ; preds = %.lr.ph362, %.loopexit
  %.pre428435 = phi ptr [ %.pre428, %.lr.ph362 ], [ %.pre428436, %.loopexit ]
  %18 = phi ptr [ %.pre428, %.lr.ph362 ], [ %20, %.loopexit ] ; 2 uses
  %indvars.iv401 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next402, %.loopexit ] ; 2 uses
  %19 = add nsw i64 %indvars.iv401, %i.qc         ; 6 uses
  %i.qk = getelementptr inbounds nuw [120 x i8], ptr %18, i64 %indvars.iv404 ; 10 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !254 ; 4 uses
  %.not.i198 = icmp eq ptr %i.qm, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.qk, i64 58
  %.pre429.a = load i8, ptr %.phi.trans.insert, align 2, !tbaa !166, !range !147 ; 2 uses
  br i1 %.not.i198, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qn = trunc nuw i8 %.pre429.a to i1
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 57
  %i.qp = load i8, ptr %i.qo, align 1, !range !147
  %i.qq = trunc nuw i8 %i.qp to i1
  %or.cond.i = select i1 %i.qn, i1 true, i1 %i.qq
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.qr = lshr i64 %19, 6
  %i.qs = and i64 %i.qr, 67108863
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !43
  %i.qv = and i64 %19, 63
  %i.qw = shl nuw i64 1, %i.qv
  %i.qx = and i64 %i.qu, %i.qw
  %.not.i.i200 = icmp eq i64 %i.qx, 0
  br i1 %.not.i.i200, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !903

bb.cd:                                            ; preds = %bb.cb
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qk, i64 59
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !256, !range !147, !noundef !148
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !203
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %19
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !3
  %i.rf = zext i32 %i.re to i64                   ; 2 uses
  %i.rg = lshr i64 %i.rf, 6
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.rg
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !43
  %i.rj = and i64 %i.rf, 63
  %i.rk = shl nuw i64 1, %i.rj
  %i.rl = and i64 %i.rk, %i.ri
  %.not.i7.i = icmp eq i64 %i.rl, 0
  br i1 %.not.i7.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.rm = load i64, ptr %i.qm, align 8, !tbaa !43
  %i.rn = and i64 %i.rm, 1
  %.not.i6.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i6.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

bb.cf:                                            ; preds = %bb.ce, %bb.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %bb.cr
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.ci:                                            ; preds = %bb.cf
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %bb.ce, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !904
  %i.rs = trunc nsw i64 %19 to i32
  br label %bb.cj

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.ca, %bb.cc
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !904 ; 2 uses
  %i.rv = trunc nuw i8 %.pre429.a to i1
  %i.rw = trunc nsw i64 %19 to i32                ; 3 uses
  br i1 %i.rv, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.rx = phi i32 [ %i.rs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.ry = phi ptr [ %i.rr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qk, i64 59
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !256, !range !147, !noundef !148
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.se = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !203
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %19
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i: ; preds = %bb.cl, %bb.ck, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.si = phi i32 [ %i.rx, %bb.cl ], [ %i.rx, %bb.ck ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sj = phi ptr [ %i.ry, %bb.cl ], [ %i.ry, %bb.ck ], [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.sh, %bb.cl ], [ %i.sd, %bb.ck ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sk = sext i32 %.0.i.i.i to i64
  %i.sl = getelementptr inbounds i8, ptr %i.sj, i64 %i.sk
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !61  ; 3 uses
  %i.sn = sext i8 %i.sm to i64                    ; 2 uses
  %i.so = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.sn) ; 2 uses
  %i.sp = lshr i64 %i.so, 24
  %i.sq = or i64 %i.sp, 128                       ; 4 uses
  %i.sr = add nsw i64 %i.so, %i.sn                ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !1048 ; 3 uses
  %i.ss = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ss, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !1036, !noalias !1048 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i
  %i.st = shl nuw nsw i64 %i.sq, 1
  %i.su = or disjoint i64 %i.st, 1
  %i.sv = trunc nuw i64 %i.sq to i8
  %i.sw = insertelement <16 x i8> poison, i8 %i.sv, i64 0
  %i.sx = shufflevector <16 x i8> %i.sw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.sy = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.sz = shl nuw i64 1, %i.sy
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %bb.cm
  %.0.i43.i.i.i.i.i = phi i64 [ %i.sr, %bb.cm ], [ %i.ts, %bb.cq ] ; 2 uses
  %.023.i42.i.i.i.i.i = phi i64 [ %i.sz, %bb.cm ], [ %i.tr, %bb.cq ]
  %i.ta = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i43.i.i.i.i.i, i64 range(i64 0, 256) %i.sy)
  %i.tb = getelementptr inbounds nuw [192 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ta ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 112
  call void @llvm.prefetch.p0(ptr nonnull %i.td, i32 0, i32 3, i32 1), !noalias !1048
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.tb, align 16, !noalias !1048 ; 2 uses
  %i.te = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.sx
  %i.tf = bitcast <16 x i1> %i.te to i16
  %i.tg = and i16 %i.tf, 16383
  %i.th = zext nneg i16 %i.tg to i32
  %i.ti = icmp ne ptr %i.tb, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.tj = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.co, %bb.cn
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.th, %bb.cn ], [ %i.tm, %bb.co ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.tl = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.tm = and i32 %i.tl, %.sroa.07.0.i.i.i.i.i
  %i.tn = zext nneg i32 %i.tk to i64
  call void @llvm.assume(i1 %i.ti)
  %i.to = getelementptr inbounds nuw [12 x i8], ptr %i.tc, i64 %i.tn ; 2 uses
  %.val38.i.i.i.i.i = load i8, ptr %i.to, align 1, !tbaa !61, !noalias !1048
  %i.tp = icmp eq i8 %i.sm, %.val38.i.i.i.i.i
  br i1 %i.tp, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !20, !llvm.loop !1055

bb.cp:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tq = icmp eq i8 %i.tj, 0
  br i1 %i.tq, label %.thread31.i.i.i.i.i, label %bb.cq, !prof !20

bb.cq:                                            ; preds = %bb.cp
  %i.tr = add i64 %.023.i42.i.i.i.i.i, -1         ; 2 uses
  %i.ts = add i64 %i.su, %.0.i43.i.i.i.i.i
  %.not.i.i.i.i.i.i201 = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i.i.i.i.i201, label %.thread31.i.i.i.i.i, label %bb.cn, !llvm.loop !1056

.thread31.i.i.i.i.i:                              ; preds = %bb.cq, %bb.cp, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i ], [ %i.sy, %bb.cp ], [ %i.sy, %bb.cq ] ; 3 uses
  %i.tt = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.tt, align 1, !tbaa !61, !noalias !1048
  %i.tu = and i8 %.val.i.i.i.i.i.i, 15
  %i.tv = zext nneg i8 %i.tu to i64               ; 2 uses
  %i.tw = shl i64 %i.tv, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.ss, %i.tw
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.thread31.i.i.i.i.i
  %i.tx = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.ss, i64 noundef %i.tx, i64 noundef %i.tv, i64 noundef %i.tw)
          to label %.noexc202 unwind label %bb.ch

.noexc202:                                        ; preds = %bb.cr
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !1036, !noalias !1048
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !1048
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc202, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc202 ] ; 2 uses
  %i.ty = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc202 ] ; 3 uses
  %i.tz = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.sr, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.ua = getelementptr inbounds nuw [192 x i8], ptr %i.ty, i64 %i.tz ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.ua, align 16, !tbaa !61, !noalias !1048
  %i.ub = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.uc = bitcast <16 x i1> %i.ub to i16
  %i.ud = and i16 %i.uc, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.ud, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.ue = shl nuw nsw i64 %i.sq, 1
  %i.uf = or disjoint i64 %i.ue, 1
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cs
  %i.ug = phi i64 [ %i.tz, %bb.cs ], [ %i.um, %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.sr, %bb.cs ], [ %i.ul, %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.uh = getelementptr inbounds nuw [192 x i8], ptr %i.ty, i64 %i.ug
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 15 ; 2 uses
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !1057, !noalias !1048 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.uj, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uk = add i8 %i.uj, 1
  store i8 %i.uk, ptr %i.ui, align 1, !tbaa !1057, !noalias !1048
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %i.ul = add i64 %i.uf, %.030.i.i.i.i.i          ; 2 uses
  %i.um = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ul, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.un = getelementptr inbounds nuw [192 x i8], ptr %i.ty, i64 %i.um ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.un, align 16, !noalias !1048 ; 2 uses
  %i.uo = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.up = bitcast <16 x i1> %i.uo to i16
  %i.uq = and i16 %i.up, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.uq, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.ct, label %bb.cv, !llvm.loop !1059

bb.cv:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.ur = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 14
  %i.ut = add i8 %i.ur, 16
  store i8 %i.ut, ptr %i.us, align 2, !tbaa !1060, !noalias !1048
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.ud, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.uq, %bb.cv ]
  %.1.i.i.i.i.i = phi ptr [ %i.ua, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.un, %bb.cv ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.uu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.uv = zext nneg i16 %i.uu to i64              ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.uv ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !61, !noalias !1048
  %i.uy = icmp eq i8 %i.ux, 0
  br i1 %i.uy, label %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1048
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cw
  %i.uz = trunc nuw i64 %i.sq to i8
  store i8 %i.uz, ptr %i.uw, align 1, !tbaa !61, !noalias !1048
  %i.va = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.vb = getelementptr inbounds nuw [12 x i8], ptr %i.va, i64 %i.uv ; 4 uses
  %i.vc = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vc)
  store i8 %i.sm, ptr %i.vb, align 4, !tbaa !1061, !noalias !1048
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store i64 0, ptr %i.vd, align 4, !noalias !1048
  %i.ve = lshr i64 %i.uv, 2
  %i.vf = ptrtoint ptr %i.vb to i64
  %i.vg = or i64 %i.ve, %i.vf                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.jr, align 8, !tbaa !1044, !noalias !1048
  %i.vh = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.vg
  %.pre427 = load ptr, ptr %12, align 8, !tbaa !557 ; 2 uses
  br i1 %i.vh, label %bb.cy, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cy:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.vg, ptr %i.jr, align 8, !tbaa !43, !noalias !1048
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cy, %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !1048 ; 2 uses
  %i.vi = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.vj = add i64 %i.vi, 256
  %i.vk = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.vl = or disjoint i64 %i.vj, %i.vk
  store i64 %i.vl, ptr %i.jo, align 8, !tbaa !905, !noalias !1048
  br label %.loopexit

.loopexit:                                        ; preds = %bb.co, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre428436 = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre428435, %bb.co ] ; 2 uses
  %20 = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %18, %bb.co ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.vb, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.to, %bb.co ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 4
  store i32 %i.si, ptr %i.vm, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i8 %i.qb, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !61
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge363.loopexit, label %bb.ca, !llvm.loop !1063

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge366
  %.0 = phi i32 [ 0, %._crit_edge366 ], [ %i.nz, %.critedge.i.i.i ] ; 2 uses
  %i.vn = load ptr, ptr %13, align 8, !tbaa !1036 ; 4 uses
  %i.vo = getelementptr i8, ptr %i.vn, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.vo, align 1, !tbaa !925
  %i.vp = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.vp, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE5clearEv.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905 ; 4 uses
  %i.vq = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i203 = icmp eq i64 %i.vq, 0         ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vn, i64 14
  %.val.i.i.i.i.i204 = load i8, ptr %i.vr, align 1, !tbaa !61
  %i.vs = and i8 %.val.i.i.i.i.i204, 15
  %i.vt = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.vt, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i.i.i.i203, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.da
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.dc

bb.db:                                            ; preds = %.preheader.i.i.i.i
  %i.vu = load ptr, ptr %13, align 8, !tbaa !1036 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 14
  store i8 %i.vs, ptr %i.vv, align 2, !tbaa !1060
  br label %bb.dc

.preheader.i.i.i.i:                               ; preds = %bb.da, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.vy, %.preheader.i.i.i.i ], [ 0, %bb.da ] ; 2 uses
  %i.vw = load ptr, ptr %13, align 8, !tbaa !1036
  %i.vx = getelementptr inbounds nuw [192 x i8], ptr %i.vw, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.vx, i8 0, i64 16, i1 false)
  %i.vy = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905
  %i.vz = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.vy, %i.vz
  %i.wa = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.wa, label %.preheader.i.i.i.i, label %bb.db, !llvm.loop !1064

bb.dc:                                            ; preds = %bb.db, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.vz, %bb.db ] ; 2 uses
  %i.wb = phi ptr [ %i.vn, %._crit_edge.i.i.i.i ], [ %i.vu, %bb.db ]
  store i64 0, ptr %i.jr, align 8, !tbaa !43
  store i64 %.pre-phi.i.i.i.i, ptr %i.jo, align 8, !tbaa !905
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cz
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.dc ], [ %.val23.i.i.i.i, %bb.cz ] ; 2 uses
  %i.wc = phi ptr [ %i.wb, %bb.dc ], [ %i.vn, %bb.cz ] ; 2 uses
  br i1 %.not.i.i.i.i203, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE5clearEv.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wd = icmp eq i64 %.val21.i.i.i.i, 0
  br i1 %i.wd, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.we = getelementptr i8, ptr %i.wc, i64 14
  %.val18.i.i.i.i = load i8, ptr %i.we, align 1, !tbaa !61
  %i.wf = and i8 %.val18.i.i.i.i, 15
  %narrow.i.i.i.i = mul nuw i8 %i.wf, 12
  %i.wg = zext i8 %narrow.i.i.i.i to i64
  %i.wh = add nuw nsw i64 %i.wg, 16
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.wi = shl i64 192, %.val21.i.i.i.i
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i.i = phi i64 [ %i.wh, %bb.df ], [ %i.wi, %bb.dg ]
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !1036
  store i64 0, ptr %i.jo, align 8, !tbaa !905
  call void @_ZdlPvm(ptr noundef nonnull %i.wc, i64 noundef %.0.i.i.i.i.i) #39
  br label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE5clearEv.exit

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE5clearEv.exit: ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, %bb.dd, %bb.dh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 %.0, ptr %i.wj, align 4, !tbaa !3
  %i.wk = add nsw i32 %.0, %.0314367
  br label %bb.di

bb.di:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE5clearEv.exit, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit, %.critedge, %bb.bb
  %.1 = phi i32 [ %.0314367, %bb.bb ], [ %i.wk, %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE5clearEv.exit ], [ %i.mp, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit ], [ %.0314367, %.critedge ] ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %i.wl = load i32, ptr %i.n, align 8, !tbaa !162
  %i.wm = sext i32 %i.wl to i64
  %i.wn = icmp slt i64 %indvars.iv.next408, %i.wm
  br i1 %i.wn, label %bb.az, label %._crit_edge372, !llvm.loop !1065

.loopexit318:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp:                               ; preds = %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.dj:                                            ; preds = %._crit_edge372
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.wo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wp = load <2 x ptr>, ptr %4, align 16, !tbaa !27, !noalias !1069
  store <2 x ptr> %i.wp, ptr %14, align 16, !tbaa !27, !alias.scope !1069
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !1041
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !47
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !1070
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ws, i32 noundef %.0314.lcssa, ptr noundef %i.wt)
          to label %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206 unwind label %bb.do

_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206: ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.wu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.wv = load <2 x ptr>, ptr %3, align 16, !tbaa !27, !noalias !1076
  store <2 x ptr> %i.wv, ptr %15, align 16, !tbaa !27, !alias.scope !1076
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !1070
  %i.ww = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %.not378 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %.sroa.0.0 ; 2 uses
  br i1 %.not378, label %._crit_edge375, label %bb.dk

bb.dk:                                            ; preds = %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  %i.wx = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.wy = sub i64 %i.wx, %i.ww                    ; 2 uses
  %i.wz = sdiv exact i64 %i.wy, 24
  %i.xa = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.xc = load ptr, ptr %14, align 16, !tbaa !47  ; 2 uses
  %i.xd = load ptr, ptr %i.hy, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.xe = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !895
  %i.xh = ptrtoint ptr %i.xg to i64
  %i.xi = ptrtoint ptr %i.xe to i64
  %i.xj = sub i64 %i.xh, %i.xi
  store ptr %i.xe, ptr %16, align 8, !tbaa !233
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xj
  store ptr %i.xk, ptr %i.xa, align 8, !tbaa !236
  %i.xl = load ptr, ptr %i.xc, align 8, !tbaa !50
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 216
  %i.xn = load ptr, ptr %i.xm, align 8
  invoke void %i.xn(ptr noundef nonnull align 8 dereferenceable(94) %i.xc, ptr noundef %i.xd, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.dl unwind label %.loopexit.split-lp416

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %i.xo = load ptr, ptr %15, align 16, !tbaa !47  ; 2 uses
  %i.xp = load ptr, ptr %i.wq, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.xq = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.xr = load ptr, ptr %i.xf, align 8, !tbaa !895
  %i.xs = ptrtoint ptr %i.xr to i64
  %i.xt = ptrtoint ptr %i.xq to i64
  %i.xu = sub i64 %i.xs, %i.xt
  store ptr %i.xq, ptr %17, align 8, !tbaa !233
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xu
  store ptr %i.xv, ptr %i.xb, align 8, !tbaa !236
  %i.xw = load ptr, ptr %i.xo, align 8, !tbaa !50
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 216
  %i.xy = load ptr, ptr %i.xx, align 8
  invoke void %i.xy(ptr noundef nonnull align 8 dereferenceable(94) %i.xo, ptr noundef %i.xp, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.dm unwind label %.loopexit.split-lp421

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  %exitcond413.peel.not = icmp eq i64 %i.wy, 24
  br i1 %exitcond413.peel.not, label %._crit_edge375, label %.peel.next

._crit_edge375:                                   ; preds = %bb.dq, %bb.dm, %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.xz = load ptr, ptr %i.p, align 8, !tbaa !110
  store ptr %i.xz, ptr %i.a, align 8, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.ya = load i32, ptr %i.n, align 8, !tbaa !162
  store i32 %i.ya, ptr %i.b, align 4, !tbaa !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  store ptr null, ptr %0, align 8, !tbaa !490, !alias.scope !1077
  %i.yb = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #42
          to label %.noexc207 unwind label %bb.ex ; 6 uses

.noexc207:                                        ; preds = %._crit_edge375
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !559 ; 2 uses
  %.not4.i.i.i259 = icmp eq ptr %i.aew, %i.aey
  br i1 %.not4.i.i.i259, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269, label %.lr.ph.i.i.i260

.lr.ph.i.i.i260:                                  ; preds = %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265
  %.05.i.i.i261 = phi ptr [ %i.afn, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265 ], [ %i.aew, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258 ] ; 5 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 96
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i262 = icmp eq ptr %i.afa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i262, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i260
  %i.afb = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 112
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !89
  %i.afd = ptrtoint ptr %i.afc to i64
  %i.afe = ptrtoint ptr %i.afa to i64
  %i.aff = sub i64 %i.afd, %i.afe
  call void @_ZdlPvm(ptr noundef nonnull %i.afa, i64 noundef %i.aff) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263:     ; preds = %bb.fk, %.lr.ph.i.i.i260
  %i.afg = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 72
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !219 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i264 = icmp eq ptr %i.afh, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i264, label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263
  %i.afi = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 88
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !220
  %i.afk = ptrtoint ptr %i.afj to i64
  %i.afl = ptrtoint ptr %i.afh to i64
  %i.afm = sub i64 %i.afk, %i.afl
  call void @_ZdlPvm(ptr noundef nonnull %i.afh, i64 noundef %i.afm) #40
  br label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265

_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265: ; preds = %bb.fl, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263
  %i.afn = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 120 ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.afn, %i.aey
  br i1 %.not.i.i.i266, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267, label %.lr.ph.i.i.i260, !llvm.loop !561

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267: ; preds = %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265
  %.pr.i268 = load ptr, ptr %12, align 8, !tbaa !557
  br label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258
  %i.afo = phi ptr [ %.pr.i268, %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267 ], [ %i.aew, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258 ] ; 3 uses
  %.not.i.i1.i270 = icmp eq ptr %i.afo, null
  br i1 %.not.i.i1.i270, label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271, label %bb.fm

bb.fm:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269
  %i.afp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !560
  %i.afr = ptrtoint ptr %i.afq to i64
  %i.afs = ptrtoint ptr %i.afo to i64
  %i.aft = sub i64 %i.afr, %i.afs
  call void @_ZdlPvm(ptr noundef nonnull %i.afo, i64 noundef %i.aft) #40
  br label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271

_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271, %bb.an
  %.pn132.pn.pn = phi { ptr, i32 } [ %.pn132.pn, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271 ], [ %i.iq, %bb.an ] ; 3 uses
  %i.afu = load ptr, ptr %11, align 8, !tbaa !109 ; 7 uses
  %.not.i272 = icmp eq ptr %i.afu, null
  br i1 %.not.i272, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 40
  %i.afw = atomicrmw sub ptr %i.afv, i32 1 acq_rel, align 4
  %i.afx = icmp eq i32 %i.afw, 1
  br i1 %i.afx, label %.sink.split.i.i273, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277

.sink.split.i.i273:                               ; preds = %bb.fo
  %i.afy = load ptr, ptr %i.afu, align 8, !tbaa !50
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 64
  %i.aga = load ptr, ptr %i.afz, align 8
  invoke void %i.aga(ptr noundef nonnull align 8 dereferenceable(64) %i.afu)
          to label %.noexc.i274 unwind label %bb.fp, !inline_history !124

.noexc.i274:                                      ; preds = %.sink.split.i.i273
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !125
  %.not.i.i275 = icmp eq ptr %i.agc, null
  %i.agd = load ptr, ptr %i.afu, align 8, !tbaa !50
  %..i.i276 = select i1 %.not.i.i275, i64 8, i64 48
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 %..i.i276
  %i.agf = load ptr, ptr %i.age, align 8
  invoke void %i.agf(ptr noundef nonnull align 8 dereferenceable(64) %i.afu)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277 unwind label %bb.fp, !inline_history !124

bb.fp:                                            ; preds = %.noexc.i274, %.sink.split.i.i273
  %i.agg = landingpad { ptr, i32 }
          catch ptr null
  %i.agh = extractvalue { ptr, i32 } %i.agg, 0
  call void @__clang_call_terminate(ptr %i.agh) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277: ; preds = %.noexc.i274, %bb.fo, %bb.fn, %bb.am
  %.pn132.pn.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.am ], [ %.pn132.pn.pn, %bb.fn ], [ %.pn132.pn.pn, %bb.fo ], [ %.pn132.pn.pn, %.noexc.i274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.fq

bb.fq:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277, %bb.al
  %.pn132.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277 ], [ %i.io, %bb.al ] ; 3 uses
  %i.agi = load ptr, ptr %10, align 8, !tbaa !109 ; 7 uses
  %.not.i278 = icmp eq ptr %i.agi, null
  br i1 %.not.i278, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 40
  %i.agk = atomicrmw sub ptr %i.agj, i32 1 acq_rel, align 4
  %i.agl = icmp eq i32 %i.agk, 1
  br i1 %i.agl, label %.sink.split.i.i279, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283

.sink.split.i.i279:                               ; preds = %bb.fr
  %i.agm = load ptr, ptr %i.agi, align 8, !tbaa !50
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 64
  %i.ago = load ptr, ptr %i.agn, align 8
  invoke void %i.ago(ptr noundef nonnull align 8 dereferenceable(64) %i.agi)
          to label %.noexc.i280 unwind label %bb.fs, !inline_history !124

.noexc.i280:                                      ; preds = %.sink.split.i.i279
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !125
  %.not.i.i281 = icmp eq ptr %i.agq, null
  %i.agr = load ptr, ptr %i.agi, align 8, !tbaa !50
  %..i.i282 = select i1 %.not.i.i281, i64 8, i64 48
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 %..i.i282
  %i.agt = load ptr, ptr %i.ags, align 8
  invoke void %i.agt(ptr noundef nonnull align 8 dereferenceable(64) %i.agi)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283 unwind label %bb.fs, !inline_history !124

bb.fs:                                            ; preds = %.noexc.i280, %.sink.split.i.i279
  %i.agu = landingpad { ptr, i32 }
          catch ptr null
  %i.agv = extractvalue { ptr, i32 } %i.agu, 0
  call void @__clang_call_terminate(ptr %i.agv) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283: ; preds = %.noexc.i280, %bb.fr, %bb.fq, %bb.ak
  %.pn132.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.in, %bb.ak ], [ %.pn132.pn.pn.pn.pn, %bb.fq ], [ %.pn132.pn.pn.pn.pn, %bb.fr ], [ %.pn132.pn.pn.pn.pn, %.noexc.i280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.ft

bb.ft:                                            ; preds = %.loopexit324, %.loopexit.split-lp325, %bb.o, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283
  %.pn141.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn.pn.pn, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283 ], [ %i.bp, %bb.o ], [ %lpad.loopexit326, %.loopexit324 ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp325 ]
  %i.agw = load ptr, ptr %8, align 8, !tbaa !109  ; 7 uses
  %.not.i284 = icmp eq ptr %i.agw, null
  br i1 %.not.i284, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 40
  %i.agy = atomicrmw sub ptr %i.agx, i32 1 acq_rel, align 4
  %i.agz = icmp eq i32 %i.agy, 1
  br i1 %i.agz, label %.sink.split.i.i285, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289

.sink.split.i.i285:                               ; preds = %bb.fu
  %i.aha = load ptr, ptr %i.agw, align 8, !tbaa !50
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 64
  %i.ahc = load ptr, ptr %i.ahb, align 8
  invoke void %i.ahc(ptr noundef nonnull align 8 dereferenceable(64) %i.agw)
          to label %.noexc.i286 unwind label %bb.fv, !inline_history !124

.noexc.i286:                                      ; preds = %.sink.split.i.i285
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !125
  %.not.i.i287 = icmp eq ptr %i.ahe, null
  %i.ahf = load ptr, ptr %i.agw, align 8, !tbaa !50
  %..i.i288 = select i1 %.not.i.i287, i64 8, i64 48
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %..i.i288
  %i.ahh = load ptr, ptr %i.ahg, align 8
  invoke void %i.ahh(ptr noundef nonnull align 8 dereferenceable(64) %i.agw)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289 unwind label %bb.fv, !inline_history !124

bb.fv:                                            ; preds = %.noexc.i286, %.sink.split.i.i285
  %i.ahi = landingpad { ptr, i32 }
          catch ptr null
  %i.ahj = extractvalue { ptr, i32 } %i.ahi, 0
  call void @__clang_call_terminate(ptr %i.ahj) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289: ; preds = %bb.ft, %bb.fu, %.noexc.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  resume { ptr, i32 } %.pn141.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.170") align 8 %0, ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %5 = alloca %"class.std::optional", align 4     ; 5 uses
  %6 = alloca %"class.std::optional.229", align 1 ; 5 uses
  %7 = alloca %"class.std::optional", align 4     ; 5 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 13 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::vector.179", align 8  ; 19 uses
  %13 = alloca %"class.facebook::velox::(anonymous namespace)::UpdateMapRow.455", align 8 ; 19 uses
  %14 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %15 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %16 = alloca %"class.folly::Range", align 8     ; 10 uses
  %17 = alloca %"class.folly::Range", align 8     ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !109
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = atomicrmw add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !533    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !536  ; 2 uses
  %.not350 = icmp eq ptr %i.g, %i.i
  br i1 %.not350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110
  %i.r = sext i32 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !1081
  store i32 0, ptr %7, align 4, !tbaa !61, !noalias !1081
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.s, align 4, !tbaa !111, !noalias !1081
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %10, i64 noundef %i.r, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.ak

bb.c:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit
  %.0351 = phi ptr [ %i.g, %.lr.ph ], [ %i.gg, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit ] ; 5 uses
  %i.t = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0351, ptr noundef null)
          to label %bb.d unwind label %.loopexit324

bb.d:                                             ; preds = %bb.c
  %.not139 = icmp eq ptr %i.t, null
  br i1 %.not139, label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, label %bb.e

.loopexit324:                                     ; preds = %bb.c, %bb.l, %bb.n, %bb.q, %bb.v
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp325:                            ; preds = %.invoke
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %8, align 8, !tbaa !109    ; 3 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.x = load i32, ptr %i.j, align 8, !tbaa !162
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.z = sext i32 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !1084
  store i8 -1, ptr %6, align 1, !tbaa !61, !noalias !1084
  store i8 1, ptr %i.l, align 1, !tbaa !356, !noalias !1084
  %i.aa = add nsw i64 %i.z, 7
  %i.ab = lshr i64 %i.aa, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.ab, ptr noundef %i.y, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !1084
  %i.ac = load ptr, ptr %9, align 8, !tbaa !109
  store ptr null, ptr %9, align 8, !tbaa !109
  %i.ad = load ptr, ptr %8, align 8, !tbaa !109   ; 7 uses
  store ptr %i.ac, ptr %8, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %.noexc.i.i unwind label %bb.i, !inline_history !124

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.al, null
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !50
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %..i.i.i
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.i, !inline_history !124

bb.i:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.h, %.noexc.i.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !109    ; 7 uses
  %.not.i144 = icmp eq ptr %.pr, null
  br i1 %.not.i144, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.as = atomicrmw sub ptr %i.ar, i32 1 acq_rel, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.au = load ptr, ptr %.pr, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !124

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125
  %.not.i.i145 = icmp eq ptr %i.ay, null
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !50
  %..i.i = select i1 %.not.i.i145, i64 8, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %..i.i
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !124

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.g, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !29  ; 6 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %.not140 = icmp eq ptr %i.be, null
  br i1 %.not140, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.bg = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0351, ptr noundef null)
          to label %bb.m unwind label %.loopexit324

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !112
  %i.bk = and i8 %i.bj, 2
  %.not.i146 = icmp eq i8 %i.bk, 0
  br i1 %.not.i146, label %bb.n, label %.invoke, !prof !20

.invoke:                                          ; preds = %bb.u, %bb.p, %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont unwind label %.loopexit.split-lp325

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !117
  %i.bn = load i32, ptr %i.j, align 8, !tbaa !162
  %i.bo = sext i32 %i.bn to i64
  invoke void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %i.bg, i64 noundef 0, ptr noundef %i.bm, i64 noundef 0, i64 noundef %i.bo)
          to label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit unwind label %.loopexit324

bb.o:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.ft
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  br label %bb.fq

bb.am:                                            ; preds = %bb.ab
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277

bb.an:                                            ; preds = %bb.ad
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EE11_M_allocateEm.exit.i, %bb.af
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

.lr.ph354:                                        ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183
  %.0111353 = phi ptr [ %i.jn, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 ], [ %i.hz, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0111353, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !211
  %i.iu = invoke noundef ptr @_ZNK8facebook5velox10BaseVector9asCheckedINS0_9MapVectorEEEPKT_v(ptr noundef nonnull align 8 dereferenceable(94) %i.it)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %.lr.ph354
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 128 ; 2 uses
  %i.iw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !7  ; 2 uses
  %i.iz = load ptr, ptr %i.iv, align 8, !tbaa !47
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !7
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = invoke noundef zeroext i1 %i.je(ptr noundef nonnull align 8 dereferenceable(18) %i.iy, ptr noundef nonnull align 8 dereferenceable(18) %i.jb)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.jf, label %bb.av, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs) #38
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ax, %bb.aw, %bb.ap, %.lr.ph354
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.au:                                            ; preds = %bb.ar
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.av:                                            ; preds = %bb.aq
  %i.ji = load ptr, ptr %i.iv, align 8, !tbaa !47 ; 2 uses
  %i.jj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 3 uses
  %i.jk = load ptr, ptr %i.hf, align 8, !tbaa !560
  %.not.i179 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not.i179, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji, i1 noundef zeroext true)
          to label %.noexc181 unwind label %bb.at

.noexc181:                                        ; preds = %bb.aw
  %i.jl = load ptr, ptr %i.hx, align 8, !tbaa !559
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 120
  store ptr %i.jm, ptr %i.hx, align 8, !tbaa !559
  br label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE17_M_realloc_insertIJRNS1_10BaseVectorEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji)
          to label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 unwind label %bb.at

_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183: ; preds = %bb.ax, %.noexc181
  %i.jn = getelementptr inbounds nuw i8, ptr %.0111353, i64 120 ; 2 uses
  %.not120 = icmp eq ptr %i.jn, %i.ia
  br i1 %.not120, label %._crit_edge355.loopexit, label %.lr.ph354

_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit: ; preds = %.noexc178, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.sroa.0.0 = phi ptr [ %i.ik, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 19 uses
  %.sink.i = phi i64 [ %i.im, %.noexc178 ], [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !1103
  %i.jo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  %i.jp = load i32, ptr %i.n, align 8, !tbaa !162
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph371, label %._crit_edge372

.lr.ph371:                                        ; preds = %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  br label %bb.az

._crit_edge372:                                   ; preds = %bb.di, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %.0314.lcssa = phi i32 [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit ], [ %.1, %bb.di ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.jw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !1108
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i32 noundef %.0314.lcssa, ptr noundef %i.jy)
          to label %bb.dj unwind label %bb.dn

bb.ay:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.aj
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258

bb.az:                                            ; preds = %.lr.ph371, %bb.di
  %indvars.iv407 = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next408, %bb.di ] ; 13 uses
  %.0314367 = phi i32 [ 0, %.lr.ph371 ], [ %.1, %bb.di ] ; 8 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv407
  store i32 %.0314367, ptr %i.ka, align 4, !tbaa !3
  %i.kb = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %.not317 = icmp eq ptr %i.kb, null
  br i1 %.not317, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !117
  %i.ke = lshr i64 %indvars.iv407, 6
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !43
  %i.kh = and i64 %indvars.iv407, 63
  %i.ki = shl nuw i64 1, %i.kh
  %i.kj = and i64 %i.kg, %i.ki
  %.not.i185 = icmp eq i64 %i.kj, 0
  br i1 %.not.i185, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 0, ptr %i.kk, align 4, !tbaa !3
  br label %bb.di

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.kl = load ptr, ptr %2, align 8, !tbaa !533   ; 2 uses
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !536 ; 2 uses
  %.not125.not356 = icmp eq ptr %i.kl, %i.km
  br i1 %.not125.not356, label %.critedge, label %.lr.ph360

.lr.ph360:                                        ; preds = %bb.bc
  %i.kn = trunc nuw nsw i64 %indvars.iv407 to i32 ; 3 uses
  br label %bb.be

bb.bd:                                            ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %.0117357, i64 120 ; 2 uses
  %.not125.not = icmp eq ptr %i.ko, %i.km
  br i1 %.not125.not, label %.critedge, label %bb.be

bb.be:                                            ; preds = %.lr.ph360, %bb.bd
  %.0117357 = phi ptr [ %i.kl, %.lr.ph360 ], [ %i.ko, %bb.bd ] ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0117357, i64 58
  %i.kq = load i8, ptr %i.kp, align 2, !tbaa !166, !range !147, !noundef !148
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ks = getelementptr inbounds nuw i8, ptr %.0117357, i64 59
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !256, !range !147, !noundef !148
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kv = getelementptr inbounds nuw i8, ptr %.0117357, i64 64
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.bh:                                            ; preds = %bb.bf
  %i.kx = getelementptr inbounds nuw i8, ptr %.0117357, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !203
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv407
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.be, %bb.bg, %bb.bh
  %.0.i = phi i32 [ %i.la, %bb.bh ], [ %i.kw, %bb.bg ], [ %i.kn, %bb.be ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.0117357, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !211
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !304
  %i.lf = sext i32 %.0.i to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !3
  %i.li = icmp slt i32 %i.lh, 1
  br i1 %i.li, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.lj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 2 uses
  %i.lk = load ptr, ptr %12, align 8, !tbaa !557  ; 3 uses
  %.not377 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not377, label %._crit_edge366, label %.lr.ph365

.critedge:                                        ; preds = %bb.bd, %bb.bc
  %i.ll = load ptr, ptr %i.js, align 8, !tbaa !304 ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv407
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3  ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !3
  %i.lp = icmp sgt i32 %i.ln, 0
  br i1 %i.lp, label %bb.bi, label %bb.di

bb.bi:                                            ; preds = %.critedge
  %i.lq = load ptr, ptr %i.jt, align 8, !tbaa !306
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv407
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3  ; 2 uses
  %i.lt = load ptr, ptr %i.ju, align 8, !tbaa !895 ; 6 uses
  %i.lu = load ptr, ptr %i.jv, align 8, !tbaa !897
  %.not.i.i186 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not.i.i186, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store i32 %.0314367, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.7294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 %i.ln, ptr %.sroa.7294.0..sroa_idx, align 4, !tbaa !3
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store ptr %i.lv, ptr %i.ju, align 8, !tbaa !895
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.lw = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 4 uses
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.bl, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc188 unwind label %.loopexit.split-lp320

.noexc188:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.mb = sdiv exact i64 %i.lz, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 768614336404564650)
  %i.mf = select i1 %i.md, i64 768614336404564650, i64 %i.me ; 3 uses
  %.not.i.i.i.i187 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i187)
  %i.mg = mul nuw nsw i64 %i.mf, 12
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #42
          to label %.noexc189 unwind label %.loopexit319 ; 4 uses

.noexc189:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 4 uses
  store i32 %i.ls, ptr %i.mi, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %.0314367, ptr %.sroa.6.0..sroa_idx292, align 4, !tbaa !3
  %.sroa.7294.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store i32 %i.ln, ptr %.sroa.7294.0..sroa_idx295, align 4, !tbaa !3
  %i.mj = icmp sgt i64 %i.lz, 0
  br i1 %i.mj, label %bb.bm, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.bm:                                            ; preds = %.noexc189
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr align 4 %i.lw, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.bm, %.noexc189
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %.not.i17.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #40
  %.pre431.pre = load ptr, ptr %i.js, align 8, !tbaa !304
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %.pre431 = phi ptr [ %.pre431.pre, %bb.bn ], [ %i.ll, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i ]
  store ptr %i.mh, ptr %.sroa.0.0, align 8, !tbaa !898
  store ptr %i.mk, ptr %i.ju, align 8, !tbaa !895
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %i.mh, i64 %i.mf
  store ptr %i.ml, ptr %i.jv, align 8, !tbaa !897
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bj
  %i.mm = phi ptr [ %.pre431, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ll, %bb.bj ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv407
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !3
  %i.mp = add nsw i32 %i.mo, %.0314367
  br label %bb.di

.loopexit319:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp320:                            ; preds = %bb.bl
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

._crit_edge366:                                   ; preds = %._crit_edge363, %.preheader
  %.val = load i64, ptr %i.jr, align 8, !tbaa !1111 ; 3 uses
  %i.mq = and i64 %.val, -4                       ; 2 uses
  %.not9.i = icmp eq i64 %i.mq, 0
  br i1 %.not9.i, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge366
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = lshr i64 %.val, 2
  %i.mt = mul nuw i64 %i.ms, 3
  %i.mu = and i64 %i.mt, 3
  %i.mv = shl i64 %.val, 2
  %i.mw = and i64 %i.mv, 12
  %i.mx = or disjoint i64 %i.mu, %i.mw
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, %.lr.ph.i
  %i.my = phi i32 [ 0, %.lr.ph.i ], [ %i.nz, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 2 uses
  %.sroa.8.011.i = phi i64 [ %i.mx, %.lr.ph.i ], [ %.sroa.8.011.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %.sroa.01.010.i = phi ptr [ %i.mr, %.lr.ph.i ], [ %.sroa.01.010.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 4
  %.sroa.0.0.copyload.i = load i64, ptr %i.mz, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %i.na = shl i64 %.sroa.0.0.copyload.i, 24
  %i.nb = ashr i64 %i.na, 56
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.nb ; 4 uses
  %i.nd = add nsw i32 %i.my, %.0314367            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !895 ; 6 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !897
  %.not.i.i.i.i191 = icmp eq ptr %i.nf, %i.nh
  br i1 %.not.i.i.i.i191, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.nf, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store i32 %i.nd, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  store ptr %i.ni, ptr %i.ne, align 8, !tbaa !895
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

bb.bp:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  %i.nj = load ptr, ptr %i.nc, align 8, !tbaa !898 ; 4 uses
  %i.nk = ptrtoint ptr %i.nf to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl                    ; 6 uses
  %i.nn = icmp eq i64 %i.nm, 9223372036854775800
  br i1 %i.nn, label %bb.bq, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc194 unwind label %.loopexit.split-lp

.noexc194:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bp
  %i.no = sdiv exact i64 %i.nm, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.no, i64 1)
  %i.np = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.no ; 2 uses
  %i.nq = icmp ult i64 %i.np, %i.no
  %i.nr = call i64 @llvm.umin.i64(i64 %i.np, i64 768614336404564650)
  %i.ns = select i1 %i.nq, i64 768614336404564650, i64 %i.nr ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ns, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.nt = mul nuw nsw i64 %i.ns, 12
  %i.nu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nt) #42
          to label %.noexc195 unwind label %.loopexit318 ; 4 uses

.noexc195:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 %i.nm ; 4 uses
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.nv, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 %i.nd, ptr %.sroa.5.0..sroa_idx2.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx4.i.i, align 4, !tbaa !3
  %i.nw = icmp sgt i64 %i.nm, 0
  br i1 %i.nw, label %bb.br, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.br:                                            ; preds = %.noexc195
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nu, ptr align 4 %i.nj, i64 %i.nm, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.br, %.noexc195
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.nm) #40
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bs, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.nu, ptr %i.nc, align 8, !tbaa !898
  store ptr %i.nx, ptr %i.ne, align 8, !tbaa !895
  %i.ny = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.ns
  store ptr %i.ny, ptr %i.ng, align 8, !tbaa !897
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.bo
  %i.nz = add nuw nsw i32 %i.my, 1                ; 2 uses
  %i.oa = getelementptr inbounds i8, ptr %.sroa.01.010.i, i64 -16
  %.neg.i.i.i.i = mul nsw i64 %.sroa.8.011.i, -12
  %i.ob = getelementptr inbounds i8, ptr %i.oa, i64 %.neg.i.i.i.i ; 2 uses
  %.not.i9.i.i = icmp eq i64 %.sroa.8.011.i, 0
  br i1 %.not.i9.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.bt, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i
  br label %.critedge.i.i.i

bb.bt:                                            ; preds = %thread-pre-split.i.i
  %.not.i.i.i193 = icmp eq i64 %i.oe, 0
  br i1 %.not.i.i.i193, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i, %bb.bt
  %i.oc = phi i64 [ %i.oe, %bb.bt ], [ %.sroa.8.011.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.od = phi ptr [ %i.of, %bb.bt ], [ %.sroa.01.010.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.oe = add nsw i64 %i.oc, -1                   ; 4 uses
  %i.of = getelementptr inbounds i8, ptr %i.od, i64 -12 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oe
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !61
  %.not.i.i192 = icmp eq i8 %i.oh, 0
  br i1 %.not.i.i192, label %bb.bt, label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, !prof !13, !llvm.loop !1112

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %bb.bu
  %.017.i.i.i = phi ptr [ %i.ok, %bb.bu ], [ %i.ob, %.critedge.i.i.i.preheader ] ; 4 uses
  %i.oi = getelementptr i8, ptr %.017.i.i.i, i64 14
  %.017.i.val.i.i = load i8, ptr %i.oi, align 1, !tbaa !61
  %i.oj = and i8 %.017.i.val.i.i, 15
  %.not4.i.i = icmp eq i8 %i.oj, 0
  br i1 %.not4.i.i, label %bb.bu, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, !prof !20

bb.bu:                                            ; preds = %.critedge.i.i.i
  %i.ok = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -192 ; 3 uses
  %.val25.i.i = load <16 x i8>, ptr %i.ok, align 16, !tbaa !61
  %i.ol = icmp slt <16 x i8> %.val25.i.i, zeroinitializer
  %i.om = bitcast <16 x i1> %i.ol to i16
  %i.on = and i16 %i.om, 16383                    ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -384
  call void @llvm.prefetch.p0(ptr nonnull %i.oo, i32 0, i32 3, i32 1)
  %.not6.i.i = icmp eq i16 %i.on, 0
  br i1 %.not6.i.i, label %.critedge.i.i.i, label %bb.bv, !prof !13, !llvm.loop !1113

bb.bv:                                            ; preds = %bb.bu
  %i.op = zext nneg i16 %i.on to i32
  %i.oq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.op, i1 true)
  %i.or = xor i32 %i.oq, 31
  %i.os = zext nneg i32 %i.or to i64              ; 2 uses
  %i.ot = icmp ne ptr %i.ok, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ot)
  %i.ou = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -176
  %i.ov = getelementptr inbounds nuw [12 x i8], ptr %i.ou, i64 %i.os
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge: ; preds = %thread-pre-split.i.i, %bb.bv
  %.sroa.8.011.i.be = phi i64 [ %i.os, %bb.bv ], [ %i.oe, %thread-pre-split.i.i ]
  %.sroa.01.010.i.be = phi ptr [ %i.ov, %bb.bv ], [ %i.of, %thread-pre-split.i.i ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

.lr.ph365:                                        ; preds = %.preheader, %._crit_edge363
  %.pre428 = phi ptr [ %.pre428434, %._crit_edge363 ], [ %i.lk, %.preheader ] ; 3 uses
  %i.ow = phi ptr [ %i.qd, %._crit_edge363 ], [ %i.lk, %.preheader ]
  %i.ox = phi ptr [ %i.qe, %._crit_edge363 ], [ %i.lj, %.preheader ]
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %._crit_edge363 ], [ 0, %.preheader ] ; 5 uses
  %i.oy = icmp eq i64 %indvars.iv404, 0
  br i1 %i.oy, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph365
  %i.oz = load ptr, ptr %2, align 8, !tbaa !533
  %i.pa = getelementptr [120 x i8], ptr %i.oz, i64 %indvars.iv404 ; 5 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 -72
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !211 ; 3 uses
  %i.pd = getelementptr i8, ptr %i.pa, i64 -62
  %i.pe = load i8, ptr %i.pd, align 2, !tbaa !166, !range !147, !noundef !148
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pg = getelementptr i8, ptr %i.pa, i64 -61
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !256, !range !147, !noundef !148
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pj = getelementptr i8, ptr %i.pa, i64 -56
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

bb.bz:                                            ; preds = %bb.bx
  %i.pl = getelementptr i8, ptr %i.pa, i64 -112
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !203
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv407
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

_ZNK8facebook5velox13DecodedVector5indexEi.exit197: ; preds = %.lr.ph365, %bb.bz, %bb.by, %bb.bw
  %i.pp = phi ptr [ %i.pc, %bb.bz ], [ %i.pc, %bb.bw ], [ %i.pc, %bb.by ], [ %1, %.lr.ph365 ] ; 2 uses
  %i.pq = phi i32 [ %i.po, %bb.bz ], [ %i.kn, %bb.bw ], [ %i.pk, %bb.by ], [ %i.kn, %.lr.ph365 ]
  %i.pr = sext i32 %i.pq to i64                   ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 120
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !304
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pr
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3  ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph362, label %._crit_edge363

.lr.ph362:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 104
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !306
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.pr
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !3
  %i.qb = trunc i64 %indvars.iv404 to i8
  %i.qc = sext i32 %i.qa to i64
  %wide.trip.count = zext nneg i32 %i.pv to i64
  br label %bb.ca

._crit_edge363.loopexit:                          ; preds = %.loopexit
  %.pre430 = load ptr, ptr %i.hx, align 8, !tbaa !559
  br label %._crit_edge363

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %.pre428434 = phi ptr [ %.pre428436, %._crit_edge363.loopexit ], [ %.pre428, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ]
  %i.qd = phi ptr [ %20, %._crit_edge363.loopexit ], [ %i.ow, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %i.qe = phi ptr [ %.pre430, %._crit_edge363.loopexit ], [ %i.ox, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = ptrtoint ptr %i.qd to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = sdiv exact i64 %i.qh, 120
  %i.qj = icmp ugt i64 %i.qi, %indvars.iv.next405
  br i1 %i.qj, label %.lr.ph365, label %._crit_edge366, !llvm.loop !1114

bb.ca:                                            ; preds = %.lr.ph362, %.loopexit
  %.pre428435 = phi ptr [ %.pre428, %.lr.ph362 ], [ %.pre428436, %.loopexit ]
  %18 = phi ptr [ %.pre428, %.lr.ph362 ], [ %20, %.loopexit ] ; 2 uses
  %indvars.iv401 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next402, %.loopexit ] ; 2 uses
  %19 = add nsw i64 %indvars.iv401, %i.qc         ; 6 uses
  %i.qk = getelementptr inbounds nuw [120 x i8], ptr %18, i64 %indvars.iv404 ; 10 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !254 ; 4 uses
  %.not.i198 = icmp eq ptr %i.qm, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.qk, i64 58
  %.pre429.a = load i8, ptr %.phi.trans.insert, align 2, !tbaa !166, !range !147 ; 2 uses
  br i1 %.not.i198, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qn = trunc nuw i8 %.pre429.a to i1
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 57
  %i.qp = load i8, ptr %i.qo, align 1, !range !147
  %i.qq = trunc nuw i8 %i.qp to i1
  %or.cond.i = select i1 %i.qn, i1 true, i1 %i.qq
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.qr = lshr i64 %19, 6
  %i.qs = and i64 %i.qr, 67108863
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !43
  %i.qv = and i64 %19, 63
  %i.qw = shl nuw i64 1, %i.qv
  %i.qx = and i64 %i.qu, %i.qw
  %.not.i.i200 = icmp eq i64 %i.qx, 0
  br i1 %.not.i.i200, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !903

bb.cd:                                            ; preds = %bb.cb
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qk, i64 59
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !256, !range !147, !noundef !148
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !203
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %19
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !3
  %i.rf = zext i32 %i.re to i64                   ; 2 uses
  %i.rg = lshr i64 %i.rf, 6
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.rg
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !43
  %i.rj = and i64 %i.rf, 63
  %i.rk = shl nuw i64 1, %i.rj
  %i.rl = and i64 %i.rk, %i.ri
  %.not.i7.i = icmp eq i64 %i.rl, 0
  br i1 %.not.i7.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.rm = load i64, ptr %i.qm, align 8, !tbaa !43
  %i.rn = and i64 %i.rm, 1
  %.not.i6.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i6.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

bb.cf:                                            ; preds = %bb.ce, %bb.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %bb.cr
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.ci:                                            ; preds = %bb.cf
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %bb.ce, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !904
  %i.rs = trunc nsw i64 %19 to i32
  br label %bb.cj

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.ca, %bb.cc
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !904 ; 2 uses
  %i.rv = trunc nuw i8 %.pre429.a to i1
  %i.rw = trunc nsw i64 %19 to i32                ; 3 uses
  br i1 %i.rv, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.rx = phi i32 [ %i.rs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.ry = phi ptr [ %i.rr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qk, i64 59
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !256, !range !147, !noundef !148
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.se = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !203
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %19
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i: ; preds = %bb.cl, %bb.ck, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.si = phi i32 [ %i.rx, %bb.cl ], [ %i.rx, %bb.ck ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sj = phi ptr [ %i.ry, %bb.cl ], [ %i.ry, %bb.ck ], [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.sh, %bb.cl ], [ %i.sd, %bb.ck ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sk = sext i32 %.0.i.i.i to i64
  %i.sl = getelementptr inbounds [2 x i8], ptr %i.sj, i64 %i.sk
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !1115 ; 3 uses
  %i.sn = sext i16 %i.sm to i64                   ; 2 uses
  %i.so = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.sn) ; 2 uses
  %i.sp = lshr i64 %i.so, 24
  %i.sq = or i64 %i.sp, 128                       ; 4 uses
  %i.sr = add nsw i64 %i.so, %i.sn                ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !1117 ; 3 uses
  %i.ss = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ss, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !1103, !noalias !1117 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i
  %i.st = shl nuw nsw i64 %i.sq, 1
  %i.su = or disjoint i64 %i.st, 1
  %i.sv = trunc nuw i64 %i.sq to i8
  %i.sw = insertelement <16 x i8> poison, i8 %i.sv, i64 0
  %i.sx = shufflevector <16 x i8> %i.sw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.sy = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.sz = shl nuw i64 1, %i.sy
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %bb.cm
  %.0.i43.i.i.i.i.i = phi i64 [ %i.sr, %bb.cm ], [ %i.ts, %bb.cq ] ; 2 uses
  %.023.i42.i.i.i.i.i = phi i64 [ %i.sz, %bb.cm ], [ %i.tr, %bb.cq ]
  %i.ta = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i43.i.i.i.i.i, i64 range(i64 0, 256) %i.sy)
  %i.tb = getelementptr inbounds nuw [192 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ta ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 112
  call void @llvm.prefetch.p0(ptr nonnull %i.td, i32 0, i32 3, i32 1), !noalias !1117
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.tb, align 16, !noalias !1117 ; 2 uses
  %i.te = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.sx
  %i.tf = bitcast <16 x i1> %i.te to i16
  %i.tg = and i16 %i.tf, 16383
  %i.th = zext nneg i16 %i.tg to i32
  %i.ti = icmp ne ptr %i.tb, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.tj = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.co, %bb.cn
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.th, %bb.cn ], [ %i.tm, %bb.co ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.tl = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.tm = and i32 %i.tl, %.sroa.07.0.i.i.i.i.i
  %i.tn = zext nneg i32 %i.tk to i64
  call void @llvm.assume(i1 %i.ti)
  %i.to = getelementptr inbounds nuw [12 x i8], ptr %i.tc, i64 %i.tn ; 2 uses
  %.val38.i.i.i.i.i = load i16, ptr %i.to, align 2, !tbaa !1115, !noalias !1117
  %i.tp = icmp eq i16 %i.sm, %.val38.i.i.i.i.i
  br i1 %i.tp, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !20, !llvm.loop !1124

bb.cp:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tq = icmp eq i8 %i.tj, 0
  br i1 %i.tq, label %.thread31.i.i.i.i.i, label %bb.cq, !prof !20

bb.cq:                                            ; preds = %bb.cp
  %i.tr = add i64 %.023.i42.i.i.i.i.i, -1         ; 2 uses
  %i.ts = add i64 %i.su, %.0.i43.i.i.i.i.i
  %.not.i.i.i.i.i.i201 = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i.i.i.i.i201, label %.thread31.i.i.i.i.i, label %bb.cn, !llvm.loop !1125

.thread31.i.i.i.i.i:                              ; preds = %bb.cq, %bb.cp, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i ], [ %i.sy, %bb.cp ], [ %i.sy, %bb.cq ] ; 3 uses
  %i.tt = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.tt, align 1, !tbaa !61, !noalias !1117
  %i.tu = and i8 %.val.i.i.i.i.i.i, 15
  %i.tv = zext nneg i8 %i.tu to i64               ; 2 uses
  %i.tw = shl i64 %i.tv, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.ss, %i.tw
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.thread31.i.i.i.i.i
  %i.tx = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.ss, i64 noundef %i.tx, i64 noundef %i.tv, i64 noundef %i.tw)
          to label %.noexc202 unwind label %bb.ch

.noexc202:                                        ; preds = %bb.cr
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !1103, !noalias !1117
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !1117
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc202, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc202 ] ; 2 uses
  %i.ty = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc202 ] ; 3 uses
  %i.tz = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.sr, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.ua = getelementptr inbounds nuw [192 x i8], ptr %i.ty, i64 %i.tz ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.ua, align 16, !tbaa !61, !noalias !1117
  %i.ub = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.uc = bitcast <16 x i1> %i.ub to i16
  %i.ud = and i16 %i.uc, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.ud, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.ue = shl nuw nsw i64 %i.sq, 1
  %i.uf = or disjoint i64 %i.ue, 1
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cs
  %i.ug = phi i64 [ %i.tz, %bb.cs ], [ %i.um, %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.sr, %bb.cs ], [ %i.ul, %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.uh = getelementptr inbounds nuw [192 x i8], ptr %i.ty, i64 %i.ug
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 15 ; 2 uses
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !1126, !noalias !1117 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.uj, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uk = add i8 %i.uj, 1
  store i8 %i.uk, ptr %i.ui, align 1, !tbaa !1126, !noalias !1117
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %i.ul = add i64 %i.uf, %.030.i.i.i.i.i          ; 2 uses
  %i.um = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ul, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.un = getelementptr inbounds nuw [192 x i8], ptr %i.ty, i64 %i.um ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.un, align 16, !noalias !1117 ; 2 uses
  %i.uo = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.up = bitcast <16 x i1> %i.uo to i16
  %i.uq = and i16 %i.up, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.uq, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.ct, label %bb.cv, !llvm.loop !1128

bb.cv:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.ur = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 14
  %i.ut = add i8 %i.ur, 16
  store i8 %i.ut, ptr %i.us, align 2, !tbaa !1129, !noalias !1117
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.ud, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.uq, %bb.cv ]
  %.1.i.i.i.i.i = phi ptr [ %i.ua, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.un, %bb.cv ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.uu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.uv = zext nneg i16 %i.uu to i64              ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.uv ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !61, !noalias !1117
  %i.uy = icmp eq i8 %i.ux, 0
  br i1 %i.uy, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1117
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cw
  %i.uz = trunc nuw i64 %i.sq to i8
  store i8 %i.uz, ptr %i.uw, align 1, !tbaa !61, !noalias !1117
  %i.va = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.vb = getelementptr inbounds nuw [12 x i8], ptr %i.va, i64 %i.uv ; 4 uses
  %i.vc = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vc)
  store i16 %i.sm, ptr %i.vb, align 4, !tbaa !1130, !noalias !1117
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store i64 0, ptr %i.vd, align 4, !noalias !1117
  %i.ve = lshr i64 %i.uv, 2
  %i.vf = ptrtoint ptr %i.vb to i64
  %i.vg = or i64 %i.ve, %i.vf                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.jr, align 8, !tbaa !1111, !noalias !1117
  %i.vh = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.vg
  %.pre427 = load ptr, ptr %12, align 8, !tbaa !557 ; 2 uses
  br i1 %i.vh, label %bb.cy, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cy:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.vg, ptr %i.jr, align 8, !tbaa !43, !noalias !1117
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cy, %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !1117 ; 2 uses
  %i.vi = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.vj = add i64 %i.vi, 256
  %i.vk = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.vl = or disjoint i64 %i.vj, %i.vk
  store i64 %i.vl, ptr %i.jo, align 8, !tbaa !905, !noalias !1117
  br label %.loopexit

.loopexit:                                        ; preds = %bb.co, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre428436 = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre428435, %bb.co ] ; 2 uses
  %20 = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %18, %bb.co ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.vb, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.to, %bb.co ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 4
  store i32 %i.si, ptr %i.vm, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i8 %i.qb, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !61
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge363.loopexit, label %bb.ca, !llvm.loop !1132

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge366
  %.0 = phi i32 [ 0, %._crit_edge366 ], [ %i.nz, %.critedge.i.i.i ] ; 2 uses
  %i.vn = load ptr, ptr %13, align 8, !tbaa !1103 ; 4 uses
  %i.vo = getelementptr i8, ptr %i.vn, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.vo, align 1, !tbaa !925
  %i.vp = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.vp, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE5clearEv.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905 ; 4 uses
  %i.vq = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i203 = icmp eq i64 %i.vq, 0         ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vn, i64 14
  %.val.i.i.i.i.i204 = load i8, ptr %i.vr, align 1, !tbaa !61
  %i.vs = and i8 %.val.i.i.i.i.i204, 15
  %i.vt = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.vt, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i.i.i.i203, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.da
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.dc

bb.db:                                            ; preds = %.preheader.i.i.i.i
  %i.vu = load ptr, ptr %13, align 8, !tbaa !1103 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 14
  store i8 %i.vs, ptr %i.vv, align 2, !tbaa !1129
  br label %bb.dc

.preheader.i.i.i.i:                               ; preds = %bb.da, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.vy, %.preheader.i.i.i.i ], [ 0, %bb.da ] ; 2 uses
  %i.vw = load ptr, ptr %13, align 8, !tbaa !1103
  %i.vx = getelementptr inbounds nuw [192 x i8], ptr %i.vw, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.vx, i8 0, i64 16, i1 false)
  %i.vy = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905
  %i.vz = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.vy, %i.vz
  %i.wa = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.wa, label %.preheader.i.i.i.i, label %bb.db, !llvm.loop !1133

bb.dc:                                            ; preds = %bb.db, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.vz, %bb.db ] ; 2 uses
  %i.wb = phi ptr [ %i.vn, %._crit_edge.i.i.i.i ], [ %i.vu, %bb.db ]
  store i64 0, ptr %i.jr, align 8, !tbaa !43
  store i64 %.pre-phi.i.i.i.i, ptr %i.jo, align 8, !tbaa !905
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cz
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.dc ], [ %.val23.i.i.i.i, %bb.cz ] ; 2 uses
  %i.wc = phi ptr [ %i.wb, %bb.dc ], [ %i.vn, %bb.cz ] ; 2 uses
  br i1 %.not.i.i.i.i203, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE5clearEv.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wd = icmp eq i64 %.val21.i.i.i.i, 0
  br i1 %i.wd, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.we = getelementptr i8, ptr %i.wc, i64 14
  %.val18.i.i.i.i = load i8, ptr %i.we, align 1, !tbaa !61
  %i.wf = and i8 %.val18.i.i.i.i, 15
  %narrow.i.i.i.i = mul nuw i8 %i.wf, 12
  %i.wg = zext i8 %narrow.i.i.i.i to i64
  %i.wh = add nuw nsw i64 %i.wg, 16
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.wi = shl i64 192, %.val21.i.i.i.i
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i.i = phi i64 [ %i.wh, %bb.df ], [ %i.wi, %bb.dg ]
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !1103
  store i64 0, ptr %i.jo, align 8, !tbaa !905
  call void @_ZdlPvm(ptr noundef nonnull %i.wc, i64 noundef %.0.i.i.i.i.i) #39
  br label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE5clearEv.exit

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE5clearEv.exit: ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, %bb.dd, %bb.dh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv407
  store i32 %.0, ptr %i.wj, align 4, !tbaa !3
  %i.wk = add nsw i32 %.0, %.0314367
  br label %bb.di

bb.di:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE5clearEv.exit, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit, %.critedge, %bb.bb
  %.1 = phi i32 [ %.0314367, %bb.bb ], [ %i.wk, %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE5clearEv.exit ], [ %i.mp, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit ], [ %.0314367, %.critedge ] ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %i.wl = load i32, ptr %i.n, align 8, !tbaa !162
  %i.wm = sext i32 %i.wl to i64
  %i.wn = icmp slt i64 %indvars.iv.next408, %i.wm
  br i1 %i.wn, label %bb.az, label %._crit_edge372, !llvm.loop !1134

.loopexit318:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp:                               ; preds = %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.dj:                                            ; preds = %._crit_edge372
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %i.wo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wp = load <2 x ptr>, ptr %4, align 16, !tbaa !27, !noalias !1138
  store <2 x ptr> %i.wp, ptr %14, align 16, !tbaa !27, !alias.scope !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !1108
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !47
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !1139
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ws, i32 noundef %.0314.lcssa, ptr noundef %i.wt)
          to label %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206 unwind label %bb.do

_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206: ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %i.wu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.wv = load <2 x ptr>, ptr %3, align 16, !tbaa !27, !noalias !1145
  store <2 x ptr> %i.wv, ptr %15, align 16, !tbaa !27, !alias.scope !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !1139
  %i.ww = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %.not378 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %.sroa.0.0 ; 2 uses
  br i1 %.not378, label %._crit_edge375, label %bb.dk

bb.dk:                                            ; preds = %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  %i.wx = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.wy = sub i64 %i.wx, %i.ww                    ; 2 uses
  %i.wz = sdiv exact i64 %i.wy, 24
  %i.xa = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.xc = load ptr, ptr %14, align 16, !tbaa !47  ; 2 uses
  %i.xd = load ptr, ptr %i.hy, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.xe = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !895
  %i.xh = ptrtoint ptr %i.xg to i64
  %i.xi = ptrtoint ptr %i.xe to i64
  %i.xj = sub i64 %i.xh, %i.xi
  store ptr %i.xe, ptr %16, align 8, !tbaa !233
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xj
  store ptr %i.xk, ptr %i.xa, align 8, !tbaa !236
  %i.xl = load ptr, ptr %i.xc, align 8, !tbaa !50
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 216
  %i.xn = load ptr, ptr %i.xm, align 8
  invoke void %i.xn(ptr noundef nonnull align 8 dereferenceable(94) %i.xc, ptr noundef %i.xd, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.dl unwind label %.loopexit.split-lp416

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %i.xo = load ptr, ptr %15, align 16, !tbaa !47  ; 2 uses
  %i.xp = load ptr, ptr %i.wq, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.xq = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.xr = load ptr, ptr %i.xf, align 8, !tbaa !895
  %i.xs = ptrtoint ptr %i.xr to i64
  %i.xt = ptrtoint ptr %i.xq to i64
  %i.xu = sub i64 %i.xs, %i.xt
  store ptr %i.xq, ptr %17, align 8, !tbaa !233
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xu
  store ptr %i.xv, ptr %i.xb, align 8, !tbaa !236
  %i.xw = load ptr, ptr %i.xo, align 8, !tbaa !50
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 216
  %i.xy = load ptr, ptr %i.xx, align 8
  invoke void %i.xy(ptr noundef nonnull align 8 dereferenceable(94) %i.xo, ptr noundef %i.xp, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.dm unwind label %.loopexit.split-lp421

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  %exitcond413.peel.not = icmp eq i64 %i.wy, 24
  br i1 %exitcond413.peel.not, label %._crit_edge375, label %.peel.next

._crit_edge375:                                   ; preds = %bb.dq, %bb.dm, %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.xz = load ptr, ptr %i.p, align 8, !tbaa !110
  store ptr %i.xz, ptr %i.a, align 8, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.ya = load i32, ptr %i.n, align 8, !tbaa !162
  store i32 %i.ya, ptr %i.b, align 4, !tbaa !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  store ptr null, ptr %0, align 8, !tbaa !490, !alias.scope !1146
  %i.yb = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #42
          to label %.noexc207 unwind label %bb.ex ; 6 uses

.noexc207:                                        ; preds = %._crit_edge375
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !559 ; 2 uses
  %.not4.i.i.i259 = icmp eq ptr %i.aew, %i.aey
  br i1 %.not4.i.i.i259, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269, label %.lr.ph.i.i.i260

.lr.ph.i.i.i260:                                  ; preds = %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265
  %.05.i.i.i261 = phi ptr [ %i.afn, %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265 ], [ %i.aew, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258 ] ; 5 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 96
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i262 = icmp eq ptr %i.afa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i262, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i260
  %i.afb = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 112
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !89
  %i.afd = ptrtoint ptr %i.afc to i64
  %i.afe = ptrtoint ptr %i.afa to i64
  %i.aff = sub i64 %i.afd, %i.afe
  call void @_ZdlPvm(ptr noundef nonnull %i.afa, i64 noundef %i.aff) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263:     ; preds = %bb.fk, %.lr.ph.i.i.i260
  %i.afg = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 72
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !219 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i264 = icmp eq ptr %i.afh, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i264, label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263
  %i.afi = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 88
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !220
  %i.afk = ptrtoint ptr %i.afj to i64
  %i.afl = ptrtoint ptr %i.afh to i64
  %i.afm = sub i64 %i.afk, %i.afl
  call void @_ZdlPvm(ptr noundef nonnull %i.afh, i64 noundef %i.afm) #40
  br label %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265

_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265: ; preds = %bb.fl, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i263
  %i.afn = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 120 ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.afn, %i.aey
  br i1 %.not.i.i.i266, label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267, label %.lr.ph.i.i.i260, !llvm.loop !561

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267: ; preds = %_ZSt8_DestroyIN8facebook5velox13DecodedVectorEEvPT_.exit.i.i.i265
  %.pr.i268 = load ptr, ptr %12, align 8, !tbaa !557
  br label %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269

_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258
  %i.afo = phi ptr [ %.pr.i268, %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i267 ], [ %i.aew, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit258 ] ; 3 uses
  %.not.i.i1.i270 = icmp eq ptr %i.afo, null
  br i1 %.not.i.i1.i270, label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271, label %bb.fm

bb.fm:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269
  %i.afp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !560
  %i.afr = ptrtoint ptr %i.afq to i64
  %i.afs = ptrtoint ptr %i.afo to i64
  %i.aft = sub i64 %i.afr, %i.afs
  call void @_ZdlPvm(ptr noundef nonnull %i.afo, i64 noundef %i.aft) #40
  br label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271

_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271: ; preds = %_ZSt8_DestroyIPN8facebook5velox13DecodedVectorES2_EvT_S4_RSaIT0_E.exit.i269, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271, %bb.an
  %.pn132.pn.pn = phi { ptr, i32 } [ %.pn132.pn, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EED2Ev.exit271 ], [ %i.iq, %bb.an ] ; 3 uses
  %i.afu = load ptr, ptr %11, align 8, !tbaa !109 ; 7 uses
  %.not.i272 = icmp eq ptr %i.afu, null
  br i1 %.not.i272, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 40
  %i.afw = atomicrmw sub ptr %i.afv, i32 1 acq_rel, align 4
  %i.afx = icmp eq i32 %i.afw, 1
  br i1 %i.afx, label %.sink.split.i.i273, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277

.sink.split.i.i273:                               ; preds = %bb.fo
  %i.afy = load ptr, ptr %i.afu, align 8, !tbaa !50
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 64
  %i.aga = load ptr, ptr %i.afz, align 8
  invoke void %i.aga(ptr noundef nonnull align 8 dereferenceable(64) %i.afu)
          to label %.noexc.i274 unwind label %bb.fp, !inline_history !124

.noexc.i274:                                      ; preds = %.sink.split.i.i273
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !125
  %.not.i.i275 = icmp eq ptr %i.agc, null
  %i.agd = load ptr, ptr %i.afu, align 8, !tbaa !50
  %..i.i276 = select i1 %.not.i.i275, i64 8, i64 48
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 %..i.i276
  %i.agf = load ptr, ptr %i.age, align 8
  invoke void %i.agf(ptr noundef nonnull align 8 dereferenceable(64) %i.afu)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277 unwind label %bb.fp, !inline_history !124

bb.fp:                                            ; preds = %.noexc.i274, %.sink.split.i.i273
  %i.agg = landingpad { ptr, i32 }
          catch ptr null
  %i.agh = extractvalue { ptr, i32 } %i.agg, 0
  call void @__clang_call_terminate(ptr %i.agh) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277: ; preds = %.noexc.i274, %bb.fo, %bb.fn, %bb.am
  %.pn132.pn.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.am ], [ %.pn132.pn.pn, %bb.fn ], [ %.pn132.pn.pn, %bb.fo ], [ %.pn132.pn.pn, %.noexc.i274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.fq

bb.fq:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277, %bb.al
  %.pn132.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit277 ], [ %i.io, %bb.al ] ; 3 uses
  %i.agi = load ptr, ptr %10, align 8, !tbaa !109 ; 7 uses
  %.not.i278 = icmp eq ptr %i.agi, null
  br i1 %.not.i278, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 40
  %i.agk = atomicrmw sub ptr %i.agj, i32 1 acq_rel, align 4
  %i.agl = icmp eq i32 %i.agk, 1
  br i1 %i.agl, label %.sink.split.i.i279, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283

.sink.split.i.i279:                               ; preds = %bb.fr
  %i.agm = load ptr, ptr %i.agi, align 8, !tbaa !50
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 64
  %i.ago = load ptr, ptr %i.agn, align 8
  invoke void %i.ago(ptr noundef nonnull align 8 dereferenceable(64) %i.agi)
          to label %.noexc.i280 unwind label %bb.fs, !inline_history !124

.noexc.i280:                                      ; preds = %.sink.split.i.i279
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !125
  %.not.i.i281 = icmp eq ptr %i.agq, null
  %i.agr = load ptr, ptr %i.agi, align 8, !tbaa !50
  %..i.i282 = select i1 %.not.i.i281, i64 8, i64 48
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 %..i.i282
  %i.agt = load ptr, ptr %i.ags, align 8
  invoke void %i.agt(ptr noundef nonnull align 8 dereferenceable(64) %i.agi)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283 unwind label %bb.fs, !inline_history !124

bb.fs:                                            ; preds = %.noexc.i280, %.sink.split.i.i279
  %i.agu = landingpad { ptr, i32 }
          catch ptr null
  %i.agv = extractvalue { ptr, i32 } %i.agu, 0
  call void @__clang_call_terminate(ptr %i.agv) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283: ; preds = %.noexc.i280, %bb.fr, %bb.fq, %bb.ak
  %.pn132.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.in, %bb.ak ], [ %.pn132.pn.pn.pn.pn, %bb.fq ], [ %.pn132.pn.pn.pn.pn, %bb.fr ], [ %.pn132.pn.pn.pn.pn, %.noexc.i280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.ft

bb.ft:                                            ; preds = %.loopexit324, %.loopexit.split-lp325, %bb.o, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283
  %.pn141.pn = phi { ptr, i32 } [ %.pn132.pn.pn.pn.pn.pn, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit283 ], [ %i.bp, %bb.o ], [ %lpad.loopexit326, %.loopexit324 ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp325 ]
  %i.agw = load ptr, ptr %8, align 8, !tbaa !109  ; 7 uses
  %.not.i284 = icmp eq ptr %i.agw, null
  br i1 %.not.i284, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 40
  %i.agy = atomicrmw sub ptr %i.agx, i32 1 acq_rel, align 4
  %i.agz = icmp eq i32 %i.agy, 1
  br i1 %i.agz, label %.sink.split.i.i285, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289

.sink.split.i.i285:                               ; preds = %bb.fu
  %i.aha = load ptr, ptr %i.agw, align 8, !tbaa !50
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 64
  %i.ahc = load ptr, ptr %i.ahb, align 8
  invoke void %i.ahc(ptr noundef nonnull align 8 dereferenceable(64) %i.agw)
          to label %.noexc.i286 unwind label %bb.fv, !inline_history !124

.noexc.i286:                                      ; preds = %.sink.split.i.i285
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !125
  %.not.i.i287 = icmp eq ptr %i.ahe, null
  %i.ahf = load ptr, ptr %i.agw, align 8, !tbaa !50
  %..i.i288 = select i1 %.not.i.i287, i64 8, i64 48
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %..i.i288
  %i.ahh = load ptr, ptr %i.ahg, align 8
  invoke void %i.ahh(ptr noundef nonnull align 8 dereferenceable(64) %i.agw)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289 unwind label %bb.fv, !inline_history !124

bb.fv:                                            ; preds = %.noexc.i286, %.sink.split.i.i285
  %i.ahi = landingpad { ptr, i32 }
          catch ptr null
  %i.ahj = extractvalue { ptr, i32 } %i.ahi, 0
  call void @__clang_call_terminate(ptr %i.ahj) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit289: ; preds = %bb.ft, %bb.fu, %.noexc.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  resume { ptr, i32 } %.pn141.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.170") align 8 %0, ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.4", align 16 ; 4 uses
  %5 = alloca %"class.std::optional", align 4     ; 5 uses
  %6 = alloca %"class.std::optional.229", align 1 ; 5 uses
  %7 = alloca %"class.std::optional", align 4     ; 5 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 13 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::vector.179", align 8  ; 19 uses
  %13 = alloca %"class.facebook::velox::(anonymous namespace)::UpdateMapRow.501", align 8 ; 19 uses
  %14 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %15 = alloca %"class.std::shared_ptr.4", align 16 ; 9 uses
  %16 = alloca %"class.folly::Range", align 8     ; 10 uses
  %17 = alloca %"class.folly::Range", align 8     ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !109
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = atomicrmw add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !533    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !536  ; 2 uses
  %.not349 = icmp eq ptr %i.g, %i.i
  br i1 %.not349, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110
  %i.r = sext i32 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !1150
  store i32 0, ptr %7, align 4, !tbaa !61, !noalias !1150
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.s, align 4, !tbaa !111, !noalias !1150
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %10, i64 noundef %i.r, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.ak

bb.c:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit
  %.0350 = phi ptr [ %i.g, %.lr.ph ], [ %i.gg, %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit ] ; 5 uses
  %i.t = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0350, ptr noundef null)
          to label %bb.d unwind label %.loopexit323

bb.d:                                             ; preds = %bb.c
  %.not139 = icmp eq ptr %i.t, null
  br i1 %.not139, label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, label %bb.e

.loopexit323:                                     ; preds = %bb.c, %bb.l, %bb.n, %bb.q, %bb.v
  %lpad.loopexit325 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.loopexit.split-lp324:                            ; preds = %.invoke
  %lpad.loopexit.split-lp326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %8, align 8, !tbaa !109    ; 3 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.x = load i32, ptr %i.j, align 8, !tbaa !162
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.z = sext i32 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !1153
  store i8 -1, ptr %6, align 1, !tbaa !61, !noalias !1153
  store i8 1, ptr %i.l, align 1, !tbaa !356, !noalias !1153
  %i.aa = add nsw i64 %i.z, 7
  %i.ab = lshr i64 %i.aa, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.ab, ptr noundef %i.y, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !1153
  %i.ac = load ptr, ptr %9, align 8, !tbaa !109
  store ptr null, ptr %9, align 8, !tbaa !109
  %i.ad = load ptr, ptr %8, align 8, !tbaa !109   ; 7 uses
  store ptr %i.ac, ptr %8, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %.noexc.i.i unwind label %bb.i, !inline_history !124

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.al, null
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !50
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %..i.i.i
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.i, !inline_history !124

bb.i:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.h, %.noexc.i.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !109    ; 7 uses
  %.not.i144 = icmp eq ptr %.pr, null
  br i1 %.not.i144, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.as = atomicrmw sub ptr %i.ar, i32 1 acq_rel, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.au = load ptr, ptr %.pr, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !124

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !125
  %.not.i.i145 = icmp eq ptr %i.ay, null
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !50
  %..i.i = select i1 %.not.i.i145, i64 8, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %..i.i
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !124

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.g, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !29  ; 6 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %.not140 = icmp eq ptr %i.be, null
  br i1 %.not140, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.bg = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %.0350, ptr noundef null)
          to label %bb.m unwind label %.loopexit323

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !112
  %i.bk = and i8 %i.bj, 2
  %.not.i146 = icmp eq i8 %i.bk, 0
  br i1 %.not.i146, label %bb.n, label %.invoke, !prof !20

.invoke:                                          ; preds = %bb.u, %bb.p, %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont unwind label %.loopexit.split-lp324

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !117
  %i.bn = load i32, ptr %i.j, align 8, !tbaa !162
  %i.bo = sext i32 %i.bn to i64
  invoke void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %i.bg, i64 noundef 0, ptr noundef %i.bm, i64 noundef 0, i64 noundef %i.bo)
          to label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit unwind label %.loopexit323

bb.o:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.fk
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  br label %bb.fh

bb.am:                                            ; preds = %bb.ab
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit276

bb.an:                                            ; preds = %bb.ad
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %_ZNSt12_Vector_baseIN8facebook5velox13DecodedVectorESaIS2_EE11_M_allocateEm.exit.i, %bb.af
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit257

.lr.ph353:                                        ; preds = %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183
  %.0111352 = phi ptr [ %i.jn, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 ], [ %i.hz, %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0111352, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !211
  %i.iu = invoke noundef ptr @_ZNK8facebook5velox10BaseVector9asCheckedINS0_9MapVectorEEEPKT_v(ptr noundef nonnull align 8 dereferenceable(94) %i.it)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %.lr.ph353
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 128 ; 2 uses
  %i.iw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !7  ; 2 uses
  %i.iz = load ptr, ptr %i.iv, align 8, !tbaa !47
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !7
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = invoke noundef zeroext i1 %i.je(ptr noundef nonnull align 8 dereferenceable(18) %i.iy, ptr noundef nonnull align 8 dereferenceable(18) %i.jb)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.jf, label %bb.av, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs) #38
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ax, %bb.aw, %bb.ap, %.lr.ph353
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit257

bb.au:                                            ; preds = %bb.ar
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit257

bb.av:                                            ; preds = %bb.aq
  %i.ji = load ptr, ptr %i.iv, align 8, !tbaa !47 ; 2 uses
  %i.jj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 3 uses
  %i.jk = load ptr, ptr %i.hf, align 8, !tbaa !560
  %.not.i179 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not.i179, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji, i1 noundef zeroext true)
          to label %.noexc181 unwind label %bb.at

.noexc181:                                        ; preds = %bb.aw
  %i.jl = load ptr, ptr %i.hx, align 8, !tbaa !559
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 120
  store ptr %i.jm, ptr %i.hx, align 8, !tbaa !559
  br label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE17_M_realloc_insertIJRNS1_10BaseVectorEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.jj, ptr noundef nonnull align 8 dereferenceable(94) %i.ji)
          to label %_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183 unwind label %bb.at

_ZNSt6vectorIN8facebook5velox13DecodedVectorESaIS2_EE12emplace_backIJRNS1_10BaseVectorEEEERS2_DpOT_.exit183: ; preds = %bb.ax, %.noexc181
  %i.jn = getelementptr inbounds nuw i8, ptr %.0111352, i64 120 ; 2 uses
  %.not120 = icmp eq ptr %i.jn, %i.ia
  br i1 %.not120, label %._crit_edge354.loopexit, label %.lr.ph353

_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit: ; preds = %.noexc178, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.sroa.0.0 = phi ptr [ %i.ik, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 19 uses
  %.sink.i = phi i64 [ %i.im, %.noexc178 ], [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc178 ], [ null, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !1172
  %i.jo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  %i.jp = load i32, ptr %i.n, align 8, !tbaa !162
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph370, label %._crit_edge371

.lr.ph370:                                        ; preds = %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  br label %bb.az

._crit_edge371:                                   ; preds = %bb.df, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit
  %.0313.lcssa = phi i32 [ 0, %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EEC2EmRKS6_.exit ], [ %.1, %bb.df ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.jw = load ptr, ptr %i.hy, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !1177
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i32 noundef %.0313.lcssa, ptr noundef %i.jy)
          to label %bb.dg unwind label %bb.dk

bb.ay:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.aj
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IN8facebook5velox10BaseVector9CopyRangeESaIS3_EESaIS5_EED2Ev.exit257

bb.az:                                            ; preds = %.lr.ph370, %bb.df
  %indvars.iv406 = phi i64 [ 0, %.lr.ph370 ], [ %indvars.iv.next407, %bb.df ] ; 13 uses
  %.0313366 = phi i32 [ 0, %.lr.ph370 ], [ %.1, %bb.df ] ; 8 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv406
  store i32 %.0313366, ptr %i.ka, align 4, !tbaa !3
  %i.kb = load ptr, ptr %8, align 8, !tbaa !109   ; 2 uses
  %.not316 = icmp eq ptr %i.kb, null
  br i1 %.not316, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !117
  %i.ke = lshr i64 %indvars.iv406, 6
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !43
  %i.kh = and i64 %indvars.iv406, 63
  %i.ki = shl nuw i64 1, %i.kh
  %i.kj = and i64 %i.kg, %i.ki
  %.not.i185 = icmp eq i64 %i.kj, 0
  br i1 %.not.i185, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv406
  store i32 0, ptr %i.kk, align 4, !tbaa !3
  br label %bb.df

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.kl = load ptr, ptr %2, align 8, !tbaa !533   ; 2 uses
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !536 ; 2 uses
  %.not125.not355 = icmp eq ptr %i.kl, %i.km
  br i1 %.not125.not355, label %.critedge, label %.lr.ph359

.lr.ph359:                                        ; preds = %bb.bc
  %i.kn = trunc nuw nsw i64 %indvars.iv406 to i32 ; 3 uses
  br label %bb.be

bb.bd:                                            ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %.0117356, i64 120 ; 2 uses
  %.not125.not = icmp eq ptr %i.ko, %i.km
  br i1 %.not125.not, label %.critedge, label %bb.be

bb.be:                                            ; preds = %.lr.ph359, %bb.bd
  %.0117356 = phi ptr [ %i.kl, %.lr.ph359 ], [ %i.ko, %bb.bd ] ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0117356, i64 58
  %i.kq = load i8, ptr %i.kp, align 2, !tbaa !166, !range !147, !noundef !148
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ks = getelementptr inbounds nuw i8, ptr %.0117356, i64 59
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !256, !range !147, !noundef !148
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kv = getelementptr inbounds nuw i8, ptr %.0117356, i64 64
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.bh:                                            ; preds = %bb.bf
  %i.kx = getelementptr inbounds nuw i8, ptr %.0117356, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !203
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv406
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.be, %bb.bg, %bb.bh
  %.0.i = phi i32 [ %i.la, %bb.bh ], [ %i.kw, %bb.bg ], [ %i.kn, %bb.be ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.0117356, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !211
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !304
  %i.lf = sext i32 %.0.i to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !3
  %i.li = icmp slt i32 %i.lh, 1
  br i1 %i.li, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.lj = load ptr, ptr %i.hx, align 8, !tbaa !559 ; 2 uses
  %i.lk = load ptr, ptr %12, align 8, !tbaa !557  ; 3 uses
  %.not376 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not376, label %._crit_edge365, label %.lr.ph364

.critedge:                                        ; preds = %bb.bd, %bb.bc
  %i.ll = load ptr, ptr %i.js, align 8, !tbaa !304 ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv406
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3  ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv406
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !3
  %i.lp = icmp sgt i32 %i.ln, 0
  br i1 %i.lp, label %bb.bi, label %bb.df

bb.bi:                                            ; preds = %.critedge
  %i.lq = load ptr, ptr %i.jt, align 8, !tbaa !306
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv406
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3  ; 2 uses
  %i.lt = load ptr, ptr %i.ju, align 8, !tbaa !895 ; 6 uses
  %i.lu = load ptr, ptr %i.jv, align 8, !tbaa !897
  %.not.i.i186 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not.i.i186, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store i32 %.0313366, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 %i.ln, ptr %.sroa.7293.0..sroa_idx, align 4, !tbaa !3
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store ptr %i.lv, ptr %i.ju, align 8, !tbaa !895
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.lw = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 4 uses
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.bl, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc188 unwind label %.loopexit.split-lp319

.noexc188:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.mb = sdiv exact i64 %i.lz, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 768614336404564650)
  %i.mf = select i1 %i.md, i64 768614336404564650, i64 %i.me ; 3 uses
  %.not.i.i.i.i187 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i187)
  %i.mg = mul nuw nsw i64 %i.mf, 12
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #42
          to label %.noexc189 unwind label %.loopexit318 ; 4 uses

.noexc189:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 4 uses
  store i32 %i.ls, ptr %i.mi, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 %.0313366, ptr %.sroa.6.0..sroa_idx291, align 4, !tbaa !3
  %.sroa.7293.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store i32 %i.ln, ptr %.sroa.7293.0..sroa_idx294, align 4, !tbaa !3
  %i.mj = icmp sgt i64 %i.lz, 0
  br i1 %i.mj, label %bb.bm, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.bm:                                            ; preds = %.noexc189
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr align 4 %i.lw, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.bm, %.noexc189
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %.not.i17.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #40
  %.pre430.pre = load ptr, ptr %i.js, align 8, !tbaa !304
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %.pre430 = phi ptr [ %.pre430.pre, %bb.bn ], [ %i.ll, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i ]
  store ptr %i.mh, ptr %.sroa.0.0, align 8, !tbaa !898
  store ptr %i.mk, ptr %i.ju, align 8, !tbaa !895
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %i.mh, i64 %i.mf
  store ptr %i.ml, ptr %i.jv, align 8, !tbaa !897
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bj
  %i.mm = phi ptr [ %.pre430, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ll, %bb.bj ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv406
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !3
  %i.mp = add nsw i32 %i.mo, %.0313366
  br label %bb.df

.loopexit318:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit320 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

.loopexit.split-lp319:                            ; preds = %bb.bl
  %lpad.loopexit.split-lp321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

._crit_edge365:                                   ; preds = %._crit_edge362, %.preheader
  %.val = load i64, ptr %i.jr, align 8, !tbaa !1180 ; 2 uses
  %i.mq = and i64 %.val, -16                      ; 2 uses
  %.not9.i = icmp eq i64 %i.mq, 0
  br i1 %.not9.i, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge365
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = and i64 %.val, 15
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, %.lr.ph.i
  %i.mt = phi i32 [ 0, %.lr.ph.i ], [ %i.nu, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 2 uses
  %.sroa.8.011.i = phi i64 [ %i.ms, %.lr.ph.i ], [ %.sroa.8.011.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %.sroa.01.010.i = phi ptr [ %i.mr, %.lr.ph.i ], [ %.sroa.01.010.i.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge ] ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.mu, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %i.mv = shl i64 %.sroa.0.0.copyload.i, 24
  %i.mw = ashr i64 %i.mv, 56
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.mw ; 4 uses
  %i.my = add nsw i32 %i.mt, %.0313366            ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !895 ; 6 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !897
  %.not.i.i.i.i191 = icmp eq ptr %i.na, %i.nc
  br i1 %.not.i.i.i.i191, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.na, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store i32 %i.my, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !3
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  store ptr %i.nd, ptr %i.mz, align 8, !tbaa !895
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

bb.bp:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i
  %i.ne = load ptr, ptr %i.mx, align 8, !tbaa !898 ; 4 uses
  %i.nf = ptrtoint ptr %i.na to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng                    ; 6 uses
  %i.ni = icmp eq i64 %i.nh, 9223372036854775800
  br i1 %i.ni, label %bb.bq, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #38
          to label %.noexc194 unwind label %.loopexit.split-lp

.noexc194:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bp
  %i.nj = sdiv exact i64 %i.nh, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nj, i64 1)
  %i.nk = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.nj ; 2 uses
  %i.nl = icmp ult i64 %i.nk, %i.nj
  %i.nm = call i64 @llvm.umin.i64(i64 %i.nk, i64 768614336404564650)
  %i.nn = select i1 %i.nl, i64 768614336404564650, i64 %i.nm ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.nn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.no = mul nuw nsw i64 %i.nn, 12
  %i.np = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.no) #42
          to label %.noexc195 unwind label %.loopexit317 ; 4 uses

.noexc195:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 %i.nh ; 4 uses
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.nq, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  store i32 %i.my, ptr %.sroa.5.0..sroa_idx2.i.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx4.i.i, align 4, !tbaa !3
  %i.nr = icmp sgt i64 %i.nh, 0
  br i1 %i.nr, label %bb.br, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.br:                                            ; preds = %.noexc195
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.np, ptr align 4 %i.ne, i64 %i.nh, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.br, %.noexc195
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ne, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ne, i64 noundef %i.nh) #40
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bs, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.np, ptr %i.mx, align 8, !tbaa !898
  store ptr %i.ns, ptr %i.mz, align 8, !tbaa !895
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %i.np, i64 %i.nn
  store ptr %i.nt, ptr %i.nb, align 8, !tbaa !897
  br label %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i

_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.bo
  %i.nu = add nuw nsw i32 %i.mt, 1                ; 2 uses
  %i.nv = getelementptr inbounds i8, ptr %.sroa.01.010.i, i64 -16
  %.neg.i.i.i.i = mul nsw i64 %.sroa.8.011.i, -16
  %i.nw = getelementptr inbounds i8, ptr %i.nv, i64 %.neg.i.i.i.i ; 2 uses
  %.not.i9.i.i = icmp eq i64 %.sroa.8.011.i, 0
  br i1 %.not.i9.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.bt, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i
  br label %.critedge.i.i.i

bb.bt:                                            ; preds = %thread-pre-split.i.i
  %.not.i.i.i193 = icmp eq i64 %i.nz, 0
  br i1 %.not.i.i.i193, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i, %bb.bt
  %i.nx = phi i64 [ %i.nz, %bb.bt ], [ %.sroa.8.011.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.ny = phi ptr [ %i.oa, %bb.bt ], [ %.sroa.01.010.i, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ]
  %i.nz = add nsw i64 %i.nx, -1                   ; 4 uses
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 -16 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.nz
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !61
  %.not.i.i192 = icmp eq i8 %i.oc, 0
  br i1 %.not.i.i192, label %bb.bt, label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge, !prof !13, !llvm.loop !1181

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %bb.bu
  %.017.i.i.i = phi ptr [ %i.of, %bb.bu ], [ %i.nw, %.critedge.i.i.i.preheader ] ; 4 uses
  %i.od = getelementptr i8, ptr %.017.i.i.i, i64 14
  %.017.i.val.i.i = load i8, ptr %i.od, align 1, !tbaa !61
  %i.oe = and i8 %.017.i.val.i.i, 15
  %.not4.i.i = icmp eq i8 %i.oe, 0
  br i1 %.not4.i.i, label %bb.bu, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, !prof !20

bb.bu:                                            ; preds = %.critedge.i.i.i
  %i.of = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -256 ; 3 uses
  %.val25.i.i = load <16 x i8>, ptr %i.of, align 16, !tbaa !61
  %i.og = icmp slt <16 x i8> %.val25.i.i, zeroinitializer
  %i.oh = bitcast <16 x i1> %i.og to i16
  %i.oi = and i16 %i.oh, 16383                    ; 2 uses
  %i.oj = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.oj, i32 0, i32 3, i32 1)
  %.not6.i.i = icmp eq i16 %i.oi, 0
  br i1 %.not6.i.i, label %.critedge.i.i.i, label %bb.bv, !prof !13, !llvm.loop !1182

bb.bv:                                            ; preds = %bb.bu
  %i.ok = zext nneg i16 %i.oi to i32
  %i.ol = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ok, i1 true)
  %i.om = xor i32 %i.ol, 31
  %i.on = zext nneg i32 %i.om to i64              ; 2 uses
  %i.oo = icmp ne ptr %i.of, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.oo)
  %i.op = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -240
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %i.op, i64 %i.on
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i.backedge: ; preds = %thread-pre-split.i.i, %bb.bv
  %.sroa.8.011.i.be = phi i64 [ %i.on, %bb.bv ], [ %i.nz, %thread-pre-split.i.i ]
  %.sroa.01.010.i.be = phi ptr [ %i.oq, %bb.bv ], [ %i.oa, %thread-pre-split.i.i ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEEppEv.exit.i

.lr.ph364:                                        ; preds = %.preheader, %._crit_edge362
  %.pre427 = phi ptr [ %.pre427433, %._crit_edge362 ], [ %i.lk, %.preheader ] ; 3 uses
  %i.or = phi ptr [ %i.py, %._crit_edge362 ], [ %i.lk, %.preheader ]
  %i.os = phi ptr [ %i.pz, %._crit_edge362 ], [ %i.lj, %.preheader ]
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %._crit_edge362 ], [ 0, %.preheader ] ; 5 uses
  %i.ot = icmp eq i64 %indvars.iv403, 0
  br i1 %i.ot, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph364
  %i.ou = load ptr, ptr %2, align 8, !tbaa !533
  %i.ov = getelementptr [120 x i8], ptr %i.ou, i64 %indvars.iv403 ; 5 uses
  %i.ow = getelementptr i8, ptr %i.ov, i64 -72
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !211 ; 3 uses
  %i.oy = getelementptr i8, ptr %i.ov, i64 -62
  %i.oz = load i8, ptr %i.oy, align 2, !tbaa !166, !range !147, !noundef !148
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pb = getelementptr i8, ptr %i.ov, i64 -61
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !256, !range !147, !noundef !148
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pe = getelementptr i8, ptr %i.ov, i64 -56
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

bb.bz:                                            ; preds = %bb.bx
  %i.pg = getelementptr i8, ptr %i.ov, i64 -112
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !203
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %indvars.iv406
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit197

_ZNK8facebook5velox13DecodedVector5indexEi.exit197: ; preds = %.lr.ph364, %bb.bz, %bb.by, %bb.bw
  %i.pk = phi ptr [ %i.ox, %bb.bz ], [ %i.ox, %bb.bw ], [ %i.ox, %bb.by ], [ %1, %.lr.ph364 ] ; 2 uses
  %i.pl = phi i32 [ %i.pj, %bb.bz ], [ %i.kn, %bb.bw ], [ %i.pf, %bb.by ], [ %i.kn, %.lr.ph364 ]
  %i.pm = sext i32 %i.pl to i64                   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 120
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !304
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.pm
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !3  ; 2 uses
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %.lr.ph361, label %._crit_edge362

.lr.ph361:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pk, i64 104
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !306
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pm
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3
  %i.pw = trunc i64 %indvars.iv403 to i8
  %i.px = sext i32 %i.pv to i64
  %wide.trip.count = zext nneg i32 %i.pq to i64
  br label %bb.ca

._crit_edge362.loopexit:                          ; preds = %.loopexit
  %.pre429 = load ptr, ptr %i.hx, align 8, !tbaa !559
  br label %._crit_edge362

._crit_edge362:                                   ; preds = %._crit_edge362.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197
  %.pre427433 = phi ptr [ %.pre427435, %._crit_edge362.loopexit ], [ %.pre427, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ]
  %i.py = phi ptr [ %20, %._crit_edge362.loopexit ], [ %i.or, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %i.pz = phi ptr [ %.pre429, %._crit_edge362.loopexit ], [ %i.os, %_ZNK8facebook5velox13DecodedVector5indexEi.exit197 ] ; 2 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.py to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = sdiv exact i64 %i.qc, 120
  %i.qe = icmp ugt i64 %i.qd, %indvars.iv.next404
  br i1 %i.qe, label %.lr.ph364, label %._crit_edge365, !llvm.loop !1183

bb.ca:                                            ; preds = %.lr.ph361, %.loopexit
  %.pre427434 = phi ptr [ %.pre427, %.lr.ph361 ], [ %.pre427435, %.loopexit ]
  %18 = phi ptr [ %.pre427, %.lr.ph361 ], [ %20, %.loopexit ] ; 2 uses
  %indvars.iv400 = phi i64 [ 0, %.lr.ph361 ], [ %indvars.iv.next401, %.loopexit ] ; 2 uses
  %19 = add nsw i64 %indvars.iv400, %i.px         ; 6 uses
  %i.qf = getelementptr inbounds nuw [120 x i8], ptr %18, i64 %indvars.iv403 ; 10 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !254 ; 4 uses
  %.not.i198 = icmp eq ptr %i.qh, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.qf, i64 58
  %.pre428.a = load i8, ptr %.phi.trans.insert, align 2, !tbaa !166, !range !147 ; 2 uses
  br i1 %.not.i198, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qi = trunc nuw i8 %.pre428.a to i1
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qf, i64 57
  %i.qk = load i8, ptr %i.qj, align 1, !range !147
  %i.ql = trunc nuw i8 %i.qk to i1
  %or.cond.i = select i1 %i.qi, i1 true, i1 %i.ql
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.qm = lshr i64 %19, 6
  %i.qn = and i64 %i.qm, 67108863
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %i.qn
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !43
  %i.qq = and i64 %19, 63
  %i.qr = shl nuw i64 1, %i.qq
  %i.qs = and i64 %i.qp, %i.qr
  %.not.i.i200 = icmp eq i64 %i.qs, 0
  br i1 %.not.i.i200, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !903

bb.cd:                                            ; preds = %bb.cb
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qf, i64 59
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !256, !range !147, !noundef !148
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !203
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %19
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !3
  %i.ra = zext i32 %i.qz to i64                   ; 2 uses
  %i.rb = lshr i64 %i.ra, 6
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %i.rb
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !43
  %i.re = and i64 %i.ra, 63
  %i.rf = shl nuw i64 1, %i.re
  %i.rg = and i64 %i.rf, %i.rd
  %.not.i7.i = icmp eq i64 %i.rg, 0
  br i1 %.not.i7.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.rh = load i64, ptr %i.qh, align 8, !tbaa !43
  %i.ri = and i64 %i.rh, 1
  %.not.i6.i = icmp eq i64 %i.ri, 0
  br i1 %.not.i6.i, label %bb.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !903

bb.cf:                                            ; preds = %bb.ce, %bb.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %bb.cr
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.ci:                                            ; preds = %bb.cf
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %bb.ce, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !904
  %i.rn = trunc nsw i64 %19 to i32
  br label %bb.cj

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.ca, %bb.cc
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !904 ; 2 uses
  %i.rq = trunc nuw i8 %.pre428.a to i1
  %i.rr = trunc nsw i64 %19 to i32                ; 3 uses
  br i1 %i.rq, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.rs = phi i32 [ %i.rn, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.rr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.rt = phi ptr [ %i.rm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.rp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qf, i64 59
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !256, !range !147, !noundef !148
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qf, i64 64
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !257
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !203
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %19
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i: ; preds = %bb.cl, %bb.ck, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.sd = phi i32 [ %i.rs, %bb.cl ], [ %i.rs, %bb.ck ], [ %i.rr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.se = phi ptr [ %i.rt, %bb.cl ], [ %i.rt, %bb.ck ], [ %i.rp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.sc, %bb.cl ], [ %i.ry, %bb.ck ], [ %i.rr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sf = sext i32 %.0.i.i.i to i64
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.se, i64 %i.sf
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !43 ; 4 uses
  %i.si = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.sh) ; 2 uses
  %i.sj = lshr i64 %i.si, 24
  %i.sk = or i64 %i.sj, 128                       ; 4 uses
  %i.sl = add i64 %i.si, %i.sh                    ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !1184 ; 3 uses
  %i.sm = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.sm, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !1172, !noalias !1184 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i
  %i.sn = shl nuw nsw i64 %i.sk, 1
  %i.so = or disjoint i64 %i.sn, 1
  %i.sp = trunc nuw i64 %i.sk to i8
  %i.sq = insertelement <16 x i8> poison, i8 %i.sp, i64 0
  %i.sr = shufflevector <16 x i8> %i.sq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ss = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.st = shl nuw i64 1, %i.ss
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %bb.cm
  %.0.i43.i.i.i.i.i = phi i64 [ %i.sl, %bb.cm ], [ %i.tm, %bb.cq ] ; 2 uses
  %.023.i42.i.i.i.i.i = phi i64 [ %i.st, %bb.cm ], [ %i.tl, %bb.cq ]
  %i.su = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i43.i.i.i.i.i, i64 range(i64 0, 256) %i.ss)
  %i.sv = getelementptr inbounds nuw [256 x i8], ptr %.pre.i.i.i.i.i, i64 %i.su ; 4 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.sx, i32 0, i32 3, i32 1), !noalias !1184
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.sv, align 16, !noalias !1184 ; 2 uses
  %i.sy = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.sr
  %i.sz = bitcast <16 x i1> %i.sy to i16
  %i.ta = and i16 %i.sz, 16383
  %i.tb = zext nneg i16 %i.ta to i32
  %i.tc = icmp ne ptr %i.sv, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.td = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.co, %bb.cn
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.tb, %bb.cn ], [ %i.tg, %bb.co ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.te = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.tf = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.tg = and i32 %i.tf, %.sroa.07.0.i.i.i.i.i
  %i.th = zext nneg i32 %i.te to i64
  call void @llvm.assume(i1 %i.tc)
  %i.ti = getelementptr inbounds nuw [16 x i8], ptr %i.sw, i64 %i.th ; 2 uses
  %.val38.i.i.i.i.i = load i64, ptr %i.ti, align 8, !tbaa !43, !noalias !1184
  %i.tj = icmp eq i64 %i.sh, %.val38.i.i.i.i.i
  br i1 %i.tj, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !20, !llvm.loop !1191

bb.cp:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tk = icmp eq i8 %i.td, 0
  br i1 %i.tk, label %.thread31.i.i.i.i.i, label %bb.cq, !prof !20

bb.cq:                                            ; preds = %bb.cp
  %i.tl = add i64 %.023.i42.i.i.i.i.i, -1         ; 2 uses
  %i.tm = add i64 %i.so, %.0.i43.i.i.i.i.i
  %.not.i.i.i.i.i.i201 = icmp eq i64 %i.tl, 0
  br i1 %.not.i.i.i.i.i.i201, label %.thread31.i.i.i.i.i, label %bb.cn, !llvm.loop !1192

.thread31.i.i.i.i.i:                              ; preds = %bb.cq, %bb.cp, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i ], [ %i.ss, %bb.cp ], [ %i.ss, %bb.cq ] ; 3 uses
  %i.tn = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.tn, align 1, !tbaa !61, !noalias !1184
  %i.to = and i8 %.val.i.i.i.i.i.i, 15
  %i.tp = zext nneg i8 %i.to to i64               ; 2 uses
  %i.tq = shl i64 %i.tp, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.sm, %i.tq
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.thread31.i.i.i.i.i
  %i.tr = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.sm, i64 noundef %i.tr, i64 noundef %i.tp, i64 noundef %i.tq)
          to label %.noexc202 unwind label %bb.ch

.noexc202:                                        ; preds = %bb.cr
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !1172, !noalias !1184
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !1184
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc202, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc202 ] ; 2 uses
  %i.ts = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc202 ] ; 3 uses
  %i.tt = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.sl, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.tu = getelementptr inbounds nuw [256 x i8], ptr %i.ts, i64 %i.tt ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.tu, align 16, !tbaa !61, !noalias !1184
  %i.tv = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.tw = bitcast <16 x i1> %i.tv to i16
  %i.tx = and i16 %i.tw, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.tx, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.ty = shl nuw nsw i64 %i.sk, 1
  %i.tz = or disjoint i64 %i.ty, 1
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cs
  %i.ua = phi i64 [ %i.tt, %bb.cs ], [ %i.ug, %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.sl, %bb.cs ], [ %i.uf, %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.ub = getelementptr inbounds nuw [256 x i8], ptr %i.ts, i64 %i.ua
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 15 ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !1193, !noalias !1184 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.ud, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ue = add i8 %i.ud, 1
  store i8 %i.ue, ptr %i.uc, align 1, !tbaa !1193, !noalias !1184
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %i.uf = add i64 %i.tz, %.030.i.i.i.i.i          ; 2 uses
  %i.ug = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.uf, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.uh = getelementptr inbounds nuw [256 x i8], ptr %i.ts, i64 %i.ug ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.uh, align 16, !noalias !1184 ; 2 uses
  %i.ui = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.uj = bitcast <16 x i1> %i.ui to i16
  %i.uk = and i16 %i.uj, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.uk, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.ct, label %bb.cv, !llvm.loop !1196

bb.cv:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.ul = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 14
  %i.un = add i8 %i.ul, 16
  store i8 %i.un, ptr %i.um, align 2, !tbaa !1197, !noalias !1184
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.tx, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.uk, %bb.cv ]
  %.1.i.i.i.i.i = phi ptr [ %i.tu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.uh, %bb.cv ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.uo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.up = zext nneg i16 %i.uo to i64              ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.up ; 2 uses
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !61, !noalias !1184
  %i.us = icmp eq i8 %i.ur, 0
  br i1 %i.us, label %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1184
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cw
  %i.ut = trunc nuw i64 %i.sk to i8
  store i8 %i.ut, ptr %i.uq, align 1, !tbaa !61, !noalias !1184
  %i.uu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.uv = getelementptr inbounds nuw [16 x i8], ptr %i.uu, i64 %i.up ; 4 uses
  %i.uw = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.uw)
  store i64 %i.sh, ptr %i.uv, align 8, !tbaa !1198, !noalias !1184
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store i64 0, ptr %i.ux, align 8, !noalias !1184
  %i.uy = ptrtoint ptr %i.uv to i64
  %i.uz = or i64 %i.uy, %i.up                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.jr, align 8, !tbaa !1180, !noalias !1184
  %i.va = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.uz
  %.pre426 = load ptr, ptr %12, align 8, !tbaa !557 ; 2 uses
  br i1 %i.va, label %bb.cy, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cy:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.uz, ptr %i.jr, align 8, !tbaa !43, !noalias !1184
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cy, %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905, !noalias !1184 ; 2 uses
  %i.vb = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.vc = add i64 %i.vb, 256
  %i.vd = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.ve = or disjoint i64 %i.vc, %i.vd
  store i64 %i.ve, ptr %i.jo, align 8, !tbaa !905, !noalias !1184
  br label %.loopexit

.loopexit:                                        ; preds = %bb.co, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre427435 = phi ptr [ %.pre426, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre427434, %bb.co ] ; 2 uses
  %20 = phi ptr [ %.pre426, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %18, %bb.co ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.uv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.ti, %bb.co ] ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i32 %i.sd, ptr %i.vf, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 12
  store i8 %i.pw, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !61
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next401, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge362.loopexit, label %bb.ca, !llvm.loop !1200

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge365
  %.0 = phi i32 [ 0, %._crit_edge365 ], [ %i.nu, %.critedge.i.i.i ] ; 2 uses
  %i.vg = load ptr, ptr %13, align 8, !tbaa !1172 ; 4 uses
  %i.vh = getelementptr i8, ptr %i.vg, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.vh, align 1, !tbaa !925
  %i.vi = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.vi, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE5clearEv.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905 ; 4 uses
  %i.vj = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i203 = icmp eq i64 %i.vj, 0         ; 2 uses
  %i.vk = getelementptr i8, ptr %i.vg, i64 14
  %.val.i.i.i.i.i204 = load i8, ptr %i.vk, align 1, !tbaa !61
  %i.vl = and i8 %.val.i.i.i.i.i204, 15
  %i.vm = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.vm, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i.i.i.i203, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.da
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.dc

bb.db:                                            ; preds = %.preheader.i.i.i.i
  %i.vn = load ptr, ptr %13, align 8, !tbaa !1172 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 14
  store i8 %i.vl, ptr %i.vo, align 2, !tbaa !1197
  br label %bb.dc

.preheader.i.i.i.i:                               ; preds = %bb.da, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.vr, %.preheader.i.i.i.i ], [ 0, %bb.da ] ; 2 uses
  %i.vp = load ptr, ptr %13, align 8, !tbaa !1172
  %i.vq = getelementptr inbounds nuw [256 x i8], ptr %i.vp, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.vq, i8 0, i64 16, i1 false)
  %i.vr = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.jo, align 8, !tbaa !905
  %i.vs = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.vr, %i.vs
  %i.vt = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.vt, label %.preheader.i.i.i.i, label %bb.db, !llvm.loop !1201

bb.dc:                                            ; preds = %bb.db, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.vs, %bb.db ] ; 2 uses
  %i.vu = phi ptr [ %i.vg, %._crit_edge.i.i.i.i ], [ %i.vn, %bb.db ]
  store i64 0, ptr %i.jr, align 8, !tbaa !43
  store i64 %.pre-phi.i.i.i.i, ptr %i.jo, align 8, !tbaa !905
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cz
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.dc ], [ %.val23.i.i.i.i, %bb.cz ] ; 2 uses
  %i.vv = phi ptr [ %i.vu, %bb.dc ], [ %i.vg, %bb.cz ] ; 2 uses
  br i1 %.not.i.i.i.i203, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE5clearEv.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.vw = getelementptr i8, ptr %i.vv, i64 14
  %.val18.i.i.i.i = load i8, ptr %i.vw, align 1, !tbaa !61
  %i.vx = icmp eq i64 %.val21.i.i.i.i, 0
  %i.vy = shl i8 %.val18.i.i.i.i, 4
  %i.vz = zext i8 %i.vy to i64
  %i.wa = add nuw nsw i64 %i.vz, 16
  %i.wb = shl i64 256, %.val21.i.i.i.i
  %.0.i.i.i.i.i = select i1 %i.vx, i64 %i.wa, i64 %i.wb
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %13, align 8, !tbaa !1172
  store i64 0, ptr %i.jo, align 8, !tbaa !905
  call void @_ZdlPvm(ptr noundef nonnull %i.vv, i64 noundef %.0.i.i.i.i.i) #39
  br label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE5clearEv.exit

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE5clearEv.exit: ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit, %bb.dd, %bb.de
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv406
  store i32 %.0, ptr %i.wc, align 4, !tbaa !3
  %i.wd = add nsw i32 %.0, %.0313366
  br label %bb.df

bb.df:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE5clearEv.exit, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit, %.critedge, %bb.bb
  %.1 = phi i32 [ %.0313366, %bb.bb ], [ %i.wd, %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE5clearEv.exit ], [ %i.mp, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE9push_backEOS3_.exit ], [ %.0313366, %.critedge ] ; 2 uses
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %i.we = load i32, ptr %i.n, align 8, !tbaa !162
  %i.wf = sext i32 %i.we to i64
  %i.wg = icmp slt i64 %indvars.iv.next407, %i.wf
  br i1 %i.wg, label %bb.az, label %._crit_edge371, !llvm.loop !1202

.loopexit317:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

.loopexit.split-lp:                               ; preds = %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.dg:                                            ; preds = %._crit_edge371
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.wh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wi = load <2 x ptr>, ptr %4, align 16, !tbaa !27, !noalias !1206
  store <2 x ptr> %i.wi, ptr %14, align 16, !tbaa !27, !alias.scope !1206
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !1177
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !47
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = load ptr, ptr %i.p, align 8, !tbaa !110
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !1207
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.wl, i32 noundef %.0313.lcssa, ptr noundef %i.wm)
          to label %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206 unwind label %bb.dl

_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206: ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  %i.wn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.wo = load <2 x ptr>, ptr %3, align 16, !tbaa !27, !noalias !1213
  store <2 x ptr> %i.wo, ptr %15, align 16, !tbaa !27, !alias.scope !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !1207
  %i.wp = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %.not377 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %.sroa.0.0 ; 2 uses
  br i1 %.not377, label %._crit_edge374, label %bb.dh

bb.dh:                                            ; preds = %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  %i.wq = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.wr = sub i64 %i.wq, %i.wp                    ; 2 uses
  %i.ws = sdiv exact i64 %i.wr, 24
  %i.wt = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.wv = load ptr, ptr %14, align 16, !tbaa !47  ; 2 uses
  %i.ww = load ptr, ptr %i.hy, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.wx = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !895
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = ptrtoint ptr %i.wx to i64
  %i.xc = sub i64 %i.xa, %i.xb
  store ptr %i.wx, ptr %16, align 8, !tbaa !233
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.xc
  store ptr %i.xd, ptr %i.wt, align 8, !tbaa !236
  %i.xe = load ptr, ptr %i.wv, align 8, !tbaa !50
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 216
  %i.xg = load ptr, ptr %i.xf, align 8
  invoke void %i.xg(ptr noundef nonnull align 8 dereferenceable(94) %i.wv, ptr noundef %i.ww, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.di unwind label %.loopexit.split-lp415

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %i.xh = load ptr, ptr %15, align 16, !tbaa !47  ; 2 uses
  %i.xi = load ptr, ptr %i.wj, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.xj = load ptr, ptr %.sroa.0.0, align 8, !tbaa !898 ; 3 uses
  %i.xk = load ptr, ptr %i.wy, align 8, !tbaa !895
  %i.xl = ptrtoint ptr %i.xk to i64
  %i.xm = ptrtoint ptr %i.xj to i64
  %i.xn = sub i64 %i.xl, %i.xm
  store ptr %i.xj, ptr %17, align 8, !tbaa !233
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xn
  store ptr %i.xo, ptr %i.wu, align 8, !tbaa !236
  %i.xp = load ptr, ptr %i.xh, align 8, !tbaa !50
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 216
  %i.xr = load ptr, ptr %i.xq, align 8
  invoke void %i.xr(ptr noundef nonnull align 8 dereferenceable(94) %i.xh, ptr noundef %i.xi, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.dj unwind label %.loopexit.split-lp420

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  %exitcond412.peel.not = icmp eq i64 %i.wr, 24
  br i1 %exitcond412.peel.not, label %._crit_edge374, label %.peel.next

._crit_edge374:                                   ; preds = %bb.dn, %bb.dj, %_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.xs = load ptr, ptr %i.p, align 8, !tbaa !110
  store ptr %i.xs, ptr %i.a, align 8, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.xt = load i32, ptr %i.n, align 8, !tbaa !162
  store i32 %i.xt, ptr %i.b, align 4, !tbaa !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  store ptr null, ptr %0, align 8, !tbaa !490, !alias.scope !1214
  %i.xu = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #42
          to label %.noexc207 unwind label %bb.er ; 6 uses

.noexc207:                                        ; preds = %._crit_edge374
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store i32 1, ptr %i.xw, align 8, !tbaa !193, !noalias !1214
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xu, i64 12
  store i32 1, ptr %i.xx, align 4, !tbaa !195, !noalias !1214
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.xu, align 8, !tbaa !50, !noalias !1214
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xu, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9MapVectorEJPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEEiSF_SF_S6_INS1_10BaseVectorEESH_EEvPT_DpOT0_(ptr noundef nonnull %i.xy, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.xv, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.dq unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i, !noalias !1214

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i: ; preds = %.noexc207
end_hunk_9
