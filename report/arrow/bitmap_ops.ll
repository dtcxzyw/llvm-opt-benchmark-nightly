inline.NumInlined: 424
inline.NumDeleted: 159
begin_hunk_0_@_ZN5arrow8internal12CountSetBitsEPKhll:bb.a
  %i.u = and i8 %i.t, 1
  %i.v = zext nneg i8 %i.u to i64
  %spec.select = add nuw nsw i64 %.03948, %i.v    ; 2 uses
  %i.w = add nsw i64 %.04047, 1                   ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.j
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !8

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.h ; 2 uses
  %.not66 = icmp ult i64 %i.g, 256
  br i1 %.not66, label %.preheader45, label %.preheader46.preheader

.preheader46.preheader:                           ; preds = %bb.b
  %i.z = add nsw i64 %i.h, -4                     ; 2 uses
  %i.aa = lshr i64 %i.z, 2                        ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %.preheader46.epil.preheader, label %.preheader46.preheader.new

.preheader46.preheader.new:                       ; preds = %.preheader46.preheader
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46, %.preheader46.preheader.new
  %.sroa.0.0 = phi i64 [ 0, %.preheader46.preheader.new ], [ %i.av, %.preheader46 ]
  %.sroa.6.0 = phi i64 [ 0, %.preheader46.preheader.new ], [ %i.az, %.preheader46 ]
  %.sroa.9.0 = phi i64 [ 0, %.preheader46.preheader.new ], [ %i.bd, %.preheader46 ]
  %.sroa.12.0 = phi i64 [ 0, %.preheader46.preheader.new ], [ %i.bh, %.preheader46 ]
  %.04150 = phi ptr [ %i.m, %.preheader46.preheader.new ], [ %i.bi, %.preheader46 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader46.preheader.new ], [ %niter.next.1, %.preheader46 ]
  %i.ad = load i64, ptr %.04150, align 8, !tbaa !10
  %i.ae = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ad)
  %i.af = add i64 %.sroa.0.0, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.04150, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !10
  %i.ai = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
  %i.aj = add i64 %.sroa.6.0, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.04150, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.al)
  %i.an = add i64 %.sroa.9.0, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.04150, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10
  %i.aq = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ap)
  %i.ar = add i64 %.sroa.12.0, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.04150, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10
  %i.au = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.at)
  %i.av = add i64 %i.af, %i.au                    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.04150, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.az = add i64 %i.aj, %i.ay                    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04150, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bb)
  %i.bd = add i64 %i.an, %i.bc                    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04150, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !10
  %i.bg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bf)
  %i.bh = add i64 %i.ar, %i.bg                    ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.04150, i64 64 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader45.loopexit.unr-lcssa, label %.preheader46, !llvm.loop !12

.preheader45.loopexit.unr-lcssa:                  ; preds = %.preheader46
  %i.bj = and i64 %i.z, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bj, 0
  br i1 %lcmp.mod.not.not, label %.preheader46.epil.preheader, label %.preheader45

