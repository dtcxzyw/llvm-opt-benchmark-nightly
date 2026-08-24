Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxelalgorithms?download=true
inline.NumInlined: 679
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE:bb.a
_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.bm
  %i.vh = sdiv exact i64 %i.vf, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.vh, i64 1)
  %i.vi = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.vh ; 2 uses
  %i.vj = icmp ult i64 %i.vi, %i.vh
  %i.vk = tail call i64 @llvm.umin.i64(i64 %i.vi, i64 384307168202282325)
  %i.vl = select i1 %i.vj, i64 384307168202282325, i64 %i.vk ; 3 uses
  %.not.i.i.i.i269.1 = icmp ne i64 %i.vl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i269.1)
  %i.vm = mul nuw nsw i64 %i.vl, 24
  %i.vn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vm) #21
          to label %.noexc271.1 unwind label %.loopexit337 ; 5 uses

.noexc271.1:                                      ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vf ; 4 uses
  store ptr %i.pt, ptr %i.vo, align 8, !tbaa !81
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store i48 %.sroa.0287.0.insert.insert291.reass, ptr %i.vp, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 14
  store i48 %.sroa.0302.0.insert.insert305.reass, ptr %i.vq, align 2
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 20
  store i8 6, ptr %i.vr, align 4, !tbaa !83
  %.not10.i.i.i.i.i.i.1 = icmp eq ptr %i.vc, %i.uu
  br i1 %.not10.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.noexc271.1, %.lr.ph.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.1 = phi ptr [ %i.vt, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.vn, %.noexc271.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.1 = phi ptr [ %i.vs, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.vc, %.noexc271.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.1, i64 24, i1 false), !tbaa.struct !85, !alias.scope !268
  %i.vs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.vs, %i.uu
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !91

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %.noexc271.1
  %.0.lcssa.i.i.i.i.i.i.1 = phi ptr [ %i.vn, %.noexc271.1 ], [ %i.vt, %.lr.ph.i.i.i.i.i.i.1 ]
  %i.vu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.1, i64 24
  %.not.i36.i.i.i.1 = icmp eq ptr %i.vc, null
  br i1 %.not.i36.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  %i.vv = load ptr, ptr %i.uv, align 8, !tbaa !80
  %i.vw = ptrtoint ptr %i.vv to i64
  %i.vx = sub i64 %i.vw, %i.ve
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vc, i64 noundef %i.vx) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1: ; preds = %bb.bn, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  store ptr %i.vn, ptr %i.us, align 8, !tbaa !84
  store ptr %i.vu, ptr %i.ut, align 8, !tbaa !25
  %i.vy = getelementptr inbounds nuw [24 x i8], ptr %i.vn, i64 %i.vl
  store ptr %i.vy, ptr %i.uv, align 8, !tbaa !80
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, %bb.bl, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.vz = add i16 %storemerge137380, 1            ; 2 uses
  %i.wa = load i16, ptr %i.qf, align 8, !tbaa !267 ; 2 uses
  %.not138 = icmp sgt i16 %i.vz, %i.wa
  br i1 %.not138, label %._crit_edge383.loopexit, label %bb.ay, !llvm.loop !272

._crit_edge383.loopexit:                          ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1
  %.pre = load i16, ptr %i.qb, align 2, !tbaa !266
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %._crit_edge383.loopexit, %.lr.ph387.split
  %i.wb = phi i16 [ %.pre, %._crit_edge383.loopexit ], [ %i.qt, %.lr.ph387.split ] ; 4 uses
  %i.wc = phi i16 [ %i.wa, %._crit_edge383.loopexit ], [ %i.qu, %.lr.ph387.split ]
  %i.wd = add i16 %storemerge135385, 1            ; 2 uses
  %.not136 = icmp sgt i16 %i.wd, %i.wb
  br i1 %.not136, label %._crit_edge388.loopexit408, label %.lr.ph387.split, !llvm.loop !273

._crit_edge388.loopexit408:                       ; preds = %._crit_edge383
  %.pre441 = load i16, ptr %i.qc, align 2, !tbaa !265
  br label %._crit_edge388

