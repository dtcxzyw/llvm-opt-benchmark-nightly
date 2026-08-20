inline.NumInlined: 1525
inline.NumDeleted: 549
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z7gen_padP7t_atomsN3gmx8ArrayRefIK17PreprocessResidueEERNS1_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS7_95EEEP7t_exclsNS2_I21MoleculePatchDatabaseEEbNS2_IKiEENS2_IK13DisulfideBondEE:bb.a
  %.not.i.i.i.i832 = icmp eq ptr %i.agk, %i.adr
  br i1 %.not.i.i.i.i832, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i844, label %.lr.ph.i.i.i.i825, !llvm.loop !96

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i844: ; preds = %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i831, %_ZN17InteractionOfTypeC2EOS_.exit.i823
  %.0.lcssa.i.i.i.i834 = phi ptr [ %i.aev, %_ZN17InteractionOfTypeC2EOS_.exit.i823 ], [ %i.agl, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i831 ]
  %i.agm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i834, i64 112
  %.not.i27.i846 = icmp eq ptr %i.aek, null
  br i1 %.not.i27.i846, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit399, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i844
  %i.agn = load ptr, ptr %i.gm, align 8, !tbaa !77
  %i.ago = ptrtoint ptr %i.agn to i64
  %i.agp = sub i64 %i.ago, %i.aem
  call void @_ZdlPvm(ptr noundef nonnull %i.aek, i64 noundef %i.agp) #25
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit399

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit399: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i844, %bb.cs
  store ptr %i.aev, ptr %19, align 8, !tbaa !89
  store ptr %i.agm, ptr %i.gl, align 8, !tbaa !74
  %i.agq = getelementptr inbounds nuw [112 x i8], ptr %i.aev, i64 %i.aet
  store ptr %i.agq, ptr %i.gm, align 8, !tbaa !77
  %.pre1660 = load ptr, ptr %i.gx, align 8, !tbaa !37 ; 2 uses
  %i.agr = icmp eq ptr %.pre1660, %i.gy
  br i1 %i.agr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i401, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i400: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit399
  %i.ags = load i64, ptr %i.gy, align 8, !tbaa !25
  %i.agt = add i64 %i.ags, 1
  call void @_ZdlPvm(ptr noundef %.pre1660, i64 noundef %i.agt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i401

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i401: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit399, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit399.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i400
  %i.agu = load ptr, ptr %26, align 16, !tbaa !87 ; 3 uses
  %.not.i.i.i.i402 = icmp eq ptr %i.agu, null
  br i1 %.not.i.i.i.i402, label %_ZN17InteractionOfTypeD2Ev.exit404, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i401
  %i.agv = load ptr, ptr %i.gv, align 16, !tbaa !78
  %i.agw = ptrtoint ptr %i.agv to i64
  %i.agx = ptrtoint ptr %i.agu to i64
  %i.agy = sub i64 %i.agw, %i.agx
  call void @_ZdlPvm(ptr noundef nonnull %i.agu, i64 noundef %i.agy) #25
  br label %_ZN17InteractionOfTypeD2Ev.exit404

_ZN17InteractionOfTypeD2Ev.exit404:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i401, %bb.ct
  %i.agz = load ptr, ptr %27, align 8, !tbaa !37  ; 2 uses
  %i.aha = icmp eq ptr %i.agz, %i.gt
  br i1 %i.aha, label %_ZNSt6vectorIiSaIiEED2Ev.exit409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405: ; preds = %_ZN17InteractionOfTypeD2Ev.exit404
  %i.ahb = load i64, ptr %i.gt, align 8, !tbaa !25
  %i.ahc = add i64 %i.ahb, 1
  call void @_ZdlPvm(ptr noundef %i.agz, i64 noundef %i.ahc) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit409

_ZNSt6vectorIiSaIiEED2Ev.exit409:                 ; preds = %_ZN17InteractionOfTypeD2Ev.exit404, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.adp, i64 noundef 16) #25
  br label %bb.cy

bb.cu:                                            ; preds = %.critedge
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.cv:                                            ; preds = %._crit_edge.i.i
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit1217:                                    ; preds = %_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit.i817
  %lpad.loopexit1219 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.loopexit.split-lp1218:                           ; preds = %bb.cp
  %lpad.loopexit.split-lp1220 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit.split-lp1218, %.loopexit1217
  %lpad.phi1221 = phi { ptr, i32 } [ %lpad.loopexit1219, %.loopexit1217 ], [ %lpad.loopexit.split-lp1220, %.loopexit.split-lp1218 ]
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %26) #21
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.pn299 = phi { ptr, i32 } [ %lpad.phi1221, %bb.cw ], [ %i.ahe, %bb.cv ]
  %i.ahf = load ptr, ptr %27, align 8, !tbaa !37  ; 2 uses
  %i.ahg = icmp eq ptr %i.ahf, %i.gt
  br i1 %i.ahg, label %_ZNSt6vectorIiSaIiEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %bb.cx
  %i.ahh = load i64, ptr %i.gt, align 8, !tbaa !25
  %i.ahi = add i64 %i.ahh, 1
  call void @_ZdlPvm(ptr noundef %i.ahf, i64 noundef %i.ahi) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit414

_ZNSt6vectorIiSaIiEED2Ev.exit414:                 ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.adp, i64 noundef 16) #25
  br label %bb.ds

bb.cy:                                            ; preds = %bb.ck, %_ZNSt6vectorIiSaIiEED2Ev.exit409
  %i.ahj = load ptr, ptr %i.fv, align 8, !tbaa !64
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.ahj, i64 %indvars.iv1639
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !40
  %i.ahm = load i32, ptr %i.hb, align 4, !tbaa !104 ; 2 uses
  %i.ahn = icmp sgt i32 %i.ahm, 1
  br i1 %i.ahn, label %.lr.ph31.i, label %_ZL7nb_distP8t_nextnbii.exit.thread

.lr.ph31.i:                                       ; preds = %bb.cy
  %i.aho = load ptr, ptr %i.fw, align 8, !tbaa !66
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %i.aho, i64 %indvars.iv1639
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !67
  %wide.trip.count37.i = zext nneg i32 %i.ahm to i64
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i415, %.lr.ph31.i
  %indvars.iv34.i = phi i64 [ 1, %.lr.ph31.i ], [ %indvars.iv.next35.i, %._crit_edge.i415 ] ; 4 uses
  %.029.i = phi i32 [ -1, %.lr.ph31.i ], [ %.1.lcssa.i, %._crit_edge.i415 ] ; 3 uses
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.ahq, i64 %indvars.iv34.i
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !40 ; 9 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %indvars.iv34.i
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !41 ; 3 uses
  %i.ahv = icmp sgt i32 %i.ahu, 0
  br i1 %i.ahv, label %.lr.ph.preheader.i, label %._crit_edge.i415

.lr.ph.preheader.i:                               ; preds = %bb.cz
  %wide.trip.count.i = zext nneg i32 %i.ahu to i64 ; 2 uses
  %i.ahw = trunc nuw nsw i64 %indvars.iv34.i to i32 ; 9 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.ahx = icmp ult i32 %i.ahu, 8
  br i1 %i.ahx, label %.lr.ph.i416.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %.lr.ph.i416

.lr.ph.i416:                                      ; preds = %.lr.ph.i416, %.lr.ph.preheader.i.new
  %indvars.iv.i417 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i420.7, %.lr.ph.i416 ] ; 9 uses
  %.127.i = phi i32 [ %.029.i, %.lr.ph.preheader.i.new ], [ %spec.select.i419.7, %.lr.ph.i416 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i416 ]
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i417
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !41
  %i.aia = icmp eq i32 %i.sg, %i.ahz
  %i.aib = icmp eq i32 %.127.i, -1
  %or.cond.i418 = select i1 %i.aia, i1 %i.aib, i1 false
  %spec.select.i419 = select i1 %or.cond.i418, i32 %i.ahw, i32 %.127.i ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i417
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 4
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !41
  %i.aif = icmp eq i32 %i.sg, %i.aie
  %i.aig = icmp eq i32 %spec.select.i419, -1
  %or.cond.i418.1 = select i1 %i.aif, i1 %i.aig, i1 false
  %spec.select.i419.1 = select i1 %or.cond.i418.1, i32 %i.ahw, i32 %spec.select.i419 ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i417
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !41
  %i.aik = icmp eq i32 %i.sg, %i.aij
  %i.ail = icmp eq i32 %spec.select.i419.1, -1
  %or.cond.i418.2 = select i1 %i.aik, i1 %i.ail, i1 false
  %spec.select.i419.2 = select i1 %or.cond.i418.2, i32 %i.ahw, i32 %spec.select.i419.1 ; 2 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i417
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 12
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !41
  %i.aip = icmp eq i32 %i.sg, %i.aio
  %i.aiq = icmp eq i32 %spec.select.i419.2, -1
  %or.cond.i418.3 = select i1 %i.aip, i1 %i.aiq, i1 false
  %spec.select.i419.3 = select i1 %or.cond.i418.3, i32 %i.ahw, i32 %spec.select.i419.2 ; 2 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i417
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 16
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !41
  %i.aiu = icmp eq i32 %i.sg, %i.ait
  %i.aiv = icmp eq i32 %spec.select.i419.3, -1
  %or.cond.i418.4 = select i1 %i.aiu, i1 %i.aiv, i1 false
  %spec.select.i419.4 = select i1 %or.cond.i418.4, i32 %i.ahw, i32 %spec.select.i419.3 ; 2 uses
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i417
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 20
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !41
  %i.aiz = icmp eq i32 %i.sg, %i.aiy
  %i.aja = icmp eq i32 %spec.select.i419.4, -1
  %or.cond.i418.5 = select i1 %i.aiz, i1 %i.aja, i1 false
  %spec.select.i419.5 = select i1 %or.cond.i418.5, i32 %i.ahw, i32 %spec.select.i419.4 ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i417
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 24
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !41
  %i.aje = icmp eq i32 %i.sg, %i.ajd
  %i.ajf = icmp eq i32 %spec.select.i419.5, -1
  %or.cond.i418.6 = select i1 %i.aje, i1 %i.ajf, i1 false
  %spec.select.i419.6 = select i1 %or.cond.i418.6, i32 %i.ahw, i32 %spec.select.i419.5 ; 2 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i417
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 28
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !41
  %i.ajj = icmp eq i32 %i.sg, %i.aji
  %i.ajk = icmp eq i32 %spec.select.i419.6, -1
  %or.cond.i418.7 = select i1 %i.ajj, i1 %i.ajk, i1 false
  %spec.select.i419.7 = select i1 %or.cond.i418.7, i32 %i.ahw, i32 %spec.select.i419.6 ; 3 uses
  %indvars.iv.next.i420.7 = add nuw nsw i64 %indvars.iv.i417, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i415.loopexit.unr-lcssa, label %.lr.ph.i416, !llvm.loop !105

