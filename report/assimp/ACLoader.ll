inline.NumInlined: 1445
inline.NumDeleted: 684
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Assimp12AC3DImporter20ConvertObjectSectionERNS0_6ObjectERSt6vectorIP6aiMeshSaIS5_EERS3_IP10aiMaterialSaISA_EERKS3_INS0_8MaterialESaISE_EEP6aiNode:bb.a
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yk, i64 %indvars.iv.i385
  store i32 %.8585, ptr %i.yl, align 4
  %indvars.iv.next.i387 = add nuw nsw i64 %indvars.iv.i385, 1 ; 2 uses
  %i.ym = load i32, ptr %i.tm, align 8
  %i.yn = zext i32 %i.ym to i64
  %i.yo = icmp samesign ult i64 %indvars.iv.next.i387, %i.yn
  br i1 %i.yo, label %.lr.ph.i384, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402, !llvm.loop !58

_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402: ; preds = %bb.dp, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398, %bb.dj
  %.2600 = phi ptr [ %i.tm, %bb.dj ], [ %i.xi, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %i.xi, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %i.xi, %bb.dp ] ; 2 uses
  %.4591 = phi ptr [ %i.wz, %bb.dj ], [ %i.wz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %i.wz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %i.yc, %bb.dp ] ; 2 uses
  %.3580 = phi i32 [ %i.tt, %bb.dj ], [ %i.tt, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %i.tt, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %i.yj, %bb.dp ] ; 2 uses
  %.9 = phi ptr [ %.8, %bb.dj ], [ %.8, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %.8, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %.18, %bb.dp ] ; 2 uses
  %i.yp = load ptr, ptr %i.po, align 8
  %i.yq = load ptr, ptr %i.pn, align 8            ; 2 uses
  %i.yr = ptrtoint ptr %i.yp to i64
  %i.ys = ptrtoint ptr %i.yq to i64
  %i.yt = sub i64 %i.yr, %i.ys
  %i.yu = sdiv exact i64 %i.yt, 12
  %i.yv = add nsw i64 %i.yu, 4294967294
  %i.yw = and i64 %i.yv, 4294967295
  %i.yx = icmp samesign ult i64 %indvars.iv.next, %i.yw
  br i1 %i.yx, label %.lr.ph698, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, !llvm.loop !59

bb.dq:                                            ; preds = %bb.ce
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0526.1729, i64 8 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8            ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.0526.1729, i64 16 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = ptrtoint ptr %i.yz to i64
  %i.ze = sub i64 %i.zc, %i.zd
  %i.zf = sdiv exact i64 %i.ze, 12
  %i.zg = trunc i64 %i.zf to i32
  %i.zh = icmp eq i8 %i.pm, 2
  %i.zi = sext i1 %i.zh to i32
  %spec.select = add i32 %i.zg, %i.zi             ; 3 uses
  %.not750 = icmp eq i32 %spec.select, 0
  br i1 %.not750, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %.lr.ph719

.lr.ph719:                                        ; preds = %bb.dq
  %i.zj = icmp eq i8 %i.pm, 1
  %i.zk = add i32 %spec.select, -1
  br label %bb.dr