._crit_edge388:                                   ; preds = %.lr.ph387, %._crit_edge388.loopexit408, %.lr.ph392.split
  %i.we = phi i16 [ %.pre441, %._crit_edge388.loopexit408 ], [ %i.qj, %.lr.ph392.split ], [ %i.qj, %.lr.ph387 ] ; 2 uses
  %i.wf = phi i16 [ %i.wb, %._crit_edge388.loopexit408 ], [ %i.qk, %.lr.ph392.split ], [ %i.qk, %.lr.ph387 ]
  %i.wg = phi i16 [ %i.wb, %._crit_edge388.loopexit408 ], [ %i.ql, %.lr.ph392.split ], [ %i.ql, %.lr.ph387 ]
  %i.wh = add i16 %storemerge133390, 1            ; 2 uses
  %.not134 = icmp sgt i16 %i.wh, %i.we
  br i1 %.not134, label %._crit_edge393, label %.lr.ph392.split, !llvm.loop !275

._crit_edge393:                                   ; preds = %._crit_edge388, %.lr.ph392, %bb.ax
  %.0119.add = add nuw nsw i64 %.0119.idx394, 24  ; 2 uses
  %.not132 = icmp eq i64 %.0119.add, 144
  br i1 %.not132, label %.loopexit338, label %bb.ax

.loopexit338:                                     ; preds = %._crit_edge393, %bb.at
  %i.wi = add nsw i16 %storemerge129397, 1
  %exitcond435 = icmp eq i16 %storemerge129397, %.sroa.9.0.extract.trunc
  br i1 %exitcond435, label %._crit_edge399, label %bb.as, !llvm.loop !276

._crit_edge399:                                   ; preds = %.loopexit338
  %i.wj = add nsw i16 %storemerge127402, 1
  %exitcond436 = icmp eq i16 %storemerge127402, %.sroa.7.0.extract.trunc
  br i1 %exitcond436, label %._crit_edge403, label %.preheader, !llvm.loop !277

._crit_edge403:                                   ; preds = %._crit_edge399
  %i.wk = add nsw i16 %storemerge405, 1
  %exitcond437 = icmp eq i16 %storemerge405, %.sroa.071.0.extract.trunc
  br i1 %exitcond437, label %._crit_edge406.split, label %.preheader339, !llvm.loop !278

._crit_edge406.split:                             ; preds = %._crit_edge403, %_ZN7voxalgo10LightQueueC2Em.exit229, %.preheader339.lr.ph
  %i.wl = phi ptr [ null, %_ZN7voxalgo10LightQueueC2Em.exit229 ], [ %i.fe, %.preheader339.lr.ph ], [ %i.fe, %._crit_edge403 ] ; 3 uses
  invoke void @_ZNK8MMVManip11blitBackAllEPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS3_ESaISt4pairIKS3_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, i1 noundef zeroext true)
          to label %bb.bo unwind label %bb.au

bb.bo:                                            ; preds = %._crit_edge406.split
  invoke void @_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE(ptr noundef nonnull %0, i48 %.sroa.0.0.insert.insert.i.i, i48 %.sroa.0.0.insert.insert.i.i165, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2)
          to label %bb.bp unwind label %bb.au

bb.bp:                                            ; preds = %bb.bo
  %.not.i.i.i.i272 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i.i272, label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !247
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %i.wl to i64
  %i.wq = sub i64 %i.wo, %i.wp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wq) #22
  br label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit

_ZN7voxalgo23SunlightPropagationDataD2Ev.exit:    ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.wr = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.wr) #5
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.ws = getelementptr inbounds nuw i8, ptr %4, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.ws) #5
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %bb.a, %_ZNK9VoxelArea14hasEmptyExtentEv.exit, %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit
  ret void

.body278thread-pre-split:                         ; preds = %bb.q, %bb.r, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i, %bb.av, %bb.au, %.loopexit.split-lp, %.loopexit337
  %.pn148.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit337 ], [ %i.pv, %bb.av ], [ %i.pu, %bb.au ], [ %i.mb, %bb.r ], [ %i.ma, %bb.q ], [ %i.pk, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ]
  %.pr = load ptr, ptr %6, align 8, !tbaa !201
  br label %.body278

.body278:                                         ; preds = %.body278thread-pre-split, %.loopexit342, %.loopexit.split-lp343
  %i.wt = phi ptr [ %.pr, %.body278thread-pre-split ], [ %i.me, %.loopexit342 ], [ %i.me, %.loopexit.split-lp343 ] ; 3 uses
  %.pn148.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn.ph, %.body278thread-pre-split ], [ %lpad.loopexit344, %.loopexit342 ], [ %lpad.loopexit.split-lp345, %.loopexit.split-lp343 ]
  %.not.i.i.i.i273 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i.i273, label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274, label %bb.br

bb.br:                                            ; preds = %.body278
  %i.wu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !247
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = ptrtoint ptr %i.wt to i64
  %i.wy = sub i64 %i.ww, %i.wx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.wy) #22
  br label %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274

