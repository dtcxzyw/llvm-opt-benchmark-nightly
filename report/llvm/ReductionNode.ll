Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ReductionNode?download=true
inline.NumInlined: 650
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir13ReductionNodeC2EPS0_RKSt6vectorISt4pairIiiESaIS4_EERN4llvm24SpecificBumpPtrAllocatorIS0_EE:bb.a
  store ptr %3, ptr %i.ao, align 8, !tbaa !68
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %.not = icmp eq ptr %i.ap, %0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EEC2ERKS3_.exit17
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = tail call i8 @_ZN4mlir13ReductionNode10initializeENS_8ModuleOpERNS_6RegionE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(28) %i.ar) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt6vectorISt4pairIiiESaIS1_EEC2ERKS3_.exit17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir13ReductionNode10initializeENS_8ModuleOpERNS_6RegionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::IRMapping", align 8   ; 11 uses
  %4 = alloca %"class.mlir::Operation::CloneOptions", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4mlir9Operation12CloneOptions3allEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::Operation::CloneOptions") align 8 %4) #14
  %i.a = call noundef ptr @_ZN4mlir9Operation5cloneERNS_9IRMappingERKNS0_12CloneOptionsE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(80) %4) #14
  %i.b = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #14
  br label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit

_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit:    ; preds = %bb.b, %bb.a
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !80, !range !81, !noundef !41
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.c, align 8, !tbaa !80
  br i1 %i.e, label %bb.c, label %_ZN4mlir9Operation12CloneOptionsD2Ev.exit

bb.c:                                             ; preds = %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir9Operation12CloneOptionsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.g) #14
  br label %_ZN4mlir9Operation12CloneOptionsD2Ev.exit

_ZN4mlir9Operation12CloneOptionsD2Ev.exit:        ; preds = %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88, !noalias !89 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90, !noalias !89 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !91, !noalias !89 ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9Operation12CloneOptionsD2Ev.exit
  %i.t = add i32 %i.r, -1                         ; 2 uses
  %i.u = ptrtoint ptr %i.l to i64
  %i.v = mul i64 %i.u, -4658895280553007687       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.t, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44, !noalias !92
  %i.ae = and i32 %i.z, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !93

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %bb.f
  %i.ah = phi i64 [ %i.an, %bb.f ], [ %i.aa, %bb.e ]
  %.017.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.f ], [ %i.z, %bb.e ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !95, !noalias !92
  %i.ak = icmp eq ptr %i.l, %i.aj
  br i1 %i.ak, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i.i, label %bb.f, !prof !45

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.al = add nuw i32 %.017.i.i.i.i.i.i.i, 1
  %i.am = and i32 %i.al, %i.t                     ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44, !noalias !92
  %i.ar = and i32 %i.am, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !96

.loopexit.i.i.i.i.i:                              ; preds = %bb.f, %bb.e, %_ZN4mlir9Operation12CloneOptionsD2Ev.exit
  %i.au = zext i32 %i.r to i64                    ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.au
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = zext i32 %i.r to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i.i, %.loopexit.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i.i ], [ %i.au, %.loopexit.i.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i = phi ptr [ %i.ai, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i.i.i ], [ %i.av, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp ne ptr %.lcssa.sink.i.i.i.i.i, %i.aw
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98
  %i.az = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ay) #14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !101 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !102
  %i.bg = zext i32 %i.bc to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #14
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i: ; preds = %bb.g, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.i.i
  %i.bm = load i32, ptr %i.q, align 4, !tbaa !91  ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.bp = zext i32 %i.bm to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 4
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.bu, i64 noundef 8) #14
  br label %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i: ; preds = %bb.h, %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !105 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN4mlir9IRMappingD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i
  %i.by = load ptr, ptr %3, align 8, !tbaa !106
  %i.bz = zext i32 %i.bw to i64                   ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = add nuw nsw i64 %i.bz, 31
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = and i64 %i.cc, 1073741820
  %i.ce = add nuw nsw i64 %i.cd, %i.ca
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.by, i64 noundef %i.ce, i64 noundef 8) #14
  br label %_ZN4mlir9IRMappingD2Ev.exit

