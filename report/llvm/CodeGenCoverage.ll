Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenCoverage?download=true
inline.NumInlined: 226
inline.NumDeleted: 171
begin_hunk_0_@_ZN4llvm15CodeGenCoverage10setCoveredEm:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  %.not.i.i.i.i.i = icmp ugt i32 %i.t, %i.aa
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull %i.ab, i64 noundef %i.u, i64 noundef 8) #17
  %.pre.i.i.i = load i32, ptr %i.v, align 8, !tbaa !12 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  %.pre4.pre.i.pre = load i32, ptr %i.a, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pre4.pre.i = phi i32 [ %i.e, %bb.e ], [ %.pre4.pre.i.pre, %bb.f ]
  %.pre-phi.i.i = phi i64 [ %.pre-phi.i, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.ac = phi i32 [ %i.r, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.pre-phi.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !22
  %i.af = trunc nuw nsw i64 %i.y to i32
  %i.ag = add i32 %i.ac, %i.af
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, %bb.d
  %.pre4.i = phi i32 [ %.pre4.pre.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ], [ %i.e, %bb.d ]
  %.sink.i.i = phi i32 [ %i.ag, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.v, align 8, !tbaa !12
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i:    ; preds = %.sink.split.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.ah = phi i32 [ %i.r, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.ai = phi i32 [ %i.e, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.pre4.i, %.sink.split.i.i ]
  %i.aj = and i32 %i.ai, 63                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  %.pre4 = load ptr, ptr %0, align 8, !tbaa !11   ; 3 uses
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVector6resizeEjb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nsw i64 -1, %i.ak
  %i.am = xor i64 %i.al, -1
  %i.an = zext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.pre4, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !22
  %i.ar = and i64 %i.aq, %i.am
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !22
  br label %_ZN4llvm9BitVector6resizeEjb.exit

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %._ZN4llvm9BitVector6resizeEjb.exit_crit_edge, %bb.g, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i
  %i.as = phi ptr [ %.pre, %._ZN4llvm9BitVector6resizeEjb.exit_crit_edge ], [ %.pre4, %bb.g ], [ %.pre4, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i ]
  %i.at = lshr i64 %1, 6
  %i.au = and i64 %i.at, 67108863
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = and i64 %1, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !22
  %i.az = or i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.av, align 8, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm15CodeGenCoverage9isCoveredEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = zext i32 %i.b to i64
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %1, 63
  %i.e = shl nuw i64 1, %i.d
  %i.f = lshr i64 %1, 6
  %i.g = load ptr, ptr %0, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.j = and i64 %i.i, %i.e
  %i.k = icmp ne i64 %i.j, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.k, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @_ZNK4llvm15CodeGenCoverage7coveredEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::iterator_range") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20, !noalias !31 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNK4llvm9BitVector8set_bitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  %i.e = lshr i32 %i.d, 6                         ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !11, !noalias !31 ; 2 uses
  %i.g = and i32 %i.d, 63
  %i.h = xor i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %i.k = zext nneg i32 %i.e to i64
  %i.l = add nuw nsw i32 %i.e, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.l to i64
  %i.m = load i64, ptr %i.f, align 8, !tbaa !22, !noalias !31
  %i.n = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.o = select i1 %i.n, i64 %i.j, i64 -1
  %.230.peel.i.i.i.i.i = and i64 %i.m, %i.o       ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %_ZNK4llvm9BitVector8set_bitsEv.exit, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.c, %bb.e
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.e ], [ 1, %bb.c ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22, !noalias !31
  %i.r = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.k
  %i.s = select i1 %i.r, i64 %i.j, i64 -1
  %.230.i.i.i.i.i = and i64 %i.s, %i.q            ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.e, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.t = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %bb.d

bb.d:                                             ; preds = %.loopexit48.i.i.i.i.i, %bb.b
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.t, %.loopexit48.i.i.i.i.i ], [ 0, %bb.b ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i, %bb.b ]
  %i.u = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.v
  br label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.e:                                             ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK4llvm9BitVector8set_bitsEv.exit, label %.peel.next.i.i.i.i.i, !llvm.loop !0

_ZNK4llvm9BitVector8set_bitsEv.exit:              ; preds = %bb.e, %bb.a, %bb.c, %bb.d
  %.4.i.i.i.i.i = phi i32 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %bb.c ], [ -1, %bb.e ]
  store ptr %1, ptr %0, align 8, !tbaa !33, !alias.scope !34
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.4.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !35, !alias.scope !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.x, align 8, !tbaa !33, !alias.scope !34
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !35, !alias.scope !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm15CodeGenCoverage5parseERNS_12MemoryBufferENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #1 align 2 {
bb.a:
  %.fr57 = freeze i64 %3                          ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 3 uses
  %.not40 = icmp eq ptr %i.b, %i.d
  br i1 %.not40, label %.critedge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %.fr57, 0
  br i1 %i.e, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.split.us50
  %i.f = phi ptr [ %i.s, %.split.us50 ], [ %i.d, %.preheader.lr.ph ] ; 5 uses
  %.02241.us = phi ptr [ %.us-phi.us, %.split.us50 ], [ %i.b, %.preheader.lr.ph ] ; 3 uses
  %strlen72 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.02241.us)
  %scevgep73 = getelementptr i8, ptr %.02241.us, i64 1
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %strlen72 ; 3 uses
  %.not102.not = icmp ne ptr %scevgep74, %i.f     ; 3 uses
  br i1 %.not102.not, label %_ZN4llvm9StringRefC2EPKc.exit.us, label %.critedge

_ZN4llvm9StringRefC2EPKc.exit.us:                 ; preds = %.preheader.us
  %char0 = load i8, ptr %.02241.us, align 1
  %i.g = icmp eq i8 %char0, 0
  br i1 %i.g, label %_ZN4llvmeqENS_9StringRefES0_.exit.split.us45, label %_ZN4llvmeqENS_9StringRefES0_.exit.split.us.us

_ZN4llvmeqENS_9StringRefES0_.exit.split.us45:     ; preds = %_ZN4llvm9StringRefC2EPKc.exit.us, %bb.c
  %.224.us46 = phi ptr [ %i.m, %bb.c ], [ %scevgep74, %_ZN4llvm9StringRefC2EPKc.exit.us ] ; 4 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.224.us46 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp slt i64 %i.k, 8
  br i1 %i.l, label %.critedge.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.split.us45
  %.0.copyload.i.i.us48 = load i64, ptr %.224.us46, align 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.224.us46, i64 8 ; 2 uses
  %.not103 = icmp eq i64 %.0.copyload.i.i.us48, -1
  br i1 %.not103, label %..split.us50.loopexit_crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15CodeGenCoverage10setCoveredEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %.0.copyload.i.i.us48)
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.split.us45

