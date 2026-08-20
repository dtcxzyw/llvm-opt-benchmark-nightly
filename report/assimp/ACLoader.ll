inline.NumInlined: 1445
inline.NumDeleted: 684
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Assimp12AC3DImporter20ConvertObjectSectionERNS0_6ObjectERSt6vectorIP6aiMeshSaIS5_EERS3_IP10aiMaterialSaISA_EERKS3_INS0_8MaterialESaISE_EEP6aiNode:bb.a
  %i.ql = phi i32 [ 0, %bb.ch ], [ %i.ru, %bb.cp ]
  %.1588.lcssa = phi ptr [ %.0587726, %bb.ch ], [ %i.rt, %bb.cp ] ; 4 uses
  %.1578.lcssa = phi i32 [ %.0577727, %bb.ch ], [ %i.qp, %bb.cp ] ; 4 uses
  %.2.lcssa = phi ptr [ %.1728, %bb.ch ], [ %.3, %bb.cp ] ; 4 uses
  br i1 %.not296, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %bb.cq

bb.ci:                                            ; preds = %bb.ct, %bb.cg
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

.lr.ph707:                                        ; preds = %bb.ch, %bb.cp
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %bb.cp ], [ 0, %bb.ch ] ; 3 uses
  %.2704 = phi ptr [ %.3, %bb.cp ], [ %.1728, %bb.ch ] ; 4 uses
  %.1578703 = phi i32 [ %i.qp, %bb.cp ], [ %.0577727, %bb.ch ] ; 2 uses
  %.1588702 = phi ptr [ %i.rt, %bb.cp ], [ %.0587726, %bb.ch ] ; 4 uses
  %i.qn = load ptr, ptr %i.px, align 8
  %i.qo = getelementptr inbounds nuw [12 x i8], ptr %i.qn, i64 %indvars.iv784 ; 3 uses
  %i.qp = add i32 %.1578703, 1                    ; 2 uses
  %i.qq = load ptr, ptr %i.qj, align 8
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %indvars.iv784
  store i32 %.1578703, ptr %i.qr, align 4
  %i.qs = load ptr, ptr %i.kn, align 8
  %i.qt = ptrtoint ptr %.1588702 to i64
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = sub i64 %i.qt, %i.qu
  %i.qw = sdiv exact i64 %i.qv, 12
  %i.qx = trunc i64 %i.qw to i32
  %i.qy = load i32, ptr %i.kl, align 4
  %.not311 = icmp ugt i32 %i.qy, %i.qx
  br i1 %.not311, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph707
  %i.qz = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qz, ptr noundef nonnull @.str.48)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  invoke void @__cxa_throw(ptr nonnull %i.qz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.fh unwind label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.ra = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.qz) #25
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.cm:                                            ; preds = %bb.ck
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.cn:                                            ; preds = %.lr.ph707
  %i.rc = load i32, ptr %i.qo, align 4
  %i.rd = zext i32 %i.rc to i64
  %i.re = load ptr, ptr %i.c, align 8
  %i.rf = getelementptr inbounds nuw [12 x i8], ptr %i.re, i64 %i.rd ; 2 uses
  %i.rg = load <2 x float>, ptr %i.rf, align 4
  %i.rh = load <2 x float>, ptr %i.jw, align 4
  %i.ri = fadd <2 x float> %i.rg, %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rk = load float, ptr %i.rj, align 4
  %i.rl = load float, ptr %i.jx, align 4
  %i.rm = fadd float %i.rk, %i.rl
  store <2 x float> %i.ri, ptr %.1588702, align 4
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1588702, i64 8
  store float %i.rm, ptr %.sroa.576.0..sroa_idx, align 4
  %.not312 = icmp eq ptr %.2704, null
  br i1 %.not312, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %i.ro = load float, ptr %i.rn, align 4
  store float %i.ro, ptr %.2704, align 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.rq = load float, ptr %i.rp, align 4
  %i.rr = getelementptr inbounds nuw i8, ptr %.2704, i64 4
  store float %i.rq, ptr %i.rr, align 4
  %i.rs = getelementptr inbounds nuw i8, ptr %.2704, i64 12
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.3 = phi ptr [ null, %bb.cn ], [ %i.rs, %bb.co ] ; 2 uses
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 1 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.1588702, i64 12 ; 2 uses
  %i.ru = load i32, ptr %.0598725, align 8        ; 2 uses
  %i.rv = zext i32 %i.ru to i64
  %i.rw = icmp samesign ult i64 %indvars.iv.next785, %i.rv
  br i1 %i.rw, label %.lr.ph707, label %._crit_edge708, !llvm.loop !56

