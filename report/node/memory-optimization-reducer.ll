inline.NumInlined: 1738
inline.NumDeleted: 917
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv:bb.a
  %.sroa.0.0143 = phi i32 [ %.sroa.01.0.copyload.i, %.lr.ph ], [ %i.mp, %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit ] ; 3 uses
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = zext i32 %.sroa.0.0143 to i64
  %i.bi = add i64 %i.bg, %i.bh                    ; 5 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 20 uses
  %i.bk = load i8, ptr %i.bj, align 4             ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 104
  br i1 %i.bl, label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i: ; preds = %bb.e
  %i.bp = call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bj)
  %i.bq = and i32 %i.bp, 262144
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge.i: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i
  %.pre.i = load i8, ptr %i.bj, align 4
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge.i, %bb.e
  %i.br = phi i8 [ %.pre.i, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge.i ], [ %i.bk, %bb.e ]
  switch i8 %i.br, label %bb.cb [
    i8 -87, label %bb.f
    i8 78, label %bb.be
  ]

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i
  %i.bs = load ptr, ptr %i.j, align 8, !nonnull !10, !align !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.by = add i64 %i.bw, %i.bx
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4
  %.not.i24 = icmp eq i8 %i.ca, 75                ; 3 uses
  br i1 %.not.i24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.029.0.i = phi i64 [ undef, %bb.f ], [ %i.cc, %bb.g ] ; 5 uses
  %i.cd = load i32, ptr %i.ac, align 8
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.i, label %bb.ab

bb.i:                                             ; preds = %bb.h
  %i.cf = load ptr, ptr %i.w, align 8             ; 3 uses
  %.not14.i = icmp eq ptr %i.cf, null
  br i1 %.not14.i, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i24, label %bb.k, label %.thread34.i

.thread34.i:                                      ; preds = %bb.j
  store ptr %i.bj, ptr %i.w, align 8
  store i8 0, ptr %i.ad, align 4
  br label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.cg = load i8, ptr %i.ad, align 4, !range !9, !noundef !10
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.cj = load i8, ptr %i.ci, align 4             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cl = load i8, ptr %i.ck, align 4
  %i.cm = icmp ne i8 %i.cj, %i.cl
  %.not15.i25 = icmp eq i8 %i.cj, 5
  %or.cond.i = or i1 %.not15.i25, %i.cm
  br i1 %or.cond.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.co = sub i32 131072, %i.cn
  %i.cp = zext i32 %i.co to i64
  %.not16.i = icmp ugt i64 %.sroa.029.0.i, %i.cp
  br i1 %.not16.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = trunc nuw i64 %.sroa.029.0.i to i32
  %i.cr = add i32 %i.cn, %i.cq
  %.sroa.019.0.insert.ext.i = zext i32 %i.cr to i64
  %.sroa.019.0.insert.insert.i = or disjoint i64 %.sroa.019.0.insert.ext.i, 4294967296
  store i64 %.sroa.019.0.insert.insert.i, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.bj, ptr %i.a, align 8
  %i.cs = load i64, ptr %i.af, align 8, !noalias !16 ; 4 uses
  %i.ct = icmp ult i64 %i.cs, 2
  br i1 %i.ct, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cu = load i64, ptr %i.ah, align 8, !noalias !23
  %.not.i.i.i.i.i.i.i77 = icmp ult i64 %i.cu, 131072
  br i1 %.not.i.i.i.i.i.i.i77, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 131072, ptr %i.ah, align 8, !noalias !23
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread

bb.q:                                             ; preds = %bb.o
  %i.cv = load ptr, ptr %i.ag, align 8, !noalias !23
  %i.cw = icmp eq ptr %i.cv, %i.bj
  br i1 %i.cw, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17, !noalias !23
  store ptr %i.af, ptr %1, align 8, !noalias !23
  store ptr %i.a, ptr %i.aj, align 8, !noalias !23
  %i.cx = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft10AllocateOpEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #17, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !23
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i79 = load ptr, ptr %i.ai, align 8, !noalias !23
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i79, i64 %i.cx
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread

bb.s:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !28 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !28
  %i.cz = load i64, ptr %i.ah, align 8, !noalias !28
  %sext.i = shl i64 %i.cz, 48
  %i.da = ashr exact i64 %sext.i, 48
  %i.db = xor i64 %i.bi, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.dc = zext i64 %i.db to i128
  %i.dd = mul nuw nsw i128 %i.dc, 8779197792823184629 ; 2 uses
  %i.de = lshr i128 %i.dd, 64
  %i.df = xor i128 %i.de, %i.dd
  %i.dg = trunc i128 %i.df to i64
  %i.dh = xor i64 %i.da, %i.dg                    ; 3 uses
  %i.di = lshr i64 %i.dh, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ai, align 8, !noalias !28 ; 2 uses
  %i.dk = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %i.dl = shufflevector <16 x i8> %i.dk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.pn.i = phi i64 [ %i.dh, %bb.s ], [ %i.ej, %bb.u ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.s ], [ %i.ei, %bb.u ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.cs            ; 5 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.dm, i32 0, i32 3, i32 1), !noalias !28
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.do = load <16 x i8>, ptr %i.dn, align 1, !noalias !28 ; 2 uses
  %i.dp = icmp eq <16 x i8> %i.dl, %i.do
  %i.dq = bitcast <16 x i1> %i.dp to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.dq, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.dz, %.critedge.i ], [ %i.dq, %bb.t ] ; 3 uses
  %i.dr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = add i64 %.sroa.7.0.i, %i.ds
  %i.du = and i64 %i.dt, %i.cs
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.du ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !28
  %i.dx = icmp eq ptr %i.dw, %i.bj
  br i1 %i.dx, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit, label %.critedge.i, !prof !31

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.dy = add i16 %.sroa.035.065.i, -1
  %i.dz = and i16 %i.dy, %.sroa.035.065.i         ; 2 uses
  %.not.i83 = icmp eq i16 %i.dz, 0
  br i1 %.not.i83, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.t
  %i.ea = icmp eq <16 x i8> %i.do, splat (i8 -128)
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.eb, 0
  br i1 %.not57.i, label %bb.u, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread111, !prof !5

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread111: ; preds = %.critedge19.i
  %i.ec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eb, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = add i64 %.sroa.7.0.i, %i.ed
  %i.ef = and i64 %i.ee, %i.cs
  %i.eg = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.dh, i64 %i.ef, i64 %.sroa.15.0.i) #17, !noalias !28
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ai, align 8, !noalias !28
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.eg
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread

bb.u:                                             ; preds = %.critedge19.i
  %i.ei = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.ej = add i64 %i.ei, %.sroa.7.0.i
  br label %bb.t

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread: ; preds = %bb.p, %bb.r, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread111
  %.sroa.3104.0107 = phi ptr [ %i.eh, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread111 ], [ %i.ag, %bb.p ], [ %i.cy, %bb.r ] ; 3 uses
  %i.ek = load ptr, ptr %i.a, align 8, !noalias !32
  store ptr %i.ek, ptr %.sroa.3104.0107, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.3104.0107, i64 8
  store ptr null, ptr %i.el, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit: ; preds = %.lr.ph.i, %bb.q, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread
  %.sroa.3104.0108 = phi ptr [ %i.ag, %bb.q ], [ %.sroa.3104.0107, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.thread ], [ %i.dv, %.lr.ph.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.3104.0108, i64 8
  store ptr %i.cf, ptr %i.em, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.en = load i64, ptr %i.ak, align 8, !noalias !42
  %i.eo = icmp ult i64 %i.en, 2
  br i1 %i.eo, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.ep = load i64, ptr %i.al, align 8, !noalias !49
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ep, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 131072, ptr %i.al, align 8, !noalias !49
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.eq = load ptr, ptr %i.am, align 8, !noalias !49
  %i.er = load ptr, ptr %i.w, align 8, !noalias !49
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !49
  store ptr %i.ak, ptr %2, align 8, !noalias !49
  store ptr %i.w, ptr %i.an, align 8, !noalias !49
  %i.et = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft10AllocateOpEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #17, !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !49
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !49
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, i64 %i.et
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %.sink16.i.i.i.i.i.i = phi ptr [ %i.eu, %bb.y ], [ %i.am, %bb.w ], [ %i.am, %bb.x ] ; 2 uses
  %.sink.i.i.i.i.i.i = phi i8 [ 1, %bb.y ], [ 1, %bb.w ], [ 0, %bb.x ]
  store ptr %.sink16.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !49
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i

bb.z:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.636") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !9, !alias.scope !50
  %.sroa.2.0.copyload.i.pre162.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.z, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i
  %.sroa.2.0.copyload.i.pre162 = phi ptr [ %.sink16.i.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i ], [ %.sroa.2.0.copyload.i.pre162.pre, %bb.z ] ; 3 uses
  %i.ev = phi i8 [ %.sink.i.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i ], [ %.pre.i.i.i, %bb.z ]
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.aa, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit

bb.aa:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i
  %i.ex = load ptr, ptr %i.w, align 8, !noalias !50
  store ptr %i.ex, ptr %.sroa.2.0.copyload.i.pre162, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.pre162, i64 8
  store i32 0, ptr %i.ey, align 8
  %.sroa.2.0.copyload.i.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i, %bb.aa
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i.pre162, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i ], [ %.sroa.2.0.copyload.i.pre, %bb.aa ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = load i32, ptr %i.ae, align 8
  %i.fc = call i32 @llvm.umax.i32(i32 %i.fa, i32 %i.fb)
  store i32 %i.fc, ptr %i.ez, align 4
  br label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit

.thread.i:                                        ; preds = %bb.m, %bb.l, %bb.k
  store ptr %i.bj, ptr %i.w, align 8
  store i8 0, ptr %i.ad, align 4
  %.old.i = icmp ult i64 %.sroa.029.0.i, 131073
  br i1 %.old.i, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.i, %bb.h
  store ptr %i.bj, ptr %i.w, align 8
  store i8 0, ptr %i.ad, align 4
  %i.fd = icmp ult i64 %.sroa.029.0.i, 131073
  %or.cond37.i = select i1 %.not.i24, i1 %i.fd, i1 false
  br i1 %or.cond37.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %.thread.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.029.0.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ae, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.thread.i, %.thread34.i
  %i.fe = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.ff = icmp ult i64 %i.fe, 2                   ; 2 uses
  br i1 %i.ff, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fg = load i64, ptr %i.al, align 8
  %.not.i.i.i.i68 = icmp ult i64 %i.fg, 131072
  br i1 %.not.i.i.i.i68, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = load ptr, ptr %i.am, align 8
  %i.fi = icmp eq ptr %i.fh, %i.bj
  %i.fj = select i1 %i.fi, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.ag:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i.i.i.i.i47 = load ptr, ptr %i.am, align 8 ; 3 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i47, i32 0, i32 1, i32 1)
  %i.fk = load i64, ptr %i.al, align 8
  %sext.i.i48 = shl i64 %i.fk, 48
  %i.fl = ashr exact i64 %sext.i.i48, 48
  %i.fm = xor i64 %i.bi, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.fn = zext i64 %i.fm to i128
  %i.fo = mul nuw nsw i128 %i.fn, 8779197792823184629 ; 2 uses
  %i.fp = lshr i128 %i.fo, 64
  %i.fq = xor i128 %i.fp, %i.fo
  %i.fr = trunc i128 %i.fq to i64
  %i.fs = xor i64 %i.fl, %i.fr                    ; 2 uses
  %i.ft = lshr i64 %i.fs, 57
  %i.fu = trunc nuw nsw i64 %i.ft to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i49 = load ptr, ptr %i.ao, align 8 ; 2 uses
  %i.fv = insertelement <16 x i8> poison, i8 %i.fu, i64 0
  %i.fw = shufflevector <16 x i8> %i.fv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %.pn.i7.i.i50 = phi i64 [ %i.fs, %bb.ag ], [ %i.gp, %bb.aj ]
  %.sroa.13.0.i.i.i51 = phi i64 [ 0, %bb.ag ], [ %i.go, %bb.aj ]
  %.sroa.6.0.i.i.i52 = and i64 %.pn.i7.i.i50, %i.fe ; 4 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i49, i64 %.sroa.6.0.i.i.i52
  call void @llvm.prefetch.p0(ptr %i.fx, i32 0, i32 3, i32 1)
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i47, i64 %.sroa.6.0.i.i.i52
  %i.fz = load <16 x i8>, ptr %i.fy, align 1      ; 2 uses
  %i.ga = icmp eq <16 x i8> %i.fw, %i.fz
  %i.gb = bitcast <16 x i1> %i.ga to i16          ; 2 uses
  %.not46.i.i.i53 = icmp eq i16 %i.gb, 0
  br i1 %.not46.i.i.i53, label %._crit_edge.i.i.i57, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %bb.ah, %bb.ai
  %.sroa.017.047.i.i.i55 = phi i16 [ %i.gl, %bb.ai ], [ %i.gb, %bb.ah ] ; 3 uses
  %i.gc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i55, i1 true)
  %i.gd = zext nneg i16 %i.gc to i64
  %i.ge = add i64 %.sroa.6.0.i.i.i52, %i.gd
  %i.gf = and i64 %i.ge, %i.fe                    ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i49, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = icmp eq ptr %i.gh, %i.bj
  br i1 %i.gi, label %.thread33.i.i.i67, label %bb.ai, !prof !31

.thread33.i.i.i67:                                ; preds = %.lr.ph.i.i.i54
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i47, i64 %i.gf ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i54
  %i.gk = add i16 %.sroa.017.047.i.i.i55, -1
  %i.gl = and i16 %i.gk, %.sroa.017.047.i.i.i55   ; 2 uses
  %.not.i.i.i56 = icmp eq i16 %i.gl, 0
  br i1 %.not.i.i.i56, label %._crit_edge.i.i.i57, label %.lr.ph.i.i.i54

._crit_edge.i.i.i57:                              ; preds = %bb.ai, %bb.ah
  %i.gm = icmp eq <16 x i8> %i.fz, splat (i8 -128)
  %i.gn = bitcast <16 x i1> %i.gm to i16
  %.not44.i.i.i58 = icmp eq i16 %i.gn, 0
  br i1 %.not44.i.i.i58, label %bb.aj, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit, !prof !5

bb.aj:                                            ; preds = %._crit_edge.i.i.i57
  %i.go = add i64 %.sroa.13.0.i.i.i51, 16         ; 2 uses
  %i.gp = add i64 %i.go, %.sroa.6.0.i.i.i52
  br label %bb.ah, !llvm.loop !51

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i: ; preds = %.thread33.i.i.i67, %bb.af
  %.pn.i.i63 = phi ptr [ %i.fj, %bb.af ], [ %i.gj, %.thread33.i.i.i67 ] ; 5 uses
  %i.gq = icmp eq ptr %.pn.i.i63, null            ; 2 uses
  %i.gr = icmp eq ptr %.pn.i.i63, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i64 = or i1 %i.gq, %i.gr
  br i1 %or.cond.i.i.i64, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65, label %bb.ak

bb.ak:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i
  %i.gs = load i8, ptr %.pn.i.i63, align 1
  %i.gt = icmp sgt i8 %i.gs, -1
  br i1 %i.gt, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65, label %bb.al, !prof !31

bb.al:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65: ; preds = %bb.ak, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i
  br i1 %i.gr, label %bb.am, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit.i, !prof !52

bb.am:                                            ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #17
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit.i: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65
  br i1 %i.gq, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit.i
  %i.gu = load i8, ptr %.pn.i.i63, align 1
  %i.gv = icmp sgt i8 %i.gu, -1
  br i1 %i.gv, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.ao, !prof !31

bb.ao:                                            ; preds = %bb.an
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26) #17
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit.i: ; preds = %bb.an
  br i1 %i.ff, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit.i
  call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i1 noundef zeroext true, i64 noundef 16) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit

bb.aq:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit.i
  call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull %.pn.i.i63, i64 noundef 16) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit: ; preds = %._crit_edge.i.i.i57, %bb.ae, %bb.aq, %bb.ap, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit.i
  %i.gw = load i64, ptr %i.af, align 8            ; 3 uses
  %i.gx = icmp ult i64 %i.gw, 2                   ; 2 uses
  br i1 %i.gx, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit
  %i.gy = load i64, ptr %i.ah, align 8
  %.not.i.i.i.i44 = icmp ult i64 %i.gy, 131072
  br i1 %.not.i.i.i.i44, label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gz = load ptr, ptr %i.ag, align 8
  %i.ha = icmp eq ptr %i.gz, %i.bj
  %i.hb = select i1 %i.ha, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.at:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit
  %.sroa.0.0.copyload.i.i.i.i.i.i26 = load ptr, ptr %i.ag, align 8 ; 3 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i26, i32 0, i32 1, i32 1)
  %i.hc = load i64, ptr %i.ah, align 8
  %sext.i.i27 = shl i64 %i.hc, 48
  %i.hd = ashr exact i64 %sext.i.i27, 48
  %i.he = xor i64 %i.bi, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.hf = zext i64 %i.he to i128
  %i.hg = mul nuw nsw i128 %i.hf, 8779197792823184629 ; 2 uses
  %i.hh = lshr i128 %i.hg, 64
  %i.hi = xor i128 %i.hh, %i.hg
  %i.hj = trunc i128 %i.hi to i64
  %i.hk = xor i64 %i.hd, %i.hj                    ; 2 uses
  %i.hl = lshr i64 %i.hk, 57
  %i.hm = trunc nuw nsw i64 %i.hl to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i28 = load ptr, ptr %i.ai, align 8 ; 2 uses
  %i.hn = insertelement <16 x i8> poison, i8 %i.hm, i64 0
  %i.ho = shufflevector <16 x i8> %i.hn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %.pn.i7.i.i = phi i64 [ %i.hk, %bb.at ], [ %i.ih, %bb.aw ]
  %.sroa.13.0.i.i.i29 = phi i64 [ 0, %bb.at ], [ %i.ig, %bb.aw ]
  %.sroa.6.0.i.i.i30 = and i64 %.pn.i7.i.i, %i.gw ; 4 uses
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i28, i64 %.sroa.6.0.i.i.i30
  call void @llvm.prefetch.p0(ptr %i.hp, i32 0, i32 3, i32 1)
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i26, i64 %.sroa.6.0.i.i.i30
  %i.hr = load <16 x i8>, ptr %i.hq, align 1      ; 2 uses
  %i.hs = icmp eq <16 x i8> %i.ho, %i.hr
  %i.ht = bitcast <16 x i1> %i.hs to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ht, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i33, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %bb.au, %bb.av
  %.sroa.017.047.i.i.i = phi i16 [ %i.id, %bb.av ], [ %i.ht, %bb.au ] ; 3 uses
  %i.hu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.hv = zext nneg i16 %i.hu to i64
  %i.hw = add i64 %.sroa.6.0.i.i.i30, %i.hv
  %i.hx = and i64 %i.hw, %i.gw                    ; 2 uses
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i28, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = icmp eq ptr %i.hz, %i.bj
  br i1 %i.ia, label %.thread33.i.i.i43, label %bb.av, !prof !31

