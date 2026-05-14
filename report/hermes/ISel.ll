inline.NumInlined: 3485
inline.NumDeleted: 1496
begin_hunk_0_@_ZN4llvh15SmallVectorImplINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEE6appendINS_16DenseMapIteratorIS5_S8_NS_12DenseMapInfoIS5_EES9_Lb0EEEvEEvT_SG_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.2.i.i.i.i, %3
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_copyINS_16DenseMapIteratorIS5_S8_NS_12DenseMapInfoIS5_EES9_Lb0EEEPS9_EEvT_SH_T0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !581

_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_copyINS_16DenseMapIteratorIS5_S8_NS_12DenseMapInfoIS5_EES9_Lb0EEEPS9_EEvT_SH_T0_.exit.loopexit: ; preds = %_ZN4llvh16DenseMapIteratorIPN6hermes13SwitchImmInstENS1_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S6_EELb0EEppEv.exit.i.i.i.i
  %i.at = trunc i64 %i.e to i32
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_copyINS_16DenseMapIteratorIS5_S8_NS_12DenseMapInfoIS5_EES9_Lb0EEEPS9_EEvT_SH_T0_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_copyINS_16DenseMapIteratorIS5_S8_NS_12DenseMapInfoIS5_EES9_Lb0EEEPS9_EEvT_SH_T0_.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_copyINS_16DenseMapIteratorIS5_S8_NS_12DenseMapInfoIS5_EES9_Lb0EEEPS9_EEvT_SH_T0_.exit.loopexit, %.thread
  %.0.lcssa.i1315 = phi i32 [ 0, %.thread ], [ %i.at, %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_copyINS_16DenseMapIteratorIS5_S8_NS_12DenseMapInfoIS5_EES9_Lb0EEEPS9_EEvT_SH_T0_.exit.loopexit ]
  %i.au = phi ptr [ %i.a, %.thread ], [ %i.i, %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_copyINS_16DenseMapIteratorIS5_S8_NS_12DenseMapInfoIS5_EES9_Lb0EEEPS9_EEvT_SH_T0_.exit.loopexit ] ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !72
  %i.aw = add i32 %i.av, %.0.lcssa.i1315
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.7, i1 noundef zeroext true) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 48
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #21 ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext true) #20
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !75     ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !72   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 48                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not7.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4llvh11safe_mallocEm.exit
  %i.ab = add nsw i64 %.idx, -48                  ; 2 uses
  %i.ac = udiv i64 %i.ab, 48
  %i.ad = and i64 %i.ac, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !139
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !141
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !141
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !142
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.09.i.i.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.i.prol ]
  %i.ap = icmp ult i64 %i.ab, 48
  br i1 %i.ap, label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_moveIPS9_SC_EEvT_SD_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.aq = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !139
  store ptr %i.aq, ptr %.09.i.i.i.i, align 8, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !141
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !141
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !142
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !139
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !139
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 72 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !141
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !141
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !142
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 96 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96
  %.not.i.i.i.i.1 = icmp eq ptr %i.bk, %i.aa
  br i1 %.not.i.i.i.i.1, label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_moveIPS9_SC_EEvT_SD_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !582

