inline.NumInlined: 3113
inline.NumDeleted: 1058
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZSt21__unguarded_partitionIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEESD_SD_SD_SD_T0_:bb.a
  %i.me = and i64 %i.md, -8                       ; 2 uses
  %i.mf = inttoptr i64 %i.me to ptr               ; 3 uses
  store ptr %i.mb, ptr %6, align 8, !tbaa !211
  store ptr %i.mf, ptr %i.p, align 8, !tbaa !214
  %.not.i.i.i50 = icmp eq i32 %.pre-phi140, 0     ; 2 uses
  %i.mg = select i1 %.not.i.i.i50, ptr %i.ly, ptr %i.j ; 3 uses
  %i.mh = select i1 %.not.i.i.i50, i32 %i.lx, i32 4 ; 7 uses
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15
  %i.mj = ptrtoint ptr %i.mb to i64
  %i.mk = trunc i64 %i.mj to i32                  ; 2 uses
  %i.ml = lshr i32 %i.mk, 4
  %i.mm = lshr i32 %i.mk, 9
  %i.mn = xor i32 %i.ml, %i.mm
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = shl nuw nsw i64 %i.mo, 32
  %i.mq = trunc i64 %i.me to i32                  ; 2 uses
  %i.mr = lshr i32 %i.mq, 4
  %i.ms = lshr i32 %i.mq, 9
  %i.mt = xor i32 %i.mr, %i.ms
  %i.mu = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mv = or disjoint i64 %i.mp, %i.mu
  %i.mw = shl nuw nsw i64 %i.mu, 32
  %i.mx = xor i64 %i.mw, -1
  %i.my = add nsw i64 %i.mv, %i.mx                ; 2 uses
  %i.mz = lshr i64 %i.my, 22
  %i.na = xor i64 %i.mz, %i.my                    ; 2 uses
  %i.nb = shl i64 %i.na, 13
  %i.nc = xor i64 %i.nb, -1
  %i.nd = add i64 %i.na, %i.nc                    ; 2 uses
  %i.ne = lshr i64 %i.nd, 8
  %i.nf = xor i64 %i.ne, %i.nd
  %i.ng = mul i64 %i.nf, 9                        ; 2 uses
  %i.nh = lshr i64 %i.ng, 15
  %i.ni = xor i64 %i.nh, %i.ng                    ; 2 uses
  %i.nj = shl i64 %i.ni, 27
  %i.nk = xor i64 %i.nj, -1
  %i.nl = add i64 %i.ni, %i.nk                    ; 2 uses
  %i.nm = lshr i64 %i.nl, 31
  %i.nn = xor i64 %i.nm, %i.nl
  %i.no = trunc i64 %i.nn to i32
  %i.np = add i32 %i.mh, -1                       ; 2 uses
  %i.nq = and i32 %i.np, %i.no                    ; 2 uses
  %i.nr = zext i32 %i.nq to i64                   ; 2 uses
  %i.ns = getelementptr inbounds nuw [24 x i8], ptr %i.mg, i64 %i.nr ; 3 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !211 ; 2 uses
  %i.nu = icmp eq ptr %i.mb, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8            ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.mf
  %i.ny = select i1 %i.nu, i1 %i.nx, i1 false
  br i1 %i.ny, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16, label %.lr.ph.i51, !prof !52

.lr.ph.i51:                                       ; preds = %bb.ab, %bb.ad
  %i.nz = phi ptr [ %i.os, %bb.ad ], [ %i.nw, %bb.ab ] ; 2 uses
  %i.oa = phi ptr [ %i.op, %bb.ad ], [ %i.nt, %bb.ab ] ; 2 uses
  %i.ob = phi ptr [ %i.oo, %bb.ad ], [ %i.ns, %bb.ab ] ; 2 uses
  %.02548.i52 = phi i32 [ %i.ok, %bb.ad ], [ 1, %bb.ab ] ; 2 uses
  %.02747.i53 = phi i32 [ %i.om, %bb.ad ], [ %i.nq, %bb.ab ]
  %.02946.i54 = phi ptr [ %spec.select.i56, %bb.ad ], [ null, %bb.ab ] ; 4 uses
  %i.oc = icmp eq ptr %i.oa, inttoptr (i64 -8 to ptr)
  %i.od = icmp eq ptr %i.nz, inttoptr (i64 -8 to ptr)
  %i.oe = select i1 %i.oc, i1 %i.od, i1 false
  br i1 %i.oe, label %bb.ac, label %bb.ad, !prof !53

bb.ac:                                            ; preds = %.lr.ph.i51
  %.not.i59 = icmp eq ptr %.02946.i54, null
  %i.of = select i1 %.not.i59, ptr %i.ob, ptr %.02946.i54
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60