bb.cq:                                            ; preds = %._crit_edge708
  %i.rx = load ptr, ptr %i.kn, align 8
  %i.ry = load ptr, ptr %i.pf, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %.0598725, i64 32 ; 3 uses
  %i.sa = getelementptr i8, ptr %.0598725, i64 24 ; 7 uses
  %i.sb = load ptr, ptr %i.sa, align 8            ; 2 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @_ZdaPv(ptr noundef nonnull %i.sb) #29
  %.pre796 = load i32, ptr %.0598725, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.sd = phi i32 [ %.pre796, %bb.cr ], [ %i.ql, %bb.cq ] ; 4 uses
  store i32 %i.sd, ptr %i.pw, align 8
  %.not.i.i356 = icmp eq i32 %i.sd, 0
  br i1 %.not.i.i356, label %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.se = zext i32 %i.sd to i64
  %i.sf = shl nuw nsw i64 %i.se, 2                ; 3 uses
  %i.sg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sf) #27
          to label %_ZN6aiFaceaSERKS_.exit.i unwind label %bb.ci ; 2 uses

_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i: ; preds = %bb.cs
  store ptr null, ptr %i.sa, align 8
  br label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit

_ZN6aiFaceaSERKS_.exit.i:                         ; preds = %bb.ct
  store ptr %i.sg, ptr %i.sa, align 8
  %i.sh = load ptr, ptr %i.qj, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sg, ptr align 4 %i.sh, i64 %i.sf, i1 false)
  %.not616 = icmp eq i32 %i.sd, 1
  br i1 %.not616, label %.lr.ph.i.preheader, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZN6aiFaceaSERKS_.exit.i
  %.val20.i = load ptr, ptr %i.sa, align 8        ; 2 uses
  %i.si = getelementptr i8, ptr %.val20.i, i64 %i.sf
  %.012.i.i.i.i = getelementptr i8, ptr %i.si, i64 -4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.014.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.0913.i.i.i.i = phi ptr [ %i.sl, %.lr.ph.i.i.i.i ], [ %.val20.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.sj = load i32, ptr %.0913.i.i.i.i, align 4
  %i.sk = load i32, ptr %.014.i.i.i.i, align 4
  store i32 %i.sk, ptr %.0913.i.i.i.i, align 4
  store i32 %i.sj, ptr %.014.i.i.i.i, align 4
  %i.sl = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i, i64 4 ; 2 uses
  %.0.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i.i, i64 -4 ; 2 uses
  %i.sm = icmp ult ptr %i.sl, %.0.i.i.i.i
  br i1 %i.sm, label %.lr.ph.i.i.i.i, label %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i, !llvm.loop !57

_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = load i32, ptr %i.pw, align 8
  %i.sn = icmp eq i32 %.pre.i, 0
  br i1 %i.sn, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i, %_ZN6aiFaceaSERKS_.exit.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.cv
  %.7594 = phi ptr [ %i.st, %bb.cv ], [ %.1588.lcssa, %.lr.ph.i.preheader ] ; 2 uses
  %.6583 = phi i32 [ %i.ta, %bb.cv ], [ %.1578.lcssa, %.lr.ph.i.preheader ] ; 2 uses
  %.14 = phi ptr [ %.15, %bb.cv ], [ %.2.lcssa, %.lr.ph.i.preheader ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.cv ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.so = load ptr, ptr %i.sa, align 8
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %indvars.iv.i
  %i.sq = load i32, ptr %i.sp, align 4
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [12 x i8], ptr %i.rx, i64 %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %.7594, i64 12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.7594, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ss, i64 12, i1 false)
  %.not.i357 = icmp eq ptr %.14, null
  br i1 %.not.i357, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i
  %i.su = load ptr, ptr %i.sa, align 8
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.i
  %i.sw = load i32, ptr %i.sv, align 4
  %i.sx = zext i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw [12 x i8], ptr %i.ry, i64 %i.sx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.14, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.sy, i64 12, i1 false)
  %i.sz = getelementptr inbounds nuw i8, ptr %.14, i64 12
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.lr.ph.i
  %.15 = phi ptr [ null, %.lr.ph.i ], [ %i.sz, %bb.cu ] ; 2 uses
  %i.ta = add i32 %.6583, 1                       ; 2 uses
  %i.tb = load ptr, ptr %i.sa, align 8
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv.i
  store i32 %.6583, ptr %i.tc, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.td = load i32, ptr %i.pw, align 8
  %i.te = zext i32 %i.td to i64
  %i.tf = icmp samesign ult i64 %indvars.iv.next.i, %i.te
  br i1 %i.tf, label %.lr.ph.i, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, !llvm.loop !58

