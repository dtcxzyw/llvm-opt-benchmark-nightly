inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11MD5Importer15LoadMD5AnimFileEv:bb.a
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0119.0163, i64 1032
  %i.gv = load i32, ptr %i.gu, align 4
  %.not73 = icmp eq i32 %i.gv, 0
  br i1 %.not73, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gw = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull @.str.25)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @__cxa_throw(ptr nonnull %i.gw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.bn unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gw) #23
  br label %bb.bj

bb.am:                                            ; preds = %bb.ak
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_ZN10aiVector3tIfEixEj.exit96:                    ; preds = %.lr.ph166
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gn ; 2 uses
  %i.ha = load ptr, ptr %.062164, align 8         ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1032
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 1028 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4            ; 2 uses
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4
  %i.hg = zext i32 %i.he to i64
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %i.hg ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 1048
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ha, i64 1040 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8            ; 2 uses
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0119.0163, i64 1032 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %.061165, i64 8
  %i.hs = load i32, ptr %i.hn, align 4
  %i.ht = and i32 %i.hs, 1
  %.not72 = icmp eq i32 %i.ht, 0                  ; 2 uses
  %spec.select = select i1 %.not72, ptr %.061165, ptr %i.gz
  %spec.select226.idx = select i1 %.not72, i64 0, i64 4
  %spec.select226 = getelementptr inbounds nuw i8, ptr %i.gz, i64 %spec.select226.idx ; 2 uses
  %storemerge = load float, ptr %spec.select, align 4
  store float %storemerge, ptr %i.ho, align 4
  %i.hu = load i32, ptr %i.hn, align 4
  %i.hv = and i32 %i.hu, 2
  %.not72.1 = icmp eq i32 %i.hv, 0                ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.061165, i64 4
  %storemerge220.in = select i1 %.not72.1, ptr %i.hw, ptr %spec.select226
  %.158.1.idx = select i1 %.not72.1, i64 0, i64 4
  %.158.1 = getelementptr inbounds nuw i8, ptr %spec.select226, i64 %.158.1.idx ; 2 uses
  %storemerge220 = load float, ptr %storemerge220.in, align 4
  store float %storemerge220, ptr %i.hp, align 4
  %i.hx = load i32, ptr %i.hn, align 4
  %i.hy = and i32 %i.hx, 4                        ; 2 uses
  %.not72.2 = icmp eq i32 %i.hy, 0
  %storemerge221.in = select i1 %.not72.2, ptr %i.hr, ptr %.158.1
  %.158.2.idx = zext nneg i32 %i.hy to i64
  %.158.2 = getelementptr inbounds nuw i8, ptr %.158.1, i64 %.158.2.idx ; 2 uses
  %storemerge221 = load float, ptr %storemerge221.in, align 4
  store float %storemerge221, ptr %i.hq, align 4
  %i.hz = load i32, ptr %i.hn, align 4            ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.061165, i64 20
  %i.ib = getelementptr inbounds nuw i8, ptr %.061165, i64 12
  %i.ic = and i32 %i.hz, 8
  %.not71 = icmp eq i32 %i.ic, 0                  ; 2 uses
  %spec.select227 = select i1 %.not71, ptr %i.ib, ptr %.158.2
  %spec.select228.idx = select i1 %.not71, i64 0, i64 4
  %spec.select228 = getelementptr inbounds nuw i8, ptr %.158.2, i64 %spec.select228.idx ; 2 uses
  %storemerge222 = load float, ptr %spec.select227, align 4 ; 3 uses
  %i.id = and i32 %i.hz, 16
  %.not71.1 = icmp eq i32 %i.id, 0                ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.061165, i64 16
  %storemerge223.in = select i1 %.not71.1, ptr %i.ie, ptr %spec.select228
  %.360.1.idx = select i1 %.not71.1, i64 0, i64 4
  %.360.1 = getelementptr inbounds nuw i8, ptr %spec.select228, i64 %.360.1.idx
  %storemerge223 = load float, ptr %storemerge223.in, align 4 ; 3 uses
  %i.if = and i32 %i.hz, 32
  %.not71.2 = icmp eq i32 %i.if, 0
  %storemerge224.in = select i1 %.not71.2, ptr %i.ia, ptr %.360.1
  %storemerge224 = load float, ptr %storemerge224.in, align 4 ; 3 uses
  %i.ig = zext i32 %i.hl to i64
  %i.ih = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %i.ig ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  store float %storemerge222, ptr %i.ij, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store float %storemerge223, ptr %i.ik, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  store float %storemerge224, ptr %i.il, align 4
  %i.im = fneg float %storemerge222
  %i.in = call float @llvm.fmuladd.f32(float %i.im, float %storemerge222, float 1.000000e+00)
  %i.io = fneg float %storemerge223
  %i.ip = call float @llvm.fmuladd.f32(float %i.io, float %storemerge223, float %i.in)
  %i.iq = fneg float %storemerge224
  %i.ir = call float @llvm.fmuladd.f32(float %i.iq, float %storemerge224, float %i.ip) ; 2 uses
  %i.is = fcmp olt float %i.ir, 0.000000e+00
  br i1 %i.is, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit96
  %i.it = call noundef float @sqrtf(float noundef %i.ir) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN10aiVector3tIfEixEj.exit96
  %storemerge.i = phi float [ %i.it, %bb.an ], [ 0.000000e+00, %_ZN10aiVector3tIfEixEj.exit96 ]
  %i.iu = fneg float %storemerge.i
  store float %i.iu, ptr %i.ii, align 4
  store double %i.fy, ptr %i.hh, align 8
  store double %i.fy, ptr %i.ih, align 8
  %.pre175 = load ptr, ptr %i.bu, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ai, %bb.ao
  %i.iv = phi ptr [ %i.gk, %bb.ai ], [ %.pre175, %bb.ao ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0119.0163, i64 1040 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.062164, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %.061165, i64 24
  %.not153 = icmp eq ptr %i.iw, %i.iv
  br i1 %.not153, label %.loopexit, label %.lr.ph166, !llvm.loop !30

.loopexit:                                        ; preds = %bb.ap, %.critedge, %.lr.ph170
  %i.iz = load double, ptr %i.da, align 8         ; 2 uses
  %i.ja = fcmp ogt double %i.iz, %i.fy
  %.sroa.speculated = select i1 %i.ja, double %i.iz, double %i.fy
  store double %.sroa.speculated, ptr %i.da, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0131.0168, i64 32 ; 2 uses
  %.not152 = icmp eq ptr %i.jb, %i.dw
  br i1 %.not152, label %._crit_edge171, label %.lr.ph170, !llvm.loop !31

bb.aq:                                            ; preds = %._crit_edge171
  %i.jc = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.ar unwind label %bb.y      ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.jc)
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.jd = load ptr, ptr %i.ct, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store ptr %i.jc, ptr %i.je, align 8
  %i.jf = load ptr, ptr %i.ct, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.ji = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jj = load i64, ptr %i.ji, align 8            ; 4 uses
  %i.jk = icmp ugt i64 %i.jj, 1023
  br i1 %i.jk, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jl = trunc nuw nsw i64 %i.jj to i32
  store i32 %i.jl, ptr %i.jh, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  %i.jn = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jm, ptr align 1 %i.jn, i64 %i.jj, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jj
  store i8 0, ptr %i.jo, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.at, %bb.au
  %i.jp = load ptr, ptr %6, align 8               ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.js = load i64, ptr %i.jq, align 8
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ju = load ptr, ptr %i.ct, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = load ptr, ptr %i.dd, align 8
  invoke void @_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef -1, ptr noundef %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef %i.jx)
          to label %bb.av unwind label %bb.y

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.jy = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8            ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 1104
  %i.kc = load i32, ptr %i.kb, align 8
  %.not69 = icmp eq i32 %i.kc, 0
  br i1 %.not69, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 1112
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void @_ZN6Assimp19SkeletonMeshBuilderC1EP7aiSceneP6aiNodeb(ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull %i.jy, ptr noundef %i.kf, i1 noundef zeroext false)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN6Assimp19SkeletonMeshBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ar
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef 1144) #24
  br label %bb.bj