_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_moveIPS9_SC_EEvT_SD_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre = load ptr, ptr %0, align 8, !tbaa !75    ; 3 uses
  %.pre15 = load i32, ptr %i.x, align 8, !tbaa !72 ; 2 uses
  %.not4.i = icmp eq i32 %.pre15, 0
  br i1 %.not4.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_moveIPS9_SC_EEvT_SD_T0_.exit
  %i.bm = zext i32 %.pre15 to i64
  %.idx14 = mul nuw nsw i64 %i.bm, 48
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i
  %.05.i = phi ptr [ %i.bo, %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i ], [ %i.bn, %.lr.ph.i.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.05.i, i64 -24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.br = getelementptr inbounds i8, ptr %.05.i, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !142
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #22
  br label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i

_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i: ; preds = %bb.e, %.lr.ph.i
  %.not.i = icmp eq ptr %.pre, %i.bo
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit, label %.lr.ph.i, !llvm.loop !147

_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit: ; preds = %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit.i
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !75
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit: ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit, %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_moveIPS9_SC_EEvT_SD_T0_.exit
  %i.bw = phi ptr [ %.pre16, %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit ], [ %.pre, %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE18uninitialized_moveIPS9_SC_EEvT_SD_T0_.exit ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit
  tail call void @free(ptr noundef %i.bw) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvh23SmallVectorTemplateBaseINS_6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEELb0EE13destroy_rangeEPS9_SB_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !75
  %i.bz = trunc i64 %.sroa.speculated to i32
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !73
  ret void
}

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.llvh::detail::DenseMapPair.98", align 8 ; 7 uses
  %4 = alloca %"struct.llvh::detail::DenseMapPair.98", align 8 ; 7 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 56         ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph51

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit"
  %i.m = icmp eq i64 %i.bd, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph51, !llvm.loop !583

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa47 = phi i64 [ %i.c, %.lr.ph ], [ %i.dz, %bb.b ]
  %.029.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.n = udiv exact i64 %.lcssa47, 48             ; 2 uses
  %i.o = add nsw i64 %i.n, -2
  %i.p = lshr i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit16.i.i.i, %._crit_edge
  %.013.i.i.i = phi i64 [ %i.p, %._crit_edge ], [ %i.af, %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit16.i.i.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.013.i.i.i ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !139
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !142
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store ptr %i.u, ptr %4, align 8, !tbaa !139
  store <2 x ptr> %i.z, ptr %i.r, align 8, !tbaa !141
  store ptr %i.y, ptr %i.s, align 8, !tbaa !142
  call fastcc void @"_ZSt13__adjust_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_SH_T1_T2_"(ptr noundef %0, i64 noundef %.013.i.i.i, i64 noundef %i.n, ptr noundef %4)
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit16.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !142
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #22
  br label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit16.i.i.i

_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit16.i.i.i: ; preds = %bb.d, %bb.c
  %.not.i.i.i = icmp eq i64 %.013.i.i.i, 0
  %i.af = add nsw i64 %.013.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %bb.c, !llvm.loop !584

"_ZSt11__make_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_RT0_.exit.i.i": ; preds = %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i", %"_ZSt11__make_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_RT0_.exit.i.i"
  %.01.i.i = phi ptr [ %.029.lcssa, %"_ZSt11__make_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_RT0_.exit.i.i" ], [ %i.aj, %"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i" ] ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %.01.i.i, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !139
  %i.al = getelementptr inbounds i8, ptr %.01.i.i, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.am = getelementptr inbounds i8, ptr %.01.i.i, i64 -24 ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.01.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !142
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = sub i64 %i.ap, %i.a                     ; 2 uses
  %i.ar = sdiv exact i64 %i.aq, 48
  %i.as = load <2 x ptr>, ptr %i.am, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.at = load ptr, ptr %0, align 8, !tbaa !116
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 16, i1 false)
  %i.au = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  store <2 x ptr> %i.au, ptr %i.am, align 8, !tbaa !141
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !142
  store ptr %i.av, ptr %i.an, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %i.ak, ptr %3, align 8, !tbaa !139
  store <2 x ptr> %i.as, ptr %i.ah, align 8, !tbaa !141
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !142
  call fastcc void @"_ZSt13__adjust_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_SH_T1_T2_"(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.ar, ptr noundef %3)
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i.i.i.i6.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i6.i, label %"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !142
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #22
  br label %"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i"

"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i": ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bb = icmp sgt i64 %i.aq, 48
  br i1 %i.bb, label %bb.e, label %"_ZSt14__partial_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !585

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %.0172850 = phi i64 [ %i.bd, %bb.b ], [ %2, %.lr.ph ]
  %.02949 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 8 uses
  %i.bc = phi i64 [ %i.dz, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bd = add nsw i64 %.0172850, -1               ; 3 uses
  %i.be = udiv i64 %i.bc, 96
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.be ; 9 uses
  %i.bg = getelementptr inbounds i8, ptr %.02949, i64 -48 ; 4 uses
  %.val29.i.i = load i32, ptr %i.f, align 8, !tbaa !143 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 8      ; 5 uses
  %.val30.i.i = load i32, ptr %i.bh, align 8, !tbaa !143 ; 3 uses
  %i.bi = icmp ult i32 %.val29.i.i, %.val30.i.i
  %i.bj = getelementptr i8, ptr %.02949, i64 -40  ; 5 uses
  %.val28.i.i = load i32, ptr %i.bj, align 8, !tbaa !143 ; 4 uses
  br i1 %i.bi, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph51
  %i.bk = icmp ult i32 %.val30.i.i, %.val28.i.i
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %0, align 8, !tbaa !139
  %.sroa.4.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.g, align 8
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !116
  store ptr %i.bq, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 16, i1 false)
  %i.br = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !141
  store <2 x ptr> %i.br, ptr %i.h, align 8, !tbaa !141
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !142
  store ptr %i.bs, ptr %i.i, align 8, !tbaa !142
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !139
  store <16 x i8> %.sroa.4.i.i.i.i.sroa.0.0.copyload, ptr %i.bh, align 8
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !141
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !142
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.i:                                             ; preds = %bb.g
  %i.bt = icmp ult i32 %.val29.i.i, %.val28.i.i
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %0, align 8, !tbaa !139
  %.sroa.4.i.i31.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.g, align 8
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.bw = getelementptr inbounds i8, ptr %.02949, i64 -24 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.02949, i64 -8 ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !116
  store ptr %i.bz, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 16, i1 false)
  %i.ca = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !141
  store <2 x ptr> %i.ca, ptr %i.h, align 8, !tbaa !141
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !142
  store ptr %i.cb, ptr %i.i, align 8, !tbaa !142
  store ptr %i.bu, ptr %i.bg, align 8, !tbaa !139
  store <16 x i8> %.sroa.4.i.i31.i.i.sroa.0.0.copyload, ptr %i.bj, align 8
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !141
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !142
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !139
  %.sroa.4.i.i32.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.g, align 8
  %i.cd = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !116
  store ptr %i.ce, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 16, i1 false)
  %i.cf = load <2 x ptr>, ptr %i.j, align 8, !tbaa !141
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !142
  store ptr %i.cg, ptr %i.i, align 8, !tbaa !142
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !139
  store <16 x i8> %.sroa.4.i.i32.i.i.sroa.0.0.copyload, ptr %i.f, align 8
  %i.ch = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  store <2 x ptr> %i.cf, ptr %i.h, align 8, !tbaa !141
  store <2 x ptr> %i.ch, ptr %i.j, align 8, !tbaa !141
  store ptr %i.cd, ptr %i.k, align 8, !tbaa !142
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %.lr.ph51
  %i.ci = icmp ult i32 %.val29.i.i, %.val28.i.i
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %0, align 8, !tbaa !139
  %.sroa.4.i.i33.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.g, align 8
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !116
  store ptr %i.cl, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 16, i1 false)
  %i.cm = load <2 x ptr>, ptr %i.j, align 8, !tbaa !141
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !142
  store ptr %i.cn, ptr %i.i, align 8, !tbaa !142
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !139
  store <16 x i8> %.sroa.4.i.i33.i.i.sroa.0.0.copyload, ptr %i.f, align 8
  %i.co = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  store <2 x ptr> %i.cm, ptr %i.h, align 8, !tbaa !141
  store <2 x ptr> %i.co, ptr %i.j, align 8, !tbaa !141
  store ptr %i.ck, ptr %i.k, align 8, !tbaa !142
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cp = icmp ult i32 %.val30.i.i, %.val28.i.i
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = load ptr, ptr %0, align 8, !tbaa !139
  %.sroa.4.i.i34.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.g, align 8
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.cs = getelementptr inbounds i8, ptr %.02949, i64 -24 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.02949, i64 -8 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.cv = load ptr, ptr %i.bg, align 8, !tbaa !116
  store ptr %i.cv, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 16, i1 false)
  %i.cw = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !141
  store <2 x ptr> %i.cw, ptr %i.h, align 8, !tbaa !141
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !142
  store ptr %i.cx, ptr %i.i, align 8, !tbaa !142
  store ptr %i.cq, ptr %i.bg, align 8, !tbaa !139
  store <16 x i8> %.sroa.4.i.i34.i.i.sroa.0.0.copyload, ptr %i.bj, align 8
  store <2 x ptr> %i.cu, ptr %i.cs, align 8, !tbaa !141
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !142
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  %i.cy = load ptr, ptr %0, align 8, !tbaa !139
  %.sroa.4.i.i35.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.g, align 8
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !142
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.h, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.dd = load ptr, ptr %i.bf, align 8, !tbaa !116
  store ptr %i.dd, ptr %0, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 16, i1 false)
  %i.de = load <2 x ptr>, ptr %i.da, align 8, !tbaa !141
  store <2 x ptr> %i.de, ptr %i.h, align 8, !tbaa !141
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !142
  store ptr %i.df, ptr %i.i, align 8, !tbaa !142
  store ptr %i.cy, ptr %i.bf, align 8, !tbaa !139
  store <16 x i8> %.sroa.4.i.i35.i.i.sroa.0.0.copyload, ptr %i.bh, align 8
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !141
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !142
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.s
  %.013.i.i = phi ptr [ %.114.i.i, %bb.s ], [ %.02949, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.di, %bb.s ], [ %i.e, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.val15.i.i = load i32, ptr %i.g, align 8, !tbaa !143 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.di, %bb.q ] ; 12 uses
  %i.dg = getelementptr i8, ptr %.1.i.i, i64 8
  %.1.val.i.i = load i32, ptr %i.dg, align 8, !tbaa !143
  %i.dh = icmp ult i32 %.1.val.i.i, %.val15.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48 ; 2 uses
  br i1 %i.dh, label %bb.q, label %.preheader.i.i.preheader, !llvm.loop !586

