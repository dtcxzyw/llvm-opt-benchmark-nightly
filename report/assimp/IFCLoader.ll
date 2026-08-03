inline.NumInlined: 2494
inline.NumDeleted: 1209
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11IFCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.aci = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA41_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aci, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(41) @.str.58)
          to label %bb.gj unwind label %bb.gk

bb.gj:                                            ; preds = %._crit_edge453.thread.i
  invoke void @__cxa_throw(ptr nonnull %i.aci, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %.noexc243.i unwind label %bb.fu

.noexc243.i:                                      ; preds = %bb.gj
  unreachable

bb.gk:                                            ; preds = %._crit_edge453.thread.i
  %i.acj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @__cxa_free_exception(ptr nonnull %i.aci) #28
  br label %.body207.i

._crit_edge460.i:                                 ; preds = %bb.gh
  %.not.i.i.i246.i = icmp eq ptr %.sroa.0270.11.i, null
  br i1 %.not.i.i.i246.i, label %_ZN12_GLOBAL__N_124ProcessSpatialStructuresERN6Assimp3IFC14ConversionDataE.exit, label %._crit_edge460.thread.i

._crit_edge460.thread.i.loopexit.unr-lcssa:       ; preds = %.lr.ph459.i
  %i.ack = and i64 %.085.in.i, 8
  %lcmp.mod.not = icmp eq i64 %i.ack, 0
  br i1 %lcmp.mod.not, label %._crit_edge460.thread.i, label %.lr.ph459.i.epil.preheader

.lr.ph459.i.epil.preheader:                       ; preds = %bb.gh, %._crit_edge460.thread.i.loopexit.unr-lcssa
  %.066457.i.epil.init = phi i64 [ 0, %bb.gh ], [ %i.ach, %._crit_edge460.thread.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod937 = trunc i64 %.085.i to i1
  call void @llvm.assume(i1 %lcmp.mod937)
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.11.i, i64 %.066457.i.epil.init
  %i.acm = load ptr, ptr %i.acl, align 8          ; 2 uses
  %i.acn = load ptr, ptr %i.my, align 8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acp = load ptr, ptr %i.aco, align 8          ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acm, i64 1096
  store ptr %i.acp, ptr %i.acq, align 8
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 1112
  %i.acs = load ptr, ptr %i.acr, align 8
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %.066457.i.epil.init
  store ptr %i.acm, ptr %i.act, align 8
  br label %._crit_edge460.thread.i

._crit_edge460.thread.i:                          ; preds = %.lr.ph459.i.epil.preheader, %._crit_edge460.thread.i.loopexit.unr-lcssa, %._crit_edge460.i, %.thread.i281
  %i.acu = ptrtoint ptr %.sroa.24.11.i to i64
  %i.acv = ptrtoint ptr %.sroa.0270.11.i to i64
  %i.acw = sub i64 %i.acu, %i.acv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0270.11.i, i64 noundef %i.acw) #32
  %.val.pre = load ptr, ptr %i.my, align 8
  br label %_ZN12_GLOBAL__N_124ProcessSpatialStructuresERN6Assimp3IFC14ConversionDataE.exit

.body207.i:                                       ; preds = %bb.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i, %.loopexit.split-lp.i, %.loopexit.i, %bb.fx, %bb.fu, %.loopexit.split-lp315.i, %.loopexit314.i, %.loopexit.split-lp310.i, %.loopexit309.i, %bb.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284, %bb.fb, %.critedge126.i, %bb.ed
  %.sroa.24.12.i = phi ptr [ %.sroa.24.11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i ], [ %.sroa.24.11591.i, %bb.gk ], [ %.sroa.24.2424.i, %.loopexit.split-lp310.i ], [ %.sroa.24.0440.i, %.critedge126.i ], [ %.sroa.24.0440.i, %bb.ed ], [ %.sroa.24.8449.i, %bb.fx ], [ %.sroa.24.1431.i, %bb.fb ], [ %.sroa.14.2425.i, %.loopexit.split-lp315.i ], [ %.sroa.24.2424.i, %bb.fg ], [ %.sroa.24.2424.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.sroa.24.2424.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284 ], [ %.sroa.24.9.i, %bb.fu ], [ %.sroa.24.2424.i, %.loopexit309.i ], [ %.sroa.24.2424.lcssa476.i, %.loopexit314.i ], [ %.sroa.24.8449.lcssa465.i, %.loopexit.i ], [ %.sroa.14.6450.i, %.loopexit.split-lp.i ]
  %.sroa.0270.12.i = phi ptr [ %.sroa.0270.11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i ], [ %.sroa.0270.11593.i, %bb.gk ], [ %.sroa.0270.2426.i, %.loopexit.split-lp310.i ], [ %.sroa.0270.0442.i, %.critedge126.i ], [ %.sroa.0270.0442.i, %bb.ed ], [ %.sroa.0270.8451.i, %bb.fx ], [ %.sroa.0270.1433.i, %bb.fb ], [ %.sroa.0270.2426.i, %.loopexit.split-lp315.i ], [ %.sroa.0270.2426.i, %bb.fg ], [ %.sroa.0270.2426.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.sroa.0270.2426.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284 ], [ %.sroa.0270.9.i, %bb.fu ], [ %.sroa.0270.2426.i, %.loopexit309.i ], [ %.sroa.0270.2426.i, %.loopexit314.i ], [ %.sroa.0270.8451.i, %.loopexit.i ], [ %.sroa.0270.8451.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn114.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.abj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i ], [ %i.acj, %bb.gk ], [ %lpad.loopexit.split-lp312.i, %.loopexit.split-lp310.i ], [ %.pn108.pn.pn.pn.i, %.critedge126.i ], [ %i.ta, %bb.ed ], [ %i.zp, %bb.fx ], [ %i.xg, %bb.fb ], [ %lpad.loopexit.split-lp317.i, %.loopexit.split-lp315.i ], [ %.pn10.i.i, %bb.fg ], [ %i.xl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.xl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284 ], [ %i.zi, %bb.fu ], [ %lpad.loopexit311.i, %.loopexit309.i ], [ %lpad.loopexit316.i, %.loopexit314.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i247.i = icmp eq ptr %.sroa.0270.12.i, null
  br i1 %.not.i.i.i247.i, label %.body294, label %.body207.thread.i

.body207.thread.i:                                ; preds = %.body207.i
  %i.acx = ptrtoint ptr %.sroa.24.12.i to i64
  %i.acy = ptrtoint ptr %.sroa.0270.12.i to i64
  %i.acz = sub i64 %i.acx, %i.acy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0270.12.i, i64 noundef %i.acz) #32
  br label %.body294

_ZN12_GLOBAL__N_124ProcessSpatialStructuresERN6Assimp3IFC14ConversionDataE.exit: ; preds = %._crit_edge460.thread.i, %._crit_edge460.i
  %.val = phi ptr [ %.val.pre, %._crit_edge460.thread.i ], [ %i.aav, %._crit_edge460.i ]
  %i.ada = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.ada, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store float 1.000000e+00, ptr %4, align 4, !alias.scope !45
  %i.adb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.adc = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.adb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.adc, align 4, !alias.scope !45
  %i.add = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ade = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.add, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ade, align 4, !alias.scope !45
  %i.adf = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.adg = getelementptr inbounds nuw i8, ptr %4, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.adf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.adg, align 4, !alias.scope !45
  invoke fastcc void @_ZN12_GLOBAL__N_116MakeTreeRelativeEP6aiNodeRK12aiMatrix4x4tIfE(ptr noundef %.val.val, ptr noundef nonnull align 4 dereferenceable(64) %4)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp

bb.gl:                                            ; preds = %_ZN12_GLOBAL__N_124ProcessSpatialStructuresERN6Assimp3IFC14ConversionDataE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.adh = getelementptr inbounds nuw i8, ptr %26, i64 184 ; 2 uses
  %i.adi = load ptr, ptr %i.adh, align 8          ; 2 uses
  %i.adj = load ptr, ptr %i.ng, align 16          ; 5 uses
  %i.adk = ptrtoint ptr %i.adi to i64
  %i.adl = ptrtoint ptr %i.adj to i64
  %i.adm = sub i64 %i.adk, %i.adl                 ; 5 uses
  %.not115 = icmp eq ptr %i.adi, %i.adj
  br i1 %.not115, label %_ZNSt6vectorIP6aiMeshSaIS1_EE5clearEv.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.adn = lshr exact i64 %i.adm, 3
  %i.ado = trunc i64 %i.adn to i32
  %i.adp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ado, ptr %i.adp, align 8
  %i.adq = and i64 %i.adm, 34359738360            ; 2 uses
  %i.adr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adq) #29
          to label %bb.gn unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.adr, i8 0, i64 %i.adq, i1 false)
  %i.ads = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.adr, ptr %i.ads, align 8
  %i.adt = icmp sgt i64 %i.adm, 8
  br i1 %i.adt, label %bb.go, label %bb.gp, !prof !48