.thread33.i.i.i43:                                ; preds = %.lr.ph.i.i.i31
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i26, i64 %i.hx ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.av:                                            ; preds = %.lr.ph.i.i.i31
  %i.ic = add i16 %.sroa.017.047.i.i.i, -1
  %i.id = and i16 %i.ic, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i32 = icmp eq i16 %i.id, 0
  br i1 %.not.i.i.i32, label %._crit_edge.i.i.i33, label %.lr.ph.i.i.i31

._crit_edge.i.i.i33:                              ; preds = %bb.av, %bb.au
  %i.ie = icmp eq <16 x i8> %i.hr, splat (i8 -128)
  %i.if = bitcast <16 x i1> %i.ie to i16
  %.not44.i.i.i34 = icmp eq i16 %i.if, 0
  br i1 %.not44.i.i.i34, label %bb.aw, label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit, !prof !5

bb.aw:                                            ; preds = %._crit_edge.i.i.i33
  %i.ig = add i64 %.sroa.13.0.i.i.i29, 16         ; 2 uses
  %i.ih = add i64 %i.ig, %.sroa.6.0.i.i.i30
  br label %bb.au, !llvm.loop !53

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit.i: ; preds = %.thread33.i.i.i43, %bb.as
  %.pn.i.i39 = phi ptr [ %i.hb, %bb.as ], [ %i.ib, %.thread33.i.i.i43 ] ; 5 uses
  %i.ii = icmp eq ptr %.pn.i.i39, null            ; 2 uses
  %i.ij = icmp eq ptr %.pn.i.i39, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i40 = or i1 %i.ii, %i.ij
  br i1 %or.cond.i.i.i40, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i41, label %bb.ax

bb.ax:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit.i
  %i.ik = load i8, ptr %.pn.i.i39, align 1
  %i.il = icmp sgt i8 %i.ik, -1
  br i1 %i.il, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i41, label %bb.ay, !prof !31

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i41: ; preds = %bb.ax, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit.i
  br i1 %i.ij, label %bb.az, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit.i, !prof !54

bb.az:                                            ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i41
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #17
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit.i: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i41
  br i1 %i.ii, label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit.i
  %i.im = load i8, ptr %.pn.i.i39, align 1
  %i.in = icmp sgt i8 %i.im, -1
  br i1 %i.in, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.bb, !prof !31

bb.bb:                                            ; preds = %bb.ba
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26) #17
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iterator14assert_is_fullEPKc.exit.i: ; preds = %bb.ba
  br i1 %i.gx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iterator14assert_is_fullEPKc.exit.i
  call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i1 noundef zeroext true, i64 noundef 16) #17
  br label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit

bb.bd:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iterator14assert_is_fullEPKc.exit.i
  call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull %.pn.i.i39, i64 noundef 16) #17
  br label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit

bb.be:                                            ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.io = load ptr, ptr %i.j, align 8, !nonnull !10, !align !11
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = sub i64 %i.bi, %i.ir
  %i.it = trunc i64 %i.is to i32
  store i32 %i.it, ptr %5, align 4
  %i.iu = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer16SkipWriteBarrierERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.bj)
  %i.iv = load i64, ptr %i.x, align 8             ; 6 uses
  %i.iw = icmp ult i64 %i.iv, 2                   ; 3 uses
  br i1 %i.iu, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  br i1 %i.iw, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.ix = load i64, ptr %i.z, align 8, !noalias !55
  %.not.i.i.i.i22 = icmp ult i64 %i.ix, 131072
  br i1 %.not.i.i.i.i22, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i64 131072, ptr %i.z, align 8, !noalias !55
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread

bb.bi:                                            ; preds = %bb.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i23 = load i32, ptr %5, align 4, !noalias !55
  %i.iy = load i32, ptr %i.y, align 8, !noalias !55
  %i.iz = icmp eq i32 %i.iy, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i23
  br i1 %i.iz, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !55
  store ptr %i.x, ptr %4, align 8, !noalias !55
  store ptr %5, ptr %i.ab, align 8, !noalias !55
  %i.ja = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft1VINS9_4NoneEEEEESC_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #17, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !55
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !55
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i, i64 %i.ja
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread

bb.bk:                                            ; preds = %bb.bf
  %.sroa.0.0.copyload.i.i.i.i.i.i18 = load ptr, ptr %i.y, align 8, !noalias !62 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i18, i32 0, i32 1, i32 1), !noalias !62
  %i.jc = load i64, ptr %i.z, align 8, !noalias !62
  %sext.i.i19 = shl i64 %i.jc, 48
  %i.jd = ashr exact i64 %sext.i.i19, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i20 = load i32, ptr %5, align 4, !noalias !62 ; 2 uses
  %i.je = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i20 to i64
  %i.jf = xor i64 %i.jd, %i.je
  %i.jg = zext i64 %i.jf to i128
  %i.jh = mul nuw nsw i128 %i.jg, 8779197792823184629 ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
  %i.jj = xor i128 %i.ji, %i.jh
  %i.jk = trunc i128 %i.jj to i64                 ; 3 uses
  %i.jl = lshr i64 %i.jk, 57
  %i.jm = trunc nuw nsw i64 %i.jl to i8
  %.sroa.0.0.copyload.i.i.i22.i.i = load ptr, ptr %i.aa, align 8, !noalias !62 ; 2 uses
  %i.jn = insertelement <16 x i8> poison, i8 %i.jm, i64 0
  %i.jo = shufflevector <16 x i8> %i.jn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %.pn.i.i21 = phi i64 [ %i.jk, %bb.bk ], [ %i.km, %bb.bm ]
  %.sroa.15.0.i.i = phi i64 [ 0, %bb.bk ], [ %i.kl, %bb.bm ] ; 2 uses
  %.sroa.7.0.i.i = and i64 %.pn.i.i21, %i.iv      ; 5 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i.i, i64 %.sroa.7.0.i.i
  call void @llvm.prefetch.p0(ptr %i.jp, i32 0, i32 3, i32 1), !noalias !62
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i18, i64 %.sroa.7.0.i.i
  %i.jr = load <16 x i8>, ptr %i.jq, align 1, !noalias !62 ; 2 uses
  %i.js = icmp eq <16 x i8> %i.jo, %i.jr
  %i.jt = bitcast <16 x i1> %i.js to i16          ; 2 uses
  %.not65.i.i = icmp eq i16 %i.jt, 0
  br i1 %.not65.i.i, label %.critedge19.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bl, %.critedge.i.i
  %.sroa.035.066.i.i = phi i16 [ %i.kc, %.critedge.i.i ], [ %i.jt, %bb.bl ] ; 3 uses
  %i.ju = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i.i, i1 true)
  %i.jv = zext nneg i16 %i.ju to i64
  %i.jw = add i64 %.sroa.7.0.i.i, %i.jv
  %i.jx = and i64 %i.jw, %i.iv
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i.i, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !noalias !62
  %i.ka = icmp eq i32 %i.jz, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i20
  br i1 %i.ka, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i, label %.critedge.i.i, !prof !31

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.kb = add i16 %.sroa.035.066.i.i, -1
  %i.kc = and i16 %i.kb, %.sroa.035.066.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.kc, 0
  br i1 %.not.i.i, label %.critedge19.i.i, label %.lr.ph.i.i

.critedge19.i.i:                                  ; preds = %.critedge.i.i, %bb.bl
  %i.kd = icmp eq <16 x i8> %i.jr, splat (i8 -128)
  %i.ke = bitcast <16 x i1> %i.kd to i16          ; 2 uses
  %.not57.i.i = icmp eq i16 %i.ke, 0
  br i1 %.not57.i.i, label %bb.bm, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread121, !prof !5

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread121: ; preds = %.critedge19.i.i
  %i.kf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ke, i1 true)
  %i.kg = zext nneg i16 %i.kf to i64
  %i.kh = add i64 %.sroa.7.0.i.i, %i.kg
  %i.ki = and i64 %i.kh, %i.iv
  %i.kj = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.jk, i64 %i.ki, i64 %.sroa.15.0.i.i) #17, !noalias !62
  %.sroa.0.0.copyload.i.i.i2.i26.i.i = load ptr, ptr %i.aa, align 8, !noalias !62
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i, i64 %i.kj
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread

