Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_cao?download=true
inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerE:bb.a
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %i.aed
  store ptr %i.aem, ptr %i.wj, align 8, !tbaa !565
  br label %_ZN5scene5SMesh13addMeshBufferEPNS_11IMeshBufferE.exit.i

_ZN5scene5SMesh13addMeshBufferEPNS_11IMeshBufferE.exit.i: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i.i, %bb.ed
  %i.aen = getelementptr inbounds nuw i8, ptr %i.abn, i64 192 ; 2 uses
  %i.aeo = load i32, ptr %i.aen, align 8, !tbaa !466
  %i.aep = add nsw i32 %i.aeo, -1                 ; 2 uses
  store i32 %i.aep, ptr %i.aen, align 8, !tbaa !466
  %.not.i.i.i66.i = icmp eq i32 %i.aep, 0
  br i1 %.not.i.i.i66.i, label %bb.eh, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit.i

bb.eh:                                            ; preds = %_ZN5scene5SMesh13addMeshBufferEPNS_11IMeshBufferE.exit.i
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.abn, i64 184 ; 2 uses
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !55
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.aet = load ptr, ptr %i.aes, align 8
  call void %i.aet(ptr noundef nonnull align 8 dereferenceable(12) %i.aeq) #28, !inline_history !738
  br label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit.i

_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit.i: ; preds = %bb.eh, %_ZN5scene5SMesh13addMeshBufferEPNS_11IMeshBufferE.exit.i
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.090.0123.i, i64 96 ; 2 uses
  %.not108.i = icmp eq ptr %i.aeu, %i.ws
  br i1 %.not108.i, label %._crit_edge126.i, label %.lr.ph125.i

bb.ei:                                            ; preds = %bb.du
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ej:                                            ; preds = %_Z8make_irrIN5scene11CMeshBufferIN5video9S3DVertexEEEJEE7irr_ptrIT_EDpOT0_.exit.i
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

.loopexit110.i:                                   ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i.i, %_ZNKSt6vectorIPN5scene11IMeshBufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.dx, %bb.dw
  %lpad.loopexit112.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

.loopexit.split-lp111.i:                          ; preds = %.invoke
  %lpad.loopexit.split-lp113.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ek:                                            ; preds = %.loopexit.split-lp111.i, %.loopexit110.i, %bb.ej
  %.pn46.i = phi { ptr, i32 } [ %i.aew, %bb.ej ], [ %lpad.loopexit112.i, %.loopexit110.i ], [ %lpad.loopexit.split-lp113.i, %.loopexit.split-lp111.i ] ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.abn, i64 192 ; 2 uses
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !466
  %i.aez = add nsw i32 %i.aey, -1                 ; 2 uses
  store i32 %i.aez, ptr %i.aex, align 8, !tbaa !466
  %.not.i.i.i68.i = icmp eq i32 %i.aez, 0
  br i1 %.not.i.i.i68.i, label %bb.el, label %.body.i

bb.el:                                            ; preds = %bb.ek
  %i.afa = getelementptr inbounds nuw i8, ptr %i.abn, i64 184 ; 2 uses
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !55
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afd = load ptr, ptr %i.afc, align 8
  call void %i.afd(ptr noundef nonnull align 8 dereferenceable(12) %i.afa) #28, !inline_history !738
  br label %.body.i

bb.em:                                            ; preds = %bb.dg
  %i.afe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.em, %bb.el, %bb.ek, %bb.ei, %bb.dv, %bb.dt
  %.pn46.pn.pn.pn.i = phi { ptr, i32 } [ %i.afe, %bb.em ], [ %.pn46.i, %bb.el ], [ %lpad.phi.i, %bb.dt ], [ %i.abo, %bb.dv ], [ %i.aev, %bb.ei ], [ %.pn46.i, %bb.ek ] ; 2 uses
  %i.aff = load i32, ptr %i.vz, align 8, !tbaa !466
  %i.afg = add nsw i32 %i.aff, -1                 ; 2 uses
  store i32 %i.afg, ptr %i.vz, align 8, !tbaa !466
  %.not.i.i.i73.i = icmp eq i32 %i.afg, 0
  br i1 %.not.i.i.i73.i, label %bb.en, label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit74.i

bb.en:                                            ; preds = %.body.i
  %i.afh = load ptr, ptr %i.vy, align 8, !tbaa !55
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.afj = load ptr, ptr %i.afi, align 8
  call void %i.afj(ptr noundef nonnull align 8 dereferenceable(12) %i.vy) #28, !inline_history !739
  br label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit74.i