bb.go:                                            ; preds = %bb.gn
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adr, ptr align 8 %i.adj, i64 %i.adm, i1 false)
  br label %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i

bb.gp:                                            ; preds = %bb.gn
  %i.adu = icmp eq i64 %i.adm, 8
  br i1 %i.adu, label %bb.gq, label %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i

bb.gq:                                            ; preds = %bb.gp
  %i.adv = load ptr, ptr %i.adj, align 8
  store ptr %i.adv, ptr %i.adr, align 8
  br label %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.go, %bb.gp, %bb.gq
  store ptr %i.adj, ptr %i.adh, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE5clearEv.exit

bb.gr:                                            ; preds = %bb.dp, %bb.do
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

.loopexit:                                        ; preds = %.lr.ph.i248
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body294

.loopexit.split-lp.loopexit:                      ; preds = %.noexc246, %.noexc245, %.lr.ph.i
  %lpad.loopexit438 = landingpad { ptr, i32 }
          cleanup
  br label %.body294

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN12_GLOBAL__N_124ProcessSpatialStructuresERN6Assimp3IFC14ConversionDataE.exit, %bb.dx, %.noexc254, %bb.dt, %.noexc252, %bb.ds, %.noexc243, %bb.dr, %bb.dq, %.preheader.i, %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x310IfcProjectEEERKT_v.exit, %bb.gs, %bb.gm
  %lpad.loopexit.split-lp439 = landingpad { ptr, i32 }
          cleanup
  br label %.body294

