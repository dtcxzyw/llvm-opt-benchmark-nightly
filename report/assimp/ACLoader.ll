inline.NumInlined: 1445
inline.NumDeleted: 684
begin_hunk_0_@_ZN6Assimp12AC3DImporter20ConvertObjectSectionERNS0_6ObjectERSt6vectorIP6aiMeshSaIS5_EERS3_IP10aiMaterialSaISA_EERKS3_INS0_8MaterialESaISE_EEP6aiNode:bb.a
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yk, i64 %indvars.iv.i389
  store i32 %.8594, ptr %i.yl, align 4
  %indvars.iv.next.i391 = add nuw nsw i64 %indvars.iv.i389, 1 ; 2 uses
  %i.ym = load i32, ptr %i.tm, align 8
  %i.yn = zext i32 %i.ym to i64
  %i.yo = icmp samesign ult i64 %indvars.iv.next.i391, %i.yn
  br i1 %i.yo, label %.lr.ph.i388, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406, !llvm.loop !58

_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406: ; preds = %bb.do, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i400, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i402, %bb.di
  %.9605 = phi ptr [ %.8604, %bb.di ], [ %.8604, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i400 ], [ %.8604, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i402 ], [ %.18, %bb.do ] ; 2 uses
  %.3589 = phi i32 [ %i.tt, %bb.di ], [ %i.tt, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i400 ], [ %i.tt, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i402 ], [ %i.yj, %bb.do ] ; 2 uses
  %.4585 = phi ptr [ %i.wz, %bb.di ], [ %i.wz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i400 ], [ %i.wz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i402 ], [ %i.yc, %bb.do ] ; 2 uses
  %.2 = phi ptr [ %i.tm, %bb.di ], [ %i.xi, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i400 ], [ %i.xi, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i402 ], [ %i.xi, %bb.do ] ; 2 uses
  %i.yp = load ptr, ptr %i.po, align 8
  %i.yq = load ptr, ptr %i.pn, align 8            ; 2 uses
  %i.yr = ptrtoint ptr %i.yp to i64
  %i.ys = ptrtoint ptr %i.yq to i64
  %i.yt = sub i64 %i.yr, %i.ys
  %i.yu = sdiv exact i64 %i.yt, 12
  %i.yv = add nsw i64 %i.yu, 4294967294
  %i.yw = and i64 %i.yv, 4294967295
  %i.yx = icmp samesign ult i64 %indvars.iv.next, %i.yw
  br i1 %i.yx, label %.lr.ph701, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, !llvm.loop !59

bb.dp:                                            ; preds = %bb.cd
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0530.1732, i64 8 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8            ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.0530.1732, i64 16 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = ptrtoint ptr %i.yz to i64
  %i.ze = sub i64 %i.zc, %i.zd
  %i.zf = sdiv exact i64 %i.ze, 12
  %i.zg = trunc i64 %i.zf to i32
  %i.zh = icmp eq i8 %i.pm, 2
  %i.zi = sext i1 %i.zh to i32
  %spec.select = add i32 %i.zg, %i.zi             ; 3 uses
  %.not753 = icmp eq i32 %spec.select, 0
  br i1 %.not753, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %.lr.ph722

.lr.ph722:                                        ; preds = %bb.dp
  %i.zj = icmp eq i8 %i.pm, 1
  %i.zk = add i32 %spec.select, -1
  br label %bb.dq