._crit_edge.i415.loopexit.unr-lcssa:              ; preds = %.lr.ph.i416
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i415, label %.lr.ph.i416.epil.preheader

.lr.ph.i416.epil.preheader:                       ; preds = %._crit_edge.i415.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i417.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i420.7, %._crit_edge.i415.loopexit.unr-lcssa ]
  %.127.i.epil.init = phi i32 [ %.029.i, %.lr.ph.preheader.i ], [ %spec.select.i419.7, %._crit_edge.i415.loopexit.unr-lcssa ]
  %lcmp.mod2436 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2436)
  br label %.lr.ph.i416.epil

.lr.ph.i416.epil:                                 ; preds = %.lr.ph.i416.epil, %.lr.ph.i416.epil.preheader
  %indvars.iv.i417.epil = phi i64 [ %indvars.iv.i417.epil.init, %.lr.ph.i416.epil.preheader ], [ %indvars.iv.next.i420.epil, %.lr.ph.i416.epil ] ; 2 uses
  %.127.i.epil = phi i32 [ %.127.i.epil.init, %.lr.ph.i416.epil.preheader ], [ %spec.select.i419.epil, %.lr.ph.i416.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i416.epil.preheader ], [ %epil.iter.next, %.lr.ph.i416.epil ]
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i417.epil
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !41
  %i.ajn = icmp eq i32 %i.sg, %i.ajm
  %i.ajo = icmp eq i32 %.127.i.epil, -1
  %or.cond.i418.epil = select i1 %i.ajn, i1 %i.ajo, i1 false
  %spec.select.i419.epil = select i1 %or.cond.i418.epil, i32 %i.ahw, i32 %.127.i.epil ; 2 uses
  %indvars.iv.next.i420.epil = add nuw nsw i64 %indvars.iv.i417.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i415, label %.lr.ph.i416.epil, !llvm.loop !106

._crit_edge.i415:                                 ; preds = %._crit_edge.i415.loopexit.unr-lcssa, %.lr.ph.i416.epil, %bb.cz
  %.1.lcssa.i = phi i32 [ %.029.i, %bb.cz ], [ %spec.select.i419.7, %._crit_edge.i415.loopexit.unr-lcssa ], [ %spec.select.i419.epil, %.lr.ph.i416.epil ] ; 2 uses
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %_ZL7nb_distP8t_nextnbii.exit, label %bb.cz, !llvm.loop !108

_ZL7nb_distP8t_nextnbii.exit:                     ; preds = %._crit_edge.i415
  %i.ajp = icmp eq i32 %.1.lcssa.i, 3
  br i1 %i.ajp, label %bb.da, label %_ZL7nb_distP8t_nextnbii.exit.thread

bb.da:                                            ; preds = %_ZL7nb_distP8t_nextnbii.exit
  %.sroa.speculated1048 = call i32 @llvm.smin.i32(i32 %i.sg, i32 %i.in) ; 2 uses
  %.sroa.speculated1045 = call i32 @llvm.smax.i32(i32 %i.in, i32 %i.sg) ; 3 uses
  %i.ajq = sext i32 %.sroa.speculated1048 to i64  ; 2 uses
  %i.ajr = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ajq ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 8, !tbaa !38 ; 2 uses
  %i.ajt = icmp sgt i32 %i.ajs, 0
  br i1 %i.ajt, label %.lr.ph1421, label %.critedge1488

.lr.ph1421:                                       ; preds = %bb.da
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %wide.trip.count = zext nneg i32 %i.ajs to i64  ; 2 uses
  br label %.backedge

._crit_edge1422:                                  ; preds = %bb.db
  br i1 %i.ajy, label %_ZL7nb_distP8t_nextnbii.exit.thread, label %.critedge1488

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph1421
  %indvars.iv1628 = phi i64 [ 0, %.lr.ph1421 ], [ %indvars.iv1628.be, %.backedge.backedge ] ; 3 uses
  %.02601418 = phi i1 [ false, %.lr.ph1421 ], [ %.02601418.be, %.backedge.backedge ]
  br i1 %.02601418, label %.thread, label %bb.db

bb.db:                                            ; preds = %.backedge
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !44
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv1628
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !41
  %i.ajy = icmp eq i32 %i.ajx, %.sroa.speculated1045 ; 2 uses
  %indvars.iv.next1629 = add nuw nsw i64 %indvars.iv1628, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1629, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge1422, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.db, %.thread
  %indvars.iv1628.be = phi i64 [ %indvars.iv.next1629, %bb.db ], [ %indvars.iv.next16292049, %.thread ]
  %.02601418.be = phi i1 [ %i.ajy, %bb.db ], [ true, %.thread ]
  br label %.backedge, !llvm.loop !109

.thread:                                          ; preds = %.backedge
  %indvars.iv.next16292049 = add nuw nsw i64 %indvars.iv1628, 1 ; 2 uses
  %exitcond.not2050 = icmp eq i64 %indvars.iv.next16292049, %wide.trip.count
  br i1 %exitcond.not2050, label %_ZL7nb_distP8t_nextnbii.exit.thread, label %.backedge.backedge

.critedge1488:                                    ; preds = %bb.da, %._crit_edge1422
  %i.ajz = load i8, ptr %i.hc, align 8, !tbaa !110, !range !56, !noundef !57
  %i.aka = trunc nuw i8 %i.ajz to i1
  br i1 %i.aka, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %.critedge1488
  %.val315 = load ptr, ptr %i.ga, align 8, !tbaa !69 ; 2 uses
  %i.akb = getelementptr inbounds [8 x i8], ptr %.val315, i64 %i.ajq
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !70
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !72
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !25
  %i.akf = icmp eq i8 %i.ake, 72
  br i1 %i.akf, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.akg = zext nneg i32 %.sroa.speculated1045 to i64
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %.val315, i64 %i.akg
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !70
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !72
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !25
  %i.akl = icmp eq i8 %i.akk, 72
  br i1 %i.akl, label %_ZL7nb_distP8t_nextnbii.exit.thread, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %.critedge1488
  %i.akm = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23
          to label %._crit_edge.i.i426 unwind label %bb.do ; 6 uses

._crit_edge.i.i426:                               ; preds = %bb.de
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  store i32 %.sroa.speculated1048, ptr %i.akm, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akm, i64 4
  store i32 %.sroa.speculated1045, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  store ptr %i.hd, ptr %29, align 8, !tbaa !19
  store i64 0, ptr %i.he, align 8, !tbaa !22
  store i8 0, ptr %i.hd, align 8, !tbaa !25
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %28, ptr nonnull %i.akm, ptr nonnull %i.akn, ptr null, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %29, i1 noundef zeroext false)
          to label %bb.df unwind label %bb.dp

bb.df:                                            ; preds = %._crit_edge.i.i426
  %i.ako = load ptr, ptr %i.hf, align 8, !tbaa !74 ; 12 uses
  %i.akp = load ptr, ptr %i.hg, align 8, !tbaa !77
  %.not.i.i430 = icmp eq ptr %i.ako, %i.akp
  br i1 %.not.i.i430, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.akq = load <2 x ptr>, ptr %28, align 16, !tbaa !40
  store <2 x ptr> %i.akq, ptr %i.ako, align 8, !tbaa !40
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ako, i64 16
  %i.aks = load ptr, ptr %i.hh, align 16, !tbaa !78
  store ptr %i.aks, ptr %i.akr, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %28, i8 0, i64 24, i1 false)
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ako, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akt, ptr noundef nonnull align 8 dereferenceable(48) %i.hi, i64 48, i1 false), !tbaa.struct !80
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ako, i64 72 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.ako, i64 88 ; 3 uses
  store ptr %i.akv, ptr %i.aku, align 8, !tbaa !19
  %i.akw = load ptr, ptr %i.hj, align 8, !tbaa !37 ; 2 uses
  %i.akx = icmp eq ptr %i.akw, %i.hk
  br i1 %i.akx, label %bb.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431

bb.dh:                                            ; preds = %bb.dg
  %i.aky = load i64, ptr %i.hl, align 16, !tbaa !22 ; 3 uses
  %i.akz = icmp ult i64 %i.aky, 16
  call void @llvm.assume(i1 %i.akz)
  %i.ala = add nuw nsw i64 %i.aky, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.akv, ptr noundef nonnull align 8 dereferenceable(1) %i.hk, i64 %i.ala, i1 false)
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit434.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431: ; preds = %bb.dg
  store ptr %i.akw, ptr %i.aku, align 8, !tbaa !37
  %i.alb = load i64, ptr %i.hk, align 8, !tbaa !25
  store i64 %i.alb, ptr %i.akv, align 8, !tbaa !25
  %.pre1661 = load i64, ptr %i.hl, align 16, !tbaa !22
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit434.thread

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit434.thread: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431
  %i.alc = phi i64 [ %.pre1661, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431 ], [ %i.aky, %bb.dh ]
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ako, i64 80
  store i64 %i.alc, ptr %i.ald, align 8, !tbaa !22
  store ptr %i.hk, ptr %i.hj, align 8, !tbaa !37
  store i64 0, ptr %i.hl, align 16, !tbaa !22
  store i8 0, ptr %i.hk, align 8, !tbaa !25
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ako, i64 104
  %i.alf = load i8, ptr %i.hm, align 8, !tbaa !81, !range !56, !noundef !57
  store i8 %i.alf, ptr %i.ale, align 8, !tbaa !81
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ako, i64 112
  store ptr %i.alg, ptr %i.hf, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i436

bb.di:                                            ; preds = %bb.df
  %i.alh = load ptr, ptr %20, align 8, !tbaa !89  ; 5 uses
  %i.ali = ptrtoint ptr %i.ako to i64
  %i.alj = ptrtoint ptr %i.alh to i64
  %i.alk = sub i64 %i.ali, %i.alj                 ; 4 uses
  %i.all = icmp eq i64 %i.alk, 9223372036854775744
  br i1 %i.all, label %bb.dj, label %_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit.i850

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc880 unwind label %.loopexit.split-lp1223

.noexc880:                                        ; preds = %bb.dj
  unreachable

_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit.i850: ; preds = %bb.di
  %i.alm = sdiv exact i64 %i.alk, 112             ; 3 uses
  %.sroa.speculated.i.i851 = call i64 @llvm.umax.i64(i64 %i.alm, i64 1)
  %i.aln = add nsw i64 %.sroa.speculated.i.i851, %i.alm ; 2 uses
  %i.alo = icmp ult i64 %i.aln, %i.alm
  %i.alp = call i64 @llvm.umin.i64(i64 %i.aln, i64 82351536043346212)
  %i.alq = select i1 %i.alo, i64 82351536043346212, i64 %i.alp ; 3 uses
  %.not.i.i852 = icmp ne i64 %i.alq, 0
  call void @llvm.assume(i1 %.not.i.i852)
  %i.alr = mul nuw nsw i64 %i.alq, 112
  %i.als = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alr) #23
          to label %.noexc881 unwind label %.loopexit1222 ; 5 uses