_ZNSt6vectorIP6aiMeshSaIS1_EE5clearEv.exit:       ; preds = %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i, %bb.gl
  %i.adx = getelementptr inbounds nuw i8, ptr %26, i64 200
  %i.ady = getelementptr inbounds nuw i8, ptr %26, i64 208 ; 2 uses
  %i.adz = load ptr, ptr %i.ady, align 16         ; 2 uses
  %i.aea = load ptr, ptr %i.adx, align 8          ; 5 uses
  %i.aeb = ptrtoint ptr %i.adz to i64
  %i.aec = ptrtoint ptr %i.aea to i64
  %i.aed = sub i64 %i.aeb, %i.aec                 ; 5 uses
  %.not116 = icmp eq ptr %i.adz, %i.aea
  br i1 %.not116, label %bb.gx, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE5clearEv.exit
  %i.aee = lshr exact i64 %i.aed, 3
  %i.aef = trunc i64 %i.aee to i32
  %i.aeg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.aef, ptr %i.aeg, align 8
  %i.aeh = and i64 %i.aed, 34359738360            ; 2 uses
  %i.aei = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aeh) #29
          to label %bb.gt unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aei, i8 0, i64 %i.aeh, i1 false)
  %i.aej = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.aei, ptr %i.aej, align 8
  %i.aek = icmp sgt i64 %i.aed, 8
  br i1 %i.aek, label %bb.gu, label %bb.gv, !prof !48

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aei, ptr align 8 %i.aea, i64 %i.aed, i1 false)
  br label %_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i

bb.gv:                                            ; preds = %bb.gt
  %i.ael = icmp eq i64 %i.aed, 8
  br i1 %i.ael, label %bb.gw, label %_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i

bb.gw:                                            ; preds = %bb.gv
  %i.aem = load ptr, ptr %i.aea, align 8
  store ptr %i.aem, ptr %i.aei, align 8
  br label %_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.gu, %bb.gv, %bb.gw
  store ptr %i.aea, ptr %i.ady, align 16
  br label %bb.gx