.preheader46.epil.preheader:                      ; preds = %.preheader45.loopexit.unr-lcssa, %.preheader46.preheader
  %.sroa.0.0.epil.init = phi i64 [ 0, %.preheader46.preheader ], [ %i.av, %.preheader45.loopexit.unr-lcssa ]
  %.sroa.6.0.epil.init = phi i64 [ 0, %.preheader46.preheader ], [ %i.az, %.preheader45.loopexit.unr-lcssa ]
  %.sroa.9.0.epil.init = phi i64 [ 0, %.preheader46.preheader ], [ %i.bd, %.preheader45.loopexit.unr-lcssa ]
  %.sroa.12.0.epil.init = phi i64 [ 0, %.preheader46.preheader ], [ %i.bh, %.preheader45.loopexit.unr-lcssa ]
  %.04150.epil.init = phi ptr [ %i.m, %.preheader46.preheader ], [ %i.bi, %.preheader45.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod100 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.bk = load i64, ptr %.04150.epil.init, align 8, !tbaa !10
  %i.bl = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bk)
  %i.bm = add i64 %.sroa.0.0.epil.init, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bp = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bo)
  %i.bq = add i64 %.sroa.6.0.epil.init, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !10
  %i.bt = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bs)
  %i.bu = add i64 %.sroa.9.0.epil.init, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !10
  %i.bx = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bw)
  %i.by = add i64 %.sroa.12.0.epil.init, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 32
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader46.epil.preheader, %.preheader45.loopexit.unr-lcssa, %bb.b
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %i.av, %.preheader45.loopexit.unr-lcssa ], [ %i.bm, %.preheader46.epil.preheader ]
  %.sroa.6.1 = phi i64 [ 0, %bb.b ], [ %i.az, %.preheader45.loopexit.unr-lcssa ], [ %i.bq, %.preheader46.epil.preheader ]
  %.sroa.9.1 = phi i64 [ 0, %bb.b ], [ %i.bd, %.preheader45.loopexit.unr-lcssa ], [ %i.bu, %.preheader46.epil.preheader ]
  %.sroa.12.1 = phi i64 [ 0, %bb.b ], [ %i.bh, %.preheader45.loopexit.unr-lcssa ], [ %i.by, %.preheader46.epil.preheader ]
  %.041.lcssa = phi ptr [ %i.m, %bb.b ], [ %i.bi, %.preheader45.loopexit.unr-lcssa ], [ %i.bz, %.preheader46.epil.preheader ] ; 2 uses
  %i.ca = add nsw i64 %.sroa.0.1, %.039.lcssa
  %i.cb = add nsw i64 %.sroa.6.1, %i.ca
  %i.cc = add nsw i64 %.sroa.9.1, %i.cb
  %i.cd = add nsw i64 %.sroa.12.1, %i.cc          ; 2 uses
  %i.ce = icmp ult ptr %.041.lcssa, %i.y
  br i1 %i.ce, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %.preheader45, %.lr.ph57
  %.356 = phi i64 [ %i.ch, %.lr.ph57 ], [ %i.cd, %.preheader45 ]
  %.14255 = phi ptr [ %i.ci, %.lr.ph57 ], [ %.041.lcssa, %.preheader45 ] ; 2 uses
  %i.cf = load i64, ptr %.14255, align 8, !tbaa !10
  %i.cg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cf)
  %i.ch = add i64 %i.cg, %.356                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.14255, i64 8 ; 2 uses
  %i.cj = icmp ult ptr %i.ci, %i.y
  br i1 %i.cj, label %.lr.ph57, label %._crit_edge58, !llvm.loop !13

._crit_edge58:                                    ; preds = %.lr.ph57, %.preheader45, %._crit_edge
  %.4 = phi i64 [ %.039.lcssa, %._crit_edge ], [ %i.cd, %.preheader45 ], [ %i.ch, %.lr.ph57 ] ; 2 uses
  %i.ck = add nsw i64 %2, %1                      ; 2 uses
  %i.cl = icmp slt i64 %i.k, %i.ck
  br i1 %i.cl, label %.lr.ph63, label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63, %._crit_edge58
  %.5.lcssa = phi i64 [ %.4, %._crit_edge58 ], [ %spec.select44, %.lr.ph63 ]
  ret i64 %.5.lcssa

