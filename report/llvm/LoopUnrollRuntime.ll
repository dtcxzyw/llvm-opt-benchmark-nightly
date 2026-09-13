Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopUnrollRuntime?download=true
inline.NumInlined: 2372
inline.NumDeleted: 1321
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm13LoopBlocksDFSC2EPNS_4LoopE:bb.a
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = or i64 %i.ad, %i.ac                     ; 2 uses
  %i.af = lshr i64 %i.ae, 4
  %i.ag = or i64 %i.af, %i.ae                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 8
  %i.ai = or i64 %i.ah, %i.ag                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 16
  %i.ak = or i64 %i.aj, %i.ai
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = add nuw i32 %i.al, 1                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 20, i1 false)
  store i32 %i.am, ptr %i.an, align 4, !tbaa !246
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = zext i32 %i.am to i64                   ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  %i.aw = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.av, i64 noundef 8) #18 ; 2 uses
  %i.ax = load i32, ptr %i.an, align 4, !tbaa !246 ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !247
  store ptr %i.ba, ptr %i.ap, align 8, !tbaa !445
  store i32 0, ptr %i.ao, align 8, !tbaa !446
  %.not.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2Ej.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E31getMinBucketToReserveForEntriesEj.exit.i
  %i.bb = add nuw nsw i64 %i.ay, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ba, i8 0, i64 %i.bd, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2Ej.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2Ej.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E31getMinBucketToReserveForEntriesEj.exit.thread.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E31getMinBucketToReserveForEntriesEj.exit.i, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !179
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 4294967295               ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE11_M_allocateEm.exit.i: ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2Ej.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bl, 3
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #20 ; 4 uses
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !44 ; 4 uses
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !179
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %bb.c, label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr align 8 %i.bq, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.c, %_ZNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bq, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.bw = load ptr, ptr %i.bm, align 8, !tbaa !228
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.by) #19
  br label %_ZNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.bp, ptr %i.be, align 8, !tbaa !44
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !179
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bl
  store ptr %i.bz, ptr %i.bm, align 8, !tbaa !228
  br label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE7reserveEm.exit

_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE7reserveEm.exit: ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2Ej.exit, %_ZNSt12_Vector_baseIPN4llvm10BasicBlockESaIS2_EE13_M_deallocateEPS2_m.exit.i
  ret void
}

