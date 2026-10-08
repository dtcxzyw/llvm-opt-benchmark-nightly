Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCompoundMatrix?download=true
inline.NumInlined: 1065
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !167
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #22
  br label %_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !107 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !35 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !29
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #19, !inline_history !280
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !107
  br label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.p = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !154
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !104
  br label %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !164
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Ipopt19CompoundMatrixSpace12SetBlockColsEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  store i32 %2, ptr %i.d, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Ipopt19CompoundMatrixSpace12SetBlockRowsEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  store i32 %2, ptr %i.d, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5Ipopt19CompoundMatrixSpace12GetBlockRowsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !153
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5Ipopt19CompoundMatrixSpace12GetBlockColsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !153
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt19CompoundMatrixSpace12SetCompSpaceEiiRKNS_11MatrixSpaceEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(129) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !150, !range !108, !noundef !109
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !93   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.d, !llvm.loop !18

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph15.i, label %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit

.lr.ph15.i:                                       ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151
  %wide.trip.count23.i = zext nneg i32 %i.j to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !153
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit, label %bb.c

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit, label %bb.f, !llvm.loop !19

bb.f:                                             ; preds = %bb.e, %.lr.ph15.i
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph15.i ], [ %indvars.iv.next21.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv20.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !153
  %.not.i = icmp eq i32 %i.r, -1
  br i1 %.not.i, label %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit, label %bb.e

_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit: ; preds = %bb.d, %bb.e, %bb.f, %.preheader.i
  %.2.i = phi i8 [ 0, %bb.f ], [ 1, %.preheader.i ], [ 1, %bb.e ], [ 0, %bb.d ]
  store i8 %.2.i, ptr %i.a, align 4, !tbaa !150
  br label %bb.g

bb.g:                                             ; preds = %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = sext i32 %1 to i64                       ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !104
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.t
  %i.w = sext i32 %2 to i64                       ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !107
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !29
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !29
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !35  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !29
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !29
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(20) %i.ac) #19, !inline_history !281
  br label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit

_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit: ; preds = %bb.g, %bb.h, %bb.i
  store ptr %3, ptr %i.y, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !168
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %i.t
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !158
  %i.ao = sdiv i32 %2, 64
  %.sext = sext i32 %i.ao to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.sext
  %i.aq = and i64 %i.w, -9223372036854775745
  %i.ar = icmp ugt i64 %i.aq, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ar, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ap, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  %i.as = and i64 %i.w, 63
  %i.at = shl nuw i64 1, %i.as                    ; 2 uses
  br i1 %4, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit
  %i.au = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !149
  %i.av = or i64 %i.au, %i.at
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.k:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit
  %i.aw = xor i64 %i.at, -1
  %i.ax = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !149
  %i.ay = and i64 %i.ax, %i.aw
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.j, %bb.k
  %storemerge = phi i64 [ %i.ay, %bb.k ], [ %i.av, %bb.j ]
  store i64 %storemerge, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !149
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i8 1, ptr %i.az, align 8, !tbaa !141
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !93
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !77 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.preheader, label %._crit_edge

.preheaderthread-pre-split:                       ; preds = %.loopexit
  %.pr = load i32, ptr %i.bd, align 8, !tbaa !77
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheaderthread-pre-split
  %i.bg = phi i32 [ %.pr, %.preheaderthread-pre-split ], [ %i.be, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %.preheaderthread-pre-split ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %.preheader.lr.ph, %_ZNSt14_Bit_referenceaSEb.exit
  ret void

.lr.ph:                                           ; preds = %.preheader, %.critedge38.thread84
  %i.bi = phi i32 [ %i.cd, %.critedge38.thread84 ], [ %i.bg, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge38.thread84 ], [ 0, %.preheader ] ; 3 uses
  %i.bj = icmp eq i64 %indvars.iv93, %indvars.iv
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !104, !noalias !109
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv93
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107, !noalias !109 ; 2 uses
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv93
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !35, !noalias !288 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %.critedge38.thread79, label %bb.o

bb.m:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35, !noalias !289 ; 4 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i41, label %.critedge38.thread84, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !29, !noalias !289
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.split, label %.critedge38.thread79

.split:                                           ; preds = %bb.n
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(20) %i.bq) #19, !inline_history !6
  br label %.critedge38.thread79

