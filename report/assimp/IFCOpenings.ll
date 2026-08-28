Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC12CloseWindowsERSt6vectorINS0_22ProjectedWindowContourESaIS2_EERK12aiMatrix4x4tIdERS1_IS1_IPNS0_11TempOpeningESaISB_EESaISD_EERNS0_8TempMeshE:bb.a
  %i.ns = load ptr, ptr %i.e, align 8
  %i.nt = ptrtoint ptr %i.ns to i64
  %i.nu = sub i64 %i.nt, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef %i.nu) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i192

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i192: ; preds = %bb.av, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i189
  store ptr %i.nn, ptr %3, align 8
  store ptr %i.nr, ptr %i.d, align 8
  %i.nv = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %i.nl
  store ptr %i.nv, ptr %i.e, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit195

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit195: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i192, %bb.at
  %i.nw = phi ptr [ %i.nr, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i192 ], [ %i.nb, %bb.at ] ; 6 uses
  %i.nx = icmp eq ptr %.sroa.0281.0421, %i.he
  br i1 %i.nx, label %bb.aw, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit227

bb.aw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit195
  %i.ny = zext nneg i32 %.sroa.7296.0419 to i64
  %i.nz = shl nuw i64 1, %i.ny
  %i.oa = load i64, ptr %.sroa.0295.0420, align 8
  %i.ob = and i64 %i.oa, %i.nz
  %.not354 = icmp eq i64 %i.ob, 0
  br i1 %.not354, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.oc = add i64 %.288, -1
  %i.od = load ptr, ptr %i.g, align 8
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 -4
  store ptr %i.oe, ptr %i.g, align 8
  %i.of = getelementptr inbounds i8, ptr %i.nw, i64 -48
  store ptr %i.of, ptr %i.d, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit227

bb.ay:                                            ; preds = %bb.aw
  %i.og = load ptr, ptr %i.e, align 8
  %.not.i196 = icmp eq ptr %i.nw, %i.og
  br i1 %.not.i196, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, ptr noundef nonnull align 8 dereferenceable(24) %.5, i64 24, i1 false)
  %i.oh = load ptr, ptr %i.d, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24 ; 2 uses
  store ptr %i.oi, ptr %i.d, align 8
  %.pre458 = load ptr, ptr %i.e, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit211

bb.ba:                                            ; preds = %bb.ay
  %i.oj = load ptr, ptr %3, align 8               ; 5 uses
  %i.ok = ptrtoint ptr %i.nw to i64
  %i.ol = ptrtoint ptr %i.oj to i64               ; 2 uses
  %i.om = sub i64 %i.ok, %i.ol                    ; 3 uses
  %i.on = icmp eq i64 %i.om, 9223372036854775800
  br i1 %i.on, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i197

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i197: ; preds = %bb.ba
  %i.oo = sdiv exact i64 %i.om, 24                ; 3 uses
  %.sroa.speculated.i.i.i198 = call i64 @llvm.umax.i64(i64 %i.oo, i64 1)
  %i.op = add nsw i64 %.sroa.speculated.i.i.i198, %i.oo ; 2 uses
  %i.oq = icmp ult i64 %i.op, %i.oo
  %i.or = call i64 @llvm.umin.i64(i64 %i.op, i64 384307168202282325)
  %i.os = select i1 %i.oq, i64 384307168202282325, i64 %i.or ; 3 uses
  %.not.i.i.i199 = icmp ne i64 %i.os, 0
  call void @llvm.assume(i1 %.not.i.i.i199)
  %i.ot = mul nuw nsw i64 %i.os, 24
  %i.ou = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ot) #25
          to label %.noexc210 unwind label %.loopexit356 ; 5 uses

.noexc210:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i197
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.om
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ov, ptr noundef nonnull align 8 dereferenceable(24) %.5, i64 24, i1 false)
  %.not10.i.i.i.i.i200 = icmp eq ptr %i.oj, %i.nw
  br i1 %.not10.i.i.i.i.i200, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205, label %.lr.ph.i.i.i.i.i201

