Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %bound0 = icmp ult ptr %i.cql, %scevgep1860
  %bound1 = icmp ult ptr %i.dz, %scevgep1859
  %found.conflict = and i1 %bound0, %bound1
  %bound01862 = icmp ult ptr %i.cql, %scevgep1861
  %bound11863 = icmp ult ptr %i.cqm, %scevgep1859
  %found.conflict1864 = and i1 %bound01862, %bound11863
  %conflict.rdx = or i1 %found.conflict, %found.conflict1864
  br i1 %conflict.rdx, label %scalar.ph1865.preheader, label %vector.ph1867

vector.ph1867:                                    ; preds = %vector.memcheck1858
  %n.vec1868 = and i64 %wide.trip.count.i788, 4294967292 ; 3 uses
  %i.cqv = load float, ptr %i.cqm, align 4, !tbaa !256, !alias.scope !257
  %broadcast.splatinsert1869 = insertelement <4 x float> poison, float %i.cqv, i64 0
  %broadcast.splat1870 = shufflevector <4 x float> %broadcast.splatinsert1869, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cqw = fneg <4 x float> %broadcast.splat1870  ; 2 uses
  %broadcast.splatinsert1871 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat1872 = shufflevector <4 x float> %broadcast.splatinsert1871, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1873

vector.body1873:                                  ; preds = %pred.store.continue1882, %vector.ph1867
  %index1874 = phi i64 [ 0, %vector.ph1867 ], [ %index.next1883, %pred.store.continue1882 ] ; 6 uses
  %i.cqx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index1874
  %wide.load1875 = load <4 x float>, ptr %i.cqx, align 4, !tbaa !20, !alias.scope !258
  %i.cqy = getelementptr inbounds nuw [4 x i8], ptr %i.cql, i64 %index1874 ; 3 uses
  %wide.load1876 = load <4 x float>, ptr %i.cqy, align 4, !tbaa !20, !alias.scope !259, !noalias !260
  %i.cqz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1875, <4 x float> %broadcast.splat1872, <4 x float> %wide.load1876) ; 3 uses
  store <4 x float> %i.cqz, ptr %i.cqy, align 4, !tbaa !20, !alias.scope !259, !noalias !260
  %i.cra = fcmp olt <4 x float> %i.cqz, %i.cqw    ; 2 uses
  %i.crb = fcmp olt <4 x float> %broadcast.splat1870, %i.cqz
  %i.crc = or <4 x i1> %i.cra, %i.crb             ; 4 uses
  %predphi = select <4 x i1> %i.cra, <4 x float> %i.cqw, <4 x float> %broadcast.splat1870 ; 4 uses
  %i.crd = extractelement <4 x i1> %i.crc, i64 0
  br i1 %i.crd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1873
  %i.cre = extractelement <4 x float> %predphi, i64 0
  store float %i.cre, ptr %i.cqy, align 4, !tbaa !20, !alias.scope !259, !noalias !260
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1873
  %i.crf = extractelement <4 x i1> %i.crc, i64 1
  br i1 %i.crf, label %pred.store.if1877, label %pred.store.continue1878

pred.store.if1877:                                ; preds = %pred.store.continue
  %i.crg = getelementptr inbounds nuw [4 x i8], ptr %i.cql, i64 %index1874
  %i.crh = getelementptr inbounds nuw i8, ptr %i.crg, i64 4
  %i.cri = extractelement <4 x float> %predphi, i64 1
  store float %i.cri, ptr %i.crh, align 4, !tbaa !20, !alias.scope !259, !noalias !260
  br label %pred.store.continue1878

pred.store.continue1878:                          ; preds = %pred.store.if1877, %pred.store.continue
  %i.crj = extractelement <4 x i1> %i.crc, i64 2
  br i1 %i.crj, label %pred.store.if1879, label %pred.store.continue1880

pred.store.if1879:                                ; preds = %pred.store.continue1878
  %i.crk = getelementptr inbounds nuw [4 x i8], ptr %i.cql, i64 %index1874
  %i.crl = getelementptr inbounds nuw i8, ptr %i.crk, i64 8
  %i.crm = extractelement <4 x float> %predphi, i64 2
  store float %i.crm, ptr %i.crl, align 4, !tbaa !20, !alias.scope !259, !noalias !260
  br label %pred.store.continue1880

