inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZNK8facebook5velox6common11BytesValues13testingEqualsERKNS1_6FilterE:bb.a
bb.n:                                             ; preds = %bb.m
  %i.er = zext nneg i16 %i.ep to i32
  %i.es = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.er, i1 true)
  %2 = sub nuw nsw i32 31, %i.es
  %i.et = zext nneg i32 %2 to i64                 ; 2 uses
  %i.eu = icmp ne ptr %i.el, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.eu)
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox6common11BytesValues13testingEqualsERKNS1_6FilterE:bb.a
bb.u:                                             ; preds = %bb.t
  %i.gu = zext nneg i16 %i.gs to i32
  %i.gv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gu, i1 true)
  %3 = sub nuw nsw i32 31, %i.gv
  %i.gw = zext nneg i32 %3 to i64                 ; 2 uses
  %i.gx = icmp ne ptr %i.go, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.gx)
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6common26BigintValuesUsingHashTableC2EllRKSt6vectorIlSaIlEEb:bb.a
  %i.dn = ashr exact i64 %i.dm, 3
  %i.do = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = shl nuw nsw i64 %i.do, 1
  %9 = sub nuw nsw i64 126, %i.dp
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.cs, ptr %i.ct, i64 noundef %9)
          to label %.noexc53 unwind label %bb.t

end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox6common27HugeintValuesUsingHashTable9serializeEv:bb.a
bb.t:                                             ; preds = %bb.s
  %i.bw = zext nneg i16 %i.bu to i32
  %i.bx = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %6 = sub nuw nsw i32 31, %i.bx
  %i.by = zext nneg i32 %6 to i64                 ; 2 uses
  %i.bz = icmp ne ptr %i.bq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bz)
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox6common27HugeintValuesUsingHashTable13testingEqualsERKNS1_6FilterE:bb.a
bb.i:                                             ; preds = %bb.h
  %i.bm = zext nneg i16 %i.bk to i32
  %i.bn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bm, i1 true)
  %2 = sub nuw nsw i32 31, %i.bn
  %i.bo = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bp = icmp ne ptr %i.bg, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bp)
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox6common27HugeintValuesUsingHashTable13testingEqualsERKNS1_6FilterE:bb.a
bb.p:                                             ; preds = %bb.o
  %i.ds = zext nneg i16 %i.dq to i32
  %i.dt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ds, i1 true)
  %3 = sub nuw nsw i32 31, %i.dt
  %i.du = zext nneg i32 %3 to i64                 ; 2 uses
  %i.dv = icmp ne ptr %i.dm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dv)
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter9mergeWithEPKNS1_6FilterE:bb.a
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 5 uses
  %i.dr = ashr exact i64 %i.dq, 3                 ; 7 uses
  %.not = icmp eq ptr %i.dl, %i.dn
  br i1 %.not, label %._crit_edge137.thread, label %.lr.ph136

end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter9mergeWithEPKNS1_6FilterE:bb.a
  br i1 %i.dw, label %bb.ac, label %._crit_edge137.thread

bb.ac:                                            ; preds = %._crit_edge137
  %i.dx = sub nuw i64 %.1, %i.dr                  ; 3 uses
  %i.dy = icmp ult i64 %i.dr, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dy)
  %8 = icmp ugt i64 %.1, 1152921504606846975
  br i1 %8, label %bb.ad, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #46
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter9mergeWithEPKNS1_6FilterE:bb.a
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.1 = phi i64 [ %i.fn, %bb.ah ], [ %.032134, %bb.ag ] ; 5 uses
  %i.fp = add nuw nsw i64 %.0135, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.fp, %i.dr
  br i1 %exitcond.not, label %._crit_edge137, label %bb.ag, !llvm.loop !1226
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIlSaIlEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 1152921504606846975, %i.g  ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit
  %i.cy = icmp ne i16 %i.cw, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cx, i1 true)
  %2 = sub nuw nsw i32 31, %i.cz
  %i.da = zext nneg i32 %2 to i64                 ; 2 uses
  br label %bb.k

end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  %i.db = icmp ne i16 %i.cz, 0
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.da, i1 true)
  %2 = sub nuw nsw i32 31, %i.dc
  %i.dd = zext nneg i32 %2 to i64                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dd
end_hunk_11