.noexc881:                                        ; preds = %_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit.i850
end_hunk_0
begin_hunk_1_@_Z7gen_padP7t_atomsN3gmx8ArrayRefIK17PreprocessResidueEERNS1_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS7_95EEEP7t_exclsNS2_I21MoleculePatchDatabaseEEbNS2_IKiEENS2_IK13DisulfideBondEE:bb.a
  %i.ams = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i859, i64 88 ; 3 uses
  store ptr %i.ams, ptr %i.amq, align 8, !tbaa !19, !alias.scope !121, !noalias !124
  %i.amt = load ptr, ptr %i.amr, align 8, !tbaa !37, !alias.scope !124, !noalias !121 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i860, i64 88 ; 5 uses
  %i.amv = icmp eq ptr %i.amt, %i.amu
  br i1 %i.amv, label %bb.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i861

bb.dl:                                            ; preds = %.lr.ph.i.i.i.i858
  %i.amw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i860, i64 80
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !22, !alias.scope !124, !noalias !121 ; 3 uses
  %i.amy = icmp ult i64 %i.amx, 16
  call void @llvm.assume(i1 %i.amy)
  %i.amz = add nuw nsw i64 %i.amx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ams, ptr noundef nonnull align 8 dereferenceable(1) %i.amu, i64 %i.amz, i1 false), !alias.scope !126
  br label %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i864

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i861: ; preds = %.lr.ph.i.i.i.i858
  store ptr %i.amt, ptr %i.amq, align 8, !tbaa !37, !alias.scope !121, !noalias !124
  %i.ana = load i64, ptr %i.amu, align 8, !tbaa !25, !alias.scope !124, !noalias !121
  store i64 %i.ana, ptr %i.ams, align 8, !tbaa !25, !alias.scope !121, !noalias !124
  %.phi.trans.insert.i.i.i.i.i862 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i860, i64 80
  %.pre.i.i.i.i.i863 = load i64, ptr %.phi.trans.insert.i.i.i.i.i862, align 8, !tbaa !22, !alias.scope !124, !noalias !121
  br label %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i864

_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i864: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i861, %bb.dl
  %i.anb = phi i64 [ %i.amx, %bb.dl ], [ %.pre.i.i.i.i.i863, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i861 ]
  %i.anc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i860, i64 80
  %i.and = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i859, i64 80
  store i64 %i.anb, ptr %i.and, align 8, !tbaa !22, !alias.scope !121, !noalias !124
  store ptr %i.amu, ptr %i.amr, align 8, !tbaa !37, !alias.scope !124, !noalias !121
  store i64 0, ptr %i.anc, align 8, !tbaa !22, !alias.scope !124, !noalias !121
  store i8 0, ptr %i.amu, align 8, !tbaa !25, !alias.scope !124, !noalias !121
  %i.ane = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i859, i64 104
  %i.anf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i860, i64 104
  %i.ang = load i8, ptr %i.anf, align 8, !tbaa !81, !range !56, !alias.scope !124, !noalias !121, !noundef !57
  store i8 %i.ang, ptr %i.ane, align 8, !tbaa !81, !alias.scope !121, !noalias !124
  %i.anh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i860, i64 112 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i859, i64 112 ; 2 uses
  %.not.i.i.i.i865 = icmp eq ptr %i.anh, %i.ako
  br i1 %.not.i.i.i.i865, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i877, label %.lr.ph.i.i.i.i858, !llvm.loop !96

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i877: ; preds = %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i864, %_ZN17InteractionOfTypeC2EOS_.exit.i856
  %.0.lcssa.i.i.i.i867 = phi ptr [ %i.als, %_ZN17InteractionOfTypeC2EOS_.exit.i856 ], [ %i.ani, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i864 ]
  %i.anj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i867, i64 112
  %.not.i27.i879 = icmp eq ptr %i.alh, null
  br i1 %.not.i27.i879, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit434, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i877
  call void @_ZdlPvm(ptr noundef nonnull %i.alh, i64 noundef %i.alk) #25
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit434

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit434: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i877, %bb.dm
  store ptr %i.als, ptr %20, align 8, !tbaa !89
  store ptr %i.anj, ptr %i.hf, align 8, !tbaa !74
  %i.ank = getelementptr inbounds nuw [112 x i8], ptr %i.als, i64 %i.alq
  store ptr %i.ank, ptr %i.hg, align 8, !tbaa !77
  %.pre1662 = load ptr, ptr %i.hj, align 8, !tbaa !37 ; 2 uses
  %i.anl = icmp eq ptr %.pre1662, %i.hk
  br i1 %i.anl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i435: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit434
  %i.anm = load i64, ptr %i.hk, align 8, !tbaa !25
  %i.ann = add i64 %i.anm, 1
  call void @_ZdlPvm(ptr noundef %.pre1662, i64 noundef %i.ann) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i436: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit434, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit434.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i435
  %i.ano = load ptr, ptr %28, align 16, !tbaa !87 ; 3 uses
  %.not.i.i.i.i437 = icmp eq ptr %i.ano, null
  br i1 %.not.i.i.i.i437, label %_ZN17InteractionOfTypeD2Ev.exit439, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i436
  %i.anp = load ptr, ptr %i.hh, align 16, !tbaa !78
  %i.anq = ptrtoint ptr %i.anp to i64
  %i.anr = ptrtoint ptr %i.ano to i64
  %i.ans = sub i64 %i.anq, %i.anr
  call void @_ZdlPvm(ptr noundef nonnull %i.ano, i64 noundef %i.ans) #25
  br label %_ZN17InteractionOfTypeD2Ev.exit439

_ZN17InteractionOfTypeD2Ev.exit439:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i436, %bb.dn
  %i.ant = load ptr, ptr %29, align 8, !tbaa !37  ; 2 uses
  %i.anu = icmp eq ptr %i.ant, %i.hd
  br i1 %i.anu, label %_ZNSt6vectorIiSaIiEED2Ev.exit444, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_ZN17InteractionOfTypeD2Ev.exit439
  %i.anv = load i64, ptr %i.hd, align 8, !tbaa !25
  %i.anw = add i64 %i.anv, 1
  call void @_ZdlPvm(ptr noundef %i.ant, i64 noundef %i.anw) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit444

_ZNSt6vectorIiSaIiEED2Ev.exit444:                 ; preds = %_ZN17InteractionOfTypeD2Ev.exit439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.akm, i64 noundef 8) #25
  br label %_ZL7nb_distP8t_nextnbii.exit.thread

bb.do:                                            ; preds = %bb.de
  %i.anx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dp:                                            ; preds = %._crit_edge.i.i426
  %i.any = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

.loopexit1222:                                    ; preds = %_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit.i850
  %lpad.loopexit1224 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.loopexit.split-lp1223:                           ; preds = %bb.dj
  %lpad.loopexit.split-lp1225 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dq:                                            ; preds = %.loopexit.split-lp1223, %.loopexit1222
  %lpad.phi1226 = phi { ptr, i32 } [ %lpad.loopexit1224, %.loopexit1222 ], [ %lpad.loopexit.split-lp1225, %.loopexit.split-lp1223 ]
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %28) #21
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.pn303 = phi { ptr, i32 } [ %lpad.phi1226, %bb.dq ], [ %i.any, %bb.dp ]
  %i.anz = load ptr, ptr %29, align 8, !tbaa !37  ; 2 uses
  %i.aoa = icmp eq ptr %i.anz, %i.hd
  br i1 %i.aoa, label %_ZNSt6vectorIiSaIiEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %bb.dr
  %i.aob = load i64, ptr %i.hd, align 8, !tbaa !25
  %i.aoc = add i64 %i.aob, 1
  call void @_ZdlPvm(ptr noundef %i.anz, i64 noundef %i.aoc) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit449

_ZNSt6vectorIiSaIiEED2Ev.exit449:                 ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.akm, i64 noundef 8) #25
  br label %bb.ds

_ZL7nb_distP8t_nextnbii.exit.thread:              ; preds = %.thread, %bb.cy, %._crit_edge1422, %_ZNSt6vectorIiSaIiEED2Ev.exit444, %bb.dd, %_ZL7nb_distP8t_nextnbii.exit
  %i.aod = load ptr, ptr %24, align 8, !tbaa !37  ; 2 uses
  %i.aoe = icmp eq ptr %i.aod, %i.gj
  br i1 %i.aoe, label %_ZNSt6vectorIiSaIiEED2Ev.exit454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %_ZL7nb_distP8t_nextnbii.exit.thread
  %i.aof = load i64, ptr %i.gj, align 8, !tbaa !25
  %i.aog = add i64 %i.aof, 1
  call void @_ZdlPvm(ptr noundef %i.aod, i64 noundef %i.aog) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit454

_ZNSt6vectorIiSaIiEED2Ev.exit454:                 ; preds = %_ZL7nb_distP8t_nextnbii.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef 16) #25
  %.pre1663 = load ptr, ptr %i.fv, align 8, !tbaa !64 ; 2 uses
  br label %bb.dt

bb.ds:                                            ; preds = %.loopexit1205, %.loopexit.split-lp1206, %bb.do, %_ZNSt6vectorIiSaIiEED2Ev.exit449, %bb.cu, %_ZNSt6vectorIiSaIiEED2Ev.exit414, %_ZN17InteractionOfTypeD2Ev.exit391, %bb.cg
  %.pn303.pn.pn.pn = phi { ptr, i32 } [ %i.ahd, %bb.cu ], [ %.pn294, %_ZN17InteractionOfTypeD2Ev.exit391 ], [ %i.anx, %bb.do ], [ %i.adc, %bb.cg ], [ %.pn299, %_ZNSt6vectorIiSaIiEED2Ev.exit414 ], [ %.pn303, %_ZNSt6vectorIiSaIiEED2Ev.exit449 ], [ %lpad.loopexit1207, %.loopexit1205 ], [ %lpad.loopexit.split-lp1208, %.loopexit.split-lp1206 ]
  %i.aoh = load ptr, ptr %24, align 8, !tbaa !37  ; 2 uses
  %i.aoi = icmp eq ptr %i.aoh, %i.gj
  br i1 %i.aoi, label %_ZNSt6vectorIiSaIiEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455: ; preds = %bb.ds
  %i.aoj = load i64, ptr %i.gj, align 8, !tbaa !25
  %i.aok = add i64 %i.aoj, 1
  call void @_ZdlPvm(ptr noundef %i.aoh, i64 noundef %i.aok) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit459