bb.gx:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPP10aiMaterialS1_EvT_S3_RSaIT0_E.exit.i.i
  %i.aen = load double, ptr %26, align 16
  %i.aeo = fptrunc double %i.aen to float         ; 5 uses
  %27 = fadd float %i.aeo, 0.000000e+00           ; 6 uses
  %i.aep = fmul float %i.aeo, 0.000000e+00
  %i.aeq = fadd float %i.aep, 0.000000e+00        ; 5 uses
  %i.aer = fmul float %i.aeo, f0x333BBD2E
  %i.aes = fsub float 0.000000e+00, %i.aer        ; 4 uses
  %i.aet = fsub float 0.000000e+00, %i.aeo        ; 4 uses
  %i.aeu = insertelement <2 x float> poison, float %i.aeo, i64 0
  %i.aev = shufflevector <2 x float> %i.aeu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aev, <2 x float> <float 0.000000e+00, float f0xB33BBD2E>, <2 x float> zeroinitializer) ; 2 uses
  %i.aex = extractelement <2 x float> %i.aew, i64 0
  %28 = fadd float %i.aex, 0.000000e+00           ; 11 uses
  %i.aey = extractelement <2 x float> %i.aew, i64 1
  %29 = fadd float %i.aey, 0.000000e+00           ; 4 uses
  %i.aez = load double, ptr %i.mz, align 16, !noalias !49
  %i.afa = load double, ptr %i.na, align 8, !noalias !49
  %i.afb = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.afc = load double, ptr %i.afb, align 16, !noalias !49
  %i.afd = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.afe = load double, ptr %i.afd, align 8, !noalias !49
  %i.aff = getelementptr inbounds nuw i8, ptr %26, i64 80
  %i.afg = load double, ptr %i.aff, align 16, !noalias !49
  %i.afh = fptrunc double %i.afg to float         ; 3 uses
  %i.afi = load double, ptr %i.nb, align 8, !noalias !49
  %i.afj = fptrunc double %i.afi to float         ; 3 uses
  %i.afk = load double, ptr %i.nc, align 16, !noalias !49
  %i.afl = fptrunc double %i.afk to float         ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %26, i64 104
  %i.afn = load double, ptr %i.afm, align 8, !noalias !49
  %i.afo = fptrunc double %i.afn to float         ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %26, i64 112
  %i.afq = load double, ptr %i.afp, align 16, !noalias !49
  %30 = fptrunc double %i.afq to float            ; 4 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %26, i64 120
  %i.afs = load double, ptr %i.afr, align 8, !noalias !49
  %31 = fptrunc double %i.afs to float            ; 4 uses
  %i.aft = load double, ptr %i.nd, align 16, !noalias !49
  %32 = fptrunc double %i.aft to float            ; 4 uses
  %i.afu = load double, ptr %i.ne, align 8, !noalias !49
  %33 = fptrunc double %i.afu to float            ; 4 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %26, i64 144
  %i.afw = load <2 x double>, ptr %i.afv, align 16
  %i.afx = getelementptr inbounds nuw i8, ptr %26, i64 152
  %i.afy = load <2 x double>, ptr %i.afx, align 8
  %i.afz = getelementptr inbounds nuw i8, ptr %26, i64 160
  %i.aga = load <2 x double>, ptr %i.afz, align 16
  %i.agb = load <2 x double>, ptr %i.nf, align 8
  %34 = fmul float %i.aeq, %i.afh                 ; 2 uses
  %35 = fmul float %i.aeq, %i.afj                 ; 2 uses
  %i.agc = insertelement <2 x double> %i.afw, double %i.afa, i64 1
  %i.agd = fptrunc <2 x double> %i.agc to <2 x float> ; 5 uses
  %36 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %27, i64 1 ; 3 uses
  %37 = fmul float %i.aeq, %i.afl                 ; 2 uses
  %i.age = insertelement <2 x double> %i.afy, double %i.afc, i64 1
  %i.agf = fptrunc <2 x double> %i.age to <2 x float> ; 5 uses
  %38 = fmul float %i.aeq, %i.afo                 ; 2 uses
  %39 = insertelement <2 x double> %i.aga, double %i.afe, i64 1
  %40 = fptrunc <2 x double> %39 to <2 x float>   ; 5 uses
  %41 = fmul float %i.aes, %i.afh
  %42 = insertelement <2 x double> %i.agb, double %i.aez, i64 1
  %43 = fptrunc <2 x double> %42 to <2 x float>   ; 5 uses
  %i.agg = extractelement <2 x float> %43, i64 1
  %44 = call float @llvm.fmuladd.f32(float %i.agg, float %27, float %34)
  %45 = call float @llvm.fmuladd.f32(float %30, float %28, float %44)
  %i.agh = insertelement <2 x float> poison, float %45, i64 0
  %46 = insertelement <2 x float> %i.agh, float %35, i64 1
  %47 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agd, <2 x float> %36, <2 x float> %46) ; 2 uses
  %48 = extractelement <2 x float> %47, i64 1
  %i.agi = call float @llvm.fmuladd.f32(float %31, float %28, float %48)
  %i.agj = insertelement <2 x float> poison, float %i.agi, i64 0
  %i.agk = insertelement <2 x float> %i.agj, float %37, i64 1
  %i.agl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agf, <2 x float> %36, <2 x float> %i.agk) ; 2 uses
  %i.agm = extractelement <2 x float> %i.agl, i64 1
  %i.agn = call float @llvm.fmuladd.f32(float %32, float %28, float %i.agm)
  %i.ago = insertelement <2 x float> poison, float %i.agn, i64 0
  %i.agp = insertelement <2 x float> %i.ago, float %38, i64 1
  %i.agq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %36, <2 x float> %i.agp) ; 2 uses
  %i.agr = extractelement <2 x float> %i.agq, i64 1
  %49 = call float @llvm.fmuladd.f32(float %33, float %28, float %i.agr)
  %50 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.aeq, i64 1 ; 8 uses
  %51 = insertelement <2 x float> poison, float %49, i64 0
  %52 = insertelement <2 x float> %51, float %41, i64 1
  %53 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %50, <2 x float> %52) ; 2 uses
  %54 = extractelement <2 x float> %53, i64 1
  %55 = call float @llvm.fmuladd.f32(float %30, float %27, float %54)
  %56 = extractelement <2 x float> %i.agd, i64 0
  %i.ags = fmul float %i.aes, %i.afj
  %57 = extractelement <2 x float> %i.agd, i64 1
  %i.agt = insertelement <2 x float> poison, float %55, i64 0
  %i.agu = insertelement <2 x float> %i.agt, float %i.ags, i64 1
  %i.agv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agd, <2 x float> %50, <2 x float> %i.agu) ; 2 uses
  %i.agw = extractelement <2 x float> %i.agv, i64 1
  %i.agx = call float @llvm.fmuladd.f32(float %31, float %27, float %i.agw)
  %58 = fmul float %i.aes, %i.afl
  %i.agy = insertelement <2 x float> poison, float %i.agx, i64 0
  %i.agz = insertelement <2 x float> %i.agy, float %58, i64 1
  %i.aha = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agf, <2 x float> %50, <2 x float> %i.agz) ; 2 uses
  %i.ahb = extractelement <2 x float> %i.aha, i64 1
  %i.ahc = call float @llvm.fmuladd.f32(float %32, float %27, float %i.ahb)
  %59 = extractelement <2 x float> %40, i64 0
  %60 = fmul float %i.aes, %i.afo
  %i.ahd = extractelement <2 x float> %40, i64 1
  %i.ahe = insertelement <2 x float> poison, float %i.ahc, i64 0
  %i.ahf = insertelement <2 x float> %i.ahe, float %60, i64 1
  %i.ahg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %50, <2 x float> %i.ahf) ; 2 uses
  %i.ahh = extractelement <2 x float> %i.ahg, i64 1
  %i.ahi = call float @llvm.fmuladd.f32(float %33, float %27, float %i.ahh)
  %i.ahj = extractelement <2 x float> %43, i64 0
  %61 = fmul float %i.aet, %i.afh
  %i.ahk = insertelement <2 x float> poison, float %i.ahi, i64 0
  %i.ahl = insertelement <2 x float> %i.ahk, float %61, i64 1
  %i.ahm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %50, <2 x float> %i.ahl) ; 2 uses
  %i.ahn = extractelement <2 x float> %i.ahm, i64 1
  %i.aho = call float @llvm.fmuladd.f32(float %30, float %29, float %i.ahn)
  %62 = fmul float %i.aet, %i.afj
  %i.ahp = insertelement <2 x float> poison, float %i.aho, i64 0
  %i.ahq = insertelement <2 x float> %i.ahp, float %62, i64 1
  %i.ahr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agd, <2 x float> %50, <2 x float> %i.ahq) ; 2 uses
  %i.ahs = extractelement <2 x float> %i.ahr, i64 1
  %i.aht = call float @llvm.fmuladd.f32(float %31, float %29, float %i.ahs)
  %63 = fmul float %i.aet, %i.afl
  %i.ahu = insertelement <2 x float> poison, float %i.aht, i64 0
  %i.ahv = insertelement <2 x float> %i.ahu, float %63, i64 1
  %i.ahw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agf, <2 x float> %50, <2 x float> %i.ahv) ; 2 uses
  %i.ahx = extractelement <2 x float> %i.ahw, i64 1
  %i.ahy = call float @llvm.fmuladd.f32(float %32, float %29, float %i.ahx)
  %64 = fmul float %i.aet, %i.afo
  %i.ahz = insertelement <2 x float> poison, float %i.ahy, i64 0
  %i.aia = insertelement <2 x float> %i.ahz, float %64, i64 1
  %i.aib = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %50, <2 x float> %i.aia) ; 2 uses
  %i.aic = extractelement <2 x float> %i.aib, i64 1
  %i.aid = call float @llvm.fmuladd.f32(float %33, float %29, float %i.aic)
  %i.aie = insertelement <2 x float> <float 0.000000e+00, float poison>, float %28, i64 1
  %i.aif = insertelement <2 x float> poison, float %i.aid, i64 0
  %i.aig = insertelement <2 x float> %i.aif, float %34, i64 1
  %i.aih = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %i.aie, <2 x float> %i.aig) ; 2 uses
  %i.aii = extractelement <2 x float> %i.aih, i64 1
  %i.aij = call float @llvm.fmuladd.f32(float %30, float %28, float %i.aii)
  %i.aik = fadd float %i.aij, %56
  %i.ail = call float @llvm.fmuladd.f32(float %57, float %28, float %35)
  %i.aim = insertelement <2 x float> %i.agf, float %31, i64 0
  %i.ain = insertelement <2 x float> poison, float %28, i64 0
  %i.aio = shufflevector <2 x float> %i.ain, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aip = insertelement <2 x float> poison, float %i.ail, i64 0
  %i.aiq = insertelement <2 x float> %i.aip, float %37, i64 1
  %i.air = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aim, <2 x float> %i.aio, <2 x float> %i.aiq) ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.air, %i.agf
  %i.ais = extractelement <2 x float> %i.air, i64 1
  %i.ait = call float @llvm.fmuladd.f32(float %32, float %28, float %i.ais)
  %i.aiu = fadd float %i.ait, %59
  %i.aiv = call float @llvm.fmuladd.f32(float %i.ahd, float %28, float %38)
  %i.aiw = call float @llvm.fmuladd.f32(float %33, float %28, float %i.aiv)
  %i.aix = fadd float %i.aiw, %i.ahj
  %i.aiy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aiz = load ptr, ptr %i.aiy, align 8          ; 4 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 1028 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiz, i64 1044 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiz, i64 1060 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiz, i64 1076 ; 2 uses
  %i.aje = load <4 x float>, ptr %i.aja, align 4  ; 4 uses
  %i.ajf = load <4 x float>, ptr %i.ajb, align 4  ; 4 uses
  %i.ajg = shufflevector <2 x float> %i.agl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ajh = fmul <4 x float> %i.ajg, %i.ajf
  %i.aji = shufflevector <2 x float> %47, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ajj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aje, <4 x float> %i.aji, <4 x float> %i.ajh)
  %i.ajk = load <4 x float>, ptr %i.ajc, align 4  ; 4 uses
  %i.ajl = shufflevector <2 x float> %i.agq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ajm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajk, <4 x float> %i.ajl, <4 x float> %i.ajj)
  %i.ajn = load <4 x float>, ptr %i.ajd, align 4  ; 4 uses
  %i.ajo = shufflevector <2 x float> %53, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ajp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajn, <4 x float> %i.ajo, <4 x float> %i.ajm)
  store <4 x float> %i.ajp, ptr %i.aja, align 4
  %i.ajq = shufflevector <2 x float> %i.aha, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ajr = fmul <4 x float> %i.ajq, %i.ajf
  %i.ajs = shufflevector <2 x float> %i.agv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ajt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aje, <4 x float> %i.ajs, <4 x float> %i.ajr)
  %i.aju = shufflevector <2 x float> %i.ahg, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ajv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajk, <4 x float> %i.aju, <4 x float> %i.ajt)
  %i.ajw = shufflevector <2 x float> %i.ahm, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ajx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajn, <4 x float> %i.ajw, <4 x float> %i.ajv)
  store <4 x float> %i.ajx, ptr %i.ajb, align 4
  %i.ajy = shufflevector <2 x float> %i.ahw, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ajz = fmul <4 x float> %i.ajy, %i.ajf
  %i.aka = shufflevector <2 x float> %i.ahr, <2 x float> poison, <4 x i32> zeroinitializer
  %i.akb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aje, <4 x float> %i.aka, <4 x float> %i.ajz)
  %i.akc = shufflevector <2 x float> %i.aib, <2 x float> poison, <4 x i32> zeroinitializer
  %i.akd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajk, <4 x float> %i.akc, <4 x float> %i.akb)
  %i.ake = shufflevector <2 x float> %i.aih, <2 x float> poison, <4 x i32> zeroinitializer
  %i.akf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajn, <4 x float> %i.ake, <4 x float> %i.akd)
  store <4 x float> %i.akf, ptr %i.ajc, align 4
  %i.akg = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer
  %i.akh = fmul <4 x float> %i.akg, %i.ajf
  %i.aki = insertelement <4 x float> poison, float %i.aik, i64 0
  %i.akj = shufflevector <4 x float> %i.aki, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aje, <4 x float> %i.akj, <4 x float> %i.akh)
  %i.akl = insertelement <4 x float> poison, float %i.aiu, i64 0
  %i.akm = shufflevector <4 x float> %i.akl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajk, <4 x float> %i.akm, <4 x float> %i.akk)
  %i.ako = insertelement <4 x float> poison, float %i.aix, i64 0
  %i.akp = shufflevector <4 x float> %i.ako, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajn, <4 x float> %i.akp, <4 x float> %i.akn)
  store <4 x float> %i.akq, ptr %i.ajd, align 4
  %i.akr = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.gy unwind label %bb.hb

