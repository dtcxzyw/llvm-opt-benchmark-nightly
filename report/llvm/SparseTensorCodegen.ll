Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparseTensorCodegen?download=true
inline.NumInlined: 6968
inline.NumDeleted: 3478
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZL29getReassociationForFlatteningN4mlir10ShapedTypeEj:bb.a
_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit14: ; preds = %bb.e, %bb.f
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next22 to i32
  %exitcond24.not = icmp eq i32 %lftr.wideiv, %i.n
  br i1 %exitcond24.not, label %._crit_edge19, label %.lr.ph18, !llvm.loop !719

._crit_edge19:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit14, %._crit_edge
  ret void
}

declare ptr @_ZN4mlir6memref6CastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir6memref15CollapseShapeOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEN4llvm8ArrayRefINS6_11SmallVectorIlLj2EEEEENS7_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.362") align 8) local_unnamed_addr #3

declare i64 @_ZN4mlir13sparse_tensor10AssembleOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir14BaseMemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE6assignEmRKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = zext i32 %i.b to i64
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13growAndAssignEmRKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.g) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.h, label %_ZSt6fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIlLj2EEaSERKS1_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZN4llvm11SmallVectorIlLj2EEaSERKS1_.exit.i.i.i.i ] ; 9 uses
  %i.l = icmp eq ptr %.06.i.i.i.i, %2
  br i1 %i.l, label %_ZN4llvm11SmallVectorIlLj2EEaSERKS1_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 8, !tbaa !47   ; 6 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47   ; 4 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i32 %i.p, %i.m
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not29.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not29.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8, !tbaa !62     ; 2 uses
  %i.s = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %.not31.i.i.i.i.i.i = icmp eq i32 %i.m, 1
  br i1 %.not31.i.i.i.i.i.i, label %bb.i, label %bb.h, !prof !110

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.r, i64 %.idx.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !45
  store i64 %i.t, ptr %i.s, align 8, !tbaa !45
  br label %.sink.split.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48
  %i.w = icmp ult i32 %i.v, %i.m
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.o, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i.i, ptr noundef nonnull %i.x, i64 noundef %i.n, i64 noundef 8) #18
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not28.i.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %2, align 8, !tbaa !62     ; 2 uses
  %i.z = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %.not33.i.i.i.i.i.i = icmp eq i32 %i.p, 1
  br i1 %.not33.i.i.i.i.i.i, label %bb.o, label %bb.n, !prof !110

bb.n:                                             ; preds = %bb.m
  %.idx32.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %i.y, i64 %.idx32.i.i.i.i.i.i, i1 false)
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !45
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !45
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i:   ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.022.i.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.q, %bb.n ], [ 1, %bb.o ] ; 4 uses
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !47
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp samesign eq i64 %.022.i.i.i.i.i.i, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !62
  %.idx35.i.i.i.i.i.i = shl nuw nsw i64 %.022.i.i.i.i.i.i, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx35.i.i.i.i.i.i
  %i.af = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.022.i.i.i.i.i.i
  %i.ah = sub nsw i64 %i.ac, %.022.i.i.i.i.i.i
  %gepdiff.i.i.i.i.i.i = shl nsw i64 %i.ah, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 8 %i.ae, i64 %gepdiff.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.p, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i, %bb.i, %bb.h, %bb.f
  store i32 %i.m, ptr %i.o, align 8, !tbaa !47
  br label %_ZN4llvm11SmallVectorIlLj2EEaSERKS1_.exit.i.i.i.i

_ZN4llvm11SmallVectorIlLj2EEaSERKS1_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit.loopexit, label %bb.d, !llvm.loop !720

_ZSt6fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit.loopexit: ; preds = %_ZN4llvm11SmallVectorIlLj2EEaSERKS1_.exit.i.i.i.i
  %.pre = load i32, ptr %i.e, align 8, !tbaa !47
  %.pre20 = zext i32 %.pre to i64
  br label %_ZSt6fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit

_ZSt6fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit.loopexit, %bb.c
  %.pre-phi = phi i64 [ %.pre20, %_ZSt6fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit.loopexit ], [ %i.g, %bb.c ] ; 5 uses
  %i.aj = icmp ugt i64 %1, %.pre-phi
  br i1 %i.aj, label %.lr.ph.i.i.i, label %bb.s

