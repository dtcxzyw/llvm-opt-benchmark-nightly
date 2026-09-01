Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCompoundSymMatrix?download=true
inline.NumInlined: 889
inline.NumDeleted: 518
begin_hunk_0_@_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EED2Ev:bb.a
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #19, !inline_history !237
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !232

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !110
  br label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.p = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !216
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !238

_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !226
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Ipopt22CompoundSymMatrixSpace11SetBlockDimEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  store i32 %2, ptr %i.d, align 4, !tbaa !214
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5Ipopt22CompoundSymMatrixSpace11GetBlockDimEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !214
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt22CompoundSymMatrixSpace12SetCompSpaceEiiRKNS_11MatrixSpaceEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !239, !range !107, !noundef !108
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44   ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !212
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit, label %bb.d, !llvm.loop !240

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !214
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit, label %bb.c

_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi i8 [ 1, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  store i8 %.lcssa.i, ptr %i.a, align 8, !tbaa !239
  br label %bb.e

bb.e:                                             ; preds = %_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = sext i32 %1 to i64                       ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  %i.o = sext i32 %2 to i64                       ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !8
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !8
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !12   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !8
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(20) %i.u) #19, !inline_history !241
  br label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit

_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit: ; preds = %bb.e, %bb.f, %bb.g
  store ptr %3, ptr %i.q, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !235
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.l
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !218
  %i.ag = sdiv i32 %2, 64
  %.sext = sext i32 %i.ag to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %.sext
  %i.ai = and i64 %i.o, -9223372036854775745
  %i.aj = icmp ugt i64 %i.ai, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.aj, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ah, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  %i.ak = and i64 %i.o, 63
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit
  %i.am = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !202
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEaSEPS2_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !202
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.h, %bb.i
  %storemerge = phi i64 [ %i.aq, %bb.i ], [ %i.an, %bb.h ]
  store i64 %storemerge, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !214
  %.not = icmp ne i32 %i.g, -1                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge, !llvm.loop !240

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK5Ipopt22CompoundSymMatrixSpace24MakeNewCompoundSymMatrixEv(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !239, !range !107, !noundef !108
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44   ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !212
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit, label %bb.d, !llvm.loop !240

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !214
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit, label %bb.c

_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi i8 [ 1, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  store i8 %.lcssa.i, ptr %i.a, align 8, !tbaa !239
  br label %bb.e

bb.e:                                             ; preds = %_ZNK5Ipopt22CompoundSymMatrixSpace13DimensionsSetEv.exit, %bb.a
  %i.k = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #20 ; 6 uses
  invoke void @_ZN5Ipopt17CompoundSymMatrixC1EPKNS_22CompoundSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(137) %i.k, ptr noundef nonnull %0)
          to label %.preheader25 unwind label %bb.f

.preheader25:                                     ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.g
  %indvars.iv33 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next34, %bb.g ] ; 5 uses
  %indvars.iv31 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next32, %bb.g ] ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.g, %.preheader25
  ret ptr %i.k

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 144) #22
  br label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit21

bb.g:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %i.t = load i32, ptr %i.l, align 4, !tbaa !44
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next34, %i.u
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br i1 %i.v, label %.preheader, label %._crit_edge, !llvm.loop !242

bb.h:                                             ; preds = %.preheader, %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit ] ; 6 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !235
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %indvars.iv33
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !218
  %i.z = lshr i64 %indvars.iv, 6
  %.zext = and i64 %i.z, 67108863
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.zext
  %i.ab = and i64 %indvars.iv, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !202
  %i.ae = and i64 %i.ad, %i.ac
  %.not24 = icmp eq i64 %i.ae, 0
  br i1 %.not24, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !109, !noalias !243
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv33
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !110, !noalias !243
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12, !noalias !243 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt22CompoundSymMatrixSpace12GetCompSpaceEii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !8, !noalias !243
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !8, !noalias !243
  br label %_ZNK5Ipopt22CompoundSymMatrixSpace12GetCompSpaceEii.exit

_ZNK5Ipopt22CompoundSymMatrixSpace12GetCompSpaceEii.exit: ; preds = %bb.i, %bb.j
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(20) %i.aj)
          to label %bb.k unwind label %bb.q       ; 2 uses

bb.k:                                             ; preds = %_ZNK5Ipopt22CompoundSymMatrixSpace12GetCompSpaceEii.exit
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !95
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv33
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !74 ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i19, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !8
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !8
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(69) %i.av) #19, !inline_history !246
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i

_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i:   ; preds = %bb.m, %bb.l, %bb.k
  store ptr null, ptr %i.au, align 8, !tbaa !74
  %i.bd = load ptr, ptr %i.r, align 8, !tbaa !98
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv33
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !8
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !8
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !66 ; 4 uses
  %.not.i.i.i5.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i5.i, label %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !8
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !8
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.o, label %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(69) %i.bk) #19, !inline_history !247
  br label %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i

_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i:    ; preds = %bb.o, %bb.n, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSEPS2_.exit.i
  store ptr %i.aq, ptr %i.bg, align 8, !tbaa !66
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(137) %i.k)
          to label %_ZN5Ipopt17CompoundSymMatrix15SetCompNonConstEiiRNS_6MatrixE.exit unwind label %bb.q

_ZN5Ipopt17CompoundSymMatrix15SetCompNonConstEiiRNS_6MatrixE.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !8
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !8
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.p, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit

bb.p:                                             ; preds = %_ZN5Ipopt17CompoundSymMatrix15SetCompNonConstEiiRNS_6MatrixE.exit
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(20) %i.aj) #19, !inline_history !166
  br label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit

bb.q:                                             ; preds = %_ZNK5Ipopt22CompoundSymMatrixSpace12GetCompSpaceEii.exit, %_ZN5Ipopt8SmartPtrINS_6MatrixEEaSEPS1_.exit.i
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !8
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !8
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit21
end_hunk_0