.lr.ph698:                                        ; preds = %.preheader, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ 0, %.preheader ] ; 4 uses
  %i.tg = phi ptr [ %i.yn, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %i.pq, %.preheader ] ; 3 uses
  %.4696 = phi ptr [ %.9, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %.1728, %.preheader ] ; 7 uses
  %.2579695 = phi i32 [ %.3580, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %.0577727, %.preheader ] ; 4 uses
  %.2589694 = phi ptr [ %.4591, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %.0587726, %.preheader ] ; 9 uses
  %.1599693 = phi ptr [ %.2600, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %.0598725, %.preheader ] ; 6 uses
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.tg, i64 %indvars.iv ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ti = getelementptr inbounds nuw [12 x i8], ptr %i.tg, i64 %indvars.iv.next ; 5 uses
  %6 = getelementptr inbounds nuw [12 x i8], ptr %i.tg, i64 %indvars.iv ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.tj = getelementptr inbounds nuw i8, ptr %.1599693, i64 16 ; 4 uses
  store i32 3, ptr %.1599693, align 8
  %i.tk = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #27
          to label %bb.cw unwind label %.loopexit623 ; 2 uses

bb.cw:                                            ; preds = %.lr.ph698
  %i.tl = getelementptr inbounds nuw i8, ptr %.1599693, i64 8 ; 4 uses
  store ptr %i.tk, ptr %i.tl, align 8
  %i.tm = add i32 %.2579695, 1
  store i32 %.2579695, ptr %i.tk, align 4
  %i.tn = add i32 %.2579695, 2
  %i.to = load ptr, ptr %i.tl, align 8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  store i32 %i.tm, ptr %i.tp, align 4
  %i.tq = add i32 %.2579695, 3                    ; 4 uses
  %i.tr = load ptr, ptr %i.tl, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store i32 %i.tn, ptr %i.ts, align 4
  %i.tt = and i64 %indvars.iv, 1
  %.not301 = icmp eq i64 %i.tt, 0
  %i.tu = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.tv = load <2 x float>, ptr %i.jw, align 4    ; 2 uses
  %i.tw = load float, ptr %i.jx, align 4          ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.2589694, i64 12 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2589694, i64 8 ; 2 uses
  %.not302 = icmp eq ptr %.4696, null             ; 2 uses
  br i1 %.not301, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.ty = load i32, ptr %i.th, align 4
  %i.tz = zext i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [12 x i8], ptr %i.tu, i64 %i.tz ; 2 uses
  %i.ub = load <2 x float>, ptr %i.ua, align 4
  %i.uc = fadd <2 x float> %i.ub, %i.tv
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.ue = load float, ptr %i.ud, align 4
  %i.uf = fadd float %i.ue, %i.tw
  store <2 x float> %i.uc, ptr %.2589694, align 4
  store float %i.uf, ptr %.sroa.543.0..sroa_idx, align 4
  br i1 %.not302, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ug = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.uh = load float, ptr %i.ug, align 4
  store float %i.uh, ptr %.4696, align 4
  %i.ui = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.uj = load float, ptr %i.ui, align 4
  %i.uk = getelementptr inbounds nuw i8, ptr %.4696, i64 4
  store float %i.uj, ptr %i.uk, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %.4696, i64 12
  br label %bb.cz

.loopexit623:                                     ; preds = %.lr.ph698, %bb.dn
  %lpad.loopexit625 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

