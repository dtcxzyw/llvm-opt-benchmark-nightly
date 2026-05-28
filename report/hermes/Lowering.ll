inline.NumInlined: 1539
inline.NumDeleted: 776
begin_hunk_0_@_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEEaSEOS4_:bb.a
bb.h:                                             ; preds = %bb.g
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !129
  store ptr %i.t, ptr %i.s, align 8, !tbaa !129
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit: ; preds = %bb.g, %bb.i, %bb.h
  store i32 %i.n, ptr %i.p, align 8, !tbaa !10
  store i32 0, ptr %i.m, align 8, !tbaa !10
  br label %bb.q

bb.j:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.p, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #12
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37

bb.l:                                             ; preds = %bb.j
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not40 = icmp eq i32 %i.q, 1
  br i1 %.not40, label %bb.o, label %bb.n, !prof !277

bb.n:                                             ; preds = %bb.m
  %.idx39 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx39, i1 false)
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37

bb.o:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !129
  store ptr %i.z, ptr %i.y, align 8, !tbaa !129
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37

_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.029 = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.r, %bb.n ], [ 1, %bb.o ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !10
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.029, %i.ab
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37
  %i.ac = load ptr, ptr %1, align 8, !tbaa !7
  %.idx42 = shl nuw nsw i64 %.029, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx42
  %i.ae = load ptr, ptr %0, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.029
  %i.ag = sub nsw i64 %i.ab, %.029
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37, %bb.p
  store i32 %i.n, ptr %i.p, align 8, !tbaa !10
  store i32 0, ptr %i.m, align 8, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %bb.e
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E18moveFromOldBucketsEPSI_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !184
  %i.c = load ptr, ptr %0, align 8, !tbaa !178    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !179  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = shl nuw nsw i64 %i.f, 5               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.i = lshr exact i64 %i.h, 5
  %i.j = add nuw nsw i64 %i.i, 1
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.k, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !180
  %i.k = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !278

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %i.l = icmp ult i64 %i.h, 224
  br i1 %i.l, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.m, align 8, !tbaa !180
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.n, align 8, !tbaa !180
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.o, align 8, !tbaa !180
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 128
  store ptr inttoptr (i64 -8 to ptr), ptr %i.p, align 8, !tbaa !180
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 160
  store ptr inttoptr (i64 -8 to ptr), ptr %i.q, align 8, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 192
  store ptr inttoptr (i64 -8 to ptr), ptr %i.r, align 8, !tbaa !180
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i, i64 224
  store ptr inttoptr (i64 -8 to ptr), ptr %i.s, align 8, !tbaa !180
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i, i64 256 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !187

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.not21 = icmp eq ptr %1, %2
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E9initEmptyEv.exit, %bb.e
  %.022 = phi ptr [ %i.bk, %bb.e ], [ %1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E9initEmptyEv.exit ] ; 6 uses
  %i.u = load ptr, ptr %.022, align 8, !tbaa !180 ; 4 uses
  %magicptr = ptrtoint ptr %i.u to i64            ; 2 uses
  switch i64 %magicptr, label %bb.b [
    i64 -8, label %bb.e
    i64 -16, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %i.w = load i32, ptr %i.d, align 8, !tbaa !179  ; 2 uses
  %i.x = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc i64 %magicptr to i32               ; 2 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = lshr i32 %i.y, 9
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = add i32 %i.w, -1                        ; 2 uses
  %.02944.i.i = and i32 %i.ac, %i.ab              ; 2 uses
  %i.ad = zext nneg i32 %.02944.i.i to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !180 ; 2 uses
  %i.ag = icmp eq ptr %i.u, %i.af
  br i1 %i.ag, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E15LookupBucketForIS4_EEbRKT_RPSI_.exit, label %.lr.ph.i.i, !prof !130

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.ah = phi ptr [ %i.ar, %bb.d ], [ %i.af, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %i.aq, %bb.d ], [ %i.ae, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.an, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.aj = icmp eq ptr %i.ah, inttoptr (i64 -8 to ptr)
  br i1 %i.aj, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.ak = select i1 %.not.i.i, ptr %i.ai, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E15LookupBucketForIS4_EEbRKT_RPSI_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp eq ptr %i.ah, inttoptr (i64 -16 to ptr)
  %i.am = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.al, i1 %i.am, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.ai, ptr %.03245.i.i
  %i.an = add i32 %.02746.i.i, 1
  %i.ao = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.ao, %i.ac                ; 2 uses
  %i.ap = zext i32 %.029.i.i to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.ap ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !180 ; 2 uses
  %i.as = icmp eq ptr %i.u, %i.ar
  br i1 %i.as, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E15LookupBucketForIS4_EEbRKT_RPSI_.exit, label %.lr.ph.i.i, !prof !131, !llvm.loop !183

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E15LookupBucketForIS4_EEbRKT_RPSI_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.ak, %bb.c ], [ %i.ae, %bb.b ], [ %i.aq, %bb.d ] ; 5 uses
  store ptr %i.u, ptr %.sink.i.i, align 8, !tbaa !180
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.at, i8 0, i64 20, i1 false)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !279
  store ptr %i.av, ptr %i.at, align 8, !tbaa !279
  store ptr null, ptr %i.au, align 8, !tbaa !279
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.022, i64 16 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !3
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !3
  store i32 0, ptr %i.ax, align 8, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 20 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.022, i64 20 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !3
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.022, i64 24 ; 2 uses
  %i.bf = load i32, ptr %i.bd, align 8, !tbaa !3  ; 3 uses
  %i.bg = load i32, ptr %i.be, align 8, !tbaa !3
  store i32 %i.bg, ptr %i.bd, align 8, !tbaa !3
  store i32 %i.bf, ptr %i.be, align 8, !tbaa !3
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !175
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !175
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS1_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E15LookupBucketForIS4_EEbRKT_RPSI_.exit
  %3 = zext i32 %i.bf to i64
  %.idx.i.i = mul nuw nsw i64 %3, 56
  %4 = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i.i
  br label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %12, %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit.i.i ], [ null, %.lr.ph.preheader.i.i ] ; 4 uses
  %5 = load ptr, ptr %.011.i.i, align 8, !tbaa !129
  %magicptr.i.i = ptrtoint ptr %5 to i64
  switch i64 %magicptr.i.i, label %6 [
    i64 -8, label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit.i.i
    i64 -16, label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit.i.i
  ]