bb.gy:                                            ; preds = %bb.gx
  br i1 %i.akr, label %bb.hd, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #28
  %i.aks = load ptr, ptr %20, align 8
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 376
  %i.aku = load i64, ptr %i.akt, align 8
  store i64 %i.aku, ptr %i.ab, align 8
  %i.akv = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc310 unwind label %bb.hc

.noexc310:                                        ; preds = %bb.gz
  br i1 %i.akv, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcmRA16_S4_EEEvDpOT_.exit, label %bb.ha

bb.ha:                                            ; preds = %.noexc310
  %i.akw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc311 unwind label %bb.hc

.noexc311:                                        ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA17_S2_mRA16_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.akw, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.30, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 1 dereferenceable(16) @.str.31)
          to label %.noexc312 unwind label %bb.hc

.noexc312:                                        ; preds = %.noexc311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcmRA16_S4_EEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcmRA16_S4_EEEvDpOT_.exit: ; preds = %.noexc312, %.noexc310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #28
  br label %bb.hd

bb.hb:                                            ; preds = %bb.gx
  %i.akx = landingpad { ptr, i32 }
          cleanup
  br label %.body294

bb.hc:                                            ; preds = %.noexc311, %bb.ha, %bb.gz
  %i.aky = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #28
  br label %.body294