.loopexit.split-lp624:                            ; preds = %bb.df
  %lpad.loopexit.split-lp626 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  %.5 = phi ptr [ null, %bb.cx ], [ %i.ul, %bb.cy ] ; 2 uses
  %i.um = load i32, ptr %i.ti, align 4
  %i.un = zext i32 %i.um to i64
  %i.uo = load ptr, ptr %i.c, align 8
  %i.up = getelementptr inbounds nuw [12 x i8], ptr %i.uo, i64 %i.un ; 2 uses
  %i.uq = load <2 x float>, ptr %i.up, align 4
  %i.ur = load <2 x float>, ptr %i.jw, align 4
  %i.us = fadd <2 x float> %i.uq, %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.uu = load float, ptr %i.ut, align 4
  %i.uv = load float, ptr %i.jx, align 4
  %i.uw = fadd float %i.uu, %i.uv
  store <2 x float> %i.us, ptr %i.tx, align 4
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2589694, i64 20
  store float %i.uw, ptr %.sroa.537.0..sroa_idx, align 4
  %.not303 = icmp eq ptr %.5, null
  br i1 %.not303, label %bb.dd, label %.sink.split

bb.da:                                            ; preds = %bb.cw
  %i.ux = load i32, ptr %i.ti, align 4
  %i.uy = zext i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [12 x i8], ptr %i.tu, i64 %i.uy ; 2 uses
  %i.va = load <2 x float>, ptr %i.uz, align 4
  %i.vb = fadd <2 x float> %i.va, %i.tv
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vd = load float, ptr %i.vc, align 4
  %i.ve = fadd float %i.vd, %i.tw
  store <2 x float> %i.vb, ptr %.2589694, align 4
  store float %i.ve, ptr %.sroa.543.0..sroa_idx, align 4
  br i1 %.not302, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.vg = load float, ptr %i.vf, align 4
  store float %i.vg, ptr %.4696, align 4
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.vi = load float, ptr %i.vh, align 4
  %i.vj = getelementptr inbounds nuw i8, ptr %.4696, i64 4
  store float %i.vi, ptr %i.vj, align 4
  %i.vk = getelementptr inbounds nuw i8, ptr %.4696, i64 12
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %.6 = phi ptr [ null, %bb.da ], [ %i.vk, %bb.db ] ; 2 uses
  %i.vl = load i32, ptr %i.th, align 4
  %i.vm = zext i32 %i.vl to i64
  %i.vn = load ptr, ptr %i.c, align 8
  %i.vo = getelementptr inbounds nuw [12 x i8], ptr %i.vn, i64 %i.vm ; 2 uses
  %i.vp = load <2 x float>, ptr %i.vo, align 4
  %i.vq = load <2 x float>, ptr %i.jw, align 4
  %i.vr = fadd <2 x float> %i.vp, %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vt = load float, ptr %i.vs, align 4
  %i.vu = load float, ptr %i.jx, align 4
  %i.vv = fadd float %i.vt, %i.vu
  store <2 x float> %i.vr, ptr %i.tx, align 4
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2589694, i64 20
  store float %i.vv, ptr %.sroa.525.0..sroa_idx, align 4
  %.not305 = icmp eq ptr %.6, null
  br i1 %.not305, label %bb.dd, label %.sink.split