.lr.ph.i.i.i:                                     ; preds = %_ZSt6fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit
  %i.ak = sub nuw nsw i64 %1, %.pre-phi
  %i.al = load ptr, ptr %0, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.pre-phi
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.ba, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i ] ; 8 uses
  %.068.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %i.az, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 3 uses
  store ptr %i.ao, ptr %.09.i.i.i, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 12
  store i32 2, ptr %i.aq, align 4, !tbaa !48
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !47 ; 5 uses
  %.not.i.i.i.i.i.i4 = icmp eq i32 %i.ar, 0
  %i.as = icmp eq ptr %.09.i.i.i, %2
  %or.cond.i.i.i.i.i = or i1 %i.as, %.not.i.i.i.i.i.i4
  br i1 %or.cond.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = icmp ugt i32 %i.ar, 2
  br i1 %i.at, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i7, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i7:  ; preds = %bb.r
  %i.au = zext i32 %i.ar to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i, ptr noundef nonnull %i.ao, i64 noundef %i.au, i64 noundef 8) #18
  %.pre.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i.i8 = icmp eq i32 %.pre.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i8, label %.sink.split.i.i.i.i.i.i6, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i7
  %.pre.i.i.i.i = load ptr, ptr %.09.i.i.i, align 8, !tbaa !62
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i, %bb.r
  %i.av = phi ptr [ %.pre.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.ao, %bb.r ]
  %i.aw = phi i32 [ %.pre.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.ar, %bb.r ]
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load ptr, ptr %2, align 8, !tbaa !62
  %gepdiff.i.i.i.i.i.i5 = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 8 %i.ay, i64 %gepdiff.i.i.i.i.i.i5, i1 false)
  br label %.sink.split.i.i.i.i.i.i6

.sink.split.i.i.i.i.i.i6:                         ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i7
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !47
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i6, %bb.q
  %i.az = add i64 %.068.i.i.i, -1                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32
  %.not.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i, label %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit, label %bb.q, !llvm.loop !3

bb.s:                                             ; preds = %_ZSt6fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit
  %i.bb = icmp samesign ult i64 %1, %.pre-phi
  br i1 %i.bb, label %bb.t, label %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %1
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %.pre-phi
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i
  %.05.i = phi ptr [ %i.bf, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i ], [ %i.be, %bb.t ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.05.i, i64 -32 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.05.i, i64 -16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  tail call void @free(ptr noundef %i.bg) #18
  br label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i:          ; preds = %bb.u, %.lr.ph.i
  %.not.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not.i, label %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit, label %.lr.ph.i, !llvm.loop !2

_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit: ; preds = %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i, %bb.s
  %i.bj = trunc nuw i64 %1 to i32
  store i32 %i.bj, ptr %i.e, align 8, !tbaa !47
  br label %bb.v

bb.v:                                             ; preds = %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13growAndAssignEmRKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18 ; 2 uses
  %.not7.i.i.i = icmp eq i64 %1, 0
  br i1 %.not7.i.i.i, label %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.q, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i ] ; 8 uses
  %.068.i.i.i = phi i64 [ %1, %.lr.ph.i.i.i ], [ %i.p, %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 3 uses
  store ptr %i.e, ptr %.09.i.i.i, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 12
  store i32 2, ptr %i.g, align 4, !tbaa !48
  %i.h = load i32, ptr %i.d, align 8, !tbaa !47   ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  %i.i = icmp eq ptr %.09.i.i.i, %2
  %or.cond.i.i.i.i.i = or i1 %i.i, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i32 %i.h, 2
  br i1 %i.j, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i:   ; preds = %bb.c
  %i.k = zext i32 %i.h to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i, ptr noundef nonnull %i.e, i64 noundef %i.k, i64 noundef 8) #18
  %.pre.i.i.i.i.i = load i32, ptr %i.d, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.09.i.i.i, align 8, !tbaa !62
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i, %bb.c
  %i.l = phi ptr [ %.pre.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.e, %bb.c ]
  %i.m = phi i32 [ %.pre.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.h, %bb.c ]
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %2, align 8, !tbaa !62
  %gepdiff.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 8 %i.o, i64 %gepdiff.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i.i.i.i
  store i32 %i.h, ptr %i.f, align 8, !tbaa !47
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.b
  %i.p = add i64 %.068.i.i.i, -1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit, label %bb.b, !llvm.loop !3