.lr.ph.i.i.i.i.i201:                              ; preds = %.noexc210, %.lr.ph.i.i.i.i.i201
  %.012.i.i.i.i.i202 = phi ptr [ %i.ox, %.lr.ph.i.i.i.i.i201 ], [ %i.ou, %.noexc210 ] ; 2 uses
  %.0911.i.i.i.i.i203 = phi ptr [ %i.ow, %.lr.ph.i.i.i.i.i201 ], [ %i.oj, %.noexc210 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i202, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i203, i64 24, i1 false), !alias.scope !171
  %i.ow = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i203, i64 24 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i202, i64 24 ; 2 uses
  %.not.i.i.i.i.i204 = icmp eq ptr %i.ow, %i.nw
  br i1 %.not.i.i.i.i.i204, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205, label %.lr.ph.i.i.i.i.i201, !llvm.loop !49

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205: ; preds = %.lr.ph.i.i.i.i.i201, %.noexc210
  %.0.lcssa.i.i.i.i.i206 = phi ptr [ %i.ou, %.noexc210 ], [ %i.ox, %.lr.ph.i.i.i.i.i201 ]
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i206, i64 24 ; 2 uses
  %.not.i23.i.i207 = icmp eq ptr %i.oj, null
  br i1 %.not.i23.i.i207, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205
  %i.oz = load ptr, ptr %i.e, align 8
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = sub i64 %i.pa, %i.ol
  call void @_ZdlPvm(ptr noundef nonnull %i.oj, i64 noundef %i.pb) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208: ; preds = %bb.bb, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205
  store ptr %i.ou, ptr %3, align 8
  store ptr %i.oy, ptr %i.d, align 8
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %i.ou, i64 %i.os ; 2 uses
  store ptr %i.pc, ptr %i.e, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit211

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit211: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208, %bb.az
  %i.pd = phi ptr [ %i.pc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208 ], [ %.pre458, %bb.az ] ; 4 uses
  %i.pe = phi ptr [ %i.oy, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208 ], [ %i.oi, %bb.az ] ; 2 uses
  %.not.i212 = icmp eq ptr %i.pe, %i.pd
  br i1 %.not.i212, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pe, ptr noundef nonnull align 8 dereferenceable(24) %.6, i64 24, i1 false)
  %i.pf = load ptr, ptr %i.d, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  store ptr %i.pg, ptr %i.d, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit227

bb.bd:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit211
  %i.ph = load ptr, ptr %3, align 8               ; 5 uses
  %i.pi = ptrtoint ptr %i.pd to i64
  %i.pj = ptrtoint ptr %i.ph to i64               ; 2 uses
  %i.pk = sub i64 %i.pi, %i.pj                    ; 3 uses
  %i.pl = icmp eq i64 %i.pk, 9223372036854775800
  br i1 %i.pl, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i213

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i213: ; preds = %bb.bd
  %i.pm = sdiv exact i64 %i.pk, 24                ; 3 uses
  %.sroa.speculated.i.i.i214 = call i64 @llvm.umax.i64(i64 %i.pm, i64 1)
  %i.pn = add nsw i64 %.sroa.speculated.i.i.i214, %i.pm ; 2 uses
  %i.po = icmp ult i64 %i.pn, %i.pm
  %i.pp = call i64 @llvm.umin.i64(i64 %i.pn, i64 384307168202282325)
  %i.pq = select i1 %i.po, i64 384307168202282325, i64 %i.pp ; 3 uses
  %.not.i.i.i215 = icmp ne i64 %i.pq, 0
  call void @llvm.assume(i1 %.not.i.i.i215)
  %i.pr = mul nuw nsw i64 %i.pq, 24
  %i.ps = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pr) #25
          to label %.noexc226 unwind label %.loopexit356 ; 5 uses

.noexc226:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i213
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pt, ptr noundef nonnull align 8 dereferenceable(24) %.6, i64 24, i1 false)
  %.not10.i.i.i.i.i216 = icmp eq ptr %i.ph, %i.pd
  br i1 %.not10.i.i.i.i.i216, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221, label %.lr.ph.i.i.i.i.i217

