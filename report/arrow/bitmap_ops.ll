inline.NumInlined: 424
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5arrow8internal12CountSetBitsEPKhll:bb.a
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %2) ; 3 uses
  %i.g = sub nsw i64 %2, %.sroa.speculated.i      ; 3 uses
  %i.h = lshr i64 %i.g, 6                         ; 3 uses
  %i.i = and i64 %i.g, -64
  %i.j = add nsw i64 %.sroa.speculated.i, %1      ; 3 uses
  %i.k = add nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = sdiv i64 %i.j, 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 4 uses
  %i.n = icmp sgt i64 %.sroa.speculated.i, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.039.lcssa = phi i64 [ 0, %bb.a ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge58, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03948 = phi i64 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %.04047 = phi i64 [ %i.w, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.o = lshr i64 %.04047, 3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = trunc i64 %.04047 to i8
  %i.s = and i8 %i.r, 7
  %i.t = lshr i8 %i.q, %i.s
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
  %.not31.i = icmp eq i64 %i.c, 0
  %i.g = sub nsw i64 128, %i.c
  %spec.select.i = select i1 %.not31.i, i64 64, i64 %i.g
  %.not32.i = icmp eq i64 %i.f, 0
  %i.h = sub nsw i64 128, %i.f
  %i.i = select i1 %.not32.i, i64 64, i64 %i.h
  %i.j = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %i.i)
  %i.k = or i64 %i.f, %i.c
  %brmerge.not.i = icmp eq i64 %i.k, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit, %bb.a
  %.sroa.9.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.9.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 6 uses
  %.sroa.17.0 = phi i64 [ %4, %bb.a ], [ %.sroa.17.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.b, %bb.a ], [ %.sroa.0.1, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 5 uses
  %.07 = phi i64 [ 0, %bb.a ], [ %i.bd, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.17.0, 0
  br i1 %.not.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %.sroa.17.0, %i.j
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated26.i = tail call i64 @llvm.smin.i64(i64 %.sroa.17.0, i64 64) ; 3 uses
  %i.m = trunc i64 %.sroa.speculated26.i to i16
  %sext.i = shl i64 %.sroa.speculated26.i, 48
  %i.n = ashr exact i64 %sext.i, 48               ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.p = zext i16 %spec.select20.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %.016.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.p, %._crit_edge.i.loopexit ]
  %i.q = sdiv i16 %i.m, 8
  %i.r = sext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %.sroa.9.0, i64 %i.r
  %i.u = sub nsw i64 %.sroa.17.0, %i.n
  %i.v = and i64 %.sroa.speculated26.i, 65535
  %i.w = icmp eq i64 %i.v, 0
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01535.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %.01634.i = phi i16 [ %spec.select20.i, %.lr.ph.i ], [ 0, %bb.d ]
  %i.x = add nsw i64 %.01535.i, %i.c              ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7
  %i.ab = trunc i64 %i.x to i8
  %i.ac = and i8 %i.ab, 7
  %i.ad = lshr i8 %i.aa, %i.ac
  %i.ae = add nsw i64 %.01535.i, %i.f             ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = lshr i8 %i.ah, %i.aj
  %i.al = and i8 %i.ad, 1
  %i.am = and i8 %i.al, %i.ak
  %i.an = zext nneg i8 %i.am to i16
  %spec.select20.i = add i16 %.01634.i, %i.an     ; 2 uses
  %i.ao = add nuw nsw i64 %.01535.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !16

bb.e:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %.sroa.0.0, align 1       ; 2 uses
  br i1 %brmerge.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %.sroa.9.0, align 1
  %i.ar = and i64 %i.aq, %i.ap
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.at = load i64, ptr %i.as, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.at, i64 %i.ap, i64 %i.c)
  %i.au = load i64, ptr %.sroa.9.0, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %i.aw = load i64, ptr %i.av, align 1
  %.0.i22.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.aw, i64 %i.au, i64 %i.f)
  %i.ax = and i64 %.0.i22.i, %.0.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ %i.ax, %bb.g ], [ %i.ar, %bb.f ]
  %i.ay = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8
  %i.bb = add nsw i64 %.sroa.17.0, -64
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit: ; preds = %._crit_edge.i, %bb.h
  %.sroa.9.1 = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ba, %bb.h ]
  %.sroa.17.1 = phi i64 [ %i.u, %._crit_edge.i ], [ %i.bb, %bb.h ]
  %.sroa.0.1 = phi ptr [ %i.s, %._crit_edge.i ], [ %i.az, %bb.h ]
  %.sroa.0.0.i = phi i1 [ %i.w, %._crit_edge.i ], [ false, %bb.h ]
  %.sroa.4.0.i = phi i64 [ %.016.lcssa.i, %._crit_edge.i ], [ %i.ay, %bb.h ]
  %sext = shl nuw i64 %.sroa.4.0.i, 48
  %i.bc = ashr exact i64 %sext, 48
  %i.bd = add nsw i64 %i.bc, %.07
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