.lr.ph63:                                         ; preds = %._crit_edge58, %.lr.ph63
  %.061 = phi i64 [ %i.cu, %.lr.ph63 ], [ %i.k, %._crit_edge58 ] ; 3 uses
  %.560 = phi i64 [ %spec.select44, %.lr.ph63 ], [ %.4, %._crit_edge58 ]
  %i.cm = lshr i64 %.061, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !7
  %i.cp = trunc i64 %.061 to i8
  %i.cq = and i8 %i.cp, 7
  %i.cr = lshr i8 %i.co, %i.cq
  %i.cs = and i8 %i.cr, 1
  %i.ct = zext nneg i8 %i.cs to i64
  %spec.select44 = add nsw i64 %.560, %i.ct       ; 2 uses
  %i.cu = add nsw i64 %.061, 1                    ; 2 uses
  %i.cv = icmp slt i64 %i.cu, %i.ck
  br i1 %i.cv, label %.lr.ph63, label %._crit_edge64, !llvm.loop !14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN5arrow8internal15CountAndSetBitsEPKhlS2_ll(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i = select i1 %.not.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %0, !prof !15
  %i.a = sdiv i64 %1, 8
  %i.b = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i, i64 %i.a
  %i.c = srem i64 %1, 8                           ; 5 uses
  %.not.i7.i = icmp eq ptr %2, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i = select i1 %.not.i7.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %2, !prof !15
  %i.d = sdiv i64 %3, 8
  %i.e = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i8.i, i64 %i.d
  %i.f = srem i64 %3, 8                           ; 5 uses
  %i.g = icmp eq i64 %i.c, 0
  %i.h = sub nsw i64 128, %i.c
  %spec.select.i = select i1 %i.g, i64 64, i64 %i.h
  %i.i = icmp eq i64 %i.f, 0
  %i.j = sub nsw i64 128, %i.f
  %i.k = select i1 %i.i, i64 64, i64 %i.j
  %i.l = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %i.k)
  %i.m = or i64 %i.f, %i.c
  %or.cond.i = icmp eq i64 %i.m, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit, %bb.a
  %.sroa.9.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.9.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 6 uses
  %.sroa.17.0 = phi i64 [ %4, %bb.a ], [ %.sroa.17.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.b, %bb.a ], [ %.sroa.0.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.07 = phi i64 [ 0, %bb.a ], [ %i.bd, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.17.0, 0
  br i1 %.not.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %.sroa.17.0, %i.l
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated27.i = tail call i64 @llvm.smin.i64(i64 %.sroa.17.0, i64 64) ; 3 uses
  %i.o = trunc i64 %.sroa.speculated27.i to i16
  %sext.i = shl i64 %.sroa.speculated27.i, 48
  %i.p = ashr exact i64 %sext.i, 48               ; 3 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.016.lcssa.i = phi i16 [ 0, %bb.d ], [ %spec.select20.i, %.lr.ph.i ]
  %i.r = sdiv i16 %i.o, 8
  %i.s = sext i16 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %.sroa.9.0, i64 %i.s
  %i.v = sub nsw i64 %.sroa.17.0, %i.p
  %i.w = and i64 %.sroa.speculated27.i, 65535
  %i.x = icmp eq i64 %i.w, 0
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01532.i = phi i64 [ %i.ap, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %.01631.i = phi i16 [ %spec.select20.i, %.lr.ph.i ], [ 0, %bb.d ]
  %i.y = add nsw i64 %.01532.i, %i.c              ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ac = trunc i64 %i.y to i8
  %i.ad = and i8 %i.ac, 7
  %i.ae = lshr i8 %i.ab, %i.ad
  %i.af = add nsw i64 %.01532.i, %i.f             ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !7
  %i.aj = trunc i64 %i.af to i8
  %i.ak = and i8 %i.aj, 7
  %i.al = lshr i8 %i.ai, %i.ak
  %i.am = and i8 %i.ae, 1
  %i.an = and i8 %i.am, %i.al
  %i.ao = zext nneg i8 %i.an to i16
  %spec.select20.i = add i16 %.01631.i, %i.ao     ; 2 uses
  %i.ap = add nuw nsw i64 %.01532.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.p
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

bb.e:                                             ; preds = %bb.c
  %i.aq = load i64, ptr %.sroa.0.0, align 1       ; 2 uses
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i64, ptr %.sroa.9.0, align 1
  %i.as = and i64 %i.ar, %i.aq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.au = load i64, ptr %i.at, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.au, i64 %i.aq, i64 %i.c)
  %i.av = load i64, ptr %.sroa.9.0, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %i.ax = load i64, ptr %i.aw, align 1
  %.0.i23.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ax, i64 %i.av, i64 %i.f)
  %i.ay = and i64 %.0.i23.i, %.0.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ %i.ay, %bb.g ], [ %i.as, %bb.f ]
  %i.az = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %i.bc = add nsw i64 %.sroa.17.0, -64
  %5 = trunc nuw nsw i64 %i.az to i16
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit: ; preds = %._crit_edge.i, %bb.h
  %.sroa.9.1 = phi ptr [ %i.u, %._crit_edge.i ], [ %i.bb, %bb.h ]
  %.sroa.17.1 = phi i64 [ %i.v, %._crit_edge.i ], [ %i.bc, %bb.h ]
  %.sroa.0.1 = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ba, %bb.h ]
  %.sroa.0.0.i = phi i1 [ %i.x, %._crit_edge.i ], [ false, %bb.h ]
  %.sroa.4.0.i = phi i16 [ %.016.lcssa.i, %._crit_edge.i ], [ %5, %bb.h ]
  %6 = sext i16 %.sroa.4.0.i to i64
  %i.bd = add nsw i64 %.07, %6
  br i1 %.sroa.0.0.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %bb.b

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread: ; preds = %bb.b, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit
  ret i64 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #4 {
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
  %i.p = load i64, ptr %i.e, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

