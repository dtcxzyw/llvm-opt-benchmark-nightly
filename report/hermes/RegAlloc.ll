inline.NumInlined: 1999
inline.NumDeleted: 790
begin_hunk_0_@"_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS4_10BasicBlockEEEE3$_0EEEvT_T0_SE_T1_T2_":bb.a
  br i1 %.not.i32.i.i.i.7, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS2_10BasicBlockEEEE3$_0EclIPjjEEbT_RT0_.exit.i", label %.lr.ph.i28.i.i.i

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS2_10BasicBlockEEEE3$_0EclIPjjEEbT_RT0_.exit.i": ; preds = %.lr.ph.i28.i.i.i.prol.loopexit, %.lr.ph.i28.i.i.i, %_ZNK6hermes8Interval5startEv.exit25.i.i.i
  %.011.lcssa.i33.i.i.i = phi i64 [ %i.ej, %_ZNK6hermes8Interval5startEv.exit25.i.i.i ], [ %.sroa.speculated.i31.i.i.i.lcssa.unr, %.lr.ph.i28.i.i.i.prol.loopexit ], [ %.sroa.speculated.i31.i.i.i.7, %.lr.ph.i28.i.i.i ]
  %i.ii = icmp eq i64 %.011.lcssa.i24.i.i.i, %.011.lcssa.i33.i.i.i
  %i.ij = icmp ult i32 %.val14.i, %3
  %i.ik = and i1 %i.ij, %i.ii
  br i1 %i.ik, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS2_10BasicBlockEEEE3$_0EclIPjjEEbT_RT0_.exit.thread.i", label %"_ZSt11__push_heapIPjljN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS4_10BasicBlockEEEE3$_0EEEvT_T0_SE_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS2_10BasicBlockEEEE3$_0EclIPjjEEbT_RT0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS2_10BasicBlockEEEE3$_0EclIPjjEEbT_RT0_.exit.i", %_ZNK6hermes8Interval5startEv.exit16.i.i.i
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i
  store i32 %.val14.i, ptr %i.il, align 4, !tbaa !3
  %i.im = icmp samesign ugt i64 %.058.i, %1
  br i1 %i.im, label %bb.h, label %"_ZSt11__push_heapIPjljN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS4_10BasicBlockEEEE3$_0EEEvT_T0_SE_T1_RT2_.exit", !llvm.loop !275

