Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/vector_selection_filter_internal?download=true
inline.NumInlined: 4280
inline.NumDeleted: 1950
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE:bb.a
  br i1 %i.e, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61
  %.not.i.i = icmp ne i64 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ne ptr %i.i, null
  %i.k = select i1 %.not.i.i, i1 %i.j, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !66   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 6 uses
  br i1 %i.k, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.m, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i = select i1 %.not.i.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.m, !prof !68
  %i.r = sdiv i64 %i.o, 8                         ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i, i64 %i.r ; 2 uses
  %i.t = srem i64 %i.o, 8                         ; 13 uses
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.r ; 2 uses
  %i.v = icmp eq i32 %1, 1
  %i.w = icmp sgt i64 %i.q, 0                     ; 2 uses
  br i1 %i.v, label %.preheader.i, label %.preheader60.i

.preheader60.i:                                   ; preds = %bb.c
  br i1 %i.w, label %.lr.ph.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit

.lr.ph.i:                                         ; preds = %.preheader60.i
  %.not36.i28.i = icmp eq i64 %i.t, 0             ; 2 uses
  %i.x = sub nsw i64 128, %i.t
  %spec.select.i29.i = select i1 %.not36.i28.i, i64 64, i64 %i.x
  br label %bb.l

.preheader.i:                                     ; preds = %bb.c
  br i1 %i.w, label %.lr.ph72.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit

.lr.ph72.i:                                       ; preds = %.preheader.i
  %.not36.i.i = icmp eq i64 %i.t, 0               ; 2 uses
  %i.y = sub nsw i64 128, %i.t
  %spec.select.i.i = select i1 %.not36.i.i, i64 64, i64 %i.y
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i, %.lr.ph72.i
  %.071.i = phi i64 [ 0, %.lr.ph72.i ], [ %i.cp, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i ]
  %.02170.i = phi i64 [ 0, %.lr.ph72.i ], [ %i.cr, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i ]
  %.sroa.0.069.i = phi ptr [ %i.s, %.lr.ph72.i ], [ %.sroa.0.3.i, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i ] ; 8 uses
  %.sroa.14.068.i = phi ptr [ %i.u, %.lr.ph72.i ], [ %.sroa.14.3.i, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i ] ; 9 uses
  %.sroa.28.067.i = phi i64 [ %i.q, %.lr.ph72.i ], [ %.sroa.28.3.i, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i ] ; 5 uses
  %.not.i26.i = icmp eq i64 %.sroa.28.067.i, 0
  br i1 %.not.i26.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp slt i64 %.sroa.28.067.i, %spec.select.i.i
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated31.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.28.067.i, i64 64) ; 5 uses
  %i.aa = trunc i64 %.sroa.speculated31.i.i to i16
  %sext.i.i = shl i64 %.sroa.speculated31.i.i, 48 ; 2 uses
  %i.ab = ashr exact i64 %sext.i.i, 48            ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %xtraiter28 = and i64 %.sroa.speculated31.i.i, 1 ; 2 uses
  %i.ad = icmp eq i64 %sext.i.i, 281474976710656
  br i1 %i.ad, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter32 = sub nsw i64 %i.ab, %xtraiter28
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.01539.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cc, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.01638.i.i.epil.init = phi i16 [ 0, %.lr.ph.i.i.preheader ], [ %spec.select20.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %.sroa.speculated31.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.ae = add nsw i64 %.01539.i.i.epil.init, %i.t ; 2 uses
  %i.af = lshr i64 %i.ae, 3                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !69
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = and i8 %i.ai, 7                         ; 2 uses
  %i.ak = lshr i8 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.14.068.i, i64 %i.af
  %i.am = load i8, ptr %i.al, align 1, !tbaa !69
  %i.an = lshr i8 %i.am, %i.aj
  %i.ao = xor i8 %i.an, -1
  %i.ap = or i8 %i.ak, %i.ao
  %i.aq = and i8 %i.ap, 1
  %i.ar = zext nneg i8 %i.aq to i16
  %spec.select20.i.i.epil = add i16 %.01638.i.i.epil.init, %i.ar
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.f
  %.016.lcssa.i.i = phi i16 [ 0, %bb.f ], [ %spec.select20.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %spec.select20.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.as = sdiv i16 %i.aa, 8
  %i.at = sext i16 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.069.i, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %.sroa.14.068.i, i64 %i.at
  %i.aw = sub nsw i64 %.sroa.28.067.i, %i.ab
  %i.ax = trunc i64 %.sroa.speculated31.i.i to i32
  %i.ay = and i32 %i.ax, 65535
  br label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.01539.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cc, %.lr.ph.i.i ] ; 3 uses
  %.01638.i.i = phi i16 [ 0, %.lr.ph.i.i.preheader.new ], [ %spec.select20.i.i.1, %.lr.ph.i.i ]
  %niter33 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter33.next.1, %.lr.ph.i.i ]
  %i.az = add nsw i64 %.01539.i.i, %i.t           ; 2 uses
  %i.ba = lshr i64 %i.az, 3                       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !69
  %i.bd = trunc i64 %i.az to i8
  %i.be = and i8 %i.bd, 7                         ; 2 uses
  %i.bf = lshr i8 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.14.068.i, i64 %i.ba
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69
  %i.bi = lshr i8 %i.bh, %i.be
  %i.bj = xor i8 %i.bi, -1
  %i.bk = or i8 %i.bf, %i.bj
  %i.bl = and i8 %i.bk, 1
  %i.bm = zext nneg i8 %i.bl to i16
  %spec.select20.i.i = add i16 %.01638.i.i, %i.bm
  %i.bn = or disjoint i64 %.01539.i.i, 1
  %i.bo = add nsw i64 %i.bn, %i.t                 ; 2 uses
  %i.bp = lshr i64 %i.bo, 3                       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !69
  %i.bs = trunc i64 %i.bo to i8
  %i.bt = and i8 %i.bs, 7                         ; 2 uses
  %i.bu = lshr i8 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.14.068.i, i64 %i.bp
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !69
  %i.bx = lshr i8 %i.bw, %i.bt
  %i.by = xor i8 %i.bx, -1
  %i.bz = or i8 %i.bu, %i.by
  %i.ca = and i8 %i.bz, 1
  %i.cb = zext nneg i8 %i.ca to i16
  %spec.select20.i.i.1 = add i16 %spec.select20.i.i, %i.cb ; 3 uses
  %i.cc = add nuw nsw i64 %.01539.i.i, 2          ; 2 uses
  %niter33.next.1 = add i64 %niter33, 2           ; 2 uses
  %niter33.ncmp.1 = icmp eq i64 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !367