_ZNSt6vectorIiSaIiEED2Ev.exit459:                 ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef 16) #25
  br label %.body

bb.dt:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit454, %.lr.ph1426
  %.pre16641679 = phi ptr [ %.pre1663, %_ZNSt6vectorIiSaIiEED2Ev.exit454 ], [ %.pre16641680, %.lr.ph1426 ] ; 2 uses
  %i.aol = phi ptr [ %.pre1663, %_ZNSt6vectorIiSaIiEED2Ev.exit454 ], [ %i.rz, %.lr.ph1426 ] ; 4 uses
  %indvars.iv.next1631 = add nuw nsw i64 %indvars.iv1630, 1 ; 2 uses
  %i.aom = getelementptr inbounds [8 x i8], ptr %i.aol, i64 %i.ku
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !40
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 4
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !41
  %i.aoq = sext i32 %i.aop to i64
  %i.aor = icmp slt i64 %indvars.iv.next1631, %i.aoq
  br i1 %i.aor, label %.lr.ph1426, label %.loopexit1216, !llvm.loop !127

.loopexit1216:                                    ; preds = %bb.dt, %.preheader1215, %bb.ba, %.lr.ph1429
  %.pre16641678 = phi ptr [ %.pre16641677, %.lr.ph1429 ], [ %.pre1664, %.preheader1215 ], [ %.pre1664, %bb.ba ], [ %.pre16641679, %bb.dt ] ; 2 uses
  %i.aos = phi ptr [ %i.kk, %.lr.ph1429 ], [ %.pre1664, %.preheader1215 ], [ %.pre1664, %bb.ba ], [ %i.aol, %bb.dt ] ; 2 uses
  %i.aot = phi ptr [ %i.kl, %.lr.ph1429 ], [ %.pre1664, %.preheader1215 ], [ %.pre1664, %bb.ba ], [ %i.aol, %bb.dt ] ; 2 uses
  %indvars.iv.next1634 = add nuw nsw i64 %indvars.iv1633, 1 ; 2 uses
  %i.aou = getelementptr inbounds [8 x i8], ptr %i.aot, i64 %i.jx
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !40
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 4
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !41
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = icmp slt i64 %indvars.iv.next1634, %i.aoy
  br i1 %i.aoz, label %.lr.ph1429, label %._crit_edge1430, !llvm.loop !128

bb.du:                                            ; preds = %.lr.ph1487, %._crit_edge1485
  %indvars.iv1648 = phi i64 [ 0, %.lr.ph1487 ], [ %indvars.iv.next1649, %._crit_edge1485 ] ; 32 uses
  %indvars1650 = trunc i64 %indvars.iv1648 to i32 ; 6 uses
  %i.apa = load i64, ptr %5, align 8
  %i.apb = inttoptr i64 %i.apa to ptr             ; 2 uses
  %i.apc = getelementptr inbounds nuw [280 x i8], ptr %i.apb, i64 %indvars.iv1648 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 128
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !35 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apc, i64 136
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !35 ; 2 uses
  %.not11651456 = icmp eq ptr %i.ape, %i.apg
  br i1 %.not11651456, label %._crit_edge1460, label %.lr.ph1459

.lr.ph1459:                                       ; preds = %bb.du
  %i.aph = add nuw nsw i32 %indvars1650, 1        ; 3 uses
  %34 = add nsw i32 %indvars1650, -1              ; 3 uses
  br label %bb.dv

._crit_edge1460.loopexit:                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit506
  %.pre1670 = load i64, ptr %5, align 8
  %.pre1682 = inttoptr i64 %.pre1670 to ptr
  br label %._crit_edge1460

._crit_edge1460:                                  ; preds = %._crit_edge1460.loopexit, %bb.du
  %.pre-phi = phi ptr [ %.pre1682, %._crit_edge1460.loopexit ], [ %i.apb, %bb.du ]
  %i.api = getelementptr inbounds nuw [280 x i8], ptr %.pre-phi, i64 %indvars.iv1648 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 160
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !35 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.api, i64 168
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !35 ; 2 uses
  %.not11661481 = icmp eq ptr %i.apk, %i.apm
  br i1 %.not11661481, label %._crit_edge1485, label %.lr.ph1484

.lr.ph1484:                                       ; preds = %._crit_edge1460
  %i.apn = add nuw nsw i32 %indvars1650, 1        ; 3 uses
  %35 = add nsw i32 %indvars1650, -1              ; 3 uses
  br label %bb.fk

bb.dv:                                            ; preds = %.lr.ph1459, %_ZNSt6vectorIiSaIiEED2Ev.exit506
  %.sroa.0970.01457 = phi ptr [ %i.ape, %.lr.ph1459 ], [ %i.avi, %_ZNSt6vectorIiSaIiEED2Ev.exit506 ] ; 4 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %.sroa.0970.01457, i64 224 ; 2 uses
  %i.app = load i8, ptr %i.apo, align 8, !tbaa !53, !range !56, !noundef !57
  %i.apq = trunc nuw i8 %i.app to i1
  br i1 %i.apq, label %_ZNSt6vectorIiSaIiEED2Ev.exit506, label %.preheader1191

.preheader1191:                                   ; preds = %bb.dv, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit
  %indvars.iv1642 = phi i64 [ %indvars.iv.next1643, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit ], [ 0, %bb.dv ] ; 3 uses
  %.sroa.13966.01454 = phi ptr [ %.sroa.13966.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit ], [ null, %bb.dv ] ; 6 uses
  %.sroa.9964.01453 = phi ptr [ %.sroa.9964.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit ], [ null, %bb.dv ] ; 3 uses
  %.sroa.0960.01452 = phi ptr [ %.sroa.0960.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit ], [ null, %bb.dv ] ; 8 uses
  %i.apr = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0970.01457, i64 %indvars.iv1642
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !37 ; 4 uses
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !25
  switch i8 %i.apt, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread [
    i8 45, label %bb.dw
    i8 43, label %bb.eh
  ]