"_ZSt11__push_heapIPjljN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS4_10BasicBlockEEEE3$_0EEEvT_T0_SE_T1_RT2_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS2_10BasicBlockEEEE3$_0EclIPjjEEbT_RT0_.exit.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS2_10BasicBlockEEEE3$_0EclIPjjEEbT_RT0_.exit.thread.i", %bb.g
  %.013.lcssa.i = phi i64 [ %.128, %bb.g ], [ %.0134.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS2_10BasicBlockEEEE3$_0EclIPjjEEbT_RT0_.exit.i" ], [ %.058.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS2_10BasicBlockEEEE3$_0EclIPjjEEbT_RT0_.exit.thread.i" ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i
  store i32 %3, ptr %i.in, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !242    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !243  ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !130    ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !130  ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !132

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !130 ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !133, !llvm.loop !254

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !452
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !255 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !27

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !256
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !27

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPN6hermes5ValueENS1_8RegisterENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S4_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !255
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !452
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !255
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !130
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !256
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !256
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %1, align 8, !tbaa !130
  store ptr %i.av, ptr %i.an, align 8, !tbaa !130
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 -1, ptr %i.aw, align 8, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !242    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !130    ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02944.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02944.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130  ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !132

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02947.i = phi i32 [ %.029.i, %bb.d ], [ %.02944.i, %bb.b ]
  %.02746.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03245.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.03245.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -16 to ptr)
  %i.u = icmp eq ptr %.03245.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.03245.i
  %i.v = add i32 %.02746.i, 1
  %i.w = add i32 %.02746.i, %.02947.i
  %.029.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.029.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !130  ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !133, !llvm.loop !254

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !452
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPN6hermes5ValueENS1_8RegisterENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S4_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPN6hermes5ValueENS1_8RegisterENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S4_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !243  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !242    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !243
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !242
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes5ValueENS1_8RegisterENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S4_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !255
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !256
  %i.w = load i32, ptr %i.a, align 8, !tbaa !243  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !130
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !453

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !130
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !130
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !130
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !130
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !130
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !130
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !130
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !130
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !454

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes5ValueENS1_8RegisterENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S4_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !255
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !256
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !243 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !130
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !455

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !130
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !130
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !130
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !130
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !130
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !130
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !130
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !454

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit.i, %bb.f
  %i.bg = phi i32 [ %i.cg, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ch, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit.i ] ; 3 uses
  %i.bh = load ptr, ptr %.020.i, align 8, !tbaa !130 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bh to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  %2 = load i32, ptr %i.a, align 8, !tbaa !243    ; 2 uses
  %3 = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %3)
  %i.bi = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bj = lshr i32 %i.bi, 4
  %i.bk = lshr i32 %i.bi, 9
  %i.bl = xor i32 %i.bj, %i.bk
  %4 = add i32 %2, -1                             ; 2 uses
  %.02944.i.i.i = and i32 %4, %i.bl               ; 2 uses
  %i.bm = zext nneg i32 %.02944.i.i.i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bm ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !130 ; 2 uses
  %i.bp = icmp eq ptr %i.bh, %i.bo
  br i1 %i.bp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !132

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bq = phi ptr [ %i.ca, %bb.e ], [ %i.bo, %bb.c ] ; 2 uses
  %i.br = phi ptr [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.e ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.bw, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bs = icmp eq ptr %i.bq, inttoptr (i64 -8 to ptr)
  br i1 %i.bs, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bt = select i1 %.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = icmp eq ptr %i.bq, inttoptr (i64 -16 to ptr)
  %i.bv = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  %i.bw = add i32 %.02746.i.i.i, 1
  %i.bx = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bx, %4                 ; 2 uses
  %i.by = zext i32 %.029.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.by ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !130 ; 2 uses
  %i.cb = icmp eq ptr %i.bh, %i.ca
  br i1 %i.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !133, !llvm.loop !254

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bt, %bb.d ], [ %i.bn, %bb.c ], [ %i.bz, %bb.e ] ; 2 uses
  store ptr %i.bh, ptr %.sink.i.i.i, align 8, !tbaa !130
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !3
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !3
  %i.cf = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.ao, align 8, !tbaa !255
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cg = phi i32 [ %i.cf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ch, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6, !llvm.loop !456

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #18
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS2_8RegisterENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.16, i1 noundef zeroext true) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 48
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #20 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext true) #18
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not7.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZSt10_ConstructIN6hermes8IntervalEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ai, %_ZSt10_ConstructIN6hermes8IntervalEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.u, %_ZN4llvh11safe_mallocEm.exit ] ; 6 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ah, %_ZSt10_ConstructIN6hermes8IntervalEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store ptr %i.ab, ptr %.09.i.i.i.i, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 12
  store i32 2, ptr %i.ad, align 4, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN6hermes8IntervalEJS1_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes7SegmentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i) ; 0 uses
  br label %_ZSt10_ConstructIN6hermes8IntervalEJS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN6hermes8IntervalEJS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !457