bb.hd:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcmRA16_S4_EEEvDpOT_.exit, %bb.gy
  call void @_ZN6Assimp3IFC14ConversionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  %i.akz = load ptr, ptr %i.lf, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.akz)
          to label %_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev.exit unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ala = landingpad { ptr, i32 }
          catch ptr null
  %i.alb = extractvalue { ptr, i32 } %i.ala, 0
  call void @__clang_call_terminate(ptr %i.alb) #31
  unreachable

_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev.exit: ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  %i.alc = load ptr, ptr %20, align 8             ; 3 uses
  %.not.i313 = icmp eq ptr %i.alc, null
  br i1 %.not.i313, label %_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6Assimp4STEP2DBEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6Assimp4STEP2DBEEclEPS2_.exit.i: ; preds = %_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev.exit
  call void @_ZN6Assimp4STEP2DBD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.alc) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.alc, i64 noundef 392) #32
  br label %_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev.exit, %_ZNKSt14default_deleteIN6Assimp4STEP2DBEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.ald = load ptr, ptr %i.ak, align 8           ; 8 uses
  %.not.i.i314 = icmp eq ptr %i.ald, null
  br i1 %.not.i.i314, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318, label %bb.hf

bb.hf:                                            ; preds = %_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 8 ; 4 uses
  %i.alf = load atomic i64, ptr %i.ale acquire, align 8 ; 2 uses
  %i.alg = icmp eq i64 %i.alf, 4294967297
  %i.alh = trunc i64 %i.alf to i32                ; 2 uses
  br i1 %i.alg, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  store i32 0, ptr %i.ale, align 8
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ald, i64 12
  store i32 0, ptr %i.ali, align 4
  %i.alj = load ptr, ptr %i.ald, align 8
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 16
  %i.all = load ptr, ptr %i.alk, align 8
  call void %i.all(ptr noundef nonnull align 8 dereferenceable(16) %i.ald) #28, !inline_history !18
  %i.alm = load ptr, ptr %i.ald, align 8
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 24
  %i.alo = load ptr, ptr %i.aln, align 8
  call void %i.alo(ptr noundef nonnull align 8 dereferenceable(16) %i.ald) #28, !inline_history !18
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318

