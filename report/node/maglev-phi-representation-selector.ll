inline.NumInlined: 2801
inline.NumDeleted: 1489
begin_hunk_0_@_ZN2v88internal6maglev31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS1_10BasicBlockEPKS3_:bb.a
  store i64 %i.u, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.w, %i.y
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.v, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.z = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.w, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 5 uses
  store ptr %i.ab, ptr %i.ac, align 8
  store ptr %i.z, ptr %i.x, align 8
  %i.ad = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE4SealEv.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.012.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.aj = load ptr, ptr %.012.i, align 8          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 -1, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 -1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.am, %i.y
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.an = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -32
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE8pop_backEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.aw, 16
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE15_M_pop_back_auxEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 16, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.at, align 8
  store ptr %i.ay, ptr %i.ar, align 8
  store ptr %i.ar, ptr %i.at, align 8
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE15_M_pop_back_auxEv.exit.i.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE15_M_pop_back_auxEv.exit.i.i: ; preds = %bb.h, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 2 uses
  store ptr %i.bb, ptr %i.az, align 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  store ptr %i.bc, ptr %i.aq, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 512
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 480
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE8pop_backEv.exit.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE8pop_backEv.exit.i: ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE15_M_pop_back_auxEv.exit.i.i, %bb.e
  %storemerge.i.i = phi ptr [ %i.as, %bb.e ], [ %i.bf, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE15_M_pop_back_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.ao, align 8
  store ptr %i.an, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE4SealEv.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE4SealEv.exit: ; preds = %._crit_edge.i, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE8pop_backEv.exit.i
  %.sroa.0.0.i = phi ptr [ %i.an, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIPNS1_6maglev9ValueNodeENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorISA_EEE8pop_backEv.exit.i ], [ %i.ad, %._crit_edge.i ]
  %i.bg = load i64, ptr %i.k, align 8, !noalias !12 ; 4 uses
  %i.bh = icmp ult i64 %i.bg, 2
  br i1 %i.bh, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE4SealEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !27
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bj, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 131072, ptr %i.bi, align 8, !noalias !27
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 552
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.k:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bm = load i32, ptr %i.bl, align 8, !noalias !27
  %i.bn = icmp eq i32 %i.bm, %i.m
  br i1 %i.bn, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !27
  store ptr %i.k, ptr %4, align 8, !noalias !27
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.bo, align 8, !noalias !27
  %i.bp = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIjEEjLb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #18, !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !noalias !27
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.bp
  %.pre = load i32, ptr %i.b, align 4, !noalias !32
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE4SealEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !noalias !33 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !33
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !33
  %sext.i = shl i64 %i.bu, 48
  %i.bv = ashr exact i64 %sext.i, 48
  %i.bw = zext i32 %i.m to i64
  %i.bx = xor i64 %i.bv, %i.bw
  %i.by = zext i64 %i.bx to i128
  %i.bz = mul nuw nsw i128 %i.by, 8779197792823184629 ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = xor i128 %i.ca, %i.bz
  %i.cc = trunc i128 %i.cb to i64                 ; 3 uses
  %i.cd = lshr i64 %i.cc, 57
  %i.ce = trunc nuw nsw i64 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.cf, align 8, !noalias !33 ; 2 uses
  %i.cg = insertelement <16 x i8> poison, i8 %i.ce, i64 0
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.pn.i = phi i64 [ %i.cc, %bb.m ], [ %i.df, %bb.o ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.m ], [ %i.de, %bb.o ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.bg            ; 5 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ci, i32 0, i32 3, i32 1), !noalias !33
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ck = load <16 x i8>, ptr %i.cj, align 1, !noalias !33 ; 2 uses
  %i.cl = icmp eq <16 x i8> %i.ch, %i.ck
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.cm, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.n, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.cv, %.critedge.i ], [ %i.cm, %bb.n ] ; 3 uses
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.7.0.i, %i.co
  %i.cq = and i64 %i.cp, %i.bg
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !33
  %i.ct = icmp eq i32 %i.cs, %i.m
  br i1 %i.ct, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit, label %.critedge.i, !prof !36

.critedge.i:                                      ; preds = %.lr.ph.i13
  %i.cu = add i16 %.sroa.035.065.i, -1
  %i.cv = and i16 %i.cu, %.sroa.035.065.i         ; 2 uses
  %.not.i14 = icmp eq i16 %i.cv, 0
  br i1 %.not.i14, label %.critedge19.i, label %.lr.ph.i13