bb.o:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !29, !noalias !288
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.p, label %.critedge38.thread84

bb.p:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(20) %i.bo) #19, !inline_history !6
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !77
  br label %.critedge38.thread84

.critedge38.thread79:                             ; preds = %bb.l, %bb.n, %.split
  store i8 0, ptr %i.az, align 8, !tbaa !141
  br label %.loopexit

.critedge38.thread84:                             ; preds = %bb.o, %bb.p, %bb.m
  %i.cd = phi i32 [ %i.bi, %bb.o ], [ %.pre, %bb.p ], [ %i.bi, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %.lr.ph, label %.loopexit, !llvm.loop !286

.loopexit:                                        ; preds = %.critedge38.thread84, %.preheader, %.critedge38.thread79
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.cg = load i32, ptr %i.ba, align 4, !tbaa !93
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next94, %i.ch
  br i1 %i.ci, label %.preheaderthread-pre-split, label %._crit_edge, !llvm.loop !287
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !18

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph15, label %.thread

.lr.ph15:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !151
  %wide.trip.count23 = zext nneg i32 %i.g to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !153
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %.thread, label %bb.b

bb.d:                                             ; preds = %bb.d, %.lr.ph15
  %indvars.iv20 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next21, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !153
  %.not = icmp ne i32 %i.o, -1                    ; 2 uses
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond24.not = icmp ne i64 %indvars.iv.next21, %wide.trip.count23
  %or.cond.not = select i1 %.not, i1 %exitcond24.not, i1 false
  br i1 %or.cond.not, label %bb.d, label %.thread, !llvm.loop !19

.thread:                                          ; preds = %bb.c, %bb.d, %.preheader
  %.2 = phi i1 [ %.not, %bb.d ], [ true, %.preheader ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK5Ipopt19CompoundMatrixSpace21MakeNewCompoundMatrixEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !150, !range !108, !noundef !109
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !93   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.d, !llvm.loop !18

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph15.i, label %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit

.lr.ph15.i:                                       ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151
  %wide.trip.count23.i = zext nneg i32 %i.j to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !153
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit, label %bb.c

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit, label %bb.f, !llvm.loop !19

bb.f:                                             ; preds = %bb.e, %.lr.ph15.i
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph15.i ], [ %indvars.iv.next21.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv20.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !153
  %.not.i = icmp eq i32 %i.r, -1
  br i1 %.not.i, label %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit, label %bb.e

_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit: ; preds = %bb.d, %bb.e, %bb.f, %.preheader.i
  %.2.i = phi i8 [ 0, %bb.f ], [ 1, %.preheader.i ], [ 1, %bb.e ], [ 0, %bb.d ]
  store i8 %.2.i, ptr %i.a, align 4, !tbaa !150
  br label %bb.g

bb.g:                                             ; preds = %_ZNK5Ipopt19CompoundMatrixSpace13DimensionsSetEv.exit, %bb.a
  %i.s = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #21 ; 6 uses
  invoke void @_ZN5Ipopt14CompoundMatrixC1EPKNS_19CompoundMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(129) %i.s, ptr noundef nonnull %0)
          to label %.preheader23 unwind label %bb.h

.preheader23:                                     ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !93   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader.lr.ph, label %._crit_edge27

.preheader.lr.ph:                                 ; preds = %.preheader23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ab = load i32, ptr %i.w, align 8, !tbaa !77  ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.preheader, label %._crit_edge27

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ad = phi i32 [ %i.ah, %._crit_edge ], [ %i.u, %.preheader.lr.ph ]
  %i.ae = phi i32 [ %i.ai, %._crit_edge ], [ %i.ab, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 5 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge27:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader23
  ret ptr %i.s

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 136) #22
  br label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit20

._crit_edge.loopexit:                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit
  %.pre = load i32, ptr %i.t, align 4, !tbaa !93
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ah = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ad, %.preheader ] ; 2 uses
  %i.ai = phi i32 [ %i.cw, %._crit_edge.loopexit ], [ %i.ae, %.preheader ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %i.aj = sext i32 %i.ah to i64
  %i.ak = icmp slt i64 %indvars.iv.next32, %i.aj
  br i1 %i.ak, label %.preheader, label %._crit_edge27, !llvm.loop !290

.lr.ph:                                           ; preds = %.preheader, %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit ], [ 0, %.preheader ] ; 6 uses
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !168
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %indvars.iv31
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !158
  %i.ao = lshr i64 %indvars.iv, 6
  %.zext = and i64 %i.ao, 67108863
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.zext
  %i.aq = and i64 %indvars.iv, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !149
  %i.at = and i64 %i.as, %i.ar
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !104, !noalias !294
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv31
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !107, !noalias !294
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35, !noalias !294 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt19CompoundMatrixSpace12GetCompSpaceEii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !29, !noalias !294
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !29, !noalias !294
  br label %_ZNK5Ipopt19CompoundMatrixSpace12GetCompSpaceEii.exit