end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll:bb.a
bb.ak:                                            ; preds = %.lr.ph.i29.5
  %i.jz = add nsw i64 %.sroa.1319.1.i39.4, 1      ; 3 uses
  %i.ka = icmp sgt i32 %.sroa.14.0123, 6
  br i1 %i.ka, label %bb.al, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.5, !prof !20

bb.al:                                            ; preds = %bb.ak
  %i.kb = getelementptr inbounds i8, ptr %.sroa.675.1121, i64 %i.jz
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.5: ; preds = %bb.al, %bb.ak, %.lr.ph.i29.5
  %.sroa.9.2.i38.5 = phi i8 [ %i.kc, %bb.al ], [ %.sroa.9.2.i38.4, %bb.ak ], [ %.sroa.9.2.i38.4, %.lr.ph.i29.5 ] ; 3 uses
  %.sroa.1319.1.i39.5 = phi i64 [ %i.jz, %bb.al ], [ %i.jz, %bb.ak ], [ %.sroa.1319.1.i39.4, %.lr.ph.i29.5 ]
  %.sroa.16.1.i40.5 = phi i64 [ 0, %bb.al ], [ 0, %bb.ak ], [ %i.jx, %.lr.ph.i29.5 ] ; 2 uses
  %exitcond.not.i41.5 = icmp eq i32 %.sroa.14.0123, 6
  br i1 %exitcond.not.i41.5, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.6

.lr.ph.i29.6:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.5
  %i.kd = lshr i8 %spec.select.i36.5, 1           ; 2 uses
  %i.ke = zext i8 %.sroa.9.2.i38.5 to i32
  %i.kf = trunc nsw i64 %.sroa.16.1.i40.5 to i32
  %i.kg = shl nuw nsw i32 1, %i.kf
  %i.kh = and i32 %i.kg, %i.ke
  %.not21.i35.6 = icmp eq i32 %i.kh, 0
  %i.ki = or disjoint i8 %i.kd, -128
  %spec.select.i36.6 = select i1 %.not21.i35.6, i8 %i.kd, i8 %i.ki ; 2 uses
  %i.kj = add nsw i64 %.sroa.16.1.i40.5, 1        ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 8
  br i1 %i.kk, label %bb.am, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !15

bb.am:                                            ; preds = %.lr.ph.i29.6
  %i.kl = icmp eq i32 %.sroa.14.0123, 8
  br i1 %i.kl, label %bb.an, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6, !prof !20

bb.an:                                            ; preds = %bb.am
  %i.km = getelementptr i8, ptr %.sroa.675.1121, i64 %.sroa.1319.1.i39.5
  %i.kn = getelementptr i8, ptr %i.km, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6: ; preds = %bb.an, %bb.am, %.lr.ph.i29.6
  %.sroa.9.2.i38.6 = phi i8 [ %i.ko, %bb.an ], [ %.sroa.9.2.i38.5, %bb.am ], [ %.sroa.9.2.i38.5, %.lr.ph.i29.6 ]
  %.sroa.16.1.i40.6 = phi i64 [ 0, %bb.an ], [ 0, %bb.am ], [ %i.kj, %.lr.ph.i29.6 ] ; 2 uses
  %exitcond.not.i41.6 = icmp eq i32 %.sroa.14.0123, 7
  br i1 %exitcond.not.i41.6, label %._crit_edge.loopexit.i42, label %.lr.ph.i29.7

.lr.ph.i29.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i37.6
  %i.kp = lshr i8 %spec.select.i36.6, 1           ; 2 uses
  %i.kq = zext i8 %.sroa.9.2.i38.6 to i32
  %i.kr = trunc nsw i64 %.sroa.16.1.i40.6 to i32
  %i.ks = shl nuw nsw i32 1, %i.kr
  %i.kt = and i32 %i.ks, %i.kq
  %.not21.i35.7 = icmp eq i32 %i.kt, 0
  %i.ku = or disjoint i8 %i.kp, -128
  %spec.select.i36.7 = select i1 %.not21.i35.7, i8 %i.kp, i8 %i.ku
  %i.kv = icmp eq i64 %.sroa.16.1.i40.6, 7        ; 0 uses
  br label %._crit_edge.loopexit.i42

