Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-array?download=true
inline.NumInlined: 2118
inline.NumDeleted: 818
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph, !llvm.loop !34

bb.ad:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %i.in = add i64 %i.ft, 15
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = add i64 %i.ip, -1
  %i.ir = inttoptr i64 %i.iq to ptr               ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load atomic volatile i64, ptr %i.is monotonic, align 8
  %.fr = freeze i64 %i.it                         ; 2 uses
  %i.iu = lshr i64 %.fr, 32                       ; 4 uses
  %.not116.i.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not116.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 3 uses
  %i.iw = icmp eq i64 %i.iu, 1
  br i1 %i.iw, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.iu, 4294967294
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1, %.lr.ph.i.i.i.new
  %.5118.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %i.jp, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1 ] ; 2 uses
  %.sroa.049.0117.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %i.jq, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1 ]
  %i.ix = mul i64 %.sroa.049.0117.i.i.i, 12884901888
  %sext.i.i.i.i.i = add i64 %i.ix, 17179869184
  %i.iy = ashr exact i64 %sext.i.i.i.i.i, 29
  %i.iz = getelementptr inbounds i8, ptr %i.iv, i64 %i.iy
  %i.ja = load atomic volatile i64, ptr %i.iz monotonic, align 8 ; 2 uses
  %i.jb = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.jc = icmp eq i64 %i.ja, %i.jb
  br i1 %i.jc, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.ae
  %i.jd = load i64, ptr %i.do, align 8
  %i.je = icmp ne i64 %i.ja, %i.jd
  %cond.fr.i.i.i = freeze i1 %i.je
  %i.jf = zext i1 %cond.fr.i.i.i to i32
  %spec.select113.i.i.i = add nsw i32 %.5118.i.i.i, %i.jf
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.ae
  %i.jg = phi i32 [ %.5118.i.i.i, %bb.ae ], [ %spec.select113.i.i.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ] ; 2 uses
  %i.jh = mul i64 %.sroa.049.0117.i.i.i, 12884901888
  %sext.i.i.i.i.i.1 = add i64 %i.jh, 30064771072
  %i.ji = ashr exact i64 %sext.i.i.i.i.i.1, 29
  %i.jj = getelementptr inbounds i8, ptr %i.iv, i64 %i.ji
  %i.jk = load atomic volatile i64, ptr %i.jj monotonic, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, %i.jb
  br i1 %i.jl, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.jm = load i64, ptr %i.do, align 8
  %i.jn = icmp ne i64 %i.jk, %i.jm
  %cond.fr.i.i.i.1 = freeze i1 %i.jn
  %i.jo = zext i1 %cond.fr.i.i.i.1 to i32
  %spec.select113.i.i.i.1 = add nsw i32 %i.jg, %i.jo
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.jp = phi i32 [ %i.jg, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i ], [ %spec.select113.i.i.i.1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1 ] ; 3 uses
  %i.jq = add nuw nsw i64 %.sroa.049.0117.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit222.unr-lcssa, label %bb.ae

bb.af:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

bb.ag:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #14
  unreachable

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %bb.ab
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.loopexit.i.i.i, label %.epil.preheader229

.epil.preheader229:                               ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph125.i.i.i
  %indvars.iv130.i.i.i.epil.init = phi i64 [ 0, %.lr.ph125.i.i.i ], [ %indvars.iv.next131.i.i.i.3, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.032124.i.i.i.epil.init = phi i32 [ 0, %.lr.ph125.i.i.i ], [ %spec.select.i.i.i.3, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod233 = icmp ne i64 %xtraiter230, 0
  call void @llvm.assume(i1 %lcmp.mod233)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader229
  %indvars.iv130.i.i.i.epil = phi i64 [ %indvars.iv130.i.i.i.epil.init, %.epil.preheader229 ], [ %indvars.iv.next131.i.i.i.epil, %bb.ah ] ; 2 uses
  %.032124.i.i.i.epil = phi i32 [ %.032124.i.i.i.epil.init, %.epil.preheader229 ], [ %spec.select.i.i.i.epil, %bb.ah ]
  %epil.iter = phi i64 [ 0, %.epil.preheader229 ], [ %epil.iter.next, %bb.ah ]
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv130.i.i.i.epil
  %i.js = load atomic volatile i64, ptr %i.jr monotonic, align 8
  %i.jt = load i64, ptr %i.do, align 8
  %i.ju = icmp ne i64 %i.js, %i.jt
  %i.jv = zext i1 %i.ju to i32
  %spec.select.i.i.i.epil = add nuw nsw i32 %.032124.i.i.i.epil, %i.jv ; 2 uses
  %indvars.iv.next131.i.i.i.epil = add nuw nsw i64 %indvars.iv130.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter230
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.i, label %bb.ah, !llvm.loop !35

.loopexit.i.i.i.loopexit222.unr-lcssa:            ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1
  %i.jw = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.jw, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.i.loopexit222.unr-lcssa, %.lr.ph.i.i.i
  %.5118.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.jp, %.loopexit.i.i.i.loopexit222.unr-lcssa ] ; 2 uses
  %.sroa.049.0117.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.jq, %.loopexit.i.i.i.loopexit222.unr-lcssa ]
  %lcmp.mod228 = trunc i64 %i.iu to i1
  call void @llvm.assume(i1 %lcmp.mod228)
  %i.jx = mul i64 %.sroa.049.0117.i.i.i.epil.init, 12884901888
  %sext.i.i.i.i.i.epil = add i64 %i.jx, 17179869184
  %i.jy = ashr exact i64 %sext.i.i.i.i.i.epil, 29
  %i.jz = getelementptr inbounds i8, ptr %i.iv, i64 %i.jy
  %i.ka = load atomic volatile i64, ptr %i.jz monotonic, align 8 ; 2 uses
  %i.kb = load i64, ptr %i.dn, align 8
  %i.kc = icmp eq i64 %i.ka, %i.kb
  br i1 %i.kc, label %.loopexit.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil: ; preds = %.epil.preheader
  %i.kd = load i64, ptr %i.do, align 8
  %i.ke = icmp ne i64 %i.ka, %i.kd
  %cond.fr.i.i.i.epil = freeze i1 %i.ke
  %i.kf = zext i1 %cond.fr.i.i.i.epil to i32
  %spec.select113.i.i.i.epil = add nsw i32 %.5118.i.i.i.epil.init, %i.kf
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit222.unr-lcssa, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil, %.epil.preheader, %scalar.ph, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.ah, %middle.block, %bb.ad, %bb.ac, %bb.aa, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %.7.i.i.i = phi i32 [ 0, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 0, %bb.ac ], [ %spec.select35.i.i.i, %scalar.ph ], [ 0, %bb.ad ], [ 0, %bb.aa ], [ %spec.select.i.i.i.epil, %bb.ah ], [ %i.ij, %middle.block ], [ %spec.select.i.i.i.3, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.jp, %.loopexit.i.i.i.loopexit222.unr-lcssa ], [ %.5118.i.i.i.epil.init, %.epil.preheader ], [ %spec.select113.i.i.i.epil, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil ]
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i: ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.kg = load atomic volatile i64, ptr %i.er monotonic, align 8
  %i.kh = add i64 %i.kg, 11
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = load atomic volatile i16, ptr %i.ki monotonic, align 2
  %.fr.i.i = freeze i16 %i.kj
  %i.kk = icmp eq i16 %.fr.i.i, 130
  %spec.select573.i.i = select i1 %i.kk, i8 4, i8 2 ; 2 uses
  %i.kl = call noundef zeroext i1 @_ZN2v88internal35IsMoreGeneralElementsKindTransitionENS0_12ElementsKindES1_(i8 noundef zeroext %.1663.i.i, i8 noundef zeroext %spec.select573.i.i) #15
  %..i280.i.i = select i1 %i.kl, i8 %spec.select573.i.i, i8 %.1663.i.i
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i, %.loopexit.i.i.i, %bb.af, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i
  %.0214.i.i = phi i32 [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %.7.i.i.i, %.loopexit.i.i.i ], [ 0, %bb.af ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ]
  %.0213.i.i = phi i32 [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %i.fj, %.loopexit.i.i.i ], [ %i.fj, %bb.af ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ]
  %.4.i.i = phi i8 [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %..i280.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %.2.i.i, %.loopexit.i.i.i ], [ %.2.i.i, %bb.af ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.1663.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ] ; 5 uses
  %.2195.i.i = call i32 @llvm.uadd.sat.i32(i32 %.1194662.i.i, i32 %.0213.i.i) ; 5 uses
  %.2198.i.i = call i32 @llvm.uadd.sat.i32(i32 %.1197661.i.i, i32 %.0214.i.i) ; 5 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.km = icmp sge i64 %indvars.iv.next.i.i, %i.dp ; 3 uses
  %i.kn = icmp sge i64 %indvars.iv.next.i.i, %indvars.iv732.i.i
  %or.cond261.not.i.i = select i1 %i.km, i1 true, i1 %i.kn
  br i1 %or.cond261.not.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !36