bb.bm:                                            ; preds = %.critedge19.i.i
  %i.kl = add i64 %.sroa.15.0.i.i, 16             ; 2 uses
  %i.km = add i64 %i.kl, %.sroa.7.0.i.i
  br label %bb.bl

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread: ; preds = %bb.bh, %bb.bj, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread121
  %.sink81.i.sink.i117 = phi ptr [ %i.kk, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread121 ], [ %i.y, %bb.bh ], [ %i.jb, %bb.bj ]
  %i.kn = load i32, ptr %5, align 4, !noalias !65
  store i32 %i.kn, ptr %.sink81.i.sink.i117, align 4
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i

bb.bn:                                            ; preds = %bb.be
  br i1 %i.iw, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.ko = load i64, ptr %i.z, align 8
  %.not.i.i.i.i = icmp ult i64 %i.ko, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %5, align 4
  %i.kp = load i32, ptr %i.y, align 8
  %i.kq = icmp eq i32 %i.kp, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.kr = select i1 %i.kq, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit.i

bb.bq:                                            ; preds = %bb.bn
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.y, align 8 ; 3 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ks = load i64, ptr %i.z, align 8
  %sext.i.i = shl i64 %i.ks, 48
  %i.kt = ashr exact i64 %sext.i.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %5, align 4 ; 2 uses
  %i.ku = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.kv = xor i64 %i.kt, %i.ku
  %i.kw = zext i64 %i.kv to i128
  %i.kx = mul nuw nsw i128 %i.kw, 8779197792823184629 ; 2 uses
  %i.ky = lshr i128 %i.kx, 64
  %i.kz = xor i128 %i.ky, %i.kx
  %i.la = trunc i128 %i.kz to i64                 ; 2 uses
  %i.lb = lshr i64 %i.la, 57
  %i.lc = trunc nuw nsw i64 %i.lb to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.aa, align 8 ; 2 uses
  %i.ld = insertelement <16 x i8> poison, i8 %i.lc, i64 0
  %i.le = shufflevector <16 x i8> %i.ld, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %bb.bq
  %.pn.i8.i.i = phi i64 [ %i.la, %bb.bq ], [ %i.lx, %bb.bt ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.bq ], [ %i.lw, %bb.bt ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.iv   ; 4 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  call void @llvm.prefetch.p0(ptr %i.lf, i32 0, i32 3, i32 1)
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.lh = load <16 x i8>, ptr %i.lg, align 1      ; 2 uses
  %i.li = icmp eq <16 x i8> %i.le, %i.lh
  %i.lj = bitcast <16 x i1> %i.li to i16          ; 2 uses
  %.not47.i.i.i = icmp eq i16 %i.lj, 0
  br i1 %.not47.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %bb.bs
  %.sroa.017.048.i.i.i = phi i16 [ %i.lt, %bb.bs ], [ %i.lj, %bb.br ] ; 3 uses
  %i.lk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i, i1 true)
  %i.ll = zext nneg i16 %i.lk to i64
  %i.lm = add i64 %.sroa.6.0.i.i.i, %i.ll
  %i.ln = and i64 %i.lm, %i.iv                    ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4
  %i.lq = icmp eq i32 %i.lp, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.lq, label %.thread33.i.i.i, label %bb.bs, !prof !31

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ln ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lr) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.ls = add i16 %.sroa.017.048.i.i.i, -1
  %i.lt = and i16 %i.ls, %.sroa.017.048.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.lt, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bs, %bb.br
  %i.lu = icmp eq <16 x i8> %i.lh, splat (i8 -128)
  %i.lv = bitcast <16 x i1> %i.lu to i16
  %.not44.i.i.i = icmp eq i16 %i.lv, 0
  br i1 %.not44.i.i.i, label %bb.bt, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i, !prof !5

bb.bt:                                            ; preds = %._crit_edge.i.i.i
  %i.lw = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.lx = add i64 %i.lw, %.sroa.6.0.i.i.i
  br label %bb.br, !llvm.loop !78

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit.i: ; preds = %.thread33.i.i.i, %bb.bp
  %.pn.i.i = phi ptr [ %i.kr, %bb.bp ], [ %i.lr, %.thread33.i.i.i ] ; 5 uses
  %i.ly = icmp eq ptr %.pn.i.i, null              ; 2 uses
  %i.lz = icmp eq ptr %.pn.i.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.ly, %i.lz
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit.i
  %i.ma = load i8, ptr %.pn.i.i, align 1
  %i.mb = icmp sgt i8 %i.ma, -1
  br i1 %i.mb, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.bv, !prof !31

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.bu, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit.i
  br i1 %i.lz, label %bb.bw, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit.i, !prof !54

bb.bw:                                            ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #17
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit.i: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.ly, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit.i
  %i.mc = load i8, ptr %.pn.i.i, align 1
  %i.md = icmp sgt i8 %i.mc, -1
  br i1 %i.md, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iterator14assert_is_fullEPKc.exit.i, label %bb.by, !prof !31

bb.by:                                            ; preds = %bb.bx
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26) #17
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iterator14assert_is_fullEPKc.exit.i: ; preds = %bb.bx
  br i1 %i.iw, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iterator14assert_is_fullEPKc.exit.i
  call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i1 noundef zeroext true, i64 noundef 4) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i

bb.ca:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iterator14assert_is_fullEPKc.exit.i
  call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull %.pn.i.i, i64 noundef 4) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i, %bb.bo, %bb.bi, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit.i, %bb.bz, %bb.ca, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit

bb.cb:                                            ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i
  %i.me = call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bj)
  %i.mf = and i32 %i.me, 131072
  %.not15.i = icmp eq i32 %i.mf, 0
  br i1 %.not15.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.mg = load i8, ptr %i.bj, align 4
  %i.mh = icmp ult i8 %i.mg, 8
  br i1 %i.mh, label %bb.ce, label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer22ProcessBlockTerminatorERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.bj)
  br label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit

_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit: ; preds = %._crit_edge.i.i.i33, %bb.ar, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit, %bb.bd, %bb.bc, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit.i, %bb.d, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i.i, %bb.cd, %bb.ce
  %i.mi = load ptr, ptr %i.be, align 8
  %i.mj = lshr i32 %.sroa.0.0143, 4
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.mk
  %i.mm = load i16, ptr %i.ml, align 2
  %i.mn = zext i16 %i.mm to i32
  %i.mo = shl nuw nsw i32 %i.mn, 3
  %i.mp = add i32 %i.mo, %.sroa.0.0143            ; 2 uses
  %.not = icmp eq i32 %i.mp, %.sroa.0.0.copyload.i
  br i1 %.not, label %.loopexit.loopexit, label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt8optionalIN2v88internal8compiler10turboshaft14MemoryAnalyzer10BlockStateEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::turboshaft::V.62", align 4 ; 6 uses
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %i.a = load i8, ptr %1, align 4                 ; 2 uses
  %i.b = icmp eq i8 %i.a, 104
  br i1 %i.b, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit: ; preds = %bb.b
  %i.f = tail call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.g = and i32 %i.f, 262144
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %.pre = load i8, ptr %1, align 4
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge, %bb.b
  %i.h = phi i8 [ %.pre, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge ], [ %i.a, %bb.b ]
  switch i8 %i.h, label %bb.i [
    i8 -87, label %bb.c
    i8 78, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20
  tail call void @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer17ProcessAllocationERKNS2_10AllocateOpE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 4 dereferenceable(6) %1)
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !align !11
  %i.k = ptrtoint ptr %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.k, %i.n
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %2, align 4
  %i.q = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer16SkipWriteBarrierERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !9, !alias.scope !97, !noundef !10
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i