bb.hh:                                            ; preds = %bb.hf
  %i.alp = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i315 = icmp eq i8 %i.alp, 0
  br i1 %.not.i.i.i315, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.alq = add nsw i32 %i.alh, -1
  store i32 %i.alq, ptr %i.ale, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316

bb.hj:                                            ; preds = %bb.hh
  %i.alr = atomicrmw volatile add ptr %i.ale, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316: ; preds = %bb.hj, %bb.hi
  %.0.i.i.i.i317 = phi i32 [ %i.alh, %bb.hi ], [ %i.alr, %bb.hj ]
  %i.als = icmp eq i32 %.0.i.i.i.i317, 1
  br i1 %i.als, label %bb.hk, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318, !prof !17

bb.hk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ald) #28
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318: ; preds = %_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit, %bb.hg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  ret void

.body294:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.hb, %bb.hc, %.body207.thread.i, %.body207.i, %bb.dy
  %.pn119.pn = phi { ptr, i32 } [ %.pn114.pn.pn.pn.pn.i, %.body207.i ], [ %i.akx, %bb.hb ], [ %i.sh, %bb.dy ], [ %.pn114.pn.pn.pn.pn.i, %.body207.thread.i ], [ %i.aky, %bb.hc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit438, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp439, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6Assimp3IFC14ConversionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %26) #28
  br label %bb.hl