.lr.ph.i.i.i.i.i217:                              ; preds = %.noexc226, %.lr.ph.i.i.i.i.i217
  %.012.i.i.i.i.i218 = phi ptr [ %i.pv, %.lr.ph.i.i.i.i.i217 ], [ %i.ps, %.noexc226 ] ; 2 uses
  %.0911.i.i.i.i.i219 = phi ptr [ %i.pu, %.lr.ph.i.i.i.i.i217 ], [ %i.ph, %.noexc226 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i218, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i219, i64 24, i1 false), !alias.scope !175
  %i.pu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i219, i64 24 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i218, i64 24 ; 2 uses
  %.not.i.i.i.i.i220 = icmp eq ptr %i.pu, %i.pd
  br i1 %.not.i.i.i.i.i220, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221, label %.lr.ph.i.i.i.i.i217, !llvm.loop !49

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221: ; preds = %.lr.ph.i.i.i.i.i217, %.noexc226
  %.0.lcssa.i.i.i.i.i222 = phi ptr [ %i.ps, %.noexc226 ], [ %i.pv, %.lr.ph.i.i.i.i.i217 ]
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i222, i64 24
  %.not.i23.i.i223 = icmp eq ptr %i.ph, null
  br i1 %.not.i23.i.i223, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221
  %i.px = load ptr, ptr %i.e, align 8
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = sub i64 %i.py, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef %i.pz) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224: ; preds = %bb.be, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221
  store ptr %i.ps, ptr %3, align 8
  store ptr %i.pw, ptr %i.d, align 8
  %i.qa = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %i.pq
  store ptr %i.qa, ptr %i.e, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit227

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit227: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224, %bb.bc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit195, %bb.ax, %bb.ao
  %.490 = phi i64 [ %.288, %bb.ao ], [ %i.oc, %bb.ax ], [ %.288, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit195 ], [ %.288, %bb.bc ], [ %.288, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0281.0421, i64 16 ; 2 uses
  %i.qc = add i32 %.sroa.7296.0419, 1
  %i.qd = icmp eq i32 %.sroa.7296.0419, 63        ; 2 uses
  %spec.select = select i1 %i.qd, i32 0, i32 %i.qc
  %spec.select347.idx = select i1 %i.qd, i64 8, i64 0
  %spec.select347 = getelementptr inbounds nuw i8, ptr %.sroa.0295.0420, i64 %spec.select347.idx
  %i.qe = zext nneg i32 %.sroa.7296.0419 to i64
  %i.qf = shl nuw i64 1, %i.qe
  %i.qg = load i64, ptr %.sroa.0295.0420, align 8
  %i.qh = and i64 %i.qg, %i.qf
  %i.qi = icmp ne i64 %i.qh, 0
  %.not352 = icmp eq ptr %i.qb, %i.hd
  br i1 %.not352, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3IFC22ProjectedWindowContourES_IS5_SaIS5_EEEENS2_IPK10aiVector2tIdES_ISC_SaISC_EEEEESaISI_EED2Ev.exit, label %bb.x, !llvm.loop !179

bb.bf:                                            ; preds = %.loopexit357, %.loopexit.split-lp358, %.loopexit356, %.loopexit.split-lp
  %.pn124 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit356 ], [ %lpad.loopexit359, %.loopexit357 ], [ %lpad.loopexit.split-lp360, %.loopexit.split-lp358 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3IFC22ProjectedWindowContourES_IS5_SaIS5_EEEENS2_IPK10aiVector2tIdES_ISC_SaISC_EEEEESaISI_EED2Ev.exit231

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3IFC22ProjectedWindowContourES_IS5_SaIS5_EEEENS2_IPK10aiVector2tIdES_ISC_SaISC_EEEEESaISI_EED2Ev.exit231: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit139, %bb.bf
  %.pn124.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn124, %bb.bf ], [ %.pn.pn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit139 ]
  resume { ptr, i32 } %.pn124.pn.pn.pn.pn

.lr.ph433:                                        ; preds = %bb.d, %.critedge
  %.sroa.0256.0432 = phi ptr [ %i.rs, %.critedge ], [ %i.ac, %bb.d ] ; 2 uses
  %i.qj = load ptr, ptr %.sroa.0256.0432, align 8 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 64 ; 5 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 80 ; 6 uses
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = load ptr, ptr %i.qk, align 8
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.qn to i64               ; 2 uses
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = sdiv exact i64 %i.qq, 24                ; 2 uses
  %i.qs = load ptr, ptr %i.s, align 8
  %i.qt = load ptr, ptr %.sroa.0327.0435, align 8
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = ashr exact i64 %i.qw, 4
  %i.qy = add nsw i64 %i.qx, %i.qr                ; 4 uses
  %i.qz = icmp ugt i64 %i.qy, 384307168202282325
  br i1 %i.qz, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph433
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
  unreachable