bb.dw:                                            ; preds = %.preheader1191
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aps, i64 1 ; 4 uses
  %.sroa.0.0.copyload.i460 = load ptr, ptr %7, align 8 ; 4 uses
  %.sroa.0.0.copyload.i461 = load ptr, ptr %i.is, align 8 ; 3 uses
  %i.apv = ptrtoint ptr %.sroa.0.0.copyload.i461 to i64 ; 2 uses
  %i.apw = ptrtoint ptr %.sroa.0.0.copyload.i460 to i64 ; 2 uses
  %i.apx = sub i64 %i.apv, %i.apw                 ; 3 uses
  %i.apy = ashr i64 %i.apx, 4                     ; 2 uses
  %i.apz = icmp sgt i64 %i.apy, 0
  br i1 %i.apz, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dw
  %i.aqa = and i64 %i.apx, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0.0.copyload.i460, i64 %i.aqa ; 2 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.eb, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.apy, %.lr.ph.i.i.i ], [ %i.aqr, %bb.eb ] ; 2 uses
  %.sroa.034.051.i.i.i = phi ptr [ %.sroa.0.0.copyload.i460, %.lr.ph.i.i.i ], [ %i.aqq, %bb.eb ] ; 9 uses
  %i.aqb = load i32, ptr %.sroa.034.051.i.i.i, align 4, !tbaa !41
  %i.aqc = zext i32 %i.aqb to i64
  %i.aqd = icmp eq i64 %indvars.iv1648, %i.aqc
  br i1 %i.aqd, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aqe = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i, i64 4
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !41
  %i.aqg = zext i32 %i.aqf to i64
  %i.aqh = icmp eq i64 %indvars.iv1648, %i.aqg
  br i1 %i.aqh, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit2183, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aqi = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i, i64 8
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !41
  %i.aqk = zext i32 %i.aqj to i64
  %i.aql = icmp eq i64 %indvars.iv1648, %i.aqk
  br i1 %i.aql, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit2181, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aqm = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i, i64 12
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !41
  %i.aqo = zext i32 %i.aqn to i64
  %i.aqp = icmp eq i64 %indvars.iv1648, %i.aqo
  br i1 %i.aqp, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aqq = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i, i64 16
  %i.aqr = add nsw i64 %.052.i.i.i, -1
  %i.aqs = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.aqs, label %bb.dx, label %._crit_edge.loopexit.i.i.i, !llvm.loop !129

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.eb
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.apv, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.dw
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.apx, %bb.dw ]
  %.sroa.034.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.0.0.copyload.i460, %bb.dw ] ; 5 uses
  %i.aqt = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.aqt, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread [
    i64 3, label %bb.ec
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.ec:                                            ; preds = %._crit_edge.i.i.i
  %i.aqu = load i32, ptr %.sroa.034.0.lcssa.i.i.i, align 4, !tbaa !41
  %i.aqv = zext i32 %i.aqu to i64
  %i.aqw = icmp eq i64 %indvars.iv1648, %i.aqv
  br i1 %i.aqw, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aqx = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.ed
  %.sroa.034.1.i.i.i = phi ptr [ %i.aqx, %bb.ed ], [ %.sroa.034.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aqy = load i32, ptr %.sroa.034.1.i.i.i, align 4, !tbaa !41
  %i.aqz = zext i32 %i.aqy to i64
  %i.ara = icmp eq i64 %indvars.iv1648, %i.aqz
  br i1 %i.ara, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit, label %bb.ee

bb.ee:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.arb = getelementptr inbounds nuw i8, ptr %.sroa.034.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.ee
  %.sroa.034.2.i.i.i = phi ptr [ %i.arb, %bb.ee ], [ %.sroa.034.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.arc = load i32, ptr %.sroa.034.2.i.i.i, align 4, !tbaa !41
  %i.ard = zext i32 %i.arc to i64
  %i.are = icmp eq i64 %indvars.iv1648, %i.ard
  %spec.select.i.i.i = select i1 %i.are, ptr %.sroa.034.2.i.i.i, ptr %.sroa.0.0.copyload.i461
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.ea
  %i.arf = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i, i64 12
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit2181: ; preds = %bb.dz
  %i.arg = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i, i64 8
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit2183: ; preds = %bb.dy
  %i.arh = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i, i64 4
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit: ; preds = %bb.dx, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit2181, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit2183, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.ec
  %.sroa.010.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.034.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.034.0.lcssa.i.i.i, %bb.ec ], [ %i.arh, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit2183 ], [ %i.arg, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit2181 ], [ %i.arf, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i, %bb.dx ] ; 3 uses
  %.not1170 = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i, %.sroa.0.0.copyload.i461
  br i1 %.not1170, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit
  %i.ari = ptrtoint ptr %.sroa.010.0.in.sroa.speculated.i.i.i to i64
  %i.arj = sub i64 %i.ari, %i.apw
  %i.ark = and i64 %i.arj, 4
  %.not280 = icmp eq i64 %i.ark, 0
  br i1 %.not280, label %bb.eg, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread

bb.eg:                                            ; preds = %bb.ef
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i, i64 4
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !41
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread

bb.eh:                                            ; preds = %.preheader1191
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aps, i64 1 ; 4 uses
  %.sroa.0.0.copyload.i464 = load ptr, ptr %7, align 8 ; 4 uses
  %.sroa.0.0.copyload.i465 = load ptr, ptr %i.is, align 8 ; 3 uses
  %i.aro = ptrtoint ptr %.sroa.0.0.copyload.i465 to i64 ; 2 uses
  %i.arp = ptrtoint ptr %.sroa.0.0.copyload.i464 to i64 ; 2 uses
  %i.arq = sub i64 %i.aro, %i.arp                 ; 3 uses
  %i.arr = ashr i64 %i.arq, 4                     ; 2 uses
  %i.ars = icmp sgt i64 %i.arr, 0
  br i1 %i.ars, label %.lr.ph.i.i.i477, label %._crit_edge.i.i.i466

.lr.ph.i.i.i477:                                  ; preds = %bb.eh
  %i.art = and i64 %i.arq, -16
  %scevgep.i.i.i478 = getelementptr i8, ptr %.sroa.0.0.copyload.i464, i64 %i.art ; 2 uses
  br label %bb.ei

bb.ei:                                            ; preds = %bb.em, %.lr.ph.i.i.i477
  %.052.i.i.i479 = phi i64 [ %i.arr, %.lr.ph.i.i.i477 ], [ %i.ask, %bb.em ] ; 2 uses
  %.sroa.034.051.i.i.i480 = phi ptr [ %.sroa.0.0.copyload.i464, %.lr.ph.i.i.i477 ], [ %i.asj, %bb.em ] ; 9 uses
  %i.aru = load i32, ptr %.sroa.034.051.i.i.i480, align 4, !tbaa !41
  %i.arv = zext i32 %i.aru to i64
  %i.arw = icmp eq i64 %indvars.iv1648, %i.arv
  br i1 %i.arw, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.arx = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i480, i64 4
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !41
  %i.arz = zext i32 %i.ary to i64
  %i.asa = icmp eq i64 %indvars.iv1648, %i.arz
  br i1 %i.asa, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit2175, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.asb = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i480, i64 8
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !41
  %i.asd = zext i32 %i.asc to i64
  %i.ase = icmp eq i64 %indvars.iv1648, %i.asd
  br i1 %i.ase, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit2173, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.asf = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i480, i64 12
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !41
  %i.ash = zext i32 %i.asg to i64
  %i.asi = icmp eq i64 %indvars.iv1648, %i.ash
  br i1 %i.asi, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.asj = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i480, i64 16
  %i.ask = add nsw i64 %.052.i.i.i479, -1
  %i.asl = icmp sgt i64 %.052.i.i.i479, 1
  br i1 %i.asl, label %bb.ei, label %._crit_edge.loopexit.i.i.i481, !llvm.loop !129

._crit_edge.loopexit.i.i.i481:                    ; preds = %bb.em
  %.pre59.i.i.i482 = ptrtoint ptr %scevgep.i.i.i478 to i64
  %.pre60.i.i.i483 = sub i64 %i.aro, %.pre59.i.i.i482
  br label %._crit_edge.i.i.i466

._crit_edge.i.i.i466:                             ; preds = %._crit_edge.loopexit.i.i.i481, %bb.eh
  %.pre-phi61.i.i.i467 = phi i64 [ %.pre60.i.i.i483, %._crit_edge.loopexit.i.i.i481 ], [ %i.arq, %bb.eh ]
  %.sroa.034.0.lcssa.i.i.i468 = phi ptr [ %scevgep.i.i.i478, %._crit_edge.loopexit.i.i.i481 ], [ %.sroa.0.0.copyload.i464, %bb.eh ] ; 5 uses
  %i.asm = ashr exact i64 %.pre-phi61.i.i.i467, 2
  switch i64 %i.asm, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread [
    i64 3, label %bb.en
    i64 2, label %._crit_edge._crit_edge.i.i.i474
    i64 1, label %._crit_edge._crit_edge57.i.i.i469
  ]

bb.en:                                            ; preds = %._crit_edge.i.i.i466
  %i.asn = load i32, ptr %.sroa.034.0.lcssa.i.i.i468, align 4, !tbaa !41
  %i.aso = zext i32 %i.asn to i64
  %i.asp = icmp eq i64 %indvars.iv1648, %i.aso
  br i1 %i.asp, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.asq = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i.i.i468, i64 4
  br label %._crit_edge._crit_edge.i.i.i474

._crit_edge._crit_edge.i.i.i474:                  ; preds = %._crit_edge.i.i.i466, %bb.eo
  %.sroa.034.1.i.i.i476 = phi ptr [ %i.asq, %bb.eo ], [ %.sroa.034.0.lcssa.i.i.i468, %._crit_edge.i.i.i466 ] ; 3 uses
  %i.asr = load i32, ptr %.sroa.034.1.i.i.i476, align 4, !tbaa !41
  %i.ass = zext i32 %i.asr to i64
  %i.ast = icmp eq i64 %indvars.iv1648, %i.ass
  br i1 %i.ast, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487, label %bb.ep

bb.ep:                                            ; preds = %._crit_edge._crit_edge.i.i.i474
  %i.asu = getelementptr inbounds nuw i8, ptr %.sroa.034.1.i.i.i476, i64 4
  br label %._crit_edge._crit_edge57.i.i.i469

._crit_edge._crit_edge57.i.i.i469:                ; preds = %._crit_edge.i.i.i466, %bb.ep
  %.sroa.034.2.i.i.i471 = phi ptr [ %i.asu, %bb.ep ], [ %.sroa.034.0.lcssa.i.i.i468, %._crit_edge.i.i.i466 ] ; 2 uses
  %i.asv = load i32, ptr %.sroa.034.2.i.i.i471, align 4, !tbaa !41
  %i.asw = zext i32 %i.asv to i64
  %i.asx = icmp eq i64 %indvars.iv1648, %i.asw
  %spec.select.i.i.i472 = select i1 %i.asx, ptr %.sroa.034.2.i.i.i471, ptr %.sroa.0.0.copyload.i465
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit: ; preds = %bb.el
  %i.asy = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i480, i64 12
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit2173: ; preds = %bb.ek
  %i.asz = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i480, i64 8
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit2175: ; preds = %bb.ej
  %i.ata = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i480, i64 4
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487: ; preds = %bb.ei, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit2173, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit2175, %._crit_edge._crit_edge57.i.i.i469, %._crit_edge._crit_edge.i.i.i474, %bb.en
  %.sroa.010.0.in.sroa.speculated.i.i.i473 = phi ptr [ %.sroa.034.1.i.i.i476, %._crit_edge._crit_edge.i.i.i474 ], [ %spec.select.i.i.i472, %._crit_edge._crit_edge57.i.i.i469 ], [ %.sroa.034.0.lcssa.i.i.i468, %bb.en ], [ %i.ata, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit2175 ], [ %i.asz, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit2173 ], [ %i.asy, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i480, %bb.ei ] ; 3 uses
  %.not1169 = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i473, %.sroa.0.0.copyload.i465
  br i1 %.not1169, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread, label %bb.eq

bb.eq:                                            ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487
  %i.atb = ptrtoint ptr %.sroa.010.0.in.sroa.speculated.i.i.i473 to i64
  %i.atc = sub i64 %i.atb, %i.arp
  %i.atd = and i64 %i.atc, 4
  %.not279 = icmp eq i64 %i.atd, 0
  br i1 %.not279, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ate = getelementptr inbounds i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i473, i64 -4
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !41
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i466, %._crit_edge.i.i.i, %.preheader1191, %bb.er, %bb.eq, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit, %bb.ef, %bb.eg
  %.0253 = phi ptr [ %i.apu, %bb.ef ], [ %i.apu, %bb.eg ], [ %i.apu, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit ], [ %i.arn, %bb.er ], [ %i.arn, %bb.eq ], [ %i.arn, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487 ], [ %i.aps, %.preheader1191 ], [ %i.apu, %._crit_edge.i.i.i ], [ %i.arn, %._crit_edge.i.i.i466 ]
  %.0252 = phi i32 [ %34, %bb.ef ], [ %i.arm, %bb.eg ], [ %34, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit ], [ %i.atf, %bb.er ], [ %i.aph, %bb.eq ], [ %i.aph, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit487 ], [ %indvars1650, %.preheader1191 ], [ %34, %._crit_edge.i.i.i ], [ %i.aph, %._crit_edge.i.i.i466 ]
  %i.atg = invoke i64 @_Z15search_res_atomPKciPK7t_atomsS0_b(ptr noundef nonnull %.0253, i32 noundef %.0252, ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i1 noundef zeroext true)
          to label %bb.es unwind label %.loopexit1192 ; 2 uses

bb.es:                                            ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread
  %.sroa.0939.0.extract.trunc = trunc i64 %i.atg to i32 ; 2 uses
  %i.ath = and i64 %i.atg, 4294967296
  %.not2223 = icmp eq i64 %i.ath, 0
  br i1 %.not2223, label %.thread2058, label %_ZNKRSt8optionalIiE5valueEv.exit

_ZNKRSt8optionalIiE5valueEv.exit:                 ; preds = %bb.es
  %.not.i491 = icmp eq ptr %.sroa.9964.01453, %.sroa.13966.01454
  br i1 %.not.i491, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZNKRSt8optionalIiE5valueEv.exit
  store i32 %.sroa.0939.0.extract.trunc, ptr %.sroa.9964.01453, align 4, !tbaa !41
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit

bb.eu:                                            ; preds = %_ZNKRSt8optionalIiE5valueEv.exit
  %i.ati = ptrtoint ptr %.sroa.13966.01454 to i64
  %i.atj = ptrtoint ptr %.sroa.0960.01452 to i64
  %i.atk = sub i64 %i.ati, %i.atj                 ; 6 uses
  %i.atl = icmp eq i64 %i.atk, 9223372036854775804
  br i1 %i.atl, label %bb.ev, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc493 unwind label %.loopexit.split-lp1193

.noexc493:                                        ; preds = %bb.ev
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.eu
  %i.atm = ashr exact i64 %i.atk, 2               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.atm, i64 1)
  %i.atn = add nsw i64 %.sroa.speculated.i.i.i, %i.atm ; 2 uses
  %i.ato = icmp ult i64 %i.atn, %i.atm
  %i.atp = call i64 @llvm.umin.i64(i64 %i.atn, i64 2305843009213693951)
  %i.atq = select i1 %i.ato, i64 2305843009213693951, i64 %i.atp ; 3 uses
  %.not.i.i.i492 = icmp ne i64 %i.atq, 0
  call void @llvm.assume(i1 %.not.i.i.i492)
  %i.atr = shl nuw nsw i64 %i.atq, 2
  %i.ats = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atr) #23
          to label %.noexc494 unwind label %.loopexit1192 ; 4 uses