..split.us50.loopexit_crit_edge:                  ; preds = %bb.b
  %.pre75.pre = load ptr, ptr %i.c, align 8, !tbaa !39
  br label %.split.us50

_ZN4llvmeqENS_9StringRefES0_.exit.split.us.us:    ; preds = %_ZN4llvm9StringRefC2EPKc.exit.us
  %i.n = ptrtoint ptr %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %_ZN4llvmeqENS_9StringRefES0_.exit.split.us.us
  %.224.us.us = phi ptr [ %scevgep74, %_ZN4llvmeqENS_9StringRefES0_.exit.split.us.us ], [ %i.r, %bb.f ] ; 5 uses
  %.not33.us.us = icmp eq ptr %.224.us.us, %i.f
  br i1 %.not33.us.us, label %.split.us50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %.224.us.us to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp slt i64 %i.p, 8
  br i1 %i.q, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i.us.us = load i64, ptr %.224.us.us, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.224.us.us, i64 8 ; 2 uses
  %.not59 = icmp eq i64 %.0.copyload.i.i.us.us, -1
  br i1 %.not59, label %.split.us50, label %bb.d

.split.us50:                                      ; preds = %bb.d, %bb.f, %..split.us50.loopexit_crit_edge
  %i.s = phi ptr [ %.pre75.pre, %..split.us50.loopexit_crit_edge ], [ %i.f, %bb.f ], [ %i.f, %bb.d ] ; 2 uses
  %.us-phi.us = phi ptr [ %i.m, %..split.us50.loopexit_crit_edge ], [ %.224.us.us, %bb.d ], [ %i.r, %bb.f ] ; 2 uses
  %.not.us = icmp eq ptr %.us-phi.us, %i.s
  br i1 %.not.us, label %.critedge, label %.preheader.us, !llvm.loop !36