.sink.split:                                      ; preds = %bb.dc, %bb.cz
  %.sink876 = phi ptr [ %i.ti, %bb.cz ], [ %i.th, %bb.dc ] ; 2 uses
  %.6.sink874 = phi ptr [ %.5, %bb.cz ], [ %.6, %bb.dc ] ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.sink876, i64 4
  %i.vx = load float, ptr %i.vw, align 4
  store float %i.vx, ptr %.6.sink874, align 4
  %i.vy = getelementptr inbounds nuw i8, ptr %.sink876, i64 8
  %i.vz = load float, ptr %i.vy, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %.6.sink874, i64 4
  store float %i.vz, ptr %i.wa, align 4
  %i.wb = getelementptr inbounds nuw i8, ptr %.6.sink874, i64 12
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split, %bb.dc, %bb.cz
  %.7 = phi ptr [ null, %bb.cz ], [ null, %bb.dc ], [ %i.wb, %.sink.split ] ; 4 uses
  %.3590 = getelementptr inbounds nuw i8, ptr %.2589694, i64 24 ; 2 uses
  %i.wc = load ptr, ptr %i.kn, align 8
  %i.wd = ptrtoint ptr %.3590 to i64
  %i.we = ptrtoint ptr %i.wc to i64
  %i.wf = sub i64 %i.wd, %i.we
  %i.wg = sdiv exact i64 %i.wf, 12
  %i.wh = trunc i64 %i.wg to i32
  %i.wi = load i32, ptr %i.kl, align 4
  %.not306 = icmp ugt i32 %i.wi, %i.wh
  br i1 %.not306, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wj = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.wj, ptr noundef nonnull @.str.48)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  invoke void @__cxa_throw(ptr nonnull %i.wj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.fh unwind label %.loopexit.split-lp624

bb.dg:                                            ; preds = %bb.de
  %i.wk = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.wj) #25
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.dh:                                            ; preds = %bb.dd
  %i.wl = load i32, ptr %7, align 4
  %i.wm = zext i32 %i.wl to i64
  %i.wn = load ptr, ptr %i.c, align 8
  %i.wo = getelementptr inbounds nuw [12 x i8], ptr %i.wn, i64 %i.wm ; 2 uses
  %i.wp = load <2 x float>, ptr %i.wo, align 4
  %i.wq = load <2 x float>, ptr %i.jw, align 4
  %i.wr = fadd <2 x float> %i.wp, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wt = load float, ptr %i.ws, align 4
  %i.wu = load float, ptr %i.jx, align 4
  %i.wv = fadd float %i.wt, %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %.2589694, i64 36 ; 4 uses
  store <2 x float> %i.wr, ptr %.3590, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2589694, i64 32
  store float %i.wv, ptr %.sroa.5.0..sroa_idx, align 4
  %.not307 = icmp eq ptr %.7, null
  br i1 %.not307, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.wy = load float, ptr %i.wx, align 4
  store float %i.wy, ptr %.7, align 4
  %i.wz = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.xa = load float, ptr %i.wz, align 4
  %i.xb = getelementptr inbounds nuw i8, ptr %.7, i64 4
  store float %i.xa, ptr %i.xb, align 4
  %i.xc = getelementptr inbounds nuw i8, ptr %.7, i64 12
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.8 = phi ptr [ null, %bb.dh ], [ %i.xc, %bb.di ] ; 4 uses
  br i1 %.not296, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.xd = load ptr, ptr %i.kn, align 8
  %i.xe = load ptr, ptr %i.pf, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %.1599693, i64 32 ; 3 uses
  %i.xg = getelementptr i8, ptr %.1599693, i64 24 ; 7 uses
  %i.xh = load ptr, ptr %i.xg, align 8            ; 2 uses
  %i.xi = icmp eq ptr %i.xh, null
  br i1 %i.xi, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @_ZdaPv(ptr noundef nonnull %i.xh) #29
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.xj = load i32, ptr %.1599693, align 8        ; 4 uses
  store i32 %i.xj, ptr %i.tj, align 8
  %.not.i.i379 = icmp eq i32 %i.xj, 0
  br i1 %.not.i.i379, label %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xk = zext i32 %i.xj to i64
  %i.xl = shl nuw nsw i64 %i.xk, 2                ; 3 uses
  %i.xm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xl) #27
          to label %_ZN6aiFaceaSERKS_.exit.i380 unwind label %.loopexit623 ; 2 uses

_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398: ; preds = %bb.dm
  store ptr null, ptr %i.xg, align 8
  br label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402

_ZN6aiFaceaSERKS_.exit.i380:                      ; preds = %bb.dn
  store ptr %i.xm, ptr %i.xg, align 8
  %i.xn = load ptr, ptr %i.tl, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.xm, ptr align 4 %i.xn, i64 %i.xl, i1 false)
  %.not615 = icmp eq i32 %i.xj, 1
  br i1 %.not615, label %.lr.ph.i384.preheader, label %.lr.ph.i.i.preheader.i.i388

.lr.ph.i.i.preheader.i.i388:                      ; preds = %_ZN6aiFaceaSERKS_.exit.i380
  %.val20.i389 = load ptr, ptr %i.xg, align 8     ; 2 uses
  %i.xo = getelementptr i8, ptr %.val20.i389, i64 %i.xl
  %.012.i.i.i.i391 = getelementptr i8, ptr %i.xo, i64 -4
  br label %.lr.ph.i.i.i.i392

