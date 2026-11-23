Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/bitmap_ops?download=true
inline.NumInlined: 402
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN5arrow8internal15CountAndSetBitsEPKhlS2_ll(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 !guid !69 {
bb.a:
  %i.a = srem i64 %1, 8                           ; 5 uses
  %i.b = sdiv i64 %1, 8
  %i.c = srem i64 %3, 8                           ; 5 uses
  %i.d = sdiv i64 %3, 8
  %.not36.i = icmp eq i64 %i.a, 0
  %i.e = sub nsw i64 128, %i.a
  %spec.select.i = select i1 %.not36.i, i64 64, i64 %i.e
  %.not37.i = icmp eq i64 %i.c, 0
  %i.f = sub nsw i64 128, %i.c
  %i.g = select i1 %.not37.i, i64 64, i64 %i.f
  %i.h = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %i.g)
  %i.i = or i64 %i.c, %i.a
  %brmerge.not.i = icmp eq i64 %i.i, 0
  %.not.i17 = icmp eq i64 %4, 0
  br i1 %.not.i17, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i7.i = icmp eq ptr %2, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i = select i1 %.not.i7.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %2, !prof !23
  %i.j = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i, i64 %i.d
  %.not.i.i = icmp eq ptr %0, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i = select i1 %.not.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %0, !prof !23
  %i.k = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i, i64 %i.b
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.0721 = phi i64 [ 0, %.lr.ph ], [ %.07.be, %.backedge ] ; 2 uses
  %.sroa.0.020 = phi ptr [ %i.k, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 5 uses
  %.sroa.9.019 = phi ptr [ %i.j, %.lr.ph ], [ %.sroa.9.0.be, %.backedge ] ; 6 uses
  %.sroa.17.018 = phi i64 [ %4, %.lr.ph ], [ %.sroa.17.0.be, %.backedge ] ; 4 uses
  %i.l = icmp slt i64 %.sroa.17.018, %i.h
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated31.i = tail call i64 @llvm.smin.i64(i64 %.sroa.17.018, i64 64) ; 3 uses
  %i.m = trunc i64 %.sroa.speculated31.i to i16
  %sext.i = shl i64 %.sroa.speculated31.i, 48
  %i.n = ashr exact i64 %sext.i, 48               ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.p = sext i16 %spec.select20.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.c
  %.016.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.p, %._crit_edge.i.loopexit ]
  %i.q = sdiv i16 %i.m, 8
  %i.r = sext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.020, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %.sroa.9.019, i64 %i.r
  %i.u = sub nsw i64 %.sroa.17.018, %i.n
  %i.v = and i64 %.sroa.speculated31.i, 65535
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit
  %.sroa.17.0.be = phi i64 [ %i.aw, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ], [ %i.u, %._crit_edge.i ] ; 2 uses
  %.sroa.9.0.be = phi ptr [ %i.av, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ], [ %i.t, %._crit_edge.i ]
  %.sroa.0.0.be = phi ptr [ %i.au, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ], [ %i.s, %._crit_edge.i ]
  %.pn = phi i64 [ %i.at, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ], [ %.016.lcssa.i, %._crit_edge.i ]
  %.07.be = add nsw i64 %.pn, %.0721              ; 2 uses
  %.not.i = icmp eq i64 %.sroa.17.0.be, 0
  br i1 %.not.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %bb.b

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.01540.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 0, %bb.c ] ; 3 uses
  %.01639.i = phi i16 [ %spec.select20.i, %.lr.ph.i ], [ 0, %bb.c ]
  %i.x = add nsw i64 %.01540.i, %i.a              ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17
  %i.ab = trunc i64 %i.x to i8
  %i.ac = and i8 %i.ab, 7
  %i.ad = lshr i8 %i.aa, %i.ac
  %i.ae = add nsw i64 %.01540.i, %i.c             ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.9.019, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = lshr i8 %i.ah, %i.aj
  %i.al = and i8 %i.ad, 1
  %i.am = and i8 %i.al, %i.ak
  %i.an = zext nneg i8 %i.am to i16
  %spec.select20.i = add i16 %.01639.i, %i.an     ; 2 uses
  %i.ao = add nuw nsw i64 %.01540.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !68

