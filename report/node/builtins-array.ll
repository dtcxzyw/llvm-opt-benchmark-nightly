inline.NumInlined: 2103
inline.NumDeleted: 818
begin_hunk_0_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  br i1 %i.dm, label %._crit_edge.i.i, label %.lr.ph616.i.i

.lr.ph616.i.i:                                    ; preds = %bb.n
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 656 ; 5 uses
  %i.dp = zext nneg i32 %i.dg to i64
  br label %bb.o

end_hunk_0
begin_hunk_1_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %i.gc = phi double [ %i.fy, %bb.z ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.aa ]
  %i.gd = fptoui double %i.gc to i32
  %.fr150 = freeze i32 %i.gd                      ; 30 uses
  %i.ge = add i64 %i.ft, -1
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = load atomic volatile i64, ptr %i.gf monotonic, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  ]

bb.ab:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %i.gl = icmp sgt i32 %.fr150, 0
  br i1 %i.gl, label %.lr.ph125.i.i.i, label %.loopexit.i.i.i

.lr.ph125.i.i.i:                                  ; preds = %bb.ab
end_hunk_2
begin_hunk_3_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %i.gp = add i64 %i.go, -1
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 5 uses
  %wide.trip.count133.i.i.i = zext i32 %.fr150 to i64 ; 2 uses
  %xtraiter144 = and i64 %wide.trip.count133.i.i.i, 3 ; 3 uses
  %i.gs = icmp ult i32 %.fr150, 4
  br i1 %i.gs, label %.epil.preheader143, label %.lr.ph125.i.i.i.new

.lr.ph125.i.i.i.new:                              ; preds = %.lr.ph125.i.i.i
  %unroll_iter148 = and i64 %wide.trip.count133.i.i.i, 4294967292
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph125.i.i.i.new
end_hunk_3
begin_hunk_4_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %niter149 = phi i64 [ 0, %.lr.ph125.i.i.i.new ], [ %niter149.next.3, %bb.ac ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv130.i.i.i
  %i.gu = load atomic volatile i64, ptr %i.gt monotonic, align 8
  %17 = load i64, ptr %i.do, align 8              ; 4 uses
  %i.gv = icmp ne i64 %i.gu, %17
  %i.gw = zext i1 %i.gv to i32
  %spec.select.i.i.i = add nuw nsw i32 %.032124.i.i.i, %i.gw
end_hunk_4
begin_hunk_5_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %i.hu = load atomic volatile i16, ptr %i.ht monotonic, align 2
  %i.hv = add i16 %i.hu, -218
  %i.hw = icmp ult i16 %i.hv, -13
  %i.hx = icmp sgt i32 %.fr150, 0
  %or.cond.i.i.i = select i1 %i.hw, i1 %i.hx, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph121.i.i.i, label %.loopexit.i.i.i

.lr.ph121.i.i.i:                                  ; preds = %bb.ad
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr150 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.fr150, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph121.i.i.i
end_hunk_5
begin_hunk_6_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %i.ip = add i64 %i.io, -1
  %i.iq = inttoptr i64 %i.ip to ptr               ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = load atomic volatile i64, ptr %i.ir monotonic, align 8
  %.fr = freeze i64 %i.is                         ; 2 uses
  %i.it = lshr i64 %.fr, 32                       ; 4 uses
  %.not116.i.i.i = icmp eq i64 %i.it, 0
  br i1 %.not116.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 3 uses
  %i.iv = icmp eq i64 %i.it, 1
  br i1 %i.iv, label %.epil.preheader, label %.lr.ph.i.i.i.new

end_hunk_6
begin_hunk_7_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %i.ix = ashr exact i64 %sext.i.i.i.i.i, 29
  %i.iy = getelementptr inbounds i8, ptr %i.iu, i64 %i.ix
  %i.iz = load atomic volatile i64, ptr %i.iy monotonic, align 8 ; 2 uses
  %18 = load i64, ptr %i.dn, align 8              ; 2 uses
  %i.ja = icmp eq i64 %i.iz, %18
  br i1 %i.ja, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.af
end_hunk_7
begin_hunk_8_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %i.jg = ashr exact i64 %sext.i.i.i.i.i.1, 29
  %i.jh = getelementptr inbounds i8, ptr %i.iu, i64 %i.jg
  %i.ji = load atomic volatile i64, ptr %i.jh monotonic, align 8 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, %18
  br i1 %i.jj, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
end_hunk_8
begin_hunk_9_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %epil.iter = phi i64 [ 0, %.epil.preheader143 ], [ %epil.iter.next, %bb.ai ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv130.i.i.i.epil
  %i.jq = load atomic volatile i64, ptr %i.jp monotonic, align 8
  %19 = load i64, ptr %i.do, align 8
  %i.jr = icmp ne i64 %i.jq, %19
  %i.js = zext i1 %i.jr to i32
  %spec.select.i.i.i.epil = add nuw nsw i32 %.032124.i.i.i.epil, %i.js ; 2 uses
  %indvars.iv.next131.i.i.i.epil = add nuw nsw i64 %indvars.iv130.i.i.i.epil, 1
end_hunk_9
begin_hunk_10_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.i, label %bb.ai, !llvm.loop !32

.loopexit.i.i.i.loopexit136.unr-lcssa:            ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1
  %i.jt = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.jt, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.epil.preheader

end_hunk_10
begin_hunk_11_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %i.jv = ashr exact i64 %sext.i.i.i.i.i.epil, 29
  %i.jw = getelementptr inbounds i8, ptr %i.iu, i64 %i.jv
  %i.jx = load atomic volatile i64, ptr %i.jw monotonic, align 8 ; 2 uses
  %20 = load i64, ptr %i.dn, align 8
  %i.jy = icmp eq i64 %i.jx, %20
  br i1 %i.jy, label %.loopexit.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil: ; preds = %.epil.preheader
end_hunk_11
begin_hunk_12_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i, %.loopexit.i.i.i, %bb.ag, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i
  %.0214.i.i = phi i32 [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %.7.i.i.i, %.loopexit.i.i.i ], [ 0, %bb.ag ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr150, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ]
  %.0213.i.i = phi i32 [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %i.fj, %.loopexit.i.i.i ], [ %i.fj, %bb.ag ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ]
  %.4.i.i = phi i8 [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %..i280.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %.2.i.i, %.loopexit.i.i.i ], [ %.2.i.i, %bb.ag ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.2.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.1606.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ] ; 5 uses
  %.2195.i.i = call i32 @llvm.uadd.sat.i32(i32 %.1194605.i.i, i32 %.0213.i.i) ; 5 uses
end_hunk_12
begin_hunk_13_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a
  %i.kr = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewFixedDoubleArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.0193.lcssa.i.i, i8 noundef zeroext 0) #16 ; 7 uses
  %.not243.i.i = icmp ne i32 %.0193.lcssa.i.i, 0
  %i.ks = icmp sgt i32 %i.df, 4
  %or.cond639.i.i = select i1 %.not243.i.i, i1 %i.ks, i1 false
  br i1 %or.cond639.i.i, label %.lr.ph633.i.i, label %.thread535.i.i

.lr.ph633.i.i:                                    ; preds = %bb.ak
end_hunk_13