bb.f:                                             ; preds = %bb.e
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !97
  %i.v = load i32, ptr %2, align 4, !noalias !97
  store i32 %i.v, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 4
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.w = call noundef i64 @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE5eraseIS9_EEmRKS9_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE6insertIS9_Li0EEESt4pairINSI_8iteratorEbERKT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20
  %i.x = tail call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.y = and i32 %i.x, 131072
  %.not15 = icmp eq i32 %i.y, 0
  br i1 %.not15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = load i8, ptr %1, align 4
  %i.ab = icmp ult i8 %i.aa, 8
  br i1 %i.ab, label %bb.l, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer22ProcessBlockTerminatorERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread: ; preds = %bb.a, %bb.h, %bb.c, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit, %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer17ProcessAllocationERKNS2_10AllocateOpE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 4 dereferenceable(6) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !align !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %.not = icmp eq i8 %i.m, 75                     ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.029.0 = phi i64 [ undef, %bb.a ], [ %i.o, %bb.b ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not14 = icmp eq ptr %i.t, null
  br i1 %.not14, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  br i1 %.not, label %bb.f, label %.thread34

.thread34:                                        ; preds = %bb.e
  store ptr %1, ptr %i.s, align 8
  store i8 0, ptr %i.u, align 4
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.w = load i8, ptr %i.u, align 4, !range !9, !noundef !10
  %i.x = trunc nuw i8 %i.w to i1
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft15SuccessorBlocksERKNS2_9OperationE:bb.a
  store ptr %i.at, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.050, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.aj
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #18
  unreachable

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit, %bb.b, %_ZSt18uninitialized_moveIPKPN2v88internal8compiler10turboshaft5BlockEPS5_ET0_T_SA_S9_.exit27, %_ZSt18uninitialized_moveIPKPN2v88internal8compiler10turboshaft5BlockEPS5_ET0_T_SA_S9_.exit26, %_ZSt18uninitialized_moveIPKPN2v88internal8compiler10turboshaft5BlockEPS5_ET0_T_SA_S9_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair.623", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.a = load i64, ptr %0, align 8, !noalias !130
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !137
  %.not.i.i.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !137
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !137
  %i.h = load ptr, ptr %1, align 8, !noalias !137
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !137
  store ptr %0, ptr %2, align 8, !noalias !137
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.j, align 8, !noalias !137
  %i.k = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft10AllocateOpEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #17, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !137
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !137
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i, i64 %i.k
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink16.i.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %.sink.i.i.i.i.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !137
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i

bb.f:                                             ; preds = %bb.a
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.623") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !9, !alias.scope !138
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i: ; preds = %bb.f, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i
  %i.n = phi i8 [ %.sink.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i ], [ %.pre.i.i, %bb.f ]
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE11try_emplaceIS9_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SE_SJ_E14const_iteratorEEE5valueEiE4typeELi0EEESG_INSP_8iteratorEbEOSN_DpOT1_.exit

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !138 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !noalias !138
  store ptr %i.p, ptr %.sroa.2.0.copyload.i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 8
  store ptr null, ptr %i.q, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE11try_emplaceIS9_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SE_SJ_E14const_iteratorEEE5valueEiE4typeELi0EEESG_INSP_8iteratorEbEOSN_DpOT1_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE11try_emplaceIS9_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SE_SJ_E14const_iteratorEEE5valueEiE4typeELi0EEESG_INSP_8iteratorEbEOSN_DpOT1_.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i, %bb.g
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair.636", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.a = load i64, ptr %0, align 8, !noalias !148
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !155
  %.not.i.i.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !155
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !155
  %i.h = load ptr, ptr %1, align 8, !noalias !155
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !155
  store ptr %0, ptr %2, align 8, !noalias !155
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.j, align 8, !noalias !155
  %i.k = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft10AllocateOpEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #17, !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !155
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !155
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i, i64 %i.k
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink16.i.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %.sink.i.i.i.i.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !155
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i

bb.f:                                             ; preds = %bb.a
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.636") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !9, !alias.scope !156
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i: ; preds = %bb.f, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i
  %i.n = phi i8 [ %.sink.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i ], [ %.pre.i.i, %bb.f ]
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE11try_emplaceIS9_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SE_SJ_E14const_iteratorEEE5valueEiE4typeELi0EEESG_INSP_8iteratorEbERKSN_DpOT1_.exit

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !156 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !noalias !156
  store ptr %i.p, ptr %.sroa.2.0.copyload.i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 8
  store i32 0, ptr %i.q, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE11try_emplaceIS9_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SE_SJ_E14const_iteratorEEE5valueEiE4typeELi0EEESG_INSP_8iteratorEbERKSN_DpOT1_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE11try_emplaceIS9_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SE_SJ_E14const_iteratorEEE5valueEiE4typeELi0EEESG_INSP_8iteratorEbERKSN_DpOT1_.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i, %bb.g
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq ptr %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = xor i64 %i.n, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  %i.u = xor i64 %i.l, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.a        ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.a                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !31

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = add i16 %.sroa.017.047.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not44.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !51

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.am, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 1
  %i.av = icmp eq ptr %i.at, null                 ; 2 uses
  %i.aw = icmp eq ptr %i.at, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit
  %i.ax = load i8, ptr %i.at, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit
  br i1 %i.aw, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #17
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull %i.at, ptr %i.au)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit, %bb.k
  %.0 = phi i64 [ 1, %bb.k ], [ 0, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE5eraseIS9_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq ptr %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = xor i64 %i.n, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  %i.u = xor i64 %i.l, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.a        ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.a                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !31

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = add i16 %.sroa.017.047.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not44.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !53

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.am, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 1
  %i.av = icmp eq ptr %i.at, null                 ; 2 uses
  %i.aw = icmp eq ptr %i.at, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit
  %i.ax = load i8, ptr %i.at, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit
  br i1 %i.aw, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #17
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull %i.at, ptr %i.au)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit, %bb.k
  %.0 = phi i64 [ 1, %bb.k ], [ 0, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer16SkipWriteBarrierERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i12 = load i32, ptr %i.j, align 4
  %i.k = zext i32 %.sroa.0.0.copyload.i.i12 to i64
  %i.l = add i64 %i.k, %i.f
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.o = load i8, ptr %i.n, align 2
  %.not = icmp ne i8 %i.o, 1                      ; 3 uses
  %i.p = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer22IsPartOfLastAllocationEPKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull %i.i)
  br i1 %i.p, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !10, !align !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.m, align 4 ; 4 uses
  %i.t = and i64 %.0.copyload.i.i.i, 72057589742960895
  %i.u = icmp eq i64 %i.t, 1126999418470472
  %i.v = lshr i64 %.0.copyload.i.i.i, 32
  %i.w = trunc i64 %i.v to i8                     ; 2 uses
  %i.x = lshr i64 %.0.copyload.i.i.i, 16
  br i1 %i.u, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = trunc i64 %.0.copyload.i.i.i to i8
  switch i8 %i.y, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread15 [
    i8 75, label %bb.d
    i8 91, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  switch i8 %i.w, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread15 [
    i8 8, label %bb.e
    i8 4, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 648 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %i.aa, align 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 9848
  %i.ac = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.ab
  %i.ad = icmp uge ptr %.sroa.0.0.copyload.i.i13, %i.z
  %or.cond.not.i.i.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.not.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread15

bb.f:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %.sroa.0.0.copyload.i.i13 to i64
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = trunc i64 %i.ah to i16
  %i.aj = icmp ult i16 %i.ai, 1120                ; 2 uses
  %brmerge = select i1 %i.aj, i1 true, i1 %.not
  br i1 %brmerge, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ak = icmp eq i8 %i.w, 4
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread15

_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit: ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.am = and i64 %i.x, 65535
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = tail call noundef ptr @_ZSt9__find_ifIPKN2v88internal8compiler10turboshaft7OpIndexEN9__gnu_cxx5__ops10_Iter_predIZNS3_22ValueNeedsWriteBarrierEPKNS3_5GraphERKNS3_9OperationEPNS1_7IsolateEEUlS4_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr noundef nonnull %i.al, ptr noundef nonnull %i.an, ptr nonnull %i.q, ptr %i.s), !inline_history !157
  %.not21 = icmp eq ptr %i.an, %i.ao              ; 2 uses
  %brmerge19 = select i1 %.not21, i1 true, i1 %.not
  br i1 %brmerge19, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread, label %bb.h

_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread15: ; preds = %bb.g, %bb.e, %bb.d, %bb.c
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit, %bb.f, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.8)
  %i.ar = load ptr, ptr %i.a, align 8, !nonnull !10, !align !11
  %i.as = ptrtoint ptr %1 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.as, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler10turboshaftlsERSoNS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i32 %i.ax) #17
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNK2v88internal8compiler10turboshaft9Operation8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.10) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.bc = load ptr, ptr %4, align 8
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef %i.bc) #18
  unreachable