bb.az:                                            ; preds = %bb.as
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bj

bb.ba:                                            ; preds = %bb.aw
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bj

bb.bb:                                            ; preds = %._crit_edge171, %bb.ax, %bb.av, %bb.q
  %i.kj = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8            ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.km = load ptr, ptr %i.kl, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kk, %i.km
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bb, %_ZSt8_DestroyIN6Assimp3MD59FrameDescEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ku, %_ZSt8_DestroyIN6Assimp3MD59FrameDescEEvPT_.exit.i.i.i.i ], [ %i.kk, %bb.bb ] ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3MD59FrameDescEEvPT_.exit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.ko to i64
  %i.kt = sub i64 %i.kr, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef %i.kt) #24
  br label %_ZSt8_DestroyIN6Assimp3MD59FrameDescEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3MD59FrameDescEEvPT_.exit.i.i.i.i: ; preds = %bb.bc, %.lr.ph.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ku, %i.km
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !32

_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3MD59FrameDescEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.kj, align 8
  br label %_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.bb
  %i.kv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.kk, %bb.bb ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6Assimp3MD59FrameDescESaIS2_EED2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.la) #24
  br label %_ZNSt6vectorIN6Assimp3MD59FrameDescESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp3MD59FrameDescESaIS2_EED2Ev.exit.i: ; preds = %bb.bd, %_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8            ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6Assimp3MD513BaseFrameDescESaIS2_EED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN6Assimp3MD59FrameDescESaIS2_EED2Ev.exit.i
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #24
  br label %_ZNSt6vectorIN6Assimp3MD513BaseFrameDescESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp3MD513BaseFrameDescESaIS2_EED2Ev.exit.i: ; preds = %bb.be, %_ZNSt6vectorIN6Assimp3MD59FrameDescESaIS2_EED2Ev.exit.i
  %i.li = load ptr, ptr %i.bs, align 8            ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i2.i, label %_ZN6Assimp3MD513MD5AnimParserD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN6Assimp3MD513BaseFrameDescESaIS2_EED2Ev.exit.i
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ln) #24
  br label %_ZN6Assimp3MD513MD5AnimParserD2Ev.exit