bb.g:                                             ; preds = %bb.e
  %.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.069.i, align 1 ; 2 uses
  br i1 %.not36.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i22.i.i = load i64, ptr %.sroa.14.068.i, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 8
  %.0.copyload.i.i24.i.i = load i64, ptr %i.cd, align 1
  %.0.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i24.i.i, i64 %.0.copyload.i.i.i.i, i64 %i.t)
  %.0.copyload.i.i25.i.i = load i64, ptr %.sroa.14.068.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.14.068.i, i64 8
  %.0.copyload.i.i26.i.i = load i64, ptr %i.ce, align 1
  %.0.i27.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i26.i.i, i64 %.0.copyload.i.i25.i.i, i64 %i.t)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i27.sink.i.i = phi i64 [ %.0.i27.i.i, %bb.i ], [ %.0.copyload.i.i22.i.i, %bb.h ]
  %.0.i.sink.i.i = phi i64 [ %.0.i.i.i, %bb.i ], [ %.0.copyload.i.i.i.i, %bb.h ]
  %i.cf = xor i64 %.0.i27.sink.i.i, -1
  %i.cg = or i64 %.0.i.sink.i.i, %i.cf
  %i.ch = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.14.068.i, i64 8
  %i.ck = add nsw i64 %.sroa.28.067.i, -64
  %i.cl = trunc nuw nsw i64 %i.ch to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.28.2.i = phi i64 [ %i.aw, %._crit_edge.i.i ], [ %i.ck, %bb.j ]
  %.sroa.14.2.i = phi ptr [ %i.av, %._crit_edge.i.i ], [ %i.cj, %bb.j ]
  %.sroa.0.2.i = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.ci, %bb.j ]
  %.sroa.0.0.i.i = phi i32 [ %i.ay, %._crit_edge.i.i ], [ 64, %bb.j ]
  %.sroa.4.0.i.i = phi i16 [ %.016.lcssa.i.i, %._crit_edge.i.i ], [ %i.cl, %bb.j ]
  %i.cm = zext i16 %.sroa.4.0.i.i to i32
  %i.cn = shl nuw i32 %i.cm, 16
  %i.co = or disjoint i32 %i.cn, %.sroa.0.0.i.i
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i: ; preds = %bb.k, %bb.d
  %.sroa.28.3.i = phi i64 [ 0, %bb.d ], [ %.sroa.28.2.i, %bb.k ]
  %.sroa.14.3.i = phi ptr [ %.sroa.14.068.i, %bb.d ], [ %.sroa.14.2.i, %bb.k ]
  %.sroa.0.3.i = phi ptr [ %.sroa.0.069.i, %bb.d ], [ %.sroa.0.2.i, %bb.k ]
  %.sroa.0.0.insert.insert.i.i = phi i32 [ 0, %bb.d ], [ %i.co, %bb.k ] ; 2 uses
  %.sroa.01.0.extract.trunc.i = zext i32 %.sroa.0.0.insert.insert.i.i to i64
  %.sroa.42.0.extract.shift.i = lshr i32 %.sroa.0.0.insert.insert.i.i, 16
  %.sroa.42.0.extract.trunc.i = zext nneg i32 %.sroa.42.0.extract.shift.i to i64
  %sext24.i = shl nuw i64 %.sroa.42.0.extract.trunc.i, 48
  %3 = ashr exact i64 %sext24.i, 48
  %i.cp = add nsw i64 %3, %.071.i                 ; 2 uses
  %sext25.i = shl i64 %.sroa.01.0.extract.trunc.i, 48
  %i.cq = ashr exact i64 %sext25.i, 48
  %i.cr = add nsw i64 %i.cq, %.02170.i            ; 2 uses
  %i.cs = icmp slt i64 %i.cr, %i.q
  br i1 %i.cs, label %bb.d, label %_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit, !llvm.loop !368

