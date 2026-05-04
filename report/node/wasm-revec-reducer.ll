inline.NumInlined: 4282
inline.NumDeleted: 1948
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc:bb.a
  br i1 %or.cond.i, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.thread9.i

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.z = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %sext.i.i.i.i = shl i64 %i.z, 48
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc:bb.a
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.ax, %i.t
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i, label %bb.i, !prof !19

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  br label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.az = add i16 %.sroa.017.048.i.i.i.i.i, -1
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i: ; preds = %.lr.ph.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i, %bb.l
  %i.cg = phi ptr [ %i.cf, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i ], [ %i.t, %bb.l ], [ %i.t, %.lr.ph.i.i ] ; 3 uses
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.q, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.cx = load ptr, ptr %.sroa.02.026.i, align 8  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc:bb.a
  br i1 %or.cond.i51, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i", label %.thread9.i52

bb.t:                                             ; preds = %.lr.ph.i5
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i6 = load ptr, ptr %i.db, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i6, i32 0, i32 1, i32 1)
  %i.dw = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i4, align 8
  %sext.i.i.i.i7 = shl i64 %i.dw, 48
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc:bb.a
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i8, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = icmp eq ptr %i.eu, %i.dq
  br i1 %i.ev, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i48, label %bb.v, !prof !19

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i48: ; preds = %.lr.ph.i.i.i.i.i13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i6) ]
  br label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i13
  %i.ew = add i16 %.sroa.017.048.i.i.i.i.i14, -1
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i33

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i33: ; preds = %.lr.ph.i.i22, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i31, %bb.y
  %i.gd = phi ptr [ %i.gc, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i31 ], [ %i.dq, %bb.y ], [ %i.dq, %.lr.ph.i.i22 ] ; 3 uses
  %i.ge = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.ad, label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i33, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i48, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gu = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  %.not.i34 = icmp eq ptr %i.gu, %i.dn
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv:bb.a
  br i1 %or.cond.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.thread8.i

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ac = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %sext.i.i.i.i = shl i64 %i.ac, 48
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv:bb.a
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ba, %i.w
  br i1 %i.bb, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread6.i, label %bb.i, !prof !19

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread6.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = add i16 %.sroa.017.048.i.i.i.i.i, -1
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i: ; preds = %.lr.ph.i5.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i, %bb.l
  %i.cj = phi ptr [ %i.ci, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i ], [ %i.w, %bb.l ], [ %i.w, %.lr.ph.i5.i ] ; 4 uses
  %i.ck = load ptr, ptr %i.l, align 8, !nonnull !13, !align !70
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cj, align 4 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv:bb.a
  store i32 %i.gl, ptr %.sink.in.i.i.sroa.speculated, align 4
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEvENK3$_0clEPKNS2_8PackNodeE.exit.i": ; preds = %bb.ab, %.loopexit79.sink.split.i.i, %.critedge.i.i, %bb.s, %bb.q, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread6.i, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.gm = load ptr, ptr %.sroa.02.039.i, align 8  ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
end_hunk_11
begin_hunk_12_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv:bb.a
  br i1 %or.cond.i39, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a, label %.thread9.i

bb.ae:                                            ; preds = %.lr.ph.i3
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4 = load ptr, ptr %i.gq, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4, i32 0, i32 1, i32 1)
  %i.hl = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i2, align 8
  %sext.i.i.i.i5 = shl i64 %i.hl, 48
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv:bb.a
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i6, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = icmp eq ptr %i.ij, %i.hf
  br i1 %i.ik, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i, label %bb.ag, !prof !19

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i: ; preds = %.lr.ph.i.i.i.i.i11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i4) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i11
  %i.il = add i16 %.sroa.017.048.i.i.i.i.i12, -1
end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv:bb.a
  %i.js = add nsw i32 %i.he, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i.a: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i29, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i, %bb.ad
  %i.jt = phi i32 [ %i.js, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i29 ], [ %i.he, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i ], [ %i.he, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ju = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %i.ju, %i.hb
end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc:bb.a
  br i1 %or.cond.i, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i", label %.thread9.i

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.z = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %sext.i.i.i.i = shl i64 %i.z, 48
end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc:bb.a
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.ax, %i.t
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i, label %bb.h, !prof !19

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.az = add i16 %.sroa.017.048.i.i.i.i.i, -1
end_hunk_16
begin_hunk_17_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i: ; preds = %.lr.ph.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i, %bb.k
  %i.cg = phi ptr [ %i.cf, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i ], [ %i.t, %bb.k ], [ %i.t, %.lr.ph.i.i ] ; 3 uses
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.p, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"
end_hunk_17
begin_hunk_18_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_0clEPKNS2_8PackNodeE.exit.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.cx = load ptr, ptr %.sroa.02.026.i, align 8  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
end_hunk_18
begin_hunk_19_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc:bb.a
  br i1 %or.cond.i52, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i", label %.thread9.i53

bb.u:                                             ; preds = %.lr.ph.i6
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i7 = load ptr, ptr %i.df, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i7, i32 0, i32 1, i32 1)
  %i.eb = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i5, align 8
  %sext.i.i.i.i8 = shl i64 %i.eb, 48
end_hunk_19
begin_hunk_20_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc:bb.a
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i9, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = icmp eq ptr %i.ez, %i.dv
  br i1 %i.fa, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i49, label %bb.w, !prof !19

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i49: ; preds = %.lr.ph.i.i.i.i.i14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i7) ]
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i14
  %i.fb = add i16 %.sroa.017.048.i.i.i.i.i15, -1
end_hunk_20
begin_hunk_21_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc:bb.a
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i34

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i34: ; preds = %.lr.ph.i.i23, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i32, %bb.z
  %i.gi = phi ptr [ %i.gh, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread.i32 ], [ %i.dv, %bb.z ], [ %i.dv, %.lr.ph.i.i23 ] ; 3 uses
  %i.gj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.ae, label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"
end_hunk_21
begin_hunk_22_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i48, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i34, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i49, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gz = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  %.not.i35 = icmp eq ptr %i.gz, %i.ds
end_hunk_22