bb.bh:                                            ; preds = %.lr.ph433
  %i.ra = icmp ult i64 %i.qr, %i.qy
  br i1 %i.ra, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i232, label %.lr.ph429

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i232: ; preds = %bb.bh
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qj, i64 72 ; 3 uses
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = sub i64 %i.rd, %i.qp
  %i.rf = mul nuw nsw i64 %i.qy, 24
  %i.rg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rf) #25 ; 4 uses
  %i.rh = load ptr, ptr %i.qk, align 8            ; 5 uses
  %i.ri = load ptr, ptr %i.rb, align 8            ; 2 uses
  %.not10.i.i.i.i233 = icmp eq ptr %i.rh, %i.ri
  br i1 %.not10.i.i.i.i233, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i238, label %.lr.ph.i.i.i.i234

.lr.ph.i.i.i.i234:                                ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i232, %.lr.ph.i.i.i.i234
  %.012.i.i.i.i235 = phi ptr [ %i.rk, %.lr.ph.i.i.i.i234 ], [ %i.rg, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i232 ] ; 2 uses
  %.0911.i.i.i.i236 = phi ptr [ %i.rj, %.lr.ph.i.i.i.i234 ], [ %i.rh, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i232 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i235, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i236, i64 24, i1 false), !alias.scope !180
  %i.rj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i236, i64 24 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i235, i64 24
  %.not.i.i.i.i237 = icmp eq ptr %i.rj, %i.ri
  br i1 %.not.i.i.i.i237, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i238, label %.lr.ph.i.i.i.i234, !llvm.loop !49

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i238: ; preds = %.lr.ph.i.i.i.i234, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i232
  %.not.i8.i239 = icmp eq ptr %i.rh, null
  br i1 %.not.i8.i239, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i240, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i238
  %i.rl = load ptr, ptr %i.ql, align 8
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = ptrtoint ptr %i.rh to i64
  %i.ro = sub i64 %i.rm, %i.rn
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef %i.ro) #26
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i240

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i240: ; preds = %bb.bi, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i238
  store ptr %i.rg, ptr %i.qk, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.re
  store ptr %i.rp, ptr %i.rb, align 8
  %i.rq = getelementptr inbounds nuw [24 x i8], ptr %i.rg, i64 %i.qy
  store ptr %i.rq, ptr %i.ql, align 8
  br label %.lr.ph429

.lr.ph429:                                        ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i240, %bb.bh
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qj, i64 72 ; 4 uses
  %.pre459 = load ptr, ptr %i.rr, align 8
  br label %bb.bj

.critedge:                                        ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0256.0432, i64 8 ; 2 uses
  %.not350 = icmp eq ptr %i.rs, %i.ae
  br i1 %.not350, label %.loopexit, label %.lr.ph433