.noexc494:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.att = getelementptr inbounds i8, ptr %i.ats, i64 %i.atk ; 2 uses
  store i32 %.sroa.0939.0.extract.trunc, ptr %i.att, align 4, !tbaa !41
  %i.atu = icmp sgt i64 %i.atk, 0
  br i1 %i.atu, label %bb.ew, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ew:                                            ; preds = %.noexc494
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ats, ptr align 4 %.sroa.0960.01452, i64 %i.atk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ew, %.noexc494
  %.not.i17.i.i = icmp eq ptr %.sroa.0960.01452, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0960.01452, i64 noundef %i.atk) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ex, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.ats, i64 %i.atq
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit

.loopexit1192:                                    ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit1194 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

.loopexit.split-lp1193:                           ; preds = %bb.ev
  %lpad.loopexit.split-lp1195 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.et
  %.sroa.0960.1 = phi ptr [ %.sroa.0960.01452, %bb.et ], [ %i.ats, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 6 uses
  %.sroa.9964.01453.pn = phi ptr [ %.sroa.9964.01453, %bb.et ], [ %i.att, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %.sroa.13966.1 = phi ptr [ %.sroa.13966.01454, %bb.et ], [ %i.atv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %.sroa.9964.1 = getelementptr inbounds nuw i8, ptr %.sroa.9964.01453.pn, i64 4 ; 2 uses
  %indvars.iv.next1643 = add nuw nsw i64 %indvars.iv1642, 1
  %i.atw = icmp samesign ult i64 %indvars.iv1642, 2
  br i1 %i.atw, label %.preheader1191, label %bb.ey, !llvm.loop !130

bb.ey:                                            ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit
  store i8 1, ptr %i.apo, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  %i.atx = ptrtoint ptr %.sroa.9964.1 to i64
  %i.aty = ptrtoint ptr %.sroa.0960.1 to i64
  %i.atz = sub i64 %i.atx, %i.aty
  %i.aua = getelementptr inbounds nuw i8, ptr %.sroa.0960.1, i64 %i.atz
  %i.aub = getelementptr inbounds nuw i8, ptr %.sroa.0970.01457, i64 192
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %30, ptr %.sroa.0960.1, ptr %i.aua, ptr null, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.aub, i1 noundef zeroext false)
          to label %bb.ez unwind label %bb.fe

bb.ez:                                            ; preds = %bb.ey
  %i.auc = load ptr, ptr %i.it, align 8, !tbaa !74 ; 10 uses
  %i.aud = load ptr, ptr %i.iu, align 8, !tbaa !77
  %.not.i.i495 = icmp eq ptr %i.auc, %i.aud
  br i1 %.not.i.i495, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aue = load <2 x ptr>, ptr %30, align 16, !tbaa !40
  store <2 x ptr> %i.aue, ptr %i.auc, align 8, !tbaa !40
  %i.auf = getelementptr inbounds nuw i8, ptr %i.auc, i64 16
  %i.aug = load ptr, ptr %i.iv, align 16, !tbaa !78
  store ptr %i.aug, ptr %i.auf, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %30, i8 0, i64 24, i1 false)
  %i.auh = getelementptr inbounds nuw i8, ptr %i.auc, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.auh, ptr noundef nonnull align 8 dereferenceable(48) %i.iw, i64 48, i1 false), !tbaa.struct !80
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auc, i64 72 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.auc, i64 88 ; 3 uses
  store ptr %i.auj, ptr %i.aui, align 8, !tbaa !19
  %i.auk = load ptr, ptr %i.ix, align 8, !tbaa !37 ; 2 uses
  %i.aul = icmp eq ptr %i.auk, %i.iy
  br i1 %i.aul, label %bb.fb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i496

bb.fb:                                            ; preds = %bb.fa
  %i.aum = load i64, ptr %i.iz, align 16, !tbaa !22 ; 3 uses
  %i.aun = icmp ult i64 %i.aum, 16
  call void @llvm.assume(i1 %i.aun)
  %i.auo = add nuw nsw i64 %i.aum, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.auj, ptr noundef nonnull align 8 dereferenceable(1) %i.iy, i64 %i.auo, i1 false)
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit499.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i496: ; preds = %bb.fa
  store ptr %i.auk, ptr %i.aui, align 8, !tbaa !37
  %i.aup = load i64, ptr %i.iy, align 8, !tbaa !25
  store i64 %i.aup, ptr %i.auj, align 8, !tbaa !25
  %.pre1668 = load i64, ptr %i.iz, align 16, !tbaa !22
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit499.thread

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit499.thread: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i496
  %i.auq = phi i64 [ %.pre1668, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i496 ], [ %i.aum, %bb.fb ]
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auc, i64 80
  store i64 %i.auq, ptr %i.aur, align 8, !tbaa !22
  store ptr %i.iy, ptr %i.ix, align 8, !tbaa !37
  store i64 0, ptr %i.iz, align 16, !tbaa !22
  store i8 0, ptr %i.iy, align 8, !tbaa !25
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auc, i64 104
  %i.aut = load i8, ptr %i.ja, align 8, !tbaa !81, !range !56, !noundef !57
  store i8 %i.aut, ptr %i.aus, align 8, !tbaa !81
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auc, i64 112
  store ptr %i.auu, ptr %i.it, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i501

bb.fc:                                            ; preds = %bb.ez
  invoke void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.auc, ptr noundef nonnull align 8 dereferenceable(105) %30)
          to label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit499 unwind label %bb.ff

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit499: ; preds = %bb.fc
  %.pre1669 = load ptr, ptr %i.ix, align 8, !tbaa !37 ; 2 uses
  %i.auv = icmp eq ptr %.pre1669, %i.iy
  br i1 %i.auv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit499
  %i.auw = load i64, ptr %i.iy, align 8, !tbaa !25
  %i.aux = add i64 %i.auw, 1
  call void @_ZdlPvm(ptr noundef %.pre1669, i64 noundef %i.aux) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i501: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit499, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit499.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500
  %i.auy = load ptr, ptr %30, align 16, !tbaa !87 ; 3 uses
  %.not.i.i.i.i502 = icmp eq ptr %i.auy, null
  br i1 %.not.i.i.i.i502, label %_ZN17InteractionOfTypeD2Ev.exit504, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i501
  %i.auz = load ptr, ptr %i.iv, align 16, !tbaa !78
  %i.ava = ptrtoint ptr %i.auz to i64
  %i.avb = ptrtoint ptr %i.auy to i64
  %i.avc = sub i64 %i.ava, %i.avb
  call void @_ZdlPvm(ptr noundef nonnull %i.auy, i64 noundef %i.avc) #25
  br label %_ZN17InteractionOfTypeD2Ev.exit504

_ZN17InteractionOfTypeD2Ev.exit504:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i501, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %.thread2058