_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274: ; preds = %bb.br, %.body278
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.wz) #5
  br label %.loopexit336

.loopexit336:                                     ; preds = %.loopexit.i216, %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274, %.body206.thread
  %.pn148.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn, %_ZN7voxalgo23SunlightPropagationDataD2Ev.exit274 ], [ %lpad.loopexit.i196, %.body206.thread ], [ %lpad.loopexit.i217, %.loopexit.i216 ]
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.xa = getelementptr inbounds nuw i8, ptr %4, i64 392
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.xa) #5
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.i174, %.loopexit336, %.body.thread
  %.pn148.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn148.pn.pn.pn.pn, %.loopexit336 ], [ %lpad.loopexit.i, %.body.thread ], [ %lpad.loopexit.i175, %.loopexit.i174 ]
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  resume { ptr, i32 } %.pn148.pn.pn.pn.pn.pn
}

declare void @_ZNK8MMVManip11blitBackAllEPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS3_ESaISt4pairIKS3_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo18fill_with_sunlightEP8MapBlockPK14NodeDefManagerPA16_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv43 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next44, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv43
  %i.k = shl nuw nsw i64 %indvars.iv43, 8
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, 16
  br i1 %exitcond46.not, label %bb.b, label %.preheader, !llvm.loop !279

bb.d:                                             ; preds = %.preheader, %bb.e
  %indvars.iv40 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next41, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv40 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !138, !range !71, !noundef !72
  %i.n = add nuw nsw i64 %i.k, %indvars.iv40
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit

bb.e:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit
  store i8 %.2, ptr %i.l, align 1, !tbaa !138
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41, 16
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !280

_ZN8MapBlock14getNodeNoCheckEsss.exit:            ; preds = %bb.d, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit
  %indvars.iv = phi i64 [ 15, %bb.d ], [ %indvars.iv.next, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ] ; 3 uses
  %.03036 = phi i8 [ %i.m, %bb.d ], [ %.2, %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit ] ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.p = load i8, ptr %i.b, align 4, !tbaa !70, !range !71, !noundef !72
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = shl nuw nsw i64 %indvars.iv, 4
  %i.s = add nuw nsw i64 %i.n, %i.r               ; 2 uses
  %i.t = select i1 %i.q, i64 0, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.t
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 4 ; 3 uses
  %i.v = and i32 %.sroa.0.0.copyload.i, 65535     ; 2 uses
  %i.w = icmp eq i32 %i.v, 127
  br i1 %i.w, label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32: ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.y, align 1, !tbaa !24 ; 2 uses
  %i.z = trunc nuw i8 %.03036 to i1
  %i.aa = and i8 %.sroa.0.0.copyload.i.i, 64
  %.not = icmp eq i8 %i.aa, 0
  %or.cond = select i1 %i.z, i1 %.not, i1 false
  %.1 = select i1 %or.cond, i8 0, i8 %.03036      ; 3 uses
  %i.ab = trunc nuw i8 %.1 to i1
  %i.ac = select i1 %i.ab, i32 983040, i32 0
  %i.ad = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i = icmp eq i8 %i.ad, 0
  %i.ae = and i32 %.sroa.0.0.copyload.i, 16711680
  %.sroa.6.0.insert.ext = select i1 %.not.i, i32 %i.ae, i32 %i.ac
  %i.af = and i32 %.sroa.0.0.copyload.i, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.ext, %i.af
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %0)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.s
  store i32 %.sroa.0.0.insert.insert, ptr %i.ah, align 4
  %i.ai = load i16, ptr %i.d, align 2, !tbaa !74  ; 2 uses
  %i.aj = icmp ult i16 %i.ai, 4
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32
  store i16 4, ptr %i.d, align 2, !tbaa !74
  store i32 16, ptr %i.e, align 4, !tbaa !75
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !76
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !77
  br label %bb.i