bb.dr:                                            ; preds = %.lr.ph719, %bb.ed
  %.0258717 = phi i32 [ 0, %.lr.ph719 ], [ %i.aav, %bb.ed ] ; 2 uses
  %.sroa.0512.1716 = phi ptr [ %i.yz, %.lr.ph719 ], [ %.sroa.0512.2, %bb.ed ] ; 5 uses
  %.10715 = phi ptr [ %.1728, %.lr.ph719 ], [ %.12, %bb.ed ] ; 4 uses
  %.4581714 = phi i32 [ %.0577727, %.lr.ph719 ], [ %i.zp, %bb.ed ] ; 3 uses
  %.5592713 = phi ptr [ %.0587726, %.lr.ph719 ], [ %i.aao, %bb.ed ] ; 3 uses
  %.3601712 = phi ptr [ %.0598725, %.lr.ph719 ], [ %i.zl, %bb.ed ] ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.3601712, i64 16 ; 2 uses
  store i32 2, ptr %.3601712, align 8
  %i.zm = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #27
          to label %bb.ds unwind label %.loopexit620 ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %i.zn = getelementptr inbounds nuw i8, ptr %.3601712, i64 8 ; 2 uses
  store ptr %i.zm, ptr %i.zn, align 8
  %i.zo = add i32 %.4581714, 1
  store i32 %.4581714, ptr %i.zm, align 4
  %i.zp = add i32 %.4581714, 2                    ; 2 uses
  %i.zq = load ptr, ptr %i.zn, align 8
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  store i32 %i.zo, ptr %i.zr, align 4
  %i.zs = load ptr, ptr %i.za, align 8
  %i.zt = icmp eq ptr %.sroa.0512.1716, %i.zs
  br i1 %i.zt, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.zu = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zu, ptr noundef nonnull @.str.49)
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %bb.dt
  invoke void @__cxa_throw(ptr nonnull %i.zu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.fg unwind label %.loopexit.split-lp

.loopexit620:                                     ; preds = %bb.dr
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

.loopexit.split-lp:                               ; preds = %bb.du
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.dv:                                            ; preds = %bb.dt
  %i.zv = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.zu) #25
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.dw:                                            ; preds = %bb.ds
  %i.zw = load i32, ptr %.sroa.0512.1716, align 4
  %i.zx = zext i32 %i.zw to i64
  %i.zy = load ptr, ptr %i.c, align 8
  %i.zz = getelementptr inbounds nuw [12 x i8], ptr %i.zy, i64 %i.zx
  %i.aaa = getelementptr inbounds nuw i8, ptr %.5592713, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.5592713, ptr noundef nonnull align 4 dereferenceable(12) %i.zz, i64 12, i1 false)
  %.not297 = icmp eq ptr %.10715, null
  br i1 %.not297, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.0512.1716, i64 4
  %i.aac = load float, ptr %i.aab, align 4
  store float %i.aac, ptr %.10715, align 4
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0512.1716, i64 8
  %i.aae = load float, ptr %i.aad, align 4
  %i.aaf = getelementptr inbounds nuw i8, ptr %.10715, i64 4
  store float %i.aae, ptr %i.aaf, align 4
  %i.aag = getelementptr inbounds nuw i8, ptr %.10715, i64 12
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.11 = phi ptr [ null, %bb.dw ], [ %i.aag, %bb.dx ] ; 4 uses
  %i.aah = icmp eq i32 %i.zk, %.0258717
  %or.cond = and i1 %i.zj, %i.aah
  br i1 %or.cond, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aai = load ptr, ptr %i.yy, align 8
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.0512.1716, i64 12
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.sroa.0512.2 = phi ptr [ %i.aai, %bb.dz ], [ %i.aaj, %bb.ea ] ; 4 uses
  %i.aak = load i32, ptr %.sroa.0512.2, align 4
  %i.aal = zext i32 %i.aak to i64
  %i.aam = load ptr, ptr %i.c, align 8
  %i.aan = getelementptr inbounds nuw [12 x i8], ptr %i.aam, i64 %i.aal
  %i.aao = getelementptr inbounds nuw i8, ptr %.5592713, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aaa, ptr noundef nonnull align 4 dereferenceable(12) %i.aan, i64 12, i1 false)
  %.not298 = icmp eq ptr %.11, null
  br i1 %.not298, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.0512.2, i64 4
  %i.aaq = load float, ptr %i.aap, align 4
  store float %i.aaq, ptr %.11, align 4
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.0512.2, i64 8
  %i.aas = load float, ptr %i.aar, align 4
  %i.aat = getelementptr inbounds nuw i8, ptr %.11, i64 4
  store float %i.aas, ptr %i.aat, align 4
  %i.aau = getelementptr inbounds nuw i8, ptr %.11, i64 12
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.12 = phi ptr [ null, %bb.eb ], [ %i.aau, %bb.ec ] ; 2 uses
  %i.aav = add nuw i32 %.0258717, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.aav, %spec.select
  br i1 %exitcond.not, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %bb.dr, !llvm.loop !60