_ZN6Assimp3MD513MD5AnimParserD2Ev.exit:           ; preds = %_ZNSt6vectorIN6Assimp3MD513BaseFrameDescESaIS2_EED2Ev.exit.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.lo = load ptr, ptr %3, align 8               ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lo, %i.lq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6Assimp3MD513MD5AnimParserD2Ev.exit, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.mk, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i ], [ %i.lo, %_ZN6Assimp3MD513MD5AnimParserD2Ev.exit ] ; 7 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.ls = load ptr, ptr %i.lr, align 8            ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.lv = load i64, ptr %i.lt, align 8
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8            ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.mb = load i64, ptr %i.lz, align 8
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.me = load ptr, ptr %i.md, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = ptrtoint ptr %i.me to i64
  %i.mj = sub i64 %i.mh, %i.mi
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef %i.mj) #24
  br label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i: ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.mk, %i.lq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN6Assimp3MD513MD5AnimParserD2Ev.exit
  %i.ml = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.lo, %_ZN6Assimp3MD513MD5AnimParserD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ml, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.ml to i64
  %i.mq = sub i64 %i.mo, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.ml, i64 noundef %i.mq) #24
  br label %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bi

bb.bi:                                            ; preds = %bb.g, %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit
  br i1 %.not151, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i: ; preds = %bb.bi
  %i.mr = load ptr, ptr %i.ad, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #23, !inline_history !19
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bi, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i
  %i.mu = load ptr, ptr %1, align 8               ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.e
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit
  %i.mw = load i64, ptr %i.e, align 8
  %i.mx = add i64 %i.mw, 1
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MD5Importer15LoadMD5MeshFileEv:bb.a

.lr.ph458:                                        ; preds = %._crit_edge411
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 9 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.lr.ph410:                                        ; preds = %bb.ad, %.lr.ph410
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph410 ], [ 0, %bb.ad ] ; 3 uses
  %i.fh = load ptr, ptr %i.ev, align 8
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv
  %i.fj = trunc nuw i64 %indvars.iv to i32
  store i32 %i.fj, ptr %i.fi, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = load i32, ptr %i.es, align 8
  %i.fl = zext i32 %i.fk to i64
  %i.fm = icmp samesign ult i64 %indvars.iv.next, %i.fl
  br i1 %i.fm, label %.lr.ph410, label %._crit_edge411.loopexit, !llvm.loop !40

._crit_edge459:                                   ; preds = %bb.ct, %._crit_edge411
  %i.fn = load ptr, ptr %i.da, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge459
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #24
  br label %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i: ; preds = %bb.af, %._crit_edge459
  %i.ft = load ptr, ptr %4, align 8
  %i.fu = load ptr, ptr %i.dm, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp3MD58MeshDescEEEvT_S6_(ptr noundef %i.ft, ptr noundef %i.fu)
          to label %_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.ah

_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i
  %i.fv = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.ga) #24
  br label %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit

bb.ah:                                            ; preds = %_ZNSt6vectorIN6Assimp3MD58BoneDescESaIS2_EED2Ev.exit.i
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #26
  unreachable

_ZN6Assimp3MD513MD5MeshParserD2Ev.exit:           ; preds = %_ZSt8_DestroyIPN6Assimp3MD58MeshDescES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.gd = load ptr, ptr %3, align 8               ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gd, %i.gf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gz, %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i ], [ %i.gd, %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit ] ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gk = load i64, ptr %i.gi, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.gq = load i64, ptr %i.go, align 8
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #24
  br label %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gz, %i.gf
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3MD57SectionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit
  %i.ha = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.gd, %_ZN6Assimp3MD513MD5MeshParserD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #24
  br label %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3MD57SectionES2_EvT_S4_RSaIT0_E.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.cv

bb.ak:                                            ; preds = %.lr.ph458, %bb.ct
  %.0194456 = phi i32 [ 0, %.lr.ph458 ], [ %.1195, %bb.ct ] ; 5 uses
  %.sroa.0351.0455 = phi ptr [ %i.ew, %.lr.ph458 ], [ %i.yt, %bb.ct ] ; 12 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 48 ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 56 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = icmp eq ptr %i.hh, %i.hj
  br i1 %i.hk, label %bb.ct, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 24 ; 5 uses
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 32 ; 8 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = icmp eq ptr %i.hm, %i.ho
  br i1 %i.hp, label %bb.ct, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hq = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #27
          to label %bb.an unwind label %bb.aw     ; 17 uses

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 2 uses
  store i32 0, ptr %i.hr, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 3 uses
  store i32 0, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 224 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 1272
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 1312
  store ptr null, ptr %i.hw, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ht, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.hu, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.hv, i8 0, i64 36, i1 false)
  %i.hx = load ptr, ptr %i.by, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = zext i32 %.0194456 to i64               ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ia
  store ptr %i.hq, ptr %i.ib, align 8
  %i.ic = load ptr, ptr %i.by, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr %i.id, align 8
  store i32 4, ptr %i.hq, align 8
  invoke void @_ZN6Assimp11MD5Importer14MakeDataUniqueERNS_3MD58MeshDescE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(1100) %.sroa.0351.0455)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 72 ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 76 ; 8 uses
  store ptr %i.ey, ptr %6, align 8
  %i.ii = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ih) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ii, ptr %i.a, align 8
  %i.ij = icmp ugt i64 %i.ii, 15
  br i1 %i.ij, label %.noexc.i279, label %._crit_edge.i.i278

.noexc.i279:                                      ; preds = %bb.ao
  %i.ik = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc280 unwind label %bb.ax ; 2 uses

