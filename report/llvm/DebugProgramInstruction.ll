Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugProgramInstruction?download=true
inline.NumInlined: 1037
inline.NumDeleted: 579
begin_hunk_0_@_ZN4llvm17DbgVariableRecord21createLinkedDVRAssignEPNS_11InstructionEPNS_5ValueEPNS_15DILocalVariableEPNS_12DIExpressionES4_S8_PKNS_10DILocationE:bb.a
  %i.f = tail call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %4) #16
  tail call void @_ZN4llvm17DbgVariableRecordC1EPNS_8MetadataEPNS_15DILocalVariableEPNS_12DIExpressionEPNS_10DIAssignIDES2_S6_PKNS_10DILocationE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef %i.e, ptr noundef %2, ptr noundef %3, ptr noundef %.0.i, ptr noundef %i.f, ptr noundef %5, ptr noundef %6) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  tail call void @_ZN4llvm10BasicBlock20insertDbgRecordAfterEPNS_9DbgRecordEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull %0) #16
  ret ptr %i.d
}

declare void @_ZN4llvm10BasicBlock20insertDbgRecordAfterEPNS_9DbgRecordEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4llvm17DbgVariableRecord12location_opsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 4, !tbaa !84    ; 2 uses
  %i.d = add i8 %i.c, -3
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.d, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.g = ptrtoint ptr %i.f to i64
  store i64 %i.e, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8
  br label %bb.f

.critedge:                                        ; preds = %bb.c
  %.not29 = icmp eq i8 %i.c, 4
  br i1 %.not29, label %bb.e, label %.critedge18

bb.e:                                             ; preds = %.critedge
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !85
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %i.p = insertelement <2 x ptr> %i.o, ptr %i.n, i64 1
  %i.q = ptrtoint <2 x ptr> %i.p to <2 x i64>
  %i.r = or <2 x i64> %i.q, splat (i64 4)
  store <2 x i64> %i.r, ptr %0, align 8
  br label %bb.f

.critedge18:                                      ; preds = %.critedge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.critedge18, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm17DbgVariableRecord25getNumVariableLocationOpsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !84
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm17DbgVariableRecord21getVariableLocationOpEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 4, !tbaa !84    ; 2 uses
  %.not13 = icmp eq i8 %i.c, 4
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.i = add i8 %i.c, -5
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.i, 33
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink15 = phi ptr [ %i.h, %bb.c ], [ %i.b, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sink15, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.k, %.sink.split ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17DbgVariableRecord25replaceVariableLocationOpEPNS_5ValueES2_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %.in.i.i, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.d, align 4, !tbaa !84
  %i.f = add i8 %i.e, -1
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.f, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = tail call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %2) #16
  tail call void @_ZN4llvm14DebugValueUser17untrackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 1) #16
  store ptr %i.l, ptr %.in.i.i, align 8, !tbaa !45
  tail call void @_ZN4llvm14DebugValueUser15trackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 1) #16
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45, !noalias !139 ; 6 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.o = load i8, ptr %i.n, align 4, !tbaa !84, !noalias !139 ; 3 uses
  %i.p = add i8 %i.o, -3
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.p, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %.critedge.i, label %_ZNK4llvm17DbgVariableRecord12location_opsEv.exit.thread42

_ZNK4llvm17DbgVariableRecord12location_opsEv.exit.thread42: ; preds = %bb.g
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.s = ptrtoint ptr %i.r to i64
  br label %.lr.ph.i.preheader.i.i.i

.critedge.i:                                      ; preds = %bb.g
  %.not29.i = icmp eq i8 %i.o, 4
  br i1 %.not29.i, label %_ZNK4llvm17DbgVariableRecord12location_opsEv.exit, label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread

_ZNK4llvm17DbgVariableRecord12location_opsEv.exit: ; preds = %.critedge.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49, !noalias !139 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = or i64 %i.v, 4                           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.y = load i32, ptr %i.x, align 8, !tbaa !85, !noalias !139
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, 4                         ; 2 uses
  %.not5.i.i.i.i = icmp eq i64 %i.w, %i.ac
  br i1 %.not5.i.i.i.i, label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNK4llvm17DbgVariableRecord12location_opsEv.exit.thread42, %_ZNK4llvm17DbgVariableRecord12location_opsEv.exit
  %.sroa.026.047 = phi i64 [ %i.q, %_ZNK4llvm17DbgVariableRecord12location_opsEv.exit.thread42 ], [ %i.w, %_ZNK4llvm17DbgVariableRecord12location_opsEv.exit ] ; 4 uses
  %.sroa.8.046 = phi i64 [ %i.s, %_ZNK4llvm17DbgVariableRecord12location_opsEv.exit.thread42 ], [ %i.ac, %_ZNK4llvm17DbgVariableRecord12location_opsEv.exit ] ; 5 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i
  %.sroa.01.0.copyload.i.i6.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i, %bb.j ], [ %.sroa.026.047, %.lr.ph.i.preheader.i.i.i ] ; 8 uses
  %i.ad = and i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, 4 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = inttoptr i64 %.sroa.01.0.copyload.i.i6.i.i.i.i to ptr
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_17DbgVariableRecord20location_op_iteratorEEEbT_.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = and i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, -5
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87, !noalias !140
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_17DbgVariableRecord20location_op_iteratorEEEbT_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_17DbgVariableRecord20location_op_iteratorEEEbT_.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.aj = phi ptr [ %i.af, %bb.h ], [ %i.ai, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89, !noalias !140
  %i.am = icmp eq ptr %i.al, %1
  br i1 %i.am, label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_17DbgVariableRecord20location_op_iteratorEEEbT_.exit.i.i.i.i
  %i.an = icmp ne i64 %i.ad, 0
  %i.ao = and i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, -5 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.ao, 0
  %.not.i.i.i.i.i = or i1 %i.an, %.not3.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = or disjoint i64 %i.at, 4
  %storemerge.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.au, i64 %i.ar ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i, %.sroa.8.046
  br i1 %.not.i.i.i.i, label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !138

_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_17DbgVariableRecord20location_op_iteratorEEEbT_.exit.i.i.i.i
  %i.av = icmp eq i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, %.sroa.8.046
  br i1 %i.av, label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit
  %i.aw = icmp eq i8 %i.o, 4
  br i1 %i.aw, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load i8, ptr %2, align 8, !tbaa !91
  %i.ay = icmp eq i8 %i.ax, 25
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bb = tail call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %2) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = phi ptr [ %i.ba, %bb.m ], [ %i.bb, %bb.n ]
  tail call void @_ZN4llvm14DebugValueUser17untrackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 0) #16
  store ptr %i.bc, ptr %i.m, align 8, !tbaa !45
  tail call void @_ZN4llvm14DebugValueUser15trackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 0) #16
  br label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bd, ptr %4, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.be, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 4, ptr %i.bf, align 4, !tbaa !92
  %i.bg = load i8, ptr %2, align 8, !tbaa !91
  %i.bh = icmp eq i8 %i.bg, 25
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !84
  %i.bl = add i8 %i.bk, -1
  %spec.select.i.i.i.i.i.i.i.i.i9 = icmp ult i8 %i.bl, 2
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i9, ptr %i.bj, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

bb.r:                                             ; preds = %bb.p
  %i.bm = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %2) #16
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