bb.fe:                                            ; preds = %bb.ey
  %i.avd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fc
  %i.ave = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %30) #21
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn277 = phi { ptr, i32 } [ %i.ave, %bb.ff ], [ %i.avd, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.fi

.thread2058:                                      ; preds = %bb.es, %_ZN17InteractionOfTypeD2Ev.exit504
  %.sroa.0960.120552063 = phi ptr [ %.sroa.0960.1, %_ZN17InteractionOfTypeD2Ev.exit504 ], [ %.sroa.0960.01452, %bb.es ] ; 3 uses
  %.sroa.13966.120572062 = phi ptr [ %.sroa.13966.1, %_ZN17InteractionOfTypeD2Ev.exit504 ], [ %.sroa.13966.01454, %bb.es ]
  %.not.i.i.i505 = icmp eq ptr %.sroa.0960.120552063, null
  br i1 %.not.i.i.i505, label %_ZNSt6vectorIiSaIiEED2Ev.exit506, label %bb.fh
end_hunk_1
begin_hunk_2_@_Z7gen_padP7t_atomsN3gmx8ArrayRefIK17PreprocessResidueEERNS1_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS7_95EEEP7t_exclsNS2_I21MoleculePatchDatabaseEEbNS2_IKiEENS2_IK13DisulfideBondEE:bb.a
  br i1 %i.awt, label %bb.fm, label %._crit_edge.loopexit.i.i.i526, !llvm.loop !129

._crit_edge.loopexit.i.i.i526:                    ; preds = %bb.fq
  %.pre59.i.i.i527 = ptrtoint ptr %scevgep.i.i.i523 to i64
  %.pre60.i.i.i528 = sub i64 %i.avw, %.pre59.i.i.i527
  br label %._crit_edge.i.i.i511

._crit_edge.i.i.i511:                             ; preds = %._crit_edge.loopexit.i.i.i526, %bb.fl
  %.pre-phi61.i.i.i512 = phi i64 [ %.pre60.i.i.i528, %._crit_edge.loopexit.i.i.i526 ], [ %i.avy, %bb.fl ]
  %.sroa.034.0.lcssa.i.i.i513 = phi ptr [ %scevgep.i.i.i523, %._crit_edge.loopexit.i.i.i526 ], [ %.sroa.0.0.copyload.i509, %bb.fl ] ; 5 uses
  %i.awu = ashr exact i64 %.pre-phi61.i.i.i512, 2
  switch i64 %i.awu, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread [
    i64 3, label %bb.fr
    i64 2, label %._crit_edge._crit_edge.i.i.i519
    i64 1, label %._crit_edge._crit_edge57.i.i.i514
  ]

bb.fr:                                            ; preds = %._crit_edge.i.i.i511
  %i.awv = load i32, ptr %.sroa.034.0.lcssa.i.i.i513, align 4, !tbaa !41
  %i.aww = zext i32 %i.awv to i64
  %i.awx = icmp eq i64 %indvars.iv1648, %i.aww
  br i1 %i.awx, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.awy = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i.i.i513, i64 4
  br label %._crit_edge._crit_edge.i.i.i519

._crit_edge._crit_edge.i.i.i519:                  ; preds = %._crit_edge.i.i.i511, %bb.fs
  %.sroa.034.1.i.i.i521 = phi ptr [ %i.awy, %bb.fs ], [ %.sroa.034.0.lcssa.i.i.i513, %._crit_edge.i.i.i511 ] ; 3 uses
  %i.awz = load i32, ptr %.sroa.034.1.i.i.i521, align 4, !tbaa !41
  %i.axa = zext i32 %i.awz to i64
  %i.axb = icmp eq i64 %indvars.iv1648, %i.axa
  br i1 %i.axb, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532, label %bb.ft

bb.ft:                                            ; preds = %._crit_edge._crit_edge.i.i.i519
  %i.axc = getelementptr inbounds nuw i8, ptr %.sroa.034.1.i.i.i521, i64 4
  br label %._crit_edge._crit_edge57.i.i.i514

._crit_edge._crit_edge57.i.i.i514:                ; preds = %._crit_edge.i.i.i511, %bb.ft
  %.sroa.034.2.i.i.i516 = phi ptr [ %i.axc, %bb.ft ], [ %.sroa.034.0.lcssa.i.i.i513, %._crit_edge.i.i.i511 ] ; 2 uses
  %i.axd = load i32, ptr %.sroa.034.2.i.i.i516, align 4, !tbaa !41
  %i.axe = zext i32 %i.axd to i64
  %i.axf = icmp eq i64 %indvars.iv1648, %i.axe
  %spec.select.i.i.i517 = select i1 %i.axf, ptr %.sroa.034.2.i.i.i516, ptr %.sroa.0.0.copyload.i510
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.loopexit.split.loop.exit: ; preds = %bb.fp
  %i.axg = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i525, i64 12
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.loopexit.split.loop.exit2197: ; preds = %bb.fo
  %i.axh = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i525, i64 8
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.loopexit.split.loop.exit2199: ; preds = %bb.fn
  %i.axi = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i525, i64 4
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532: ; preds = %bb.fm, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.loopexit.split.loop.exit, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.loopexit.split.loop.exit2197, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.loopexit.split.loop.exit2199, %._crit_edge._crit_edge57.i.i.i514, %._crit_edge._crit_edge.i.i.i519, %bb.fr
  %.sroa.010.0.in.sroa.speculated.i.i.i518 = phi ptr [ %.sroa.034.1.i.i.i521, %._crit_edge._crit_edge.i.i.i519 ], [ %spec.select.i.i.i517, %._crit_edge._crit_edge57.i.i.i514 ], [ %.sroa.034.0.lcssa.i.i.i513, %bb.fr ], [ %i.axi, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.loopexit.split.loop.exit2199 ], [ %i.axh, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.loopexit.split.loop.exit2197 ], [ %i.axg, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i525, %bb.fm ] ; 3 uses
  %.not1168 = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i518, %.sroa.0.0.copyload.i510
  br i1 %.not1168, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread, label %bb.fu

bb.fu:                                            ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532
  %i.axj = ptrtoint ptr %.sroa.010.0.in.sroa.speculated.i.i.i518 to i64
  %i.axk = sub i64 %i.axj, %i.avx
  %i.axl = and i64 %i.axk, 4
  %.not273 = icmp eq i64 %i.axl, 0
  br i1 %.not273, label %bb.fv, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread

bb.fv:                                            ; preds = %bb.fu
  %i.axm = getelementptr inbounds nuw i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i518, i64 4
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !41
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread

bb.fw:                                            ; preds = %.preheader
  %i.axo = getelementptr inbounds nuw i8, ptr %i.avt, i64 1 ; 4 uses
  %.sroa.0.0.copyload.i535 = load ptr, ptr %7, align 8 ; 4 uses
  %.sroa.0.0.copyload.i536 = load ptr, ptr %i.is, align 8 ; 3 uses
  %i.axp = ptrtoint ptr %.sroa.0.0.copyload.i536 to i64 ; 2 uses
  %i.axq = ptrtoint ptr %.sroa.0.0.copyload.i535 to i64 ; 2 uses
  %i.axr = sub i64 %i.axp, %i.axq                 ; 3 uses
  %i.axs = ashr i64 %i.axr, 4                     ; 2 uses
  %i.axt = icmp sgt i64 %i.axs, 0
  br i1 %i.axt, label %.lr.ph.i.i.i548, label %._crit_edge.i.i.i537

.lr.ph.i.i.i548:                                  ; preds = %bb.fw
  %i.axu = and i64 %i.axr, -16
  %scevgep.i.i.i549 = getelementptr i8, ptr %.sroa.0.0.copyload.i535, i64 %i.axu ; 2 uses
  br label %bb.fx

bb.fx:                                            ; preds = %bb.gb, %.lr.ph.i.i.i548
  %.052.i.i.i550 = phi i64 [ %i.axs, %.lr.ph.i.i.i548 ], [ %i.ayl, %bb.gb ] ; 2 uses
  %.sroa.034.051.i.i.i551 = phi ptr [ %.sroa.0.0.copyload.i535, %.lr.ph.i.i.i548 ], [ %i.ayk, %bb.gb ] ; 9 uses
  %i.axv = load i32, ptr %.sroa.034.051.i.i.i551, align 4, !tbaa !41
  %i.axw = zext i32 %i.axv to i64
  %i.axx = icmp eq i64 %indvars.iv1648, %i.axw
  br i1 %i.axx, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.axy = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i551, i64 4
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !41
  %i.aya = zext i32 %i.axz to i64
  %i.ayb = icmp eq i64 %indvars.iv1648, %i.aya
  br i1 %i.ayb, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit2191, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ayc = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i551, i64 8
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !41
  %i.aye = zext i32 %i.ayd to i64
  %i.ayf = icmp eq i64 %indvars.iv1648, %i.aye
  br i1 %i.ayf, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit2189, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ayg = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i551, i64 12
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !41
  %i.ayi = zext i32 %i.ayh to i64
  %i.ayj = icmp eq i64 %indvars.iv1648, %i.ayi
  br i1 %i.ayj, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ayk = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i551, i64 16
  %i.ayl = add nsw i64 %.052.i.i.i550, -1
  %i.aym = icmp sgt i64 %.052.i.i.i550, 1
  br i1 %i.aym, label %bb.fx, label %._crit_edge.loopexit.i.i.i552, !llvm.loop !129

._crit_edge.loopexit.i.i.i552:                    ; preds = %bb.gb
  %.pre59.i.i.i553 = ptrtoint ptr %scevgep.i.i.i549 to i64
  %.pre60.i.i.i554 = sub i64 %i.axp, %.pre59.i.i.i553
  br label %._crit_edge.i.i.i537

._crit_edge.i.i.i537:                             ; preds = %._crit_edge.loopexit.i.i.i552, %bb.fw
  %.pre-phi61.i.i.i538 = phi i64 [ %.pre60.i.i.i554, %._crit_edge.loopexit.i.i.i552 ], [ %i.axr, %bb.fw ]
  %.sroa.034.0.lcssa.i.i.i539 = phi ptr [ %scevgep.i.i.i549, %._crit_edge.loopexit.i.i.i552 ], [ %.sroa.0.0.copyload.i535, %bb.fw ] ; 5 uses
  %i.ayn = ashr exact i64 %.pre-phi61.i.i.i538, 2
  switch i64 %i.ayn, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread [
    i64 3, label %bb.gc
    i64 2, label %._crit_edge._crit_edge.i.i.i545
    i64 1, label %._crit_edge._crit_edge57.i.i.i540
  ]

bb.gc:                                            ; preds = %._crit_edge.i.i.i537
  %i.ayo = load i32, ptr %.sroa.034.0.lcssa.i.i.i539, align 4, !tbaa !41
  %i.ayp = zext i32 %i.ayo to i64
  %i.ayq = icmp eq i64 %indvars.iv1648, %i.ayp
  br i1 %i.ayq, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ayr = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i.i.i539, i64 4
  br label %._crit_edge._crit_edge.i.i.i545

._crit_edge._crit_edge.i.i.i545:                  ; preds = %._crit_edge.i.i.i537, %bb.gd
  %.sroa.034.1.i.i.i547 = phi ptr [ %i.ayr, %bb.gd ], [ %.sroa.034.0.lcssa.i.i.i539, %._crit_edge.i.i.i537 ] ; 3 uses
  %i.ays = load i32, ptr %.sroa.034.1.i.i.i547, align 4, !tbaa !41
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = icmp eq i64 %indvars.iv1648, %i.ayt
  br i1 %i.ayu, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558, label %bb.ge

bb.ge:                                            ; preds = %._crit_edge._crit_edge.i.i.i545
  %i.ayv = getelementptr inbounds nuw i8, ptr %.sroa.034.1.i.i.i547, i64 4
  br label %._crit_edge._crit_edge57.i.i.i540

._crit_edge._crit_edge57.i.i.i540:                ; preds = %._crit_edge.i.i.i537, %bb.ge
  %.sroa.034.2.i.i.i542 = phi ptr [ %i.ayv, %bb.ge ], [ %.sroa.034.0.lcssa.i.i.i539, %._crit_edge.i.i.i537 ] ; 2 uses
  %i.ayw = load i32, ptr %.sroa.034.2.i.i.i542, align 4, !tbaa !41
  %i.ayx = zext i32 %i.ayw to i64
  %i.ayy = icmp eq i64 %indvars.iv1648, %i.ayx
  %spec.select.i.i.i543 = select i1 %i.ayy, ptr %.sroa.034.2.i.i.i542, ptr %.sroa.0.0.copyload.i536
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit: ; preds = %bb.ga
  %i.ayz = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i551, i64 12
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit2189: ; preds = %bb.fz
  %i.aza = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i551, i64 8
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit2191: ; preds = %bb.fy
  %i.azb = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i551, i64 4
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558: ; preds = %bb.fx, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit2189, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit2191, %._crit_edge._crit_edge57.i.i.i540, %._crit_edge._crit_edge.i.i.i545, %bb.gc
  %.sroa.010.0.in.sroa.speculated.i.i.i544 = phi ptr [ %.sroa.034.1.i.i.i547, %._crit_edge._crit_edge.i.i.i545 ], [ %spec.select.i.i.i543, %._crit_edge._crit_edge57.i.i.i540 ], [ %.sroa.034.0.lcssa.i.i.i539, %bb.gc ], [ %i.azb, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit2191 ], [ %i.aza, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit2189 ], [ %i.ayz, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i551, %bb.fx ] ; 3 uses
  %.not1167 = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i544, %.sroa.0.0.copyload.i536
  br i1 %.not1167, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread, label %bb.gf

bb.gf:                                            ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558
  %i.azc = ptrtoint ptr %.sroa.010.0.in.sroa.speculated.i.i.i544 to i64
  %i.azd = sub i64 %i.azc, %i.axq
  %i.aze = and i64 %i.azd, 4
  %.not272 = icmp eq i64 %i.aze, 0
  br i1 %.not272, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.azf = getelementptr inbounds i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i544, i64 -4
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !41
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread: ; preds = %._crit_edge.i.i.i537, %._crit_edge.i.i.i511, %.preheader, %bb.gg, %bb.gf, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532, %bb.fu, %bb.fv
  %.01151 = phi i32 [ %indvars1650, %.preheader ], [ %i.axn, %bb.fv ], [ %35, %bb.fu ], [ %35, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532 ], [ %i.apn, %bb.gf ], [ %i.azg, %bb.gg ], [ %i.apn, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558 ], [ %35, %._crit_edge.i.i.i511 ], [ %i.apn, %._crit_edge.i.i.i537 ]
  %.0240 = phi ptr [ %i.avt, %.preheader ], [ %i.avv, %bb.fv ], [ %i.avv, %bb.fu ], [ %i.avv, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532 ], [ %i.axo, %bb.gf ], [ %i.axo, %bb.gg ], [ %i.axo, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit558 ], [ %i.avv, %._crit_edge.i.i.i511 ], [ %i.axo, %._crit_edge.i.i.i537 ]
  %i.azh = invoke i64 @_Z15search_res_atomPKciPK7t_atomsS0_b(ptr noundef nonnull %.0240, i32 noundef %.01151, ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i1 noundef zeroext true)
          to label %bb.gh unwind label %.loopexit1187 ; 2 uses

bb.gh:                                            ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread
  %.sroa.0905.0.extract.trunc = trunc i64 %i.azh to i32 ; 2 uses
  %i.azi = and i64 %i.azh, 4294967296
  %.not2224 = icmp eq i64 %i.azi, 0
  br i1 %.not2224, label %.thread2071, label %_ZNKRSt8optionalIiE5valueEv.exit562

_ZNKRSt8optionalIiE5valueEv.exit562:              ; preds = %bb.gh
  %.not.i563 = icmp eq ptr %.sroa.9.01478, %.sroa.13.01479
  br i1 %.not.i563, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %_ZNKRSt8optionalIiE5valueEv.exit562
  store i32 %.sroa.0905.0.extract.trunc, ptr %.sroa.9.01478, align 4, !tbaa !41
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit572

bb.gj:                                            ; preds = %_ZNKRSt8optionalIiE5valueEv.exit562
  %i.azj = ptrtoint ptr %.sroa.13.01479 to i64
  %i.azk = ptrtoint ptr %.sroa.0924.01477 to i64
  %i.azl = sub i64 %i.azj, %i.azk                 ; 6 uses
  %i.azm = icmp eq i64 %i.azl, 9223372036854775804
  br i1 %i.azm, label %bb.gk, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i564

bb.gk:                                            ; preds = %bb.gj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc570 unwind label %.loopexit.split-lp1188

.noexc570:                                        ; preds = %bb.gk
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i564: ; preds = %bb.gj
  %i.azn = ashr exact i64 %i.azl, 2               ; 3 uses
  %.sroa.speculated.i.i.i565 = call i64 @llvm.umax.i64(i64 %i.azn, i64 1)
  %i.azo = add nsw i64 %.sroa.speculated.i.i.i565, %i.azn ; 2 uses
  %i.azp = icmp ult i64 %i.azo, %i.azn
  %i.azq = call i64 @llvm.umin.i64(i64 %i.azo, i64 2305843009213693951)
  %i.azr = select i1 %i.azp, i64 2305843009213693951, i64 %i.azq ; 3 uses
  %.not.i.i.i566 = icmp ne i64 %i.azr, 0
  call void @llvm.assume(i1 %.not.i.i.i566)
  %i.azs = shl nuw nsw i64 %i.azr, 2
  %i.azt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azs) #23
          to label %.noexc571 unwind label %.loopexit1187 ; 4 uses