_ZN4mlir9IRMappingD2Ev.exit:                      ; preds = %_ZN4llvm8DenseMapIPN4mlir5BlockES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i8 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN4mlir9Operation5cloneERNS_9IRMappingERKNS0_12CloneOptionsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN4mlir9Operation12CloneOptions3allEv(ptr dead_on_unwind writable sret(%"class.mlir::Operation::CloneOptions") align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4mlir13ReductionNode19generateNewVariantsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::pair", align 8        ; 7 uses
  %2 = alloca %"class.std::vector", align 8       ; 9 uses
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"struct.std::pair", align 8        ; 4 uses
  %5 = alloca %"struct.std::pair", align 8        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq ptr %i.b, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 7 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %i.o, 8
  %or.cond = select i1 %i.h, i1 %i.p, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %.not126 = icmp eq ptr %i.j, %i.l
  br i1 %.not126, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit
  %.pre131 = load ptr, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %.pre132 = load ptr, ptr %i.c, align 8, !tbaa !47
  %.pre133 = ptrtoint ptr %.pre132 to i64
  %.pre134 = ptrtoint ptr %.pre131 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi135 = phi i64 [ %.pre134, %._crit_edge.loopexit ], [ %i.f, %.preheader ]
  %.pre-phi = phi i64 [ %.pre133, %._crit_edge.loopexit ], [ %i.f, %.preheader ]
  %6 = phi ptr [ %.pre131, %._crit_edge.loopexit ], [ %i.b, %.preheader ]
  %i.v = sub i64 %.pre-phi, %.pre-phi135
  %i.w = ashr exact i64 %i.v, 3
  %sext11 = shl i64 %i.g, 29
  %i.x = ashr exact i64 %sext11, 32               ; 2 uses
  %i.y = sub nsw i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.x
  br label %bb.ae

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit
  %.0127 = phi ptr [ %i.j, %.lr.ph ], [ %i.co, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !36  ; 3 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !35  ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  store i64 0, ptr %2, align 8, !alias.scope !114
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.thread.i.i.i: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr null, i64 %i.ae
  br label %_ZNK4llvm8ArrayRefISt4pairIiiEEcvSt6vectorIS2_SaIS2_EEEv.exit

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.b
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #13, !noalias !114 ; 4 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !36, !alias.scope !114
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.ae  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %i.aa, i64 %i.ae, i1 false), !noalias !114
  br label %_ZNK4llvm8ArrayRefISt4pairIiiEEcvSt6vectorIS2_SaIS2_EEEv.exit

_ZNK4llvm8ArrayRefISt4pairIiiEEcvSt6vectorIS2_SaIS2_EEEv.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.thread.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.ai = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.thread.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.sink.i = phi ptr [ %i.af, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.thread.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.thread.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 6 uses
  store ptr %.sink.i, ptr %i.q, align 8, !tbaa !37, !alias.scope !114
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !35, !alias.scope !114
  %.sroa.02.0.copyload = load i64, ptr %.0127, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.02.0.copyload, ptr %1, align 8
  %i.aj = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %i.ai, ptr %.0.lcssa.i.i.i.i.i.i.i, ptr nonnull align 4 dereferenceable(8) %1) ; 5 uses
  %i.ak = icmp eq ptr %i.aj, %.0.lcssa.i.i.i.i.i.i.i
  br i1 %i.ak, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNK4llvm8ArrayRefISt4pairIiiEEcvSt6vectorIS2_SaIS2_EEEv.exit
  %.sroa.07.016.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.sroa.07.016.i.i.i, %.0.lcssa.i.i.i.i.i.i.i
  br i1 %.not17.i.i.i, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.pre10.i = load i32, ptr %1, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.al = phi i32 [ %.pre10.i, %.lr.ph.i.i.i ], [ %i.aw, %bb.e ] ; 2 uses
  %.sroa.07.020.i.i.i = phi ptr [ %.sroa.07.016.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.07.0.i.i.i, %bb.e ] ; 3 uses
  %.sroa.013.019.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.e ] ; 4 uses
  %.pn18.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.07.020.i.i.i, %bb.e ]
  %i.am = load i32, ptr %.sroa.07.020.i.i.i, align 4, !tbaa !49 ; 2 uses
  %i.an = icmp eq i32 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = load i32, ptr %i.s, align 4
  %i.ar = icmp eq i32 %i.ap, %i.aq
  %i.as = select i1 %i.an, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.am, ptr %.sroa.013.019.i.i.i, align 4, !tbaa !49
  %i.at = load i32, ptr %i.ao, align 4, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i.i.i, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i.i.i, i64 8
  %.pre.i = load i32, ptr %1, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi i32 [ %i.al, %bb.c ], [ %.pre.i, %bb.d ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.019.i.i.i, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.07.0.i.i.i, %.0.lcssa.i.i.i.i.i.i.i
  br i1 %.not.i.i.i, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.c, !llvm.loop !109

_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i: ; preds = %bb.e, %.preheader.i.i.i, %_ZNK4llvm8ArrayRefISt4pairIiiEEcvSt6vectorIS2_SaIS2_EEEv.exit
  %.sroa.013.2.i.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNK4llvm8ArrayRefISt4pairIiiEEcvSt6vectorIS2_SaIS2_EEEv.exit ], [ %i.aj, %.preheader.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.e ] ; 2 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !38
  %.not.i.i.i.i24 = icmp eq ptr %i.ax, %.sroa.013.2.i.i.i
  br i1 %.not.i.i.i.i24, label %_ZN4llvm5eraseISt6vectorISt4pairIiiESaIS3_EES3_EEvRT_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i
  %i.ay = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.az = ptrtoint ptr %.sroa.013.2.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.r, align 8, !tbaa !35
  br label %_ZN4llvm5eraseISt6vectorISt4pairIiiESaIS3_EES3_EEvRT_T0_.exit