bb.ai:                                            ; preds = %._crit_edge.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 9112
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = add i64 %i.kp, 23
  %i.kr = inttoptr i64 %i.kq to ptr
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = and i64 %i.ks, -4294967295
  %i.ku = icmp eq i64 %i.kt, 4294967296           ; 2 uses
  %or.cond.i.i = select i1 %i.ku, i1 %.0.lcssa.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aj, label %.critedge249.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.kv = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewFixedDoubleArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.0193.lcssa.i.i, i8 noundef zeroext 0) #15 ; 7 uses
  %.not243.i.i = icmp ne i32 %.0193.lcssa.i.i, 0
  %i.kw = icmp sgt i32 %i.df, 4
  %or.cond696.i.i = select i1 %.not243.i.i, i1 %i.kw, i1 false
  br i1 %or.cond696.i.i, label %.lr.ph690.i.i, label %.thread535.i.i

.lr.ph690.i.i:                                    ; preds = %bb.aj
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 9080
  %wide.trip.count.i.i = zext nneg i32 %i.dg to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.i.i, %.lr.ph690.i.i
  %indvars.iv744.i.i = phi i64 [ 0, %.lr.ph690.i.i ], [ %indvars.iv.next745.i.i, %.loopexit.i.i ] ; 3 uses
  %.5689.i.i = phi i8 [ 4, %.lr.ph690.i.i ], [ %.11.i.i, %.loopexit.i.i ] ; 17 uses
  %.0216688.i.i = phi i32 [ 0, %.lr.ph690.i.i ], [ %.8224.i.i, %.loopexit.i.i ] ; 18 uses
  %i.kz = add nuw nsw i64 %indvars.iv744.i.i, 4
  %i.la = load i64, ptr %16, align 8              ; 2 uses
  %i.lb = and i64 %i.la, 4294967295
  %.not.i281.i.i = icmp samesign ugt i64 %i.kz, %i.lb
  br i1 %.not.i281.i.i, label %bb.al, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit282.i.i, !prof !8

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit282.i.i: ; preds = %bb.ak
  %i.lc = shl nuw i64 %indvars.iv744.i.i, 32
  %sext819.i.i = sub nuw i64 -21474836480, %i.lc
  %i.ld = ashr exact i64 %sext819.i.i, 32
  %i.le = add i64 %i.la, %i.ld
  %i.lf = shl nsw i64 %i.le, 3
  %i.lg = load ptr, ptr %i.b, align 8
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = sub i64 %i.lh, %i.lf
  %i.lj = inttoptr i64 %i.li to ptr
  %i.lk = load i64, ptr %i.lj, align 8            ; 6 uses
  %i.ll = and i64 %i.lk, 1
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %bb.am, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

bb.am:                                            ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit282.i.i
  %i.ln = load i64, ptr %i.kv, align 8
  %i.lo = add i64 %i.ln, -1
  %i.lp = inttoptr i64 %i.lo to ptr
  %i.lq = lshr i64 %i.lk, 32
  %i.lr = trunc nuw i64 %i.lq to i32
  %i.ls = sitofp i32 %i.lr to double
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lu = sext i32 %.0216688.i.i to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.lu
  store double %i.ls, ptr %i.lv, align 1
  %i.lw = add nsw i32 %.0216688.i.i, 1
  br label %.loopexit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit282.i.i
  %i.lx = add nsw i64 %i.lk, -1
  %i.ly = inttoptr i64 %i.lx to ptr               ; 4 uses
  %i.lz = load atomic volatile i64, ptr %i.ly monotonic, align 8
  %i.ma = add i64 %i.lz, 11
  %i.mb = inttoptr i64 %i.ma to ptr
  %i.mc = load atomic volatile i16, ptr %i.mb monotonic, align 2
  %i.md = icmp eq i16 %i.mc, 130
  br i1 %i.md, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i, label %bb.an

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.me = load i64, ptr %i.kv, align 8
  %i.mf = add i64 %i.me, -1
  %i.mg = inttoptr i64 %i.mf to ptr
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %.0.copyload.i.i.i.i.i.i285.i.i = load double, ptr %i.mh, align 8 ; 2 uses
  %i.mi = fcmp uno double %.0.copyload.i.i.i.i.i.i285.i.i, 0.000000e+00
  %.0.i287.i.i = select i1 %i.mi, double +qnan, double %.0.copyload.i.i.i.i.i.i285.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mk = sext i32 %.0216688.i.i to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.mk
  store double %.0.i287.i.i, ptr %i.ml, align 1
  %i.mm = add nsw i32 %.0216688.i.i, 1
  br label %.loopexit.i.i

bb.an:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.mn = load atomic volatile i64, ptr %i.ly monotonic, align 8
  %i.mo = add i64 %i.mn, 23
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = load i64, ptr %i.mp, align 8
  %.sroa.0.0.copyload.i.i.i3.i.i.i = load i64, ptr %i.cf, align 8
  %i.mr = add i64 %.sroa.0.0.copyload.i.i.i3.i.i.i, -1
  %i.ms = inttoptr i64 %i.mr to ptr
  %i.mt = load atomic volatile i64, ptr %i.ms monotonic, align 8
  %i.mu = add i64 %i.mt, 31
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = add i64 %i.mw, 639
  %i.my = inttoptr i64 %i.mx to ptr
  %i.mz = load atomic volatile i64, ptr %i.my monotonic, align 8 ; 2 uses
  %i.na = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.nb = load ptr, ptr %i.e, align 8
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %bb.ao, label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i, !prof !8

bb.ao:                                            ; preds = %bb.an
  %i.nd = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #15
  br label %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i

_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i = phi ptr [ %i.nd, %bb.ao ], [ %i.na, %bb.an ] ; 2 uses
  %i.ne = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.nf = add i64 %i.ne, 8
  %i.ng = inttoptr i64 %i.nf to ptr
  store ptr %i.ng, ptr %i.c, align 8
  store i64 %i.mz, ptr %.0.i.i.i.i.i.i, align 8
  %i.nh = icmp eq i64 %i.mq, %i.mz
  %i.ni = add i64 %i.lk, 23
  %i.nj = inttoptr i64 %i.ni to ptr
  %i.nk = load i64, ptr %i.nj, align 8            ; 3 uses
  %i.nl = and i64 %i.nk, 1
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i
  %i.nn = lshr i64 %i.nk, 32
  %i.no = trunc nuw i64 %i.nn to i32
  %i.np = sitofp i32 %i.no to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i

bb.aq:                                            ; preds = %_ZN2v88internal7JSArray17HasArrayPrototypeEPNS0_7IsolateE.exit.i.i
  %i.nq = add nsw i64 %i.nk, -1
  %i.nr = inttoptr i64 %i.nq to ptr
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %.0.copyload.i.i.i.i.i290.i.i = load double, ptr %i.ns, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i: ; preds = %bb.aq, %bb.ap
  %i.nt = phi double [ %i.np, %bb.ap ], [ %.0.copyload.i.i.i.i.i290.i.i, %bb.aq ]
  %i.nu = fptoui double %i.nt to i32              ; 5 uses
  %i.nv = load atomic volatile i64, ptr %i.ly monotonic, align 8
  %i.nw = add i64 %i.nv, 14
  %i.nx = inttoptr i64 %i.nw to ptr
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = lshr i8 %i.ny, 2
  switch i8 %i.nz, label %bb.bb [
    i8 5, label %bb.ar
    i8 4, label %bb.ar
    i8 1, label %bb.ay
    i8 0, label %bb.ay
    i8 3, label %.loopexit.i.i
    i8 11, label %.loopexit.i.i
    i8 9, label %.loopexit.i.i
    i8 7, label %.loopexit.i.i
    i8 2, label %.loopexit.i.i
    i8 10, label %.loopexit.i.i
    i8 8, label %.loopexit.i.i
    i8 6, label %.loopexit.i.i
    i8 13, label %.loopexit.i.i
    i8 43, label %.loopexit.i.i
  ]