bb.l:                                             ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i, %.lr.ph.i
  %.166.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ff, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i ]
  %.12265.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fh, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i ]
  %.sroa.0.164.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.0.5.i, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i ] ; 8 uses
  %.sroa.14.163.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.sroa.14.5.i, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i ] ; 9 uses
  %.sroa.28.162.i = phi i64 [ %i.q, %.lr.ph.i ], [ %.sroa.28.5.i, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i ] ; 5 uses
  %.not.i27.i = icmp eq i64 %.sroa.28.162.i, 0
  br i1 %.not.i27.i, label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = icmp slt i64 %.sroa.28.162.i, %spec.select.i29.i
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.speculated31.i43.i = tail call i64 @llvm.smin.i64(i64 %.sroa.28.162.i, i64 64) ; 5 uses
  %i.cu = trunc i64 %.sroa.speculated31.i43.i to i16
  %sext.i44.i = shl i64 %.sroa.speculated31.i43.i, 48 ; 2 uses
  %i.cv = ashr exact i64 %sext.i44.i, 48          ; 3 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i48.i.preheader, label %._crit_edge.i46.i

.lr.ph.i48.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i64 %.sroa.speculated31.i43.i, 1 ; 2 uses
  %i.cx = icmp eq i64 %sext.i44.i, 281474976710656
  br i1 %i.cx, label %.lr.ph.i48.i.epil.preheader, label %.lr.ph.i48.i.preheader.new

.lr.ph.i48.i.preheader.new:                       ; preds = %.lr.ph.i48.i.preheader
  %unroll_iter = sub nsw i64 %i.cv, %xtraiter
  br label %.lr.ph.i48.i

._crit_edge.i46.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i48.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i46.i, label %.lr.ph.i48.i.epil.preheader