.preheader.i.i.preheader:                         ; preds = %bb.q
  %i.dj = getelementptr i8, ptr %.1.i.i, i64 8    ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %.preheader.i.i.preheader ] ; 5 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -48 ; 5 uses
  %i.dk = getelementptr i8, ptr %.013.pn.i.i, i64 -40
  %.114.val.i.i = load i32, ptr %i.dk, align 8, !tbaa !143
  %i.dl = icmp ult i32 %.val15.i.i, %.114.val.i.i
  br i1 %i.dl, label %.preheader.i.i, label %bb.r, !llvm.loop !587

bb.r:                                             ; preds = %.preheader.i.i
  %i.dm = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.dm, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit"

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr i8, ptr %.013.pn.i.i, i64 -40 ; 2 uses
  %i.do = load ptr, ptr %.1.i.i, align 8, !tbaa !139
  %.sroa.4.i.i.i13.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.dj, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !142
  %i.ds = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -24 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 2 uses
  %i.du = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  %i.dv = load ptr, ptr %.114.i.i, align 8, !tbaa !116
  store ptr %i.dv, ptr %.1.i.i, align 8, !tbaa !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i64 16, i1 false)
  %i.dw = load <2 x ptr>, ptr %i.ds, align 8, !tbaa !141
  store <2 x ptr> %i.dw, ptr %i.dp, align 8, !tbaa !141
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !142
  store ptr %i.dx, ptr %i.dq, align 8, !tbaa !142
  store ptr %i.do, ptr %.114.i.i, align 8, !tbaa !139
  store <16 x i8> %.sroa.4.i.i.i13.i.sroa.0.0.copyload, ptr %i.dn, align 8
  store <2 x ptr> %i.du, ptr %i.ds, align 8, !tbaa !141
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !142
  br label %"_ZSt22__move_median_to_firstIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !588