_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt10_ConstructIN6hermes8IntervalEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %.pre15 = load i32, ptr %i.x, align 8, !tbaa !24 ; 2 uses
  %.not4.i = icmp eq i32 %.pre15, 0
  br i1 %.not4.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit
  %i.aj = zext i32 %.pre15 to i64
  %.idx14 = mul nuw nsw i64 %i.aj, 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN6hermes8IntervalD2Ev.exit.i
  %.05.i = phi ptr [ %i.al, %_ZN6hermes8IntervalD2Ev.exit.i ], [ %i.ak, %.lr.ph.i.preheader ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN6hermes8IntervalD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @free(ptr noundef %i.am) #18
  br label %_ZN6hermes8IntervalD2Ev.exit.i

_ZN6hermes8IntervalD2Ev.exit.i:                   ; preds = %bb.f, %.lr.ph.i
  %.not.i = icmp eq ptr %.pre, %i.al
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit.loopexit, label %.lr.ph.i, !llvm.loop !458

_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit.loopexit: ; preds = %_ZN6hermes8IntervalD2Ev.exit.i
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit: ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit.loopexit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit
  %i.ap = phi ptr [ %.pre16, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit.loopexit ], [ %.pre, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit
  tail call void @free(ptr noundef %i.ap) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8IntervalELb0EE13destroy_rangeEPS2_S4_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !22
  %i.as = trunc i64 %.sroa.speculated to i32
  store i32 %i.as, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !147    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !148  ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !124    ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124  ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !132

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !133, !llvm.loop !152

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !459
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !153 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !27

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !154
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !27

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !153
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !459
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !153
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !124
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIRKS4_JEEEPS9_SF_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !154
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !154
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIRKS4_JEEEPS9_SF_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIRKS4_JEEEPS9_SF_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %1, align 8, !tbaa !124
  store ptr %i.av, ptr %i.an, align 8, !tbaa !124
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIRKS4_JEEEPS9_SF_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16InsertIntoBucketIRKS4_JEEEPS9_SF_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !124    ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02944.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02944.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124  ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !132

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02947.i = phi i32 [ %.029.i, %bb.d ], [ %.02944.i, %bb.b ]
  %.02746.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03245.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.03245.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -16 to ptr)
  %i.u = icmp eq ptr %.03245.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.03245.i
  %i.v = add i32 %.02746.i, 1
  %i.w = add i32 %.02746.i, %.02947.i
  %.029.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.029.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !124  ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !133, !llvm.loop !152

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !459
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !147    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !148
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !147
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !153
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !154
  %i.w = load i32, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !460

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !124
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !124
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !124
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !124
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !124
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !124
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !461

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !153
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !154
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !148 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !124
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !462

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !124
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !124
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !124
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !124
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !124
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !124
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !124
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !124
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !461

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, %bb.f
  %i.bg = phi i32 [ %i.cg, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ch, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i ] ; 3 uses
  %i.bh = load ptr, ptr %.020.i, align 8, !tbaa !124 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bh to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  %2 = load i32, ptr %i.a, align 8, !tbaa !148    ; 2 uses
  %3 = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %3)
  %i.bi = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bj = lshr i32 %i.bi, 4
  %i.bk = lshr i32 %i.bi, 9
  %i.bl = xor i32 %i.bj, %i.bk
  %4 = add i32 %2, -1                             ; 2 uses
  %.02944.i.i.i = and i32 %4, %i.bl               ; 2 uses
  %i.bm = zext nneg i32 %.02944.i.i.i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bm ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !124 ; 2 uses
  %i.bp = icmp eq ptr %i.bh, %i.bo
  br i1 %i.bp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !132

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bq = phi ptr [ %i.ca, %bb.e ], [ %i.bo, %bb.c ] ; 2 uses
  %i.br = phi ptr [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.e ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.bw, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bs = icmp eq ptr %i.bq, inttoptr (i64 -8 to ptr)
  br i1 %i.bs, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bt = select i1 %.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = icmp eq ptr %i.bq, inttoptr (i64 -16 to ptr)
  %i.bv = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  %i.bw = add i32 %.02746.i.i.i, 1
  %i.bx = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bx, %4                 ; 2 uses
  %i.by = zext i32 %.029.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.by ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !124 ; 2 uses
  %i.cb = icmp eq ptr %i.bh, %i.ca
  br i1 %i.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !133, !llvm.loop !152

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bt, %bb.d ], [ %i.bn, %bb.c ], [ %i.bz, %bb.e ] ; 2 uses
  store ptr %i.bh, ptr %.sink.i.i.i, align 8, !tbaa !124
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !3
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !3
  %i.cf = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.ao, align 8, !tbaa !153
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cg = phi i32 [ %i.cf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ch, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6, !llvm.loop !463

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #18
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPN6hermes9ScopeDescEPNS1_17ScopeCreationInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPN6hermes9ScopeDescEPNS1_17ScopeCreationInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !367  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !364    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !367
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !364
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes9ScopeDescEPNS1_17ScopeCreationInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !370
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !371
  %i.w = load i32, ptr %i.a, align 8, !tbaa !367  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !368
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !464

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !368
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !368
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !368
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !368
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !368
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !368
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !368
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !368
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !465

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes9ScopeDescEPNS1_17ScopeCreationInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !370
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !371
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !367 ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp ne i32 %i.aq, 0               ; 2 uses
  br i1 %.not6.i.i, label %.lr.ph.i.i.preheader, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !368
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !466

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !368
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !368
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !368
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !368
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !368
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !368
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !368
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !368
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !465

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i
  %i.bg = add i32 %i.aq, -1                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i6
  %i.bh = phi i32 [ 0, %.lr.ph.i6 ], [ %i.ch, %bb.g ] ; 3 uses
  %.020.i = phi ptr [ %i.c, %.lr.ph.i6 ], [ %i.ci, %bb.g ] ; 3 uses
  %i.bi = load ptr, ptr %.020.i, align 8, !tbaa !368 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bi to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.d [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %.not6.i.i)
  %i.bj = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bk = lshr i32 %i.bj, 4
  %i.bl = lshr i32 %i.bj, 9
  %i.bm = xor i32 %i.bk, %i.bl
  %.02944.i.i.i = and i32 %i.bm, %i.bg            ; 2 uses
  %i.bn = zext nneg i32 %.02944.i.i.i to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bn ; 3 uses
end_hunk_0