.noexc280:                                        ; preds = %.noexc.i279
  store ptr %i.ik, ptr %6, align 8
  %i.il = load i64, ptr %i.a, align 8
  store i64 %i.il, ptr %i.ey, align 8
  br label %._crit_edge.i.i278

._crit_edge.i.i278:                               ; preds = %.noexc280, %bb.ao
  %i.im = phi ptr [ %i.ik, %.noexc280 ], [ %i.ey, %bb.ao ] ; 2 uses
  switch i64 %i.ii, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i278
  %i.in = load i8, ptr %i.ih, align 4
  store i8 %i.in, ptr %i.im, align 1
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i278
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.im, ptr nonnull align 1 %i.ih, i64 %i.ii, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i278
  %i.io = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.io, ptr %i.ez, align 8
  %i.ip = load ptr, ptr %6, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.io
  store i8 0, ptr %i.iq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ir = load i64, ptr %i.ez, align 8
  %i.is = and i64 %i.ir, -4
  %i.it = icmp eq i64 %i.is, 4611686018427387900
  br i1 %i.it, label %bb.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #25
          to label %.noexc282 unwind label %.loopexit.split-lp

.noexc282:                                        ; preds = %bb.as
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ar
  %i.iu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit383 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.iv = load i64, ptr %i.ez, align 8            ; 4 uses
  %i.iw = icmp ugt i64 %i.iv, 1023
  br i1 %i.iw, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hq, i64 236
  %i.iy = trunc nuw nsw i64 %i.iv to i32
  store i32 %i.iy, ptr %i.ix, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hq, i64 240 ; 2 uses
  %i.ja = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.iz, ptr align 1 %i.ja, i64 %i.iv, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iv
  store i8 0, ptr %i.jb, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.at
  %i.jc = load ptr, ptr %i.hn, align 8
  %i.jd = load ptr, ptr %i.hl, align 8
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = ashr exact i64 %i.jg, 4                 ; 2 uses
  %i.ji = trunc i64 %i.jh to i32                  ; 2 uses
  store i32 %i.ji, ptr %i.hr, align 4
  %i.jj = and i64 %i.jh, 4294967295               ; 2 uses
  %i.jk = mul nuw nsw i64 %i.jj, 12               ; 4 uses
  %i.jl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jk) #27
          to label %bb.au unwind label %.loopexit383 ; 2 uses

bb.au:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jm = icmp eq i64 %i.jj, 0
  br i1 %i.jm, label %.loopexit382, label %.loopexit382.loopexit

.loopexit382.loopexit:                            ; preds = %bb.au
  %i.jn = add nsw i64 %i.jk, -12                  ; 2 uses
  %i.jo = urem i64 %i.jn, 12
  %i.jp = sub nuw nsw i64 %i.jn, %i.jo
  %i.jq = add nsw i64 %i.jp, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jl, i8 0, i64 %i.jq, i1 false)
  br label %.loopexit382

.loopexit382:                                     ; preds = %.loopexit382.loopexit, %bb.au
  store ptr %i.jl, ptr %i.ht, align 8
  %i.jr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jk) #27
          to label %bb.av unwind label %.loopexit383 ; 3 uses

bb.av:                                            ; preds = %.loopexit382
  %i.js = icmp eq i32 %i.ji, 0
  br i1 %i.js, label %.loopexit381, label %.loopexit381.loopexit

.loopexit381.loopexit:                            ; preds = %bb.av
  %i.jt = add nsw i64 %i.jk, -12                  ; 2 uses
  %i.ju = urem i64 %i.jt, 12
  %i.jv = sub nuw nsw i64 %i.jt, %i.ju
  %i.jw = add nsw i64 %i.jv, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jr, i8 0, i64 %i.jw, i1 false)
  br label %.loopexit381

.loopexit381:                                     ; preds = %.loopexit381.loopexit, %bb.av
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hq, i64 112
  store ptr %i.jr, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hq, i64 176
  store i32 2, ptr %i.jy, align 8
  %i.jz = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.ka = load ptr, ptr %i.hn, align 8
  %.not373412 = icmp eq ptr %i.jz, %i.ka
  br i1 %.not373412, label %._crit_edge417, label %.lr.ph416

._crit_edge417:                                   ; preds = %.lr.ph416, %.loopexit381
  %i.kb = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.kc = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = sdiv exact i64 %i.kf, 1204              ; 3 uses
  %i.kh = icmp ugt i64 %i.kg, 4611686018427387903
  %i.ki = shl nsw i64 %i.kg, 2                    ; 2 uses
  %i.kj = select i1 %i.kh, i64 -1, i64 %i.ki
  %i.kk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kj) #27
          to label %bb.ay unwind label %bb.az     ; 5 uses

bb.aw:                                            ; preds = %bb.an, %bb.am
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ax:                                            ; preds = %.noexc.i279
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