declare void @_ZN4llvm13LoopBlocksDFS7performEPKNS_8LoopInfoE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL15CloneLoopBlocksPN4llvm4LoopEPNS_5ValueEbbPNS_10BasicBlockES5_S5_RSt6vectorIS5_SaIS5_EERNS_13LoopBlocksDFSERNS_8ValueMapIPKS2_NS_14WeakTrackingVHENS_14ValueMapConfigISE_NS_3sys10SmartMutexILb0EEEEEEEPNS_13DominatorTreeEPNS_8LoopInfoEjSt8optionalIjENS_17BranchProbabilityE(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(address) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(176) %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, i64 %13, i32 %14) unnamed_addr #3 {
bb.a:
  %15 = alloca %"class.llvm::ValueMapCallbackVH", align 8 ; 8 uses
  %16 = alloca %"class.llvm::ValueMapCallbackVH", align 8 ; 8 uses
  %17 = alloca %"class.llvm::BranchProbability", align 4 ; 5 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %20 = alloca %"class.llvm::ValueMapCallbackVH", align 8 ; 8 uses
  %21 = alloca %class.anon.270, align 1           ; 3 uses
  %22 = alloca %"class.llvm::ValueMapCallbackVH", align 8 ; 8 uses
  %23 = alloca %"class.llvm::ValueMapCallbackVH", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %24 = alloca %"class.llvm::SmallDenseMap.258", align 8 ; 10 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %26 = alloca %"class.llvm::IRBuilder.114", align 8 ; 21 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %30 = alloca %"class.llvm::MDBuilder", align 8  ; 4 uses
  %31 = alloca %"class.llvm::WeakTrackingVH", align 8 ; 8 uses
  %.sroa.0213.0.extract.trunc = trunc i64 %13 to i32
  store ptr %0, ptr %i.a, align 8, !tbaa !110
  %.str.19..str.20 = select i1 %2, ptr @.str.19, ptr @.str.20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 5 uses
  %i.f = tail call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #18 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !211, !noalias !491 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !211, !noalias !492 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.m = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.n = getelementptr inbounds nuw i8, ptr %24, i64 72
  store i32 1, ptr %24, align 8
  store i32 0, ptr %i.n, align 8
  %i.o = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4LoopEPS2_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !110
  %.not215225 = icmp eq ptr %i.j, %i.l
  br i1 %.not215225, label %._crit_edge, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %25, i64 33
  %i.s = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.not120 = icmp eq ptr %10, null
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %26, i64 68
  %i.ax = getelementptr inbounds nuw i8, ptr %26, i64 69
  %i.ay = getelementptr inbounds nuw i8, ptr %26, i64 70
  %i.az = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %27, i64 33
  %i.bf = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %28, i64 33
  %i.bj = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 33
  %i.bn = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %29, i64 33
  %i.bp = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.br = icmp ne i32 %14, -1
  %or.cond = and i1 %2, %i.br                     ; 2 uses
  %i.bs = icmp ugt i32 %12, 2                     ; 2 uses
  %i.bt = add i32 %12, -2                         ; 5 uses
  %i.bu = lshr i32 %i.bt, 1
  %.0112 = select i1 %i.bs, i32 %i.bu, i32 0
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bw = icmp eq i32 %14, -2147483648
  %i.bx = add i32 %12, -3
  %xtraiter = and i32 %i.bt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.by = icmp ult i32 %i.bx, 7
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aw, %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.0179.0228 = load ptr, ptr %i.bz, align 8, !tbaa !153 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.sroa.0179.0228, i64 -24 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !54
  %i.cc = icmp eq i8 %i.cb, 87
  br i1 %i.cc, label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i150.lr.ph, label %._crit_edge230

_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i150.lr.ph: ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %.not.i.i.i.i.i155 = icmp eq ptr %i.f, null
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i150

bb.b:                                             ; preds = %.lr.ph227, %bb.aw
  %.sroa.0198.0226 = phi ptr [ %i.j, %.lr.ph227 ], [ %i.cp, %bb.aw ]
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0198.0226, i64 -8 ; 8 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  store i8 3, ptr %i.q, align 8, !tbaa !76, !alias.scope !493
  store i8 5, ptr %i.r, align 1, !tbaa !77, !alias.scope !493
  store ptr @.str.21, ptr %25, align 8, !tbaa !78, !alias.scope !493
  store ptr %.str.19..str.20, ptr %i.s, align 8, !tbaa !78, !alias.scope !493
  store i64 4, ptr %i.t, align 8, !tbaa !78, !alias.scope !493
  %i.cr = call noundef ptr @_ZN4llvm15CloneBasicBlockEPKNS_10BasicBlockERNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS6_NS_3sys10SmartMutexILb0EEEEEEERKNS_5TwineEPNS_8FunctionEPNS_14ClonedCodeInfoEb(ptr noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(176) %9, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr noundef %i.h, ptr noundef null, i1 noundef zeroext true) #18 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %i.cs = load ptr, ptr %i.u, align 8, !tbaa !179 ; 4 uses
  %i.ct = load ptr, ptr %i.v, align 8, !tbaa !228
  %.not.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cu, ptr %i.u, align 8, !tbaa !179
  br label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.cv = load ptr, ptr %7, align 8, !tbaa !44    ; 4 uses
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 5 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.e, label %_ZNKSt6vectorIPN4llvm10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPN4llvm10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #20 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store ptr %i.cr, ptr %i.dh, align 8, !tbaa !46
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.f, label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN4llvm10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN4llvm10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.dk = load ptr, ptr %i.v, align 8, !tbaa !228
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dm) #19
  br label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.dg, ptr %7, align 8, !tbaa !44
  store ptr %i.dj, ptr %i.u, align 8, !tbaa !179
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dn, ptr %i.v, align 8, !tbaa !228
  br label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.do = load ptr, ptr %i.cp, align 8, !tbaa !46
  %i.dp = call noundef ptr @_ZN4llvm24addClonedBlockToLoopInfoEPNS_10BasicBlockES1_PNS_8LoopInfoERNS_13SmallDenseMapIPKNS_4LoopEPS5_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEE(ptr noundef %i.do, ptr noundef %i.cr, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(80) %24) #18 ; 0 uses
  %i.dq = load ptr, ptr %i.cp, align 8, !tbaa !46 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  store i64 2, ptr %i.w, align 8, !alias.scope !494
  store ptr null, ptr %i.x, align 8, !tbaa !171, !alias.scope !494
  store ptr %i.dq, ptr %i.y, align 8, !tbaa !168, !alias.scope !494
  %.not.i.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE9push_backERKS2_.exit
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #18, !inline_history !1
  br label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i