.noexc571:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i564
  %i.azu = getelementptr inbounds i8, ptr %i.azt, i64 %i.azl ; 2 uses
  store i32 %.sroa.0905.0.extract.trunc, ptr %i.azu, align 4, !tbaa !41
  %i.azv = icmp sgt i64 %i.azl, 0
  br i1 %i.azv, label %bb.gl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i567

bb.gl:                                            ; preds = %.noexc571
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.azt, ptr align 4 %.sroa.0924.01477, i64 %i.azl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i567

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i567: ; preds = %bb.gl, %.noexc571
  %.not.i17.i.i568 = icmp eq ptr %.sroa.0924.01477, null
  br i1 %.not.i17.i.i568, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i569, label %bb.gm

bb.gm:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i567
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0924.01477, i64 noundef %i.azl) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i569

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i569: ; preds = %bb.gm, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i567
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.azr
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit572

.loopexit1187:                                    ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit532.thread, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i564
  %lpad.loopexit1189 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

.loopexit.split-lp1188:                           ; preds = %bb.gk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit572: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i569, %bb.gi
  %.sroa.0924.1 = phi ptr [ %.sroa.0924.01477, %bb.gi ], [ %i.azt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i569 ] ; 6 uses
  %.sroa.9.01478.pn = phi ptr [ %.sroa.9.01478, %bb.gi ], [ %i.azu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i569 ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.01479, %bb.gi ], [ %i.azw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i569 ] ; 3 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.sroa.9.01478.pn, i64 4 ; 2 uses
  %indvars.iv.next1646 = add nuw nsw i64 %indvars.iv1645, 1
  %i.azx = icmp samesign ult i64 %indvars.iv1645, 3
  br i1 %i.azx, label %.preheader, label %bb.gn, !llvm.loop !132

bb.gn:                                            ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit572
  store i8 1, ptr %i.avp, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  %i.azy = ptrtoint ptr %.sroa.9.1 to i64
  %i.azz = ptrtoint ptr %.sroa.0924.1 to i64
  %i.baa = sub i64 %i.azy, %i.azz
  %i.bab = getelementptr inbounds nuw i8, ptr %.sroa.0924.1, i64 %i.baa
  %i.bac = getelementptr inbounds nuw i8, ptr %.sroa.0932.01482, i64 192
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %31, ptr %.sroa.0924.1, ptr %i.bab, ptr null, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.bac, i1 noundef zeroext false)
          to label %bb.go unwind label %bb.gt

bb.go:                                            ; preds = %bb.gn
  %i.bad = load ptr, ptr %i.jb, align 8, !tbaa !74 ; 10 uses
  %i.bae = load ptr, ptr %i.jc, align 8, !tbaa !77
  %.not.i.i573 = icmp eq ptr %i.bad, %i.bae
  br i1 %.not.i.i573, label %bb.gr, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.baf = load <2 x ptr>, ptr %31, align 16, !tbaa !40
  store <2 x ptr> %i.baf, ptr %i.bad, align 8, !tbaa !40
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bad, i64 16
  %i.bah = load ptr, ptr %i.jd, align 16, !tbaa !78
  store ptr %i.bah, ptr %i.bag, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %31, i8 0, i64 24, i1 false)
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bad, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bai, ptr noundef nonnull align 8 dereferenceable(48) %i.je, i64 48, i1 false), !tbaa.struct !80
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bad, i64 72 ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bad, i64 88 ; 3 uses
  store ptr %i.bak, ptr %i.baj, align 8, !tbaa !19
  %i.bal = load ptr, ptr %i.jf, align 8, !tbaa !37 ; 2 uses
  %i.bam = icmp eq ptr %i.bal, %i.jg
  br i1 %i.bam, label %bb.gq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i574

bb.gq:                                            ; preds = %bb.gp
  %i.ban = load i64, ptr %i.jh, align 16, !tbaa !22 ; 3 uses
  %i.bao = icmp ult i64 %i.ban, 16
  call void @llvm.assume(i1 %i.bao)
  %i.bap = add nuw nsw i64 %i.ban, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bak, ptr noundef nonnull align 8 dereferenceable(1) %i.jg, i64 %i.bap, i1 false)
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit577.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i574: ; preds = %bb.gp
  store ptr %i.bal, ptr %i.baj, align 8, !tbaa !37
  %i.baq = load i64, ptr %i.jg, align 8, !tbaa !25
  store i64 %i.baq, ptr %i.bak, align 8, !tbaa !25
  %.pre1671 = load i64, ptr %i.jh, align 16, !tbaa !22
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit577.thread

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit577.thread: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i574
  %i.bar = phi i64 [ %.pre1671, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i574 ], [ %i.ban, %bb.gq ]
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bad, i64 80
  store i64 %i.bar, ptr %i.bas, align 8, !tbaa !22
  store ptr %i.jg, ptr %i.jf, align 8, !tbaa !37
  store i64 0, ptr %i.jh, align 16, !tbaa !22
  store i8 0, ptr %i.jg, align 8, !tbaa !25
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bad, i64 104
  %i.bau = load i8, ptr %i.ji, align 8, !tbaa !81, !range !56, !noundef !57
  store i8 %i.bau, ptr %i.bat, align 8, !tbaa !81
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bad, i64 112
  store ptr %i.bav, ptr %i.jb, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i579

bb.gr:                                            ; preds = %bb.go
  invoke void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.bad, ptr noundef nonnull align 8 dereferenceable(105) %31)
          to label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit577 unwind label %bb.gu

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit577: ; preds = %bb.gr
  %.pre1672 = load ptr, ptr %i.jf, align 8, !tbaa !37 ; 2 uses
  %i.baw = icmp eq ptr %.pre1672, %i.jg
  br i1 %i.baw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i578

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i578: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit577
  %i.bax = load i64, ptr %i.jg, align 8, !tbaa !25
  %i.bay = add i64 %i.bax, 1
  call void @_ZdlPvm(ptr noundef %.pre1672, i64 noundef %i.bay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i579: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit577, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE9push_backEOS0_.exit577.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i578
  %i.baz = load ptr, ptr %31, align 16, !tbaa !87 ; 3 uses
  %.not.i.i.i.i580 = icmp eq ptr %i.baz, null
  br i1 %.not.i.i.i.i580, label %_ZN17InteractionOfTypeD2Ev.exit582, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i579
  %i.bba = load ptr, ptr %i.jd, align 16, !tbaa !78
  %i.bbb = ptrtoint ptr %i.bba to i64
  %i.bbc = ptrtoint ptr %i.baz to i64
  %i.bbd = sub i64 %i.bbb, %i.bbc
  call void @_ZdlPvm(ptr noundef nonnull %i.baz, i64 noundef %i.bbd) #25
  br label %_ZN17InteractionOfTypeD2Ev.exit582

_ZN17InteractionOfTypeD2Ev.exit582:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i579, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %.thread2071

bb.gt:                                            ; preds = %bb.gn
  %i.bbe = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gr
  %i.bbf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %31) #21
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.pn270 = phi { ptr, i32 } [ %i.bbf, %bb.gu ], [ %i.bbe, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.gx

.thread2071:                                      ; preds = %bb.gh, %_ZN17InteractionOfTypeD2Ev.exit582
  %.sroa.0924.120682076 = phi ptr [ %.sroa.0924.1, %_ZN17InteractionOfTypeD2Ev.exit582 ], [ %.sroa.0924.01477, %bb.gh ] ; 3 uses
  %.sroa.13.120702075 = phi ptr [ %.sroa.13.1, %_ZN17InteractionOfTypeD2Ev.exit582 ], [ %.sroa.13.01479, %bb.gh ]
  %.not.i.i.i583 = icmp eq ptr %.sroa.0924.120682076, null
end_hunk_2
