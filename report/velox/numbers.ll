inline.NumInlined: 377
inline.NumDeleted: 169
begin_hunk_0_@_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEiPc:bb.a
_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit: ; preds = %._crit_edge.i, %bb.b, %bb.d
  %.016.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %.020.i, %bb.b ], [ %.020.i, %bb.d ]
  %.pn.i = phi i32 [ %i.f, %._crit_edge.i ], [ %i.i, %bb.b ], [ %i.l, %bb.d ]
  %.1.i = add i32 %.pn.i, %.016.i
  %i.p = zext i32 %.1.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 3 uses
  store i8 0, ptr %i.q, align 1, !tbaa !10
  %i.r = icmp slt i32 %0, 0
  br i1 %i.r, label %bb.f, label %_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEiPcj.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 -1
  store i8 45, ptr %i.s, align 1, !tbaa !10
  br label %_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEiPcj.exit

_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEiPcj.exit: ; preds = %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit, %bb.f
  %i.t = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIjPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i32 noundef %i.c, ptr noundef nonnull %i.q) ; 0 uses
  ret ptr %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEiPcj(i32 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIiPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = xor i64 %i.b, -1
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  store i8 45, ptr %i.d, align 1, !tbaa !10
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIiPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit

_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIiPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit: ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i32 @llvm.abs.i32(i32 %0, i1 false)
  %i.f = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIjPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i32 noundef %i.e, ptr noundef %1)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %0, 100
  br i1 %i.a, label %._crit_edge.i, label %.lr.ph.i, !prof !32

._crit_edge.i:                                    ; preds = %bb.e, %bb.a
  %.013.lcssa.i = phi i64 [ %0, %bb.a ], [ %i.k, %bb.e ]
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.j, %bb.e ]
  %i.b = icmp samesign ugt i64 %.013.lcssa.i, 9
  %i.c = zext i1 %i.b to i32
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.020.i = phi i32 [ %i.j, %bb.e ], [ 1, %bb.a ] ; 3 uses
  %.01319.i = phi i64 [ %i.k, %bb.e ], [ %0, %bb.a ] ; 6 uses
  %i.d = icmp ult i64 %.01319.i, 10000
  br i1 %i.d, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp samesign ugt i64 %.01319.i, 999
  %i.f = select i1 %i.e, i32 3, i32 2
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = icmp ult i64 %.01319.i, 1000000
  br i1 %i.g, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.01319.i, 99999
  %i.i = select i1 %i.h, i32 5, i32 4
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add i32 %.020.i, 6                       ; 2 uses
  %i.k = udiv i64 %.01319.i, 1000000              ; 2 uses
  %i.l = icmp ult i64 %.01319.i, 100000000
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i, !prof !34, !llvm.loop !36

_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit: ; preds = %._crit_edge.i, %bb.b, %bb.d
  %.016.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %.020.i, %bb.b ], [ %.020.i, %bb.d ]
  %.pn.i = phi i32 [ %i.c, %._crit_edge.i ], [ %i.f, %bb.b ], [ %i.i, %bb.d ]
  %.1.i = add i32 %.pn.i, %.016.i
  %i.m = zext i32 %.1.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 3 uses
  store i8 0, ptr %i.n, align 1, !tbaa !10
  %i.o = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %0, ptr noundef nonnull %i.n) ; 0 uses
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEmPcj(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferElPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 {
bb.a:
  %.lobit = lshr i64 %0, 63
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.lobit ; 2 uses
  %i.b = tail call noundef i64 @llvm.abs.i64(i64 %0, i1 false) ; 4 uses
  %i.c = icmp ult i64 %i.b, 100
  br i1 %i.c, label %._crit_edge.i, label %.lr.ph.i, !prof !32

._crit_edge.i:                                    ; preds = %bb.e, %bb.a
  %.013.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.m, %bb.e ]
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.l, %bb.e ]
  %i.d = icmp samesign ugt i64 %.013.lcssa.i, 9
  %i.e = zext i1 %i.d to i32
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.020.i = phi i32 [ %i.l, %bb.e ], [ 1, %bb.a ] ; 3 uses
  %.01319.i = phi i64 [ %i.m, %bb.e ], [ %i.b, %bb.a ] ; 6 uses
  %i.f = icmp ult i64 %.01319.i, 10000
  br i1 %i.f, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = icmp samesign ugt i64 %.01319.i, 999
  %i.h = select i1 %i.g, i32 3, i32 2
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = icmp ult i64 %.01319.i, 1000000
  br i1 %i.i, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.01319.i, 99999
  %i.k = select i1 %i.j, i32 5, i32 4
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.e:                                             ; preds = %bb.c
  %i.l = add i32 %.020.i, 6                       ; 2 uses
  %i.m = udiv i64 %.01319.i, 1000000              ; 2 uses
  %i.n = icmp ult i64 %.01319.i, 100000000
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i, !prof !34, !llvm.loop !36