bb.ao:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.675.1121, i64 1 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1             ; 2 uses
  %.sroa.21.40.extract.trunc = trunc i64 %.sroa.21.1126 to i8
  %i.ky = trunc i64 %.sroa.21.1126 to i32
  %i.kz = and i32 %i.ky, 255
  %i.la = lshr i32 %i.kz, %i.ch
  %i.lb = zext i8 %i.kx to i32
  %i.lc = shl nuw nsw i32 %i.lb, %i.ci
  %i.ld = or i32 %i.lc, %i.la
  %i.le = trunc i32 %i.ld to i8
  %.2.i23 = select i1 %.not.i22, i8 %.sroa.21.40.extract.trunc, i8 %i.le
  %.sroa.21.40.insert.ext81 = zext i8 %i.kx to i64
  %i.lf = add nsw i32 %.sroa.14.0123, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43: ; preds = %._crit_edge.i25, %bb.ao
  %.sroa.675.2 = phi ptr [ %.sroa.675.1121, %._crit_edge.i25 ], [ %i.kw, %bb.ao ]
  %.sroa.14.1 = phi i32 [ 0, %._crit_edge.i25 ], [ %i.lf, %bb.ao ]
  %.sroa.21.3 = phi i64 [ %.sroa.21.1126, %._crit_edge.i25 ], [ %.sroa.21.40.insert.ext81, %bb.ao ]
  %.3.i24 = phi i8 [ %i.hs, %._crit_edge.i25 ], [ %.2.i23, %bb.ao ]
  %i.lg = xor i8 %.3.i24, -1
  %i.lh = or i8 %.3.i, %i.lg                      ; 3 uses
  %i.li = icmp eq i32 %.0101, 8
  br i1 %i.li, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  br i1 %.not.i17166187, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lj = zext i8 %i.lh to i32                    ; 2 uses
  %i.lk = shl nuw nsw i32 %i.lj, %i.cd
  %i.ll = lshr i32 %i.lj, %i.ck
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.6.1125, i64 1 ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 1
  %i.lo = and i64 %.sroa.22.1122, %i.ce
  %i.lp = or i32 %i.lk, %i.ll
  %i.lq = zext nneg i32 %i.lp to i64              ; 2 uses
  %i.lr = and i64 %i.lq, %i.cl
  %i.ls = or disjoint i64 %i.lr, %i.lo
  %i.lt = trunc i64 %i.ls to i8
  %i.lu = zext i8 %i.ln to i64
  %i.lv = and i64 %i.lu, %i.cl
  %i.lw = and i64 %i.ce, %i.lq
  %i.lx = or disjoint i64 %i.lv, %i.lw            ; 2 uses
  %i.ly = trunc i64 %i.lx to i8
  store i8 %i.ly, ptr %i.lm, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.sink = phi i8 [ %i.lt, %bb.aq ], [ %i.lh, %bb.ap ]
  %.sroa.22.4 = phi i64 [ %i.lx, %bb.aq ], [ %.sroa.22.1122, %bb.ap ]
  store i8 %.sink, ptr %.sroa.6.1125, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.6.1125, i64 1
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

bb.as:                                            ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit43
  %i.ma = sext i32 %.0101 to i64
  %i.mb = icmp sgt i32 %.0101, 0
  br i1 %i.mb, label %.lr.ph.preheader.i44, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.preheader.i44:                             ; preds = %bb.as
  %i.mc = load i8, ptr %i.cj, align 1, !tbaa !7
  %i.md = load i8, ptr %.sroa.6.1125, align 1, !tbaa !7
  %wide.trip.count.i45 = zext nneg i32 %.0101 to i64
  br label %.lr.ph.i46

._crit_edge.i49:                                  ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i
  %.not.i.not.i = icmp eq i8 %.sroa.22.1.i, 1
  br i1 %.not.i.not.i, label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i49
  %i.me = getelementptr inbounds i8, ptr %.sroa.6.1125, i64 %.sroa.2930.1.i
  store i8 %.sroa.14.2.i, ptr %i.me, align 1, !tbaa !7
  br label %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit

.lr.ph.i46:                                       ; preds = %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, %.lr.ph.preheader.i44
  %.01537.i = phi i8 [ %i.mr, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.lh, %.lr.ph.preheader.i44 ] ; 2 uses
  %.sroa.2930.036.i = phi i64 [ %.sroa.2930.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ] ; 3 uses
  %.sroa.6.035.i = phi i64 [ %i.mk, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ 0, %.lr.ph.preheader.i44 ]
  %.sroa.22.034.i = phi i8 [ %.sroa.22.1.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.mc, %.lr.ph.preheader.i44 ] ; 3 uses
  %.sroa.14.033.i = phi i8 [ %.sroa.14.2.i, %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i ], [ %i.md, %.lr.ph.preheader.i44 ] ; 2 uses
  %i.mf = and i8 %.01537.i, 1
  %.not.i47 = icmp eq i8 %i.mf, 0
  %i.mg = xor i8 %.sroa.22.034.i, -1
  %i.mh = and i8 %.sroa.14.033.i, %i.mg
  %i.mi = or i8 %.sroa.14.033.i, %.sroa.22.034.i
  %.sroa.14.1.i = select i1 %.not.i47, i8 %i.mh, i8 %i.mi ; 3 uses
  %i.mj = shl i8 %.sroa.22.034.i, 1               ; 2 uses
  %i.mk = add nuw nsw i64 %.sroa.6.035.i, 1       ; 3 uses
  %i.ml = icmp eq i8 %i.mj, 0
  br i1 %i.ml, label %bb.au, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

bb.au:                                            ; preds = %.lr.ph.i46
  %i.mm = add nsw i64 %.sroa.2930.036.i, 1        ; 3 uses
  %i.mn = getelementptr inbounds i8, ptr %.sroa.6.1125, i64 %.sroa.2930.036.i
  store i8 %.sroa.14.1.i, ptr %i.mn, align 1, !tbaa !7
  %i.mo = icmp slt i64 %i.mk, %i.ma
  br i1 %i.mo, label %bb.av, label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i, !prof !20

bb.av:                                            ; preds = %bb.au
  %i.mp = getelementptr inbounds i8, ptr %.sroa.6.1125, i64 %i.mm
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !7
  br label %_ZN5arrow8internal12BitmapWriter4NextEv.exit.i

_ZN5arrow8internal12BitmapWriter4NextEv.exit.i:   ; preds = %bb.av, %bb.au, %.lr.ph.i46
  %.sroa.14.2.i = phi i8 [ %i.mq, %bb.av ], [ %.sroa.14.1.i, %bb.au ], [ %.sroa.14.1.i, %.lr.ph.i46 ] ; 2 uses
  %.sroa.22.1.i = phi i8 [ 1, %bb.av ], [ 1, %bb.au ], [ %i.mj, %.lr.ph.i46 ] ; 2 uses
  %.sroa.2930.1.i = phi i64 [ %i.mm, %bb.av ], [ %i.mm, %bb.au ], [ %.sroa.2930.036.i, %.lr.ph.i46 ] ; 2 uses
  %i.mr = lshr i8 %.01537.i, 1
  %exitcond.not.i48 = icmp eq i64 %i.mk, %wide.trip.count.i45
  br i1 %exitcond.not.i48, label %._crit_edge.i49, label %.lr.ph.i46, !llvm.loop !21

_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit: ; preds = %bb.ar, %bb.as, %._crit_edge.i49, %bb.at
  %.sroa.22.5 = phi i64 [ %.sroa.22.4, %bb.ar ], [ %.sroa.22.1122, %._crit_edge.i49 ], [ %.sroa.22.1122, %bb.at ], [ %.sroa.22.1122, %bb.as ]
  %.sroa.6.2 = phi ptr [ %i.lz, %bb.ar ], [ %.sroa.6.1125, %._crit_edge.i49 ], [ %.sroa.6.1125, %bb.at ], [ %.sroa.6.1125, %bb.as ]
  %.not11 = icmp eq i32 %i.dn, 0
  br i1 %.not11, label %._crit_edge, label %bb.i, !llvm.loop !186