bb.d:                                             ; preds = %bb.b
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.e, align 1
  %.sroa.23.40.insert.ext = zext i8 %i.q to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit: ; preds = %bb.c, %bb.e
  %.sroa.23.2 = phi i64 [ %i.p, %bb.c ], [ %.sroa.23.40.insert.ext, %bb.e ] ; 5 uses
  %i.r = srem i64 %3, 8                           ; 5 uses
  %i.s = sdiv i64 %3, 8
  %i.t = getelementptr inbounds i8, ptr %4, i64 %i.s ; 7 uses
  %i.u = trunc nsw i64 %i.r to i32                ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.u
  %i.v = xor i32 %notmask.i, -1
  %i.w = zext nneg i32 %i.v to i64                ; 8 uses
  %.not.i39 = icmp eq i64 %i.r, 0                 ; 3 uses
  br i1 %.not.i39, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit, label %bb.f

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread: ; preds = %bb.d
  %i.x = srem i64 %3, 8                           ; 3 uses
  %i.y = sdiv i64 %3, 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  %i.aa = trunc nsw i64 %i.x to i32               ; 2 uses
  %notmask.i132 = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask.i132, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %.not.i39133 = icmp eq i64 %i.x, 0
  br label %.preheader

bb.f:                                             ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit
  %i.ad = icmp sgt i64 %2, 63
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.t, align 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %2, 0
  br i1 %i.af, label %bb.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.t, align 1
  %.sroa.22.32.insert.ext = zext i8 %i.ag to i64
  br label %.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit: ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit, %bb.g, %bb.h
  %i.ah = phi i32 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.u, %bb.g ], [ %i.u, %bb.h ] ; 4 uses
  %i.ai = phi i64 [ 0, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.r, %bb.g ], [ %i.r, %bb.h ] ; 6 uses
  %.sroa.22.2 = phi i64 [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit ], [ %i.ae, %bb.g ], [ undef, %bb.h ] ; 4 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.aj = sub nsw i64 64, %i.ai
  %i.ak = xor i64 %i.w, -1                        ; 2 uses
  br i1 %.not.i39, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader: ; preds = %.lr.ph
  %i.al = add nsw i64 %i.f, -1
  %i.am = icmp ne i64 %i.f, 0
  %umin.neg = sext i1 %i.am to i64
  %i.an = add nsw i64 %i.al, %umin.neg
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol
  %.0102.us.prol = phi i64 [ %i.ao, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.23.0101.us.prol = phi i64 [ %i.ar, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %.sroa.6.0100.us.prol = phi ptr [ %i.as, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ] ; 2 uses
  %.sroa.669.098.us.prol = phi ptr [ %i.ap, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ %i.e, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ], [ 0, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ]
  %i.ao = add nsw i64 %.0102.us.prol, -1          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.669.098.us.prol, i64 8 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = freeze i64 %i.aq                        ; 4 uses
  %.0.i.us.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.ar, i64 %.sroa.23.0101.us.prol, i64 %i.c)
  store i64 %.0.i.us.prol, ptr %.sroa.6.0100.us.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.6.0100.us.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, !llvm.loop !17

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader
  %.lcssa167.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ap, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa166.unr = phi i64 [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ar, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.lcssa.unr = phi ptr [ poison, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.as, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.0102.us.unr = phi i64 [ %spec.select.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ao, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.23.0101.us.unr = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ar, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.6.0100.us.unr = phi ptr [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.as, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %.sroa.669.098.us.unr = phi ptr [ %i.e, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.preheader ], [ %i.ap, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol ]
  %i.at = icmp ult i64 %i.an, 3
  br i1 %i.at, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.preheader: ; preds = %.lr.ph
  %i.au = and i64 %.sroa.22.2, %i.w
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit

_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us: ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us
  %.0102.us = phi i64 [ %i.bh, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.0102.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.23.0101.us = phi i64 [ %i.bk, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.23.0101.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ]
  %.sroa.6.0100.us = phi ptr [ %i.bl, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.6.0100.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 5 uses
  %.sroa.669.098.us = phi ptr [ %i.bi, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %.sroa.669.098.us.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.669.098.us, i64 8
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = freeze i64 %i.aw                        ; 2 uses
  %.0.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.ax, i64 %.sroa.23.0101.us, i64 %i.c)
  store i64 %.0.i.us, ptr %.sroa.6.0100.us, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.6.0100.us, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.669.098.us, i64 16
  %i.ba = load i64, ptr %i.az, align 1
  %i.bb = freeze i64 %i.ba                        ; 2 uses
  %.0.i.us.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bb, i64 %i.ax, i64 %i.c)
  store i64 %.0.i.us.1, ptr %i.ay, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6.0100.us, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.669.098.us, i64 24
  %i.be = load i64, ptr %i.bd, align 1
  %i.bf = freeze i64 %i.be                        ; 2 uses
  %.0.i.us.2 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bf, i64 %i.bb, i64 %i.c)
  store i64 %.0.i.us.2, ptr %i.bc, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.6.0100.us, i64 24
  %i.bh = add nsw i64 %.0102.us, -4               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.669.098.us, i64 32 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 1
  %i.bk = freeze i64 %i.bj                        ; 3 uses
  %.0.i.us.3 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bk, i64 %i.bf, i64 %i.c)
  store i64 %.0.i.us.3, ptr %i.bg, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.6.0100.us, i64 32 ; 2 uses
  %.not37.us.3 = icmp eq i64 %i.bh, 0
  br i1 %.not37.us.3, label %.preheader, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, !llvm.loop !19

.preheader:                                       ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread, %bb.i, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit
  %i.bm = phi i64 [ %i.ai, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ai, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.x, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.r, %bb.i ], [ %i.ai, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ai, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %i.bn = phi i32 [ %i.ah, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.ah, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.aa, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.u, %bb.i ], [ %i.ah, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.ah, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 2 uses
  %i.bo = phi i64 [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.ac, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.w, %bb.i ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.w, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ] ; 3 uses
  %.not.i39137151 = phi i1 [ %.not.i39, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %.not.i39133, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ false, %bb.i ], [ true, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ false, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.669.0.lcssa = phi ptr [ %i.e, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bi, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.e, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.e, %bb.i ], [ %.lcssa167.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.bz, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.22.32.insert.ext, %bb.i ], [ %.sroa.22.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.cl, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.6.0.lcssa = phi ptr [ %i.t, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bl, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ %i.z, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %i.t, %bb.i ], [ %.lcssa.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cf, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.sroa.23.0.lcssa = phi i64 [ %.sroa.23.2, %_ZN5arrow8internal16BitmapWordWriterImLb1EEC2EPhll.exit ], [ %i.bk, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us ], [ undef, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.thread ], [ %.sroa.23.2, %bb.i ], [ %.lcssa166.unr, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit.us.prol.loopexit ], [ %i.cb, %_ZN5arrow8internal16BitmapWordWriterImLb1EE11PutNextWordEm.exit ]
  %.not38109 = icmp eq i64 %i.n, 0
  br i1 %.not38109, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %.preheader
  %.not.i41 = icmp eq i64 %i.c, 0
  %i.bp = trunc nsw i64 %i.c to i32               ; 2 uses
  %i.bq = sub nsw i32 8, %i.bp
  %i.br = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bm
  %i.bs = sub nsw i32 8, %i.bn
  %i.bt = xor i64 %i.bo, -1                       ; 2 uses
  %i.bu = trunc nsw i64 %i.c to i32
  %i.bv = shl nuw nsw i32 1, %i.bu
  %i.bw = add nsw i64 %i.c, 1                     ; 2 uses
end_hunk_0