_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit: ; preds = %._crit_edge.i, %bb.b, %bb.d
  %.016.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %.020.i, %bb.b ], [ %.020.i, %bb.d ]
  %.pn.i = phi i32 [ %i.e, %._crit_edge.i ], [ %i.h, %bb.b ], [ %i.k, %bb.d ]
  %.1.i = add i32 %.pn.i, %.016.i
  %i.o = zext i32 %.1.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o ; 3 uses
  store i8 0, ptr %i.p, align 1, !tbaa !10
  %i.q = icmp slt i64 %0, 0
  br i1 %i.q, label %bb.f, label %_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardElPcj.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 -1
  store i8 45, ptr %i.r, align 1, !tbaa !10
  br label %_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardElPcj.exit

_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardElPcj.exit: ; preds = %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit, %bb.f
  %i.s = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %i.b, ptr noundef nonnull %i.p) ; 0 uses
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardElPcj(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIlPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = xor i64 %i.b, -1
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  store i8 45, ptr %i.d, align 1, !tbaa !10
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIlPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit

_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIlPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit: ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i64 @llvm.abs.i64(i64 %0, i1 false)
  %i.f = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %i.e, ptr noundef %1)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIjPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i32 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 1000
  br i1 %i.b, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i32 %0, 10000000
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = urem i32 %0, 100000000                   ; 2 uses
  %i.e = udiv i32 %0, 100000000
  %i.f = udiv i32 %i.d, 10000
  %i.g = urem i32 %i.d, 10000
  %i.h = zext nneg i32 %i.f to i64
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 32
  %i.k = or disjoint i64 %i.j, %i.h               ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, 10486
  %i.m = lshr i64 %i.l, 20
  %i.n = and i64 %i.m, 545460846719               ; 2 uses
  %.neg.i.i.i.i.i = mul nsw i64 %i.n, -100
  %i.o = add nsw i64 %.neg.i.i.i.i.i, %i.k
  %i.p = shl nsw i64 %i.o, 16
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = mul i64 %i.q, 103
  %i.s = lshr i64 %i.r, 10
  %i.t = and i64 %i.s, 4222189076152335           ; 2 uses
  %.neg22.i.i.i.i.i = mul i64 %i.t, 72057594037927926
  %i.u = add i64 %.neg22.i.i.i.i.i, %i.q
  %i.v = shl i64 %i.u, 8
  %i.w = or disjoint i64 %i.t, 3472328296227680304
  %i.x = add i64 %i.w, %i.v
  %i.y = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = urem i32 %0, 10000                       ; 2 uses
  %i.aa = udiv i32 %0, 10000
  %i.ab = mul nuw nsw i32 %i.z, 10486
  %i.ac = lshr i32 %i.ab, 20                      ; 2 uses
  %narrow.neg.i.i.i.i.i = mul nsw i32 %i.ac, -100
  %i.ad = add nsw i32 %narrow.neg.i.i.i.i.i, %i.z
  %i.ae = shl nsw i32 %i.ad, 16
  %i.af = or disjoint i32 %i.ae, %i.ac            ; 2 uses
  %i.ag = mul i32 %i.af, 103
  %i.ah = lshr i32 %i.ag, 10
  %i.ai = and i32 %i.ah, 983055                   ; 2 uses
  %narrow.neg15.i.i.i.i.i = mul i32 %i.ai, 16777206
  %i.aj = add i32 %narrow.neg15.i.i.i.i.i, %i.af
  %i.ak = shl i32 %i.aj, 8
  %i.al = or disjoint i32 %i.ai, 808464432
  %i.am = add i32 %i.al, %i.ak
  %i.an = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  store i32 %i.am, ptr %i.an, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.112.i = phi i32 [ %i.aa, %bb.e ], [ %i.e, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %i.an, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.ao = icmp samesign ugt i32 %.112.i, 9
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.b
  %.213.i = phi i32 [ %0, %bb.b ], [ %.112.i, %bb.f ]
  %.2.i = phi ptr [ %1, %bb.b ], [ %.1.i, %bb.f ] ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i32 %.213.i to i16 ; 2 uses
  %i.ap = urem i16 %.lhs.trunc.i, 100
  %.zext.i = zext nneg i16 %i.ap to i32           ; 2 uses
  %i.aq = udiv i16 %.lhs.trunc.i, 100
  %.zext17.i = zext nneg i16 %i.aq to i32
  %narrow.i.i.i = mul nuw nsw i32 %.zext.i, 103
  %i.ar = lshr i32 %narrow.i.i.i, 10              ; 2 uses
  %.neg.i.i.i = mul nuw nsw i32 %i.ar, 246
  %i.as = add nuw nsw i32 %.neg.i.i.i, %.zext.i
  %i.at = trunc i32 %i.as to i8
  %i.au = add i8 %i.at, 48
  %i.av = getelementptr inbounds i8, ptr %.2.i, i64 -1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = trunc nuw nsw i32 %i.ar to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr inbounds i8, ptr %.2.i, i64 -2 ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.314.i = phi i32 [ %.zext17.i, %bb.g ], [ %.112.i, %bb.f ] ; 2 uses
  %.3.i = phi ptr [ %i.ay, %bb.g ], [ %.1.i, %bb.f ] ; 2 uses
  %.not.i = icmp eq i32 %.314.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_125FastUIntToStringConverterIjPcE23FastIntToBufferBackwardEjS3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %.415.i = phi i32 [ %0, %bb.a ], [ %.314.i, %bb.h ]
  %.4.i = phi ptr [ %1, %bb.a ], [ %.3.i, %bb.h ]
  %i.az = trunc nuw nsw i32 %.415.i to i8
  %i.ba = add nuw nsw i8 %i.az, 48
  %i.bb = getelementptr inbounds i8, ptr %.4.i, i64 -1 ; 2 uses
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !10
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_125FastUIntToStringConverterIjPcE23FastIntToBufferBackwardEjS3_.exit

_ZN4absl12lts_2024011612_GLOBAL__N_125FastUIntToStringConverterIjPcE23FastIntToBufferBackwardEjS3_.exit: ; preds = %bb.h, %bb.i
  %.5.i = phi ptr [ %i.bb, %bb.i ], [ %.3.i, %bb.h ]
  ret ptr %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %0, 10
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %0, 1000
  br i1 %i.b, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %0, 10000000
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %0, 999999999999999
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = urem i64 %0, 100000000
  %i.f = udiv i64 %0, 100000000
  %i.g = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.h = udiv i32 %i.g, 10000
  %i.i = urem i32 %i.g, 10000
  %i.j = zext nneg i32 %i.h to i64
  %i.k = zext nneg i32 %i.i to i64
  %i.l = shl nuw nsw i64 %i.k, 32
  %i.m = or disjoint i64 %i.l, %i.j               ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 10486
  %i.o = lshr i64 %i.n, 20
  %i.p = and i64 %i.o, 545460846719               ; 2 uses
  %.neg.i.i.i.i.i = mul nsw i64 %i.p, -100
  %i.q = add nsw i64 %.neg.i.i.i.i.i, %i.m
  %i.r = shl nsw i64 %i.q, 16
  %i.s = add nsw i64 %i.r, %i.p                   ; 2 uses
  %i.t = mul i64 %i.s, 103
  %i.u = lshr i64 %i.t, 10
  %i.v = and i64 %i.u, 4222189076152335           ; 2 uses
  %.neg22.i.i.i.i.i = mul i64 %i.v, 72057594037927926
  %i.w = add i64 %.neg22.i.i.i.i.i, %i.s
  %i.x = shl i64 %i.w, 8
  %i.y = or disjoint i64 %i.v, 3472328296227680304
  %i.z = add i64 %i.y, %i.x
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  store i64 %i.z, ptr %i.aa, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.015.i = phi i64 [ %i.f, %bb.e ], [ %0, %bb.d ] ; 3 uses
  %.0.i = phi ptr [ %i.aa, %bb.e ], [ %1, %bb.d ]
  %i.ab = urem i64 %.015.i, 100000000
  %i.ac = udiv i64 %.015.i, 100000000             ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ab to i32          ; 2 uses
  %i.ae = udiv i32 %i.ad, 10000
  %i.af = urem i32 %i.ad, 10000
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = shl nuw nsw i64 %i.ah, 32
  %i.aj = or disjoint i64 %i.ai, %i.ag            ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 10486
  %i.al = lshr i64 %i.ak, 20
  %i.am = and i64 %i.al, 545460846719             ; 2 uses
  %.neg.i.i.i.i1.i = mul nsw i64 %i.am, -100
  %i.an = add nsw i64 %.neg.i.i.i.i1.i, %i.aj
  %i.ao = shl nsw i64 %i.an, 16
  %i.ap = add nsw i64 %i.ao, %i.am                ; 2 uses
  %i.aq = mul i64 %i.ap, 103
  %i.ar = lshr i64 %i.aq, 10
  %i.as = and i64 %i.ar, 4222189076152335         ; 2 uses
  %.neg22.i.i.i.i2.i = mul i64 %i.as, 72057594037927926
  %i.at = add i64 %.neg22.i.i.i.i2.i, %i.ap
  %i.au = shl i64 %i.at, 8
  %i.av = or disjoint i64 %i.as, 3472328296227680304
  %i.aw = add i64 %i.av, %i.au
  %i.ax = getelementptr inbounds i8, ptr %.0.i, i64 -8 ; 3 uses
  store i64 %i.aw, ptr %i.ax, align 1
  %i.ay = icmp samesign ugt i64 %.015.i, 99999999999
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.c
  %.116.i = phi i64 [ %0, %bb.c ], [ %i.ac, %bb.f ]
  %.1.i = phi ptr [ %1, %bb.c ], [ %i.ax, %bb.f ]
  %.lhs.trunc23.i = trunc nuw nsw i64 %.116.i to i32 ; 2 uses
  %i.az = urem i32 %.lhs.trunc23.i, 10000         ; 2 uses
  %i.ba = udiv i32 %.lhs.trunc23.i, 10000
  %.zext26.i = zext nneg i32 %i.ba to i64
  %i.bb = mul nuw nsw i32 %i.az, 10486
  %i.bc = lshr i32 %i.bb, 20                      ; 2 uses
  %narrow.neg.i.i.i.i.i = mul nsw i32 %i.bc, -100
  %i.bd = add nsw i32 %narrow.neg.i.i.i.i.i, %i.az
  %i.be = shl nsw i32 %i.bd, 16
  %i.bf = or disjoint i32 %i.be, %i.bc            ; 2 uses
  %i.bg = mul i32 %i.bf, 103
  %i.bh = lshr i32 %i.bg, 10
  %i.bi = and i32 %i.bh, 983055                   ; 2 uses
  %narrow.neg15.i.i.i.i.i = mul i32 %i.bi, 16777206
  %i.bj = add i32 %narrow.neg15.i.i.i.i.i, %i.bf
  %i.bk = shl i32 %i.bj, 8
  %i.bl = or disjoint i32 %i.bi, 808464432
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds i8, ptr %.1.i, i64 -4 ; 2 uses
  store i32 %i.bm, ptr %i.bn, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.217.i = phi i64 [ %.zext26.i, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %.2.i = phi ptr [ %i.bn, %bb.g ], [ %i.ax, %bb.f ] ; 2 uses
  %i.bo = icmp samesign ugt i64 %.217.i, 9
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.b
  %.318.i = phi i64 [ %0, %bb.b ], [ %.217.i, %bb.h ]
  %.3.i = phi ptr [ %1, %bb.b ], [ %.2.i, %bb.h ] ; 2 uses
  %.lhs.trunc.i = trunc i64 %.318.i to i16        ; 2 uses
  %i.bp = urem i16 %.lhs.trunc.i, 100
  %.zext.i = zext nneg i16 %i.bp to i64           ; 2 uses
  %i.bq = udiv i16 %.lhs.trunc.i, 100
  %.zext22.i = zext nneg i16 %i.bq to i64
  %i.br = mul nuw nsw i64 %.zext.i, 103
  %i.bs = lshr i64 %i.br, 10                      ; 2 uses
  %.neg.i.i.i = mul nuw nsw i64 %i.bs, 246
  %i.bt = add nuw nsw i64 %.neg.i.i.i, %.zext.i
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = add i8 %i.bu, 48
  %i.bw = getelementptr inbounds i8, ptr %.3.i, i64 -1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !10
  %i.bx = trunc nuw nsw i64 %i.bs to i8
  %i.by = or disjoint i8 %i.bx, 48
  %i.bz = getelementptr inbounds i8, ptr %.3.i, i64 -2 ; 2 uses
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.419.i = phi i64 [ %.zext22.i, %bb.i ], [ %.217.i, %bb.h ] ; 2 uses
  %.4.i = phi ptr [ %i.bz, %bb.i ], [ %.2.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq i64 %.419.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_125FastUIntToStringConverterImPcE23FastIntToBufferBackwardEmS3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %.520.i = phi i64 [ %0, %bb.a ], [ %.419.i, %bb.j ]
  %.5.i = phi ptr [ %1, %bb.a ], [ %.4.i, %bb.j ]
  %i.ca = trunc nuw nsw i64 %.520.i to i8
  %i.cb = add nuw nsw i8 %i.ca, 48
  %i.cc = getelementptr inbounds i8, ptr %.5.i, i64 -1 ; 2 uses
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !10
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_125FastUIntToStringConverterImPcE23FastIntToBufferBackwardEmS3_.exit

_ZN4absl12lts_2024011612_GLOBAL__N_125FastUIntToStringConverterImPcE23FastIntToBufferBackwardEmS3_.exit: ; preds = %bb.j, %bb.k
  %.6.i = phi ptr [ %i.cc, %bb.k ], [ %.4.i, %bb.j ]
  ret ptr %.6.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4absl12lts_2024011616numbers_internal32GetNumDigitsOrNegativeIfNegativeEa(i8 noundef signext %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef i8 @llvm.abs.i8(i8 %0, i1 false) ; 2 uses
  %i.b = icmp ult i8 %i.a, 100
  %i.c = icmp samesign ugt i8 %i.a, 9
  %i.d = select i1 %i.c, i32 2, i32 1
  %.1.i.i = select i1 %i.b, i32 %i.d, i32 3, !prof !33
  %.lobit.i = ashr i8 %0, 7
  %i.e = sext i8 %.lobit.i to i32
  %i.f = xor i32 %.1.i.i, %i.e
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 1, 4) i32 @_ZN4absl12lts_2024011616numbers_internal32GetNumDigitsOrNegativeIfNegativeEh(i8 noundef zeroext %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i8 %0, 100
  %i.b = icmp samesign ugt i8 %0, 9
  %i.c = select i1 %i.b, i32 2, i32 1
  %.1.i.i = select i1 %i.a, i32 %i.c, i32 3, !prof !33
  ret i32 %.1.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4absl12lts_2024011616numbers_internal32GetNumDigitsOrNegativeIfNegativeEs(i16 noundef signext %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef i16 @llvm.abs.i16(i16 %0, i1 false) ; 4 uses
  %i.b = icmp ult i16 %i.a, 100
  br i1 %i.b, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i16 %i.a, 9
  %i.d = zext i1 %i.c to i32
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplIsEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i16 %i.a, 10000
  br i1 %i.e, label %bb.d, label %_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplIsEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i16 %i.a, 999
  %i.g = select i1 %i.f, i32 3, i32 2
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplIsEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit

_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplIsEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.pn.i.i = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ 4, %bb.c ]
  %.1.i.i = add nuw nsw i32 %.pn.i.i, 1
  %.lobit.i = ashr i16 %0, 15
  %i.h = sext i16 %.lobit.i to i32
  %i.i = xor i32 %.1.i.i, %i.h
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 1, 6) i32 @_ZN4absl12lts_2024011616numbers_internal32GetNumDigitsOrNegativeIfNegativeEt(i16 noundef zeroext %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i16 %0, 100
  br i1 %i.a, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i16 %0, 9
  %i.c = zext i1 %i.b to i32
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplItEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i16 %0, 10000
  br i1 %i.d, label %bb.d, label %_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplItEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ugt i16 %0, 999
  %i.f = select i1 %i.e, i32 3, i32 2
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplItEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit

_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplItEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.pn.i.i = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.d ], [ 4, %bb.c ]
  %.1.i.i = add nuw nsw i32 %.pn.i.i, 1
  ret i32 %.1.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4absl12lts_2024011616numbers_internal32GetNumDigitsOrNegativeIfNegativeEi(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef i32 @llvm.abs.i32(i32 %0, i1 false) ; 3 uses
  %i.b = icmp ult i32 %i.a, 100
  br i1 %i.b, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !32

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.a
  %.013.lcssa.i.i = phi i32 [ %i.a, %bb.a ], [ %i.l, %bb.e ]
  %.0.lcssa.i.i = phi i32 [ 1, %bb.a ], [ %i.k, %bb.e ]
  %i.c = icmp samesign ugt i32 %.013.lcssa.i.i, 9
  %i.d = zext i1 %i.c to i32
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %.020.i.i = phi i32 [ %i.k, %bb.e ], [ 1, %bb.a ] ; 3 uses
  %.01319.i.i = phi i32 [ %i.l, %bb.e ], [ %i.a, %bb.a ] ; 6 uses
  %i.e = icmp ult i32 %.01319.i.i, 10000
  br i1 %i.e, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = icmp samesign ugt i32 %.01319.i.i, 999
  %i.g = select i1 %i.f, i32 3, i32 2
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = icmp ult i32 %.01319.i.i, 1000000
  br i1 %i.h, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ugt i32 %.01319.i.i, 99999
  %i.j = select i1 %i.i, i32 5, i32 4
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = add i32 %.020.i.i, 6                     ; 2 uses
  %i.l = udiv i32 %.01319.i.i, 1000000            ; 2 uses
  %i.m = icmp ult i32 %.01319.i.i, 100000000
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !34, !llvm.loop !35

_ZN4absl12lts_2024011612_GLOBAL__N_136GetNumDigitsOrNegativeIfNegativeImplIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeES4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.d
  %.016.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %.020.i.i, %bb.b ], [ %.020.i.i, %bb.d ]
  %.pn.i.i = phi i32 [ %i.d, %._crit_edge.i.i ], [ %i.g, %bb.b ], [ %i.j, %bb.d ]
  %.1.i.i = add i32 %.pn.i.i, %.016.i.i
  %.lobit.i = ashr i32 %0, 31
  %i.n = xor i32 %.1.i.i, %.lobit.i
  ret i32 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4absl12lts_2024011616numbers_internal32GetNumDigitsOrNegativeIfNegativeEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %0, 100
  br i1 %i.a, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !32

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.a
end_hunk_0