bb.ad:                                            ; preds = %.lr.ph.i51
  %i.og = icmp eq ptr %i.oa, inttoptr (i64 -16 to ptr)
  %i.oh = icmp eq ptr %i.nz, inttoptr (i64 -16 to ptr)
  %i.oi = select i1 %i.og, i1 %i.oh, i1 false
  %i.oj = icmp eq ptr %.02946.i54, null
  %or.cond.not.i55 = select i1 %i.oi, i1 %i.oj, i1 false
  %spec.select.i56 = select i1 %or.cond.not.i55, ptr %i.ob, ptr %.02946.i54
  %i.ok = add i32 %.02548.i52, 1
  %i.ol = add i32 %.02747.i53, %.02548.i52
  %i.om = and i32 %i.ol, %i.np                    ; 2 uses
  %i.on = zext i32 %i.om to i64                   ; 2 uses
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.mg, i64 %i.on ; 3 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !211 ; 2 uses
  %i.oq = icmp eq ptr %i.mb, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.os = load ptr, ptr %i.or, align 8            ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.mf
  %i.ou = select i1 %i.oq, i1 %i.ot, i1 false
  br i1 %i.ou, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16, label %.lr.ph.i51, !prof !54, !llvm.loop !235

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16: ; preds = %bb.ad, %bb.ab
  %i.ov = phi i64 [ %i.nr, %bb.ab ], [ %i.on, %bb.ad ]
  %i.ow = getelementptr inbounds nuw [24 x i8], ptr %i.mg, i64 %i.ov
  %.phi.trans.insert10.i.i17 = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %.pre11.i.i18 = load i32, ptr %.phi.trans.insert10.i.i17, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60: ; preds = %bb.ac, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15
  %.sink.i57 = phi ptr [ %i.of, %bb.ac ], [ null, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15 ]
  %i.ox = lshr i32 %i.lz, 1                       ; 2 uses
  %i.oy = shl i32 %i.ox, 2
  %i.oz = add i32 %i.oy, 4
  %i.pa = mul i32 %i.mh, 3
  %.not.i44 = icmp ult i32 %i.oz, %i.pa
  br i1 %.not.i44, label %bb.af, label %bb.ae, !prof !53

bb.ae:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60
  %i.pb = shl i32 %i.mh, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.pb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.pc = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.pd = load ptr, ptr %i.d, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.ah

bb.af:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60
  %i.pe = load i32, ptr %i.l, align 4, !tbaa !207
  %.neg.i46 = xor i32 %i.ox, -1
  %.neg13.i47 = add i32 %i.mh, %.neg.i46
  %i.pf = sub i32 %.neg13.i47, %i.pe
  %i.pg = lshr i32 %i.mh, 3
  %.not9.i48 = icmp ugt i32 %i.pf, %i.pg
  br i1 %.not9.i48, label %bb.ah, label %bb.ag, !prof !53

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.mh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ph = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.pi = load ptr, ptr %i.c, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i45 = phi ptr [ %.sink.i57, %bb.af ], [ %i.pi, %bb.ag ], [ %i.pd, %bb.ae ] ; 4 uses
  %i.pj = load i32, ptr %3, align 8               ; 2 uses
  %i.pk = and i32 %i.pj, -2
  %i.pl = add i32 %i.pk, 2
  %i.pm = and i32 %i.pj, 1
  %i.pn = or disjoint i32 %i.pl, %i.pm
  store i32 %i.pn, ptr %3, align 8
  %i.po = load ptr, ptr %.0.i45, align 8, !tbaa !211
  %i.pp = icmp eq ptr %i.po, inttoptr (i64 -8 to ptr)
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.i45, i64 8 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = icmp eq ptr %i.pr, inttoptr (i64 -8 to ptr)
  %i.pt = select i1 %i.pp, i1 %i.ps, i1 false
  br i1 %i.pt, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pu = load i32, ptr %i.l, align 4, !tbaa !207
  %i.pv = add i32 %i.pu, -1
  store i32 %i.pv, ptr %i.l, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49: ; preds = %bb.ah, %bb.ai
  %i.pw = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %i.pw, ptr %.0.i45, align 8, !tbaa !211
  %i.px = load ptr, ptr %i.p, align 8, !tbaa !32
  store ptr %i.px, ptr %i.pq, align 8, !tbaa !214
  %i.py = getelementptr inbounds nuw i8, ptr %.0.i45, i64 16
  store i32 0, ptr %i.py, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49
  %i.pz = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49 ], [ %.pre11.i.i18, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16 ]
  %i.qa = icmp sgt i32 %i.ma, %i.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.qa, label %.preheader, label %bb.aj, !llvm.loop !248

bb.aj:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22
  %i.qb = icmp ult ptr %.1, %.114
  br i1 %i.qb, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  ret ptr %.1

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1, ptr noundef nonnull align 8 dereferenceable(16) %.114, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.114, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.b, !llvm.loop !249
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %4 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 6 uses
  %6 = alloca %"class.llvh::cfg::Update", align 8 ; 7 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 3 uses
  %8 = alloca %"class.llvh::cfg::Update", align 8 ; 4 uses
  store ptr %2, ptr %7, align 8
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.054 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not55 = icmp eq ptr %.054, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %.057 = phi ptr [ %.054, %.lr.ph ], [ %.0, %bb.x ] ; 8 uses
  %.pn56 = phi ptr [ %0, %.lr.ph ], [ %.057, %bb.x ] ; 4 uses
  %i.j = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %.057, ptr noundef %0)
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.057, i64 16, i1 false), !tbaa.struct !238
  %i.k = ptrtoint ptr %.057 to i64
  %i.l = sub i64 %i.k, %i.i                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 4                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn56, i64 32
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 16
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn56, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !238
  br label %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit

_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.x

bb.g:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0.0.copyload, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.057, i64 16, i1 false), !tbaa.struct !238
  %i.t = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %.pn56)
  br i1 %i.t, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit

.lr.ph.i:                                         ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit
  %i.u = phi ptr [ %.0.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.pn56, %bb.g ] ; 5 uses
  %.012.i = phi ptr [ %i.u, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.057, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !238
  %.0.i = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  %9 = load ptr, ptr %5, align 8, !tbaa !240, !nonnull !29, !align !243 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.v = load ptr, ptr %6, align 8, !tbaa !173    ; 4 uses
  %i.w = load i64, ptr %i.f, align 8, !tbaa !177
  %i.x = and i64 %i.w, -8                         ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !211
  store ptr %i.y, ptr %i.g, align 8, !tbaa !214
  %i.z = load i32, ptr %9, align 8                ; 2 uses
  %i.aa = and i32 %i.z, 1
  %.not.i.i.i28 = icmp eq i32 %i.aa, 0            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %.not.i.i.i28, ptr %i.ac, ptr %i.ab ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = select i1 %.not.i.i.i28, i32 %i.af, i32 4 ; 7 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ai = ptrtoint ptr %i.v to i64
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = lshr i32 %i.aj, 4
  %i.al = lshr i32 %i.aj, 9
  %i.am = xor i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 32
  %i.ap = trunc i64 %i.x to i32                   ; 2 uses
  %i.aq = lshr i32 %i.ap, 4
  %i.ar = lshr i32 %i.ap, 9
  %i.as = xor i32 %i.aq, %i.ar
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = or disjoint i64 %i.ao, %i.at
  %i.av = shl nuw nsw i64 %i.at, 32
  %i.aw = xor i64 %i.av, -1
  %i.ax = add nsw i64 %i.au, %i.aw                ; 2 uses
  %i.ay = lshr i64 %i.ax, 22
  %i.az = xor i64 %i.ay, %i.ax                    ; 2 uses
  %i.ba = shl i64 %i.az, 13
  %i.bb = xor i64 %i.ba, -1
  %i.bc = add i64 %i.az, %i.bb                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 8
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = mul i64 %i.be, 9                        ; 2 uses
  %i.bg = lshr i64 %i.bf, 15
  %i.bh = xor i64 %i.bg, %i.bf                    ; 2 uses
  %i.bi = shl i64 %i.bh, 27
  %i.bj = xor i64 %i.bi, -1
  %i.bk = add i64 %i.bh, %i.bj                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 31
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = add i32 %i.ag, -1                       ; 2 uses
  %i.bp = and i32 %i.bo, %i.bn                    ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.bq ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !211 ; 2 uses
  %i.bt = icmp eq ptr %i.v, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.y
  %i.bx = select i1 %i.bt, i1 %i.bw, i1 false
  br i1 %i.bx, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i29, !prof !52

.lr.ph.i29:                                       ; preds = %bb.h, %bb.j
  %i.by = phi ptr [ %i.cr, %bb.j ], [ %i.bv, %bb.h ] ; 2 uses
  %i.bz = phi ptr [ %i.co, %bb.j ], [ %i.bs, %bb.h ] ; 2 uses
  %i.ca = phi ptr [ %i.cn, %bb.j ], [ %i.br, %bb.h ] ; 2 uses
  %.02548.i30 = phi i32 [ %i.cj, %bb.j ], [ 1, %bb.h ] ; 2 uses
  %.02747.i31 = phi i32 [ %i.cl, %bb.j ], [ %i.bp, %bb.h ]
  %.02946.i32 = phi ptr [ %spec.select.i34, %bb.j ], [ null, %bb.h ] ; 4 uses
  %i.cb = icmp eq ptr %i.bz, inttoptr (i64 -8 to ptr)
  %i.cc = icmp eq ptr %i.by, inttoptr (i64 -8 to ptr)
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %bb.i, label %bb.j, !prof !53

bb.i:                                             ; preds = %.lr.ph.i29
  %.not.i37 = icmp eq ptr %.02946.i32, null
  %i.ce = select i1 %.not.i37, ptr %i.ca, ptr %.02946.i32
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38

bb.j:                                             ; preds = %.lr.ph.i29
  %i.cf = icmp eq ptr %i.bz, inttoptr (i64 -16 to ptr)
  %i.cg = icmp eq ptr %i.by, inttoptr (i64 -16 to ptr)
  %i.ch = select i1 %i.cf, i1 %i.cg, i1 false
  %i.ci = icmp eq ptr %.02946.i32, null
  %or.cond.not.i33 = select i1 %i.ch, i1 %i.ci, i1 false
  %spec.select.i34 = select i1 %or.cond.not.i33, ptr %i.ca, ptr %.02946.i32
  %i.cj = add i32 %.02548.i30, 1
  %i.ck = add i32 %.02747.i31, %.02548.i30
  %i.cl = and i32 %i.ck, %i.bo                    ; 2 uses
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.cm ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !211 ; 2 uses
  %i.cp = icmp eq ptr %i.v, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.y
  %i.ct = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %i.ct, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i29, !prof !54, !llvm.loop !235

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i: ; preds = %bb.j, %bb.h
  %i.cu = phi i64 [ %i.bq, %bb.h ], [ %i.cm, %bb.j ]
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.cu
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38: ; preds = %bb.i, %.lr.ph.i
  %.sink.i35 = phi ptr [ %i.ce, %bb.i ], [ null, %.lr.ph.i ]
  %i.cw = lshr i32 %i.z, 1                        ; 2 uses
  %i.cx = shl i32 %i.cw, 2
  %i.cy = add i32 %i.cx, 4
  %i.cz = mul i32 %i.ag, 3
  %.not.i22 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i22, label %bb.l, label %bb.k, !prof !53

bb.k:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38
  %i.da = shl i32 %i.ag, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %9, i32 noundef %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.db = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.n

bb.l:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !207
  %.neg.i24 = xor i32 %i.cw, -1
  %.neg13.i25 = add i32 %i.ag, %.neg.i24
  %i.df = sub i32 %.neg13.i25, %i.de
  %i.dg = lshr i32 %i.ag, 3
  %.not9.i26 = icmp ugt i32 %i.df, %i.dg
  br i1 %.not9.i26, label %bb.n, label %bb.m, !prof !53

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %9, i32 noundef %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.dh = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i23 = phi ptr [ %.sink.i35, %bb.l ], [ %i.di, %bb.m ], [ %i.dc, %bb.k ] ; 4 uses
  %i.dj = load i32, ptr %9, align 8               ; 2 uses
  %i.dk = and i32 %i.dj, -2
  %i.dl = add i32 %i.dk, 2
  %i.dm = and i32 %i.dj, 1
  %i.dn = or disjoint i32 %i.dl, %i.dm
  store i32 %i.dn, ptr %9, align 8
  %i.do = load ptr, ptr %.0.i23, align 8, !tbaa !211
  %i.dp = icmp eq ptr %i.do, inttoptr (i64 -8 to ptr)
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i23, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = icmp eq ptr %i.dr, inttoptr (i64 -8 to ptr)
  %i.dt = select i1 %i.dp, i1 %i.ds, i1 false
  br i1 %i.dt, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !207
  %i.dw = add i32 %i.dv, -1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27: ; preds = %bb.n, %bb.o
  %i.dx = load ptr, ptr %3, align 8, !tbaa !32
  store ptr %i.dx, ptr %.0.i23, align 8, !tbaa !211
  %i.dy = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.dy, ptr %i.dq, align 8, !tbaa !214
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i23, i64 16
  store i32 0, ptr %i.dz, align 8, !tbaa !3
  %.pre67 = load ptr, ptr %5, align 8, !tbaa !240 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre67, i64 16
  %.pre68 = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i
  %i.ea = phi i32 [ %.pre68, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27 ], [ %i.af, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  %i.eb = phi ptr [ %.pre67, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27 ], [ %9, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ] ; 10 uses
  %i.ec = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27 ], [ %.pre.i.i, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ed = load ptr, ptr %.0.i, align 8, !tbaa !173 ; 4 uses
  %i.ee = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !177
  %i.eg = and i64 %i.ef, -8                       ; 2 uses
  %i.eh = inttoptr i64 %i.eg to ptr               ; 3 uses
  store ptr %i.ed, ptr %4, align 8, !tbaa !211
  store ptr %i.eh, ptr %i.h, align 8, !tbaa !214
  %i.ei = load i32, ptr %i.eb, align 8            ; 2 uses
  %i.ej = and i32 %i.ei, 1
  %.not.i.i.i18 = icmp eq i32 %i.ej, 0            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = select i1 %.not.i.i.i18, ptr %i.el, ptr %i.ek ; 3 uses
  %i.en = select i1 %.not.i.i.i18, i32 %i.ea, i32 4 ; 7 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %i.ep = ptrtoint ptr %i.ed to i64
  %i.eq = trunc i64 %i.ep to i32                  ; 2 uses
  %i.er = lshr i32 %i.eq, 4
  %i.es = lshr i32 %i.eq, 9
  %i.et = xor i32 %i.er, %i.es
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 32
  %i.ew = trunc i64 %i.eg to i32                  ; 2 uses
  %i.ex = lshr i32 %i.ew, 4
  %i.ey = lshr i32 %i.ew, 9
  %i.ez = xor i32 %i.ex, %i.ey
  %i.fa = zext nneg i32 %i.ez to i64              ; 2 uses
  %i.fb = or disjoint i64 %i.ev, %i.fa
  %i.fc = shl nuw nsw i64 %i.fa, 32
  %i.fd = xor i64 %i.fc, -1
  %i.fe = add nsw i64 %i.fb, %i.fd                ; 2 uses
  %i.ff = lshr i64 %i.fe, 22
  %i.fg = xor i64 %i.ff, %i.fe                    ; 2 uses
  %i.fh = shl i64 %i.fg, 13
  %i.fi = xor i64 %i.fh, -1
  %i.fj = add i64 %i.fg, %i.fi                    ; 2 uses
  %i.fk = lshr i64 %i.fj, 8
  %i.fl = xor i64 %i.fk, %i.fj
  %i.fm = mul i64 %i.fl, 9                        ; 2 uses
  %i.fn = lshr i64 %i.fm, 15
  %i.fo = xor i64 %i.fn, %i.fm                    ; 2 uses
  %i.fp = shl i64 %i.fo, 27
  %i.fq = xor i64 %i.fp, -1
  %i.fr = add i64 %i.fo, %i.fq                    ; 2 uses
  %i.fs = lshr i64 %i.fr, 31
  %i.ft = xor i64 %i.fs, %i.fr
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = add i32 %i.en, -1                       ; 2 uses
  %i.fw = and i32 %i.fv, %i.fu                    ; 2 uses
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.fx ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !211 ; 2 uses
  %i.ga = icmp eq ptr %i.ed, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.eh
  %i.ge = select i1 %i.ga, i1 %i.gd, i1 false
  br i1 %i.ge, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i19, !prof !52

.lr.ph.i19:                                       ; preds = %bb.p, %bb.r
  %i.gf = phi ptr [ %i.gy, %bb.r ], [ %i.gc, %bb.p ] ; 2 uses
  %i.gg = phi ptr [ %i.gv, %bb.r ], [ %i.fz, %bb.p ] ; 2 uses
  %i.gh = phi ptr [ %i.gu, %bb.r ], [ %i.fy, %bb.p ] ; 2 uses
  %.02548.i = phi i32 [ %i.gq, %bb.r ], [ 1, %bb.p ] ; 2 uses
  %.02747.i = phi i32 [ %i.gs, %bb.r ], [ %i.fw, %bb.p ]
  %.02946.i = phi ptr [ %spec.select.i, %bb.r ], [ null, %bb.p ] ; 4 uses
  %i.gi = icmp eq ptr %i.gg, inttoptr (i64 -8 to ptr)
  %i.gj = icmp eq ptr %i.gf, inttoptr (i64 -8 to ptr)
  %i.gk = select i1 %i.gi, i1 %i.gj, i1 false
  br i1 %i.gk, label %bb.q, label %bb.r, !prof !53

bb.q:                                             ; preds = %.lr.ph.i19
  %.not.i20 = icmp eq ptr %.02946.i, null
  %i.gl = select i1 %.not.i20, ptr %i.gh, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit

bb.r:                                             ; preds = %.lr.ph.i19
  %i.gm = icmp eq ptr %i.gg, inttoptr (i64 -16 to ptr)
  %i.gn = icmp eq ptr %i.gf, inttoptr (i64 -16 to ptr)
  %i.go = select i1 %i.gm, i1 %i.gn, i1 false
  %i.gp = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.go, i1 %i.gp, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.gh, ptr %.02946.i
  %i.gq = add i32 %.02548.i, 1
  %i.gr = add i32 %.02747.i, %.02548.i
  %i.gs = and i32 %i.gr, %i.fv                    ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.gt ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !211 ; 2 uses
  %i.gw = icmp eq ptr %i.ed, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8            ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.eh
  %i.ha = select i1 %i.gw, i1 %i.gz, i1 false
  br i1 %i.ha, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i19, !prof !54, !llvm.loop !235

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i: ; preds = %bb.r, %bb.p
  %i.hb = phi i64 [ %i.fx, %bb.p ], [ %i.gt, %bb.r ]
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.hb
  %.phi.trans.insert10.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %.pre11.i.i = load i32, ptr %.phi.trans.insert10.i.i, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit: ; preds = %bb.q, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %.sink.i = phi ptr [ %i.gl, %bb.q ], [ null, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i ]
  %i.hd = lshr i32 %i.ei, 1                       ; 2 uses
  %i.he = shl i32 %i.hd, 2
  %i.hf = add i32 %i.he, 4
  %i.hg = mul i32 %i.en, 3
  %.not.i = icmp ult i32 %i.hf, %i.hg
  br i1 %.not.i, label %bb.t, label %bb.s, !prof !53

bb.s:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.hh = shl i32 %i.en, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.eb, i32 noundef %i.hh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.hi = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.hj = load ptr, ptr %i.d, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.v

bb.t:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !207
  %.neg.i = xor i32 %i.hd, -1
  %.neg13.i = add i32 %i.en, %.neg.i
  %i.hm = sub i32 %.neg13.i, %i.hl
  %i.hn = lshr i32 %i.en, 3
  %.not9.i = icmp ugt i32 %i.hm, %i.hn
  br i1 %.not9.i, label %bb.v, label %bb.u, !prof !53

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.eb, i32 noundef %i.en)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ho = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0.i17 = phi ptr [ %.sink.i, %bb.t ], [ %i.hp, %bb.u ], [ %i.hj, %bb.s ] ; 4 uses
  %i.hq = load i32, ptr %i.eb, align 8            ; 2 uses
  %i.hr = and i32 %i.hq, -2
  %i.hs = add i32 %i.hr, 2
  %i.ht = and i32 %i.hq, 1
  %i.hu = or disjoint i32 %i.hs, %i.ht
  store i32 %i.hu, ptr %i.eb, align 8
  %i.hv = load ptr, ptr %.0.i17, align 8, !tbaa !211
  %i.hw = icmp eq ptr %i.hv, inttoptr (i64 -8 to ptr)
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i17, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = icmp eq ptr %i.hy, inttoptr (i64 -8 to ptr)
  %i.ia = select i1 %i.hw, i1 %i.hz, i1 false
  br i1 %i.ia, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ib = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !207
  %i.id = add i32 %i.ic, -1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit: ; preds = %bb.v, %bb.w
  %i.ie = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.ie, ptr %.0.i17, align 8, !tbaa !211
  %i.if = load ptr, ptr %i.h, align 8, !tbaa !32
  store ptr %i.if, ptr %i.hx, align 8, !tbaa !214
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i17, i64 16
  store i32 0, ptr %i.ig, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit
  %i.ih = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit ], [ %.pre11.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i ]
  %i.ii = icmp sgt i32 %i.ec, %i.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %i.ii, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit, !llvm.loop !250