_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EE9push_backERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %23, align 8, !tbaa !29, !alias.scope !494
  store ptr %9, ptr %i.z, align 8, !tbaa !175, !alias.scope !494
  %i.dr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E24lookupOrInsertIntoBucketISC_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(176) %9, ptr noundef nonnull align 8 dereferenceable(40) %23)
  %i.ds = load ptr, ptr %i.y, align 8, !tbaa !168
  %.not.i.i.i122 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i122, label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #18
  br label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit

_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit: ; preds = %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i, %bb.i
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.dr, 0 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.du = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 56 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !168 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.cr
  br i1 %i.dw, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit
  %.not.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dt) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.cr, ptr %i.du, align 8, !tbaa !168
  %.not6.i.i = icmp eq ptr %i.cr, null
  br i1 %.not6.i.i, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dt) #18
  br label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit

_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit:      ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit, %bb.l, %bb.m
  %i.dx = load ptr, ptr %i.cp, align 8, !tbaa !46
  %i.dy = icmp eq ptr %i.e, %i.dx
  br i1 %i.dy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit
  %i.dz = load ptr, ptr %i.aa, align 8, !tbaa !49
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -24
  call void @_ZN4llvm11Instruction12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, i32 noundef 0, ptr noundef %i.cr) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit
  br i1 %.not120, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eb = load ptr, ptr %i.cp, align 8, !tbaa !46 ; 2 uses
  %i.ec = icmp eq ptr %i.e, %i.eb
  br i1 %i.ec, label %bb.q, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ed = load i32, ptr %i.ai, align 8, !tbaa !109
  %i.ee = add i32 %i.ed, 1                        ; 2 uses
  %i.ef = load i32, ptr %i.ab, align 8, !tbaa !62
  %i.eg = icmp ugt i32 %i.ef, %i.ee
  br i1 %i.eg, label %.sink.split.sink.split, label %.sink.split

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit: ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !109
  %i.ej = add i32 %i.ei, 1                        ; 2 uses
  %i.ek = load i32, ptr %i.ab, align 8, !tbaa !62
  %i.el = icmp ugt i32 %i.ek, %i.ej
  call void @llvm.assume(i1 %i.el)
  %i.em = zext i32 %i.ej to i64
  %i.en = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !181
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !208
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !184 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 2, ptr %i.ad, align 8, !alias.scope !495
  store ptr null, ptr %i.ae, align 8, !tbaa !171, !alias.scope !495