bb.d:                                             ; preds = %bb.b
  %.0.copyload.i.i.i = load i64, ptr %.sroa.0.020, align 1 ; 2 uses
  br i1 %brmerge.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i22.i = load i64, ptr %.sroa.9.019, align 1
  %i.ap = and i64 %.0.copyload.i.i22.i, %.0.copyload.i.i.i
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8
  %.0.copyload.i.i24.i = load i64, ptr %i.aq, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i24.i, i64 %.0.copyload.i.i.i, i64 %i.a)
  %.0.copyload.i.i25.i = load i64, ptr %.sroa.9.019, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.9.019, i64 8
  %.0.copyload.i.i26.i = load i64, ptr %i.ar, align 1
  %.0.i27.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i26.i, i64 %.0.copyload.i.i25.i, i64 %i.c)
  %i.as = and i64 %.0.i27.i, %.0.i.i
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit: ; preds = %bb.e, %bb.f
  %.sink.i = phi i64 [ %i.as, %bb.f ], [ %i.ap, %bb.e ]
  %i.at = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.9.019, i64 8
  %i.aw = add nsw i64 %.sroa.17.018, -64
  br label %.backedge

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread: ; preds = %.backedge, %._crit_edge.i, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %.07.be, %.backedge ], [ %.0721, %._crit_edge.i ]
  ret i64 %.07.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @_ZN5arrow8internal12ReverseUint8Eh(i8 noundef zeroext %0) local_unnamed_addr #4 !guid !70 {
bb.a:
  %rev = tail call i8 @llvm.bitreverse.i8(i8 %0)
  ret i8 %rev
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @_ZN5arrow8internal16GetReversedBlockEhhh(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #4 !guid !71 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = shl nuw nsw i32 %i.a, 8
  %i.c = zext i8 %0 to i32
  %i.d = or disjoint i32 %i.b, %i.c
  %i.e = zext nneg i8 %2 to i32
  %i.f = lshr i32 %i.d, %i.e
  %i.g = trunc i32 %i.f to i8
  %rev.i = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.g)
  ret i8 %rev.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal19ReverseBlockOffsetsEPKhlllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #5 !guid !72 {