bb.dq:                                            ; preds = %.lr.ph722, %bb.ec
  %.0261720 = phi i32 [ 0, %.lr.ph722 ], [ %i.aav, %bb.ec ] ; 2 uses
  %.sroa.0516.1719 = phi ptr [ %i.yz, %.lr.ph722 ], [ %.sroa.0516.2, %bb.ec ] ; 5 uses
  %.3718 = phi ptr [ %.0580731, %.lr.ph722 ], [ %i.zl, %bb.ec ] ; 3 uses
  %.5717 = phi ptr [ %.0581730, %.lr.ph722 ], [ %i.aao, %bb.ec ] ; 3 uses
  %.4590716 = phi i32 [ %.0586729, %.lr.ph722 ], [ %i.zp, %bb.ec ] ; 3 uses
  %.10606715 = phi ptr [ %.1597728, %.lr.ph722 ], [ %.12, %bb.ec ] ; 4 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.3718, i64 16 ; 2 uses
  store i32 2, ptr %.3718, align 8
  %i.zm = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #27
          to label %bb.dr unwind label %.loopexit623 ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %i.zn = getelementptr inbounds nuw i8, ptr %.3718, i64 8 ; 2 uses
  store ptr %i.zm, ptr %i.zn, align 8
  %i.zo = add i32 %.4590716, 1
  store i32 %.4590716, ptr %i.zm, align 4
  %i.zp = add i32 %.4590716, 2                    ; 2 uses
  %i.zq = load ptr, ptr %i.zn, align 8
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  store i32 %i.zo, ptr %i.zr, align 4
  %i.zs = load ptr, ptr %i.za, align 8
  %i.zt = icmp eq ptr %.sroa.0516.1719, %i.zs
  br i1 %i.zt, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %i.zu = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zu, ptr noundef nonnull @.str.49)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %bb.ds
  invoke void @__cxa_throw(ptr nonnull %i.zu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.ff unwind label %.loopexit.split-lp

.loopexit623:                                     ; preds = %bb.dq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416

.loopexit.split-lp:                               ; preds = %bb.dt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416

bb.du:                                            ; preds = %bb.ds
  %i.zv = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.zu) #25
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416

bb.dv:                                            ; preds = %bb.dr
  %i.zw = load i32, ptr %.sroa.0516.1719, align 4
  %i.zx = zext i32 %i.zw to i64
  %i.zy = load ptr, ptr %i.c, align 8
  %i.zz = getelementptr inbounds nuw [12 x i8], ptr %i.zy, i64 %i.zx
  %i.aaa = getelementptr inbounds nuw i8, ptr %.5717, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.5717, ptr noundef nonnull align 4 dereferenceable(12) %i.zz, i64 12, i1 false)
  %.not297 = icmp eq ptr %.10606715, null
  br i1 %.not297, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.0516.1719, i64 4
  %i.aac = load float, ptr %i.aab, align 4
  store float %i.aac, ptr %.10606715, align 4
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0516.1719, i64 8
  %i.aae = load float, ptr %i.aad, align 4
  %i.aaf = getelementptr inbounds nuw i8, ptr %.10606715, i64 4
  store float %i.aae, ptr %i.aaf, align 4
  %i.aag = getelementptr inbounds nuw i8, ptr %.10606715, i64 12
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.11 = phi ptr [ null, %bb.dv ], [ %i.aag, %bb.dw ] ; 4 uses
  %i.aah = icmp eq i32 %i.zk, %.0261720
  %or.cond339 = and i1 %i.zj, %i.aah
  br i1 %or.cond339, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aai = load ptr, ptr %i.yy, align 8
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.0516.1719, i64 12
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sroa.0516.2 = phi ptr [ %i.aai, %bb.dy ], [ %i.aaj, %bb.dz ] ; 4 uses
  %i.aak = load i32, ptr %.sroa.0516.2, align 4
  %i.aal = zext i32 %i.aak to i64
  %i.aam = load ptr, ptr %i.c, align 8
  %i.aan = getelementptr inbounds nuw [12 x i8], ptr %i.aam, i64 %i.aal
  %i.aao = getelementptr inbounds nuw i8, ptr %.5717, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aaa, ptr noundef nonnull align 4 dereferenceable(12) %i.aan, i64 12, i1 false)
  %.not298 = icmp eq ptr %.11, null
  br i1 %.not298, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.0516.2, i64 4
  %i.aaq = load float, ptr %i.aap, align 4
  store float %i.aaq, ptr %.11, align 4
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.0516.2, i64 8
  %i.aas = load float, ptr %i.aar, align 4
  %i.aat = getelementptr inbounds nuw i8, ptr %.11, i64 4
  store float %i.aas, ptr %i.aat, align 4
  %i.aau = getelementptr inbounds nuw i8, ptr %.11, i64 12
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.12 = phi ptr [ null, %bb.ea ], [ %i.aau, %bb.eb ] ; 2 uses
  %i.aav = add nuw i32 %.0261720, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.aav, %spec.select
  br i1 %exitcond.not, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %bb.dq, !llvm.loop !60