6:                                                ; preds = %.lr.ph.i.i15
  %7 = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !7        ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit.i.i, label %11

11:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #12
  br label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit.i.i: ; preds = %11, %6, %.lr.ph.i.i15, %.lr.ph.i.i15
  %12 = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 56 ; 2 uses
  %.not.i.i16 = icmp eq ptr %12, %4
  br i1 %.not.i.i16, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i15, !llvm.loop !200

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.au, align 8, !tbaa !152
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS1_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS1_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E15LookupBucketForIS4_EEbRKT_RPSI_.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.loopexit.i
  %13 = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.loopexit.i ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes15AllocObjectInstENS1_IPNS2_10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SA_EEEENSB_IS4_EENSE_IS4_SG_EEEES4_SG_SH_SI_E15LookupBucketForIS4_EEbRKT_RPSI_.exit ]
  tail call void @_ZdlPv(ptr noundef %13) #12
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS1_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.022, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bk, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !280
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !189
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !190
  %i.c = load ptr, ptr %0, align 8, !tbaa !152    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = mul nuw nsw i64 %i.f, 56              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = add nsw i64 %.idx.i, -56                 ; 2 uses
  %i.i = udiv i64 %i.h, 56
  %i.j = add nuw nsw i64 %i.i, 1
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.k, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 56 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !281

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %i.l = icmp ult i64 %i.h, 392
  br i1 %i.l, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.m, align 8, !tbaa !129
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.n, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i, i64 168
  store ptr inttoptr (i64 -8 to ptr), ptr %i.o, align 8, !tbaa !129
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 224
  store ptr inttoptr (i64 -8 to ptr), ptr %i.p, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 280
  store ptr inttoptr (i64 -8 to ptr), ptr %i.q, align 8, !tbaa !129
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 336
  store ptr inttoptr (i64 -8 to ptr), ptr %i.r, align 8, !tbaa !129
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i, i64 392
  store ptr inttoptr (i64 -8 to ptr), ptr %i.s, align 8, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i, i64 448 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !192

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.not20 = icmp eq ptr %1, %2
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E9initEmptyEv.exit, %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit
  %.021 = phi ptr [ %i.bg, %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit ], [ %1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E9initEmptyEv.exit ] ; 5 uses
  %i.u = load ptr, ptr %.021, align 8, !tbaa !129 ; 4 uses
  %magicptr = ptrtoint ptr %i.u to i64            ; 2 uses
  switch i64 %magicptr, label %bb.b [
    i64 -8, label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit
    i64 -16, label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %0, align 8, !tbaa !152    ; 2 uses
  %i.w = load i32, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %i.x = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc i64 %magicptr to i32               ; 2 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = lshr i32 %i.y, 9
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = add i32 %i.w, -1                        ; 2 uses
  %.02944.i.i = and i32 %i.ac, %i.ab              ; 2 uses
  %i.ad = zext nneg i32 %.02944.i.i to i64
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !129 ; 2 uses
  %i.ag = icmp eq ptr %i.u, %i.af
  br i1 %i.ag, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit, label %.lr.ph.i.i, !prof !130

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.ah = phi ptr [ %i.ar, %bb.d ], [ %i.af, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %i.aq, %bb.d ], [ %i.ae, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.an, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.aj = icmp eq ptr %i.ah, inttoptr (i64 -8 to ptr)
  br i1 %i.aj, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.ak = select i1 %.not.i.i, ptr %i.ai, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp eq ptr %i.ah, inttoptr (i64 -16 to ptr)
  %i.am = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.al, i1 %i.am, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.ai, ptr %.03245.i.i
  %i.an = add i32 %.02746.i.i, 1
  %i.ao = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.ao, %i.ac                ; 2 uses
  %i.ap = zext i32 %.029.i.i to i64
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %i.ap ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !129 ; 2 uses
  %i.as = icmp eq ptr %i.u, %i.ar
  br i1 %i.as, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit, label %.lr.ph.i.i, !prof !131, !llvm.loop !188

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.ak, %bb.c ], [ %i.ae, %bb.b ], [ %i.aq, %bb.d ] ; 5 uses
  store ptr %i.u, ptr %.sink.i.i, align 8, !tbaa !129
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  store i32 0, ptr %i.aw, align 8, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 20
  store i32 4, ptr %i.ax, align 4, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !10
  %.not.i.i15 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i15, label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EEC2EOS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit
  %i.ba = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes23StoreNewOwnPropertyInstEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.au) ; 0 uses
  br label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EEC2EOS4_.exit

_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EEC2EOS4_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorIPNS2_23StoreNewOwnPropertyInstELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit, %bb.e
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !189
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.a, align 8, !tbaa !189
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !7  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.021, i64 24
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EEC2EOS4_.exit
  tail call void @free(ptr noundef %i.bd) #12
  br label %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EED2Ev.exit: ; preds = %.lr.ph, %.lr.ph, %bb.f, %_ZN4llvh11SmallVectorIPN6hermes23StoreNewOwnPropertyInstELj4EEC2EOS4_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.021, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.bg, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !282
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes23StoreNewOwnPropertyInstEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !7      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #12
  %.pre = load ptr, ptr %1, align 8, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  store ptr %i.i, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !3
  store <2 x i32> %i.l, ptr %i.f, align 8, !tbaa !3
  store ptr %i.c, ptr %1, align 8, !tbaa !7
  store i32 0, ptr %i.k, align 4, !tbaa !11
  store i32 0, ptr %i.j, align 8, !tbaa !10
  br label %bb.q

end_hunk_0