pred.store.continue1880:                          ; preds = %pred.store.if1879, %pred.store.continue1878
  %i.crn = extractelement <4 x i1> %i.crc, i64 3
  br i1 %i.crn, label %pred.store.if1881, label %pred.store.continue1882

pred.store.if1881:                                ; preds = %pred.store.continue1880
  %i.cro = getelementptr inbounds nuw [4 x i8], ptr %i.cql, i64 %index1874
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cro, i64 12
  %i.crq = extractelement <4 x float> %predphi, i64 3
  store float %i.crq, ptr %i.crp, align 4, !tbaa !20, !alias.scope !259, !noalias !260
  br label %pred.store.continue1882

pred.store.continue1882:                          ; preds = %pred.store.if1881, %pred.store.continue1880
  %index.next1883 = add nuw i64 %index1874, 4     ; 2 uses
  %i.crr = icmp eq i64 %index.next1883, %n.vec1868
  br i1 %i.crr, label %middle.block1884, label %vector.body1873, !llvm.loop !226

middle.block1884:                                 ; preds = %pred.store.continue1882
  %cmp.n1885 = icmp eq i64 %n.vec1868, %wide.trip.count.i788
  br i1 %cmp.n1885, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph1865.preheader

scalar.ph1865.preheader:                          ; preds = %vector.memcheck1858, %.lr.ph.i787, %middle.block1884
  %indvars.iv.i789.ph = phi i64 [ 0, %vector.memcheck1858 ], [ 0, %.lr.ph.i787 ], [ %n.vec1868, %middle.block1884 ]
  br label %scalar.ph1865

scalar.ph1865:                                    ; preds = %scalar.ph1865.preheader, %_Z7btClampIfEvRT_RKS0_S3_.exit.i
  %indvars.iv.i789 = phi i64 [ %indvars.iv.next.i790, %_Z7btClampIfEvRT_RKS0_S3_.exit.i ], [ %indvars.iv.i789.ph, %scalar.ph1865.preheader ] ; 3 uses
  %i.crs = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i789
  %i.crt = load float, ptr %i.crs, align 4, !tbaa !20
  %i.cru = getelementptr inbounds nuw [4 x i8], ptr %i.cql, i64 %indvars.iv.i789 ; 3 uses
  %i.crv = load float, ptr %i.cru, align 4, !tbaa !20
  %i.crw = call float @llvm.fmuladd.f32(float %i.crt, float %1, float %i.crv) ; 3 uses
  store float %i.crw, ptr %i.cru, align 4, !tbaa !20
  %i.crx = load float, ptr %i.cqm, align 4, !tbaa !256 ; 3 uses
  %i.cry = fneg float %i.crx                      ; 2 uses
  %i.crz = fcmp olt float %i.crw, %i.cry
  br i1 %i.crz, label %.sink.split.i.i, label %bb.bo

bb.bo:                                            ; preds = %scalar.ph1865
  %i.csa = fcmp olt float %i.crx, %i.crw
  br i1 %i.csa, label %.sink.split.i.i, label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

.sink.split.i.i:                                  ; preds = %bb.bo, %scalar.ph1865
  %.sink.i.i = phi float [ %i.cry, %scalar.ph1865 ], [ %i.crx, %bb.bo ]
  store float %.sink.i.i, ptr %i.cru, align 4, !tbaa !20
  br label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

_Z7btClampIfEvRT_RKS0_S3_.exit.i:                 ; preds = %.sink.split.i.i, %bb.bo
  %indvars.iv.next.i790 = add nuw nsw i64 %indvars.iv.i789, 1 ; 2 uses
  %exitcond.not.i791 = icmp eq i64 %indvars.iv.next.i790, %wide.trip.count.i788
  br i1 %exitcond.not.i791, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph1865, !llvm.loop !227

_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit: ; preds = %_Z7btClampIfEvRT_RKS0_S3_.exit.i, %middle.block1884, %bb.bn, %._crit_edge1542
  %i.csb = getelementptr inbounds nuw i8, ptr %0, i64 637
  %i.csc = load i8, ptr %i.csb, align 1, !tbaa !234, !range !68, !noundef !69
  %i.csd = trunc nuw i8 %i.csc to i1
  %or.cond = and i1 %i.ol, %i.csd
  br i1 %or.cond, label %.lr.ph1557, label %.loopexit

