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
  %.sroa.01.0.copyload.i.i6.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i, %bb.j ], [ %.sroa.026.047, %.lr.ph.i.preheader.i.i.i ] ; 7 uses
  %i.ad = and i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, 4
  %i.ae = icmp ne i64 %i.ad, 0                    ; 3 uses
  br i1 %i.ae, label %bb.i, label %bb.h

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
  %i.an = and i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, -5 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.an, 0
  %.not.i.i.i.i.i = or i1 %i.ae, %.not3.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = or disjoint i64 %i.as, 4
  %storemerge.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.at, i64 %i.aq ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i, %.sroa.8.046
  br i1 %.not.i.i.i.i, label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !138

_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_17DbgVariableRecord20location_op_iteratorEEEbT_.exit.i.i.i.i
  %i.au = icmp eq i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, %.sroa.8.046
  br i1 %i.au, label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit
  %i.av = icmp eq i8 %i.o, 4
  br i1 %i.av, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i8, ptr %2, align 8, !tbaa !91
  %i.ax = icmp eq i8 %i.aw, 25
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ba = tail call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %2) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = phi ptr [ %i.az, %bb.m ], [ %i.ba, %bb.n ]
  tail call void @_ZN4llvm14DebugValueUser17untrackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 0) #16
  store ptr %i.bb, ptr %i.m, align 8, !tbaa !45
  tail call void @_ZN4llvm14DebugValueUser15trackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 0) #16
  br label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 4, ptr %i.be, align 4, !tbaa !92
  %i.bf = load i8, ptr %2, align 8, !tbaa !91
  %i.bg = icmp eq i8 %i.bf, 25
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !84
  %i.bk = add i8 %i.bj, -1
  %spec.select.i.i.i.i.i.i.i.i.i9 = icmp ult i8 %i.bk, 2
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i9, ptr %i.bi, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

bb.r:                                             ; preds = %bb.p
  %i.bl = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %2) #16
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

_ZL13getAsMetadataPN4llvm5ValueE.exit:            ; preds = %bb.q, %bb.r
  %i.bm = phi ptr [ %spec.select.i.i.i, %bb.q ], [ %i.bl, %bb.r ] ; 2 uses
  %.not52 = icmp eq i64 %.sroa.026.047, %.sroa.8.046
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit
  %i.bn = and i64 %.sroa.01.0.copyload.i.i6.i.i.i.i, -5
  %i.bo = inttoptr i64 %i.bn to ptr
  br i1 %i.ae, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bp = inttoptr i64 %.sroa.01.0.copyload.i.i6.i.i.i.i to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us, %.lr.ph.split.us
  %.sroa.020.053.us = phi i64 [ %.sroa.026.047, %.lr.ph.split.us ], [ %storemerge.i.us, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us ] ; 4 uses
  %i.br = and i64 %.sroa.020.053.us, 4
  %i.bs = icmp ne i64 %i.br, 0                    ; 2 uses
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = and i64 %.sroa.020.053.us, -5
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !87
  br label %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us

bb.u:                                             ; preds = %bb.s
  %i.bw = inttoptr i64 %.sroa.020.053.us to ptr
  br label %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us

_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us: ; preds = %bb.u, %bb.t
  %i.bx = phi ptr [ %i.bw, %bb.u ], [ %i.bv, %bb.t ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !89 ; 4 uses
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !89
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us
  %i.cc = load i8, ptr %i.bz, align 8, !tbaa !91
  %i.cd = icmp eq i8 %i.cc, 25
  br i1 %i.cd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %i.bz) #16
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us

bb.x:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !32 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !84
  %i.ci = add i8 %i.ch, -1
  %spec.select.i.i.i.i.i.i.i.i.i13.us = icmp ult i8 %i.ci, 2
  %spec.select.i.i.i14.us = select i1 %spec.select.i.i.i.i.i.i.i.i.i13.us, ptr %i.cg, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us