.loopexit383:                                     ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.loopexit382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph416:                                        ; preds = %.loopexit381, %.lr.ph416
  %.0196414 = phi ptr [ %i.ku, %.lr.ph416 ], [ %i.jr, %.loopexit381 ] ; 4 uses
  %.sroa.0345.0413 = phi ptr [ %i.kt, %.lr.ph416 ], [ %i.jz, %.loopexit381 ] ; 3 uses
  %i.kn = load float, ptr %.sroa.0345.0413, align 4
  store float %i.kn, ptr %.0196414, align 4
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0345.0413, i64 4
  %i.kp = load float, ptr %i.ko, align 4
  %i.kq = fsub float 1.000000e+00, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %.0196414, i64 4
  store float %i.kq, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.0196414, i64 8
  store float 0.000000e+00, ptr %i.ks, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0345.0413, i64 16 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0196414, i64 12
  %i.kv = load ptr, ptr %i.hn, align 8
  %.not373 = icmp eq ptr %i.kt, %i.kv
  br i1 %.not373, label %._crit_edge417, label %.lr.ph416, !llvm.loop !41

bb.ay:                                            ; preds = %._crit_edge417
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kk, i8 0, i64 %i.ki, i1 false)
  %i.kw = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.kx = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not374422 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not374422, label %.preheader380, label %.lr.ph425

.preheader380:                                    ; preds = %._crit_edge421, %bb.ay
  %.not461 = icmp eq ptr %i.kb, %i.kc             ; 2 uses
  br i1 %.not461, label %._crit_edge428, label %.lr.ph427

.lr.ph427:                                        ; preds = %.preheader380
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hq, i64 216 ; 2 uses
  br label %bb.bc

bb.az:                                            ; preds = %.loopexit379, %bb.bf, %._crit_edge417
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph425:                                        ; preds = %bb.ay, %._crit_edge421
  %i.la = phi ptr [ %i.li, %._crit_edge421 ], [ %i.kx, %bb.ay ]
  %.sroa.0339.0423 = phi ptr [ %i.lj, %._crit_edge421 ], [ %i.kw, %bb.ay ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MD5Importer15LoadMD5MeshFileEv:bb.a
  %i.tb = call float @llvm.fmuladd.f32(float %i.sj, float %.sroa.016.4.vec.extract22.i, float %i.ta)
  %i.tc = load <2 x float>, ptr %i.rh, align 4
  %i.td = fadd <2 x float> %i.tc, %i.sw
  %i.te = fadd float %i.rj, %i.tb
  %i.tf = insertelement <2 x float> poison, float %i.qw, i64 0
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.th = fmul <2 x float> %i.tg, %i.td
  %i.ti = fmul float %i.qw, %i.te
  %i.tj = load <2 x float>, ptr %.2198444, align 4
  %i.tk = fadd <2 x float> %i.tj, %i.th
  store <2 x float> %i.tk, ptr %.2198444, align 4
  %i.tl = load float, ptr %.sroa.5.0..2198.sroa_idx, align 4
  %i.tm = fadd float %i.tl, %i.ti
  store float %i.tm, ptr %.sroa.5.0..2198.sroa_idx, align 4
  %i.tn = load ptr, ptr %i.hu, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.rd, i64 1200
  %i.tp = load i32, ptr %i.to, align 4
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %i.tq
  %i.ts = load ptr, ptr %i.tr, align 8
  %i.tt = load ptr, ptr %i.ht, align 8
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = sub i64 %i.pq, %i.tu
  %i.tw = sdiv exact i64 %i.tv, 12
  %i.tx = trunc i64 %i.tw to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 1048 ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8            ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store ptr %i.ua, ptr %i.ty, align 8
  store i32 %i.tx, ptr %i.tz, align 4
  %.sroa_idx321 = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  store float %i.qz, ptr %.sroa_idx321, align 4
  %.pre498 = load i32, ptr %i.pc, align 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.ub = phi i32 [ %i.qk, %bb.bw ], [ %.pre498, %bb.bx ] ; 2 uses
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %i.uc = add i32 %i.ub, %i.pb
  %i.ud = zext i32 %i.uc to i64
  %i.ue = icmp samesign ult i64 %indvars.iv.next479, %i.ud
  br i1 %i.ue, label %bb.br, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %bb.by, %bb.bp
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.0331.0443, i64 16 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.2198444, i64 12
  %i.uh = load ptr, ptr %i.hn, align 8
  %.not375 = icmp eq ptr %i.uf, %i.uh
  br i1 %.not375, label %.preheader378, label %bb.bo, !llvm.loop !49

.lr.ph449:                                        ; preds = %.preheader378, %.lr.ph449
  %indvars.iv482 = phi i64 [ %indvars.iv.next483, %.lr.ph449 ], [ 0, %.preheader378 ] ; 2 uses
  %i.ui = load ptr, ptr %i.hu, align 8
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv482
  %i.uk = load ptr, ptr %i.uj, align 8            ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 1028
  %i.um = load i32, ptr %i.ul, align 4
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 1048 ; 2 uses
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = zext i32 %i.um to i64
  %i.uq = sub nsw i64 0, %i.up
  %i.ur = getelementptr inbounds [8 x i8], ptr %i.uo, i64 %i.uq
  store ptr %i.ur, ptr %i.un, align 8
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %i.us = load i32, ptr %i.ma, align 8
  %i.ut = zext i32 %i.us to i64
  %i.uu = icmp samesign ult i64 %indvars.iv.next483, %i.ut
  br i1 %i.uu, label %.lr.ph449, label %.loopexit379, !llvm.loop !50

.loopexit379:                                     ; preds = %.lr.ph449, %.preheader378, %._crit_edge428
  call void @_ZdaPv(ptr noundef nonnull %i.kk) #24
  %i.uv = load ptr, ptr %i.hi, align 8
  %i.uw = load ptr, ptr %i.hg, align 8
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = ptrtoint ptr %i.uw to i64
  %i.uz = sub i64 %i.ux, %i.uy
  %i.va = ashr exact i64 %i.uz, 4                 ; 3 uses
  %i.vb = trunc i64 %i.va to i32                  ; 2 uses
  store i32 %i.vb, ptr %i.hs, align 8
  %i.vc = and i64 %i.va, 4294967295               ; 5 uses
  %i.vd = shl nuw nsw i64 %i.vc, 4
  %i.ve = or disjoint i64 %i.vd, 8
  %i.vf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ve) #27
          to label %bb.bz unwind label %bb.az     ; 2 uses