_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit: ; preds = %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406, %bb.cu, %bb.ec, %.preheader, %bb.dp, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i, %._crit_edge711, %bb.ce, %bb.cc
  %.13 = phi ptr [ %.2598.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.1597728, %bb.ce ], [ %.2598.lcssa, %._crit_edge711 ], [ %.1597728, %bb.cc ], [ %.12, %bb.ec ], [ %.2598.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %.15, %bb.cu ], [ %.1597728, %bb.dp ], [ %.1597728, %.preheader ], [ %.9605, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406 ]
  %.5591 = phi i32 [ %.1587.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.0586729, %bb.ce ], [ %.1587.lcssa, %._crit_edge711 ], [ %.0586729, %bb.cc ], [ %i.zp, %bb.ec ], [ %.1587.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %i.ta, %bb.cu ], [ %.0586729, %bb.dp ], [ %.0586729, %.preheader ], [ %.3589, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406 ]
  %.6 = phi ptr [ %.1582.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.0581730, %bb.ce ], [ %.1582.lcssa, %._crit_edge711 ], [ %.0581730, %bb.cc ], [ %i.aao, %bb.ec ], [ %.1582.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %i.st, %bb.cu ], [ %.0581730, %bb.dp ], [ %.0581730, %.preheader ], [ %.4585, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406 ]
  %.4 = phi ptr [ %i.rz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %i.pw, %bb.ce ], [ %i.pw, %._crit_edge711 ], [ %.0580731, %bb.cc ], [ %i.zl, %bb.ec ], [ %i.rz, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i ], [ %i.rz, %bb.cu ], [ %.0580731, %bb.dp ], [ %.0580731, %.preheader ], [ %.2, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit406 ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.0530.1732, i64 32 ; 2 uses
  %.not617 = icmp eq ptr %i.aaw, %i.i
  br i1 %.not617, label %.loopexit631, label %bb.cc, !llvm.loop !61

.loopexit631:                                     ; preds = %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, %bb.cb, %bb.as
  %.1264 = phi ptr [ %.0263738, %bb.as ], [ %i.kj, %bb.cb ], [ %i.kj, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0510.0736, i64 8 ; 2 uses
  %i.aay = add i32 %.0265737, 1
  %.not616 = icmp eq ptr %i.aax, %.0.lcssa.i.i.i.i.i.i
  br i1 %.not616, label %._crit_edge741, label %bb.as, !llvm.loop !62

bb.ed:                                            ; preds = %._crit_edge741
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.aba = load i8, ptr %i.aaz, align 1, !range !63, !noundef !64
  %i.abb = trunc nuw i8 %i.aba to i1
  br i1 %i.abb, label %bb.ee, label %bb.eq

bb.ee:                                            ; preds = %bb.ed
  %i.abc = invoke noundef ptr @_ZN6Assimp10Subdivider6CreateENS0_9AlgorithmE(i32 noundef 1)
          to label %bb.ef unwind label %bb.en     ; 7 uses

bb.ef:                                            ; preds = %bb.ee
  %i.abd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.eg unwind label %bb.eo

bb.eg:                                            ; preds = %bb.ef
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6Assimp6Logger4infoIJRA39_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.abd, ptr noundef nonnull align 1 dereferenceable(39) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %i.abe)
          to label %bb.eh unwind label %bb.eo

bb.eh:                                            ; preds = %bb.eg
  %i.abf = load ptr, ptr %i.jk, align 8
  %i.abg = load ptr, ptr %2, align 8              ; 2 uses
  %i.abh = ptrtoint ptr %i.abf to i64
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = sub i64 %i.abh, %i.abi
  %i.abk = ashr exact i64 %i.abj, 3               ; 2 uses
  %i.abl = sub nsw i64 %i.abk, %i.jq              ; 5 uses
  %i.abm = icmp ugt i64 %i.abl, 1152921504606846975
  br i1 %i.abm, label %bb.ei, label %.noexc409.a

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #28
          to label %.noexc408 unwind label %bb.ep

.noexc408:                                        ; preds = %bb.ei
  unreachable

.noexc409.a:                                      ; preds = %bb.eh
  %.not.i.i.i.i407 = icmp ne i64 %i.abk, %i.jq
  tail call void @llvm.assume(i1 %.not.i.i.i.i407)
  %6 = shl nuw nsw i64 %i.abl, 3                  ; 5 uses
  %7 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #27
          to label %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS1_RKS2_.exit unwind label %bb.ep ; 6 uses

_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS1_RKS2_.exit: ; preds = %.noexc409.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %7, i8 0, i64 %6, i1 false)
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.jp
  %i.abo = load i32, ptr %i.jy, align 4
  %i.abp = load ptr, ptr %i.abc, align 8
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 24
  %i.abr = load ptr, ptr %i.abq, align 8
  invoke void %i.abr(ptr noundef nonnull align 8 dereferenceable(8) %i.abc, ptr noundef nonnull %i.abn, i64 noundef %i.abl, ptr noundef nonnull %7, i32 noundef %i.abo, i1 noundef zeroext true)
          to label %bb.ej unwind label %.thread