_ZN4llvm5eraseISt6vectorISt4pairIiiESaIS3_EES3_EEvRT_T0_.exit: ; preds = %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !115, !nonnull !41, !align !116 ; 5 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !62 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = add i64 %i.bf, 120                      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !63
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %bb.h, !prof !45

bb.g:                                             ; preds = %_ZN4llvm5eraseISt6vectorISt4pairIiiESaIS3_EES3_EEvRT_T0_.exit
  %i.bk = inttoptr i64 %i.bg to ptr
  store ptr %i.bk, ptr %i.bd, align 8, !tbaa !62
  br label %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit"

bb.h:                                             ; preds = %_ZN4llvm5eraseISt6vectorISt4pairIiiESaIS3_EES3_EEvRT_T0_.exit
  %i.bl = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, i64 noundef 120, i64 noundef 120, i8 0)
  %.pre.i25 = load ptr, ptr %i.t, align 8, !tbaa !115
  br label %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit"

"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit": ; preds = %bb.g, %bb.h
  %i.bm = phi ptr [ %i.bd, %bb.g ], [ %.pre.i25, %bb.h ]
  %.0.i.i.i = phi ptr [ %i.be, %bb.g ], [ %i.bl, %bb.h ] ; 3 uses
  call void @_ZN4mlir13ReductionNodeC1EPS0_RKSt6vectorISt4pairIiiESaIS4_EERN4llvm24SpecificBumpPtrAllocatorIS0_EE(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.bm) #14
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !47  ; 4 uses
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !117
  %.not.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit"
  store ptr %.0.i.i.i, ptr %i.bn, align 8, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !47
  br label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit

bb.j:                                             ; preds = %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit"
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 5 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.k, label %_ZNKSt6vectorIPN4mlir13ReductionNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIPN4mlir13ReductionNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i26 = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i26)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #13 ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store ptr %.0.i.i.i, ptr %i.cc, align 8, !tbaa !64
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.l, label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4mlir13ReductionNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %i.bq, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN4mlir13ReductionNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.cf = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.ch) #15
  br label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !46
  store ptr %i.ce, ptr %i.c, align 8, !tbaa !47
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.ci, ptr %i.u, align 8, !tbaa !117
  br label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.i, %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cj = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit
  %i.ck = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cn) #15
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.co = getelementptr inbounds nuw i8, ptr %.0127, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