end_hunk_0
begin_hunk_1_@_ZL15CloneLoopBlocksPN4llvm4LoopEPNS_5ValueEbbPNS_10BasicBlockES5_S5_RSt6vectorIS5_SaIS5_EERNS_13LoopBlocksDFSERNS_8ValueMapIPKS2_NS_14WeakTrackingVHENS_14ValueMapConfigISE_NS_3sys10SmartMutexILb0EEEEEEEPNS_13DominatorTreeEPNS_8LoopInfoEjSt8optionalIjENS_17BranchProbabilityE:bb.a
bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.gj = add nuw i32 %.017.i.i.i.i, 1
  %i.gk = and i32 %i.gj, %i.fq                    ; 3 uses
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = lshr i64 %i.gl, 5
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !142, !noalias !497
  %i.gp = and i32 %i.gk, 31
  %i.gq = lshr i32 %i.go, %i.gp
  %i.gr = trunc i32 %i.gq to i1
  br i1 %i.gr, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !170

.loopexit.i.i:                                    ; preds = %bb.w, %bb.v, %bb.u
  %i.gs = zext i32 %i.fo to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [64 x i8], ptr %i.fm, i64 %i.gs
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.fo to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_.exit.loopexit.i, %.loopexit.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_.exit.loopexit.i ], [ %i.gs, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.gf, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_.exit.loopexit.i ], [ %i.gt, %.loopexit.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [64 x i8], ptr %i.fm, i64 %.pre-phi.i
  %.not216 = icmp eq ptr %.lcssa.sink.i.i, %i.gu
  br i1 %.not216, label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE5eraseERKS3_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E21eraseFromFilledBucketIZNSJ_21eraseFromFilledBucketEPSH_EUlRSH_E_EEvSL_OT_(ptr noundef nonnull align 8 dereferenceable(176) %9, ptr noundef nonnull %.lcssa.sink.i.i, ptr noundef nonnull align 1 dereferenceable(1) %21), !inline_history !5
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE5eraseERKS3_.exit

_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE5eraseERKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_.exit.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  store i64 2, ptr %i.al, align 8, !alias.scope !498
  store ptr null, ptr %i.am, align 8, !tbaa !171, !alias.scope !498
  store ptr %i.e, ptr %i.an, align 8, !tbaa !168, !alias.scope !498
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al) #18, !inline_history !1
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %20, align 8, !tbaa !29, !alias.scope !498
  store ptr %9, ptr %i.ao, align 8, !tbaa !175, !alias.scope !498
  %i.gv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E24lookupOrInsertIntoBucketISC_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(176) %9, ptr noundef nonnull align 8 dereferenceable(40) %20)
  %i.gw = load ptr, ptr %i.an, align 8, !tbaa !168
  %.not.i.i.i131 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i131, label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit133, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE5eraseERKS3_.exit
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al) #18
  br label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit133