bb.g:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit32
  %i.al = icmp eq i16 %i.ai, 4
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.e, align 4, !tbaa !75
  %i.an = or i32 %i.am, 16
  store i32 %i.an, ptr %i.e, align 4, !tbaa !75
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !78  ; 2 uses
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !79
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.i
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !79
  br label %_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEsss7MapNode.exit:    ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.i, %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %.2 = phi i8 [ %.03036, %_ZN8MapBlock14getNodeNoCheckEsss.exit ], [ %.1, %bb.i ], [ %.1, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not49 = icmp eq i64 %indvars.iv, 0
  br i1 %.not49, label %bb.e, label %_ZN8MapBlock14getNodeNoCheckEsss.exit, !llvm.loop !281
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo18repair_block_lightEP3MapP8MapBlockPSt3mapIN4core8vector3dIsEES3_St4lessIS7_ESaISt4pairIKS7_S3_EEE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.128", align 1    ; 3 uses
  %5 = alloca %"class.std::tuple", align 8        ; 4 uses
  %6 = alloca %"class.std::tuple.128", align 1    ; 3 uses
  %7 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 20 uses
  %8 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 14 uses
  %i.a = alloca [16 x [16 x i8]], align 16        ; 7 uses
  %9 = alloca %"struct.voxalgo::SunlightPropagationData", align 8 ; 17 uses
  %10 = alloca %"class.core::vector3d", align 8   ; 11 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(385) %7, i8 0, i64 384, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 384
  store i8 15, ptr %i.d, align 16, !tbaa !14
  br label %.split.i

.split.i:                                         ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i, %bb.b
  %.0.idx11.i = phi i64 [ %.0.add.i, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.0.ptr12.i = getelementptr inbounds nuw i8, ptr %7, i64 %.0.idx11.i ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.g = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !84
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = icmp ult i64 %i.k, 256
  br i1 %i.l, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %.split.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.i
  %i.q = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i unwind label %.body.thread ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %i.r = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !84 ; 5 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.q, %.noexc10.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.r, %.noexc10.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !85, !alias.scope !282
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !91

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc10.i
  %.not.i8.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.y) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.q, ptr %.0.ptr12.i, align 8, !tbaa !84
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.z, ptr %i.m, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 6144
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !80
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, %.split.i
  %.0.add.i = add nuw nsw i64 %.0.idx11.i, 24     ; 2 uses
  %.not.i = icmp eq i64 %.0.add.i, 384
  br i1 %.not.i, label %_ZN7voxalgo10LightQueueC2Em.exit, label %.split.i

.body.thread:                                     ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZN7voxalgo10LightQueueC2Em.exit:                 ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 392 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(385) %i.ab, i8 0, i64 384, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 776
  store i8 15, ptr %i.ac, align 8, !tbaa !14
  br label %.split.i91

.split.i91:                                       ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94, %_ZN7voxalgo10LightQueueC2Em.exit
  %.0.idx11.i92 = phi i64 [ %.0.add.i95, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94 ], [ 0, %_ZN7voxalgo10LightQueueC2Em.exit ] ; 2 uses
  %.0.ptr12.i93 = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0.idx11.i92 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.ptr12.i93, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.af = load ptr, ptr %.0.ptr12.i93, align 8, !tbaa !84
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24
  %i.ak = icmp ult i64 %i.aj, 256
  br i1 %i.ak, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i97, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i97: ; preds = %.split.i91
  %i.al = getelementptr inbounds nuw i8, ptr %.0.ptr12.i93, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i100 unwind label %.loopexit.i98 ; 4 uses

.noexc10.i100:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i97
  %i.aq = load ptr, ptr %.0.ptr12.i93, align 8, !tbaa !84 ; 5 uses
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i.i101 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not10.i.i.i.i.i101, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106, label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %.noexc10.i100, %.lr.ph.i.i.i.i.i102
  %.012.i.i.i.i.i103 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i102 ], [ %i.ap, %.noexc10.i100 ] ; 2 uses
  %.0911.i.i.i.i.i104 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i102 ], [ %i.aq, %.noexc10.i100 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i103, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i104, i64 24, i1 false), !tbaa.struct !85, !alias.scope !286
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i104, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i103, i64 24
  %.not.i.i.i.i.i105 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i.i105, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106, label %.lr.ph.i.i.i.i.i102, !llvm.loop !91

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106: ; preds = %.lr.ph.i.i.i.i.i102, %.noexc10.i100
  %.not.i8.i.i107 = icmp eq ptr %i.aq, null
  br i1 %.not.i8.i.i107, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i108, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ax) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i108

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i108: ; preds = %bb.d, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i106
  store ptr %i.ap, ptr %.0.ptr12.i93, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.ay, ptr %i.al, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 6144
  store ptr %i.az, ptr %i.ad, align 8, !tbaa !80
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i94: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i108, %.split.i91
  %.0.add.i95 = add nuw nsw i64 %.0.idx11.i92, 24 ; 2 uses
  %.not.i96 = icmp eq i64 %.0.add.i95, 384
  br i1 %.not.i96, label %_ZN7voxalgo10LightQueueC2Em.exit111, label %.split.i91

.loopexit.i98:                                    ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i97
  %lpad.loopexit.i99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %i.ab) #5
end_hunk_0