bb.bz:                                            ; preds = %.loopexit379
  store i64 %i.vc, ptr %i.vf, align 16
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8 ; 4 uses
  %i.vh = icmp eq i64 %i.vc, 0
  br i1 %i.vh, label %.loopexit377, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vi = getelementptr inbounds nuw [16 x i8], ptr %i.vg, i64 %i.vc
  %i.vj = add nuw nsw i64 %i.vc, 1152921504606846975
  %i.vk = and i64 %i.vj, 1152921504606846975
  %xtraiter566 = and i64 %i.va, 7                 ; 2 uses
  %lcmp.mod567.not = icmp eq i64 %xtraiter566, 0
  br i1 %lcmp.mod567.not, label %.prol.loopexit565, label %.prol.preheader564

.prol.preheader564:                               ; preds = %bb.ca, %.prol.preheader564
  %i.vl = phi ptr [ %i.vn, %.prol.preheader564 ], [ %i.vg, %bb.ca ] ; 3 uses
  %prol.iter568 = phi i64 [ %prol.iter568.next, %.prol.preheader564 ], [ 0, %bb.ca ]
  store i32 0, ptr %i.vl, align 8
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  store ptr null, ptr %i.vm, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 16 ; 2 uses
  %prol.iter568.next = add i64 %prol.iter568, 1   ; 2 uses
  %prol.iter568.cmp.not = icmp eq i64 %prol.iter568.next, %xtraiter566
  br i1 %prol.iter568.cmp.not, label %.prol.loopexit565, label %.prol.preheader564, !llvm.loop !51

.prol.loopexit565:                                ; preds = %.prol.preheader564, %bb.ca
  %.unr = phi ptr [ %i.vg, %bb.ca ], [ %i.vn, %.prol.preheader564 ]
  %i.vo = icmp samesign ult i64 %i.vk, 7
  br i1 %i.vo, label %.loopexit377, label %.new

.new:                                             ; preds = %.prol.loopexit565, %.new
  %i.vp = phi ptr [ %i.wf, %.new ], [ %.unr, %.prol.loopexit565 ] ; 17 uses
  store i32 0, ptr %i.vp, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store ptr null, ptr %i.vq, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  store i32 0, ptr %i.vr, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  store ptr null, ptr %i.vs, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 32
  store i32 0, ptr %i.vt, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vp, i64 40
  store ptr null, ptr %i.vu, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 48
  store i32 0, ptr %i.vv, align 8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vp, i64 56
  store ptr null, ptr %i.vw, align 8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vp, i64 64
  store i32 0, ptr %i.vx, align 8
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vp, i64 72
  store ptr null, ptr %i.vy, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vp, i64 80
  store i32 0, ptr %i.vz, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vp, i64 88
  store ptr null, ptr %i.wa, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vp, i64 96
  store i32 0, ptr %i.wb, align 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 104
  store ptr null, ptr %i.wc, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vp, i64 112
  store i32 0, ptr %i.wd, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.vp, i64 120
  store ptr null, ptr %i.we, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vp, i64 128 ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.vi
  br i1 %i.wg, label %.loopexit377, label %.new

.loopexit377:                                     ; preds = %.prol.loopexit565, %.new, %bb.bz
  %i.wh = getelementptr inbounds nuw i8, ptr %i.hq, i64 208 ; 3 uses
  store ptr %i.vg, ptr %i.wh, align 8
  %.not464 = icmp eq i32 %i.vb, 0
  br i1 %.not464, label %._crit_edge453, label %.lr.ph452

._crit_edge453:                                   ; preds = %.lr.ph452, %.loopexit377
  %i.wi = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.cb unwind label %bb.co     ; 9 uses

.lr.ph452:                                        ; preds = %.loopexit377, %.lr.ph452
  %indvars.iv486 = phi i64 [ %indvars.iv.next487, %.lr.ph452 ], [ 0, %.loopexit377 ] ; 5 uses
  %i.wj = load ptr, ptr %i.wh, align 8
  %i.wk = getelementptr inbounds nuw [16 x i8], ptr %i.wj, i64 %indvars.iv486
  store i32 3, ptr %i.wk, align 8
  %i.wl = load ptr, ptr %i.hg, align 8
  %i.wm = getelementptr inbounds nuw [16 x i8], ptr %i.wl, i64 %indvars.iv486
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8
  %i.wp = load ptr, ptr %i.wh, align 8
  %i.wq = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %indvars.iv486
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  store ptr %i.wo, ptr %i.wr, align 8
  %i.ws = load ptr, ptr %i.hg, align 8
  %i.wt = getelementptr inbounds nuw [16 x i8], ptr %i.ws, i64 %indvars.iv486
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store ptr null, ptr %i.wu, align 8
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %i.wv = load i32, ptr %i.hs, align 8
  %i.ww = zext i32 %i.wv to i64
  %i.wx = icmp samesign ult i64 %indvars.iv.next487, %i.ww
  br i1 %i.wx, label %.lr.ph452, label %._crit_edge453, !llvm.loop !52