.lr.ph.i.i.i.i392:                                ; preds = %.lr.ph.i.i.i.i392, %.lr.ph.i.i.preheader.i.i388
  %.014.i.i.i.i393 = phi ptr [ %.0.i.i.i.i395, %.lr.ph.i.i.i.i392 ], [ %.012.i.i.i.i391, %.lr.ph.i.i.preheader.i.i388 ] ; 3 uses
  %.0913.i.i.i.i394 = phi ptr [ %i.xr, %.lr.ph.i.i.i.i392 ], [ %.val20.i389, %.lr.ph.i.i.preheader.i.i388 ] ; 3 uses
  %i.xp = load i32, ptr %.0913.i.i.i.i394, align 4
  %i.xq = load i32, ptr %.014.i.i.i.i393, align 4
  store i32 %i.xq, ptr %.0913.i.i.i.i394, align 4
  store i32 %i.xp, ptr %.014.i.i.i.i393, align 4
  %i.xr = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i394, i64 4 ; 2 uses
  %.0.i.i.i.i395 = getelementptr inbounds i8, ptr %.014.i.i.i.i393, i64 -4 ; 2 uses
  %i.xs = icmp ult ptr %i.xr, %.0.i.i.i.i395
  br i1 %i.xs, label %.lr.ph.i.i.i.i392, label %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396, !llvm.loop !57

_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396: ; preds = %.lr.ph.i.i.i.i392
  %.pre.i397 = load i32, ptr %i.tj, align 8
  %i.xt = icmp eq i32 %.pre.i397, 0
  br i1 %i.xt, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402, label %.lr.ph.i384.preheader

.lr.ph.i384.preheader:                            ; preds = %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396, %_ZN6aiFaceaSERKS_.exit.i380
  br label %.lr.ph.i384

.lr.ph.i384:                                      ; preds = %.lr.ph.i384.preheader, %bb.dp
  %.9596 = phi ptr [ %i.xz, %bb.dp ], [ %i.ww, %.lr.ph.i384.preheader ] ; 2 uses
  %.8585 = phi i32 [ %i.yg, %bb.dp ], [ %i.tq, %.lr.ph.i384.preheader ] ; 2 uses
  %.17 = phi ptr [ %.18, %bb.dp ], [ %.8, %.lr.ph.i384.preheader ] ; 3 uses
  %indvars.iv.i385 = phi i64 [ %indvars.iv.next.i387, %bb.dp ], [ 0, %.lr.ph.i384.preheader ] ; 4 uses
  %i.xu = load ptr, ptr %i.xg, align 8
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv.i385
  %i.xw = load i32, ptr %i.xv, align 4
  %i.xx = zext i32 %i.xw to i64
  %i.xy = getelementptr inbounds nuw [12 x i8], ptr %i.xd, i64 %i.xx
  %i.xz = getelementptr inbounds nuw i8, ptr %.9596, i64 12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.9596, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.xy, i64 12, i1 false)
  %.not.i386 = icmp eq ptr %.17, null
  br i1 %.not.i386, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i384
  %i.ya = load ptr, ptr %i.xg, align 8
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv.i385
  %i.yc = load i32, ptr %i.yb, align 4
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [12 x i8], ptr %i.xe, i64 %i.yd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.17, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ye, i64 12, i1 false)
  %i.yf = getelementptr inbounds nuw i8, ptr %.17, i64 12
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph.i384
  %.18 = phi ptr [ null, %.lr.ph.i384 ], [ %i.yf, %bb.do ] ; 2 uses
  %i.yg = add i32 %.8585, 1                       ; 2 uses
  %i.yh = load ptr, ptr %i.xg, align 8
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %indvars.iv.i385
  store i32 %.8585, ptr %i.yi, align 4
  %indvars.iv.next.i387 = add nuw nsw i64 %indvars.iv.i385, 1 ; 2 uses
  %i.yj = load i32, ptr %i.tj, align 8
  %i.yk = zext i32 %i.yj to i64
  %i.yl = icmp samesign ult i64 %indvars.iv.next.i387, %i.yk
  br i1 %i.yl, label %.lr.ph.i384, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402, !llvm.loop !58

_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402: ; preds = %bb.dp, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398, %bb.dj
  %.2600 = phi ptr [ %i.tj, %bb.dj ], [ %i.xf, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %i.xf, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %i.xf, %bb.dp ] ; 2 uses
  %.4591 = phi ptr [ %i.ww, %bb.dj ], [ %i.ww, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %i.ww, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %i.xz, %bb.dp ] ; 2 uses
  %.3580 = phi i32 [ %i.tq, %bb.dj ], [ %i.tq, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %i.tq, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %i.yg, %bb.dp ] ; 2 uses
  %.9 = phi ptr [ %.8, %bb.dj ], [ %.8, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %.8, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %.18, %bb.dp ] ; 2 uses
  %i.ym = load ptr, ptr %i.po, align 8
  %i.yn = load ptr, ptr %i.pn, align 8            ; 2 uses
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = ptrtoint ptr %i.yn to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %i.yr = sdiv exact i64 %i.yq, 12
  %i.ys = add nsw i64 %i.yr, 4294967294
  %i.yt = and i64 %i.ys, 4294967295
  %i.yu = icmp samesign ult i64 %indvars.iv.next, %i.yt
  br i1 %i.yu, label %.lr.ph698, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, !llvm.loop !59