bb.ar:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i
  %i.oa = icmp eq i32 %i.nu, 0
  br i1 %i.oa, label %.loopexit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ob = add i64 %i.lk, 15
  %i.oc = inttoptr i64 %i.ob to ptr
  %i.od = load i64, ptr %i.oc, align 8
  %i.oe = add i64 %i.od, -1
  %i.of = inttoptr i64 %i.oe to ptr
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 2 uses
  %.fr686.i.i = freeze i1 %i.nh
  %i.oh = sext i32 %.0216688.i.i to i64           ; 2 uses
  br i1 %.fr686.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.as, %bb.aw
  %indvars.iv741.i.i = phi i64 [ %indvars.iv.next742.i.i, %bb.aw ], [ %i.oh, %bb.as ] ; 3 uses
  %.6684.us.i.i = phi i8 [ %.7.us.i.i, %bb.aw ], [ %.5689.i.i, %bb.as ]
  %.0239682.us.i.i = phi i32 [ %i.pd, %bb.aw ], [ 0, %bb.as ] ; 2 uses
  %i.oi = sext i32 %.0239682.us.i.i to i64
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.og, i64 %i.oi
  %.0.copyload.i.i.i.i.i294.us.i.i = load i64, ptr %i.oj, align 1 ; 2 uses
  %i.ok = icmp eq i64 %.0.copyload.i.i.i.i.i294.us.i.i, -2251799814209537
  br i1 %i.ok, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.split.us.i.i
  %i.ol = bitcast i64 %.0.copyload.i.i.i.i.i294.us.i.i to double ; 2 uses
  %i.om = load i64, ptr %i.kv, align 8
  %i.on = add i64 %i.om, -1
  %i.oo = inttoptr i64 %i.on to ptr
  %i.op = fcmp uno double %i.ol, 0.000000e+00
  %.0.i295.us.i.i = select i1 %i.op, double +qnan, double %i.ol
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.or = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %indvars.iv741.i.i
  store double %.0.i295.us.i.i, ptr %i.or, align 1
  br label %bb.aw

bb.au:                                            ; preds = %.split.us.i.i
  %i.os = load i64, ptr %i.ky, align 8
  %i.ot = add i64 %i.os, 23
  %i.ou = inttoptr i64 %i.ot to ptr
  %i.ov = load i64, ptr %i.ou, align 8
  %i.ow = and i64 %i.ov, -4294967295
  %i.ox = icmp eq i64 %i.ow, 4294967296
  br i1 %i.ox, label %bb.av, label %.thread541.i.i

bb.av:                                            ; preds = %bb.au
  %i.oy = load i64, ptr %i.kv, align 8
  %i.oz = add i64 %i.oy, -1
  %i.pa = inttoptr i64 %i.oz to ptr
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %indvars.iv741.i.i
  store i64 -2251799814209537, ptr %i.pc, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  %.7.us.i.i = phi i8 [ 5, %bb.av ], [ %.6684.us.i.i, %bb.at ] ; 2 uses
  %indvars.iv.next742.i.i = add nsw i64 %indvars.iv741.i.i, 1 ; 2 uses
  %i.pd = add nuw i32 %.0239682.us.i.i, 1         ; 2 uses
  %exitcond743.not.i.i = icmp eq i32 %i.pd, %i.nu
  br i1 %exitcond743.not.i.i, label %.loopexit.loopexit.i.i, label %.split.us.i.i, !llvm.loop !37

.split.i.i:                                       ; preds = %bb.as, %bb.ax
  %indvars.iv737.i.i = phi i64 [ %indvars.iv.next738.i.i, %bb.ax ], [ %i.oh, %bb.as ] ; 2 uses
  %.0239682.i.i = phi i32 [ %i.po, %bb.ax ], [ 0, %bb.as ] ; 2 uses
  %i.pe = sext i32 %.0239682.i.i to i64
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.og, i64 %i.pe
  %.0.copyload.i.i.i.i.i294.i.i = load i64, ptr %i.pf, align 1 ; 2 uses
  %i.pg = icmp eq i64 %.0.copyload.i.i.i.i.i294.i.i, -2251799814209537
  br i1 %i.pg, label %.thread541.i.i, label %bb.ax

bb.ax:                                            ; preds = %.split.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.qb = lshr i64 %i.pz, 32
  %i.qc = trunc nuw i64 %i.qb to i32
  %i.qd = load i64, ptr %i.kv, align 8
  %i.qe = add i64 %i.qd, -1
  %i.qf = inttoptr i64 %i.qe to ptr
  %i.qg = sitofp i32 %i.qc to double
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.qh, i64 %indvars.iv734.i.i
  store double %i.qg, ptr %i.qi, align 1
  %indvars.iv.next735.i.i = add nsw i64 %indvars.iv734.i.i, 1 ; 2 uses
  %i.qj = add nuw i32 %.0241677.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.qj, %i.nu
  br i1 %exitcond.not.i.i, label %.loopexit.loopexit701.i.i, label %bb.az, !llvm.loop !38

bb.bb:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #14
  unreachable

.loopexit.loopexit.i.i:                           ; preds = %bb.aw
  %i.qk = trunc nsw i64 %indvars.iv.next742.i.i to i32
  br label %.loopexit.i.i

.loopexit.loopexit699.i.i:                        ; preds = %bb.ax
  %i.ql = trunc nsw i64 %indvars.iv.next738.i.i to i32
  br label %.loopexit.i.i

.loopexit.loopexit701.i.i:                        ; preds = %bb.ba
  %i.qm = trunc nsw i64 %indvars.iv.next735.i.i to i32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit701.i.i, %.loopexit.loopexit699.i.i, %.loopexit.loopexit.i.i, %bb.ay, %bb.ar, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i, %bb.am
  %.8224.i.i = phi i32 [ %i.lw, %bb.am ], [ %i.mm, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i ], [ %.0216688.i.i, %bb.ar ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %i.qk, %.loopexit.loopexit.i.i ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.0216688.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %i.ql, %.loopexit.loopexit699.i.i ], [ %.0216688.i.i, %bb.ay ], [ %i.qm, %.loopexit.loopexit701.i.i ] ; 2 uses
  %.11.i.i = phi i8 [ %.5689.i.i, %bb.am ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i ], [ %.5689.i.i, %bb.ar ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.7.us.i.i, %.loopexit.loopexit.i.i ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5689.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit291.i.i ], [ %.5689.i.i, %.loopexit.loopexit699.i.i ], [ %.5689.i.i, %bb.ay ], [ %.5689.i.i, %.loopexit.loopexit701.i.i ] ; 2 uses
  %indvars.iv.next745.i.i = add nuw nsw i64 %indvars.iv744.i.i, 1 ; 2 uses
  %exitcond746.not.i.i = icmp eq i64 %indvars.iv.next745.i.i, %wide.trip.count.i.i
  br i1 %exitcond746.not.i.i, label %.thread535.i.i, label %bb.ak, !llvm.loop !39

.thread535.i.i:                                   ; preds = %.loopexit.i.i, %bb.aj
  %.13540.i.i = phi i8 [ 4, %bb.aj ], [ %.11.i.i, %.loopexit.i.i ]
  %.10226539.i.i = phi i32 [ 0, %bb.aj ], [ %.8224.i.i, %.loopexit.i.i ]
  %i.qn = call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %i.kv, i8 noundef zeroext %.13540.i.i, i32 noundef %.10226539.i.i, i8 noundef zeroext 0) #15
  %i.qo = load i64, ptr %i.qn, align 8
  br label %.thread147.i