.critedge19.i:                                    ; preds = %.critedge.i, %bb.n
  %i.cw = icmp eq <16 x i8> %i.ck, splat (i8 -128)
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.cx, 0
  br i1 %.not57.i, label %bb.o, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread31, !prof !5

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread31: ; preds = %.critedge19.i
  %i.cy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cx, i1 true)
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = add i64 %.sroa.7.0.i, %i.cz
  %i.db = and i64 %i.da, %i.bg
  %i.dc = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cc, i64 %i.db, i64 %.sroa.15.0.i) #18, !noalias !33
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.cf, align 8, !noalias !33
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.dc
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.o:                                             ; preds = %.critedge19.i
  %i.de = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.df = add i64 %i.de, %.sroa.7.0.i
  br label %bb.n

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.j, %bb.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread31
  %i.dg = phi i32 [ %i.m, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread31 ], [ %i.m, %bb.j ], [ %.pre, %bb.l ]
  %.sroa.418.028 = phi ptr [ %i.dd, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread31 ], [ %i.bk, %bb.j ], [ %i.br, %bb.l ] ; 2 uses
  store i32 %i.dg, ptr %.sroa.418.028, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.418.028, i64 8
  %i.di = ptrtoint ptr %.sroa.0.0.i to i64
  store i64 %i.di, ptr %i.dh, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit: ; preds = %.lr.ph.i13, %bb.k, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE22find_or_prepare_insertIjEESK_INSO_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 8 uses
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = load i8, ptr %2, align 8
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4
  store i32 %i.ds, ptr %i.c, align 4
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE2atIjSE_EEDTclsrT0_5valueclL_ZSt9addressofISM_EPT_RSS_EclL_ZSt7declvalIRSM_EDTcl9__declvalISS_ELi0EEEvEEEEERSL_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.du = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = icmp ult ptr %i.du, %i.dw
  br i1 %i.dx, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit, label %bb.q, !prof !36

bb.q:                                             ; preds = %bb.p
  %i.dy = load ptr, ptr %i.dk, align 8
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 3
  %i.ed = add nsw i64 %i.ec, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 noundef %i.ed)
  %.pre.i8 = load ptr, ptr %i.dm, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit: ; preds = %bb.p, %bb.q
  %i.ee = phi ptr [ %i.du, %bb.p ], [ %.pre.i8, %bb.q ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ef, ptr %i.dm, align 8
  %i.eg = load i64, ptr %i.dt, align 8
  store i64 %i.eg, ptr %i.ee, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.loopexit

bb.r:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8            ; 4 uses
  %.not35 = icmp eq ptr %i.ei, null
  br i1 %.not35, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = and i32 %i.ek, 3
  %i.em = icmp eq i32 %i.el, 1
  %i.en = sext i1 %i.em to i32
  br label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit: ; preds = %bb.r, %bb.s
  %.neg = phi i32 [ 0, %bb.r ], [ %i.en, %bb.s ]  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = add i32 %i.ep, %.neg
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 528
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10 ] ; 2 uses
  %i.et = phi ptr [ %i.ei, %.lr.ph ], [ %i.fn, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv
  %i.ex = load ptr, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4
  store i32 %i.ez, ptr %i.d, align 4
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE2atIjSE_EEDTclsrT0_5valueclL_ZSt9addressofISM_EPT_RSS_EclL_ZSt7declvalIRSM_EDTcl9__declvalISS_ELi0EEEvEEEEERSL_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.fb = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.fc = load ptr, ptr %i.es, align 8            ; 2 uses
  %i.fd = icmp ult ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10, label %bb.u, !prof !36

bb.u:                                             ; preds = %bb.t
  %i.fe = load ptr, ptr %i.dk, align 8
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = add nsw i64 %i.fi, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 noundef %i.fj)
  %.pre.i9 = load ptr, ptr %i.dm, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10: ; preds = %bb.t, %bb.u
  %i.fk = phi ptr [ %i.fb, %bb.t ], [ %.pre.i9, %bb.u ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fl, ptr %i.dm, align 8
  %i.fm = load i64, ptr %i.fa, align 8
  store i64 %i.fm, ptr %i.fk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fn = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = add i32 %i.fp, %.neg
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next, %i.fr
  br i1 %i.fs, label %bb.t, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit
  %i.ft = load ptr, ptr %i.dk, align 8            ; 4 uses
  %i.fu = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.fv = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fw = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fx = sub i64 %i.fv, %i.fw                    ; 7 uses
  %i.fy = ashr exact i64 %i.fx, 3                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.fz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS8_12SnapshotDataENS_4base6VectorIKNS8_8SnapshotEEERKT_(ptr noundef nonnull align 8 dereferenceable(344) %i.e, ptr %i.ft, i64 %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %6) ; 0 uses
  %i.ga = icmp ult i64 %i.fy, 4294967296
  br i1 %i.ga, label %bb.w, label %bb.v, !prof !36

bb.v:                                             ; preds = %.loopexit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.70) #19
  unreachable