bb.dq:                                            ; preds = %bb.ce
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.0526.1729, i64 8 ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 8            ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.0526.1729, i64 16 ; 2 uses
  %i.yy = load ptr, ptr %i.yx, align 8
  %i.yz = ptrtoint ptr %i.yy to i64
  %i.za = ptrtoint ptr %i.yw to i64
  %i.zb = sub i64 %i.yz, %i.za
  %i.zc = sdiv exact i64 %i.zb, 12
  %i.zd = trunc i64 %i.zc to i32
  %i.ze = icmp eq i8 %i.pm, 2
  %i.zf = sext i1 %i.ze to i32
  %spec.select = add i32 %i.zd, %i.zf             ; 3 uses
  %.not750 = icmp eq i32 %spec.select, 0
  br i1 %.not750, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %.lr.ph719

.lr.ph719:                                        ; preds = %bb.dq
  %i.zg = icmp eq i8 %i.pm, 1
  %i.zh = add i32 %spec.select, -1
  br label %bb.dr

bb.dr:                                            ; preds = %.lr.ph719, %bb.ed
  %.0258717 = phi i32 [ 0, %.lr.ph719 ], [ %i.aas, %bb.ed ] ; 2 uses
  %.sroa.0512.1716 = phi ptr [ %i.yw, %.lr.ph719 ], [ %.sroa.0512.2, %bb.ed ] ; 5 uses
  %.10715 = phi ptr [ %.1728, %.lr.ph719 ], [ %.12, %bb.ed ] ; 4 uses
  %.4581714 = phi i32 [ %.0577727, %.lr.ph719 ], [ %i.zm, %bb.ed ] ; 3 uses
  %.5592713 = phi ptr [ %.0587726, %.lr.ph719 ], [ %i.aal, %bb.ed ] ; 3 uses
  %.3601712 = phi ptr [ %.0598725, %.lr.ph719 ], [ %i.zi, %bb.ed ] ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.3601712, i64 16 ; 2 uses
  store i32 2, ptr %.3601712, align 8
  %i.zj = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #27
          to label %bb.ds unwind label %.loopexit620 ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %i.zk = getelementptr inbounds nuw i8, ptr %.3601712, i64 8 ; 2 uses
  store ptr %i.zj, ptr %i.zk, align 8
  %i.zl = add i32 %.4581714, 1
  store i32 %.4581714, ptr %i.zj, align 4
  %i.zm = add i32 %.4581714, 2                    ; 2 uses
  %i.zn = load ptr, ptr %i.zk, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  store i32 %i.zl, ptr %i.zo, align 4
  %i.zp = load ptr, ptr %i.yx, align 8
  %i.zq = icmp eq ptr %.sroa.0512.1716, %i.zp
  br i1 %i.zq, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.zr = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zr, ptr noundef nonnull @.str.49)
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %bb.dt
  invoke void @__cxa_throw(ptr nonnull %i.zr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.fh unwind label %.loopexit.split-lp

.loopexit620:                                     ; preds = %bb.dr
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

.loopexit.split-lp:                               ; preds = %bb.du
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.dv:                                            ; preds = %bb.dt
  %i.zs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.zr) #25
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.dw:                                            ; preds = %bb.ds
  %i.zt = load i32, ptr %.sroa.0512.1716, align 4
  %i.zu = zext i32 %i.zt to i64
  %i.zv = load ptr, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@_Z18ai_str_toprintableB5cxx11PKcic:bb.a
  br label %.critedge24

.critedge:                                        ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.an = load i64, ptr %i.f, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.critedge24

.critedge24:                                      ; preds = %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.h
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load i8, ptr %0, align 1                 ; 3 uses
  %i.c = add i8 %i.b, -58
  %or.cond = icmp ult i8 %i.c, -10
  br i1 %or.cond, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %narrow.us134 = add nsw i8 %i.b, -48
  %i.d = zext nneg i8 %narrow.us134 to i64
  br label %bb.b

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.e = mul i64 %i.i, 10
  %narrow.us = add nsw i8 %i.m, -48
  %i.f = zext nneg i8 %narrow.us to i64
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.i
  br i1 %i.h, label %.split.us, label %bb.b, !llvm.loop !132