.critedge249.i.i:                                 ; preds = %bb.ai
  br i1 %i.ku, label %.thread541.i.i, label %.critedge249.thread.i.i

.thread541.i.i:                                   ; preds = %bb.az, %.split.i.i, %bb.au, %.critedge249.i.i
  %i.qp = icmp ugt i32 %.0193.lcssa.i.i, 134217728
  br i1 %i.qp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.thread541.i.i
  %i.qq = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 238, ptr null, i64 0) #15
  %i.qr = load i64, ptr %i.qq, align 8
  %i.qs = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.qr, ptr noundef null) #15
  br label %.thread147.i

bb.bd:                                            ; preds = %.thread541.i.i
  %i.qt = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.0193.lcssa.i.i, i8 noundef zeroext 0) #15
  br label %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i

.critedge249.thread.i.i:                          ; preds = %.critedge249.i.i, %._crit_edge.i.i
  br i1 %i.dl, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.critedge249.thread.i.i
  %i.qu = call ptr @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE6TryNewINS0_7IsolateEEENS0_11MaybeHandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef nonnull %2, i32 noundef %.0196.lcssa.i.i, i8 noundef zeroext 0, i32 noundef 0) #15 ; 2 uses
  %.not568.i.i = icmp eq ptr %i.qu, null
  br i1 %.not568.i.i, label %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i.i, label %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i

_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.i.i: ; preds = %bb.be
  %i.qv = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 238, ptr null, i64 0) #15
  %i.qw = load i64, ptr %i.qv, align 8
  %i.qx = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.qw, ptr noundef null) #15
  br label %.thread147.i

bb.bf:                                            ; preds = %.critedge249.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.qy = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.qz = load ptr, ptr %i.e, align 8
  %i.ra = icmp eq ptr %i.qy, %i.qz
  br i1 %i.ra, label %bb.bg, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !8

bb.bg:                                            ; preds = %bb.bf
  %i.rb = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i58.i = phi ptr [ %i.rb, %bb.bg ], [ %i.qy, %bb.bf ] ; 3 uses
  %i.rc = ptrtoint ptr %.0.i.i.i58.i to i64
  %i.rd = add i64 %i.rc, 8
  %i.re = inttoptr i64 %i.rd to ptr
  store ptr %i.re, ptr %i.c, align 8
  store i64 0, ptr %.0.i.i.i58.i, align 8
  store ptr %.0.i.i.i58.i, ptr %14, align 8
  %i.rf = call ptr @_ZN2v88internal9Execution3NewEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %2, ptr nonnull %i.cb, ptr nonnull %i.cb, ptr nonnull %14, i64 1) #15 ; 2 uses
  %.not567.i.i = icmp eq ptr %i.rf, null
  br i1 %.not567.i.i, label %.critedge253.i.i, label %.critedge251.i.i

.critedge253.i.i:                                 ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.rh = load i64, ptr %i.rg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %.thread147.i

.critedge251.i.i:                                 ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i

_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i: ; preds = %.critedge251.i.i, %bb.be, %bb.bd
  %i.ri = phi i32 [ 1, %bb.bd ], [ 0, %.critedge251.i.i ], [ 0, %bb.be ]
  %.sroa.0357.0.i.i = phi ptr [ %i.qt, %bb.bd ], [ %i.rf, %.critedge251.i.i ], [ %i.qu, %bb.be ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr %2, ptr %15, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %2, i64 58848
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = load i64, ptr %.sroa.0357.0.i.i, align 8
  %i.rn = call ptr @_ZN2v88internal13GlobalHandles6CreateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.rl, i64 %i.rm) #15
  store ptr %i.rn, ptr %i.rj, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store i32 0, ptr %i.ro, align 8
  %i.rp = load i64, ptr %.sroa.0357.0.i.i, align 8
  %i.rq = add i64 %i.rp, -1
  %i.rr = inttoptr i64 %i.rq to ptr               ; 4 uses
  %i.rs = load atomic volatile i64, ptr %i.rr monotonic, align 8
  %i.rt = add i64 %i.rs, 11
  %i.ru = inttoptr i64 %i.rt to ptr
  %i.rv = load atomic volatile i16, ptr %i.ru monotonic, align 2
  %i.rw = load atomic volatile i64, ptr %i.rr monotonic, align 8
  %i.rx = add i64 %i.rw, 11
  %i.ry = inttoptr i64 %i.rx to ptr
  %i.rz = load atomic volatile i16, ptr %i.ry monotonic, align 2
  %i.sa = add i16 %i.rz, -205
  %i.sb = icmp ult i16 %i.sa, 13
  br i1 %i.sb, label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i
  %i.sc = load atomic volatile i64, ptr %i.rr monotonic, align 8
  %i.sd = add i64 %i.sc, 11
  %i.se = inttoptr i64 %i.sd to ptr
  %i.sf = load atomic volatile i16, ptr %i.se monotonic, align 2
  %i.sg = icmp ult i16 %i.sf, 1042
  br i1 %i.sg, label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.sh = load atomic volatile i64, ptr %i.rr monotonic, align 8
  %i.si = add i64 %i.sh, 11
  %i.sj = inttoptr i64 %i.si to ptr
  %i.sk = load atomic volatile i16, ptr %i.sj monotonic, align 2
  %.fr.i.i.i = freeze i16 %i.sk
  %.not.i298.i.i = icmp eq i16 %.fr.i.i.i, 2061
  %spec.select.i299.i.i = select i1 %.not.i298.i.i, i32 0, i32 8
  br label %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i

_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i: ; preds = %bb.bi, %bb.bh, %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i
  %i.sl = phi i32 [ 8, %_ZNK2v88internal11MaybeHandleINS0_16NumberDictionaryEE8ToHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayES2_EEEEEbPNS0_12DirectHandleIT_EE.exit.thread.i.i ], [ %spec.select.i299.i.i, %bb.bi ], [ 0, %bb.bh ]
  %i.sm = add i16 %i.rv, -205
  %i.sn = icmp ult i16 %i.sm, 13
  %i.so = select i1 %i.sn, i32 4, i32 0
  %i.sp = or disjoint i32 %i.so, %i.ri
  %i.sq = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 5 uses
  %i.sr = or disjoint i32 %i.sp, %i.sl            ; 2 uses
  store i32 %i.sr, ptr %i.sq, align 4
  %.not244693.i.i = icmp sgt i32 %i.df, 4
  br i1 %.not244693.i.i, label %.lr.ph695.i.i, label %.critedge259.i.i

.lr.ph695.i.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_10FixedArrayENS0_16NumberDictionaryEEEEEEb.exit.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 9112
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 8896
  %i.su = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.sv = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.sw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.sx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sy = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ta = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.tb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.td = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.tf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.tg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %wide.trip.count750.i.i = zext nneg i32 %i.dg to i64
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge255.i.i, %.lr.ph695.i.i
  %indvars.iv747.i.i = phi i64 [ 0, %.lr.ph695.i.i ], [ %indvars.iv.next748.i.i, %.critedge255.i.i ] ; 3 uses
  %i.th = add nuw nsw i64 %indvars.iv747.i.i, 4
  %i.ti = load i64, ptr %16, align 8              ; 2 uses
  %i.tj = and i64 %i.ti, 4294967295
  %.not.i300.i.i = icmp samesign ugt i64 %i.th, %i.tj
  br i1 %.not.i300.i.i, label %bb.bk, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i, !prof !8

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i: ; preds = %bb.bj
  %i.tk = shl nuw i64 %indvars.iv747.i.i, 32
  %sext820.i.i = sub nuw i64 -21474836480, %i.tk
  %i.tl = ashr exact i64 %sext820.i.i, 32
  %i.tm = add i64 %i.tl, %i.ti
  %i.tn = shl nsw i64 %i.tm, 3
  %i.to = load ptr, ptr %i.b, align 8
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = sub i64 %i.tp, %i.tn
  %i.tr = inttoptr i64 %i.tq to ptr               ; 26 uses
  %i.ts = load ptr, ptr %i.c, align 8
  %i.tt = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.tu = load i32, ptr %i.g, align 8
  %i.tv = add nsw i32 %i.tu, 1
  store i32 %i.tv, ptr %i.g, align 8
  %i.tw = load i64, ptr %i.tr, align 8            ; 3 uses
  %i.tx = trunc i64 %i.tw to i1
  br i1 %i.tx, label %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i
  %i.ty = add nsw i64 %i.tw, -1
  %i.tz = inttoptr i64 %i.ty to ptr
  %i.ua = load atomic volatile i64, ptr %i.tz monotonic, align 8
  %i.ub = add i64 %i.ua, 11
  %i.uc = inttoptr i64 %i.ub to ptr
  %i.ud = load atomic volatile i16, ptr %i.uc monotonic, align 2
  %i.ue = icmp ugt i16 %i.ud, 299
  br i1 %i.ue, label %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i: ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i
  %i.uf = load i64, ptr %i.ss, align 8
  %i.ug = add i64 %i.uf, 23
  %i.uh = inttoptr i64 %i.ug to ptr
  %i.ui = load i64, ptr %i.uh, align 8
  %i.uj = and i64 %i.ui, -4294967295
  %i.uk = icmp eq i64 %i.uj, 4294967296
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  br i1 %i.uk, label %bb.bl, label %.critedge.i.i.i