.lr.ph.i48.i.epil.preheader:                      ; preds = %._crit_edge.i46.i.loopexit.unr-lcssa, %.lr.ph.i48.i.preheader
  %.01540.i.i.epil.init = phi i64 [ 0, %.lr.ph.i48.i.preheader ], [ %i.eq, %._crit_edge.i46.i.loopexit.unr-lcssa ]
  %.01639.i.i.epil.init = phi i16 [ 0, %.lr.ph.i48.i.preheader ], [ %spec.select20.i49.i.1, %._crit_edge.i46.i.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %.sroa.speculated31.i43.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.cy = add nsw i64 %.01540.i.i.epil.init, %i.t ; 2 uses
  %i.cz = lshr i64 %i.cy, 3                       ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !69
  %i.dc = trunc i64 %i.cy to i8
  %i.dd = and i8 %i.dc, 7
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.14.163.i, i64 %i.cz
  %i.df = load i8, ptr %i.de, align 1, !tbaa !69
  %i.dg = and i8 %i.df, %i.db
  %i.dh = lshr i8 %i.dg, %i.dd
  %i.di = and i8 %i.dh, 1
  %i.dj = zext nneg i8 %i.di to i16
  %spec.select20.i49.i.epil = add i16 %.01639.i.i.epil.init, %i.dj
  br label %._crit_edge.i46.i

._crit_edge.i46.i:                                ; preds = %.lr.ph.i48.i.epil.preheader, %._crit_edge.i46.i.loopexit.unr-lcssa, %bb.n
  %.016.lcssa.i47.i = phi i16 [ 0, %bb.n ], [ %spec.select20.i49.i.1, %._crit_edge.i46.i.loopexit.unr-lcssa ], [ %spec.select20.i49.i.epil, %.lr.ph.i48.i.epil.preheader ]
  %i.dk = sdiv i16 %i.cu, 8
  %i.dl = sext i16 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.164.i, i64 %i.dl
  %i.dn = getelementptr inbounds i8, ptr %.sroa.14.163.i, i64 %i.dl
  %i.do = sub nsw i64 %.sroa.28.162.i, %i.cv
  %i.dp = trunc i64 %.sroa.speculated31.i43.i to i32
  %i.dq = and i32 %i.dp, 65535
  br label %bb.s

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.i.preheader.new
  %.01540.i.i = phi i64 [ 0, %.lr.ph.i48.i.preheader.new ], [ %i.eq, %.lr.ph.i48.i ] ; 3 uses
  %.01639.i.i = phi i16 [ 0, %.lr.ph.i48.i.preheader.new ], [ %spec.select20.i49.i.1, %.lr.ph.i48.i ]
  %niter = phi i64 [ 0, %.lr.ph.i48.i.preheader.new ], [ %niter.next.1, %.lr.ph.i48.i ]
  %i.dr = add nsw i64 %.01540.i.i, %i.t           ; 2 uses
  %i.ds = lshr i64 %i.dr, 3                       ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !69
  %i.dv = trunc i64 %i.dr to i8
  %i.dw = and i8 %i.dv, 7
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.14.163.i, i64 %i.ds
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !69
  %i.dz = and i8 %i.dy, %i.du
  %i.ea = lshr i8 %i.dz, %i.dw
  %i.eb = and i8 %i.ea, 1
  %i.ec = zext nneg i8 %i.eb to i16
  %spec.select20.i49.i = add i16 %.01639.i.i, %i.ec
  %i.ed = or disjoint i64 %.01540.i.i, 1
  %i.ee = add nsw i64 %i.ed, %i.t                 ; 2 uses
  %i.ef = lshr i64 %i.ee, 3                       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !69
  %i.ei = trunc i64 %i.ee to i8
  %i.ej = and i8 %i.ei, 7
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.14.163.i, i64 %i.ef
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !69
  %i.em = and i8 %i.el, %i.eh
  %i.en = lshr i8 %i.em, %i.ej
  %i.eo = and i8 %i.en, 1
  %i.ep = zext nneg i8 %i.eo to i16
  %spec.select20.i49.i.1 = add i16 %spec.select20.i49.i, %i.ep ; 3 uses
  %i.eq = add nuw nsw i64 %.01540.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i46.i.loopexit.unr-lcssa, label %.lr.ph.i48.i, !llvm.loop !0

bb.o:                                             ; preds = %bb.m
  %.0.copyload.i.i.i33.i = load i64, ptr %.sroa.0.164.i, align 1 ; 2 uses
  br i1 %.not36.i28.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.0.copyload.i.i22.i42.i = load i64, ptr %.sroa.14.163.i, align 1
  %i.er = and i64 %.0.copyload.i.i22.i42.i, %.0.copyload.i.i.i33.i
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i, i64 8
  %.0.copyload.i.i24.i34.i = load i64, ptr %i.es, align 1
  %.0.copyload.i.i25.i36.i = load i64, ptr %.sroa.14.163.i, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.14.163.i, i64 8
  %.0.copyload.i.i26.i37.i = load i64, ptr %i.et, align 1
  %i.eu = and i64 %.0.copyload.i.i26.i37.i, %.0.copyload.i.i24.i34.i
  %i.ev = and i64 %.0.copyload.i.i25.i36.i, %.0.copyload.i.i.i33.i
  %i.ew = tail call i64 @llvm.fshr.i64(i64 %i.eu, i64 %i.ev, i64 %i.t)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i.i = phi i64 [ %i.ew, %bb.q ], [ %i.er, %bb.p ]
  %i.ex = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i.i)
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.14.163.i, i64 8
  %i.fa = add nsw i64 %.sroa.28.162.i, -64
  %i.fb = trunc nuw nsw i64 %i.ex to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i46.i
  %.sroa.28.4.i = phi i64 [ %i.do, %._crit_edge.i46.i ], [ %i.fa, %bb.r ]
  %.sroa.14.4.i = phi ptr [ %i.dn, %._crit_edge.i46.i ], [ %i.ez, %bb.r ]
  %.sroa.0.4.i = phi ptr [ %i.dm, %._crit_edge.i46.i ], [ %i.ey, %bb.r ]
  %.sroa.0.0.i39.i = phi i32 [ %i.dq, %._crit_edge.i46.i ], [ 64, %bb.r ]
  %.sroa.4.0.i40.i = phi i16 [ %.016.lcssa.i47.i, %._crit_edge.i46.i ], [ %i.fb, %bb.r ]
  %i.fc = zext i16 %.sroa.4.0.i40.i to i32
  %i.fd = shl nuw i32 %i.fc, 16
  %i.fe = or disjoint i32 %i.fd, %.sroa.0.0.i39.i
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i: ; preds = %bb.s, %bb.l
  %.sroa.28.5.i = phi i64 [ 0, %bb.l ], [ %.sroa.28.4.i, %bb.s ]
  %.sroa.14.5.i = phi ptr [ %.sroa.14.163.i, %bb.l ], [ %.sroa.14.4.i, %bb.s ]
  %.sroa.0.5.i = phi ptr [ %.sroa.0.164.i, %bb.l ], [ %.sroa.0.4.i, %bb.s ]
  %.sroa.0.0.insert.insert.i41.i = phi i32 [ 0, %bb.l ], [ %i.fe, %bb.s ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = zext i32 %.sroa.0.0.insert.insert.i41.i to i64
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.0.0.insert.insert.i41.i, 16
  %.sroa.4.0.extract.trunc.i = zext nneg i32 %.sroa.4.0.extract.shift.i to i64
  %sext.i = shl nuw i64 %.sroa.4.0.extract.trunc.i, 48
  %4 = ashr exact i64 %sext.i, 48
  %i.ff = add nsw i64 %4, %.166.i                 ; 2 uses
  %sext23.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.fg = ashr exact i64 %sext23.i, 48
  %i.fh = add nsw i64 %i.fg, %.12265.i            ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %i.q
  br i1 %i.fi, label %bb.l, label %_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit, !llvm.loop !369

bb.t:                                             ; preds = %bb.b
  %i.fj = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef %i.m, i64 noundef %i.o, i64 noundef %i.q)
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.fk = ptrtoint ptr %i.a to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.fn, align 8
  store i64 %i.fk, ptr %2, align 8, !tbaa !73
  store ptr @"_ZNSt17_Function_handlerIFbllbEZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS1_9ArraySpanENS2_13FilterOptions21NullSelectionBehaviorEE3$_0E9_M_invokeERKSt9_Any_dataOlSF_Ob", ptr %i.fm, align 8, !tbaa !76
  store ptr @"_ZNSt17_Function_handlerIFbllbEZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS1_9ArraySpanENS2_13FilterOptions21NullSelectionBehaviorEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.fl, align 8, !tbaa !77
  invoke void @_ZN5arrow7compute8internal34VisitPlainxREEFilterOutputSegmentsERKNS_9ArraySpanEbNS0_13FilterOptions21NullSelectionBehaviorERKSt8functionIFbllbEE(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext true, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !77 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i5, label %_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = invoke noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #26
  unreachable

bb.y:                                             ; preds = %bb.u
  %i.fs = landingpad { ptr, i32 }
          cleanup
  %i.ft = load ptr, ptr %i.fl, align 8, !tbaa !77 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ft, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = invoke noundef zeroext i1 %i.ft(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i:                ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.fs

_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit

_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit: ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i, %bb.t, %.preheader.i, %.preheader60.i, %_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit
  %.0 = phi i64 [ %i.fx, %_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit ], [ %i.fj, %bb.t ], [ %i.cp, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i ], [ 0, %.preheader.i ], [ 0, %.preheader60.i ], [ %i.ff, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %5 = alloca %"class.std::function", align 8     ; 12 uses
  %6 = alloca %"class.std::function", align 8     ; 12 uses
  %7 = alloca %"class.std::function", align 8     ; 12 uses
  %8 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %9 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %10 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %11 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %12 = alloca %"class.std::function", align 8    ; 12 uses
  %13 = alloca %"class.std::function", align 8    ; 12 uses
  %14 = alloca %"class.std::function", align 8    ; 12 uses
  %15 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %16 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %18 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %19 = alloca %"class.std::function", align 8    ; 12 uses
  %20 = alloca %"class.std::function", align 8    ; 12 uses
  %21 = alloca %"class.std::function", align 8    ; 12 uses
  %22 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %23 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %24 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %25 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %26 = alloca %"class.std::function", align 8    ; 12 uses
  %27 = alloca %"class.std::function", align 8    ; 12 uses
  %28 = alloca %"class.std::function", align 8    ; 12 uses
  %29 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %30 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %31 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %32 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %33 = alloca %"class.std::function", align 8    ; 12 uses
  %34 = alloca %"class.std::function", align 8    ; 12 uses
  %35 = alloca %"class.std::function", align 8    ; 12 uses
  %36 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %37 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %38 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %39 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %40 = alloca %"class.std::function", align 8    ; 12 uses
  %41 = alloca %"class.std::function", align 8    ; 12 uses
  %42 = alloca %"class.std::function", align 8    ; 12 uses
  %43 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %44 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %45 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %46 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %47 = alloca %"class.std::function", align 8    ; 12 uses
  %48 = alloca %"class.std::function", align 8    ; 12 uses
  %49 = alloca %"class.std::function", align 8    ; 12 uses
  %50 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %51 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %52 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %53 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %54 = alloca %"class.std::function", align 8    ; 12 uses
  %55 = alloca %"class.std::function", align 8    ; 12 uses
  %56 = alloca %"class.std::function", align 8    ; 12 uses
  %57 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %58 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %59 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %61 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl", align 8 ; 17 uses
  %62 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.36", align 8 ; 17 uses
  %63 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.37", align 8 ; 17 uses
  %64 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.38", align 8 ; 17 uses
  %65 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.39", align 8 ; 17 uses
  %66 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.40", align 8 ; 17 uses
  %67 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.41", align 8 ; 17 uses
  %68 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.42", align 8 ; 29 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 37 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !90   ; 10 uses
  %i.k = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i32 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.m = load i8, ptr %i.l, align 8, !tbaa !92
  switch i8 %i.m, label %bb.b [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !93

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.n, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @.str.6, ptr %i.o, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.p, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @.str.5, ptr %i.q, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit: ; preds = %bb.a
  %i.r = icmp eq i32 %i.f, 38
  %i.s = load ptr, ptr %3, align 8, !tbaa !102    ; 26 uses
  br i1 %i.r, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit, %bb.c
  %.pn = phi ptr [ %i.v, %bb.c ], [ %i.c, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit ]
  %.in.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.in = load i64, ptr %.in.in, align 8, !tbaa !61
  %i.w = icmp eq i64 %.in, 0                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp eq i32 %i.j, 0
  %or.cond = select i1 %i.aa, i1 true, i1 %i.w
  %or.cond59 = select i1 %i.z, i1 %or.cond, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %not.or.cond59 = xor i1 %or.cond59, true
end_hunk_0