bb.hl:                                            ; preds = %.body294, %bb.gr
  %.pn119.pn.pn = phi { ptr, i32 } [ %.pn119.pn, %.body294 ], [ %i.adw, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %.body231

.body231:                                         ; preds = %bb.dm, %bb.dk, %bb.hl, %bb.dl
  %.pn119.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mo, %bb.dl ], [ %.pn119.pn.pn, %bb.hl ], [ %i.mn, %bb.dk ], [ %i.mp, %bb.dm ]
  call void @_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.hm

bb.hm:                                            ; preds = %.body231, %bb.dd, %bb.cz, %bb.cy, %.body199, %bb.cq
  %.pn119.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn.pn.pn, %.body231 ], [ %i.ld, %bb.dd ], [ %i.kx, %bb.cz ], [ %i.kw, %bb.cy ], [ %i.kj, %bb.cq ], [ %.pn108, %.body199 ]
  call void @_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #28
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.cp
  %.pn119.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn.pn.pn.pn, %bb.hm ], [ %i.ki, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %.body131

.body131:                                         ; preds = %bb.v, %bb.t, %bb.l, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %bb.hn, %bb.u
  %.pn119.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn.pn.pn.pn.pn, %bb.hn ], [ %i.be, %bb.j ], [ %i.cj, %bb.u ], [ %.pn103.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %i.bk, %bb.l ], [ %i.ck, %bb.v ], [ %i.ci, %bb.t ]
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #28
  br label %bb.ho

bb.ho:                                            ; preds = %.body131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.pn119.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn.pn.pn.pn.pn.pn, %.body131 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  resume { ptr, i32 } %.pn119.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #30
  unreachable
end_hunk_0