_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit133: ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE5eraseERKS3_.exit, %bb.y
  %.fca.0.extract.i.i132 = extractvalue { ptr, i8 } %i.gv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.gx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i132, i64 56
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !168 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !49 ; 4 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !111
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !116, !nonnull !38, !align !117
  store ptr null, ptr %26, align 8, !tbaa !119
  store ptr %i.he, ptr %i.ar, align 8, !tbaa !120
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !122
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !124
  store ptr null, ptr %i.au, align 8, !tbaa !134
  store i32 0, ptr %i.av, align 8, !tbaa !135
  store i8 0, ptr %i.aw, align 4, !tbaa !136
  store i8 2, ptr %i.ax, align 1, !tbaa !137
  store i8 7, ptr %i.ay, align 2, !tbaa !138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ba, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.ap, align 8, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !139
  store ptr %i.hg, ptr %i.ba, align 8, !tbaa !140
  store ptr %i.ha, ptr %i.bb, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.hh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hb) #18
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !80
  store i64 %i.hi, ptr %26, align 8, !tbaa !80
  %i.hj = load ptr, ptr %i.bc, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  store i8 5, ptr %i.bd, align 8, !tbaa !76, !alias.scope !499
  store i8 3, ptr %i.be, align 1, !tbaa !77, !alias.scope !499
  store ptr %.str.19..str.20, ptr %27, align 8, !tbaa !78, !alias.scope !499
  store i64 4, ptr %i.bf, align 8, !tbaa !78, !alias.scope !499
  store ptr @.str.22, ptr %i.bg, align 8, !tbaa !78, !alias.scope !499
  %i.hk = call noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef 80) #18 ; 15 uses
  call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(80) %i.hk, ptr noundef %i.hj, i32 noundef 57, i32 268435456, ptr null, i64 0) #18
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  store i32 0, ptr %i.hl, align 4, !tbaa !135
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 76 ; 5 uses
  store i32 2, ptr %i.hm, align 4, !tbaa !162
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(80) %i.hk, ptr noundef nonnull align 8 dereferenceable(34) %27) #18
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !162
  call void @_ZN4llvm4User16allocHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(80) %i.hk, i32 noundef %i.hn, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.ho = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gy) #18 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i64 } %i.ho, 0 ; 2 uses
  %.fca.1.extract2.i = extractvalue { ptr, i64 } %i.ho, 1
  %.not.i.i134 = icmp eq ptr %.fca.0.extract1.i, null
  %i.hp = and i64 %.fca.1.extract2.i, 65280
  %i.hq = or disjoint i64 %i.hp, 1
  %.sroa.2.8.insert.ext.i = select i1 %.not.i.i134, i64 1, i64 %i.hq
  call void @_ZN4llvm11Instruction12insertBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.hk, ptr %.fca.0.extract1.i, i64 %.sroa.2.8.insert.ext.i) #18
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !111
  %i.ht = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.hs, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #18 ; 4 uses
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !111
  %i.hv = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.hu, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  %i.hw = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hk) #18 ; 2 uses
  %i.hx = extractvalue { ptr, i64 } %i.hw, 0
  %i.hy = extractvalue { ptr, i64 } %i.hw, 1
  store i8 5, ptr %i.bh, align 8, !tbaa !76, !alias.scope !500
  store i8 3, ptr %i.bi, align 1, !tbaa !77, !alias.scope !500
  store ptr %i.hx, ptr %28, align 8, !tbaa !78, !alias.scope !500
  store i64 %i.hy, ptr %i.bj, align 8, !tbaa !78, !alias.scope !500
  store ptr @.str.15, ptr %i.bk, align 8, !tbaa !78, !alias.scope !500
  %i.hz = load ptr, ptr %i.as, align 8, !tbaa !242, !nonnull !38, !align !117 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !29
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = call noundef ptr %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i32 noundef 14, ptr noundef nonnull %i.hk, ptr noundef %i.hv, i1 noundef zeroext false, i1 noundef zeroext false) #18, !inline_history !243 ; 2 uses
  %.not.not.i = icmp eq ptr %i.id, null
  br i1 %.not.not.i, label %bb.z, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit

bb.z:                                             ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store i8 1, ptr %i.bl, align 8, !tbaa !76
  store i8 1, ptr %i.bm, align 1, !tbaa !77
  %i.ie = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef nonnull %i.hk, ptr noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr null, i64 0) #18 ; 3 uses
  %i.if = load ptr, ptr %i.at, align 8, !tbaa !241, !nonnull !38, !align !117 ; 2 uses
  %.sroa.0.0.copyload.i.i.i136 = load ptr, ptr %i.bb, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !29
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef %i.ie, ptr noundef nonnull align 8 dereferenceable(34) %28, ptr %.sroa.0.0.copyload.i.i.i136, i64 %.sroa.2.0.copyload.i.i.i) #18, !inline_history !4
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef %i.ie) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit: ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit133, %bb.z
  %.1.i = phi ptr [ %i.id, %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit133 ], [ %i.ie, %bb.z ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  %i.ij = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hk) #18 ; 2 uses
  %i.ik = extractvalue { ptr, i64 } %i.ij, 0
  %i.il = extractvalue { ptr, i64 } %i.ij, 1
  store i8 5, ptr %i.bn, align 8, !tbaa !76, !alias.scope !501
  store i8 3, ptr %i.bo, align 1, !tbaa !77, !alias.scope !501
  store ptr %i.ik, ptr %29, align 8, !tbaa !78, !alias.scope !501
  store i64 %i.il, ptr %i.bp, align 8, !tbaa !78, !alias.scope !501
  store ptr @.str.23, ptr %i.bq, align 8, !tbaa !78, !alias.scope !501
  %i.im = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %26, i32 noundef 33, ptr noundef %.1.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(34) %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br i1 %or.cond, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit
  %i.in = call noundef zeroext i1 @_ZN4llvm17hasBranchWeightMDERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(72) %i.hb) #18
  br i1 %i.in, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.io = load ptr, ptr %i.ar, align 8, !tbaa !141, !nonnull !38, !align !117
  store ptr %i.io, ptr %30, align 8, !tbaa !120
  %i.ip = call noundef ptr @_ZN4llvm9MDBuilder19createBranchWeightsEjjb(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef %.0112, i32 noundef 1, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit, %bb.ab, %bb.aa
  %.0114 = phi ptr [ null, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit ], [ %i.ip, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.iq = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #18 ; 5 uses
  call void @_ZN4llvm10CondBrInstC1EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, ptr noundef %i.im, ptr noundef nonnull %i.gy, ptr noundef %5, ptr null, i64 0) #18
  %.not.i.i137 = icmp eq ptr %.0114, null
  br i1 %.not.i.i137, label %_ZN4llvm13IRBuilderBase12CreateCondBrEPNS_5ValueEPNS_10BasicBlockES4_PNS_6MDNodeES6_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, i32 noundef 2, ptr noundef nonnull %.0114) #18
  br label %_ZN4llvm13IRBuilderBase12CreateCondBrEPNS_5ValueEPNS_10BasicBlockES4_PNS_6MDNodeES6_.exit

_ZN4llvm13IRBuilderBase12CreateCondBrEPNS_5ValueEPNS_10BasicBlockES4_PNS_6MDNodeES6_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store i16 257, ptr %i.bv, align 8
  %i.ir = load ptr, ptr %i.at, align 8, !tbaa !241, !nonnull !38, !align !117 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bb, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !29
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull %i.iq, ptr noundef nonnull align 8 dereferenceable(34) %18, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #18, !inline_history !6
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef nonnull %i.iq) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br i1 %or.cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm13IRBuilderBase12CreateCondBrEPNS_5ValueEPNS_10BasicBlockES4_PNS_6MDNodeES6_.exit
  br i1 %i.bs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ae
  br i1 %i.bw, label %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader, label %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit

_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader: ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol.loopexit, label %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol

_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol: ; preds = %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol
  %.0224.us.prol = phi i32 [ %i.iw, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol ], [ %i.bt, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader ]
  %.0111223.us.prol = phi double [ %i.iv, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol ], [ 1.000000e+00, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol ], [ 0, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader ]
  %i.iv = fadd double %.0111223.us.prol, 1.000000e+00 ; 3 uses
  %i.iw = add i32 %.0224.us.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol.loopexit, label %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol, !llvm.loop !475

_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol.loopexit: ; preds = %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader
  %.lcssa303.unr = phi double [ poison, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader ], [ %i.iv, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol ]
  %.0224.us.unr = phi i32 [ %i.bt, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader ], [ %i.iw, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol ]
  %.0111223.us.unr = phi double [ 1.000000e+00, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.preheader ], [ %i.iv, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol ]
  br i1 %i.by, label %.loopexit, label %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us

_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us: ; preds = %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol.loopexit, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us
  %.0224.us = phi i32 [ %i.jf, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us ], [ %.0224.us.unr, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol.loopexit ]
  %.0111223.us = phi double [ %i.je, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us ], [ %.0111223.us.unr, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol.loopexit ]
  %i.ix = fadd double %.0111223.us, 1.000000e+00
  %i.iy = fadd double %i.ix, 1.000000e+00
  %i.iz = fadd double %i.iy, 1.000000e+00
  %i.ja = fadd double %i.iz, 1.000000e+00
  %i.jb = fadd double %i.ja, 1.000000e+00
  %i.jc = fadd double %i.jb, 1.000000e+00
  %i.jd = fadd double %i.jc, 1.000000e+00
  %i.je = fadd double %i.jd, 1.000000e+00         ; 2 uses
  %i.jf = add i32 %.0224.us, -8                   ; 2 uses
  %.not121.us.7 = icmp eq i32 %i.jf, 0
  br i1 %.not121.us.7, label %.loopexit, label %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us, !llvm.loop !476