.critedge:                                        ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cr = icmp eq ptr %i.j, %i.l                  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.cs, %i.l
  %or.cond.i.i.i = select i1 %i.cr, i1 true, i1 %.not9.i.i.i
  br i1 %or.cond.i.i.i, label %"_ZN4llvm11max_elementIRSt6vectorISt4pairIiiESaIS3_EEZN4mlir13ReductionNode19generateNewVariantsEvE3$_0EEDaOT_T0_.exit", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.critedge
  %.val.i.pre.i.i.i = load i32, ptr %i.j, align 4, !tbaa !49
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph.i.i.i28, %.lr.ph.preheader.i.i.i
  %.val.i.i.i.i = phi i32 [ %i.da, %.lr.ph.i.i.i28 ], [ %.val.i.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ct = phi ptr [ %i.cz, %.lr.ph.i.i.i28 ], [ %i.cs, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.sroa.02.011.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i28 ], [ %i.j, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.06.010.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i28 ], [ %i.j, %.lr.ph.preheader.i.i.i ]
  %i.cu = getelementptr i8, ptr %.sroa.02.011.i.i.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.cu, align 4, !tbaa !50
  %.val2.i.i.i.i = load i32, ptr %i.ct, align 4, !tbaa !49 ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.06.010.i.i.i, i64 12
  %.val3.i.i.i.i = load i32, ptr %i.cv, align 4, !tbaa !50
  %i.cw = sub nsw i32 %.val1.i.i.i.i, %.val.i.i.i.i
  %i.cx = sub nsw i32 %.val3.i.i.i.i, %.val2.i.i.i.i
  %i.cy = icmp sgt i32 %i.cw, %i.cx               ; 2 uses
  %spec.select.i.i.i = select i1 %i.cy, ptr %i.ct, ptr %.sroa.02.011.i.i.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.cz, %i.l
  %i.da = select i1 %i.cy, i32 %.val2.i.i.i.i, i32 %.val.i.i.i.i
  br i1 %.not.i.i.i29, label %"_ZN4llvm11max_elementIRSt6vectorISt4pairIiiESaIS3_EEZN4mlir13ReductionNode19generateNewVariantsEvE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i28, !llvm.loop !110

"_ZN4llvm11max_elementIRSt6vectorISt4pairIiiESaIS3_EEZN4mlir13ReductionNode19generateNewVariantsEvE3$_0EEDaOT_T0_.exit": ; preds = %.lr.ph.i.i.i28, %.critedge
  %.sroa.02.2.i.i.i = phi ptr [ %i.j, %.critedge ], [ %spec.select.i.i.i, %.lr.ph.i.i.i28 ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !50
  %i.dd = load i32, ptr %.sroa.02.2.i.i.i, align 4, !tbaa !49
  %i.de = sub nsw i32 %i.dc, %i.dd
  %i.df = icmp slt i32 %i.de, 2
  br i1 %i.df, label %bb.ae, label %.lr.ph.i.i.i.i.preheader.i.i.i34

.lr.ph.i.i.i.i.preheader.i.i.i34:                 ; preds = %"_ZN4llvm11max_elementIRSt6vectorISt4pairIiiESaIS3_EEZN4mlir13ReductionNode19generateNewVariantsEvE3$_0EEDaOT_T0_.exit"
  %i.dg = load i64, ptr %.sroa.02.2.i.i.i, align 4 ; 4 uses
  %.sroa.0102.0.extract.trunc = trunc i64 %i.dg to i32 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.dg, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.dh = ptrtoint ptr %i.l to i64
  %i.di = ptrtoint ptr %i.j to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  store i64 0, ptr %3, align 8, !alias.scope !118
  %i.dk = xor i1 %i.cr, true
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #13, !noalias !118 ; 4 uses
  store ptr %i.dl, ptr %3, align 8, !tbaa !36, !alias.scope !118
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.dj  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 4 %i.j, i64 %i.dj, i1 false), !noalias !118
  %.pre = load ptr, ptr %i.cp, align 8, !tbaa !38
  %.pre136 = ptrtoint ptr %.pre to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !37, !alias.scope !118
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !35, !alias.scope !118
  %i.dp = ptrtoint ptr %.sroa.02.2.i.i.i to i64
  %i.dq = sub i64 %i.dp, %.pre136
  %i.dr = getelementptr inbounds i8, ptr %i.dl, i64 %i.dq ; 3 uses
  %i.ds = add nsw i32 %.sroa.6.0.extract.trunc, %.sroa.0102.0.extract.trunc
  %i.dt = sdiv i32 %i.ds, 2                       ; 3 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.dt to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = and i64 %i.dg, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i32 %.sroa.0102.0.extract.trunc, ptr %i.dr, align 4, !tbaa !49
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !50
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !115, !nonnull !41, !align !116 ; 5 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !62 ; 2 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = add i64 %i.dy, 120                      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !63
  %i.ec = icmp ult i64 %i.dz, %i.eb
  br i1 %i.ec, label %bb.o, label %bb.p, !prof !45

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i34
  %i.ed = inttoptr i64 %i.dz to ptr
  store ptr %i.ed, ptr %i.dw, align 8, !tbaa !62
  br label %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit41"

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i34
  %i.ee = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, i64 noundef 120, i64 noundef 120, i8 0)
  %.pre.i39 = load ptr, ptr %i.dv, align 8, !tbaa !115
  br label %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit41"