_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit: ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIlLj2EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i, %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %.not4.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit
  %i.u = zext i32 %i.t to i64
  %.idx = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i
  %.05.i = phi ptr [ %i.w, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i ], [ %i.v, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i, i64 -32 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.05.i, i64 -16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef %i.x) #18
  br label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i:          ; preds = %bb.d, %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit, label %.lr.ph.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit: ; preds = %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !62
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit, %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit
  %i.aa = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit ], [ %i.r, %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIlLj2EEEmS2_ET_S4_T0_RKT1_.exit ] ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !45
  %i.ac = icmp eq ptr %i.aa, %i.b
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE21takeAllocationForGrowEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit
  call void @free(ptr noundef %i.aa) #18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE21takeAllocationForGrowEPS2_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE21takeAllocationForGrowEPS2_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE13destroy_rangeEPS2_S4_.exit, %bb.e
  store ptr %i.c, ptr %0, align 8, !tbaa !62
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !48
  %i.af = trunc i64 %1 to i32
  store i32 %i.af, ptr %i.s, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !62
  %i.g = load i32, ptr %i.a, align 8, !tbaa !47
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !47
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !47
  ret void
}

declare { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare ptr @_ZN4mlir5arith15ConstantIndexOp6createERNS_9OpBuilderENS_8LocationEl(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr14getAoSCOOStartEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr14translateShapeEN4llvm8ArrayRefIlEENS0_21CrdTransDirectionKindE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.107") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, i32 noundef) local_unnamed_addr #3

declare void @_ZN4mlir13sparse_tensor21SparseTensorSpecifier17setSpecifierFieldERNS_9OpBuilderENS_8LocationENS_5ValueENS0_20StorageSpecifierKindESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i32 noundef, ptr noundef byval(%"class.std::optional.423") align 8) local_unnamed_addr #3

declare i64 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr10getLvlTypeEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr15getBatchLvlRankEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_125SparseTensorLoadConverter15matchAndRewriteEN4mlir13sparse_tensor6LoadOpENS2_20LoadOpGenericAdaptorIN4llvm8ArrayRefINS1_10ValueRangeEEEEERNS1_25ConversionPatternRewriterE:bb.a
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8, !noalias !804
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ex, align 8, !noalias !804
  %.not5.i.i.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj6EEEvEEv.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i
  %i.ey = phi ptr [ %i.ew, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.ex, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ %.pre28.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.ez = phi ptr [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.thread.i ], [ %i.es, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.pre-phi.i.i3.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.fb = phi i64 [ %i.ff, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fa, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.fc = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.fb) #18
  %i.fd = ptrtoint ptr %i.fc to i64
  store i64 %i.fd, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !90
  %i.fe = load i64, ptr %i.ey, align 8, !tbaa !121, !noalias !804
  %i.ff = add nsw i64 %i.fe, 1                    ; 3 uses
  store i64 %i.ff, ptr %i.ey, align 8, !tbaa !121, !noalias !804
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ff, %.sroa.2.0.copyload.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre27.i.i.i = load i32, ptr %i.et, align 8, !tbaa !47, !alias.scope !804
  br label %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj6EEEvEEv.exit

_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj6EEEvEEv.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i
  %i.fh = phi i32 [ %.pre27.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_10ValueRangeENS_12PointerUnionIJPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SO_T0_.exit.loopexit.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !804
  %i.fi = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.fj = add i32 %i.fh, %i.fi                    ; 6 uses
  store i32 %i.fj, ptr %i.et, align 8, !tbaa !47, !alias.scope !804
  %i.fk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.fk, ptr %20, align 8, !tbaa !62
  %i.fl = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i32 0, ptr %i.fl, align 8, !tbaa !47
  %i.fm = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 1, ptr %i.fm, align 4, !tbaa !48
  %i.fn = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  store ptr %i.fn, ptr %i.fk, align 8, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  store i32 0, ptr %i.fo, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 28
  store i32 6, ptr %i.fp, align 4, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj6EEEvEEv.exit
  %i.fq = icmp ugt i32 %i.fj, 6
  br i1 %i.fq, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.fr = zext i32 %i.fj to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.fk, ptr noundef nonnull %i.fn, i64 noundef %i.fr, i64 noundef 8) #18
  %.pre.i.i.i.i.i.i.i.i.i = load i32, ptr %i.et, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.fk, align 8, !tbaa !62
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i, %bb.j
  %i.fs = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i ], [ %i.fn, %bb.j ]
  %i.ft = phi i32 [ %.pre.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i ], [ %i.fj, %bb.j ]
  %i.fu = zext i32 %i.ft to i64
  %i.fv = load ptr, ptr %21, align 8, !tbaa !62
  %gepdiff.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fu, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fs, ptr align 8 %i.fv, i64 %gepdiff.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i
  store i32 %i.fj, ptr %i.fo, align 8, !tbaa !47
  %.pre8.i.i.i.pre = load i32, ptr %i.fl, align 8, !tbaa !47
  %i.fw = add i32 %.pre8.i.i.i.pre, 1
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj6EEEvEEv.exit
  %.pre8.i.i.i = phi i32 [ %i.fw, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ 1, %_ZNK4llvm6detail27indexed_accessor_range_baseIN4mlir10ValueRangeENS_12PointerUnionIJPKNS2_5ValueEPNS2_9OpOperandEPNS2_6detail12OpResultImplEPKNS_8RepeatedIS5_EEEEES5_S5_S5_EcvT_INS_11SmallVectorIS5_Lj6EEEvEEv.exit ]
  store i32 %.pre8.i.i.i, ptr %i.fl, align 8, !tbaa !47
  call void @_ZN4mlir25ConversionPatternRewriter21replaceOpWithMultipleEPNS_9OperationEON4llvm11SmallVectorINS4_INS_5ValueELj6EEELj1EEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(80) %20) #18
  %i.fx = load ptr, ptr %20, align 8, !tbaa !62   ; 3 uses
  %i.fy = load i32, ptr %i.fl, align 8, !tbaa !47 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.fz = zext i32 %i.fy to i64
  %.idx.i = shl nuw nsw i64 %i.fz, 6
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.gb, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i ], [ %i.ga, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !62 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.gc) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i: ; preds = %bb.k, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.fx, %i.gb
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %20, align 8, !tbaa !62
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.gf = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.fx, %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fk
  br i1 %i.gg, label %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i
  call void @free(ptr noundef %i.gf) #18
  br label %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.l
  %i.gh = load ptr, ptr %21, align 8, !tbaa !62   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit
  call void @free(ptr noundef %i.gh) #18
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret i8 1
}