.lr.ph1557:                                       ; preds = %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  %i.cse = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.csf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.csg = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.csh = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.csi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.csj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.csk = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.csl = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.csm = getelementptr inbounds nuw i8, ptr %10, i64 52
  %wide.trip.count1653 = zext nneg i32 %i.f to i64
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph1557, %._crit_edge1550
  %indvars.iv1650 = phi i64 [ 0, %.lr.ph1557 ], [ %indvars.iv.next1651, %._crit_edge1550 ] ; 4 uses
  %i.csn = load ptr, ptr %i.cse, align 8, !tbaa !47
  %i.cso = getelementptr inbounds nuw [688 x i8], ptr %i.csn, i64 %indvars.iv1650 ; 2 uses
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cso, i64 20
  %i.csq = load i32, ptr %i.csp, align 4, !tbaa !77
  %indvars.iv.next1651 = add nuw nsw i64 %indvars.iv1650, 1 ; 5 uses
  %i.csr = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %indvars.iv.next1651 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(48) %i.csr, i64 16, i1 false), !tbaa.struct !46
  %i.css = getelementptr inbounds nuw i8, ptr %i.csr, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.csf, ptr noundef nonnull align 4 dereferenceable(16) %i.css, i64 16, i1 false), !tbaa.struct !46
  %i.cst = getelementptr inbounds nuw i8, ptr %i.csr, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.csg, ptr noundef nonnull align 4 dereferenceable(16) %i.cst, i64 16, i1 false), !tbaa.struct !46
  %i.csu = getelementptr inbounds nuw i8, ptr %i.cso, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.csh, ptr noundef nonnull align 8 dereferenceable(16) %i.csu, i64 16, i1 false), !tbaa.struct !46
  %i.csv = getelementptr inbounds nuw [48 x i8], ptr %i.ek, i64 %indvars.iv.next1651 ; 6 uses
  %.sroa.201212.0..sroa_idx1213 = getelementptr inbounds nuw i8, ptr %i.csv, i64 8
  %.sroa.201212.0.copyload1214 = load float, ptr %.sroa.201212.0..sroa_idx1213, align 4 ; 4 uses
  %i.csw = getelementptr inbounds nuw i8, ptr %i.csv, i64 16
  %.sroa.461242.16..sroa_idx1243 = getelementptr inbounds nuw i8, ptr %i.csv, i64 24
  %.sroa.461242.16.copyload1244 = load float, ptr %.sroa.461242.16..sroa_idx1243, align 4 ; 4 uses
  %i.csx = getelementptr inbounds nuw i8, ptr %i.csv, i64 32
  %i.csy = load <2 x float>, ptr %i.csv, align 4  ; 4 uses
  %i.csz = load <2 x float>, ptr %i.csw, align 4  ; 4 uses
  %i.cta = load <2 x float>, ptr %i.csx, align 4  ; 4 uses
  %.sroa.72.32..sroa_idx1273 = getelementptr inbounds nuw i8, ptr %i.csv, i64 40
  %.sroa.72.32.copyload1274 = load float, ptr %.sroa.72.32..sroa_idx1273, align 4 ; 4 uses
  %i.ctb = sext i32 %i.csq to i64
  %i.ctc = getelementptr [32 x i8], ptr %i.eb, i64 %i.ctb ; 6 uses
  %i.ctd = getelementptr i8, ptr %i.ctc, i64 32
  %i.cte = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %indvars.iv.next1651 ; 7 uses
  %i.ctf = load float, ptr %i.ctd, align 4, !tbaa !20
  %i.ctg = getelementptr i8, ptr %i.ctc, i64 36
  %i.cth = load float, ptr %i.ctg, align 4, !tbaa !20
  %i.cti = load float, ptr %i.csi, align 8, !tbaa !20
  %i.ctj = getelementptr i8, ptr %i.ctc, i64 40
  %i.ctk = load float, ptr %i.ctj, align 4, !tbaa !20
  %i.ctl = load <4 x float>, ptr %i.csj, align 8
  %i.ctm = shufflevector <4 x float> %i.ctl, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ctn = load float, ptr %i.csl, align 8, !tbaa !20 ; 2 uses
  %.sroa.42.0..sroa_idx.i795 = getelementptr inbounds nuw i8, ptr %i.cte, i64 8 ; 2 uses
  %i.cto = getelementptr i8, ptr %i.ctc, i64 48
  %i.ctp = load float, ptr %i.cto, align 4, !tbaa !20 ; 2 uses
  %i.ctq = getelementptr i8, ptr %i.ctc, i64 52
  %i.ctr = load float, ptr %i.ctq, align 4, !tbaa !20 ; 2 uses
  %i.cts = getelementptr i8, ptr %i.ctc, i64 56
  %i.ctt = load float, ptr %i.cts, align 4, !tbaa !20 ; 2 uses
  %i.ctu = load <2 x float>, ptr %10, align 8, !tbaa !20 ; 2 uses
  %i.ctv = load <2 x float>, ptr %i.csf, align 8, !tbaa !20 ; 2 uses
  %i.ctw = load <2 x float>, ptr %i.csg, align 8, !tbaa !20 ; 4 uses
  %i.ctx = shufflevector <2 x float> %i.ctw, <2 x float> %i.ctu, <2 x i32> <i32 1, i32 3>
  %i.cty = insertelement <2 x float> poison, float %i.cth, i64 0
  %i.ctz = shufflevector <2 x float> %i.cty, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cua = fmul <2 x float> %i.ctx, %i.ctz
  %i.cub = shufflevector <2 x float> %i.ctv, <2 x float> %i.ctw, <2 x i32> <i32 1, i32 3>
  %i.cuc = fmul <2 x float> %i.ctz, %i.cub
  %i.cud = shufflevector <2 x float> %i.ctw, <2 x float> %i.ctu, <2 x i32> <i32 0, i32 2>
  %i.cue = insertelement <2 x float> poison, float %i.ctf, i64 0
  %i.cuf = shufflevector <2 x float> %i.cue, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cug = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cud, <2 x float> %i.cuf, <2 x float> %i.cua)
  %i.cuh = shufflevector <2 x float> %i.ctv, <2 x float> %i.ctw, <2 x i32> <i32 0, i32 2>
  %i.cui = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cuh, <2 x float> %i.cuf, <2 x float> %i.cuc)
  %i.cuj = insertelement <2 x float> poison, float %i.ctn, i64 0
  %i.cuk = insertelement <2 x float> %i.cuj, float %i.cti, i64 1
  %i.cul = insertelement <2 x float> poison, float %i.ctk, i64 0
  %i.cum = shufflevector <2 x float> %i.cul, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cun = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cuk, <2 x float> %i.cum, <2 x float> %i.cug) ; 5 uses
  %i.cuo = insertelement <2 x float> %i.ctm, float %i.ctn, i64 1
  %i.cup = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cuo, <2 x float> %i.cum, <2 x float> %i.cui) ; 4 uses
  %i.cuq = shufflevector <2 x float> %i.cun, <2 x float> %i.cup, <2 x i32> <i32 1, i32 2>
  %i.cur = insertelement <2 x float> %i.cun, float 0.000000e+00, i64 1
  store <2 x float> %i.cuq, ptr %i.cte, align 4
  store <2 x float> %i.cur, ptr %.sroa.42.0..sroa_idx.i795, align 4, !tbaa !21
  %i.cus = load <2 x float>, ptr %i.csm, align 4, !tbaa !20 ; 3 uses
  %i.cut = load float, ptr %i.csh, align 8, !tbaa !20 ; 2 uses
  %i.cuu = fneg <2 x float> %i.cup
  %i.cuv = shufflevector <2 x float> %i.cus, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cuw = insertelement <2 x float> %i.cuv, float %i.cut, i64 1
  %i.cux = fmul <2 x float> %i.cuw, %i.cuu
  %i.cuy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cus, <2 x float> %i.cun, <2 x float> %i.cux)
  %i.cuz = extractelement <2 x float> %i.cun, i64 1
  %i.cva = fneg float %i.cuz
  %i.cvb = extractelement <2 x float> %i.cus, i64 0
  %i.cvc = fmul float %i.cvb, %i.cva
  %i.cvd = extractelement <2 x float> %i.cup, i64 0
  %i.cve = call float @llvm.fmuladd.f32(float %i.cut, float %i.cvd, float %i.cvc)
  %i.cvf = load <2 x float>, ptr %10, align 8, !tbaa !20 ; 2 uses
  %i.cvg = load <4 x float>, ptr %i.csi, align 8
  %i.cvh = shufflevector <4 x float> %i.cvg, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cvi = load <2 x float>, ptr %i.csf, align 8, !tbaa !20 ; 2 uses
  %i.cvj = insertelement <2 x float> poison, float %i.ctr, i64 0
  %i.cvk = shufflevector <2 x float> %i.cvj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cvl = shufflevector <2 x float> %i.cvf, <2 x float> %i.cvi, <2 x i32> <i32 1, i32 3>
  %i.cvm = fmul <2 x float> %i.cvk, %i.cvl
  %i.cvn = shufflevector <2 x float> %i.cvf, <2 x float> %i.cvi, <2 x i32> <i32 0, i32 2>
  %i.cvo = insertelement <2 x float> poison, float %i.ctp, i64 0
  %i.cvp = shufflevector <2 x float> %i.cvo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cvq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cvn, <2 x float> %i.cvp, <2 x float> %i.cvm)
  %i.cvr = load float, ptr %i.csj, align 8, !tbaa !20
  %i.cvs = insertelement <2 x float> %i.cvh, float %i.cvr, i64 1
  %i.cvt = insertelement <2 x float> poison, float %i.ctt, i64 0
  %i.cvu = shufflevector <2 x float> %i.cvt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cvv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cvs, <2 x float> %i.cvu, <2 x float> %i.cvq)
  %i.cvw = load float, ptr %i.csg, align 8, !tbaa !20
  %i.cvx = load float, ptr %i.csk, align 4, !tbaa !20
  %i.cvy = fmul float %i.ctr, %i.cvx
  %i.cvz = call float @llvm.fmuladd.f32(float %i.cvw, float %i.ctp, float %i.cvy)
  %i.cwa = load float, ptr %i.csl, align 8, !tbaa !20
  %i.cwb = call noundef float @llvm.fmuladd.f32(float %i.cwa, float %i.ctt, float %i.cvz)
  %i.cwc = fsub <2 x float> %i.cvv, %i.cuy        ; 2 uses
  %i.cwd = fsub float %i.cwb, %i.cve              ; 2 uses
  %.sroa.3.12.vec.insert.i37.i798 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cwd, i64 0
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.cte, i64 16 ; 3 uses
  store <2 x float> %i.cwc, ptr %i.cwe, align 4
  %.sroa.4.0..sroa_idx.i799 = getelementptr inbounds nuw i8, ptr %i.cte, i64 24 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i37.i798, ptr %.sroa.4.0..sroa_idx.i799, align 4, !tbaa !21
  %i.cwf = load ptr, ptr %i.cse, align 8, !tbaa !47
  %i.cwg = getelementptr inbounds nuw [688 x i8], ptr %i.cwf, i64 %indvars.iv1650 ; 7 uses
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwg, i64 556
  %i.cwi = load i32, ptr %i.cwh, align 4, !tbaa !79 ; 2 uses
  %i.cwj = icmp sgt i32 %i.cwi, 0
  br i1 %i.cwj, label %.lr.ph1549, label %._crit_edge1550