_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit: ; preds = %.lr.ph, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit
  %.0224 = phi i32 [ %i.ka, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit ], [ %i.bt, %.lr.ph ] ; 2 uses
  %.0111223 = phi double [ %i.jz, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit ], [ 1.000000e+00, %.lr.ph ]
  %.sroa.0182.0222 = phi i64 [ %i.jv, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit ], [ 2147483648, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store i32 %14, ptr %17, align 4, !tbaa !142
  %i.jg = add i32 %.0224, 1
  %i.jh = call i32 @_ZNK4llvm17BranchProbability3powEj(ptr noundef nonnull align 4 dereferenceable(4) %17, i32 noundef %i.jg) #18 ; 2 uses
  %i.ji = sub i32 -2147483648, %i.jh              ; 2 uses
  %i.jj = load i32, ptr %17, align 4, !tbaa !142
  %spec.select.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.jj, i32 %i.jh)
  %i.jk = zext i32 %spec.select.i.i.i to i64
  %i.jl = shl nuw nsw i64 %i.jk, 31
  %i.jm = lshr i32 %i.ji, 1
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = or disjoint i64 %i.jl, %i.jn
  %i.jp = zext i32 %i.ji to i64
  %i.jq = udiv i64 %i.jo, %i.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.jr = and i64 %i.jq, 4294967295
  %i.js = and i64 %.sroa.0182.0222, 4294967295
  %i.jt = mul nuw i64 %i.jr, %i.js
  %i.ju = add nuw i64 %i.jt, 1073741824
  %i.jv = lshr i64 %i.ju, 31                      ; 2 uses
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = uitofp i32 %i.jw to double
  %i.jy = fmul nnan double %i.jx, f0x3E00000000000000
  %i.jz = fadd double %.0111223, %i.jy            ; 2 uses
  %i.ka = add i32 %.0224, -1                      ; 2 uses
  %.not121 = icmp eq i32 %i.ka, 0
  br i1 %.not121, label %.loopexit, label %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit, !llvm.loop !476

.loopexit:                                        ; preds = %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol.loopexit, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us, %bb.ae
  %.1 = phi double [ 1.000000e+00, %bb.ae ], [ %i.je, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us ], [ %.lcssa303.unr, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit.us.prol.loopexit ], [ %i.jz, %_ZL21probOfNextInRemainderN4llvm17BranchProbabilityEj.exit ]
  %i.kb = fdiv double 1.000000e+00, %.1
  %i.kc = fsub double 1.000000e+00, %i.kb
  %i.kd = call i32 @_ZN4llvm17BranchProbability20getBranchProbabilityEd(double noundef %i.kc) #18
  call void @_ZN4llvm20setBranchProbabilityEPNS_10CondBrInstENS_17BranchProbabilityEb(ptr noundef nonnull %i.iq, i32 %i.kd, i1 noundef zeroext true) #18
  br label %bb.af