_ZNK5Ipopt19CompoundMatrixSpace12GetCompSpaceEii.exit: ; preds = %bb.i, %bb.j
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(20) %i.ay)
          to label %bb.k unwind label %bb.q       ; 2 uses

bb.k:                                             ; preds = %_ZNK5Ipopt19CompoundMatrixSpace12GetCompSpaceEii.exit
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !102
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv31
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !88
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i18, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !29
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !29
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(69) %i.bk) #19, !inline_history !9
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i

_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i:   ; preds = %bb.m, %bb.l, %bb.k
  store ptr null, ptr %i.bj, align 8, !tbaa !90
  %i.bs = load ptr, ptr %i.aa, align 8, !tbaa !103
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %indvars.iv31
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !80
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !29
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !29
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !83 ; 4 uses
  %.not.i.i.i5.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i5.i, label %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !29
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !29
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.o, label %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(69) %i.bz) #19, !inline_history !10
  br label %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i

_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i:    ; preds = %bb.o, %bb.n, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i
  store ptr %i.bf, ptr %i.bv, align 8, !tbaa !83
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(129) %i.s)
          to label %_ZN5Ipopt14CompoundMatrix15SetCompNonConstEiiRNS_6MatrixE.exit unwind label %bb.q

_ZN5Ipopt14CompoundMatrix15SetCompNonConstEiiRNS_6MatrixE.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !29
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !29
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit

bb.p:                                             ; preds = %_ZN5Ipopt14CompoundMatrix15SetCompNonConstEiiRNS_6MatrixE.exit
  %i.cl = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(20) %i.ay) #19, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit

bb.q:                                             ; preds = %_ZNK5Ipopt19CompoundMatrixSpace12GetCompSpaceEii.exit, %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !29
  %i.cr = add nsw i32 %i.cq, -1                   ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !29
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.r, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit20

bb.r:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(20) %i.ay) #19, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit20

_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit:  ; preds = %bb.p, %_ZN5Ipopt14CompoundMatrix15SetCompNonConstEiiRNS_6MatrixE.exit, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = load i32, ptr %i.w, align 8, !tbaa !77  ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !293

_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit20: ; preds = %bb.r, %bb.q, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.co, %bb.q ], [ %i.co, %bb.r ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZNK5Ipopt6Matrix5PrintENS_8SmartPtrIKNS_10JournalistEEENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSE_(ptr noundef nonnull align 8 dereferenceable(69), ptr noundef align 8, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZNK5Ipopt6Matrix5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(69), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