.lr.ph1549:                                       ; preds = %bb.bp
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwg, i64 136
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwg, i64 328
  %i.cwm = load i32, ptr %i.cwl, align 8, !tbaa !86
  %i.cwn = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.cwo = sext i32 %i.cwm to i64
  %i.cwp = getelementptr [4 x i8], ptr %i.cwn, i64 %i.cwo
  %i.cwq = getelementptr i8, ptr %i.cwp, i64 24
  %wide.trip.count1648 = zext nneg i32 %i.cwi to i64
  br label %bb.bq

._crit_edge1550:                                  ; preds = %bb.bq, %bb.bp
  %.sroa.01283.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %i.czd, %bb.bq ] ; 5 uses
  %.sroa.24.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %.sroa.24.8.vec.insert1332, %bb.bq ] ; 3 uses
  %.sroa.341333.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %i.czh, %bb.bq ] ; 5 uses
  %.sroa.511362.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %.sroa.511362.24.vec.insert1377, %bb.bq ] ; 2 uses
  %.sroa.01283.0.vec.extract1292 = extractelement <2 x float> %.sroa.01283.4.lcssa, i64 0
  %.sroa.01283.4.vec.extract1309 = extractelement <2 x float> %.sroa.01283.4.lcssa, i64 1
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cte, i64 4
  %.sroa.24.8.vec.extract1326 = extractelement <2 x float> %.sroa.24.4.lcssa, i64 0
  %.sroa.341333.16.vec.extract1342 = extractelement <2 x float> %.sroa.341333.4.lcssa, i64 0
  %.sroa.341333.20.vec.extract1355 = extractelement <2 x float> %.sroa.341333.4.lcssa, i64 1
  %i.cws = getelementptr inbounds nuw i8, ptr %i.cte, i64 20
  %i.cwt = fadd <2 x float> %.sroa.341333.4.lcssa, %i.cwc
  store <2 x float> %i.cwt, ptr %i.cwe, align 4, !tbaa !20
  %.sroa.511362.24.vec.extract1371 = extractelement <2 x float> %.sroa.511362.4.lcssa, i64 0 ; 2 uses
  %i.cwu = fadd float %.sroa.511362.24.vec.extract1371, %i.cwd
  store float %i.cwu, ptr %.sroa.4.0..sroa_idx.i799, align 4, !tbaa !20
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwg, i64 72
  %12 = shufflevector <2 x float> %.sroa.24.4.lcssa, <2 x float> %.sroa.01283.4.lcssa, <3 x i32> <i32 0, i32 2, i32 3>
  %13 = shufflevector <2 x float> %i.cun, <2 x float> %i.cup, <3 x i32> <i32 0, i32 1, i32 2>
  %14 = fadd <3 x float> %12, %13                 ; 6 uses
  %i.cww = extractelement <3 x float> %14, i64 1  ; 2 uses
  store float %i.cww, ptr %i.cte, align 4, !tbaa !20
  %15 = extractelement <3 x float> %14, i64 2     ; 2 uses
  store float %15, ptr %i.cwr, align 4, !tbaa !20
  %16 = extractelement <3 x float> %14, i64 0     ; 2 uses
  store float %16, ptr %.sroa.42.0..sroa_idx.i795, align 4, !tbaa !20
  %17 = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %18 = fmul <2 x float> %i.csz, %17
  %19 = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cwx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csy, <2 x float> %19, <2 x float> %18)
  %i.cwy = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cwz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cta, <2 x float> %i.cwy, <2 x float> %i.cwx)
  %i.cxa = fmul float %.sroa.461242.16.copyload1244, %15
  %i.cxb = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %i.cww, float %i.cxa)
  %i.cxc = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %16, float %i.cxb)
  %.sroa.3.12.vec.insert.i.i802 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cxc, i64 0
  store <2 x float> %i.cwz, ptr %i.cwv, align 4
  %.sroa.42.0..sroa_idx.i803 = getelementptr inbounds nuw i8, ptr %i.cwg, i64 80
  store <2 x float> %.sroa.3.12.vec.insert.i.i802, ptr %.sroa.42.0..sroa_idx.i803, align 4, !tbaa !21
  %i.cxd = load float, ptr %i.cws, align 4, !tbaa !20 ; 2 uses
  %i.cxe = load float, ptr %i.cwe, align 4, !tbaa !20 ; 2 uses
  %i.cxf = load float, ptr %.sroa.4.0..sroa_idx.i799, align 4, !tbaa !20 ; 2 uses
  %i.cxg = insertelement <2 x float> poison, float %i.cxd, i64 0
  %i.cxh = shufflevector <2 x float> %i.cxg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxi = fmul <2 x float> %i.csz, %i.cxh
  %i.cxj = insertelement <2 x float> poison, float %i.cxe, i64 0
  %i.cxk = shufflevector <2 x float> %i.cxj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csy, <2 x float> %i.cxk, <2 x float> %i.cxi)
  %i.cxm = insertelement <2 x float> poison, float %i.cxf, i64 0
  %i.cxn = shufflevector <2 x float> %i.cxm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cta, <2 x float> %i.cxn, <2 x float> %i.cxl)
  %i.cxp = fmul float %.sroa.461242.16.copyload1244, %i.cxd
  %i.cxq = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %i.cxe, float %i.cxp)
  %i.cxr = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %i.cxf, float %i.cxq)
  %.sroa.3.12.vec.insert.i19.i806 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cxr, i64 0
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cwg, i64 88
  store <2 x float> %i.cxo, ptr %i.cxs, align 4
  %.sroa.4.0..sroa_idx.i807 = getelementptr inbounds nuw i8, ptr %i.cwg, i64 96
  store <2 x float> %.sroa.3.12.vec.insert.i19.i806, ptr %.sroa.4.0..sroa_idx.i807, align 4, !tbaa !21
  %i.cxt = load ptr, ptr %i.cse, align 8, !tbaa !47
  %i.cxu = getelementptr inbounds nuw [688 x i8], ptr %i.cxt, i64 %indvars.iv1650 ; 4 uses
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxu, i64 104
  %i.cxw = shufflevector <2 x float> %.sroa.01283.4.lcssa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cxx = fmul <2 x float> %i.csz, %i.cxw
  %i.cxy = shufflevector <2 x float> %.sroa.01283.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csy, <2 x float> %i.cxy, <2 x float> %i.cxx)
  %i.cya = shufflevector <2 x float> %.sroa.24.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cta, <2 x float> %i.cya, <2 x float> %i.cxz)
  %i.cyc = fmul float %.sroa.461242.16.copyload1244, %.sroa.01283.4.vec.extract1309
  %i.cyd = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %.sroa.01283.0.vec.extract1292, float %i.cyc)
  %i.cye = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %.sroa.24.8.vec.extract1326, float %i.cyd)
  %.sroa.3.12.vec.insert.i.i810 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cye, i64 0
  store <2 x float> %i.cyb, ptr %i.cxv, align 4
  %.sroa.42.0..sroa_idx.i811 = getelementptr inbounds nuw i8, ptr %i.cxu, i64 112
  store <2 x float> %.sroa.3.12.vec.insert.i.i810, ptr %.sroa.42.0..sroa_idx.i811, align 4, !tbaa !21
  %i.cyf = shufflevector <2 x float> %.sroa.341333.4.lcssa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cyg = fmul <2 x float> %i.csz, %i.cyf
  %i.cyh = shufflevector <2 x float> %.sroa.341333.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csy, <2 x float> %i.cyh, <2 x float> %i.cyg)
  %i.cyj = shufflevector <2 x float> %.sroa.511362.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cta, <2 x float> %i.cyj, <2 x float> %i.cyi)
  %i.cyl = fmul float %.sroa.461242.16.copyload1244, %.sroa.341333.20.vec.extract1355
  %i.cym = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %.sroa.341333.16.vec.extract1342, float %i.cyl)
  %i.cyn = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %.sroa.511362.24.vec.extract1371, float %i.cym)
  %.sroa.3.12.vec.insert.i19.i814 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cyn, i64 0
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cxu, i64 120
  store <2 x float> %i.cyk, ptr %i.cyo, align 4
  %.sroa.4.0..sroa_idx.i815 = getelementptr inbounds nuw i8, ptr %i.cxu, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i19.i814, ptr %.sroa.4.0..sroa_idx.i815, align 4, !tbaa !21
  %exitcond1654.not = icmp eq i64 %indvars.iv.next1651, %wide.trip.count1653
  br i1 %exitcond1654.not, label %.loopexit, label %bb.bp, !llvm.loop !228