bb.a:
  %i.a = sdiv i64 %1, 8
  %i.b = srem i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = sdiv i64 %3, 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add nsw i64 %i.b, %2                     ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.g, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %i.m = add nsw i64 %i.i, %i.l
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.04858 = phi i64 [ %i.bd, %bb.g ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04957 = phi i64 [ %spec.select, %bb.g ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %.05056 = phi i64 [ %i.ba, %bb.g ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.05155 = phi i64 [ %i.bb, %bb.g ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %i.n = add nsw i64 %.05155, %1
  %i.o = srem i64 %i.n, 8                         ; 2 uses
  %i.p = trunc nsw i64 %i.o to i8
  %.not = icmp eq i64 %i.o, 0
  %i.q = select i1 %.not, i8 8, i8 %i.p           ; 2 uses
  %i.r = srem i64 %.05056, 8                      ; 2 uses
  %i.s = trunc nsw i64 %i.r to i8
  %i.t = sub nsw i8 8, %i.s                       ; 3 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = sub nsw i32 8, %i.u                      ; 2 uses
  %i.w = shl nuw nsw i32 255, %i.v                ; 3 uses
  %i.x = icmp samesign ult i64 %.05155, 9
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.y = add nsw i64 %i.r, %.05155                ; 2 uses
  %i.z = icmp slt i64 %i.y, 8
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = trunc nsw i64 %i.y to i32
  %i.ab = sub nsw i32 8, %i.aa
  %5 = lshr i32 255, %i.ab
  %i.ac = and i32 %i.w, %5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %.047.in = phi i32 [ %i.ac, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.ad = icmp eq i64 %.04957, 0
  %i.ae = zext nneg i8 %i.q to i32
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %i.c, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = or disjoint i32 %i.ah, %i.ag
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.c, i64 %.04957
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = zext i16 %i.al to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.am, %bb.f ], [ %i.ai, %bb.e ]
  %i.an = lshr i32 %.sink, %i.ae
  %i.ao = trunc i32 %i.an to i8
  %rev.i.i54 = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04858 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = trunc i32 %.047.in to i8
  %i.as = xor i8 %i.ar, -1
  %i.at = and i8 %i.aq, %i.as
  %i.au = zext i8 %rev.i.i54 to i32
  %i.av = shl nuw nsw i32 %i.au, %i.v
  %i.aw = and i32 %i.av, %.047.in
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = or i8 %i.at, %i.ax
  store i8 %i.ay, ptr %i.ap, align 1, !tbaa !17
  %i.az = zext nneg i8 %i.t to i64                ; 2 uses
  %i.ba = add nsw i64 %.05056, %i.az
  %i.bb = sub nsw i64 %.05155, %i.az              ; 2 uses
  %.not53 = icmp uge i8 %i.t, %i.q
  %i.bc = sext i1 %.not53 to i64
  %spec.select = add nsw i64 %.04957, %i.bc
  %i.bd = add nuw nsw i64 %.04858, 1
  %i.be = icmp sgt i64 %i.bb, 0
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 !guid !73 {
bb.a:
  tail call void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #6 comdat !guid !77 {
bb.a:
  %i.a = or i64 %3, %1
  %i.b = and i64 %i.a, 7
  %or.cond.not = icmp eq i64 %i.b, 0
  br i1 %or.cond.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = srem i64 %1, 8                           ; 10 uses
  %i.d = sdiv i64 %1, 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 8 uses
  %i.f = lshr i64 %2, 6                           ; 3 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 1) ; 5 uses
  %i.g = shl nuw i64 %spec.select.i, 6
  %i.h = sub i64 %2, %i.g                         ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %sext.i = shl i64 %i.h, 32
  %i.j = ashr i64 %sext.i, 35
  %i.k = and i64 %2, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i64
  %i.n = add nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = trunc nsw i64 %i.n to i32
  %.not.i = icmp ult i64 %2, 128                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i = load i64, ptr %i.e, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

bb.d:                                             ; preds = %bb.b
  %.not8.i = icmp eq i64 %2, 0
  br i1 %.not8.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i7.i = load i8, ptr %i.e, align 1
  %.sroa.23.40.insert.ext = zext i8 %.0.copyload.i.i7.i to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit: ; preds = %bb.c, %bb.e
  %.sroa.23.2 = phi i64 [ %.0.copyload.i.i.i, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.e ] ; 5 uses
  %i.p = srem i64 %3, 8                           ; 5 uses
  %i.q = sdiv i64 %3, 8
  %i.r = getelementptr inbounds i8, ptr %4, i64 %i.q ; 7 uses
  %i.s = trunc nsw i64 %i.p to i32                ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.s
  %i.t = xor i32 %notmask.i, -1
  %i.u = zext nneg i32 %i.t to i64                ; 8 uses
  %.not.i39 = icmp eq i64 %i.p, 0                 ; 3 uses
  br i1 %.not.i39, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.f

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread: ; preds = %bb.d
  %i.v = srem i64 %3, 8                           ; 3 uses
  %i.w = sdiv i64 %3, 8
  %i.x = getelementptr inbounds i8, ptr %4, i64 %i.w
  %i.y = trunc nsw i64 %i.v to i32                ; 2 uses
  %notmask.i137 = shl nsw i32 -1, %i.y
  %i.z = xor i32 %notmask.i137, -1
  %i.aa = zext nneg i32 %i.z to i64
  %.not.i39138 = icmp eq i64 %i.v, 0
  br label %.preheader

bb.f:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit
  %i.ab = icmp sgt i64 %2, 63
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.0.copyload.i.i.i40 = load i64, ptr %i.r, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %2, 0
  br i1 %i.ac, label %bb.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.i:                                             ; preds = %bb.h
  %.0.copyload.i.i6.i = load i8, ptr %i.r, align 1
  %.sroa.22.32.insert.ext = zext i8 %.0.copyload.i.i6.i to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit, %bb.g, %bb.h
  %i.ad = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.s, %bb.g ], [ %i.s, %bb.h ] ; 4 uses
  %i.ae = phi i64 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.p, %bb.g ], [ %i.p, %bb.h ] ; 6 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %.0.copyload.i.i.i40, %bb.g ], [ undef, %bb.h ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.af = sub nsw i64 64, %i.ae
  %i.ag = xor i64 %i.u, -1                        ; 2 uses
  br i1 %.not.i39, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.ah = add nsw i64 %i.f, -1
  %i.ai = icmp ne i64 %i.f, 0
  %umin.neg = sext i1 %i.ai to i64
  %i.aj = add nsw i64 %i.ah, %umin.neg
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol
  %.0107.us.prol = phi i64 [ %i.ak, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.6.0106.us.prol = phi ptr [ %i.an, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.r, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ] ; 2 uses
  %.sroa.674.0104.us.prol = phi ptr [ %i.al, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.e, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.23.0103.us.prol = phi i64 [ %i.am, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ 0, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %i.ak = add nsw i64 %.0107.us.prol, -1          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.674.0104.us.prol, i64 8 ; 4 uses
  %.0.copyload.i.i.i41.us.prol = load i64, ptr %i.al, align 1
  %i.am = freeze i64 %.0.copyload.i.i.i41.us.prol ; 4 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.am, i64 %.sroa.23.0103.us.prol, i64 %i.c)
  store i64 %.0.i.us.prol, ptr %.sroa.6.0106.us.prol, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, !llvm.loop !74

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa172.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.al, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa171.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.am, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.an, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.0107.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ak, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0106.us.unr = phi ptr [ %i.r, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.an, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.674.0104.us.unr = phi ptr [ %i.e, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.al, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0103.us.unr = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.am, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.ao = icmp ult i64 %i.aj, 3
  br i1 %i.ao, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.ap = and i64 %.sroa.22.2, %i.u
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.0107.us = phi i64 [ %i.az, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.0107.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0106.us = phi ptr [ %i.bc, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0106.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 5 uses
  %.sroa.674.0104.us = phi ptr [ %i.ba, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.674.0104.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 4 uses
  %.sroa.23.0103.us = phi i64 [ %i.bb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0103.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.674.0104.us, i64 8
  %.0.copyload.i.i.i41.us = load i64, ptr %i.aq, align 1
  %i.ar = freeze i64 %.0.copyload.i.i.i41.us      ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.ar, i64 %.sroa.23.0103.us, i64 %i.c)
  store i64 %.0.i.us, ptr %.sroa.6.0106.us, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.6.0106.us, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.674.0104.us, i64 16
  %.0.copyload.i.i.i41.us.1 = load i64, ptr %i.at, align 1
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEEvPKhlllPh:bb.a
  %i.hs = zext i1 %i.hr to i64                    ; 2 uses
  %i.ht = add nsw i64 %i.hp, %i.hs                ; 5 uses
  %i.hu = sdiv i64 %1, 8                          ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %0, i64 %i.hu ; 8 uses
  %i.hw = sdiv i64 %3, 8                          ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %4, i64 %i.hw ; 8 uses
  %i.hy = shl nsw i64 %i.ht, 3
  %.neg = sub i64 %2, %i.hy
  %i.hz = trunc i64 %.neg to i32
  %i.ia = add i32 %i.hz, 8
  %notmask = shl nsw i32 -1, %i.ia
  %i.ib = add nsw i64 %i.ht, -1                   ; 8 uses
  %i.ic = icmp sgt i64 %i.ht, 1
  br i1 %i.ic, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.ag
  %min.iters.check = icmp ult i64 %i.ht, 5
  br i1 %min.iters.check, label %.lr.ph129.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.id = add i64 %i.hu, %i.b
  %i.ie = add i64 %i.hw, %i.a
  %i.if = sub i64 %i.id, %i.ie
  %diff.check = icmp ugt i64 %i.if, -32
  br i1 %diff.check, label %.lr.ph129.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check179 = icmp ult i64 %i.ht, 33
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ig = and i64 %i.ib, 28
  %n.vec = and i64 %i.ib, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %wide.load = load <16 x i8>, ptr %i.ih, align 1, !tbaa !17
  %wide.load180 = load <16 x i8>, ptr %i.ii, align 1, !tbaa !17
  %i.ij = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.ik = xor <16 x i8> %wide.load180, splat (i8 -1)
  %i.il = getelementptr inbounds nuw i8, ptr %i.hx, i64 %index ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <16 x i8> %i.ij, ptr %i.il, align 1, !tbaa !17
  store <16 x i8> %i.ik, ptr %i.im, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ib, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ig, 0
  br i1 %min.epilog.iters.check, label %.lr.ph129.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec181 = and i64 %i.ib, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index182 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hv, i64 %index182
  %wide.load183 = load <4 x i8>, ptr %i.io, align 1, !tbaa !17
  %i.ip = xor <4 x i8> %wide.load183, splat (i8 -1)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hx, i64 %index182
  store <4 x i8> %i.ip, ptr %i.iq, align 1, !tbaa !17
  %index.next184 = add nuw i64 %index182, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next184, %n.vec181
  br i1 %i.ir, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n185 = icmp eq i64 %i.ib, %n.vec181
  br i1 %cmp.n185, label %._crit_edge, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0128.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec181, %vec.epilog.middle.block ] ; 3 uses
  %i.is = add nsw i64 %i.hp, %i.hs                ; 2 uses
  %i.it = add nsw i64 %i.is, 3
  %i.iu = add nsw i64 %i.is, -2
  %i.iv = sub nsw i64 %i.iu, %.0128.ph
  %xtraiter193 = and i64 %i.it, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph129.prol.loopexit, label %.lr.ph129.prol

.lr.ph129.prol:                                   ; preds = %.lr.ph129.preheader, %.lr.ph129.prol
  %.0128.prol = phi i64 [ %i.ja, %.lr.ph129.prol ], [ %.0128.ph, %.lr.ph129.preheader ] ; 3 uses
  %prol.iter195 = phi i64 [ %prol.iter195.next, %.lr.ph129.prol ], [ 0, %.lr.ph129.preheader ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.0128.prol
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !17
  %i.iy = xor i8 %i.ix, -1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.0128.prol
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !17
  %i.ja = add nuw nsw i64 %.0128.prol, 1          ; 2 uses
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %.lr.ph129.prol.loopexit, label %.lr.ph129.prol, !llvm.loop !84

.lr.ph129.prol.loopexit:                          ; preds = %.lr.ph129.prol, %.lr.ph129.preheader
  %.0128.unr = phi i64 [ %.0128.ph, %.lr.ph129.preheader ], [ %i.ja, %.lr.ph129.prol ]
  %i.jb = icmp ult i64 %i.iv, 3
  br i1 %i.jb, label %._crit_edge, label %.lr.ph129

._crit_edge:                                      ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129, %middle.block, %vec.epilog.middle.block, %bb.ag
  %i.jc = getelementptr inbounds i8, ptr %i.hv, i64 %i.ib
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !17
  %i.je = getelementptr inbounds i8, ptr %i.hx, i64 %i.ib ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !17
  %i.jg = trunc i32 %notmask to i8                ; 2 uses
  %i.jh = and i8 %i.jf, %i.jg
  %.demorgan = or i8 %i.jd, %i.jg
  %i.ji = xor i8 %.demorgan, -1
  %i.jj = or i8 %i.jh, %i.ji
  store i8 %i.jj, ptr %i.je, align 1, !tbaa !17
  br label %.loopexit

.lr.ph129:                                        ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129
  %.0128 = phi i64 [ %i.kd, %.lr.ph129 ], [ %.0128.unr, %.lr.ph129.prol.loopexit ] ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.0128
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !17
  %i.jm = xor i8 %i.jl, -1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.0128
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !17
  %i.jo = add nuw nsw i64 %.0128, 1               ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !17
  %i.jr = xor i8 %i.jq, -1
  %i.js = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jo
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !17
  %i.jt = add nuw nsw i64 %.0128, 2               ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !17
  %i.jw = xor i8 %i.jv, -1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jt
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !17
  %i.jy = add nuw nsw i64 %.0128, 3               ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !17
  %i.kb = xor i8 %i.ka, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jy
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !17
  %i.kd = add nuw nsw i64 %.0128, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kd, %i.ib
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph129, !llvm.loop !85

.loopexit:                                        ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader, %bb.af, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal13ReverseBitmapEPKhllPhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #5 !guid !87 {
bb.a:
  %i.a = sdiv i64 %1, 8
  %i.b = srem i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = sdiv i64 %4, 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph.preheader.i, label %_ZN5arrow8internal19ReverseBlockOffsetsEPKhlllPh.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = add nsw i64 %i.b, %2                     ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.g, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %i.m = add nsw i64 %i.i, %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.04858.i = phi i64 [ %i.bd, %bb.g ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.04957.i = phi i64 [ %spec.select.i, %bb.g ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %.05056.i = phi i64 [ %i.ba, %bb.g ], [ %4, %.lr.ph.preheader.i ] ; 2 uses
  %.05155.i = phi i64 [ %i.bb, %bb.g ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %i.n = add nsw i64 %.05155.i, %1
  %i.o = srem i64 %i.n, 8                         ; 2 uses
  %i.p = trunc nsw i64 %i.o to i8
  %.not.i = icmp eq i64 %i.o, 0
  %i.q = select i1 %.not.i, i8 8, i8 %i.p         ; 2 uses
  %i.r = srem i64 %.05056.i, 8                    ; 2 uses
  %i.s = trunc nsw i64 %i.r to i8
  %i.t = sub nsw i8 8, %i.s                       ; 3 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = sub nsw i32 8, %i.u                      ; 2 uses
  %i.w = shl nuw nsw i32 255, %i.v                ; 3 uses
  %i.x = icmp samesign ult i64 %.05155.i, 9
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = add nsw i64 %i.r, %.05155.i              ; 2 uses
  %i.z = icmp slt i64 %i.y, 8
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = trunc nsw i64 %i.y to i32
  %i.ab = sub nsw i32 8, %i.aa
  %5 = lshr i32 255, %i.ab
  %i.ac = and i32 %i.w, %5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.047.in.i = phi i32 [ %i.ac, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.ad = icmp eq i64 %.04957.i, 0
  %i.ae = zext nneg i8 %i.q to i32
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %i.c, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = or disjoint i32 %i.ah, %i.ag
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.c, i64 %.04957.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = zext i16 %i.al to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i = phi i32 [ %i.am, %bb.f ], [ %i.ai, %bb.e ]
  %i.an = lshr i32 %.sink.i, %i.ae
  %i.ao = trunc i32 %i.an to i8
  %rev.i.i54.i = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04858.i ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = trunc i32 %.047.in.i to i8
  %i.as = xor i8 %i.ar, -1
  %i.at = and i8 %i.aq, %i.as
  %i.au = zext i8 %rev.i.i54.i to i32
  %i.av = shl nuw nsw i32 %i.au, %i.v
  %i.aw = and i32 %i.av, %.047.in.i
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = or i8 %i.at, %i.ax
  store i8 %i.ay, ptr %i.ap, align 1, !tbaa !17
  %i.az = zext nneg i8 %i.t to i64                ; 2 uses
  %i.ba = add nsw i64 %.05056.i, %i.az
  %i.bb = sub nsw i64 %.05155.i, %i.az            ; 2 uses
  %.not53.i = icmp uge i8 %i.t, %i.q
  %i.bc = sext i1 %.not53.i to i64
  %spec.select.i = add nsw i64 %.04957.i, %i.bc
  %i.bd = add nuw nsw i64 %.04858.i, 1
  %i.be = icmp sgt i64 %i.bb, 0
  br i1 %i.be, label %.lr.ph.i, label %_ZN5arrow8internal19ReverseBlockOffsetsEPKhlllPh.exit, !llvm.loop !0

_ZN5arrow8internal19ReverseBlockOffsetsEPKhlllPh.exit: ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal10CopyBitmapEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 !guid !88 {
bb.a:
  tail call void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !guid !94 {
bb.a:
  %5 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, i64 noundef %4, ptr noundef %1)
  %i.a = load ptr, ptr %5, align 8, !tbaa !30
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !97 ; 5 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !35, !alias.scope !97
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36, !noalias !97 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !36, !noalias !97
  store ptr %i.g, ptr %i.e, align 8, !tbaa !36, !alias.scope !97
  store ptr null, ptr %i.c, align 8, !tbaa !35, !noalias !97
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !45, !range !46, !noundef !47
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !46
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !25 ; 2 uses
  invoke void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEEvPKhlllPh(ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 0, ptr noundef %i.q)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %4, 7
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %i.t = icmp slt i64 %4, %i.s
  br i1 %i.t, label %.lr.ph, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.lr.ph, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.u, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.v, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.w

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.026 = phi i64 [ %i.ae, %.lr.ph ], [ %4, %bb.d ] ; 3 uses
  %i.x = srem i64 %.026, 8
  %i.y = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL15kFlippedBitmaskE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !17
  %i.aa = sdiv i64 %.026, 8
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ad = and i8 %i.ac, %i.z
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !17
  %i.ae = add nsw i64 %.026, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.s
  br i1 %exitcond.not, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.lr.ph, !llvm.loop !93

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %i.af = load ptr, ptr %5, align 8, !tbaa !30
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !25

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aj, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !50
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21, !inline_history !2
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21, !inline_history !2
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.k ], [ %i.aw, %bb.l ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.m, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !23

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %bb.g
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !30
  %.not.i.i25 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i25, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !54

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
end_hunk_1