_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit, %bb.f, %bb.d, %bb.b, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread15, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread15 ], [ %.not21, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit ], [ true, %bb.b ], [ true, %bb.d ], [ %i.aj, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE5eraseIS9_EEmRKS9_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %1, align 4
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.g, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %sext.i = shl i64 %i.j, 48
  %i.k = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %i.l = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = xor i64 %i.k, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw nsw i128 %i.n, 8779197792823184629 ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64                   ; 2 uses
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.u, align 8 ; 3 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.r, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.a        ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.z = load <16 x i8>, ptr %i.y, align 1        ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.w, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not47.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.048.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.6.0.i.i, %i.ad
  %i.af = and i64 %i.ae, %i.a                     ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ai, label %.thread33.i.i, label %bb.f, !prof !31

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE10find_largeIS9_EENSI_8iteratorERKS9_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.048.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.048.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE10find_largeIS9_EENSI_8iteratorERKS9_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !78

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE10find_largeIS9_EENSI_8iteratorERKS9_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE10find_largeIS9_EENSI_8iteratorERKS9_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE10find_largeIS9_EENSI_8iteratorERKS9_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_8iteratorERKS9_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #17
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE5eraseENSI_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull %i.ar, ptr %i.as)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit, %bb.k
  %.0 = phi i64 [ 1, %bb.k ], [ 0, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iteratorESL_.exit ]
  ret i64 %.0
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #7

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !31

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #8 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer22IsPartOfLastAllocationEPKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread.i, %bb.a
  %.018.i = phi ptr [ %1, %bb.a ], [ %.422.i, %_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread.i ] ; 7 uses
  %i.d = load i8, ptr %.018.i, align 4
  switch i8 %i.d, label %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit.thread [
    i8 -87, label %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit
    i8 72, label %_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread.i
    i8 60, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.018.i, i64 4
  %i.f = load i8, ptr %i.e, align 4
  switch i8 %i.f, label %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit.thread [
    i8 0, label %_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread.i
    i8 7, label %_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread.i
  ]

_ZN2v88internal8compiler10turboshafteqINS2_11WordBinopOp4KindEJS5_S5_EEEbRKT_NS2_6any_ofIJDpT0_EEE.exit.thread.i: ; preds = %bb.c, %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %.sroa.0.0.copyload.i.i33.i = load i32, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = zext i32 %.sroa.0.0.copyload.i.i33.i to i64
  %i.k = add i64 %i.i, %i.j
  %.422.i = inttoptr i64 %i.k to ptr
  br label %bb.b

_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i8, ptr %i.o, align 4
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.e, label %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq ptr %i.m, %.018.i
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load i64, ptr %i.u, align 8
  %.not.i.i.i = icmp ult i64 %i.v, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, %.018.i
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.w, 1
  %spec.select.i.i = select i1 %i.y, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit

bb.i:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.z, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load i64, ptr %i.aa, align 8
  %sext.i = shl i64 %i.ab, 48
  %i.ac = ashr exact i64 %sext.i, 48
  %i.ad = ptrtoint ptr %.018.i to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.af = zext i64 %i.ae to i128
  %i.ag = mul nuw nsw i128 %i.af, 8779197792823184629 ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  %i.ak = xor i64 %i.ac, %i.aj                    ; 2 uses
  %i.al = lshr i64 %i.ak, 57
  %i.am = trunc nuw nsw i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.an, align 8 ; 2 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.pn.i7.i = phi i64 [ %i.ak, %bb.i ], [ %i.bi, %bb.l ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.i ], [ %i.bh, %bb.l ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.s        ; 4 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1      ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.au, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.sroa.017.047.i.i = phi i16 [ %i.be, %bb.k ], [ %i.au, %bb.j ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.s                     ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ba, %.018.i
  br i1 %i.bb, label %.thread33.i.i, label %bb.k, !prof !31

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ay ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bd = add i16 %.sroa.017.047.i.i, -1
  %i.be = and i16 %i.bd, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %bb.j
  %i.bf = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %.not44.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not44.i.i, label %bb.l, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i, !prof !5

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bh = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bi = add i64 %i.bh, %.sroa.6.0.i.i
  br label %bb.j, !llvm.loop !53

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.bc, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.az, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit: ; preds = %bb.g, %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.g ], [ %spec.select.i.i, %bb.h ] ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.bk = extractvalue { ptr, ptr } %.pn.i, 1
  %i.bl = icmp eq ptr %i.bj, null                 ; 2 uses
  %i.bm = icmp eq ptr %i.bj, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.bl, %i.bm
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit
  %i.bn = load i8, ptr %i.bj, align 1
  %i.bo = icmp sgt i8 %i.bn, -1
  br i1 %i.bo, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.n, !prof !31

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.m, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_8iteratorERKT_.exit
  br i1 %i.bm, label %bb.o, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit, !prof !5

bb.o:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #17
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.bl, label %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit
  %i.bp = load i8, ptr %i.bj, align 1
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorptEv.exit, label %bb.q, !prof !31

bb.q:                                             ; preds = %bb.p
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #17
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorptEv.exit: ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bs, %i.m
  br label %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit.thread: ; preds = %bb.c, %bb.b, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorptEv.exit, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit, %bb.e, %bb.d, %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit
  %.1 = phi i1 [ true, %bb.e ], [ false, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorESN_.exit ], [ false, %_ZN2v88internal8compiler10turboshaft14UnwrapAllocateEPKNS2_5GraphEPKNS2_9OperationE.exit ], [ false, %bb.d ], [ %i.bt, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iteratorptEv.exit ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler10turboshaftlsERSoNS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #1

declare void @_ZNK2v88internal8compiler10turboshaft9Operation8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #13

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt9__find_ifIPKN2v88internal8compiler10turboshaft7OpIndexEN9__gnu_cxx5__ops10_Iter_predIZNS3_22ValueNeedsWriteBarrierEPKNS3_5GraphERKNS3_9OperationEPNS1_7IsolateEEUlS4_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 4                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 648 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 9848 ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit142.thread
  %.096 = phi i64 [ %i.d, %.lr.ph ], [ %i.dh, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit142.thread ] ; 2 uses
  %.02995 = phi ptr [ %0, %.lr.ph ], [ %i.dg, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit142.thread ] ; 33 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.02995, align 4
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.l = zext i32 %.sroa.0.0.copyload.i to i64
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = icmp eq i8 %i.o, 91
  br i1 %i.p, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit: ; preds = %bb.b
  %.0.copyload.i.i.i = load i64, ptr %i.n, align 4 ; 4 uses
  %i.q = and i64 %.0.copyload.i.i.i, 72057589742960895
  %i.r = icmp eq i64 %i.q, 1126999418470472
  %i.s = lshr i64 %.0.copyload.i.i.i, 32
  %i.t = trunc i64 %i.s to i8                     ; 2 uses
  %i.u = lshr i64 %.0.copyload.i.i.i, 16
  br i1 %i.r, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit
  %i.v = trunc i64 %.0.copyload.i.i.i to i8
  switch i8 %i.v, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread [
    i8 75, label %bb.d
    i8 91, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  switch i8 %i.t, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread [
    i8 8, label %bb.e
    i8 4, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.w, align 8 ; 3 uses
  %i.x = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.h
  %i.y = icmp uge ptr %.sroa.0.0.copyload.i.i, %i.g
  %or.cond.not.i.i.i = and i1 %i.x, %i.y
  br i1 %or.cond.not.i.i.i, label %bb.f, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.aa = sub i64 %i.z, %i.i
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i16
  %i.ad = icmp ult i16 %i.ac, 1120
  br i1 %i.ad, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.ae = icmp eq i8 %i.t, 4
  br i1 %i.ae, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ag = and i64 %i.u, 65535
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = tail call noundef ptr @_ZSt9__find_ifIPKN2v88internal8compiler10turboshaft7OpIndexEN9__gnu_cxx5__ops10_Iter_predIZNS3_22ValueNeedsWriteBarrierEPKNS3_5GraphERKNS3_9OperationEPNS1_7IsolateEEUlS4_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah, ptr nonnull %2, ptr %3), !inline_history !158
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit._ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread_crit_edge, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread
end_hunk_1
begin_hunk_2_@_ZSt9__find_ifIPKN2v88internal8compiler10turboshaft7OpIndexEN9__gnu_cxx5__ops10_Iter_predIZNS3_22ValueNeedsWriteBarrierEPKNS3_5GraphERKNS3_9OperationEPNS1_7IsolateEEUlS4_E_EEET_SK_SK_T0_St26random_access_iterator_tag:bb.a

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.gf, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread [
    i8 8, label %bb.al
    i8 4, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160.thread
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 648 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.0.0.copyload.i.i158 = load ptr, ptr %i.gj, align 8 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 9848
  %i.gl = icmp ult ptr %.sroa.0.0.copyload.i.i158, %i.gk
  %i.gm = icmp uge ptr %.sroa.0.0.copyload.i.i158, %i.gi
  %or.cond.not.i.i.i159 = and i1 %i.gl, %i.gm
  br i1 %or.cond.not.i.i.i159, label %bb.am, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.gn = ptrtoint ptr %.sroa.0.0.copyload.i.i158 to i64
  %i.go = ptrtoint ptr %i.gi to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = lshr i64 %i.gp, 3
  %i.gr = trunc i64 %i.gq to i16
  %i.gs = icmp ult i16 %i.gr, 1120
  br i1 %i.gs, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160.thread, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

bb.an:                                            ; preds = %bb.aj
  %i.gt = icmp eq i8 %i.gf, 4
  br i1 %i.gt, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160: ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gv = and i64 %i.gg, 65535
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gv ; 2 uses
  %i.gx = tail call noundef ptr @_ZSt9__find_ifIPKN2v88internal8compiler10turboshaft7OpIndexEN9__gnu_cxx5__ops10_Iter_predIZNS3_22ValueNeedsWriteBarrierEPKNS3_5GraphERKNS3_9OperationEPNS1_7IsolateEEUlS4_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr noundef nonnull %i.gu, ptr noundef nonnull %i.gw, ptr nonnull %2, ptr %3), !inline_history !158
  %.not187 = icmp eq ptr %i.gw, %i.gx
  br i1 %.not187, label %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160.thread, label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160.thread: ; preds = %bb.am, %bb.ak, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit47, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160, %._crit_edge
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit: ; preds = %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit130
  %i.gy = getelementptr inbounds nuw i8, ptr %.02995, i64 4
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit295: ; preds = %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit136
  %i.gz = getelementptr inbounds nuw i8, ptr %.02995, i64 8
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit297: ; preds = %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit142
  %i.ha = getelementptr inbounds nuw i8, ptr %.02995, i64 12
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit299: ; preds = %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit.thread
  %i.hb = getelementptr inbounds nuw i8, ptr %.02995, i64 4
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit301: ; preds = %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit130.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %.02995, i64 8
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit303: ; preds = %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit136.thread
  %i.hd = getelementptr inbounds nuw i8, ptr %.02995, i64 12
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit305: ; preds = %bb.h
  %i.he = getelementptr inbounds nuw i8, ptr %.02995, i64 4
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit307: ; preds = %bb.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.02995, i64 4
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit309: ; preds = %bb.j
  %i.hg = getelementptr inbounds nuw i8, ptr %.02995, i64 4
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit311: ; preds = %bb.k
  %i.hh = getelementptr inbounds nuw i8, ptr %.02995, i64 4
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit313: ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw i8, ptr %.02995, i64 4
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit315: ; preds = %bb.m
  %i.hj = getelementptr inbounds nuw i8, ptr %.02995, i64 8
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit317: ; preds = %bb.n
  %i.hk = getelementptr inbounds nuw i8, ptr %.02995, i64 8
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit319: ; preds = %bb.o
  %i.hl = getelementptr inbounds nuw i8, ptr %.02995, i64 8
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit321: ; preds = %bb.p
  %i.hm = getelementptr inbounds nuw i8, ptr %.02995, i64 8
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit323: ; preds = %bb.q
  %i.hn = getelementptr inbounds nuw i8, ptr %.02995, i64 8
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit325: ; preds = %bb.r
  %i.ho = getelementptr inbounds nuw i8, ptr %.02995, i64 12
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit327: ; preds = %bb.s
  %i.hp = getelementptr inbounds nuw i8, ptr %.02995, i64 12
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit329: ; preds = %bb.t
  %i.hq = getelementptr inbounds nuw i8, ptr %.02995, i64 12
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit331: ; preds = %bb.u
  %i.hr = getelementptr inbounds nuw i8, ptr %.02995, i64 12
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit333: ; preds = %bb.v
  %i.hs = getelementptr inbounds nuw i8, ptr %.02995, i64 12
  br label %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread

_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit295, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit297, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit299, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit301, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit303, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit305, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit307, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit309, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit311, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit313, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit315, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit317, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit319, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit321, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit323, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit325, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit327, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit329, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit331, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit333, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.ai, %bb.ac, %bb.w, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit154, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit148, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160.thread
  %.028 = phi ptr [ %.1, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit154 ], [ %.2, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160 ], [ %.1, %bb.ac ], [ %.029.lcssa, %bb.w ], [ %1, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit160.thread ], [ %.2, %bb.ai ], [ %.029.lcssa, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit148 ], [ %.2, %bb.am ], [ %.2, %bb.an ], [ %.029.lcssa, %bb.x ], [ %.029.lcssa, %bb.y ], [ %.1, %bb.ah ], [ %.029.lcssa, %bb.z ], [ %.029.lcssa, %bb.aa ], [ %.1, %bb.ad ], [ %.1, %bb.ae ], [ %.1, %bb.af ], [ %.029.lcssa, %bb.ab ], [ %.1, %bb.ag ], [ %.2, %bb.aj ], [ %.2, %bb.ak ], [ %.2, %bb.al ], [ %i.hh, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit311 ], [ %i.hi, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit313 ], [ %i.hj, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit315 ], [ %i.hl, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit319 ], [ %i.hm, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit321 ], [ %i.hn, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit323 ], [ %i.hs, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit333 ], [ %i.ha, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit297 ], [ %i.hp, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit327 ], [ %i.gy, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit ], [ %i.hf, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit307 ], [ %i.hk, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit317 ], [ %i.hb, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit299 ], [ %i.hr, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit331 ], [ %i.ho, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit325 ], [ %i.gz, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit295 ], [ %i.hq, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit329 ], [ %i.hc, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit301 ], [ %i.hd, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit303 ], [ %i.he, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit305 ], [ %i.hg, %_ZZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateEENKUlNS2_7OpIndexEE_clESB_.exit.thread.loopexit.split.loop.exit309 ], [ %.02995, %_ZN2v88internal8compiler10turboshaft22ValueNeedsWriteBarrierEPKNS2_5GraphERKNS2_9OperationEPNS0_7IsolateE.exit ], [ %.02995, %bb.b ], [ %.02995, %bb.c ], [ %.02995, %bb.d ], [ %.02995, %bb.e ], [ %.02995, %bb.f ], [ %.02995, %bb.g ]
  ret ptr %.028
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.623") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8 ; 3 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %sext = shl i64 %i.d, 48
  %i.e = ashr exact i64 %sext, 48
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = xor i64 %i.g, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.i = zext i64 %i.h to i128
  %i.j = mul nuw nsw i128 %i.i, 8779197792823184629 ; 2 uses
  %i.k = lshr i128 %i.j, 64
  %i.l = xor i128 %i.k, %i.j
  %i.m = trunc i128 %i.l to i64
  %i.n = xor i64 %i.e, %i.m                       ; 3 uses
  %i.o = lshr i64 %i.n, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22 = load ptr, ptr %i.q, align 8 ; 2 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.ar, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.b                 ; 5 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 3, i32 1)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0
  %i.v = load <16 x i8>, ptr %i.u, align 1        ; 2 uses
  %i.w = icmp eq <16 x i8> %i.s, %i.v
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not64 = icmp eq i16 %i.x, 0
  br i1 %.not64, label %.critedge19, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.035.065 = phi i16 [ %i.ag, %.critedge ], [ %i.x, %bb.b ] ; 3 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.7.0, %i.z
  %i.ab = and i64 %i.aa, %i.b                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ad, %i.f
  br i1 %i.ae, label %.critedge21, label %.critedge, !prof !31

.critedge:                                        ; preds = %.lr.ph
  %i.af = add i16 %.sroa.035.065, -1
  %i.ag = and i16 %i.af, %.sroa.035.065           ; 2 uses
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %.critedge19, label %.lr.ph

.critedge19:                                      ; preds = %.critedge, %bb.b
  %i.ah = icmp eq <16 x i8> %i.v, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not57 = icmp eq i16 %i.ai, 0
  br i1 %.not57, label %bb.c, label %.thread, !prof !5

.thread:                                          ; preds = %.critedge19
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.7.0, %i.ak
  %i.am = and i64 %i.al, %i.b
  %i.an = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.n, i64 %i.am, i64 %.sroa.15.0) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.an
  %.sroa.0.0.copyload.i.i.i2.i26 = load ptr, ptr %i.q, align 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26, i64 %i.an
  br label %bb.d

bb.c:                                             ; preds = %.critedge19
  %i.aq = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0
  br label %bb.b

.critedge21:                                      ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ab
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge21
  %.sink83 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge21 ] ; 2 uses
  %.sink81 = phi ptr [ %i.ap, %.thread ], [ %i.ac, %.critedge21 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge21 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink83) ]
  store ptr %.sink83, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.at, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS0_6HashEqIPKN2v88internal8compiler10turboshaft10AllocateOpEvE4HashES9_Lb0EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  %i.i = xor i64 %2, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #8 comdat {