.preheader:                                       ; preds = %.preheader.lr.ph, %.split.us
  %i.t = phi ptr [ %i.ah, %.split.us ], [ %i.d, %.preheader.lr.ph ] ; 5 uses
  %.02241 = phi ptr [ %.us-phi, %.split.us ], [ %i.b, %.preheader.lr.ph ] ; 4 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.02241)
  %scevgep = getelementptr i8, ptr %.02241, i64 1
  %scevgep71 = getelementptr i8, ptr %scevgep, i64 %strlen ; 3 uses
  %.not99.not = icmp ne ptr %scevgep71, %i.t      ; 3 uses
  br i1 %.not99.not, label %_ZN4llvm9StringRefC2EPKc.exit, label %.critedge

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %.preheader
  %i.u = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.02241) #17
  %i.v = icmp eq i64 %.fr57, %i.u
  br i1 %i.v, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.split.us

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %bcmp.i = tail call i32 @bcmp(ptr %2, ptr nonnull %.02241, i64 %.fr57)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %.not100 = icmp eq i32 %bcmp.i.fr, 0
  br i1 %.not100, label %_ZN4llvmeqENS_9StringRefES0_.exit.split, label %_ZN4llvmeqENS_9StringRefES0_.exit.split.us

_ZN4llvmeqENS_9StringRefES0_.exit.split.us:       ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.w = ptrtoint ptr %i.t to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %_ZN4llvmeqENS_9StringRefES0_.exit.split.us
  %.224.us = phi ptr [ %scevgep71, %_ZN4llvmeqENS_9StringRefES0_.exit.split.us ], [ %i.aa, %bb.i ] ; 5 uses
  %.not33.us = icmp eq ptr %.224.us, %i.t
  br i1 %.not33.us, label %.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %.224.us to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp slt i64 %i.y, 8
  br i1 %i.z, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.0.copyload.i.i.us = load i64, ptr %.224.us, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.224.us, i64 8 ; 2 uses
  %.not58 = icmp eq i64 %.0.copyload.i.i.us, -1
  br i1 %.not58, label %.split.us, label %bb.g

_ZN4llvmeqENS_9StringRefES0_.exit.split:          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.k
  %.224 = phi ptr [ %i.ag, %bb.k ], [ %scevgep71, %_ZN4llvmeqENS_9StringRefES0_.exit ] ; 4 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %.224 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp slt i64 %i.ae, 8
  br i1 %i.af, label %.critedge.loopexit125, label %bb.j

bb.j:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.split
  %.0.copyload.i.i = load i64, ptr %.224, align 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.224, i64 8 ; 2 uses
  %.not101 = icmp eq i64 %.0.copyload.i.i, -1
  br i1 %.not101, label %..split.us.loopexit65_crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm15CodeGenCoverage10setCoveredEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %.0.copyload.i.i)
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.split

..split.us.loopexit65_crit_edge:                  ; preds = %bb.j
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !39
  br label %.split.us

.split.us:                                        ; preds = %bb.g, %bb.i, %..split.us.loopexit65_crit_edge
  %i.ah = phi ptr [ %.pre.pre, %..split.us.loopexit65_crit_edge ], [ %i.t, %bb.i ], [ %i.t, %bb.g ] ; 2 uses
  %.us-phi = phi ptr [ %i.ag, %..split.us.loopexit65_crit_edge ], [ %.224.us, %bb.g ], [ %i.aa, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %.us-phi, %i.ah
  br i1 %.not, label %.critedge, label %.preheader, !llvm.loop !36

.critedge.loopexit:                               ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.split.us45
  %.not33.us47 = icmp eq ptr %.224.us46, %i.h
  br label %.critedge

.critedge.loopexit125:                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.split
  %.not33 = icmp eq ptr %.224, %i.ab
  br label %.critedge

.critedge:                                        ; preds = %.split.us, %.preheader, %bb.h, %.split.us50, %.preheader.us, %bb.e, %.critedge.loopexit125, %.critedge.loopexit, %bb.a
  %.not38 = phi i1 [ false, %bb.e ], [ false, %bb.h ], [ %.not33.us47, %.critedge.loopexit ], [ %.not102.not, %.split.us50 ], [ true, %bb.a ], [ %.not33, %.critedge.loopexit125 ], [ %.not102.not, %.preheader.us ], [ %.not99.not, %.preheader ], [ %.not99.not, %.split.us ]
  ret i1 %.not38
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm15CodeGenCoverage4emitENS_9StringRefES1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.std::error_code", align 8   ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(44) @_ZZNK4llvm15CodeGenCoverage4emitENS_9StringRefES1_E11OutputMutex) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #18
  unreachable

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.i = tail call noundef i32 @_ZN4llvm3sys7Process12getProcessIdEv() #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !52, !alias.scope !50
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !54, !alias.scope !50
  store i8 0, ptr %i.j, align 8, !tbaa !55, !alias.scope !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !50
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !60, !noalias !50
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.m, align 8, !tbaa !61, !noalias !50
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.n, align 4, !tbaa !62, !noalias !50
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false), !noalias !50
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !64, !noalias !50
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %6, ptr %i.p, align 8, !tbaa !66, !noalias !50
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #17
  %i.q = sext i32 %i.i to i64
  %i.r = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %5, i64 noundef %i.q) #17 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store ptr %1, ptr %8, align 8, !alias.scope !67
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %2, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !55, !alias.scope !67
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %6, ptr %i.s, align 8, !alias.scope !67
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.t, align 8, !tbaa !70, !alias.scope !67
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 4, ptr %i.u, align 1, !tbaa !71, !alias.scope !67
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i32 0, ptr %9, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #19
  store ptr %i.w, ptr %i.v, align 8, !tbaa !75
  %i.x = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #20, !noalias !76 ; 7 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !77, !noalias !76
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !54, !noalias !76
  call void @_ZN4llvm14ToolOutputFileC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(152) %i.x, ptr %i.y, i64 %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 4) #17, !noalias !76
  %i.ab = load i32, ptr %9, align 8, !tbaa !74
  %.not42 = icmp eq i32 %i.ab, 0                  ; 2 uses
  br i1 %.not42, label %bb.e, label %bb.o