_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit: ; preds = %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402, %bb.cv, %bb.ed, %.preheader, %bb.dq, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i, %._crit_edge708, %bb.cf, %bb.cd
  %.4602 = phi ptr [ %i.rz, %bb.cv ], [ %i.pw, %bb.cf ], [ %i.pw, %._crit_edge708 ], [ %.0598725, %bb.cd ], [ %i.zl, %bb.ed ], [ %i.rz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %i.rz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %.0598725, %bb.dq ], [ %.0598725, %.preheader ], [ %.2600, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ]
  %.6593 = phi ptr [ %i.st, %bb.cv ], [ %.0587726, %bb.cf ], [ %.1588.lcssa, %._crit_edge708 ], [ %.0587726, %bb.cd ], [ %i.aao, %bb.ed ], [ %.1588.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.1588.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %.0587726, %bb.dq ], [ %.0587726, %.preheader ], [ %.4591, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ]
  %.5582 = phi i32 [ %i.ta, %bb.cv ], [ %.0577727, %bb.cf ], [ %.1578.lcssa, %._crit_edge708 ], [ %.0577727, %bb.cd ], [ %i.zp, %bb.ed ], [ %.1578.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.1578.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %.0577727, %bb.dq ], [ %.0577727, %.preheader ], [ %.3580, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ]
  %.13 = phi ptr [ %.15, %bb.cv ], [ %.1728, %bb.cf ], [ %.2.lcssa, %._crit_edge708 ], [ %.1728, %bb.cd ], [ %.12, %bb.ed ], [ %.2.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.2.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %.1728, %bb.dq ], [ %.1728, %.preheader ], [ %.9, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.0526.1729, i64 32 ; 2 uses
  %.not614 = icmp eq ptr %i.aaw, %i.i
  br i1 %.not614, label %.loopexit628, label %bb.cd, !llvm.loop !61

.loopexit628:                                     ; preds = %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, %bb.cc, %bb.at
  %.1264 = phi ptr [ %.0263735, %bb.at ], [ %i.kj, %bb.cc ], [ %i.kj, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0506.0733, i64 8 ; 2 uses
  %i.aay = add i32 %.0265734, 1
  %.not612 = icmp eq ptr %i.aax, %.0.lcssa.i.i.i.i.i.i
  br i1 %.not612, label %._crit_edge738, label %bb.at, !llvm.loop !62

bb.ee:                                            ; preds = %._crit_edge738
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.aba = load i8, ptr %i.aaz, align 1, !range !63, !noundef !64
  %i.abb = trunc nuw i8 %i.aba to i1
  br i1 %i.abb, label %bb.ef, label %bb.eq

bb.ef:                                            ; preds = %bb.ee
  %i.abc = invoke noundef ptr @_ZN6Assimp10Subdivider6CreateENS0_9AlgorithmE(i32 noundef 1)
          to label %bb.eg unwind label %bb.en     ; 7 uses

bb.eg:                                            ; preds = %bb.ef
  %i.abd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.eh unwind label %bb.eo

bb.eh:                                            ; preds = %bb.eg
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6Assimp6Logger4infoIJRA39_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.abd, ptr noundef nonnull align 1 dereferenceable(39) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %i.abe)
          to label %bb.ei unwind label %bb.eo

bb.ei:                                            ; preds = %bb.eh
  %i.abf = load ptr, ptr %i.jk, align 8
  %i.abg = load ptr, ptr %2, align 8              ; 2 uses
  %i.abh = ptrtoint ptr %i.abf to i64
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = sub i64 %i.abh, %i.abi
  %i.abk = ashr exact i64 %i.abj, 3               ; 2 uses
  %i.abl = sub nsw i64 %i.abk, %i.jq              ; 5 uses
  %i.abm = icmp ugt i64 %i.abl, 1152921504606846975
  br i1 %i.abm, label %bb.ej, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #28
          to label %.noexc404 unwind label %bb.ep

.noexc404:                                        ; preds = %bb.ej
  unreachable

_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.ei
  %.not.i.i.i.i403 = icmp ne i64 %i.abk, %i.jq
  tail call void @llvm.assume(i1 %.not.i.i.i.i403)
  %i.abn = shl nuw nsw i64 %i.abl, 3              ; 5 uses
  %i.abo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abn) #27
          to label %.noexc405 unwind label %bb.ep ; 6 uses

.noexc405:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.abo, i8 0, i64 %i.abn, i1 false)
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.jp
  %i.abq = load i32, ptr %i.jy, align 4
  %i.abr = load ptr, ptr %i.abc, align 8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 24
  %i.abt = load ptr, ptr %i.abs, align 8
  invoke void %i.abt(ptr noundef nonnull align 8 dereferenceable(8) %i.abc, ptr noundef nonnull %i.abp, i64 noundef %i.abl, ptr noundef nonnull %i.abo, i32 noundef %i.abq, i1 noundef zeroext true)
          to label %bb.ek unwind label %.thread

bb.ek:                                            ; preds = %.noexc405
  %i.abu = load ptr, ptr %2, align 8
  %i.abv = getelementptr inbounds i8, ptr %i.abu, i64 %i.jp ; 2 uses
  %i.abw = icmp samesign ugt i64 %i.abl, 1
  br i1 %i.abw, label %bb.el, label %6, !prof !65