bb.b:                                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.i = phi i64 [ %i.d, %.lr.ph.split.us.preheader ], [ %i.g, %.lr.ph.split.us ] ; 3 uses
  %i.j = phi ptr [ %0, %.lr.ph.split.us.preheader ], [ %i.k, %.lr.ph.split.us ]
  %.02663.us135 = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.l, %.lr.ph.split.us ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  %i.l = add i32 %.02663.us135, 1                 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1               ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond42.us = icmp ult i8 %i.n, -10
  br i1 %or.cond42.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !132

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i32, ptr %2, align 4
  %narrow132 = add nsw i8 %i.b, -48
  %i.p = zext nneg i8 %narrow132 to i64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.s = trunc i64 %i.r to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %0, i32 noundef %i.s, i8 noundef signext 63)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(13) @.str.93, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.94)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.p unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.021 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.021, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.021, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn47 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #25
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46 = phi { ptr, i32 } [ %.pn47, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn46

bb.i:                                             ; preds = %bb.l
  %i.aa = mul i64 %i.af, 10
  %narrow = add nsw i8 %i.aq, -48
  %i.ab = zext nneg i8 %narrow to i64
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.af
  br i1 %i.ad, label %.split.us, label %bb.j, !llvm.loop !132

.split.us:                                        ; preds = %bb.i, %.lr.ph.split.us
  %.lcssa108.sink = phi ptr [ %i.k, %.lr.ph.split.us ], [ %i.ah, %bb.i ]
  store ptr %.lcssa108.sink, ptr %i.a, align 8
  %i.ae = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 1 dereferenceable(24) @.str.95, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @.str.96)
  br label %.thread

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %i.af = phi i64 [ %i.p, %.lr.ph.split ], [ %i.ac, %bb.i ] ; 5 uses
  %i.ag = phi ptr [ %0, %.lr.ph.split ], [ %i.ah, %bb.i ]
  %.02663133 = phi i32 [ 0, %.lr.ph.split ], [ %i.ai, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 8 uses
  %i.ai = add nuw i32 %.02663133, 1               ; 3 uses
  %i.aj = icmp eq i32 %i.o, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ah, ptr %i.a, align 8
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ak = load i8, ptr %i.ah, align 1
  %i.al = add i8 %i.ak, -48
  %or.cond4370 = icmp ult i8 %i.al, 10
  br i1 %or.cond4370, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %i.am = phi ptr [ %i.an, %.lr.ph71 ], [ %i.ah, %.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i8 %i.ao, -48
  %or.cond43 = icmp ult i8 %i.ap, 10
  br i1 %or.cond43, label %.lr.ph71, label %.critedge, !llvm.loop !133

.critedge:                                        ; preds = %.lr.ph71, %.preheader
  %.lcssa = phi ptr [ %i.ah, %.preheader ], [ %i.an, %.lr.ph71 ]
  store ptr %.lcssa, ptr %1, align 8
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.ar = add i8 %i.aq, -58
  %or.cond42 = icmp ult i8 %i.ar, -10
  br i1 %or.cond42, label %._crit_edge, label %bb.i, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.l, %bb.b
  %.lcssa110.sink = phi ptr [ %i.k, %bb.b ], [ %i.ah, %bb.l ] ; 2 uses
  %.026.lcssa = phi i32 [ %i.l, %bb.b ], [ %i.ai, %bb.l ]
  %.024.lcssa = phi i64 [ %i.i, %bb.b ], [ %i.af, %bb.l ] ; 2 uses
  store ptr %.lcssa110.sink, ptr %i.a, align 8
  %.not39 = icmp eq ptr %1, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  store ptr %.lcssa110.sink, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.not40 = icmp eq ptr %2, null
  br i1 %.not40, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.026.lcssa, ptr %2, align 4
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.k, %.split.us, %bb.n, %bb.o
  %.2 = phi i64 [ %.024.lcssa, %bb.n ], [ %.024.lcssa, %bb.o ], [ %i.af, %.critedge ], [ %i.af, %bb.k ], [ 0, %.split.us ]
  ret i64 %.2

bb.p:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %2) #25
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #25
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #25
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(82) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #25
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(82) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(82) %2) #25
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(82) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #25
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #25
  ret void

end_hunk_1