_ZL13getAsMetadataPN4llvm5ValueE.exit:            ; preds = %bb.q, %bb.r
  %i.bn = phi ptr [ %spec.select.i.i.i, %bb.q ], [ %i.bm, %bb.r ] ; 2 uses
  %.not52 = icmp eq i64 %.sroa.026.047, %.sroa.8.046
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit
  %5 = and i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, 4
  %6 = icmp eq i64 %5, 0
  %i.bo = and i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, -5
  %i.bp = inttoptr i64 %i.bo to ptr
  br i1 %6, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bq = inttoptr i64 %.sroa.01.0.copyload.i.i6.i.i.i.i to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us, %.lr.ph.split.us
  %.sroa.020.053.us = phi i64 [ %.sroa.026.047, %.lr.ph.split.us ], [ %storemerge.i.us, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us ] ; 4 uses
  %i.bs = and i64 %.sroa.020.053.us, 4            ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = and i64 %.sroa.020.053.us, -5
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  br label %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us

bb.u:                                             ; preds = %bb.s
  %i.bx = inttoptr i64 %.sroa.020.053.us to ptr
  br label %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us

_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us: ; preds = %bb.u, %bb.t
  %i.by = phi ptr [ %i.bx, %bb.u ], [ %i.bw, %bb.t ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !89 ; 4 uses
  %i.cb = load ptr, ptr %i.br, align 8, !tbaa !89
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us
  %i.cd = load i8, ptr %i.ca, align 8, !tbaa !91
  %i.ce = icmp eq i8 %i.cd, 25
  br i1 %i.ce, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %i.ca) #16
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us

bb.x:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !32 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !84
  %i.cj = add i8 %i.ci, -1
  %spec.select.i.i.i.i.i.i.i.i.i13.us = icmp ult i8 %i.cj, 2
  %spec.select.i.i.i14.us = select i1 %spec.select.i.i.i.i.i.i.i.i.i13.us, ptr %i.ch, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us

_ZL13getAsMetadataPN4llvm5ValueE.exit15.us:       ; preds = %bb.x, %bb.w, %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us
  %i.ck = phi ptr [ %i.bn, %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us ], [ %spec.select.i.i.i14.us, %bb.x ], [ %i.cf, %bb.w ] ; 2 uses
  %i.cl = load i32, ptr %i.be, align 8, !tbaa !85 ; 2 uses
  %i.cm = load i32, ptr %i.bf, align 4, !tbaa !92
  %.not.i16.us = icmp ult i32 %i.cl, %i.cm
  br i1 %.not.i16.us, label %bb.z, label %bb.y, !prof !93

bb.y:                                             ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ck)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us

bb.z:                                             ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us
  %i.cn = zext i32 %i.cl to i64
  %i.co = load ptr, ptr %4, align 8, !tbaa !49
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  store ptr %i.ck, ptr %i.cp, align 1
  %i.cq = load i32, ptr %i.be, align 8, !tbaa !85
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.be, align 8, !tbaa !85
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us

_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us: ; preds = %bb.z, %bb.y
  %i.cs = icmp ne i64 %i.bs, 0
  %i.ct = and i64 %.sroa.020.053.us, -5           ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %.not3.i.us = icmp eq i64 %i.ct, 0
  %.not.i18.us = or i1 %i.cs, %.not3.i.us
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 144
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = or disjoint i64 %i.cy, 4
  %storemerge.i.us = select i1 %.not.i18.us, i64 %i.cz, i64 %i.cw ; 2 uses
  %.not.us = icmp eq i64 %storemerge.i.us, %.sroa.8.046
  br i1 %.not.us, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us, %_ZL13getAsMetadataPN4llvm5ValueE.exit
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !45, !nonnull !55, !noundef !55 ; 3 uses
  %i.db = load i8, ptr %i.da, align 4, !tbaa !84  ; 2 uses
  %.not13.i = icmp eq i8 %i.db, 4
  br i1 %.not13.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 136
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !87
  br label %.sink.split.i