bb.a:
  %i.a = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m(ptr noundef %0, i64 noundef %1) #8 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %1, 7                            ; 2 uses
  %.not.i = icmp ugt i64 %i.b, -9
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.c) #17
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8
  br label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit

_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = add i64 %i.j, %i.c
  store i64 %i.l, ptr %i.f, align 8
  ret ptr %i.k
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #8 comdat {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSQ_PFvSQ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !160

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bb, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = xor i64 %i.y, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64
  %i.af = xor i64 %i.w, %i.ae                     ; 6 uses
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  %i.ai = sub i64 %i.t, %i.af                     ; 2 uses
  %i.aj = and i64 %i.h, %i.ai
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %.lr.ph
  %i.al = and i64 %i.ai, 15
  %i.am = add i64 %i.al, %i.af
  %i.an = and i64 %i.am, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.af, %i.b
  %.not.i = icmp ult i64 %i.ao, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.ap = and i64 %i.af, %i.a                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1
  %i.as = icmp slt <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.at, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.at, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %i.ap, %i.av
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ah, i64 noundef %i.t, i64 noundef %i.af) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.aw, %bb.g ], [ %i.an, %bb.d ] ; 3 uses
  %i.ax = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ah, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.az, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i16 %.sroa.052.061, -1
  %i.bb = and i16 %i.ba, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft10AllocateOpEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !11
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  %i.k = xor i64 %1, %i.j
  ret i64 %i.k
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.636") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8 ; 3 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %sext = shl i64 %i.d, 48
  %i.e = ashr exact i64 %sext, 48
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = xor i64 %i.g, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.i = zext i64 %i.h to i128
  %i.j = mul nuw nsw i128 %i.i, 8779197792823184629 ; 2 uses
  %i.k = lshr i128 %i.j, 64
  %i.l = xor i128 %i.k, %i.j
  %i.m = trunc i128 %i.l to i64
  %i.n = xor i64 %i.e, %i.m                       ; 3 uses
  %i.o = lshr i64 %i.n, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22 = load ptr, ptr %i.q, align 8 ; 2 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.ar, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.b                 ; 5 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 3, i32 1)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0
  %i.v = load <16 x i8>, ptr %i.u, align 1        ; 2 uses
  %i.w = icmp eq <16 x i8> %i.s, %i.v
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not64 = icmp eq i16 %i.x, 0
  br i1 %.not64, label %.critedge19, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.035.065 = phi i16 [ %i.ag, %.critedge ], [ %i.x, %bb.b ] ; 3 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.7.0, %i.z
  %i.ab = and i64 %i.aa, %i.b                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ad, %i.f
  br i1 %i.ae, label %.critedge21, label %.critedge, !prof !31