bb.w:                                             ; preds = %.loopexit
  %i.gb = icmp eq ptr %i.fu, %i.ft
  br i1 %i.gb, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16StartNewSnapshotIZNS4_31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS4_10BasicBlockEPKSB_E3$_0NS2_16NoChangeCallbackEEEvNS_4base6VectorIKNS8_8SnapshotEEERKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISM_SP_EENSI_ISN_EEEsr3stdE14is_invocable_vITL0_0_SU_SM_SM_E.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gc = load ptr, ptr %i.f, align 8
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.gi = sub i64 %i.fv, %i.fw
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.gj = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.gk = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not25.i.i = icmp eq ptr %i.gj, %i.gk
  br i1 %.not25.i.i, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16StartNewSnapshotIZNS4_31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS4_10BasicBlockEPKSB_E3$_0NS2_16NoChangeCallbackEEEvNS_4base6VectorIKNS8_8SnapshotEEERKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISM_SP_EENSI_ISN_EEEsr3stdE14is_invocable_vITL0_0_SU_SM_SM_E.exit", label %.lr.ph28.i.i

.lr.ph28.i.i:                                     ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.gv = icmp eq i64 %i.fx, 8
  %unroll_iter = and i64 %i.fy, 4294967294
  %i.gw = and i64 %i.fx, 8
  %lcmp.mod.not = icmp eq i64 %i.gw, 0
  %lcmp.mod89 = trunc i64 %i.fy to i1
  br label %bb.an

bb.z:                                             ; preds = %._crit_edge.i.i, %bb.x
  %indvars.iv.i.i = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.i.i
  %.03320.i.i = load ptr, ptr %i.gx, align 8      ; 2 uses
  %.not3621.i.i = icmp eq ptr %.03320.i.i, %i.gd
  br i1 %.not3621.i.i, label %._crit_edge.i.i, label %.lr.ph23.preheader.i.i

.lr.ph23.preheader.i.i:                           ; preds = %bb.z
  %i.gy = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  br label %.lr.ph23.i.i

.loopexit18.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i, %.lr.ph23.i.i
  %.033.i.i = load ptr, ptr %.03322.i.i, align 8  ; 2 uses
  %.not36.i.i = icmp eq ptr %.033.i.i, %i.gd
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph23.i.i, !llvm.loop !38

._crit_edge.i.i:                                  ; preds = %.loopexit18.i.i, %bb.z
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.fy
  br i1 %exitcond.not.i.i, label %bb.y, label %bb.z, !llvm.loop !39

.lr.ph23.i.i:                                     ; preds = %.loopexit18.i.i, %.lr.ph23.preheader.i.i
  %.03322.i.i = phi ptr [ %.033.i.i, %.loopexit18.i.i ], [ %.03320.i.i, %.lr.ph23.preheader.i.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev31MaglevPhiRepresentationSelector27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_PNS1_10BasicBlockENS1_18BasicBlockPositionESt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  %i.u = shl i64 %4, 16
  %i.v = or i64 %i.u, 26663156973744
  store ptr null, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %.not14.i.i = icmp eq i64 %4, 0
  br i1 %.not14.i.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_14Uint32ToNumberEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i ] ; 2 uses
  %.01115.i.i = phi ptr [ %3, %.lr.ph.i.i ], [ %i.ak, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i ] ; 2 uses
  %i.aa = load ptr, ptr %.01115.i.i, align 8      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 7696581394432
  %i.ae = icmp eq i64 %i.ad, 2199023255552
  br i1 %i.ae, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.i.i

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.i.i: ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.46) #19
  unreachable

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8
  %i.ai = sub nsw i64 0, %indvars.iv.i.i
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ai
  store ptr %i.aa, ptr %i.aj, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.y
  br i1 %.not.i.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit, label %bb.d