bb.af:                                            ; preds = %.loopexit, %_ZN4llvm13IRBuilderBase12CreateCondBrEPNS_5ValueEPNS_10BasicBlockES4_PNS_6MDNodeES6_.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 8 uses
  %i.kf = load i32, ptr %i.ke, align 4            ; 2 uses
  %i.kg = and i32 %i.kf, 268435455
  %i.kh = load i32, ptr %i.hm, align 4, !tbaa !162
  %i.ki = icmp eq i32 %i.kg, %i.kh
  br i1 %i.ki, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hk) #18
  %.pre.i139 = load i32, ptr %i.ke, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.kj = phi i32 [ %.pre.i139, %bb.ag ], [ %i.kf, %bb.af ] ; 2 uses
  %i.kk = add i32 %i.kj, 1
  %i.kl = and i32 %i.kk, 268435455                ; 2 uses
  %i.km = and i32 %i.kj, -268435456
  %i.kn = or disjoint i32 %i.kl, %i.km
  store i32 %i.kn, ptr %i.ke, align 4
  %i.ko = add nsw i32 %i.kl, -1
  %i.kp = getelementptr inbounds i8, ptr %i.hk, i64 -8 ; 4 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !154
  %i.kr = zext i32 %i.ko to i64
  %i.ks = getelementptr inbounds nuw [32 x i8], ptr %i.kq, i64 %i.kr ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 3 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !177 ; 3 uses
  store ptr %i.kw, ptr %i.ku, align 8, !tbaa !154
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.kw, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store ptr %i.ku, ptr %i.kx, align 8, !tbaa !176
  store ptr null, ptr %i.kv, align 8, !tbaa !177
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store ptr null, ptr %i.kt, align 8, !tbaa !176
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i:    ; preds = %bb.ak, %bb.ah
  store ptr %i.ht, ptr %i.ks, align 8, !tbaa !59
  %.not.i.i.i.i.i138 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i138, label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i
  %i.ky = load i8, ptr %i.ht, align 8, !tbaa !54
  %i.kz = icmp ugt i8 %i.ky, 10
  br i1 %i.kz, label %bb.am, label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit

bb.am:                                            ; preds = %bb.al
  %i.la = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 3 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !154 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !177
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !176
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i:    ; preds = %bb.an, %bb.am
  store ptr %i.la, ptr %i.kt, align 8, !tbaa !176
  store ptr %i.ks, ptr %i.la, align 8, !tbaa !154
  br label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit

_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, %bb.al, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i
  %i.le = load i32, ptr %i.ke, align 4
  %i.lf = and i32 %i.le, 268435455
  %i.lg = add nsw i32 %i.lf, -1
  %i.lh = load ptr, ptr %i.kp, align 8, !tbaa !154 ; 2 uses
  %i.li = load i32, ptr %i.hm, align 4, !tbaa !162 ; 2 uses
  %i.lj = zext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [32 x i8], ptr %i.lh, i64 %i.lj
  %i.ll = zext i32 %i.lg to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.ll
  store ptr %4, ptr %i.lm, align 8, !tbaa !46
  %i.ln = load i32, ptr %i.ke, align 4            ; 2 uses
  %i.lo = and i32 %i.ln, 268435455
  %i.lp = icmp eq i32 %i.lo, %i.li
  br i1 %i.lp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit
  call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hk) #18
  %.pre.i146 = load i32, ptr %i.ke, align 4
  %.pre = load ptr, ptr %i.kp, align 8, !tbaa !154
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit
  %i.lq = phi ptr [ %.pre, %bb.ao ], [ %i.lh, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit ]
  %i.lr = phi i32 [ %.pre.i146, %bb.ao ], [ %i.ln, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit ] ; 2 uses
  %i.ls = add i32 %i.lr, 1
  %i.lt = and i32 %i.ls, 268435455                ; 2 uses
  %i.lu = and i32 %i.lr, -268435456
  %i.lv = or disjoint i32 %i.lt, %i.lu
  store i32 %i.lv, ptr %i.ke, align 4
  %i.lw = add nsw i32 %i.lt, -1
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [32 x i8], ptr %i.lq, i64 %i.lx ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 3 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i.i.i.i140 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i.i.i.i140, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i142, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !177 ; 3 uses
  store ptr %i.mc, ptr %i.ma, align 8, !tbaa !154
  %.not2.i.i.i.i.i.i141 = icmp eq ptr %i.mc, null
  br i1 %.not2.i.i.i.i.i.i141, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
end_hunk_1