bb.bl:                                            ; preds = %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i
  store i64 %i.tw, ptr %13, align 8
  %i.ul = call noundef zeroext i1 @_ZN2v88internal10JSReceiver19HasProxyInPrototypeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br i1 %i.ul, label %bb.bm, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.bm

bb.bm:                                            ; preds = %.critedge.i.i.i, %bb.bl
  %i.um = call ptr @_ZN2v88internal7Runtime17GetObjectPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_6ObjectEEESG_Pb(ptr noundef nonnull %2, ptr nonnull %i.tr, ptr nonnull %i.st, ptr null, ptr noundef null) #15 ; 2 uses
  %.not.i302.i.i = icmp eq ptr %i.um, null
  br i1 %.not.i302.i.i, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.un = load i64, ptr %i.um, align 8            ; 2 uses
  %i.uo = load i64, ptr %i.su, align 8
  %i.up = icmp eq i64 %i.un, %i.uo
  br i1 %i.up, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.uq = call noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64 %i.un, ptr noundef nonnull %2) #15
  %.sroa.0.0.insert.insert.i17.i.i.i = select i1 %i.uq, i16 257, i16 1
  br label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i: ; preds = %bb.bn, %bb.bl
  %i.ur = load i64, ptr %i.tr, align 8            ; 2 uses
  %i.us = and i64 %i.ur, 1
  %i.ut = icmp eq i64 %i.us, 0
  br i1 %i.ut, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i
  %i.uu = add nsw i64 %i.ur, -1
  %i.uv = inttoptr i64 %i.uu to ptr               ; 2 uses
  %i.uw = load atomic volatile i64, ptr %i.uv monotonic, align 8
  %i.ux = add i64 %i.uw, 11
  %i.uy = inttoptr i64 %i.ux to ptr
  %i.uz = load atomic volatile i16, ptr %i.uy monotonic, align 2
  %i.va = icmp eq i16 %i.uz, 2119
  br i1 %i.va, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.vb = load atomic volatile i64, ptr %i.uv monotonic, align 8
  %i.vc = add i64 %i.vb, 11
  %i.vd = inttoptr i64 %i.vc to ptr
  %i.ve = load atomic volatile i16, ptr %i.vd monotonic, align 2
  %i.vf = icmp eq i16 %i.ve, 302
  br i1 %i.vf, label %bb.br, label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.vg = call i16 @_ZN2v88internal7JSProxy7IsArrayENS0_12DirectHandleIS1_EE(ptr nonnull %i.tr) #15
  br label %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i

_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i: ; preds = %bb.br, %bb.bq, %bb.bp, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i, %bb.bo, %bb.bm, %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i
  %.sroa.014.1.i.i.i = phi i16 [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit301.i.i ], [ 1, %bb.bq ], [ 1, %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i.i.i ], [ 1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i.i ], [ 257, %bb.bp ], [ %i.vg, %bb.br ], [ 0, %bb.bm ], [ %.sroa.0.0.insert.insert.i17.i.i.i, %bb.bo ] ; 2 uses
  store ptr %i.ts, ptr %i.c, align 8
  %i.vh = load i32, ptr %i.g, align 8
  %i.vi = add nsw i32 %i.vh, -1
  store i32 %i.vi, ptr %i.g, align 8
  %i.vj = load ptr, ptr %i.e, align 8
  %.not.i.i.i.i = icmp eq ptr %i.vj, %i.tt
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i, label %bb.bs, !prof !11

bb.bs:                                            ; preds = %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i
  store ptr %i.tt, ptr %i.e, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #15
  br label %_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i

_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i: ; preds = %bb.bs, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit.i.i.i
  %i.vk = trunc i16 %.sroa.014.1.i.i.i to i1
  br i1 %i.vk, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.vm = load i64, ptr %i.vl, align 8
  br label %bb.et

_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i:            ; preds = %_ZN2v88internal12_GLOBAL__N_118IsConcatSpreadableEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.i.i
  %i.vn = and i16 %.sroa.014.1.i.i.i, 256
  %.not572.i.i = icmp eq i16 %i.vn, 0
  br i1 %.not572.i.i, label %bb.dr, label %bb.bu

bb.bu:                                            ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i
  %i.vo = load i64, ptr %i.tr, align 8            ; 3 uses
  %i.vp = add i64 %i.vo, -1
  %i.vq = inttoptr i64 %i.vp to ptr
  %i.vr = load atomic volatile i64, ptr %i.vq monotonic, align 8
  %i.vs = add i64 %i.vr, 11
  %i.vt = inttoptr i64 %i.vs to ptr
  %i.vu = load atomic volatile i16, ptr %i.vt monotonic, align 2
  %i.vv = icmp eq i16 %i.vu, 2119
  br i1 %i.vv, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.vw = add i64 %i.vo, 23
  %i.vx = inttoptr i64 %i.vw to ptr
  %i.vy = load i64, ptr %i.vx, align 8            ; 3 uses
  %i.vz = and i64 %i.vy, 1
  %i.wa = icmp eq i64 %i.vz, 0
  br i1 %i.wa, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.wb = lshr i64 %i.vy, 32
  %i.wc = trunc nuw i64 %i.wb to i32
  %i.wd = sitofp i32 %i.wc to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i305.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.we = add nsw i64 %i.vy, -1
  %i.wf = inttoptr i64 %i.we to ptr
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %.0.copyload.i.i.i.i.i.i304.i.i = load double, ptr %i.wg, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i305.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i305.i.i: ; preds = %bb.bx, %bb.bw
  %i.wh = phi double [ %i.wd, %bb.bw ], [ %.0.copyload.i.i.i.i.i.i304.i.i, %bb.bx ]
  %i.wi = fptoui double %i.wh to i32              ; 13 uses
  %.val.i.i.i = load i32, ptr %i.sq, align 4
  %i.wj = and i32 %.val.i.i.i, 8
  %.not578.i.i.i = icmp eq i32 %i.wj, 0
  br i1 %.not578.i.i.i, label %_ZN2v88internal12_GLOBAL__N_115IterateElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPNS1_18ArrayConcatVisitorE.exit.i.i, label %.preheader.i.i