_ZL13getAsMetadataPN4llvm5ValueE.exit15.us:       ; preds = %bb.x, %bb.w, %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us
  %i.cj = phi ptr [ %i.bm, %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.us ], [ %spec.select.i.i.i14.us, %bb.x ], [ %i.ce, %bb.w ] ; 2 uses
  %i.ck = load i32, ptr %i.bd, align 8, !tbaa !85 ; 2 uses
  %i.cl = load i32, ptr %i.be, align 4, !tbaa !92
  %.not.i16.us = icmp ult i32 %i.ck, %i.cl
  br i1 %.not.i16.us, label %bb.z, label %bb.y, !prof !93

bb.y:                                             ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.cj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us

bb.z:                                             ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit15.us
  %i.cm = zext i32 %i.ck to i64
  %i.cn = load ptr, ptr %4, align 8, !tbaa !49
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  store ptr %i.cj, ptr %i.co, align 1
  %i.cp = load i32, ptr %i.bd, align 8, !tbaa !85
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.bd, align 8, !tbaa !85
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us

_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us: ; preds = %bb.z, %bb.y
  %i.cr = and i64 %.sroa.020.053.us, -5           ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %.not3.i.us = icmp eq i64 %i.cr, 0
  %.not.i18.us = or i1 %i.bs, %.not3.i.us
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = or disjoint i64 %i.cw, 4
  %storemerge.i.us = select i1 %.not.i18.us, i64 %i.cx, i64 %i.cu ; 2 uses
  %.not.us = icmp eq i64 %storemerge.i.us, %.sroa.8.046
  br i1 %.not.us, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit, %_ZL13getAsMetadataPN4llvm5ValueE.exit
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !45, !nonnull !55, !noundef !55 ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !84  ; 2 uses
  %.not13.i = icmp eq i8 %i.cz, 4
  br i1 %.not13.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !49
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !87
  br label %.sink.split.i

bb.ab:                                            ; preds = %._crit_edge
  %i.dd = add i8 %i.cz, -38
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.dd, -33
  call void @llvm.assume(i1 %switch.i.i.i.i.i.i.i.i.i)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ab, %bb.aa
  %.sink15.i = phi ptr [ %i.dc, %bb.aa ], [ %i.cy, %bb.ab ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sink15.i, i64 136
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !89
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !94
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !95, !nonnull !55, !align !56
  %i.dj = load ptr, ptr %4, align 8, !tbaa !49
  %i.dk = load i32, ptr %i.bd, align 8, !tbaa !85
  %i.dl = zext i32 %i.dk to i64
  %i.dm = call noundef ptr @_ZN4llvm9DIArgList3getERNS_11LLVMContextENS_8ArrayRefIPNS_15ValueAsMetadataEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr %i.dj, i64 %i.dl) #16
  call void @_ZN4llvm14DebugValueUser17untrackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 0) #16
  store ptr %i.dm, ptr %i.m, align 8, !tbaa !45
  call void @_ZN4llvm14DebugValueUser15trackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 0) #16
  %i.dn = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bc
  br i1 %i.do, label %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i
  call void @free(ptr noundef %i.dn) #16
  br label %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit: ; preds = %.sink.split.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit
  %.sroa.020.053 = phi i64 [ %storemerge.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit ], [ %.sroa.026.047, %.lr.ph ] ; 4 uses
  %i.dp = and i64 %.sroa.020.053, 4
  %i.dq = icmp ne i64 %i.dp, 0                    ; 2 uses
  br i1 %i.dq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split
  %i.dr = inttoptr i64 %.sroa.020.053 to ptr
  br label %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit

bb.ae:                                            ; preds = %.lr.ph.split
  %i.ds = and i64 %.sroa.020.053, -5
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !87
  br label %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit

_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit: ; preds = %bb.ad, %bb.ae
  %i.dv = phi ptr [ %i.dr, %bb.ad ], [ %i.du, %bb.ae ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !89 ; 4 uses
  %i.dy = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !89
  %i.eb = icmp eq ptr %i.dx, %i.ea
  br i1 %i.eb, label %_ZL13getAsMetadataPN4llvm5ValueE.exit15, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit
  %i.ec = load i8, ptr %i.dx, align 8, !tbaa !91
  %i.ed = icmp eq i8 %i.ec, 25
  br i1 %i.ed, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !32 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !84
  %i.eh = add i8 %i.eg, -1
  %spec.select.i.i.i.i.i.i.i.i.i13 = icmp ult i8 %i.eh, 2
  %spec.select.i.i.i14 = select i1 %spec.select.i.i.i.i.i.i.i.i.i13, ptr %i.ef, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit15

bb.ah:                                            ; preds = %bb.af
  %i.ei = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %i.dx) #16
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit15

_ZL13getAsMetadataPN4llvm5ValueE.exit15:          ; preds = %bb.ah, %bb.ag, %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit
  %i.ej = phi ptr [ %i.bm, %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit ], [ %spec.select.i.i.i14, %bb.ag ], [ %i.ei, %bb.ah ] ; 2 uses
  %i.ek = load i32, ptr %i.bd, align 8, !tbaa !85 ; 2 uses
  %i.el = load i32, ptr %i.be, align 4, !tbaa !92
  %.not.i16 = icmp ult i32 %i.ek, %i.el
  br i1 %.not.i16, label %bb.aj, label %bb.ai, !prof !93

bb.ai:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit15
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ej)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

bb.aj:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit15
  %i.em = zext i32 %i.ek to i64
  %i.en = load ptr, ptr %4, align 8, !tbaa !49
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  store ptr %i.ej, ptr %i.eo, align 1
  %i.ep = load i32, ptr %i.bd, align 8, !tbaa !85
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.bd, align 8, !tbaa !85
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit: ; preds = %bb.ai, %bb.aj
  %i.er = and i64 %.sroa.020.053, -5              ; 2 uses
  %i.es = inttoptr i64 %i.er to ptr               ; 2 uses
  %.not3.i = icmp eq i64 %i.er, 0
  %.not.i18 = or i1 %i.dq, %.not3.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 144
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = or disjoint i64 %i.ew, 4
  %storemerge.i = select i1 %.not.i18, i64 %i.ex, i64 %i.eu ; 2 uses
  %.not = icmp eq i64 %storemerge.i, %.sroa.8.046
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit.thread: ; preds = %bb.j, %_ZN4llvm4findIRNS_14iterator_rangeINS_17DbgVariableRecord20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit, %.critedge.i, %.thread, %_ZNK4llvm17DbgVariableRecord12location_opsEv.exit, %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit, %bb.o
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm17DbgVariableRecord10getAddressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq i8 %i.b, 2
  %.in.v.i = select i1 %i.c, i64 48, i64 40
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.d = load ptr, ptr %.in.i, align 8, !tbaa !45 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 4, !tbaa !84
  %i.f = add i8 %i.e, -1
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.f, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.i
}

declare noundef ptr @_ZN4llvm9DIArgList3getERNS_11LLVMContextENS_8ArrayRefIPNS_15ValueAsMetadataEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17DbgVariableRecord25replaceVariableLocationOpEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !84
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %2, align 8, !tbaa !91
  %i.f = icmp eq i8 %i.e, 25
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %2) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  tail call void @_ZN4llvm14DebugValueUser17untrackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) #16
  store ptr %i.j, ptr %i.a, align 8, !tbaa !45
  tail call void @_ZN4llvm14DebugValueUser15trackDebugValueEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) #16
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i32 0, ptr %i.l, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 4, ptr %i.m, align 4, !tbaa !92
  %i.n = load i8, ptr %2, align 8, !tbaa !91
  %i.o = icmp eq i8 %i.n, 25
  br i1 %i.o, label %_ZL13getAsMetadataPN4llvm5ValueE.exit.thread, label %_ZL13getAsMetadataPN4llvm5ValueE.exit

_ZL13getAsMetadataPN4llvm5ValueE.exit.thread:     ; preds = %bb.f
end_hunk_0