bb.ej:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS1_RKS2_.exit
  %i.abs = load ptr, ptr %2, align 8
  %i.abt = getelementptr inbounds i8, ptr %i.abs, i64 %i.jp ; 2 uses
  %8 = icmp samesign ugt i64 %i.abl, 1
  br i1 %8, label %bb.ek, label %bb.el, !prof !65

bb.ek:                                            ; preds = %bb.ej
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.abt, ptr nonnull align 8 %7, i64 %6, i1 false)
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

bb.el:                                            ; preds = %bb.ej
  %i.abu = icmp eq i64 %i.abl, 1
  br i1 %i.abu, label %bb.em, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

bb.em:                                            ; preds = %bb.el
  %i.abv = load ptr, ptr %7, align 8
  store ptr %i.abv, ptr %i.abt, align 8
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.em, %bb.el, %bb.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %6) #29
  %i.abw = load ptr, ptr %i.abc, align 8
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.aby = load ptr, ptr %i.abx, align 8
  tail call void %i.aby(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abc) #25, !inline_history !66
  br label %bb.et

bb.en:                                            ; preds = %bb.ee
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416

bb.eo:                                            ; preds = %bb.eg, %bb.ef
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413

bb.ep:                                            ; preds = %.noexc409.a, %bb.ei
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413

.thread:                                          ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EEC2EmRKS1_RKS2_.exit
  %i.acc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %6) #29
  br label %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413:        ; preds = %bb.ep, %bb.eo
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aca, %bb.eo ], [ %i.acb, %bb.ep ] ; 2 uses
  %.not.i414 = icmp eq ptr %i.abc, null
  br i1 %.not.i414, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416, label %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415

_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415: ; preds = %.thread, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413
  %.pn.pn.pn613 = phi { ptr, i32 } [ %i.acc, %.thread ], [ %.pn.pn.pn, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413 ]
  %i.acd = load ptr, ptr %i.abc, align 8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8
  tail call void %i.acf(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abc) #25, !inline_history !66
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416

bb.eq:                                            ; preds = %bb.ed
  %i.acg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.er unwind label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6Assimp6Logger4infoIJRA74_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.acg, ptr noundef nonnull align 1 dereferenceable(74) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %i.ach)
          to label %bb.et unwind label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416