bb.cb:                                            ; preds = %._crit_edge453
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.wi)
          to label %bb.cc unwind label %bb.cp

bb.cc:                                            ; preds = %bb.cb
  %i.wy = load ptr, ptr %i.by, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 40
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.ia
  store ptr %i.wi, ptr %i.xb, align 8
  %i.xc = load ptr, ptr %i.by, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 32 ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 8
  %i.xf = add i32 %i.xe, 1
  store i32 %i.xf, ptr %i.xd, align 8
  %i.xg = load i32, ptr %i.ig, align 8            ; 3 uses
  %.not219 = icmp eq i32 %i.xg, 0
  br i1 %.not219, label %bb.cr, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.xh = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ih, i32 noundef 46) #28
  %.not220 = icmp eq ptr %i.xh, null
  br i1 %.not220, label %bb.ce, label %bb.cr

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fc, i8 0, i64 1024, i1 false)
  %spec.select.i291 = call i32 @llvm.umin.i32(i32 %i.xg, i32 1023) ; 3 uses
  store i32 %spec.select.i291, ptr %8, align 4
  %i.xi = zext nneg i32 %spec.select.i291 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr nonnull align 4 %i.ih, i64 %i.xi, i1 false)
  %i.xj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.xi ; 2 uses
  store i8 0, ptr %i.xj, align 1
  %i.xk = icmp ugt i32 %i.xg, 1013
  br i1 %i.xk, label %_ZN8aiString6AppendEPKc.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xl = add nuw nsw i32 %spec.select.i291, 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.xj, ptr noundef nonnull align 1 dereferenceable(11) @.str.17, i64 11, i1 false)
  store i32 %i.xl, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit

_ZN8aiString6AppendEPKc.exit:                     ; preds = %bb.ce, %bb.cf
  %i.xm = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, ptr noundef nonnull %8, ptr noundef nonnull @.str.18, i32 noundef 6, i32 noundef 0)
          to label %bb.cg unwind label %bb.cq     ; 0 uses

bb.cg:                                            ; preds = %_ZN8aiString6AppendEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.xn = load i32, ptr %i.ig, align 8            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fd, i8 0, i64 1024, i1 false)
  %spec.select.i293 = call i32 @llvm.umin.i32(i32 %i.xn, i32 1023) ; 4 uses
  store i32 %spec.select.i293, ptr %9, align 4
  %i.xo = zext nneg i32 %spec.select.i293 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr nonnull align 4 %i.ih, i64 %i.xo, i1 false)
  %i.xp = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.xo
  store i8 0, ptr %i.xp, align 1
  store i32 %spec.select.i293, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr nonnull align 4 %i.fd, i64 %i.xo, i1 false)
  %i.xq = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.xo ; 2 uses
  store i8 0, ptr %i.xq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.xr = icmp ugt i32 %i.xn, 1017
  br i1 %i.xr, label %_ZN8aiString6AppendEPKc.exit296, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xs = add nuw nsw i32 %spec.select.i293, 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.xq, ptr noundef nonnull align 1 dereferenceable(7) @.str.19, i64 7, i1 false)
  store i32 %i.xs, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit296

_ZN8aiString6AppendEPKc.exit296:                  ; preds = %bb.cg, %bb.ch
  %i.xt = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, ptr noundef nonnull %8, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 0)
          to label %bb.ci unwind label %bb.cq     ; 0 uses

bb.ci:                                            ; preds = %_ZN8aiString6AppendEPKc.exit296
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.xu = load i32, ptr %i.ig, align 8            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fe, i8 0, i64 1024, i1 false)
  %spec.select.i297 = call i32 @llvm.umin.i32(i32 %i.xu, i32 1023) ; 4 uses
  store i32 %spec.select.i297, ptr %10, align 4
  %i.xv = zext nneg i32 %spec.select.i297 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fe, ptr nonnull align 4 %i.ih, i64 %i.xv, i1 false)
  %i.xw = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.xv
  store i8 0, ptr %i.xw, align 1
  store i32 %spec.select.i297, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr nonnull align 4 %i.fe, i64 %i.xv, i1 false)
  %i.xx = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.xv ; 2 uses
  store i8 0, ptr %i.xx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.xy = icmp ugt i32 %i.xu, 1017
  br i1 %i.xy, label %_ZN8aiString6AppendEPKc.exit300, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.xz = add nuw nsw i32 %spec.select.i297, 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.xx, ptr noundef nonnull align 1 dereferenceable(7) @.str.20, i64 7, i1 false)
  store i32 %i.xz, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit300

_ZN8aiString6AppendEPKc.exit300:                  ; preds = %bb.ci, %bb.cj
  %i.ya = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, ptr noundef nonnull %8, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 0)
          to label %bb.ck unwind label %bb.cq     ; 0 uses