"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.r
  tail call fastcc void @"_ZSt16__introsort_loopIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.02949, i64 noundef %i.bd)
  %i.dy = ptrtoint ptr %.1.i.i to i64
  %i.dz = sub i64 %i.dy, %i.a                     ; 3 uses
  %i.ea = icmp sgt i64 %i.dz, 768
  br i1 %i.ea, label %bb.b, label %"_ZSt14__partial_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !583

"_ZSt14__partial_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_SG_RT0_.exit.i7.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_SH_T1_T2_"(ptr noundef captures(none) %0, i64 noundef range(i64 0, 96076792050570581) %1, i64 noundef range(i64 -192153584101141162, 192153584101141163) %2, ptr noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %.sroa.5 = alloca [12 x i8], align 4            ; 2 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit
  %.037 = phi i64 [ %spec.select, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl nuw nsw i64 %.037, 1                 ; 3 uses
  %i.e = add nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val = load i32, ptr %i.h, align 8, !tbaa !143
  %i.i = getelementptr i8, ptr %i.g, i64 56
  %.val28 = load i32, ptr %i.i, align 8, !tbaa !143
  %i.j = icmp ult i32 %.val, %.val28
  %i.k = or disjoint i64 %i.d, 1
  %spec.select = select i1 %i.j, i64 %i.k, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %spec.select ; 4 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.037 ; 4 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !116
  store ptr %i.n, ptr %i.m, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !144  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !142
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !tbaa !141
  store <2 x ptr> %i.v, ptr %i.q, align 8, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !142
  store ptr %i.x, ptr %i.t, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.aa) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit: ; preds = %.lr.ph, %bb.b
  %i.ab = icmp slt i64 %spec.select, %i.b
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !589

._crit_edge:                                      ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit ] ; 5 uses
  %i.ac = and i64 %2, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30