declare void @_ZN4mlir13sparse_tensor6detail24LoadOpGenericAdaptorBaseC2ENS0_6LoadOpE(ptr noundef nonnull align 8 dereferenceable(48), ptr) unnamed_addr #3

declare noundef zeroext i1 @_ZN4mlir13sparse_tensor6LoadOp13getHasInsertsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZL9createForRN4mlir9OpBuilderENS_8LocationENS_5ValueEN4llvm15MutableArrayRefIS3_EES3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, i64 %4, ptr %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.mlir::ComplexType", align 8 ; 5 uses
  %7 = alloca [2 x %"class.mlir::Attribute"], align 8 ; 5 uses
  %8 = alloca %"class.mlir::ValueRange", align 8  ; 2 uses
  %9 = alloca %"class.llvm::function_ref.1168", align 8 ; 2 uses
  %i.a = tail call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18 ; 6 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11ComplexTypeEvE2idE ; 2 uses
  %spec.select.i.i.i = select i1 %i.d, ptr %i.a, ptr null
  store ptr %spec.select.i.i.i, ptr %6, align 8
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @_ZNK4mlir11ComplexType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %i.f = call { ptr, ptr } @_ZN4mlir7Builder11getZeroAttrENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.e) #18
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %i.g, ptr %7, align 8, !tbaa !167
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !167
  %i.i = call ptr @_ZN4mlir7Builder12getArrayAttrEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull %7, i64 2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.j = call ptr @_ZN4mlir7complex10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %i.a, ptr %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN4mlir13sparse_tensor12constantZeroERNS_9OpBuilderENS_8LocationENS_4TypeE.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.k = tail call { ptr, ptr } @_ZN4mlir7Builder11getZeroAttrENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull %i.a) #18 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  %i.n = tail call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %i.a, ptr %i.l, ptr %i.m) #18
  br label %_ZN4mlir13sparse_tensor12constantZeroERNS_9OpBuilderENS_8LocationENS_4TypeE.exit

_ZN4mlir13sparse_tensor12constantZeroERNS_9OpBuilderENS_8LocationENS_4TypeE.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %.sroa.019.1.i = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  br label %bb.e