bb.bq:                                            ; preds = %.lr.ph1549, %bb.bq
  %indvars.iv1645 = phi i64 [ 0, %.lr.ph1549 ], [ %indvars.iv.next1646, %bb.bq ] ; 3 uses
  %.sroa.511362.41546 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %.sroa.511362.24.vec.insert1377, %bb.bq ] ; 2 uses
  %.sroa.341333.41545 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %i.czh, %bb.bq ]
  %.sroa.24.41544 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %.sroa.24.8.vec.insert1332, %bb.bq ] ; 2 uses
  %.sroa.01283.41543 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %i.czd, %bb.bq ]
  %i.cyp = getelementptr inbounds nuw [32 x i8], ptr %i.cwk, i64 %indvars.iv1645 ; 4 uses
  %i.cyq = getelementptr inbounds nuw [4 x i8], ptr %i.cwq, i64 %indvars.iv1645
  %i.cyr = load float, ptr %i.cyq, align 4, !tbaa !20, !noalias !261 ; 3 uses
  %i.cys = getelementptr inbounds nuw i8, ptr %i.cyp, i64 8
  %i.cyt = load float, ptr %i.cys, align 4, !tbaa !20, !noalias !261
  %i.cyu = fmul float %i.cyr, %i.cyt
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyp, i64 16
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyp, i64 24
  %i.cyx = load float, ptr %i.cyw, align 4, !tbaa !20, !noalias !261
  %i.cyy = fmul float %i.cyr, %i.cyx
  %i.cyz = load <2 x float>, ptr %i.cyp, align 4, !tbaa !20, !noalias !261
  %i.cza = insertelement <2 x float> poison, float %i.cyr, i64 0
  %i.czb = shufflevector <2 x float> %i.cza, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.czc = fmul <2 x float> %i.czb, %i.cyz
  %i.czd = fadd <2 x float> %.sroa.01283.41543, %i.czc ; 2 uses
  %.sroa.24.8.vec.extract1330 = extractelement <2 x float> %.sroa.24.41544, i64 0
  %i.cze = fadd float %.sroa.24.8.vec.extract1330, %i.cyu
  %.sroa.24.8.vec.insert1332 = insertelement <2 x float> %.sroa.24.41544, float %i.cze, i64 0 ; 2 uses
  %i.czf = load <2 x float>, ptr %i.cyv, align 4, !tbaa !20, !noalias !261
  %i.czg = fmul <2 x float> %i.czb, %i.czf
  %i.czh = fadd <2 x float> %.sroa.341333.41545, %i.czg ; 2 uses
  %.sroa.511362.24.vec.extract1375 = extractelement <2 x float> %.sroa.511362.41546, i64 0
  %i.czi = fadd float %.sroa.511362.24.vec.extract1375, %i.cyy
  %.sroa.511362.24.vec.insert1377 = insertelement <2 x float> %.sroa.511362.41546, float %i.czi, i64 0 ; 2 uses
  %indvars.iv.next1646 = add nuw nsw i64 %indvars.iv1645, 1 ; 2 uses
  %exitcond1649.not = icmp eq i64 %indvars.iv.next1646, %wide.trip.count1648
  br i1 %exitcond1649.not, label %._crit_edge1550, label %bb.bq, !llvm.loop !231