bb.ab:                                            ; preds = %._crit_edge
  %i.df = add i8 %i.db, -38
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.df, -33
  call void @llvm.assume(i1 %switch.i.i.i.i.i.i.i.i.i)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ab, %bb.aa
  %.sink15.i = phi ptr [ %i.de, %bb.aa ], [ %i.da, %bb.ab ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 136
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !89
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !94
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !95, !nonnull !55, !align !56
  %i.dl = load ptr, ptr %4, align 8, !tbaa !49
  %i.dm = load i32, ptr %i.be, align 8, !tbaa !85
  %i.dn = zext i32 %i.dm to i64
  %i.do = call noundef ptr @_ZN4llvm9DIArgList3getERNS_11LLVMContextENS_8ArrayRefIPNS_15ValueAsMetadataEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr %i.dl, i64 %i.dn) #16
  call void @_ZN4llvm14DebugValueUser17untrackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 0) #16
  store ptr %i.do, ptr %i.m, align 8, !tbaa !45
  call void @_ZN4llvm14DebugValueUser15trackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 0) #16
  %i.dp = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.bd
  br i1 %i.dq, label %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i
  call void @free(ptr noundef %i.dp) #16
  br label %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit: ; preds = %.sink.split.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit
  %.sroa.020.053 = phi i64 [ %storemerge.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit ], [ %.sroa.026.047, %.lr.ph ] ; 4 uses
  %i.dr = and i64 %.sroa.020.053, 4               ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split
  %i.dt = inttoptr i64 %.sroa.020.053 to ptr
  br label %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit

bb.ae:                                            ; preds = %.lr.ph.split
  %i.du = and i64 %.sroa.020.053, -5
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !87
  br label %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit

_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit: ; preds = %bb.ad, %bb.ae
  %i.dx = phi ptr [ %i.dt, %bb.ad ], [ %i.dw, %bb.ae ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 136
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !89 ; 4 uses
  %i.ea = load ptr, ptr %i.bp, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !89
  %i.ed = icmp eq ptr %i.dz, %i.ec
  br i1 %i.ed, label %_ZL13getAsMetadataPN4llvm5ValueE.exit15, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit
  %i.ee = load i8, ptr %i.dz, align 8, !tbaa !91
  %i.ef = icmp eq i8 %i.ee, 25
  br i1 %i.ef, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !32 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !84
  %i.ej = add i8 %i.ei, -1
  %spec.select.i.i.i.i.i.i.i.i.i13 = icmp ult i8 %i.ej, 2
  %spec.select.i.i.i14 = select i1 %spec.select.i.i.i.i.i.i.i.i.i13, ptr %i.eh, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit15

bb.ah:                                            ; preds = %bb.af
  %i.ek = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %i.dz) #16
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit15

_ZL13getAsMetadataPN4llvm5ValueE.exit15:          ; preds = %bb.ah, %bb.ag, %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit
  %i.el = phi ptr [ %i.bn, %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit ], [ %spec.select.i.i.i14, %bb.ag ], [ %i.ek, %bb.ah ] ; 2 uses
  %i.em = load i32, ptr %i.be, align 8, !tbaa !85 ; 2 uses
  %i.en = load i32, ptr %i.bf, align 4, !tbaa !92
  %.not.i16 = icmp ult i32 %i.em, %i.en
  br i1 %.not.i16, label %bb.aj, label %bb.ai, !prof !93

bb.ai:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit15
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.el)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

bb.aj:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit15
  %i.eo = zext i32 %i.em to i64
  %i.ep = load ptr, ptr %4, align 8, !tbaa !49
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  store ptr %i.el, ptr %i.eq, align 1
  %i.er = load i32, ptr %i.be, align 8, !tbaa !85
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr %i.be, align 8, !tbaa !85
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit: ; preds = %bb.ai, %bb.aj
  %i.et = icmp ne i64 %i.dr, 0
  %i.eu = and i64 %.sroa.020.053, -5              ; 2 uses
  %i.ev = inttoptr i64 %i.eu to ptr               ; 2 uses
  %.not3.i = icmp eq i64 %i.eu, 0
  %.not.i18 = or i1 %i.et, %.not3.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 144
end_hunk_0