.critedge:                                        ; preds = %.lr.ph
  %i.af = add i16 %.sroa.035.065, -1
  %i.ag = and i16 %i.af, %.sroa.035.065           ; 2 uses
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %.critedge19, label %.lr.ph

.critedge19:                                      ; preds = %.critedge, %bb.b
  %i.ah = icmp eq <16 x i8> %i.v, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not57 = icmp eq i16 %i.ai, 0
  br i1 %.not57, label %bb.c, label %.thread, !prof !5

.thread:                                          ; preds = %.critedge19
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.7.0, %i.ak
  %i.am = and i64 %i.al, %i.b
  %i.an = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.n, i64 %i.am, i64 %.sroa.15.0) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25 = load ptr, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25, i64 %i.an
  %.sroa.0.0.copyload.i.i.i2.i26 = load ptr, ptr %i.q, align 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26, i64 %i.an
  br label %bb.d

bb.c:                                             ; preds = %.critedge19
  %i.aq = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0
  br label %bb.b

.critedge21:                                      ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ab
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge21
  %.sink83 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge21 ] ; 2 uses
  %.sink81 = phi ptr [ %i.ap, %.thread ], [ %i.ac, %.critedge21 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge21 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink83) ]
  store ptr %.sink83, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.at, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSQ_PFvSQ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !161

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bb, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = xor i64 %i.y, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64
  %i.af = xor i64 %i.w, %i.ae                     ; 6 uses
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  %i.ai = sub i64 %i.t, %i.af                     ; 2 uses
  %i.aj = and i64 %i.h, %i.ai
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %.lr.ph
  %i.al = and i64 %i.ai, 15
  %i.am = add i64 %i.al, %i.af
  %i.an = and i64 %i.am, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.af, %i.b
  %.not.i = icmp ult i64 %i.ao, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.ap = and i64 %i.af, %i.a                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1
  %i.as = icmp slt <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.at, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.at, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %i.ap, %i.av
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ah, i64 noundef %i.t, i64 noundef %i.af) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.aw, %bb.g ], [ %i.an, %bb.d ] ; 3 uses
  %i.ax = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ah, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.az, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i16 %.sroa.052.061, -1
  %i.bb = and i16 %i.ba, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26) #17
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.b, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.26) #17
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit, label %bb.f, !prof !31

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26) #17
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit: ; preds = %bb.e
  %i.e = load i64, ptr %0, align 8
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext true, i64 noundef 16) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE15erase_meta_onlyENSK_14const_iteratorE.exit

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, i64 noundef 16) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE15erase_meta_onlyENSK_14const_iteratorE.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE15erase_meta_onlyENSK_14const_iteratorE.exit: ; preds = %bb.g, %bb.h
  ret void
}

declare void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26) #17
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.b, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.26) #17
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iterator14assert_is_fullEPKc.exit, label %bb.f, !prof !31

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26) #17
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iterator14assert_is_fullEPKc.exit: ; preds = %bb.e
  %i.e = load i64, ptr %0, align 8
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext true, i64 noundef 16) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE15erase_meta_onlyENSK_14const_iteratorE.exit

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, i64 noundef 16) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE15erase_meta_onlyENSK_14const_iteratorE.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE15erase_meta_onlyENSK_14const_iteratorE.exit: ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE22find_or_prepare_insertIS9_EESt4pairINSI_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey.659", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !162
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !162
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_smallIS9_EESt4pairINSI_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %2, align 4, !noalias !162
  %i.g = load i32, ptr %i.f, align 8, !noalias !162
  %i.h = icmp eq i32 %i.g, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  br i1 %i.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_smallIS9_EESt4pairINSI_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !162
  store ptr %1, ptr %3, align 8, !noalias !162
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !noalias !162
  %i.j = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft1VINS9_4NoneEEEEESC_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #17, !noalias !162 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !162
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !162
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.l, align 8, !noalias !162
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_smallIS9_EESt4pairINSI_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !167 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !167
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !167
  %sext.i = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %2, align 4, !noalias !167 ; 2 uses
  %i.r = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64                   ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !167 ; 3 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.x, %bb.f ], [ %i.bb, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.ba, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !167
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !167 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.ah, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.a                     ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !noalias !167
  %i.ao = icmp eq i32 %i.an, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ao, label %.critedge21.i, label %.critedge.i, !prof !31

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.066.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !5

.thread.i:                                        ; preds = %.critedge19.i
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.7.0.i, %i.au
  %i.aw = and i64 %i.av, %i.a
  %i.ax = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.aw, i64 %.sroa.15.0.i) #17, !noalias !167 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !167
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !167
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ax
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_largeIS9_EESt4pairINSI_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.ba = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.7.0.i
  br label %bb.g

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_largeIS9_EESt4pairINSI_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_largeIS9_EESt4pairINSI_8iteratorEbERKT_.exit: ; preds = %.thread.i, %.critedge21.i
  %.sink83.i = phi ptr [ %i.ay, %.thread.i ], [ %i.bd, %.critedge21.i ] ; 2 uses
  %.sink81.i = phi ptr [ %i.az, %.thread.i ], [ %i.bc, %.critedge21.i ]
  %.sink.i = phi i8 [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink83.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_smallIS9_EESt4pairINSI_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_smallIS9_EESt4pairINSI_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_largeIS9_EESt4pairINSI_8iteratorEbERKT_.exit
  %.sink83.i.sink = phi ptr [ %.sink83.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_largeIS9_EESt4pairINSI_8iteratorEbERKT_.exit ], [ %i.k, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ @_ZN4absl18container_internal11kSooControlE, %bb.d ]
  %.sink81.i.sink = phi ptr [ %.sink81.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_largeIS9_EESt4pairINSI_8iteratorEbERKT_.exit ], [ %i.m, %bb.e ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %.sink.i.sink = phi i8 [ %.sink.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE28find_or_prepare_insert_largeIS9_EESt4pairINSI_8iteratorEbERKT_.exit ], [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store ptr %.sink83.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.be, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft1VINS7_4NoneEEEEESA_Lb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 1
  %i.a = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm4EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #8 comdat {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSO_PFvSO_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !170

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.ba, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.u, align 1
  %i.x = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.y = xor i64 %i.w, %i.x
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64                 ; 6 uses
  %i.ae = lshr i64 %i.ad, 57
  %i.af = trunc nuw nsw i64 %i.ae to i8           ; 2 uses
  %i.ag = sub i64 %i.t, %i.ad                     ; 2 uses
  %i.ah = and i64 %i.h, %i.ag
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %.lr.ph
  %i.aj = and i64 %i.ag, 15
  %i.ak = add i64 %i.aj, %i.ad
  %i.al = and i64 %i.ak, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.am = and i64 %i.b, %i.ad
  %.not.i = icmp ult i64 %i.am, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.an = and i64 %i.a, %i.ad                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.an
  %i.ap = load <16 x i8>, ptr %i.ao, align 1
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.ar, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %i.an, %i.at
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.af, i64 noundef %i.t, i64 noundef %i.ad) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.au, %bb.g ], [ %i.al, %bb.d ] ; 3 uses
  %i.av = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.af, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.ay = load i32, ptr %i.u, align 4
  store i32 %i.ay, ptr %i.ax, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = add i16 %.sroa.052.061, -1
  %i.ba = and i16 %i.az, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft1VINS9_4NoneEEEEESC_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !171
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 4
  %i.c = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.d = xor i64 %1, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE5eraseENSI_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26) #17
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.b, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.26) #17
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iterator14assert_is_fullEPKc.exit, label %bb.f, !prof !31

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26) #17
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iterator14assert_is_fullEPKc.exit: ; preds = %bb.e
  %i.e = load i64, ptr %0, align 8
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE8iterator14assert_is_fullEPKc.exit
end_hunk_2