"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit41": ; preds = %bb.o, %bb.p
  %i.ef = phi ptr [ %i.dw, %bb.o ], [ %.pre.i39, %bb.p ]
  %.0.i.i.i40 = phi ptr [ %i.dx, %bb.o ], [ %i.ee, %bb.p ] ; 3 uses
  call void @_ZN4mlir13ReductionNodeC1EPS0_RKSt6vectorISt4pairIiiESaIS4_EERN4llvm24SpecificBumpPtrAllocatorIS0_EE(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i40, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(80) %i.ef) #14
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !47  ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !117
  %.not.i.i42 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not.i.i42, label %bb.r, label %bb.q

bb.q:                                             ; preds = %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit41"
  store ptr %.0.i.i.i40, ptr %i.eg, align 8, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ej, ptr %i.c, align 8, !tbaa !47
  br label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit49

bb.r:                                             ; preds = %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit41"
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.el = ptrtoint ptr %i.eg to i64
  %i.em = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em                    ; 5 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %bb.s, label %_ZNKSt6vectorIPN4mlir13ReductionNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i43

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIPN4mlir13ReductionNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i43: ; preds = %bb.r
  %i.ep = ashr exact i64 %i.en, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i.i44, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 1152921504606846975)
  %i.et = select i1 %i.er, i64 1152921504606846975, i64 %i.es ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #13 ; 4 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.en ; 2 uses
  store ptr %.0.i.i.i40, ptr %i.ew, align 8, !tbaa !64
  %i.ex = icmp sgt i64 %i.en, 0
  br i1 %i.ex, label %bb.t, label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i46

bb.t:                                             ; preds = %_ZNKSt6vectorIPN4mlir13ReductionNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr align 8 %i.ek, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i46

_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i46: ; preds = %bb.t, %_ZNKSt6vectorIPN4mlir13ReductionNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i43
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.not.i17.i.i.i47 = icmp eq ptr %i.ek, null
  br i1 %.not.i17.i.i.i47, label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i48, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i46
  %i.ez = load ptr, ptr %i.eh, align 8, !tbaa !117
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.fa, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.fb) #15
  br label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i48

_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i48: ; preds = %bb.u, %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i46
  store ptr %i.ev, ptr %i.a, align 8, !tbaa !46
  store ptr %i.ey, ptr %i.c, align 8, !tbaa !47
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.fc, ptr %i.eh, align 8, !tbaa !117
  br label %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit49

_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit49: ; preds = %bb.q, %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i48
  %.sroa.2.0.insert.shift.i51 = and i64 %i.dg, -4294967296
  %.sroa.0.0.insert.insert.i53 = or disjoint i64 %.sroa.2.0.insert.shift.i51, %.sroa.2.0.insert.ext.i
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !49
  store i32 %.sroa.6.0.extract.trunc, ptr %i.du, align 4, !tbaa !50
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !115, !nonnull !41, !align !116 ; 5 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = add i64 %i.ff, 120                      ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !63
  %i.fj = icmp ult i64 %i.fg, %i.fi
  br i1 %i.fj, label %bb.v, label %bb.w, !prof !45

bb.v:                                             ; preds = %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit49
  %i.fk = inttoptr i64 %i.fg to ptr
  store ptr %i.fk, ptr %i.fd, align 8, !tbaa !62
  br label %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit56"

bb.w:                                             ; preds = %_ZNSt6vectorIPN4mlir13ReductionNodeESaIS2_EE9push_backEOS2_.exit49
  %i.fl = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, i64 noundef 120, i64 noundef 120, i8 0)
  %.pre.i54 = load ptr, ptr %i.dv, align 8, !tbaa !115
  br label %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit56"

"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit56": ; preds = %bb.v, %bb.w
  %i.fm = phi ptr [ %i.fd, %bb.v ], [ %.pre.i54, %bb.w ]
  %.0.i.i.i55 = phi ptr [ %i.fe, %bb.v ], [ %i.fl, %bb.w ] ; 3 uses
  call void @_ZN4mlir13ReductionNodeC1EPS0_RKSt6vectorISt4pairIiiESaIS4_EERN4llvm24SpecificBumpPtrAllocatorIS0_EE(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i55, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(80) %i.fm) #14
  %i.fn = load ptr, ptr %i.c, align 8, !tbaa !47  ; 4 uses
  %i.fo = load ptr, ptr %i.eh, align 8, !tbaa !117
  %.not.i.i57 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i57, label %bb.y, label %bb.x

bb.x:                                             ; preds = %"_ZZN4mlir13ReductionNode19generateNewVariantsEvENK3$_1clERKSt6vectorISt4pairIiiESaIS4_EE.exit56"
  store ptr %.0.i.i.i55, ptr %i.fn, align 8, !tbaa !64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
end_hunk_0