bb.by:                                            ; preds = %bb.bu
  %i.wk = call ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr nonnull %i.tr) #15 ; 2 uses
  %.not577.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not577.i.i.i, label %_ZN2v88internal12_GLOBAL__N_115IterateElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPNS1_18ArrayConcatVisitorE.exit.thread.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.val349.i.i.i = load i32, ptr %i.ro, align 8
  %i.wl = uitofp i32 %.val349.i.i.i to double     ; 2 uses
  %i.wm = load i64, ptr %i.wk, align 8            ; 4 uses
  %i.wn = and i64 %i.wm, 1
  %i.wo = icmp eq i64 %i.wn, 0
  br i1 %i.wo, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i.i: ; preds = %bb.bz
  %i.wp = lshr i64 %i.wm, 32
  %i.wq = trunc nuw i64 %i.wp to i32              ; 2 uses
  %i.wr = sitofp i32 %i.wq to double
  %i.ws = fadd double %i.wl, %i.wr
  %i.wt = fcmp ogt double %i.ws, f0x433FFFFFFFFFFFFF
  br i1 %i.wt, label %bb.ca, label %bb.cb

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i.i.i: ; preds = %bb.bz
  %i.wu = add nsw i64 %i.wm, -1
  %i.wv = inttoptr i64 %i.wu to ptr               ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load double, ptr %i.ww, align 1 ; 3 uses
  %i.wx = fadd double %.0.copyload.i.i.i.i.i.i.i.i.i, %i.wl
  %i.wy = fcmp ogt double %i.wx, f0x433FFFFFFFFFFFFF
  br i1 %i.wy, label %bb.ca, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i

bb.ca:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i.i
  %i.wz = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 238, ptr null, i64 0) #15
  %i.xa = load i64, ptr %i.wz, align 8
  %i.xb = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.xa, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_115IterateElementsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPNS1_18ArrayConcatVisitorE.exit.thread.i.i

bb.cb:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i.i.i
  %i.xc = icmp sgt i64 %i.wm, -1
  br i1 %i.xc, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread554.i.i.i, label %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread.i.i.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE:bb.a
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = and i16 %i.cb, -96
  %.not.i21 = icmp eq i16 %i.cc, 32
  br i1 %.not.i21, label %bb.n, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

bb.n:                                             ; preds = %bb.m
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cg = load i8, ptr %i.cf, align 8, !range !13
  %i.ch = trunc nuw i8 %i.cg to i1
  %not..i.i.i23 = xor i1 %i.ce, true
  %i.ci = select i1 %not..i.i.i23, i1 true, i1 %i.ch
  br i1 %i.ci, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ck = load i8, ptr %i.cj, align 8, !range !13, !noundef !14
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cn = load ptr, ptr %i.cm, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25

_ZNK2v88internal7Isolate12string_tableEv.exit.i25: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, %bb.n
  %.pn.i.i26 = phi ptr [ %i.cn, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24 ], [ %1, %bb.n ]
  %.in.i.i27 = getelementptr inbounds nuw i8, ptr %.pn.i.i26, i64 58464
  %i.co = load ptr, ptr %.in.i.i27, align 8
  %i.cp = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %3) #15
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28: ; preds = %bb.m, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25
  %.sroa.05.0.i22 = phi ptr [ %i.cp, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25 ], [ %3, %bb.m ]
  store ptr %.sroa.05.0.i22, ptr %i.s, align 8
  tail call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #15
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28, %bb.l
  ret void
}

declare ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN2v88internal12_GLOBAL__N_116GenericArrayPushEPNS0_7IsolateEPNS0_16BuiltinArgumentsE(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.3"], align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 4294967292
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = shl i64 %i.a, 3
  %reass.sub = sub i64 %i.e, %i.f
  %i.g = add i64 %reass.sub, 40
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit, !prof !9

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit
  %i.k = add nsw i64 %i.i, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp ugt i16 %i.p, 299
  br i1 %i.q, label %.critedge, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit, !prof !10

_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.r = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef %0, ptr nonnull %i.h, ptr noundef null) #15 ; 2 uses
  %.not154 = icmp eq ptr %i.r, null
  br i1 %.not154, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.t = load i64, ptr %i.s, align 8
  br label %.thread152

.critedge:                                        ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit
  %.sroa.08.0.i142146 = phi ptr [ %i.r, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit ], [ %i.h, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 6 uses
  %i.u = tail call ptr @_ZN2v88internal6Object22GetLengthFromArrayLikeEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef %0, ptr nonnull %.sroa.08.0.i142146) #15 ; 3 uses
  %.not155 = icmp eq ptr %i.u, null
  br i1 %.not155, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge80

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.w = load i64, ptr %i.v, align 8
  br label %.thread152

.critedge80:                                      ; preds = %.critedge
  %i.x = load i64, ptr %1, align 8
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = add i32 %i.y, -5                         ; 3 uses
  %i.aa = load i64, ptr %i.u, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge80
  %i.ad = lshr i64 %i.aa, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = sitofp i32 %i.ae to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.e:                                             ; preds = %.critedge80
  %i.ag = add nsw i64 %i.aa, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ai, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.d, %bb.e
  %i.aj = phi double [ %i.af, %bb.d ], [ %.0.copyload.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ak = sitofp i32 %i.z to double
  %i.al = fsub double f0x433FFFFFFFFFFFFF, %i.aj
  %i.am = fcmp olt double %i.al, %i.ak
  br i1 %i.am, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %.not161 = icmp sgt i32 %i.y, 5
  br i1 %.not161, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %.lr.ph

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.as = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.as, %bb.g ], [ %i.ao, %bb.f ] ; 3 uses
  %i.at = sext i32 %i.z to i64
  %i.au = shl nsw i64 %i.at, 32
  %i.av = ptrtoint ptr %.0.i.i.i to i64
  %i.aw = add i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  store ptr %i.ax, ptr %i.an, align 8
  store i64 %i.au, ptr %.0.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %.0.i.i.i, ptr %3, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.u, ptr %i.ay, align 8
  %i.az = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 371, ptr nonnull %3, i64 2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ba, ptr noundef null) #15
  br label %.thread152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.075163 = phi double [ %i.aj, %.lr.ph.preheader ], [ %i.ca, %bb.m ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = add nuw nsw i64 %indvars.iv, 5
  %i.bd = load i64, ptr %1, align 8               ; 2 uses
  %i.be = and i64 %i.bd, 4294967295
  %.not.i87 = icmp samesign ugt i64 %i.bc, %i.be
  br i1 %.not.i87, label %bb.h, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !8

bb.h:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %.lr.ph
  %i.bf = shl nuw i64 %indvars.iv, 32
  %sext = sub nuw i64 -25769803776, %i.bf
  %i.bg = ashr exact i64 %sext, 32
  %i.bh = add i64 %i.bd, %i.bg
  %i.bi = shl nsw i64 %i.bh, 3                    ; 2 uses
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = sub i64 %i.bk, %i.bi
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = fcmp ugt double %.075163, f0x41EFFFFFFFC00000
  br i1 %i.bn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.bo = fptoui double %.075163 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.bp = zext i32 %i.bo to i64
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %0, ptr nonnull %.sroa.08.0.i142146, ptr null, i64 noundef %i.bp, ptr nonnull %.sroa.08.0.i142146, i32 noundef 3)
  %i.bq = call i16 @_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %2, ptr %i.bm, i32 noundef 0, i64 4294967297) #15
  %i.br = trunc i16 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.bs = icmp ne i64 %i.bi, %i.bk
  %.not157 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %.not157, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bu = load i64, ptr %i.bt, align 8
  br label %.thread152

bb.k:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.bv = fptoui double %.075163 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %0, ptr nonnull %.sroa.08.0.i142146, ptr null, i64 noundef %i.bv, ptr nonnull %.sroa.08.0.i142146, i32 noundef 3)
  %i.bw = call i16 @_ZN2v88internal6Object11SetPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %4, ptr %i.bm, i32 noundef 0, i64 4294967297) #15
  %i.bx = trunc i16 %i.bw to i1
  br i1 %i.bx, label %.critedge84, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bz = load i64, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.thread152

.critedge84:                                      ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.m