bb.ck:                                            ; preds = %_ZN8aiString6AppendEPKc.exit300
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.yb = load i32, ptr %i.ig, align 8            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ff, i8 0, i64 1024, i1 false)
  %spec.select.i301 = call i32 @llvm.umin.i32(i32 %i.yb, i32 1023) ; 4 uses
  store i32 %spec.select.i301, ptr %11, align 4
  %i.yc = zext nneg i32 %spec.select.i301 to i64  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ff, ptr nonnull align 4 %i.ih, i64 %i.yc, i1 false)
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.yc
  store i8 0, ptr %i.yd, align 1
  store i32 %spec.select.i301, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr nonnull align 4 %i.ff, i64 %i.yc, i1 false)
  %i.ye = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.yc ; 2 uses
  store i8 0, ptr %i.ye, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.yf = icmp ugt i32 %i.yb, 1017
  br i1 %i.yf, label %_ZN8aiString6AppendEPKc.exit304, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yg = add nuw nsw i32 %spec.select.i301, 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ye, ptr noundef nonnull align 1 dereferenceable(7) @.str.21, i64 7, i1 false)
  store i32 %i.yg, ptr %8, align 4
  br label %_ZN8aiString6AppendEPKc.exit304

_ZN8aiString6AppendEPKc.exit304:                  ; preds = %bb.ck, %bb.cl
  %i.yh = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, ptr noundef nonnull %8, ptr noundef nonnull @.str.18, i32 noundef 5, i32 noundef 0)
          to label %bb.cm unwind label %bb.cq     ; 0 uses

bb.cm:                                            ; preds = %_ZN8aiString6AppendEPKc.exit304
  %i.yi = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, ptr noundef nonnull %i.ig, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0)
          to label %bb.cn unwind label %bb.cq     ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cs

bb.co:                                            ; preds = %bb.cr, %._crit_edge453
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cp:                                            ; preds = %bb.cb
  %i.yk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wi, i64 noundef 16) #24
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cm, %_ZN8aiString6AppendEPKc.exit304, %_ZN8aiString6AppendEPKc.exit300, %_ZN8aiString6AppendEPKc.exit296, %_ZN8aiString6AppendEPKc.exit
  %i.yl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cd, %bb.cc
  %i.ym = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, ptr noundef nonnull %i.ig, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 0)
          to label %bb.cs unwind label %bb.co     ; 0 uses

bb.cs:                                            ; preds = %bb.cr, %bb.cn
  %i.yn = add i32 %.0194456, 1
  %i.yo = getelementptr inbounds nuw i8, ptr %i.hq, i64 232
  store i32 %.0194456, ptr %i.yo, align 8
  %i.yp = load ptr, ptr %6, align 8               ; 2 uses
  %i.yq = icmp eq ptr %i.yp, %i.ey
  br i1 %i.yq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.cs
  %i.yr = load i64, ptr %i.ey, align 8
  %i.ys = add i64 %i.yr, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.ys) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ak, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %.1195 = phi i32 [ %i.yn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %.0194456, %bb.al ], [ %.0194456, %bb.ak ]
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.0351.0455, i64 1104 ; 2 uses
  %.not372 = icmp eq ptr %i.yt, %i.ex
  br i1 %.not372, label %._crit_edge459, label %bb.ak, !llvm.loop !53

bb.cu:                                            ; preds = %.loopexit383, %.loopexit.split-lp, %bb.bq, %bb.bv, %bb.bu, %bb.az, %bb.bn, %bb.cq, %bb.cp, %bb.co
  %.pn230.pn.pn = phi { ptr, i32 } [ %i.qt, %bb.bv ], [ %i.kz, %bb.az ], [ %i.yk, %bb.cp ], [ %i.oy, %bb.bn ], [ %i.qs, %bb.bu ], [ %i.yj, %bb.co ], [ %i.yl, %bb.cq ], [ %i.qj, %bb.bq ], [ %lpad.loopexit, %.loopexit383 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.yu = load ptr, ptr %6, align 8               ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.ey
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.cu
  %i.yw = load i64, ptr %i.ey, align 8
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308, %bb.ax
  %.pn230.pn.pn.pn = phi { ptr, i32 } [ %i.km, %bb.ax ], [ %.pn230.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308 ], [ %.pn230.pn.pn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cw

bb.cv:                                            ; preds = %bb.g, %_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev.exit
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i: ; preds = %bb.cv
  %i.yy = load ptr, ptr %i.ae, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.za = load ptr, ptr %i.yz, align 8
  call void %i.za(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #23, !inline_history !19
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cv, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i
  %i.zb = load ptr, ptr %1, align 8               ; 2 uses
  %i.zc = icmp eq ptr %i.zb, %i.f
  br i1 %i.zc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit
  %i.zd = load i64, ptr %i.f, align 8
  %i.ze = add i64 %i.zd, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.ze) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.cw:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %bb.w, %bb.x, %bb.y, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %bb.u
  %.pn230.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ %i.dt, %bb.u ], [ %i.ea, %bb.x ], [ %.pn230.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310 ], [ %i.eb, %bb.y ], [ %i.dz, %bb.w ], [ %i.kl, %bb.aw ], [ %i.fg, %bb.ae ]
  call void @_ZN6Assimp3MD513MD5MeshParserD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.t
  %.pn230.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn.pn.pn, %bb.cw ], [ %i.ds, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt6vectorIN6Assimp3MD57SectionESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #23
end_hunk_2