bb.bj:                                            ; preds = %.lr.ph429, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %i.rt = phi ptr [ %.pre459, %.lr.ph429 ], [ %i.tp, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %.sroa.0252.0428 = phi ptr [ %i.r, %.lr.ph429 ], [ %i.tq, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.ru = load double, ptr %.sroa.0252.0428, align 8 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0252.0428, i64 8
  %i.rw = load double, ptr %i.rv, align 8         ; 2 uses
  %i.rx = load <8 x double>, ptr %1, align 8, !noalias !184 ; 4 uses
  %i.ry = insertelement <2 x double> poison, double %i.rw, i64 0
  %i.rz = shufflevector <2 x double> %i.ry, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sa = shufflevector <8 x double> %i.rx, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.sb = fmul <2 x double> %i.rz, %i.sa
  %i.sc = shufflevector <8 x double> %i.rx, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.sd = insertelement <2 x double> poison, double %i.ru, i64 0
  %i.se = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> %i.se, <2 x double> %i.sb)
  %i.sg = shufflevector <8 x double> %i.rx, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.sh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sg, <2 x double> zeroinitializer, <2 x double> %i.sf)
  %i.si = shufflevector <8 x double> %i.rx, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.sj = fadd <2 x double> %i.si, %i.sh          ; 2 uses
  %i.sk = load double, ptr %i.i, align 8, !noalias !184
  %i.sl = load double, ptr %i.j, align 8, !noalias !184
  %i.sm = fmul double %i.rw, %i.sl
  %i.sn = call double @llvm.fmuladd.f64(double %i.sk, double %i.ru, double %i.sm)
  %i.so = load double, ptr %i.k, align 8, !noalias !184
  %i.sp = call double @llvm.fmuladd.f64(double %i.so, double 0.000000e+00, double %i.sn)
  %i.sq = load double, ptr %i.l, align 8, !noalias !184
  %i.sr = fadd double %i.sq, %i.sp                ; 2 uses
  %i.ss = load ptr, ptr %i.ql, align 8
  %.not.i.i242 = icmp eq ptr %i.rt, %i.ss
  br i1 %.not.i.i242, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store <2 x double> %i.sj, ptr %i.rt, align 8
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store double %i.sr, ptr %.sroa.6249.0..sroa_idx, align 8
  %i.st = load ptr, ptr %i.rr, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24 ; 2 uses
  store ptr %i.su, ptr %i.rr, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.bl:                                            ; preds = %bb.bj
  %i.sv = load ptr, ptr %i.qk, align 8            ; 5 uses
  %i.sw = ptrtoint ptr %i.rt to i64
  %i.sx = ptrtoint ptr %i.sv to i64               ; 2 uses
  %i.sy = sub i64 %i.sw, %i.sx                    ; 3 uses
  %i.sz = icmp eq i64 %i.sy, 9223372036854775800
  br i1 %i.sz, label %bb.bm, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bm:                                            ; preds = %bb.bl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bl
  %i.ta = sdiv exact i64 %i.sy, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i243 = call i64 @llvm.umax.i64(i64 %i.ta, i64 1)
  %i.tb = add nsw i64 %.sroa.speculated.i.i.i.i243, %i.ta ; 2 uses
  %i.tc = icmp ult i64 %i.tb, %i.ta
  %i.td = call i64 @llvm.umin.i64(i64 %i.tb, i64 384307168202282325)
  %i.te = select i1 %i.tc, i64 384307168202282325, i64 %i.td ; 3 uses
  %.not.i.i.i.i244 = icmp ne i64 %i.te, 0
  call void @llvm.assume(i1 %.not.i.i.i.i244)
  %i.tf = mul nuw nsw i64 %i.te, 24
  %i.tg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tf) #25 ; 5 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.sy ; 2 uses
  store <2 x double> %i.sj, ptr %i.th, align 8
  %.sroa.6249.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store double %i.sr, ptr %.sroa.6249.0..sroa_idx250, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.sv, %i.rt
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.tj, %.lr.ph.i.i.i.i.i.i ], [ %i.tg, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ti, %.lr.ph.i.i.i.i.i.i ], [ %i.sv, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !187
  %i.ti = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ti, %i.rt
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.tg, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.tj, %.lr.ph.i.i.i.i.i.i ]
  %i.tk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.sv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.tl = load ptr, ptr %i.ql, align 8
  %i.tm = ptrtoint ptr %i.tl to i64
  %i.tn = sub i64 %i.tm, %i.sx
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef %i.tn) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.tg, ptr %i.qk, align 8
  store ptr %i.tk, ptr %i.rr, align 8
  %i.to = getelementptr inbounds nuw [24 x i8], ptr %i.tg, i64 %i.te
  store ptr %i.to, ptr %i.ql, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.bk, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.tp = phi ptr [ %i.su, %bb.bk ], [ %i.tk, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0252.0428, i64 16 ; 2 uses
  %.not351 = icmp eq ptr %i.tq, %i.t
  br i1 %.not351, label %.critedge, label %bb.bj, !llvm.loop !191

.loopexit:                                        ; preds = %.critedge, %bb.c, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3IFC22ProjectedWindowContourES_IS5_SaIS5_EEEENS2_IPK10aiVector2tIdES_ISC_SaISC_EEEEESaISI_EED2Ev.exit, %bb.b
  %.692 = phi i64 [ %.0439, %bb.b ], [ %.1.lcssa, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3IFC22ProjectedWindowContourES_IS5_SaIS5_EEEENS2_IPK10aiVector2tIdES_ISC_SaISC_EEEEESaISI_EED2Ev.exit ], [ %.0439, %bb.c ], [ %.0439, %.critedge ] ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 104 ; 2 uses
  %.not348 = icmp eq ptr %i.tr, %i.c
  br i1 %.not348, label %._crit_edge443, label %bb.b, !llvm.loop !192
}

declare void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind writable sret(%class.aiVector3t) align 8, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC8QuadrifyERKSt6vectorISt4pairI10aiVector2tIdES4_ESaIS5_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
end_hunk_0