bb.el:                                            ; preds = %bb.ek
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.abv, ptr nonnull align 8 %i.abo, i64 %i.abn, i1 false)
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

6:                                                ; preds = %bb.ek
  %7 = icmp eq i64 %i.abl, 1
  br i1 %7, label %bb.em, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

bb.em:                                            ; preds = %6
  %i.abx = load ptr, ptr %i.abo, align 8
  store ptr %i.abx, ptr %i.abv, align 8
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.em, %6, %bb.el
  tail call void @_ZdlPvm(ptr noundef nonnull %i.abo, i64 noundef %i.abn) #29
  %i.aby = load ptr, ptr %i.abc, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8
  tail call void %i.aca(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abc) #25, !inline_history !66
  br label %bb.et

bb.en:                                            ; preds = %bb.ef
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.eo:                                            ; preds = %bb.eh, %bb.eg
  %i.acc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409

bb.ep:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %bb.ej
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409

.thread:                                          ; preds = %.noexc405
  %i.ace = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.abo, i64 noundef %i.abn) #29
  br label %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409:        ; preds = %bb.ep, %bb.eo
  %.pn.pn.pn = phi { ptr, i32 } [ %i.acc, %bb.eo ], [ %i.acd, %bb.ep ] ; 2 uses
  %.not.i410 = icmp eq ptr %i.abc, null
  br i1 %.not.i410, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412, label %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411