bb.c:                                             ; preds = %._crit_edge
  %i.ae = add nsw i64 %2, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa, %i.af
  br i1 %i.ag, label %bb.d, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30

bb.d:                                             ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 3 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0.lcssa ; 4 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !116
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !139
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !144 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !142
  %i.at = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !141
  store <2 x ptr> %i.at, ptr %i.ao, align 8, !tbaa !141
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !142
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.aq, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30: ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge
  %.127 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.c ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !139
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.ba, align 8 ; 2 uses
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.8..sroa_idx, i64 12, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !141
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bf = icmp samesign ugt i64 %.127, %1
  br i1 %i.bf, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i
  %.0133.i = phi i64 [ %.0410.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ], [ %.127, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30 ] ; 3 uses
  %.04.in.i = add nsw i64 %.0133.i, -1
  %.0410.i = lshr i64 %.04.in.i, 1                ; 4 uses
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0410.i ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  %.val.i = load i32, ptr %i.bh, align 8, !tbaa !143
  %i.bi = icmp ult i32 %.val.i, %.sroa.2.8.copyload
  br i1 %i.bi, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.0133.i ; 4 uses
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !116
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !139
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !144 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !142
  %i.br = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !141
  store <2 x ptr> %i.br, ptr %i.bm, align 8, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !142
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bo to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bw) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i: ; preds = %bb.g, %bb.f
  %i.bx = icmp samesign ugt i64 %.0410.i, %1
  br i1 %i.bx, label %.lr.ph.i, label %.critedge.i, !llvm.loop !590

.critedge.i:                                      ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i, %.lr.ph.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30
  %.013.lcssa.i = phi i64 [ %.127, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit30 ], [ %.0133.i, %.lr.ph.i ], [ %.0410.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ]
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.013.lcssa.i ; 5 uses
  store ptr %i.az, ptr %i.by, align 8, !tbaa !139
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %.sroa.2.8.copyload, ptr %i.bz, align 8
  %.sroa.5.8..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.8..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !144 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !142
  store <2 x ptr> %i.bc, ptr %i.ca, align 8, !tbaa !141
  store ptr %i.be, ptr %i.cc, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i15.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i15.i, label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #22
  br label %_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit

_ZNSt4pairIPN6hermes13SwitchImmInstENS0_3hbc7HBCISel13SwitchImmInfoEED2Ev.exit: ; preds = %bb.h, %.critedge.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_SG_T0_"(ptr noundef %0, ptr noundef readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %.sroa.7.i = alloca [12 x i8], align 4          ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.019 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not20 = icmp eq ptr %.019, %1
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.022 = phi ptr [ %.019, %.lr.ph ], [ %.0, %bb.i ] ; 8 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.022, %bb.i ] ; 8 uses
  %i.f = getelementptr i8, ptr %.pn21, i64 56     ; 2 uses
  %.0.val = load i32, ptr %i.f, align 8, !tbaa !143 ; 4 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !143
  %i.g = icmp ult i32 %.0.val, %.val
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.022, align 8, !tbaa !139
  %.sroa.4.sroa.0.0.copyload = load <16 x i8>, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.pn21, i64 72 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !141
  %i.k = getelementptr inbounds nuw i8, ptr %.pn21, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.m = ptrtoint ptr %.022 to i64
  %i.n = sub i64 %i.m, %i.c                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn21, i64 96
  %i.q = udiv exact i64 %i.n, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ah, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.s, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.r, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i ], [ %.022, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !116
  store ptr %i.t, ptr %i.s, align 8, !tbaa !139
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 16, i1 false)
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !144  ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !142
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !141
  store <2 x ptr> %i.ab, ptr %i.w, align 8, !tbaa !141
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !142
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ah = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ai = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit, !llvm.loop !591