bb.et:                                            ; preds = %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit, %bb.er, %._crit_edge741
  %.not.i.i.i417 = icmp eq ptr %.sroa.0561.0, null
  br i1 %.not.i.i.i417, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.acj = ptrtoint ptr %.sroa.0561.0 to i64
  %i.ack = sub i64 %.sroa.24.0, %i.acj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0561.0, i64 noundef %i.ack) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416: ; preds = %.loopexit623, %.loopexit.split-lp, %.loopexit626, %.loopexit.split-lp627, %.loopexit642, %.loopexit.split-lp643, %.loopexit637, %.loopexit.split-lp638, %.loopexit632.a, %.loopexit.split-lp633, %.loopexit647, %bb.en, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413, %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415, %bb.bk, %bb.bn, %bb.bj, %bb.bz, %bb.ck, %bb.cl, %bb.ch, %bb.df, %bb.du, %bb.ca, %bb.bu, %bb.br, %bb.es, %bb.x
  %.pn332.pn = phi { ptr, i32 } [ %i.ez, %bb.x ], [ %i.abz, %bb.en ], [ %lpad.loopexit, %.loopexit623 ], [ %i.aci, %bb.es ], [ %i.zv, %bb.du ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.my, %bb.bk ], [ %i.nb, %bb.bn ], [ %i.mx, %bb.bj ], [ %lpad.loopexit.split-lp635, %.loopexit.split-lp633 ], [ %lpad.loopexit.split-lp640, %.loopexit.split-lp638 ], [ %i.om, %bb.br ], [ %i.op, %bb.bu ], [ %i.pc, %bb.bz ], [ %i.pd, %bb.ca ], [ %.pn.pn.pn, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit413 ], [ %.pn.pn.pn613, %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i415 ], [ %i.qm, %bb.ch ], [ %i.rb, %bb.cl ], [ %i.ra, %bb.ck ], [ %lpad.loopexit.split-lp645, %.loopexit.split-lp643 ], [ %i.wn, %bb.df ], [ %lpad.loopexit.split-lp629, %.loopexit.split-lp627 ], [ %lpad.loopexit649, %.loopexit647 ], [ %lpad.loopexit634, %.loopexit632.a ], [ %lpad.loopexit639, %.loopexit637 ], [ %lpad.loopexit644, %.loopexit642 ], [ %lpad.loopexit628, %.loopexit626 ] ; 2 uses
  %.not.i.i.i418 = icmp eq ptr %.sroa.0561.0, null
  br i1 %.not.i.i.i418, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit419, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416.thread

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416.thread: ; preds = %bb.ar, %.loopexit.split-lp648, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416
  %.pn332.pn842 = phi { ptr, i32 } [ %.pn332.pn, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit416 ], [ %lpad.loopexit.split-lp650, %.loopexit.split-lp648 ], [ %i.ka, %bb.ar ]
  %i.acl = ptrtoint ptr %.sroa.0561.0 to i64
  %i.acm = sub i64 %.sroa.24.0, %i.acl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0561.0, i64 noundef %i.acm) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit419

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %bb.eu, %bb.et, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit, %bb.b
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acp = load i64, ptr %i.aco, align 8          ; 5 uses
  %.not290 = icmp eq i64 %i.acp, 0
  br i1 %.not290, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.acq = icmp ugt i64 %i.acp, 1023
  br i1 %i.acq, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.acr = trunc nuw nsw i64 %i.acp to i32
  store i32 %i.acr, ptr %i.a, align 8
  %i.acs = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.act = load ptr, ptr %i.acn, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.acs, ptr align 1 %i.act, i64 %i.acp, i1 false)
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acs, i64 %i.acp
  store i8 0, ptr %i.acu, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ex:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.acv = load i32, ptr %1, align 8
  switch i32 %i.acv, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i32 2, label %bb.ey
    i32 1, label %bb.ez
    i32 4, label %bb.fa
    i32 0, label %bb.fb
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.acw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.acy = load i32, ptr %i.acx, align 4          ; 2 uses
  %i.acz = add i32 %i.acy, 1
  store i32 %i.acz, ptr %i.acx, align 4
  %i.ada = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.acw, i64 noundef 1024, ptr noundef nonnull @.str.52, i32 noundef %i.acy) #25
  store i32 %i.ada, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ez:                                            ; preds = %bb.ex
  %i.adb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.add = load i32, ptr %i.adc, align 8          ; 2 uses
  %i.ade = add i32 %i.add, 1
  store i32 %i.ade, ptr %i.adc, align 8
  %i.adf = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adb, i64 noundef 1024, ptr noundef nonnull @.str.53, i32 noundef %i.add) #25
  store i32 %i.adf, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.fa:                                            ; preds = %bb.ex
  %i.adg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.adi = load i32, ptr %i.adh, align 8          ; 2 uses
  %i.adj = add i32 %i.adi, 1
  store i32 %i.adj, ptr %i.adh, align 8
  %i.adk = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adg, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.adi) #25
  store i32 %i.adk, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.fb:                                            ; preds = %bb.ex
  %i.adl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.adn = load i32, ptr %i.adm, align 4          ; 2 uses
  %i.ado = add i32 %i.adn, 1
  store i32 %i.ado, ptr %i.adm, align 4
  %i.adp = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adl, i64 noundef 1024, ptr noundef nonnull @.str.54, i32 noundef %i.adn) #25
  store i32 %i.adp, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ew, %bb.ev, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.adr = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ads = load float, ptr %i.adr, align 8
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.adu = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.adv = load float, ptr %i.adu, align 4
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ady = load float, ptr %i.adx, align 8
  %i.adz = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  %i.aea = load <2 x float>, ptr %i.adq, align 8
  store <2 x float> %i.aea, ptr %i.adz, align 4
  %.sroa.5.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.a, i64 1036
  store float %i.ads, ptr %.sroa.5.0..sroa_idx420, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1040 ; 2 uses
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1044
  %i.aeb = load <2 x float>, ptr %i.adt, align 4
  store <2 x float> %i.aeb, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1052
  store float %i.adv, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1056 ; 2 uses
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1060
  %i.aec = load <2 x float>, ptr %i.adw, align 8
  store <2 x float> %i.aec, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1068
  store float %i.ady, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1072 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 8
  %i.aed = load i32, ptr %1, align 8
  %i.aee = icmp eq i32 %i.aed, 2
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aeg = load i32, ptr %i.aef, align 8
  %.not291 = icmp eq i32 %i.aeg, 0
  %or.cond341 = select i1 %i.aee, i1 true, i1 %.not291
  br i1 %or.cond341, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.aei = load float, ptr %i.aeh, align 4
  store float %i.aei, ptr %.sroa.6.0..sroa_idx, align 8
  %i.aej = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aek = load float, ptr %i.aej, align 8
  store float %i.aek, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.aem = load float, ptr %i.ael, align 4
  store float %i.aem, ptr %.sroa.14.0..sroa_idx, align 8
  br label %bb.fd