bb.m:                                             ; preds = %.critedge84, %bb.i
  %i.ca = fadd double %.075163, 1.000000e+00      ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %.075.lcssa = phi double [ %i.aj, %.preheader ], [ %i.ca, %bb.m ] ; 6 uses
  %i.cb = fcmp oge double %.075.lcssa, f0xC1E0000000000000
  %i.cc = fcmp ole double %.075.lcssa, f0x41DFFFFFFFC00000
  %or.cond.i.i.i = and i1 %i.cb, %i.cc
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.cd = call noundef i1 @llvm.is.fpclass.f64(double %.075.lcssa, /* (nzero) */ i32 32)
  br i1 %i.cd, label %bb.p, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i:          ; preds = %bb.n
  %i.ce = fptosi double %.075.lcssa to i32        ; 2 uses
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fcmp oeq double %.075.lcssa, %i.cf
  br i1 %i.cg, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.p

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i
  %i.ch = sext i32 %i.ce to i64
  %i.ci = shl nsw i64 %i.ch, 32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = icmp eq ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.o, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.o:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.co = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.o, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i88 = phi ptr [ %i.co, %bb.o ], [ %i.ck, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.cp = ptrtoint ptr %.0.i.i.i88 to i64
  %i.cq = add i64 %i.cp, 8
  %i.cr = inttoptr i64 %i.cq to ptr
  store ptr %i.cr, ptr %i.cj, align 8
  store i64 %i.ci, ptr %.0.i.i.i88, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.p:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i, %bb.n, %._crit_edge
  %i.cs = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = add i64 %i.ct, -1
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store double %.075.lcssa, ptr %i.cw, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.p
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i88, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.cs, %bb.p ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cy = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr nonnull %.sroa.08.0.i142146, ptr nonnull %i.cx, ptr nonnull %.sroa.0.0.i, i32 noundef 0, i64 4294967297) #15
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.q, label %.critedge86

bb.q:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.db = load i64, ptr %i.da, align 8
  br label %.thread152

.critedge86:                                      ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %i.dc = load i64, ptr %.sroa.0.0.i, align 8
  br label %.thread152

.thread152:                                       ; preds = %bb.j, %bb.l, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.q, %.critedge86, %bb.c
  %.sroa.0115.5 = phi i64 [ %i.t, %bb.c ], [ %i.bb, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewNumberFromIntILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEi.exit ], [ %i.dc, %.critedge86 ], [ %i.w, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.db, %bb.q ], [ %i.bu, %bb.j ], [ %i.bz, %bb.l ]
  ret i64 %.sroa.0115.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_133MatchArrayElementsKindToArgumentsEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEii(ptr noundef %0, ptr %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 -2147483648, 2147483647) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = add nsw i32 %i.b, -4
  %i.d = icmp slt i32 %i.b, 6
  br i1 %i.d, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 14
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = lshr i8 %i.k, 2                          ; 2 uses
  %i.m = and i8 %i.k, -8
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %.split

.split:                                           ; preds = %bb.b
  %i.o = add nsw i32 %3, 1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.o) ; 2 uses
  %i.p = icmp sgt i32 %.sroa.speculated, 1
  br i1 %i.p, label %_ZNK2v88internal16BuiltinArgumentsixEi.exit.lr.ph, label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZNK2v88internal16BuiltinArgumentsixEi.exit.lr.ph: ; preds = %.split
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %_ZNK2v88internal16BuiltinArgumentsixEi.exit

_ZNK2v88internal16BuiltinArgumentsixEi.exit:      ; preds = %_ZNK2v88internal16BuiltinArgumentsixEi.exit.lr.ph, %.thread
  %indvars.iv = phi i64 [ 1, %_ZNK2v88internal16BuiltinArgumentsixEi.exit.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.02153 = phi i8 [ %i.l, %_ZNK2v88internal16BuiltinArgumentsixEi.exit.lr.ph ], [ %.251, %.thread ]
  %i.t = shl i64 %indvars.iv, 32
  %sext = sub i64 -21474836480, %i.t
  %i.u = ashr exact i64 %sext, 32
  %i.v = add i64 %i.a, %i.u
  %i.w = shl nsw i64 %i.v, 3
  %i.x = sub i64 %i.s, %i.w
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZNK2v88internal16BuiltinArgumentsixEi.exit
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp eq i16 %i.ag, 130
  br i1 %i.ah, label %.thread, label %._crit_edge

.thread:                                          ; preds = %_ZNK2v88internal16BuiltinArgumentsixEi.exit, %bb.c
  %.251 = phi i8 [ 4, %bb.c ], [ %.02153, %_ZNK2v88internal16BuiltinArgumentsixEi.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK2v88internal16BuiltinArgumentsixEi.exit, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.c, %.thread
  %.3 = phi i8 [ %.251, %.thread ], [ 2, %bb.c ]  ; 2 uses
  %.not = icmp eq i8 %.3, %i.l
  br i1 %.not, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8
  tail call void @_ZN2v88internal8JSObject22TransitionElementsKindEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef %0, ptr nonnull %1, i8 noundef zeroext %.3) #15
end_hunk_2
begin_hunk_3_@_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEEPNS0_7IsolateES7_:bb.a
  %.not.i = icmp eq i16 %i.cm, 32
  br i1 %.not.i, label %bb.m, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.m:                                             ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cq = load i8, ptr %i.cp, align 8, !range !13
  %i.cr = trunc nuw i8 %i.cq to i1
  %not..i.i.i = xor i1 %i.co, true
  %i.cs = select i1 %not..i.i.i, i1 true, i1 %i.cr
  br i1 %i.cs, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.cu = load i8, ptr %i.ct, align 8, !range !13, !noundef !14
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cx = load ptr, ptr %i.cw, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.m
  %.pn.i.i = phi ptr [ %i.cx, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %1, %bb.m ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.cy = load ptr, ptr %.in.i.i, align 8
  %i.cz = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.0.0.copyload) #15
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread, %_ZNK2v88internal7Isolate12string_tableEv.exit.i
  %.sroa.05.0.i = phi ptr [ %i.cz, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.0.0.copyload, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread ]
  store ptr %.sroa.05.0.i, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread33, %_ZN2v88internal6Object14ToIntegerIndexENS0_6TaggedIS1_EEPm.exit, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit, %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit
  ret void
}

declare i16 @_ZN2v88internal10JSReceiver23DeletePropertyOrElementEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS0_12LanguageModeE(ptr noundef, ptr, ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_117SetLengthPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEm(ptr noundef %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 2119
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.j = add i64 %i.i, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = add i64 %i.l, 9
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit, label %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.i, !prof !8

_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.i: ; preds = %bb.b
  %i.q = add i64 %i.l, 39
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = and i64 %i.s, 17179869184
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread, label %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit

_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit: ; preds = %bb.b, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.i
  %i.u = tail call preserve_mostcc noundef zeroext i1 @_ZN2v88internal7JSArray25HasReadOnlyLengthSlowPathENS0_12DirectHandleIS1_EE(ptr nonnull %1) #15
  br i1 %i.u, label %bb.c, label %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread

_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread: ; preds = %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.i, %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit
  %i.v = trunc i64 %2 to i32
  %i.w = tail call i16 @_ZN2v88internal7JSArray9SetLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EEj(ptr noundef %0, ptr nonnull %1, i32 noundef %i.v) #15
  %i.x = trunc i16 %i.w to i1
  %spec.select = select i1 %i.x, ptr %1, ptr null
  br label %.thread

bb.c:                                             ; preds = %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.z = uitofp i64 %2 to double                  ; 2 uses
  %i.aa = icmp ult i64 %2, 2147483648
  %i.ab = trunc nuw i64 %2 to i32
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fcmp oeq double %i.z, %i.ac
  %or.cond = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i, label %bb.e

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i:   ; preds = %bb.c
  %i.ae = shl nuw nsw i64 %2, 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %i.ak = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i
  %.0.i.i.i = phi ptr [ %i.ak, %bb.d ], [ %i.ag, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i ] ; 3 uses
  %i.al = ptrtoint ptr %.0.i.i.i to i64
  %i.am = add i64 %i.al, 8
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %i.af, align 8
  store i64 %i.ae, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

bb.e:                                             ; preds = %bb.c
  %i.ao = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %i.z, ptr %i.as, align 1
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit: ; preds = %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.e
  %.sroa.0.0.i = phi ptr [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.ao, %bb.e ]
  %i.at = tail call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %i.y, ptr nonnull %.sroa.0.0.i, i32 noundef 0, i64 4294967297) #15
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit
  %.sroa.022.1 = phi ptr [ %i.at, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd.exit ], [ %spec.select, %_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE.exit.thread ]
  ret ptr %.sroa.022.1
}