_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit: ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i, %_ZN2v88internal6maglev8NodeBase3NewINS1_14Uint32ToNumberEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull %i.t)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.al = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE37AddUnbufferedNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_PNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef %1, ptr %3, i64 %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit
  %.0 = phi ptr [ %i.t, %_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit ], [ %i.al, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev31MaglevPhiRepresentationSelector19FixLoopPhisBackedgeEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not36 = icmp eq ptr %i.h, null
  br i1 %.not36, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit
  %.sroa.033.037 = phi ptr [ %i.g, %.lr.ph ], [ %i.bb, %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.033.037, align 8    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 16
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -8
  %narrow = sub nsw i32 1, %i.q
  %i.s = sext i32 %narrow to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.v = and i64 %i.o, 7696581394432
  %i.w = icmp eq i64 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.z = and i64 %i.y, 7696581394432
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.l, align 8
  %i.ab = tail call noundef ptr @_ZN2v88internal6maglev31MaglevPhiRepresentationSelector15EnsurePhiTaggedEPNS1_3PhiEPNS1_10BasicBlockENS1_18BasicBlockPositionEPKNS1_15ProcessingStateESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull %i.u, ptr noundef %i.aa, i32 -1, ptr poison, i64 0) ; 4 uses
  %i.ac = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.ad = icmp eq ptr %i.ac, %i.ab
  br i1 %i.ad, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 65535
  %.not.i.i = icmp eq i64 %i.ak, 99
  br i1 %.not.i.i, label %bb.h, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 1)
  %.sroa.speculated.i.i.i = add nsw i32 %i.an, -1
  store i32 %.sroa.speculated.i.i.i, ptr %i.al, align 4
  br label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

bb.i:                                             ; preds = %bb.c
  %i.ao = and i64 %i.y, 65535
  %i.ap = icmp eq i64 %i.ao, 67
  br i1 %i.ap, label %bb.j, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp eq ptr %i.u, %i.ar
  br i1 %i.as, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.l, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

bb.l:                                             ; preds = %bb.k
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.at, align 8
  br label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split: ; preds = %bb.k, %bb.l, %bb.f, %bb.g, %bb.h
  %.sink51 = phi ptr [ %i.ab, %bb.f ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ], [ %i.ar, %bb.l ], [ %i.ar, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink51, i64 16 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8
  store ptr %.sink51, ptr %i.t, align 8
  br label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit: ; preds = %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split, %bb.j, %bb.e, %bb.i, %bb.d
  %i.ba = load ptr, ptr %.sroa.033.037, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.j
  br i1 %i.bc, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread, label %bb.c

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread: ; preds = %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit, %bb.b, %bb.a, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE2atIjSE_EEDTclsrT0_5valueclL_ZSt9addressofISM_EPT_RSS_EclL_ZSt7declvalIRSM_EDTcl9__declvalISS_ELi0EEEvEEEEERSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i32, ptr %1, align 4
  %i.h = icmp eq i32 %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = load i32, ptr %1, align 4                ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = xor i64 %i.l, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.a        ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.a                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %i.m
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !36

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.017.047.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !61

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ai, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.at = icmp eq ptr %i.as, null                 ; 2 uses
  %i.au = icmp eq ptr %i.as, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit
  %i.av = load i8, ptr %i.as, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !36

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratorESR_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.64, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.62) #18
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratorESR_.exit
  tail call void @_ZN4absl13base_internal18ThrowStdOutOfRangeEPKc(ptr noundef nonnull @.str.60) #19
  unreachable

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratorESR_.exit
  %i.ax = load i8, ptr %i.as, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratordeEv.exit, label %bb.m, !prof !36

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.64, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66) #18
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratordeEv.exit: ; preds = %bb.l
  %i.az = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  ret ptr %i.ba
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #21
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal6maglev21MaglevCompilationUnit6is_osrEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_13Int32ConstantEJiRiEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.v8::internal::maglev::MaglevGraphLabeller::NodeInfo", align 8 ; 7 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = load i32, ptr %1, align 4
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = shl nsw i64 %i.d, 3                      ; 2 uses
  %i.f = add nsw i64 %i.e, 24                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8
end_hunk_1