bb.fd:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.fc
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aep = load ptr, ptr %i.aeo, align 8          ; 2 uses
  %i.aeq = load ptr, ptr %i.aen, align 8          ; 2 uses
  %.not292 = icmp eq ptr %i.aep, %i.aeq
  br i1 %.not292, label %.loopexit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aer = ptrtoint ptr %i.aep to i64
  %i.aes = ptrtoint ptr %i.aeq to i64
  %i.aet = sub i64 %i.aer, %i.aes
  %i.aeu = sdiv exact i64 %i.aet, 216             ; 2 uses
  %i.aev = trunc i64 %i.aeu to i32                ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 2 uses
  store i32 %i.aev, ptr %i.aew, align 8
  %i.aex = shl nsw i64 %i.aeu, 3
  %i.aey = and i64 %i.aex, 34359738360
  %i.aez = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aey) #27
  %i.afa = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 2 uses
  store ptr %i.aez, ptr %i.afa, align 8
  %.not755 = icmp eq i32 %i.aev, 0
  br i1 %.not755, label %.loopexit, label %.lr.ph750

.lr.ph750:                                        ; preds = %bb.fe, %.lr.ph750
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %.lr.ph750 ], [ 0, %bb.fe ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #25
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #25
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !89
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !89
  store i8 0, ptr %i.a, align 8, !alias.scope !89
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !89 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !89 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !89 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !89 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #25
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #28
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = shl nuw nsw i64 %7, 5                     ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #27 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.j, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !alias.scope !90, !noalias !93
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !93, !noalias !90 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !93, !noalias !90 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !95
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !alias.scope !90, !noalias !93
  %i.ae = load i64, ptr %i.y, align 8, !alias.scope !93, !noalias !90
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !90, !noalias !93
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !93, !noalias !90
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !alias.scope !90, !noalias !93
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !alias.scope !93, !noalias !90
  store i64 0, ptr %i.ag, align 8, !alias.scope !93, !noalias !90
  store i8 0, ptr %i.y, align 8, !alias.scope !93, !noalias !90
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !96

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i28, align 8, !alias.scope !97, !noalias !100
  %i.am = load ptr, ptr %.0911.i.i.i29, align 8, !alias.scope !100, !noalias !97 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !100, !noalias !97 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !102
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i28, align 8, !alias.scope !97, !noalias !100
  %i.at = load i64, ptr %i.an, align 8, !alias.scope !100, !noalias !97
  store i64 %i.at, ptr %i.al, align 8, !alias.scope !97, !noalias !100
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !100, !noalias !97
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !alias.scope !97, !noalias !100
  store ptr %i.an, ptr %.0911.i.i.i29, align 8, !alias.scope !100, !noalias !97
  store i64 0, ptr %i.av, align 8, !alias.scope !100, !noalias !97
  store i8 0, ptr %i.an, align 8, !alias.scope !100, !noalias !97
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !96

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %11, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.bd, ptr %i.az, align 8
  ret void

bb.i:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #29
  invoke void @__cxa_rethrow() #28
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #30
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #28
  unreachable

_ZNKSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 216                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 42700796466920258)
  %i.l = select i1 %i.j, i64 42700796466920258, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 216
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 10 uses
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.t, align 8
  store i8 0, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store float 1.000000e+00, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.z, i8 0, i64 72, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bs, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12_M_check_lenEmPKc.exit ] ; 15 uses
  %.0911.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12_M_check_lenEmPKc.exit ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.aa = load i32, ptr %.0911.i.i.i, align 8, !alias.scope !106, !noalias !103
  store i32 %i.aa, ptr %.012.i.i.i, align 8, !alias.scope !103, !noalias !106
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !alias.scope !103, !noalias !106
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !106, !noalias !103 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !106, !noalias !103 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !108
  br label %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %i.ab, align 8, !alias.scope !103, !noalias !106
  %i.al = load i64, ptr %i.af, align 8, !alias.scope !106, !noalias !103
  store i64 %i.al, ptr %i.ad, align 8, !alias.scope !103, !noalias !106
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !106, !noalias !103
  br label %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.am = phi i64 [ %i.ai, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.am, ptr %i.ao, align 8, !alias.scope !103, !noalias !106
  store ptr %i.af, ptr %i.ac, align 8, !alias.scope !106, !noalias !103
  store i64 0, ptr %i.an, align 8, !alias.scope !106, !noalias !103
  store i8 0, ptr %i.af, align 8, !alias.scope !106, !noalias !103
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !alias.scope !106, !noalias !103
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !alias.scope !103, !noalias !106
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !106, !noalias !103
  store ptr %i.au, ptr %i.as, align 8, !alias.scope !103, !noalias !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !106, !noalias !103
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !alias.scope !106, !noalias !103
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !alias.scope !103, !noalias !106
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !106, !noalias !103
  store ptr %i.ba, ptr %i.ay, align 8, !alias.scope !103, !noalias !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false), !alias.scope !106, !noalias !103
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i64 64, i1 false), !alias.scope !108
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %i.be, align 8, !alias.scope !106, !noalias !103
  store <2 x ptr> %i.bf, ptr %i.bd, align 8, !alias.scope !103, !noalias !106
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 168
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !106, !noalias !103
  store ptr %i.bi, ptr %i.bg, align 8, !alias.scope !103, !noalias !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false), !alias.scope !106, !noalias !103
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !alias.scope !106, !noalias !103
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !alias.scope !103, !noalias !106
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 192
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 192
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !106, !noalias !103
  store ptr %i.bo, ptr %i.bm, align 8, !alias.scope !103, !noalias !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false), !alias.scope !106, !noalias !103
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 200
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bp, ptr noundef nonnull align 8 dereferenceable(12) %i.bq, i64 12, i1 false), !alias.scope !108
  tail call void @_ZN6Assimp12AC3DImporter6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %.0911.i.i.i) #25
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 216 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bs, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 216 ; 2 uses
  %.not10.i.i.i25 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i25, label %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32
  %.012.i.i.i27 = phi ptr [ %i.dm, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.bt, %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 15 uses
  %.0911.i.i.i28 = phi ptr [ %i.dl, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.bu = load i32, ptr %.0911.i.i.i28, align 8, !alias.scope !112, !noalias !109
  store i32 %i.bu, ptr %.012.i.i.i27, align 8, !alias.scope !109, !noalias !112
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 24 ; 3 uses
  store ptr %i.bx, ptr %i.bv, align 8, !alias.scope !109, !noalias !112
  %i.by = load ptr, ptr %i.bw, align 8, !alias.scope !112, !noalias !109 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 24 ; 5 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29

bb.d:                                             ; preds = %.lr.ph.i.i.i26
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !112, !noalias !109 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.cc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.bz, i64 %i.ce, i1 false), !alias.scope !114
end_hunk_1