_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit74.i:         ; preds = %bb.en, %.body.i, %bb.dm, %bb.dl
  %.pn46.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.dl ], [ %.pn46.pn.pn.pn.i, %bb.en ], [ %i.wn, %bb.dm ], [ %.pn46.pn.pn.pn.i, %.body.i ]
  call void @_ZNSt5arrayISt6vectorI13PreMeshBufferSaIS1_EELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(76) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

_ZL16generateNodeMeshP6Client7MapNodeRSt6vectorI17MeshAnimationInfoSaIS3_EE.exit: ; preds = %bb.dg
  call void @_ZNSt5arrayISt6vectorI13PreMeshBufferSaIS1_EELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(76) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.afk = load ptr, ptr %i.j, align 8, !tbaa !471 ; 2 uses
  %i.afl = load ptr, ptr %i.bh, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store <2 x float> zeroinitializer, ptr %22, align 8, !tbaa !48
  %i.afm = getelementptr inbounds nuw i8, ptr %22, i64 8
  store float 0.000000e+00, ptr %i.afm, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store <2 x float> zeroinitializer, ptr %23, align 8, !tbaa !48
  %i.afn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store float 0.000000e+00, ptr %i.afn, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  store <2 x float> splat (float 1.000000e+00), ptr %24, align 8, !tbaa !48
  %i.afo = getelementptr inbounds nuw i8, ptr %24, i64 8
  store float 1.000000e+00, ptr %i.afo, align 8, !tbaa !149
  %i.afp = load ptr, ptr %i.afk, align 8, !tbaa !55
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 32
  %i.afr = load ptr, ptr %i.afq, align 8
  %i.afs = call noundef ptr %i.afr(ptr noundef nonnull align 8 dereferenceable(8) %i.afk, ptr noundef nonnull %i.vx, ptr noundef %i.afl, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(12) %22, ptr noundef nonnull align 4 dereferenceable(12) %23, ptr noundef nonnull align 4 dereferenceable(12) %24, i1 noundef zeroext false) ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  store ptr %i.afs, ptr %i.aft, align 8, !tbaa !287
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  %i.afu = load ptr, ptr %i.afs, align 8, !tbaa !55
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 304
  %i.afw = load ptr, ptr %i.afv, align 8
  call void %i.afw(ptr noundef nonnull align 8 dereferenceable(218) %i.afs, i1 noundef zeroext true)
  %i.afx = load ptr, ptr %i.aft, align 8, !tbaa !287 ; 3 uses
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !55 ; 2 uses
  %i.afz = getelementptr i8, ptr %i.afy, i64 -24
  %i.aga = load i64, ptr %i.afz, align 8
  %i.agb = getelementptr inbounds i8, ptr %i.afx, i64 %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8 ; 2 uses
  %i.agd = load i32, ptr %i.agc, align 8, !tbaa !466
  %i.age = add nsw i32 %i.agd, 1
  store i32 %i.age, ptr %i.agc, align 8, !tbaa !466
  %i.agf = load i32, ptr %i.vz, align 8, !tbaa !466
  %i.agg = add nsw i32 %i.agf, -1                 ; 2 uses
  store i32 %i.agg, ptr %i.vz, align 8, !tbaa !466
  %.not.i214 = icmp eq i32 %i.agg, 0
  br i1 %.not.i214, label %bb.eo, label %_ZNK17IReferenceCounted4dropEv.exit215

bb.eo:                                            ; preds = %_ZL16generateNodeMeshP6Client7MapNodeRSt6vectorI17MeshAnimationInfoSaIS3_EE.exit
  %i.agh = load ptr, ptr %i.vy, align 8, !tbaa !55
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8
  call void %i.agj(ptr noundef nonnull align 8 dereferenceable(12) %i.vy) #28, !inline_history !8
  %.pre328 = load ptr, ptr %i.aft, align 8, !tbaa !287 ; 2 uses
  %.pre329 = load ptr, ptr %.pre328, align 8, !tbaa !55
  br label %_ZNK17IReferenceCounted4dropEv.exit215

_ZNK17IReferenceCounted4dropEv.exit215:           ; preds = %_ZL16generateNodeMeshP6Client7MapNodeRSt6vectorI17MeshAnimationInfoSaIS3_EE.exit, %bb.eo
  %i.agk = phi ptr [ %i.afy, %_ZL16generateNodeMeshP6Client7MapNodeRSt6vectorI17MeshAnimationInfoSaIS3_EE.exit ], [ %.pre329, %bb.eo ]
  %i.agl = phi ptr [ %i.afx, %_ZL16generateNodeMeshP6Client7MapNodeRSt6vectorI17MeshAnimationInfoSaIS3_EE.exit ], [ %.pre328, %bb.eo ]
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agk, i64 192
  %i.ago = load ptr, ptr %i.agn, align 8
  call void %i.ago(ptr noundef nonnull align 8 dereferenceable(218) %i.agl, ptr noundef nonnull align 4 dereferenceable(12) %i.agm)
  %i.agp = load ptr, ptr %i.aft, align 8, !tbaa !287
  call fastcc void @"_ZZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEENK3$_3clEPNS2_10ISceneNodeEb"(ptr nonnull %0, ptr nonnull %7, ptr noundef %i.agp, i1 noundef zeroext false)
  br label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit

bb.ep:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.agq = load ptr, ptr %i.j, align 8, !tbaa !471 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  store <2 x float> splat (float 1.000000e+01), ptr %25, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  store <2 x float> zeroinitializer, ptr %26, align 8, !tbaa !48
  %i.agr = getelementptr inbounds nuw i8, ptr %26, i64 8
  store float 0.000000e+00, ptr %i.agr, align 8, !tbaa !149
  %i.ags = load ptr, ptr %i.agq, align 8, !tbaa !55
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 48
  %i.agu = load ptr, ptr %i.agt, align 8
  %i.agv = call noundef ptr %i.agu(ptr noundef nonnull align 8 dereferenceable(8) %i.agq, ptr noundef nonnull %i.bg, ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef nonnull align 4 dereferenceable(12) %26, i32 noundef -1, i32 -1, i32 -1) ; 4 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  store ptr %i.agv, ptr %i.agw, align 8, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %i.agx = load ptr, ptr %i.agv, align 8, !tbaa !55
  %i.agy = getelementptr i8, ptr %i.agx, i64 -24
  %i.agz = load i64, ptr %i.agy, align 8
  %i.aha = getelementptr inbounds i8, ptr %i.agv, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8 ; 2 uses
  %i.ahc = load i32, ptr %i.ahb, align 8, !tbaa !466
  %i.ahd = add nsw i32 %i.ahc, 1
  store i32 %i.ahd, ptr %i.ahb, align 8, !tbaa !466
  call fastcc void @"_ZZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEENK3$_3clEPNS2_10ISceneNodeEb"(ptr nonnull %0, ptr nonnull %7, ptr noundef nonnull %i.agv, i1 noundef zeroext false)
  %i.ahe = load ptr, ptr %i.agw, align 8, !tbaa !261 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ahg = load <2 x float>, ptr %i.ahf, align 8, !tbaa !48
  %i.ahh = fmul nsz <2 x float> %i.ahg, splat (float 1.000000e+01)
  store <2 x float> %i.ahh, ptr %27, align 8, !tbaa !48
  %i.ahi = load ptr, ptr %i.ahe, align 8, !tbaa !55
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 288
  %i.ahk = load ptr, ptr %i.ahj, align 8
  call void %i.ahk(ptr noundef nonnull align 8 dereferenceable(218) %i.ahe, ptr noundef nonnull align 4 dereferenceable(8) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.ahl = load ptr, ptr %i.agw, align 8, !tbaa !261 ; 2 uses
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !55
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 168
  %i.aho = load ptr, ptr %i.ahn, align 8
  %i.ahp = call noundef nonnull align 8 dereferenceable(127) ptr %i.aho(ptr noundef nonnull align 8 dereferenceable(218) %i.ahl, i32 noundef 0), !inline_history !11
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 16 ; 2 uses
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !567 ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i.i218, label %bb.eq, label %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit

bb.eq:                                            ; preds = %bb.ep
  %i.ahs = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 7 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.aht, i8 0, i64 56, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %i.ahs, i64 60
  store float 1.000000e+00, ptr %32, align 4, !tbaa !48
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 40
  store float 1.000000e+00, ptr %i.ahu, align 4, !tbaa !48
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 20
  store float 1.000000e+00, ptr %i.ahv, align 4, !tbaa !48
  store float 1.000000e+00, ptr %i.ahs, align 4, !tbaa !48
  store ptr %i.ahs, ptr %i.ahq, align 8, !tbaa !567
  br label %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit

_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit: ; preds = %bb.ep, %bb.eq
  %i.ahw = phi ptr [ %i.ahs, %bb.eq ], [ %i.ahr, %bb.ep ] ; 3 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 32
  store <2 x float> zeroinitializer, ptr %i.ahx, align 4, !tbaa !48
  store float 1.000000e+00, ptr %i.ahw, align 4, !tbaa !48
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahw, i64 20
  store float 1.000000e+00, ptr %i.ahy, align 4, !tbaa !48
  %i.ahz = load i8, ptr %i.aa, align 8, !tbaa !473
  %.not113 = icmp eq i8 %i.ahz, 1
  br i1 %.not113, label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit, label %bb.er

bb.er:                                            ; preds = %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit
  %i.aia = load ptr, ptr %i.agw, align 8, !tbaa !261 ; 2 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !55
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 168
  %i.aid = load ptr, ptr %i.aic, align 8
  %i.aie = call noundef nonnull align 8 dereferenceable(127) ptr %i.aid(ptr noundef nonnull align 8 dereferenceable(218) %i.aia, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.aif = invoke noundef ptr @_ZN14ITextureSource17getTextureForMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef null)
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  store ptr %i.aif, ptr %i.aie, align 8, !tbaa !568
  %i.aig = load ptr, ptr %28, align 8, !tbaa !134 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.aii = icmp eq ptr %i.aig, %i.aih
  br i1 %i.aii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.et
  %i.aij = load i64, ptr %i.aih, align 8, !tbaa !61
  %i.aik = add i64 %i.aij, 1
  call void @_ZdlPvm(ptr noundef %i.aig, i64 noundef %i.aik) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit

bb.eu:                                            ; preds = %bb.er
  %i.ail = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.ev:                                            ; preds = %bb.es
  %i.aim = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ain = load ptr, ptr %28, align 8, !tbaa !134 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.aip = icmp eq ptr %i.ain, %i.aio
  br i1 %i.aip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.ev
  %i.aiq = load i64, ptr %i.aio, align 8, !tbaa !61
  %i.air = add i64 %i.aiq, 1
  call void @_ZdlPvm(ptr noundef %i.ain, i64 noundef %i.air) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %bb.eu
  %.pn114 = phi { ptr, i32 } [ %i.ail, %bb.eu ], [ %i.aim, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %i.aim, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit146

_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit:             ; preds = %bb.an, %bb.bh, %_ZTW11errorstream.exit, %_ZNK17IReferenceCounted4dropEv.exit, %bb.ah, %bb.ag, %_ZNSt14_Function_baseD2Ev.exit, %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK17IReferenceCounted4dropEv.exit215, %_ZN9ItemStackD2Ev.exit
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ait = load float, ptr %i.ais, align 8, !tbaa !132
  %i.aiu = fcmp nsz olt float %i.ait, 0.000000e+00
  br i1 %i.aiu, label %bb.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

bb.ew:                                            ; preds = %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.aiw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.aiw, ptr %30, align 8, !tbaa !58
  %i.aix = load ptr, ptr %i.aiv, align 8, !tbaa !134 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.aiz = load i64, ptr %i.aiy, align 8, !tbaa !60 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.aiz, ptr %i.a, align 8, !tbaa !138
  %i.aja = icmp ugt i64 %i.aiz, 15
  br i1 %i.aja, label %.noexc.i222, label %._crit_edge.i.i

.noexc.i222:                                      ; preds = %bb.ew
  %i.ajb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ajb, ptr %30, align 8, !tbaa !134
  %i.ajc = load i64, ptr %i.a, align 8, !tbaa !138
  store i64 %i.ajc, ptr %i.aiw, align 8, !tbaa !61
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i222, %bb.ew
  %i.ajd = phi ptr [ %i.ajb, %.noexc.i222 ], [ %i.aiw, %bb.ew ] ; 2 uses
  switch i64 %i.aiz, label %bb.ey [
    i64 1, label %bb.ex
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.ex:                                            ; preds = %._crit_edge.i.i
  %i.aje = load i8, ptr %i.aix, align 1, !tbaa !61
  store i8 %i.aje, ptr %i.ajd, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ey:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajd, ptr align 1 %i.aix, i64 %i.aiz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.ex, %bb.ey
  %i.ajf = load i64, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.ajf, ptr %i.ajg, align 8, !tbaa !60
  %i.ajh = load ptr, ptr %30, align 8, !tbaa !134
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %i.ajf
  store i8 0, ptr %i.aji, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN10GenericCAO14updateTexturesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1076) %0, ptr noundef nonnull align 8 %30)
          to label %bb.ez unwind label %bb.fa

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ajj = load ptr, ptr %30, align 8, !tbaa !134 ; 2 uses
  %i.ajk = icmp eq ptr %i.ajj, %i.aiw
  br i1 %i.ajk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.ez
  %i.ajl = load i64, ptr %i.aiw, align 8, !tbaa !61
  %i.ajm = add i64 %i.ajl, 1
  call void @_ZdlPvm(ptr noundef %i.ajj, i64 noundef %i.ajm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ajn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajo = load ptr, ptr %30, align 8, !tbaa !134 ; 2 uses
  %i.ajp = icmp eq ptr %i.ajo, %i.aiw
  br i1 %i.ajp, label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.fa
  %i.ajq = load i64, ptr %i.aiw, align 8, !tbaa !61
  %i.ajr = add i64 %i.ajq, 1
  call void @_ZdlPvm(ptr noundef %i.ajo, i64 noundef %i.ajr) #35
  br label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223, %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit
  %i.ajs = load ptr, ptr %0, align 8, !tbaa !55
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 136
  %i.aju = load ptr, ptr %i.ajt, align 8
  %i.ajv = call noundef ptr %i.aju(ptr noundef nonnull align 8 dereferenceable(1076) %0) ; 4 uses
  %.not116 = icmp eq ptr %i.ajv, null
  br i1 %.not116, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.ajw = load ptr, ptr %i.bh, align 8, !tbaa !260
  %i.ajx = load ptr, ptr %i.ajv, align 8, !tbaa !55
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 248
  %i.ajz = load ptr, ptr %i.ajy, align 8
  call void %i.ajz(ptr noundef nonnull align 8 dereferenceable(218) %i.ajv, ptr noundef %i.ajw)
  %i.aka = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !460 ; 2 uses
  %.not.i229 = icmp eq ptr %i.aka, null
  br i1 %.not.i229, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !462 ; 2 uses
  %.not2.i = icmp eq ptr %i.akc, null
  br i1 %.not2.i, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit

_ZN15RenderingEngine19get_shadow_rendererEv.exit: ; preds = %bb.fc
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 32
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !464 ; 2 uses
  %.not117 = icmp eq ptr %i.ake, null
  br i1 %.not117, label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread, label %bb.fd

bb.fd:                                            ; preds = %_ZN15RenderingEngine19get_shadow_rendererEv.exit
  call void @_ZN14ShadowRenderer19addNodeToShadowListEPN5scene10ISceneNodeE13E_SHADOW_MODE(ptr noundef nonnull align 8 dereferenceable(208) %i.ake, ptr noundef nonnull %i.ajv, i8 noundef zeroext 1)
  br label %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread

_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread: ; preds = %bb.fb, %bb.fc, %_ZN15RenderingEngine19get_shadow_rendererEv.exit, %bb.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  call void @_ZN10GenericCAO13updateNametagEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !135
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 632
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !470 ; 2 uses
  %.not.i230 = icmp eq ptr %i.aki, null
  br i1 %.not.i230, label %_ZN10GenericCAO12updateMarkerEv.exit, label %bb.fe

bb.fe:                                            ; preds = %_ZN15RenderingEngine19get_shadow_rendererEv.exit.thread
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.akk = load i8, ptr %i.akj, align 4, !tbaa !569, !range !46, !noundef !47
  %i.akl = trunc nuw i8 %i.akk to i1
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !469
  %.not4.i = icmp eq ptr %i.akn, null             ; 2 uses
  br i1 %i.akl, label %bb.fh, label %bb.ff

end_hunk_0
begin_hunk_1_@_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf:bb.a
  %i.m = fpext nsz float %i.l to double
  %i.n = fmul nsz double %i.m, 1.000000e-01
  %i.o = tail call nsz double @llvm.fmuladd.f64(double %i.h, double 9.000000e-01, double %i.n)
  %i.p = fptrunc nsz double %i.o to float
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sink = phi float [ %4, %bb.a ], [ %i.p, %bb.c ], [ %i.l, %bb.b ]
  store float %.sink, ptr %i.f, align 4, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GenericCAO17updateTextureAnimEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1076) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(218) %i.b) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 3 uses
  %.not66 = icmp eq ptr %i.j, null
  br i1 %.not66, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call { <2 x float>, float } %i.n(ptr noundef nonnull align 8 dereferenceable(218) %i.k) ; 2 uses
  %.fca.0.extract51 = extractvalue { <2 x float>, float } %i.o, 0
  %.fca.1.extract52 = extractvalue { <2 x float>, float } %i.o, 1
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call { <2 x float>, float } %i.r(ptr noundef nonnull align 8 dereferenceable(218) %i.j) ; 2 uses
  %.fca.0.extract47 = extractvalue { <2 x float>, float } %i.s, 0
  %.fca.1.extract48 = extractvalue { <2 x float>, float } %i.s, 1
  %i.t = fsub nsz <2 x float> %.fca.0.extract51, %.fca.0.extract47 ; 5 uses
  %i.u = fsub nsz float %.fca.1.extract52, %.fca.1.extract48 ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.t, %i.t
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.w = extractelement <2 x float> %i.t, i64 0   ; 2 uses
  %i.x = tail call nsz float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.v)
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.x) ; 2 uses
  %i.z = fcmp nsz oeq float %i.y, 0.000000e+00
  br i1 %i.z, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = fpext nsz float %i.y to double
  %i.ab = tail call nsz double @llvm.sqrt.f64(double %i.aa)
  %i.ac = fdiv nsz double 1.000000e+00, %i.ab     ; 2 uses
  %i.ad = fpext <2 x float> %i.t to <2 x double>
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul nsz <2 x double> %i.af, %i.ad
  %i.ah = fptrunc <2 x double> %i.ag to <2 x float>
  %i.ai = fpext nsz float %i.u to double
  %i.aj = fmul nsz double %i.ac, %i.ai
  %i.ak = fptrunc nsz double %i.aj to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.c, %bb.d
  %.sroa.098.0 = phi nsz <2 x float> [ %i.t, %bb.c ], [ %i.ah, %bb.d ] ; 2 uses
  %.sroa.9.0 = phi nsz float [ %i.u, %bb.c ], [ %i.ak, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 722
  %i.an = load i16, ptr %i.am, align 2, !tbaa !860
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i16, ptr %i.al, align 8, !tbaa !861
  %i.aq = sext i16 %i.ap to i32                   ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 725
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !604, !range !46, !noundef !47
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %bb.q

bb.e:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %.sroa.098.4.vec.extract = extractelement <2 x float> %.sroa.098.0, i64 1 ; 2 uses
  %i.au = fcmp nsz ogt float %.sroa.098.4.vec.extract, 7.500000e-01
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = add nsw i32 %i.aq, 5
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.aw = fcmp nsz olt float %.sroa.098.4.vec.extract, -7.500000e-01
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = add nsw i32 %i.aq, 4
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.ay = fpext nsz float %.sroa.9.0 to double
  %.sroa.098.0.vec.extract = extractelement <2 x float> %.sroa.098.0, i64 0
  %i.az = fpext nsz float %.sroa.098.0.vec.extract to double
  %i.ba = tail call nsz double @llvm.atan2.f64(double %i.ay, double %i.az)
  %i.bb = fdiv nsz double %i.ba, f0x400921FB54442D18
  %i.bc = fmul nsz double %i.bb, 1.800000e+02
  %i.bd = fptrunc nsz double %i.bc to float
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.bf = load float, ptr %i.be, align 4, !tbaa !597
  %i.bg = fsub nsz float %i.bd, %i.bf
  %i.bh = fadd nsz float %i.bg, 1.800000e+02
  %i.bi = frem nsz float %i.bh, 3.600000e+02      ; 3 uses
  %i.bj = fcmp nsz olt float %i.bi, 0.000000e+00
  %i.bk = fadd nsz float %i.bi, 3.600000e+02
  %.0.i = select nsz i1 %i.bj, float %i.bk, float %i.bi
  %i.bl = fadd nsz float %.0.i, -1.800000e+02     ; 4 uses
  %i.bm = fadd nsz float %i.bl, 1.800000e+02
  %i.bn = frem nsz float %i.bm, 3.600000e+02      ; 3 uses
  %i.bo = fcmp nsz olt float %i.bn, 0.000000e+00
  %i.bp = fadd nsz float %i.bn, 3.600000e+02
  %.0.i67 = select nsz i1 %i.bo, float %i.bp, float %i.bn
  %i.bq = fadd nsz float %.0.i67, -1.800000e+02
  %i.br = tail call nsz noundef float @llvm.fabs.f32(float %i.bq)
  %i.bs = fcmp nsz ugt float %i.br, 4.510000e+01
  br i1 %i.bs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = add nsw i32 %i.aq, 2
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.bu = fadd nsz float %i.bl, -9.000000e+01
  %i.bv = fadd nsz float %i.bu, 1.800000e+02
  %i.bw = frem nsz float %i.bv, 3.600000e+02      ; 3 uses
  %i.bx = fcmp nsz olt float %i.bw, 0.000000e+00
  %i.by = fadd nsz float %i.bw, 3.600000e+02
  %.0.i68 = select nsz i1 %i.bx, float %i.by, float %i.bw
  %i.bz = fadd nsz float %.0.i68, -1.800000e+02
  %i.ca = tail call nsz noundef float @llvm.fabs.f32(float %i.bz)
  %i.cb = fcmp nsz ugt float %i.ca, 4.510000e+01
  br i1 %i.cb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = add nsw i32 %i.aq, 3
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.cd = fadd nsz float %i.bl, -1.800000e+02
  %i.ce = fadd nsz float %i.cd, 1.800000e+02
  %i.cf = frem nsz float %i.ce, 3.600000e+02      ; 3 uses
  %i.cg = fcmp nsz olt float %i.cf, 0.000000e+00
  %i.ch = fadd nsz float %i.cf, 3.600000e+02
  %.0.i69 = select nsz i1 %i.cg, float %i.ch, float %i.cf
  %i.ci = fadd nsz float %.0.i69, -1.800000e+02
  %i.cj = tail call nsz noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = fcmp nsz ugt float %i.cj, 4.510000e+01
  br i1 %i.ck, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cl = fadd nsz float %i.bl, 9.000000e+01
  %i.cm = fadd nsz float %i.cl, 1.800000e+02
  %i.cn = frem nsz float %i.cm, 3.600000e+02      ; 3 uses
  %i.co = fcmp nsz olt float %i.cn, 0.000000e+00
  %i.cp = fadd nsz float %i.cn, 3.600000e+02
  %.0.i70 = select nsz i1 %i.co, float %i.cp, float %i.cn
  %i.cq = fadd nsz float %.0.i70, -1.800000e+02
  %i.cr = tail call nsz noundef float @llvm.fabs.f32(float %i.cq)
  %i.cs = fcmp nsz ugt float %i.cr, 4.510000e+01
  br i1 %i.cs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = add nsw i32 %i.aq, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cu = add nsw i32 %i.aq, 4
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p, %bb.o, %bb.l, %bb.m, %bb.f, %bb.h, %_ZN4core8vector3dIfE9normalizeEv.exit
  %.1 = phi i32 [ %i.av, %bb.f ], [ %i.ax, %bb.h ], [ %i.aq, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.bt, %bb.j ], [ %i.cc, %bb.l ], [ %i.cu, %bb.p ], [ %i.ct, %bb.o ], [ %i.aq, %bb.m ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !123
  %i.cx = add nsw i32 %i.cw, %i.ao
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cz = load <2 x float>, ptr %i.cy, align 8, !tbaa !48 ; 3 uses
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !261 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 168
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef nonnull align 8 dereferenceable(127) ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(218) %i.da, i32 noundef 0), !inline_history !11
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !567 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %bb.r, label %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit

bb.r:                                             ; preds = %bb.q
  %i.dh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.di, i8 0, i64 56, i1 false)
  %1 = getelementptr inbounds nuw i8, ptr %i.dh, i64 60
  store float 1.000000e+00, ptr %1, align 4, !tbaa !48
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store float 1.000000e+00, ptr %i.dj, align 4, !tbaa !48
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store float 1.000000e+00, ptr %i.dk, align 4, !tbaa !48
  store float 1.000000e+00, ptr %i.dh, align 4, !tbaa !48
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !567
  br label %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit

_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit: ; preds = %bb.q, %bb.r
  %i.dl = phi ptr [ %i.dh, %bb.r ], [ %i.dg, %bb.q ] ; 3 uses
  %i.dm = insertelement <2 x i32> poison, i32 %.1, i64 0
  %i.dn = insertelement <2 x i32> %i.dm, i32 %i.cx, i64 1
  %i.do = sitofp <2 x i32> %i.dn to <2 x float>
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dq = fmul nsz <2 x float> %i.cz, %i.do
  store <2 x float> %i.dq, ptr %i.dp, align 4, !tbaa !48
  %i.dr = extractelement <2 x float> %i.cz, i64 0
  store float %i.dr, ptr %i.dl, align 4, !tbaa !48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dt = extractelement <2 x float> %i.cz, i64 1
  store float %i.dt, ptr %i.ds, align 4, !tbaa !48
  br label %.loopexit

bb.s:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !287 ; 3 uses
  %.not65 = icmp eq ptr %i.dv, null
  br i1 %.not65, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !473
  switch i8 %i.dx, label %.loopexit [
    i8 2, label %bb.u
    i8 7, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 722
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !860
  %i.eb = sext i16 %i.ea to i32
  %i.ec = load i16, ptr %i.dy, align 8, !tbaa !861 ; 2 uses
  %i.ed = sext i16 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !123
  %i.eg = add nsw i32 %i.ef, %i.eb                ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ei = add nsw i32 %i.ed, 1
  %i.ej = sitofp nsz i32 %i.ei to float
  %i.ek = add nsw i32 %i.eg, 1
  %i.el = sitofp nsz i32 %i.ek to float
  %i.em = load float, ptr %i.eh, align 8, !tbaa !862 ; 2 uses
  %i.en = fmul nsz float %i.em, %i.ej
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !605 ; 2 uses
  %i.eq = fmul nsz float %i.ep, %i.el             ; 2 uses
  %.sroa.0.0.vec.insert.i71 = insertelement <2 x float> poison, float %i.en, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i72 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.eq, i64 1 ; 2 uses
  %i.er = sitofp i16 %i.ec to float
  %i.es = fmul nsz float %i.em, %i.er
  %.sroa.0.0.vec.insert.i73 = insertelement <2 x float> poison, float %i.es, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i74 = insertelement <2 x float> %.sroa.0.0.vec.insert.i73, float %i.eq, i64 1 ; 2 uses
  %i.et = sitofp nsz i32 %i.eg to float
  %i.eu = fmul nsz float %i.ep, %i.et             ; 2 uses
  %.sroa.0.4.vec.insert.i76 = insertelement <2 x float> %.sroa.0.0.vec.insert.i73, float %i.eu, i64 1 ; 2 uses
  %.sroa.0.4.vec.insert.i78 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.eu, i64 1 ; 2 uses
  %i.ev = load ptr, ptr %i.dv, align 8, !tbaa !55
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 296
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call noundef ptr %i.ex(ptr noundef nonnull align 8 dereferenceable(218) %i.dv) ; 4 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = tail call noundef ptr %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i32 noundef 0) ; 4 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = tail call noundef ptr %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fc), !inline_history !858 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !55
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = tail call noundef ptr %i.fj(ptr noundef nonnull align 8 dereferenceable(28) %i.fg), !inline_history !858 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i72, ptr %i.fl, align 4, !tbaa !48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 68
  store <2 x float> %.sroa.0.4.vec.insert.i74, ptr %i.fm, align 4, !tbaa !48
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 108
  store <2 x float> %.sroa.0.4.vec.insert.i76, ptr %i.fn, align 4, !tbaa !48
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 148
  store <2 x float> %.sroa.0.4.vec.insert.i78, ptr %i.fo, align 4, !tbaa !48
  %i.fp = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef ptr %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.fc), !inline_history !859
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.fs)
  %i.ft = load ptr, ptr %i.ey, align 8, !tbaa !55
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = tail call noundef ptr %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i32 noundef 1) ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !55
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = tail call noundef ptr %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw), !inline_history !858 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !55
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = tail call noundef ptr %i.gd(ptr noundef nonnull align 8 dereferenceable(28) %i.ga), !inline_history !858 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i72, ptr %i.gf, align 4, !tbaa !48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 68
  store <2 x float> %.sroa.0.4.vec.insert.i74, ptr %i.gg, align 4, !tbaa !48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 108
  store <2 x float> %.sroa.0.4.vec.insert.i76, ptr %i.gh, align 4, !tbaa !48
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 148
  store <2 x float> %.sroa.0.4.vec.insert.i78, ptr %i.gi, align 4, !tbaa !48
  %i.gj = load ptr, ptr %i.fw, align 8, !tbaa !55
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = tail call noundef ptr %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.fw), !inline_history !859
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.gm)
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !863 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !863 ; 2 uses
  %.not106107 = icmp eq ptr %i.go, %i.gq
  br i1 %.not106107, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !135
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 712
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !571
  %i.gv = fmul nsz float %i.gu, 1.000000e+03
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.079.0108 = phi ptr [ %i.go, %.lr.ph ], [ %i.ic, %bb.y ] ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 24
  %i.gx = load i16, ptr %i.gw, align 8, !tbaa !864
  %i.gy = uitofp i16 %i.gx to float
  %i.gz = fdiv nsz float %i.gv, %i.gy
  %i.ha = fptosi float %i.gz to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 26
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !865
  %i.hd = zext i16 %i.hc to i32
  %i.he = srem i32 %i.ha, %i.hd                   ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 4 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !867
  %i.hh = icmp eq i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !867
  %i.hi = load ptr, ptr %i.du, align 8, !tbaa !287 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !55
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 296
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = tail call noundef ptr %i.hl(ptr noundef nonnull align 8 dereferenceable(218) %i.hi) ; 2 uses
  %i.hn = load i32, ptr %.sroa.079.0108, align 8, !tbaa !868
  %i.ho = load ptr, ptr %i.hm, align 8, !tbaa !55
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = tail call noundef ptr %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, i32 noundef %i.hn) ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !869
  %i.hu = sext i32 %i.he to i64
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !872
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %i.hu
  %i.hx = load ptr, ptr %i.hr, align 8, !tbaa !55
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = tail call noundef nonnull align 8 dereferenceable(127) ptr %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.hr)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !874
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !568
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 56 ; 2 uses
  %.not106 = icmp eq ptr %i.ic, %i.gq
  br i1 %.not106, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.y, %bb.v, %bb.t, %_ZL25setBillboardTextureMatrixPN5scene19IBillboardSceneNodeEffii.exit, %bb.b, %bb.s, %bb.u
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #20

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL28setMaterialTextureAndFiltersRN5video9SMaterialERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP14ITextureSource(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_1