_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i.i.i.i.i, %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !139
  store <16 x i8> %.sroa.4.sroa.0.0.copyload, ptr %i.b, align 8
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !144 ; 3 uses
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !142
  store <2 x ptr> %i.j, ptr %i.d, align 8, !tbaa !141
  store ptr %i.l, ptr %i.e, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ao = load ptr, ptr %.022, align 8, !tbaa !139
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn21, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.8..sroa_idx.i, i64 12, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn21, i64 72 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !141
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn21, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.at = getelementptr i8, ptr %.pn21, i64 8     ; 2 uses
  %.0.val18.i = load i32, ptr %i.at, align 8, !tbaa !143
  %i.au = icmp ult i32 %.0.val, %.0.val18.i
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i
  %i.av = phi ptr [ %i.bj, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ], [ %i.at, %bb.f ]
  %.0919.i = phi ptr [ %.020.i, %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i ], [ %.022, %bb.f ] ; 9 uses
  %.020.i = getelementptr inbounds i8, ptr %.0919.i, i64 -48 ; 3 uses
  %i.aw = load ptr, ptr %.020.i, align 8, !tbaa !116
  store ptr %i.aw, ptr %.0919.i, align 8, !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0919.i, i64 24 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.0919.i, i64 -24 ; 3 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !144 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0919.i, i64 40 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !142
  %i.bd = load <2 x ptr>, ptr %i.az, align 8, !tbaa !141
  store <2 x ptr> %i.bd, ptr %i.ay, align 8, !tbaa !141
  %i.be = getelementptr inbounds i8, ptr %.0919.i, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !142
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bi) #22
  br label %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i

_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i: ; preds = %bb.g, %.lr.ph.i
  %i.bj = getelementptr i8, ptr %.0919.i, i64 -88 ; 2 uses
  %.0.val.i = load i32, ptr %i.bj, align 8, !tbaa !143
  %i.bk = icmp ult i32 %.0.val, %.0.val.i
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !145

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoEEaSEOS8_.exit.i
  %i.bl = getelementptr inbounds i8, ptr %.0919.i, i64 -8
  %.pre.i = load ptr, ptr %i.az, align 8, !tbaa !144
  %.pre22.i = load ptr, ptr %i.bl, align 8, !tbaa !142
  %i.bm = ptrtoint ptr %.pre22.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.f
  %i.bn = phi i64 [ 0, %bb.f ], [ %i.bm, %._crit_edge.loopexit.i ]
  %i.bo = phi ptr [ null, %bb.f ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.09.lcssa.i = phi ptr [ %.022, %bb.f ], [ %.020.i, %._crit_edge.loopexit.i ] ; 5 uses
  store ptr %i.ao, ptr %.09.lcssa.i, align 8, !tbaa !139
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 8
  store i32 %.0.val, ptr %i.bp, align 8
  %.sroa.7.8..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.8..sroa_idx13.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i, i64 12, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 40
  store <2 x ptr> %i.aq, ptr %i.bq, align 8, !tbaa !141
  store ptr %i.as, ptr %i.br, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i10.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i10.i, label %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.bn, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #22
  br label %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit"

"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit": ; preds = %._crit_edge.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEESA_ET0_T_SC_SB_.exit, %bb.e, %"_ZSt25__unguarded_linear_insertIPN4llvh6detail12DenseMapPairIPN6hermes13SwitchImmInstENS3_3hbc7HBCISel13SwitchImmInfoEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS7_17generateJumpTableEvE3$_0EEEvT_T0_.exit"
  %.0 = getelementptr inbounds nuw i8, ptr %.022, i64 48 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !592

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !98   ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !99     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !89, !llvm.loop !101

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !562
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !102 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !74

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !103
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !74

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !102
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !562
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 7 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !102
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !103
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !103
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %1, align 8, !tbaa !99
  store ptr %i.av, ptr %i.an, align 8, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aw, i8 0, i64 96, i1 false)
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  store i32 8, ptr %i.az, align 4, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16InsertIntoBucketIRKS4_JEEEPSA_SG_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !114    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115  ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !116    ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116 ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !89, !llvm.loop !118

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !566
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !119 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !74

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes13SwitchImmInstENS2_3hbc7HBCISel13SwitchImmInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_0