_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit, %bb.g
  %.09.lcssa.i = phi ptr [ %.057, %bb.g ], [ %i.u, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.x

bb.x:                                             ; preds = %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit, %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit
  %.0 = getelementptr inbounds nuw i8, ptr %.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !251

.loopexit:                                        ; preds = %bb.x, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt26__unguarded_insertion_sortIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %4 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 6 uses
  %6 = alloca %"class.llvh::cfg::Update", align 8 ; 7 uses
  %.not44 = icmp eq ptr %0, %1
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit
  %.045 = phi ptr [ %0, %.lr.ph ], [ %i.hx, %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.045, i64 16, i1 false), !tbaa.struct !238
  %.010.i = getelementptr inbounds i8, ptr %.045, i64 -16 ; 2 uses
  %i.h = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %.010.i)
  br i1 %i.h, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit

.lr.ph.i:                                         ; preds = %bb.b, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit
  %i.i = phi ptr [ %.0.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.010.i, %bb.b ] ; 5 uses
  %.012.i = phi ptr [ %i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.045, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !238
  %.0.i = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %7 = load ptr, ptr %5, align 8, !tbaa !240, !nonnull !29, !align !243 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.j = load ptr, ptr %6, align 8, !tbaa !173    ; 4 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !177
  %i.l = and i64 %i.k, -8                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !211
  store ptr %i.m, ptr %i.f, align 8, !tbaa !214
  %i.n = load i32, ptr %7, align 8                ; 2 uses
  %i.o = and i32 %i.n, 1
  %.not.i.i.i18 = icmp eq i32 %i.o, 0             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i18, ptr %i.q, ptr %i.p ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = select i1 %.not.i.i.i18, i32 %i.t, i32 4 ; 7 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = ptrtoint ptr %i.j to i64
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = lshr i32 %i.x, 4
  %i.z = lshr i32 %i.x, 9
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 32
  %i.ad = trunc i64 %i.l to i32                   ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = lshr i32 %i.ad, 9
  %i.ag = xor i32 %i.ae, %i.af
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = or disjoint i64 %i.ac, %i.ah
  %i.aj = shl nuw nsw i64 %i.ah, 32
  %i.ak = xor i64 %i.aj, -1
  %i.al = add nsw i64 %i.ai, %i.ak                ; 2 uses
  %i.am = lshr i64 %i.al, 22
  %i.an = xor i64 %i.am, %i.al                    ; 2 uses
  %i.ao = shl i64 %i.an, 13
  %i.ap = xor i64 %i.ao, -1
  %i.aq = add i64 %i.an, %i.ap                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 8
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, 9                        ; 2 uses
  %i.au = lshr i64 %i.at, 15
  %i.av = xor i64 %i.au, %i.at                    ; 2 uses
  %i.aw = shl i64 %i.av, 27
  %i.ax = xor i64 %i.aw, -1
  %i.ay = add i64 %i.av, %i.ax                    ; 2 uses
  %i.az = lshr i64 %i.ay, 31
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = add i32 %i.u, -1                        ; 2 uses
  %i.bd = and i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.be ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !211 ; 2 uses
  %i.bh = icmp eq ptr %i.j, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.m
  %i.bl = select i1 %i.bh, i1 %i.bk, i1 false
  br i1 %i.bl, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i19, !prof !52

.lr.ph.i19:                                       ; preds = %bb.c, %bb.e
  %i.bm = phi ptr [ %i.cf, %bb.e ], [ %i.bj, %bb.c ] ; 2 uses
  %i.bn = phi ptr [ %i.cc, %bb.e ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bo = phi ptr [ %i.cb, %bb.e ], [ %i.bf, %bb.c ] ; 2 uses
  %.02548.i20 = phi i32 [ %i.bx, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02747.i21 = phi i32 [ %i.bz, %bb.e ], [ %i.bd, %bb.c ]
  %.02946.i22 = phi ptr [ %spec.select.i24, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bp = icmp eq ptr %i.bn, inttoptr (i64 -8 to ptr)
  %i.bq = icmp eq ptr %i.bm, inttoptr (i64 -8 to ptr)
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %.lr.ph.i19
  %.not.i27 = icmp eq ptr %.02946.i22, null
  %i.bs = select i1 %.not.i27, ptr %i.bo, ptr %.02946.i22
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28

bb.e:                                             ; preds = %.lr.ph.i19
  %i.bt = icmp eq ptr %i.bn, inttoptr (i64 -16 to ptr)
  %i.bu = icmp eq ptr %i.bm, inttoptr (i64 -16 to ptr)
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  %i.bw = icmp eq ptr %.02946.i22, null
  %or.cond.not.i23 = select i1 %i.bv, i1 %i.bw, i1 false
  %spec.select.i24 = select i1 %or.cond.not.i23, ptr %i.bo, ptr %.02946.i22
  %i.bx = add i32 %.02548.i20, 1
  %i.by = add i32 %.02747.i21, %.02548.i20
  %i.bz = and i32 %i.by, %i.bc                    ; 2 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.ca ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !211 ; 2 uses
  %i.cd = icmp eq ptr %i.j, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.m
  %i.ch = select i1 %i.cd, i1 %i.cg, i1 false
  br i1 %i.ch, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i19, !prof !54, !llvm.loop !235

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i: ; preds = %bb.e, %bb.c
  %i.ci = phi i64 [ %i.be, %bb.c ], [ %i.ca, %bb.e ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.ci
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28: ; preds = %bb.d, %.lr.ph.i
  %.sink.i25 = phi ptr [ %i.bs, %bb.d ], [ null, %.lr.ph.i ]
  %i.ck = lshr i32 %i.n, 1                        ; 2 uses
  %i.cl = shl i32 %i.ck, 2
  %i.cm = add i32 %i.cl, 4
  %i.cn = mul i32 %i.u, 3
  %.not.i12 = icmp ult i32 %i.cm, %i.cn
  br i1 %.not.i12, label %bb.g, label %bb.f, !prof !53

bb.f:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28
  %i.co = shl i32 %i.u, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %7, i32 noundef %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.cp = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.i

bb.g:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !207
  %.neg.i14 = xor i32 %i.ck, -1
  %.neg13.i15 = add i32 %i.u, %.neg.i14
  %i.ct = sub i32 %.neg13.i15, %i.cs
  %i.cu = lshr i32 %i.u, 3
  %.not9.i16 = icmp ugt i32 %i.ct, %i.cu
  br i1 %.not9.i16, label %bb.i, label %bb.h, !prof !53

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %7, i32 noundef %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cv = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.i13 = phi ptr [ %.sink.i25, %bb.g ], [ %i.cw, %bb.h ], [ %i.cq, %bb.f ] ; 4 uses
  %i.cx = load i32, ptr %7, align 8               ; 2 uses
  %i.cy = and i32 %i.cx, -2
  %i.cz = add i32 %i.cy, 2
  %i.da = and i32 %i.cx, 1
  %i.db = or disjoint i32 %i.cz, %i.da
  store i32 %i.db, ptr %7, align 8
  %i.dc = load ptr, ptr %.0.i13, align 8, !tbaa !211
  %i.dd = icmp eq ptr %i.dc, inttoptr (i64 -8 to ptr)
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = icmp eq ptr %i.df, inttoptr (i64 -8 to ptr)
  %i.dh = select i1 %i.dd, i1 %i.dg, i1 false
  br i1 %i.dh, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !207
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17: ; preds = %bb.i, %bb.j
  %i.dl = load ptr, ptr %3, align 8, !tbaa !32
  store ptr %i.dl, ptr %.0.i13, align 8, !tbaa !211
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !32
  store ptr %i.dm, ptr %i.de, align 8, !tbaa !214
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  store i32 0, ptr %i.dn, align 8, !tbaa !3
  %.pre54 = load ptr, ptr %5, align 8, !tbaa !240 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre54, i64 16
  %.pre55 = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i
  %i.do = phi i32 [ %.pre55, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17 ], [ %i.t, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  %i.dp = phi ptr [ %.pre54, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17 ], [ %7, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ] ; 10 uses
  %i.dq = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17 ], [ %.pre.i.i, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.dr = load ptr, ptr %.0.i, align 8, !tbaa !173 ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !177
  %i.du = and i64 %i.dt, -8                       ; 2 uses
  %i.dv = inttoptr i64 %i.du to ptr               ; 3 uses
  store ptr %i.dr, ptr %4, align 8, !tbaa !211
  store ptr %i.dv, ptr %i.g, align 8, !tbaa !214
  %i.dw = load i32, ptr %i.dp, align 8            ; 2 uses
  %i.dx = and i32 %i.dw, 1
  %.not.i.i.i8 = icmp eq i32 %i.dx, 0             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = select i1 %.not.i.i.i8, ptr %i.dz, ptr %i.dy ; 3 uses
  %i.eb = select i1 %.not.i.i.i8, i32 %i.do, i32 4 ; 7 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %i.ed = ptrtoint ptr %i.dr to i64
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = lshr i32 %i.ee, 4
  %i.eg = lshr i32 %i.ee, 9
  %i.eh = xor i32 %i.ef, %i.eg
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 32
  %i.ek = trunc i64 %i.du to i32                  ; 2 uses
  %i.el = lshr i32 %i.ek, 4
  %i.em = lshr i32 %i.ek, 9
  %i.en = xor i32 %i.el, %i.em
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ep = or disjoint i64 %i.ej, %i.eo
  %i.eq = shl nuw nsw i64 %i.eo, 32
  %i.er = xor i64 %i.eq, -1
  %i.es = add nsw i64 %i.ep, %i.er                ; 2 uses
  %i.et = lshr i64 %i.es, 22
  %i.eu = xor i64 %i.et, %i.es                    ; 2 uses
  %i.ev = shl i64 %i.eu, 13
  %i.ew = xor i64 %i.ev, -1
  %i.ex = add i64 %i.eu, %i.ew                    ; 2 uses
  %i.ey = lshr i64 %i.ex, 8
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = mul i64 %i.ez, 9                        ; 2 uses
  %i.fb = lshr i64 %i.fa, 15
  %i.fc = xor i64 %i.fb, %i.fa                    ; 2 uses
  %i.fd = shl i64 %i.fc, 27
  %i.fe = xor i64 %i.fd, -1
  %i.ff = add i64 %i.fc, %i.fe                    ; 2 uses
  %i.fg = lshr i64 %i.ff, 31
  %i.fh = xor i64 %i.fg, %i.ff
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = add i32 %i.eb, -1                       ; 2 uses
  %i.fk = and i32 %i.fj, %i.fi                    ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.fl ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !211 ; 2 uses
  %i.fo = icmp eq ptr %i.dr, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.dv
  %i.fs = select i1 %i.fo, i1 %i.fr, i1 false
  br i1 %i.fs, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i9, !prof !52

.lr.ph.i9:                                        ; preds = %bb.k, %bb.m
  %i.ft = phi ptr [ %i.gm, %bb.m ], [ %i.fq, %bb.k ] ; 2 uses
  %i.fu = phi ptr [ %i.gj, %bb.m ], [ %i.fn, %bb.k ] ; 2 uses
  %i.fv = phi ptr [ %i.gi, %bb.m ], [ %i.fm, %bb.k ] ; 2 uses
  %.02548.i = phi i32 [ %i.ge, %bb.m ], [ 1, %bb.k ] ; 2 uses
  %.02747.i = phi i32 [ %i.gg, %bb.m ], [ %i.fk, %bb.k ]
  %.02946.i = phi ptr [ %spec.select.i, %bb.m ], [ null, %bb.k ] ; 4 uses
  %i.fw = icmp eq ptr %i.fu, inttoptr (i64 -8 to ptr)
  %i.fx = icmp eq ptr %i.ft, inttoptr (i64 -8 to ptr)
  %i.fy = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %i.fy, label %bb.l, label %bb.m, !prof !53

bb.l:                                             ; preds = %.lr.ph.i9
  %.not.i10 = icmp eq ptr %.02946.i, null
  %i.fz = select i1 %.not.i10, ptr %i.fv, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit

bb.m:                                             ; preds = %.lr.ph.i9
  %i.ga = icmp eq ptr %i.fu, inttoptr (i64 -16 to ptr)
  %i.gb = icmp eq ptr %i.ft, inttoptr (i64 -16 to ptr)
  %i.gc = select i1 %i.ga, i1 %i.gb, i1 false
  %i.gd = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.gc, i1 %i.gd, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.fv, ptr %.02946.i
  %i.ge = add i32 %.02548.i, 1
  %i.gf = add i32 %.02747.i, %.02548.i
  %i.gg = and i32 %i.gf, %i.fj                    ; 2 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.gh ; 3 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !211 ; 2 uses
  %i.gk = icmp eq ptr %i.dr, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8            ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.dv
  %i.go = select i1 %i.gk, i1 %i.gn, i1 false
  br i1 %i.go, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i9, !prof !54, !llvm.loop !235

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i: ; preds = %bb.m, %bb.k
  %i.gp = phi i64 [ %i.fl, %bb.k ], [ %i.gh, %bb.m ]
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.gp
  %.phi.trans.insert10.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %.pre11.i.i = load i32, ptr %.phi.trans.insert10.i.i, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit: ; preds = %bb.l, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %.sink.i = phi ptr [ %i.fz, %bb.l ], [ null, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i ]
  %i.gr = lshr i32 %i.dw, 1                       ; 2 uses
  %i.gs = shl i32 %i.gr, 2
  %i.gt = add i32 %i.gs, 4
  %i.gu = mul i32 %i.eb, 3
  %.not.i = icmp ult i32 %i.gt, %i.gu
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !53

bb.n:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.gv = shl i32 %i.eb, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.dp, i32 noundef %i.gv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.gw = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.gx = load ptr, ptr %i.d, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.q

bb.o:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !207
  %.neg.i = xor i32 %i.gr, -1
  %.neg13.i = add i32 %i.eb, %.neg.i
  %i.ha = sub i32 %.neg13.i, %i.gz
  %i.hb = lshr i32 %i.eb, 3
  %.not9.i = icmp ugt i32 %i.ha, %i.hb
  br i1 %.not9.i, label %bb.q, label %bb.p, !prof !53

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.dp, i32 noundef %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.hc = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.hd = load ptr, ptr %i.c, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0.i7 = phi ptr [ %.sink.i, %bb.o ], [ %i.hd, %bb.p ], [ %i.gx, %bb.n ] ; 4 uses
  %i.he = load i32, ptr %i.dp, align 8            ; 2 uses
  %i.hf = and i32 %i.he, -2
  %i.hg = add i32 %i.hf, 2
  %i.hh = and i32 %i.he, 1
  %i.hi = or disjoint i32 %i.hg, %i.hh
  store i32 %i.hi, ptr %i.dp, align 8
  %i.hj = load ptr, ptr %.0.i7, align 8, !tbaa !211
  %i.hk = icmp eq ptr %i.hj, inttoptr (i64 -8 to ptr)
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = icmp eq ptr %i.hm, inttoptr (i64 -8 to ptr)
  %i.ho = select i1 %i.hk, i1 %i.hn, i1 false
  br i1 %i.ho, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !207
  %i.hr = add i32 %i.hq, -1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit: ; preds = %bb.q, %bb.r
  %i.hs = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.hs, ptr %.0.i7, align 8, !tbaa !211
  %i.ht = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.ht, ptr %i.hl, align 8, !tbaa !214
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i7, i64 16
  store i32 0, ptr %i.hu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit
  %i.hv = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit ], [ %.pre11.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i ]
  %i.hw = icmp sgt i32 %i.dq, %i.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %i.hw, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit, !llvm.loop !250

_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit, %bb.b
  %.09.lcssa.i = phi ptr [ %.045, %bb.b ], [ %i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.hx = getelementptr inbounds nuw i8, ptr %.045, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.hx, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !252
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.81", align 8     ; 8 uses
  %4 = alloca %"struct.std::pair.81", align 8     ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !240, !nonnull !29, !align !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.d = load ptr, ptr %1, align 8, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.d, ptr %3, align 8, !tbaa !211
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.j = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !215  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br i1 %i.j, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i, label %bb.b

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.k) ; 3 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !32
  store ptr %i.m, ptr %i.l, align 8, !tbaa !211
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !214
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i: ; preds = %bb.b, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i
  %i.q = phi i32 [ 0, %bb.b ], [ %.pre.i, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !240, !nonnull !29, !align !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.s = load ptr, ptr %2, align 8, !tbaa !173
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !177
  %i.v = and i64 %i.u, -8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.s, ptr %4, align 8, !tbaa !211
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.y = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.y, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i, label %bb.c

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i
  %.phi.trans.insert10.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.pre11.i = load i32, ptr %.phi.trans.insert10.i, align 4, !tbaa !3
  br label %_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit

bb.c:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i
  %i.aa = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.z) ; 3 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !211
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !214
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !3
  br label %_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit

_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i, %bb.c
  %i.af = phi i32 [ 0, %bb.c ], [ %.pre11.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i ]
  %i.ag = icmp sgt i32 %i.q, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170
  %i.c = load ptr, ptr %0, align 8, !tbaa !171    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !170
  %i.r = zext i32 %.sroa.speculated.i to i64
  %i.s = mul nuw nsw i64 %i.r, 56
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #16 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !171
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !225
  %i.w = load i32, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = mul nuw nsw i64 %i.x, 56            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i.i, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.z = add nsw i64 %.idx.i.i, -56               ; 2 uses
  %i.aa = udiv i64 %i.z, 56
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 56 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !253

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.prol ]
  %i.ad = icmp ult i64 %i.z, 392
  br i1 %i.ad, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 168
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 224
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 280
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 336
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 392
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 448 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.i.7, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit, label %.lr.ph.i.i, !llvm.loop !228

bb.c:                                             ; preds = %bb.a
  %i.am = zext i32 %i.b to i64
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.am
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E18moveFromOldBucketsEPSJ_SM_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.an)
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #13
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit

_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E18moveFromOldBucketsEPSJ_SM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !225
  %i.c = load ptr, ptr %0, align 8, !tbaa !171    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !170  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = mul nuw nsw i64 %i.f, 56              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E9initEmptyEv.exit, label %.lr.ph.i.preheader

end_hunk_0