declare i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_116Fast_ArrayConcatEPNS0_7IsolateEPNS0_16BuiltinArgumentsE(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 23
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, -4294967295
  %i.g = icmp eq i64 %i.f, 4294967296
  br i1 %i.g, label %bb.b, label %.thread90

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = add i32 %i.i, -4                         ; 2 uses
  %.not97 = icmp sgt i32 %i.i, 4
  br i1 %.not97, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113IsSimpleArrayEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !63

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.099 = phi i32 [ 0, %.lr.ph ], [ %i.dl, %bb.c ]
  %i.r = add nuw nsw i64 %indvars.iv, 4
  %i.s = load i64, ptr %1, align 8                ; 2 uses
  %i.t = and i64 %i.s, 4294967295
  %.not.i = icmp samesign ugt i64 %i.r, %i.t
  br i1 %.not.i, label %bb.e, label %_ZNK2v88internal16BuiltinArgumentsixEi.exit, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArgumentsixEi.exit:      ; preds = %bb.d
  %i.u = shl nuw i64 %indvars.iv, 32
  %sext = sub nuw i64 -21474836480, %i.u
  %i.v = ashr exact i64 %sext, 32
  %i.w = add i64 %i.s, %i.v
  %i.x = shl nsw i64 %i.w, 3
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.x
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8            ; 4 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %.thread90

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal16BuiltinArgumentsixEi.exit
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 6 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 2119
  br i1 %i.ak, label %bb.f, label %.thread90

bb.f:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.al = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp ult i16 %i.ao, 1042
  br i1 %i.ap, label %.thread90, label %_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i

_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i: ; preds = %bb.f
  %i.aq = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ar = add i64 %i.aq, 14
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i8, ptr %i.as, align 1
  %i.au = lshr i8 %i.at, 2
  %i.av = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.aw = zext nneg i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 %i.ac) #15, !inline_history !64
  br i1 %i.bc, label %.thread90, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i
  %i.bd = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.be = load i64, ptr %i.l, align 8
  %i.bf = load i64, ptr %i.m, align 8
  %i.bg = load i64, ptr %i.n, align 8
  br label %.critedge18.i.i

.critedge18.i.i:                                  ; preds = %bb.i, %bb.g
  %.sroa.037.0.in.in.in.i.i = phi i64 [ %i.bd, %bb.g ], [ %i.bj, %bb.i ]
  %.sroa.037.0.in.in.i.i = add i64 %.sroa.037.0.in.in.in.i.i, 23
  %.sroa.037.0.in.i.i = inttoptr i64 %.sroa.037.0.in.in.i.i to ptr
  %.sroa.037.0.i.i = load i64, ptr %.sroa.037.0.in.i.i, align 8 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.037.0.i.i, %i.be
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.h

bb.h:                                             ; preds = %.critedge18.i.i
  %i.bh = add i64 %.sroa.037.0.i.i, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8 ; 2 uses
  %i.bk = add i64 %i.bj, 11
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i16, ptr %i.bl monotonic, align 2
  %i.bn = icmp ult i16 %i.bm, 1042
  br i1 %i.bn, label %.thread90, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = add i64 %.sroa.037.0.i.i, 15
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp ne i64 %i.bq, %i.bf
  %i.bs = icmp ne i64 %i.bq, %i.bg
  %or.cond.i.i = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond.i.i, label %.thread90, label %.critedge18.i.i, !llvm.loop !0

_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %.critedge18.i.i
  %i.bt = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.bu = add i64 %i.bt, 14
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp ult i8 %i.bw, 24
  br i1 %i.bx, label %bb.j, label %.thread90

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit
  %i.by = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.bz = load ptr, ptr %i.p, align 8
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.k, label %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.cb = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi ptr [ %i.cb, %bb.k ], [ %i.by, %bb.j ] ; 3 uses
  %i.cc = ptrtoint ptr %.0.i.i to i64
  %i.cd = add i64 %i.cc, 8
  %i.ce = inttoptr i64 %i.cd to ptr
  store ptr %i.ce, ptr %i.o, align 8
  store i64 %i.ac, ptr %.0.i.i, align 8
  %i.cf = load atomic volatile i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.cg = add i64 %i.cf, 23
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 8
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.q, align 8
  %i.cj = add i64 %.sroa.0.0.copyload.i.i3.i, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 31
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.cq = load ptr, ptr %i.p, align 8
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.l, label %_ZN2v88internal7Isolate14native_contextEv.exit.i, !prof !8

bb.l:                                             ; preds = %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cs = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #15
  br label %_ZN2v88internal7Isolate14native_contextEv.exit.i

_ZN2v88internal7Isolate14native_contextEv.exit.i: ; preds = %bb.l, %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.i.i.i.i = phi ptr [ %i.cs, %bb.l ], [ %i.cp, %_ZN2v88internal6HandleINS0_7JSArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %i.ct = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cu = add i64 %i.ct, 8
  %i.cv = inttoptr i64 %i.cu to ptr
  store ptr %i.cv, ptr %i.o, align 8
  store i64 %i.co, ptr %.0.i.i.i.i, align 8
  %i.cw = add i64 %i.co, 639
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load atomic volatile i64, ptr %i.cx monotonic, align 8
  %i.cz = icmp eq i64 %i.ci, %i.cy
  br i1 %i.cz, label %bb.m, label %.thread90

bb.m:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit.i
  %i.da = add i64 %i.cf, 15
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load atomic volatile i32, ptr %i.db acquire, align 4
  %i.dd = and i32 %i.dc, 1047552
  %i.de = icmp eq i32 %i.dd, 1024
  br i1 %i.de, label %_ZN2v88internal12_GLOBAL__N_113IsSimpleArrayEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit, label %.thread90

_ZN2v88internal12_GLOBAL__N_113IsSimpleArrayEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit: ; preds = %bb.m
  %i.df = load i64, ptr %.0.i.i, align 8
  %i.dg = add i64 %i.df, 23
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = lshr i64 %i.di, 32
  %i.dk = trunc nuw i64 %i.dj to i32
  %i.dl = add nsw i32 %.099, %i.dk                ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 134217728
  br i1 %i.dm, label %bb.n, label %bb.c

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113IsSimpleArrayEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit
  %i.dn = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 238, ptr null, i64 0) #15
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.do, ptr noundef null) #15 ; 0 uses
  br label %.thread90

.thread:                                          ; preds = %bb.c, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.dl, %bb.c ]
  %i.dq = tail call ptr @_ZN2v88internal16ElementsAccessor6ConcatEPNS0_7IsolateEPNS0_16BuiltinArgumentsEjj(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.j, i32 noundef %.0.lcssa) #15
  br label %.thread90

.thread90:                                        ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit.i, %bb.m, %_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, %_ZNK2v88internal16BuiltinArgumentsixEi.exit, %_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i, %bb.f, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit, %bb.i, %bb.h, %bb.n, %.thread, %bb.a
  %.sroa.063.5 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %i.dq, %.thread ], [ null, %bb.n ], [ null, %bb.h ], [ null, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit ], [ null, %bb.f ], [ null, %_ZN2v88internal12_GLOBAL__N_117HasSimpleElementsENS0_6TaggedINS0_8JSObjectEEE.exit.i ], [ null, %_ZNK2v88internal16BuiltinArgumentsixEi.exit ], [ null, %_ZN2v88internal12_GLOBAL__N_129HasOnlySimpleReceiverElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit ], [ null, %bb.m ], [ null, %_ZN2v88internal7Isolate14native_contextEv.exit.i ]
  ret ptr %.sroa.063.5
}

declare ptr @_ZN2v88internal6Object23ArraySpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal16ElementsAccessor6ConcatEPNS0_7IsolateEPNS0_16BuiltinArgumentsEjj(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE6TryNewINS0_7IsolateEEENS0_11MaybeHandleIS2_EEPT_jNS0_14AllocationTypeENS0_15MinimumCapacityE(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal9Execution3NewEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_118ArrayConcatVisitor5visitEjNS0_12DirectHandleINS0_6ObjectEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = add i32 %i.b, %1                         ; 4 uses
  %i.d = xor i32 %i.b, -1
  %.not = icmp ult i32 %1, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.val = load i32, ptr %i.e, align 4             ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = or i32 %.val, 2
end_hunk_3