bb.e:                                             ; preds = %_ZN4mlir13sparse_tensor12constantZeroERNS_9OpBuilderENS_8LocationENS_4TypeE.exit, %bb.a
  %.sroa.0.0 = phi ptr [ %5, %bb.a ], [ %.sroa.019.1.i, %_ZN4mlir13sparse_tensor12constantZeroERNS_9OpBuilderENS_8LocationENS_4TypeE.exit ]
  %i.o = call ptr @_ZN4mlir13sparse_tensor11constantOneERNS_9OpBuilderENS_8LocationENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.a)
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %3, i64 %4) #18
  store ptr null, ptr %9, align 8, !tbaa !807
  %i.p = call ptr @_ZN4mlir3scf5ForOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_NS_10ValueRangeEN4llvm12function_refIFvS3_S4_S5_S6_EEEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nonnull %.sroa.0.0, ptr %2, ptr %i.o, ptr noundef nonnull byval(%"class.mlir::ValueRange") align 8 %8, ptr noundef nonnull byval(%"class.llvm::function_ref.1168") align 8 %9, i1 noundef zeroext false) #18 ; 9 uses
  %i.q = and i64 %4, 4294967295
  %.not30 = icmp eq i64 %i.q, 0
  br i1 %.not30, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !161
  %.pre32 = zext i32 %.pre to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !161
  %i.u = zext i32 %i.t to i64                     ; 5 uses
  %wide.trip.count = and i64 %4, 4294967295
  %xtraiter = and i64 %4, 1
  %i.v = icmp eq i64 %wide.trip.count, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %4, 4294967294
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod34)
  %i.w = load i32, ptr %i.r, align 4              ; 3 uses
  %i.x = and i32 %i.w, 8388607
  %i.y = icmp ne i32 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = lshr i32 %i.w, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.epil = and i32 %i.z, 1
  %i.aa = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.epil to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.aa
  %i.ac = lshr i32 %i.w, 21
  %i.ad = and i32 %i.ac, 2040
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.u
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !162
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !165
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.epil.init
  %.sroa.0.0.copyload.i.epil = load ptr, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  store ptr %.sroa.0.0.copyload.i.epil, ptr %i.an, align 8, !tbaa !90
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre32, %.._crit_edge_crit_edge ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.ap = load i32, ptr %i.ao, align 4            ; 3 uses
  %i.aq = and i32 %i.ap, 8388607
  %i.ar = icmp ne i32 %i.aq, 0
  call void @llvm.assume(i1 %i.ar)
  %i.as = lshr i32 %i.ap, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.as, 1
  %i.at = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.at
  %i.av = lshr i32 %i.ap, 21
  %i.aw = and i32 %i.av, 2040
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %.pre-phi
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !162 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !162
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !168
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bg, align 8
  ret ptr %i.p

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.bh = load i32, ptr %i.r, align 4             ; 3 uses
  %i.bi = and i32 %i.bh, 8388607
  %i.bj = icmp ne i32 %i.bi, 0
  call void @llvm.assume(i1 %i.bj)
  %i.bk = lshr i32 %i.bh, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.bk, 1
  %i.bl = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bl
  %i.bn = lshr i32 %i.bh, 21
  %i.bo = and i32 %i.bn, 2040
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !162
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !165
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %.sroa.0.0.copyload.i, ptr %i.by, align 8, !tbaa !90
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.r, align 4             ; 3 uses
  %i.ca = and i32 %i.bz, 8388607
  %i.cb = icmp ne i32 %i.ca, 0
  call void @llvm.assume(i1 %i.cb)
  %i.cc = lshr i32 %i.bz, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.1 = and i32 %i.cc, 1
  %i.cd = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.1 to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.cd
  %i.cf = lshr i32 %i.bz, 21
  %i.cg = and i32 %i.cf, 2040
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !162
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !165
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next
  %.sroa.0.0.copyload.i.1 = load ptr, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store ptr %.sroa.0.0.copyload.i.1, ptr %i.cq, align 8, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !805
}

declare ptr @_ZN4mlir5arith6CmpIOp6createERNS_9OpBuilderENS_8LocationENS0_13CmpIPredicateENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64 noundef, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir3scf4IfOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL8genStoreRN4mlir9OpBuilderENS_8LocationENS_5ValueES3_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %6 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %i.a = tail call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %i.b = tail call ptr @_ZN4mlir13sparse_tensor7genCastERNS_9OpBuilderENS_8LocationENS_5ValueENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %4, ptr %i.a) #18
  store ptr %i.b, ptr %5, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i, -8       ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !103

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 49), i64 16) #18
  store ptr %i.k, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !105 ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !62   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.o, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.p = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.p ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.r = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = xor i64 %i.p, -1
  %i.u = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.t
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.r, ptr %i.s, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.r, i64 %i.u, i64 %i.p ; 2 uses
  %i.v = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.o, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.x = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !107
  %i.y = icmp eq ptr %i.x, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.y, label %bb.f, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit
end_hunk_1