_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411: ; preds = %.thread, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409
  %.pn.pn.pn609 = phi { ptr, i32 } [ %i.ace, %.thread ], [ %.pn.pn.pn, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409 ]
  %i.acf = load ptr, ptr %i.abc, align 8
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.ach = load ptr, ptr %i.acg, align 8
  tail call void %i.ach(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abc) #25, !inline_history !66
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.eq:                                            ; preds = %bb.ee
  %i.aci = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.er unwind label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6Assimp6Logger4infoIJRA74_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aci, ptr noundef nonnull align 1 dereferenceable(74) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %i.acj)
          to label %bb.et unwind label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.ack = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.et:                                            ; preds = %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit, %bb.er, %._crit_edge738
  %.not.i.i.i413 = icmp eq ptr %.sroa.0557.0, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.acl = ptrtoint ptr %.sroa.0557.0 to i64
  %i.acm = sub i64 %.sroa.24.0, %i.acl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0557.0, i64 noundef %i.acm) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412: ; preds = %.loopexit620, %.loopexit.split-lp, %.loopexit623, %.loopexit.split-lp624, %.loopexit639, %.loopexit.split-lp640, %.loopexit634, %.loopexit.split-lp635, %.loopexit629, %.loopexit.split-lp630, %.loopexit644, %bb.en, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409, %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411, %bb.bl, %bb.bo, %bb.bk, %bb.ca, %bb.cl, %bb.cm, %bb.ci, %bb.dg, %bb.dv, %bb.cb, %bb.bv, %bb.bs, %bb.es, %bb.y
  %.pn332.pn = phi { ptr, i32 } [ %i.ez, %bb.y ], [ %i.acb, %bb.en ], [ %lpad.loopexit, %.loopexit620 ], [ %i.ack, %bb.es ], [ %i.zv, %bb.dv ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.my, %bb.bl ], [ %i.nb, %bb.bo ], [ %i.mx, %bb.bk ], [ %lpad.loopexit.split-lp632, %.loopexit.split-lp630 ], [ %lpad.loopexit.split-lp637, %.loopexit.split-lp635 ], [ %i.om, %bb.bs ], [ %i.op, %bb.bv ], [ %i.pc, %bb.ca ], [ %i.pd, %bb.cb ], [ %.pn.pn.pn, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409 ], [ %.pn.pn.pn609, %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411 ], [ %i.qm, %bb.ci ], [ %i.rb, %bb.cm ], [ %i.ra, %bb.cl ], [ %lpad.loopexit.split-lp642, %.loopexit.split-lp640 ], [ %i.wn, %bb.dg ], [ %lpad.loopexit.split-lp626, %.loopexit.split-lp624 ], [ %lpad.loopexit646, %.loopexit644 ], [ %lpad.loopexit631, %.loopexit629 ], [ %lpad.loopexit636, %.loopexit634 ], [ %lpad.loopexit641, %.loopexit639 ], [ %lpad.loopexit625, %.loopexit623 ] ; 2 uses
  %.not.i.i.i414 = icmp eq ptr %.sroa.0557.0, null
  br i1 %.not.i.i.i414, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit415, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412.thread

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412.thread: ; preds = %bb.as, %.loopexit.split-lp645, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412
  %.pn332.pn837 = phi { ptr, i32 } [ %.pn332.pn, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412 ], [ %lpad.loopexit.split-lp647, %.loopexit.split-lp645 ], [ %i.ka, %bb.as ]
  %i.acn = ptrtoint ptr %.sroa.0557.0 to i64
  %i.aco = sub i64 %.sroa.24.0, %i.acn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0557.0, i64 noundef %i.aco) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit415

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %bb.eu, %bb.et, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit, %bb.b
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acr = load i64, ptr %i.acq, align 8          ; 5 uses
  %.not290 = icmp eq i64 %i.acr, 0
  br i1 %.not290, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.acs = icmp ugt i64 %i.acr, 1023
  br i1 %i.acs, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.act = trunc nuw nsw i64 %i.acr to i32
  store i32 %i.act, ptr %i.a, align 8
  %i.acu = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.acv = load ptr, ptr %i.acp, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.acu, ptr align 1 %i.acv, i64 %i.acr, i1 false)
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acu, i64 %i.acr
  store i8 0, ptr %i.acw, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ex:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.acx = load i32, ptr %1, align 8
  switch i32 %i.acx, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i32 2, label %bb.ey
    i32 1, label %bb.ez
    i32 4, label %bb.fa
    i32 0, label %bb.fb
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.acy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ada = load i32, ptr %i.acz, align 4          ; 2 uses
  %i.adb = add i32 %i.ada, 1
  store i32 %i.adb, ptr %i.acz, align 4
  %i.adc = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.acy, i64 noundef 1024, ptr noundef nonnull @.str.52, i32 noundef %i.ada) #25
  store i32 %i.adc, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ez:                                            ; preds = %bb.ex
  %i.add = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 8          ; 2 uses
  %i.adg = add i32 %i.adf, 1
  store i32 %i.adg, ptr %i.ade, align 8
  %i.adh = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.add, i64 noundef 1024, ptr noundef nonnull @.str.53, i32 noundef %i.adf) #25
  store i32 %i.adh, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.fa:                                            ; preds = %bb.ex
  %i.adi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 8          ; 2 uses
  %i.adl = add i32 %i.adk, 1
  store i32 %i.adl, ptr %i.adj, align 8
  %i.adm = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adi, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.adk) #25
  store i32 %i.adm, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.fb:                                            ; preds = %bb.ex
  %i.adn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.adp = load i32, ptr %i.ado, align 4          ; 2 uses
  %i.adq = add i32 %i.adp, 1
  store i32 %i.adq, ptr %i.ado, align 4
  %i.adr = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adn, i64 noundef 1024, ptr noundef nonnull @.str.54, i32 noundef %i.adp) #25
  store i32 %i.adr, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ew, %bb.ev, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.adu = load float, ptr %i.adt, align 8
  %i.adv = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.adx = load float, ptr %i.adw, align 4
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aea = load float, ptr %i.adz, align 8
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  %i.aec = load <2 x float>, ptr %i.ads, align 8
  store <2 x float> %i.aec, ptr %i.aeb, align 4
  %.sroa.5.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %i.a, i64 1036
  store float %i.adu, ptr %.sroa.5.0..sroa_idx416, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1040 ; 2 uses
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1044
  %i.aed = load <2 x float>, ptr %i.adv, align 4
  store <2 x float> %i.aed, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1052
  store float %i.adx, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1056 ; 2 uses
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1060
  %i.aee = load <2 x float>, ptr %i.ady, align 8
  store <2 x float> %i.aee, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1068
  store float %i.aea, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1072 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 8
  %i.aef = load i32, ptr %1, align 8
  %i.aeg = icmp eq i32 %i.aef, 2
  br i1 %i.aeg, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aei = load i32, ptr %i.aeh, align 8
  %.not291 = icmp eq i32 %i.aei, 0
  br i1 %.not291, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aej = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.aek = load float, ptr %i.aej, align 4
  store float %i.aek, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aem = load float, ptr %i.ael, align 8
  store float %i.aem, ptr %.sroa.10.0..sroa_idx, align 8
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.aeo = load float, ptr %i.aen, align 4
  store float %i.aeo, ptr %.sroa.14.0..sroa_idx, align 8
end_hunk_0