.loopexit:                                        ; preds = %._crit_edge1550, %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not9 = icmp eq i32 %1, -1
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i32 [ %1, %.lr.ph ], [ %i.k, %bb.c ]
  %i.c = sext i32 %.010 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK11btMultiBody15isBaseKinematicEv.exit, label %_ZNK11btMultiBody15isLinkKinematicEi.exit

_ZNK11btMultiBody15isLinkKinematicEi.exit:        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = load i32, ptr %i.g, align 8, !tbaa !97
  %i.i = and i32 %i.h, 2
  %.not8 = icmp eq i32 %i.i, 0
  br i1 %.not8, label %_ZNK11btMultiBody15isBaseKinematicEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !77   ; 2 uses
  %.not = icmp eq i32 %i.k, -1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89   ; 2 uses
  %.not.i6 = icmp eq ptr %i.m, null
  br i1 %.not.i6, label %_ZNK11btMultiBody15isBaseKinematicEv.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.o = load i32, ptr %i.n, align 8, !tbaa !97
  %i.p = and i32 %i.o, 2
  %i.q = icmp ne i32 %i.p, 0
  br label %_ZNK11btMultiBody15isBaseKinematicEv.exit

_ZNK11btMultiBody15isBaseKinematicEv.exit:        ; preds = %bb.b, %_ZNK11btMultiBody15isLinkKinematicEi.exit, %bb.d, %._crit_edge
  %.05 = phi i1 [ %i.q, %bb.d ], [ false, %._crit_edge ], [ false, %_ZNK11btMultiBody15isLinkKinematicEi.exit ], [ false, %bb.b ]
  ret i1 %.05
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN29btSpatialTransformationMatrix16transformInverseERK22btSymmetricSpatialDyadRS0_NS_16eOutputOperationE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(144) %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !20 ; 5 uses
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !20 ; 6 uses
  %i.f = load float, ptr %i.b, align 4, !tbaa !20 ; 3 uses
  %i.g = fneg float %i.f                          ; 4 uses
  %i.h = extractelement <2 x float> %i.d, i64 0
  %i.i = fneg float %i.h                          ; 4 uses
  %i.j = extractelement <2 x float> %i.e, i64 0
  %i.k = fneg float %i.j                          ; 4 uses
  switch i32 %3, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.u = load <4 x float>, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.w = load <4 x float>, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load <4 x float>, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.aa = load <4 x float>, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.ac = load <4 x float>, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ag = load <4 x float>, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
end_hunk_0