bb.e:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 -1, ptr %i.b, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 144 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !88 ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ugt i64 %4, %i.ak
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef %3, i64 noundef %4) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %3, i64 %4, i1 false)
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %4
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !88
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.f, %bb.g, %bb.h
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 0 uses
  %i.ar = load i32, ptr %i.e, align 8, !tbaa !20, !noalias !89 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  %i.au = lshr i32 %i.at, 6                       ; 3 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !11, !noalias !89 ; 2 uses
  %i.aw = and i32 %i.at, 63
  %i.ax = xor i32 %i.aw, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 -1, %i.ay                      ; 2 uses
  %i.ba = zext nneg i32 %i.au to i64
  %i.bb = add nuw nsw i32 %i.au, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.bb to i64
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !22, !noalias !89
  %i.bd = icmp eq i32 %i.au, 0                    ; 2 uses
  %i.be = select i1 %i.bd, i64 %i.az, i64 -1
  %.230.peel.i.i.i.i.i = and i64 %i.bc, %i.be     ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.j, label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.bd, label %._crit_edge, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.j, %bb.k
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.k ], [ 1, %bb.j ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i.i.i.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !22, !noalias !89
  %i.bh = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.ba
  %i.bi = select i1 %i.bh, i64 %i.az, i64 -1
  %.230.i.i.i.i.i = and i64 %i.bi, %i.bg          ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.k, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.bj = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.k:                                             ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge, label %.peel.next.i.i.i.i.i, !llvm.loop !0

_ZNK4llvm9BitVector8set_bitsEv.exit:              ; preds = %bb.i, %.loopexit48.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.bj, %.loopexit48.i.i.i.i.i ], [ 0, %bb.i ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i, %bb.i ]
  %i.bk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true)
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.bl ; 2 uses
  %.not47 = icmp eq i32 %i.bm, -1
  br i1 %.not47, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.m, %bb.l, %.lr.ph, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit, %bb.n, %bb.j, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, %_ZNK4llvm9BitVector8set_bitsEv.exit
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef nonnull %i.b, i64 noundef 8) #17 ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i8 1, ptr %i.bp, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.o

.lr.ph:                                           ; preds = %_ZNK4llvm9BitVector8set_bitsEv.exit, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit
  %.sroa.4.048 = phi i32 [ %i.cy, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ], [ %i.bm, %_ZNK4llvm9BitVector8set_bitsEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.bq = zext i32 %.sroa.4.048 to i64
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !22
  %i.br = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.bs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull %i.c, i64 noundef 8) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.bt = add nuw i32 %.sroa.4.048, 1             ; 3 uses
  %i.bu = load i32, ptr %i.e, align 8, !tbaa !20  ; 2 uses
  %i.bv = icmp eq i32 %i.bt, %i.bu
  br i1 %i.bv, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bw = lshr i32 %i.bt, 6                       ; 4 uses
  %i.bx = add i32 %i.bu, -1                       ; 2 uses
  %i.by = lshr i32 %i.bx, 6                       ; 4 uses
end_hunk_0