._crit_edge:                                      ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !9}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = distinct !{!30, !9, !27, !28}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !9, !27}
!33 = distinct !{!33, !9}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll: argument 0"}
!36 = distinct !{!36, !"_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll"}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSN5arrow6StatusE", !39, i64 0}
!39 = !{!"p1 _ZTSN5arrow6Status5StateE", !40, i64 0}
!40 = !{!"any pointer", !5, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!43, !45, !35}
!43 = distinct !{!43, !44, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!44 = distinct !{!44, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!45 = distinct !{!45, !46, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!46 = distinct !{!46, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !49, i64 0, !50, i64 8}
!49 = !{!"p1 _ZTSN5arrow6BufferE", !40, i64 0}
!50 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !51, i64 0}
!51 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 0}
!52 = !{!53, !54, i64 9}
!53 = !{!"_ZTSN5arrow6BufferE", !54, i64 8, !54, i64 9, !55, i64 16, !11, i64 24, !11, i64 32, !56, i64 40, !57, i64 48, !58, i64 64}
!54 = !{!"bool", !5, i64 0}
!55 = !{!"p1 omnipotent char", !40, i64 0}
!56 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!57 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !48, i64 0}
!58 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !59, i64 0}
!59 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !50, i64 8}
!60 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !40, i64 0}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!50, !51, i64 0}
!64 = !{!65, !4, i64 8}
!65 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!66 = !{!65, !4, i64 12}
!67 = !{!68, !68, i64 0}
!68 = !{!"vtable pointer", !6, i64 0}
!69 = distinct !{null, null, null, null, null, null, null}
!70 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!71 = !{!72, !54, i64 1}
!72 = !{!"_ZTSN5arrow6Status5StateE", !73, i64 0, !54, i64 1, !74, i64 8, !76, i64 40}
!73 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !75, i64 0, !11, i64 8, !5, i64 16}
!75 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !55, i64 0}
!76 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !77, i64 0}
!77 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !78, i64 0, !50, i64 8}
!78 = !{!"p1 _ZTSN5arrow12StatusDetailE", !40, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE1EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll: argument 0"}
!81 = distinct !{!81, !"_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE1EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll"}
!82 = !{!83, !85, !80}
!83 = distinct !{!83, !84, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!84 = distinct !{!84, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!85 = distinct !{!85, !86, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!86 = distinct !{!86, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!87 = distinct !{null, null, null, null, null, null, null}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!90 = distinct !{!90, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!91 = distinct !{!91, !92, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!92 = distinct !{!92, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!93 = distinct !{null, null, null, null, null, null}
!94 = !{!74, !55, i64 0}
!95 = distinct !{!95, !9}
!96 = distinct !{!96, !9}
!97 = distinct !{!97, !9}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll: argument 0"}
!100 = distinct !{!100, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll"}
!101 = !{!102, !104, !99}
!102 = distinct !{!102, !103, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!103 = distinct !{!103, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!104 = distinct !{!104, !105, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!105 = distinct !{!105, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!106 = distinct !{!106, !9, !27, !28}
!107 = distinct !{!107, !9, !27, !28}
!108 = distinct !{!108, !18}
!109 = distinct !{!109, !9, !27}
!110 = distinct !{null, null, null, null, null, null, null}
!111 = distinct !{!111, !9, !27, !28}
!112 = distinct !{!112, !9, !27, !28}
!113 = distinct !{!113, !18}
!114 = distinct !{!114, !9, !27}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll: argument 0"}
!117 = distinct !{!117, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll"}
!118 = !{!119, !121, !116}
!119 = distinct !{!119, !120, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!120 = distinct !{!120, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!121 = distinct !{!121, !122, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!122 = distinct !{!122, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!123 = distinct !{!123, !9, !27, !28}
!124 = distinct !{!124, !9, !27, !28}
!125 = distinct !{!125, !18}
!126 = distinct !{!126, !9, !27}
!127 = distinct !{null, null, null, null, null, null, null}
!128 = distinct !{!128, !9, !27, !28}
!129 = distinct !{!129, !9, !27, !28}
!130 = distinct !{!130, !18}
!131 = distinct !{!131, !9, !27}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll: argument 0"}
!134 = distinct !{!134, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll"}
!135 = !{!136, !138, !133}
!136 = distinct !{!136, !137, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!137 = distinct !{!137, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!138 = distinct !{!138, !139, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!139 = distinct !{!139, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!140 = distinct !{!140, !9, !27, !28}
!141 = distinct !{!141, !9, !27, !28}
!142 = distinct !{!142, !18}
!143 = distinct !{!143, !9, !27}
!144 = distinct !{null, null, null, null, null, null, null}
!145 = distinct !{!145, !9, !27, !28}
!146 = distinct !{!146, !9, !27, !28}
!147 = distinct !{!147, !18}
!148 = distinct !{!148, !9, !27}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll: argument 0"}
!151 = distinct !{!151, !"_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll"}
!152 = !{!153, !155, !150}
!153 = distinct !{!153, !154, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!154 = distinct !{!154, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!155 = distinct !{!155, !156, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!156 = distinct !{!156, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!157 = distinct !{null, null, null, null, null, null, null}
!158 = distinct !{!158, !9, !27, !28}
!159 = distinct !{!159, !9, !27, !28}
!160 = distinct !{!160, !9, !27}
end_hunk_1
