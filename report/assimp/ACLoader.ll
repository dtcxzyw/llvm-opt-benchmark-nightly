inline.NumInlined: 1445
inline.NumDeleted: 684
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Assimp12AC3DImporter20ConvertObjectSectionERNS0_6ObjectERSt6vectorIP6aiMeshSaIS5_EERS3_IP10aiMaterialSaISA_EERKS3_INS0_8MaterialESaISE_EEP6aiNode:bb.a
  store i32 %.1583703, ptr %i.qr, align 4
  %i.qs = load ptr, ptr %i.kn, align 8
  %i.qt = ptrtoint ptr %.1578704 to i64
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
  store <2 x float> %i.ri, ptr %.1578704, align 4
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1578704, i64 8
  store float %i.rm, ptr %.sroa.576.0..sroa_idx, align 4
  %.not312 = icmp eq ptr %.2594702, null
  br i1 %.not312, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %i.ro = load float, ptr %i.rn, align 4
  store float %i.ro, ptr %.2594702, align 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.rq = load float, ptr %i.rp, align 4
  %i.rr = getelementptr inbounds nuw i8, ptr %.2594702, i64 4
  store float %i.rq, ptr %i.rr, align 4
  %i.rs = getelementptr inbounds nuw i8, ptr %.2594702, i64 12
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.3595 = phi ptr [ null, %bb.cn ], [ %i.rs, %bb.co ] ; 2 uses
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 1 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.1578704, i64 12 ; 2 uses
  %i.ru = load i32, ptr %.0576728, align 8        ; 2 uses
  %i.rv = zext i32 %i.ru to i64
  %i.rw = icmp samesign ult i64 %indvars.iv.next785, %i.rv
  br i1 %i.rw, label %.lr.ph707, label %._crit_edge708, !llvm.loop !56

bb.cq:                                            ; preds = %._crit_edge708
  %i.rx = load ptr, ptr %i.kn, align 8
  %i.ry = load ptr, ptr %i.pf, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %.0576728, i64 32 ; 3 uses
  %i.sa = getelementptr i8, ptr %.0576728, i64 24 ; 7 uses
  %i.sb = load ptr, ptr %i.sa, align 8            ; 2 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @_ZdaPv(ptr noundef nonnull %i.sb) #29
  %.pre796 = load i32, ptr %.0576728, align 8
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
  %.14 = phi ptr [ %.15, %bb.cv ], [ %.2594.lcssa, %.lr.ph.i.preheader ] ; 3 uses
  %.6588 = phi i32 [ %i.ta, %bb.cv ], [ %.1583.lcssa, %.lr.ph.i.preheader ] ; 2 uses
  %.7 = phi ptr [ %i.st, %bb.cv ], [ %.1578.lcssa, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.cv ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.so = load ptr, ptr %i.sa, align 8
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %indvars.iv.i
  %i.sq = load i32, ptr %i.sp, align 4
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [12 x i8], ptr %i.rx, i64 %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %.7, i64 12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.7, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ss, i64 12, i1 false)
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
  %i.ta = add i32 %.6588, 1                       ; 2 uses
  %i.tb = load ptr, ptr %i.sa, align 8
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv.i
  store i32 %.6588, ptr %i.tc, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.td = load i32, ptr %i.pw, align 8
  %i.te = zext i32 %i.td to i64
  %i.tf = icmp samesign ult i64 %indvars.iv.next.i, %i.te
  br i1 %i.tf, label %.lr.ph.i, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, !llvm.loop !58

.lr.ph698:                                        ; preds = %.preheader, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ 0, %.preheader ] ; 4 uses
  %i.tg = phi ptr [ %i.yp, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %i.pq, %.preheader ] ; 3 uses
  %.1696 = phi ptr [ %.2, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %.0576728, %.preheader ] ; 6 uses
  %.2579695 = phi ptr [ %.4581, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %.0577727, %.preheader ] ; 9 uses
  %.2584694 = phi i32 [ %.3585, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %.0582726, %.preheader ] ; 4 uses
  %.4596693 = phi ptr [ %.9601, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ], [ %.1593725, %.preheader ] ; 7 uses
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.tg, i64 %indvars.iv ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ti = getelementptr inbounds nuw [12 x i8], ptr %i.tg, i64 %indvars.iv.next ; 5 uses
  %i.tj = add nuw nsw i64 %indvars.iv, 2
  %i.tk = and i64 %i.tj, 4294967295
  %i.tl = getelementptr inbounds nuw [12 x i8], ptr %i.tg, i64 %i.tk ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.1696, i64 16 ; 4 uses
  store i32 3, ptr %.1696, align 8
  %i.tn = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #27
          to label %bb.cw unwind label %.loopexit623 ; 2 uses

bb.cw:                                            ; preds = %.lr.ph698
  %i.to = getelementptr inbounds nuw i8, ptr %.1696, i64 8 ; 4 uses
  store ptr %i.tn, ptr %i.to, align 8
  %i.tp = add i32 %.2584694, 1
  store i32 %.2584694, ptr %i.tn, align 4
  %i.tq = add i32 %.2584694, 2
  %i.tr = load ptr, ptr %i.to, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  store i32 %i.tp, ptr %i.ts, align 4
  %i.tt = add i32 %.2584694, 3                    ; 4 uses
  %i.tu = load ptr, ptr %i.to, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store i32 %i.tq, ptr %i.tv, align 4
  %6 = and i64 %indvars.iv, 1
  %.not301 = icmp eq i64 %6, 0
  %i.tw = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.tx = load <2 x float>, ptr %i.jw, align 4    ; 2 uses
  %i.ty = load float, ptr %i.jx, align 4          ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.2579695, i64 12 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2579695, i64 8 ; 2 uses
  %.not302 = icmp eq ptr %.4596693, null          ; 2 uses
  br i1 %.not301, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.ua = load i32, ptr %i.th, align 4
  %i.ub = zext i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [12 x i8], ptr %i.tw, i64 %i.ub ; 2 uses
  %i.ud = load <2 x float>, ptr %i.uc, align 4
  %i.ue = fadd <2 x float> %i.ud, %i.tx
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ug = load float, ptr %i.uf, align 4
  %i.uh = fadd float %i.ug, %i.ty
  store <2 x float> %i.ue, ptr %.2579695, align 4
  store float %i.uh, ptr %.sroa.543.0..sroa_idx, align 4
  br i1 %.not302, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ui = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.uj = load float, ptr %i.ui, align 4
  store float %i.uj, ptr %.4596693, align 4
  %i.uk = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.ul = load float, ptr %i.uk, align 4
  %i.um = getelementptr inbounds nuw i8, ptr %.4596693, i64 4
  store float %i.ul, ptr %i.um, align 4
  %i.un = getelementptr inbounds nuw i8, ptr %.4596693, i64 12
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
  %.5597 = phi ptr [ null, %bb.cx ], [ %i.un, %bb.cy ] ; 2 uses
  %i.uo = load i32, ptr %i.ti, align 4
  %i.up = zext i32 %i.uo to i64
  %i.uq = load ptr, ptr %i.c, align 8
  %i.ur = getelementptr inbounds nuw [12 x i8], ptr %i.uq, i64 %i.up ; 2 uses
  %i.us = load <2 x float>, ptr %i.ur, align 4
  %i.ut = load <2 x float>, ptr %i.jw, align 4
  %i.uu = fadd <2 x float> %i.us, %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.uw = load float, ptr %i.uv, align 4
  %i.ux = load float, ptr %i.jx, align 4
  %i.uy = fadd float %i.uw, %i.ux
  store <2 x float> %i.uu, ptr %i.tz, align 4
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2579695, i64 20
  store float %i.uy, ptr %.sroa.537.0..sroa_idx, align 4
  %.not303 = icmp eq ptr %.5597, null
  br i1 %.not303, label %bb.dd, label %.sink.split

bb.da:                                            ; preds = %bb.cw
  %i.uz = load i32, ptr %i.ti, align 4
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [12 x i8], ptr %i.tw, i64 %i.va ; 2 uses
  %i.vc = load <2 x float>, ptr %i.vb, align 4
  %i.vd = fadd <2 x float> %i.vc, %i.tx
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vf = load float, ptr %i.ve, align 4
  %i.vg = fadd float %i.vf, %i.ty
  store <2 x float> %i.vd, ptr %.2579695, align 4
  store float %i.vg, ptr %.sroa.543.0..sroa_idx, align 4
  br i1 %.not302, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.vi = load float, ptr %i.vh, align 4
  store float %i.vi, ptr %.4596693, align 4
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.vk = load float, ptr %i.vj, align 4
  %i.vl = getelementptr inbounds nuw i8, ptr %.4596693, i64 4
  store float %i.vk, ptr %i.vl, align 4
  %i.vm = getelementptr inbounds nuw i8, ptr %.4596693, i64 12
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %.6598 = phi ptr [ null, %bb.da ], [ %i.vm, %bb.db ] ; 2 uses
  %i.vn = load i32, ptr %i.th, align 4
  %i.vo = zext i32 %i.vn to i64
  %i.vp = load ptr, ptr %i.c, align 8
  %i.vq = getelementptr inbounds nuw [12 x i8], ptr %i.vp, i64 %i.vo ; 2 uses
  %i.vr = load <2 x float>, ptr %i.vq, align 4
  %i.vs = load <2 x float>, ptr %i.jw, align 4
  %i.vt = fadd <2 x float> %i.vr, %i.vs
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vv = load float, ptr %i.vu, align 4
  %i.vw = load float, ptr %i.jx, align 4
  %i.vx = fadd float %i.vv, %i.vw
  store <2 x float> %i.vt, ptr %i.tz, align 4
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2579695, i64 20
  store float %i.vx, ptr %.sroa.525.0..sroa_idx, align 4
  %.not305 = icmp eq ptr %.6598, null
  br i1 %.not305, label %bb.dd, label %.sink.split

.sink.split:                                      ; preds = %bb.dc, %bb.cz
  %.sink876 = phi ptr [ %i.ti, %bb.cz ], [ %i.th, %bb.dc ] ; 2 uses
  %.6598.sink874 = phi ptr [ %.5597, %bb.cz ], [ %.6598, %bb.dc ] ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.sink876, i64 4
  %i.vz = load float, ptr %i.vy, align 4
  store float %i.vz, ptr %.6598.sink874, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %.sink876, i64 8
  %i.wb = load float, ptr %i.wa, align 4
  %i.wc = getelementptr inbounds nuw i8, ptr %.6598.sink874, i64 4
  store float %i.wb, ptr %i.wc, align 4
  %i.wd = getelementptr inbounds nuw i8, ptr %.6598.sink874, i64 12
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split, %bb.dc, %bb.cz
  %.7599 = phi ptr [ null, %bb.cz ], [ null, %bb.dc ], [ %i.wd, %.sink.split ] ; 4 uses
  %.3580 = getelementptr inbounds nuw i8, ptr %.2579695, i64 24 ; 2 uses
  %i.we = load ptr, ptr %i.kn, align 8
  %i.wf = ptrtoint ptr %.3580 to i64
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = sdiv exact i64 %i.wh, 12
  %i.wj = trunc i64 %i.wi to i32
  %i.wk = load i32, ptr %i.kl, align 4
  %.not306 = icmp ugt i32 %i.wk, %i.wj
  br i1 %.not306, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wl = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.wl, ptr noundef nonnull @.str.48)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  invoke void @__cxa_throw(ptr nonnull %i.wl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.fh unwind label %.loopexit.split-lp624

bb.dg:                                            ; preds = %bb.de
  %i.wm = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.wl) #25
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.dh:                                            ; preds = %bb.dd
  %i.wn = load i32, ptr %i.tl, align 4
  %i.wo = zext i32 %i.wn to i64
  %i.wp = load ptr, ptr %i.c, align 8
  %i.wq = getelementptr inbounds nuw [12 x i8], ptr %i.wp, i64 %i.wo ; 2 uses
  %i.wr = load <2 x float>, ptr %i.wq, align 4
  %i.ws = load <2 x float>, ptr %i.jw, align 4
  %i.wt = fadd <2 x float> %i.wr, %i.ws
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.wv = load float, ptr %i.wu, align 4
  %i.ww = load float, ptr %i.jx, align 4
  %i.wx = fadd float %i.wv, %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %.2579695, i64 36 ; 4 uses
  store <2 x float> %i.wt, ptr %.3580, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2579695, i64 32
  store float %i.wx, ptr %.sroa.5.0..sroa_idx, align 4
  %.not307 = icmp eq ptr %.7599, null
  br i1 %.not307, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wz = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  %i.xa = load float, ptr %i.wz, align 4
  store float %i.xa, ptr %.7599, align 4
  %i.xb = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.xc = load float, ptr %i.xb, align 4
  %i.xd = getelementptr inbounds nuw i8, ptr %.7599, i64 4
  store float %i.xc, ptr %i.xd, align 4
  %i.xe = getelementptr inbounds nuw i8, ptr %.7599, i64 12
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.8600 = phi ptr [ null, %bb.dh ], [ %i.xe, %bb.di ] ; 4 uses
  br i1 %.not296, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.xf = load ptr, ptr %i.kn, align 8
  %i.xg = load ptr, ptr %i.pf, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %.1696, i64 32 ; 3 uses
  %i.xi = getelementptr i8, ptr %.1696, i64 24    ; 7 uses
  %i.xj = load ptr, ptr %i.xi, align 8            ; 2 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @_ZdaPv(ptr noundef nonnull %i.xj) #29
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.xl = load i32, ptr %.1696, align 8           ; 4 uses
  store i32 %i.xl, ptr %i.tm, align 8
  %.not.i.i379 = icmp eq i32 %i.xl, 0
  br i1 %.not.i.i379, label %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xm = zext i32 %i.xl to i64
  %i.xn = shl nuw nsw i64 %i.xm, 2                ; 3 uses
  %i.xo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xn) #27
          to label %_ZN6aiFaceaSERKS_.exit.i380 unwind label %.loopexit623 ; 2 uses

_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398: ; preds = %bb.dm
  store ptr null, ptr %i.xi, align 8
  br label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402

_ZN6aiFaceaSERKS_.exit.i380:                      ; preds = %bb.dn
  store ptr %i.xo, ptr %i.xi, align 8
  %i.xp = load ptr, ptr %i.to, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.xo, ptr align 4 %i.xp, i64 %i.xn, i1 false)
  %.not615 = icmp eq i32 %i.xl, 1
  br i1 %.not615, label %.lr.ph.i384.preheader, label %.lr.ph.i.i.preheader.i.i388

.lr.ph.i.i.preheader.i.i388:                      ; preds = %_ZN6aiFaceaSERKS_.exit.i380
  %.val20.i389 = load ptr, ptr %i.xi, align 8     ; 2 uses
  %i.xq = getelementptr i8, ptr %.val20.i389, i64 %i.xn
  %.012.i.i.i.i391 = getelementptr i8, ptr %i.xq, i64 -4
  br label %.lr.ph.i.i.i.i392

.lr.ph.i.i.i.i392:                                ; preds = %.lr.ph.i.i.i.i392, %.lr.ph.i.i.preheader.i.i388
  %.014.i.i.i.i393 = phi ptr [ %.0.i.i.i.i395, %.lr.ph.i.i.i.i392 ], [ %.012.i.i.i.i391, %.lr.ph.i.i.preheader.i.i388 ] ; 3 uses
  %.0913.i.i.i.i394 = phi ptr [ %i.xt, %.lr.ph.i.i.i.i392 ], [ %.val20.i389, %.lr.ph.i.i.preheader.i.i388 ] ; 3 uses
  %i.xr = load i32, ptr %.0913.i.i.i.i394, align 4
  %i.xs = load i32, ptr %.014.i.i.i.i393, align 4
  store i32 %i.xs, ptr %.0913.i.i.i.i394, align 4
  store i32 %i.xr, ptr %.014.i.i.i.i393, align 4
  %i.xt = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i394, i64 4 ; 2 uses
  %.0.i.i.i.i395 = getelementptr inbounds i8, ptr %.014.i.i.i.i393, i64 -4 ; 2 uses
  %i.xu = icmp ult ptr %i.xt, %.0.i.i.i.i395
  br i1 %i.xu, label %.lr.ph.i.i.i.i392, label %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396, !llvm.loop !57

_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396: ; preds = %.lr.ph.i.i.i.i392
  %.pre.i397 = load i32, ptr %i.tm, align 8
  %i.xv = icmp eq i32 %.pre.i397, 0
  br i1 %i.xv, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402, label %.lr.ph.i384.preheader

.lr.ph.i384.preheader:                            ; preds = %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396, %_ZN6aiFaceaSERKS_.exit.i380
  br label %.lr.ph.i384

.lr.ph.i384:                                      ; preds = %.lr.ph.i384.preheader, %bb.dp
  %.17 = phi ptr [ %.18, %bb.dp ], [ %.8600, %.lr.ph.i384.preheader ] ; 3 uses
  %.8590 = phi i32 [ %i.yi, %bb.dp ], [ %i.tt, %.lr.ph.i384.preheader ] ; 2 uses
  %.9 = phi ptr [ %i.yb, %bb.dp ], [ %i.wy, %.lr.ph.i384.preheader ] ; 2 uses
  %indvars.iv.i385 = phi i64 [ %indvars.iv.next.i387, %bb.dp ], [ 0, %.lr.ph.i384.preheader ] ; 4 uses
  %i.xw = load ptr, ptr %i.xi, align 8
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv.i385
  %i.xy = load i32, ptr %i.xx, align 4
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [12 x i8], ptr %i.xf, i64 %i.xz
  %i.yb = getelementptr inbounds nuw i8, ptr %.9, i64 12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.9, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ya, i64 12, i1 false)
  %.not.i386 = icmp eq ptr %.17, null
  br i1 %.not.i386, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i384
  %i.yc = load ptr, ptr %i.xi, align 8
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv.i385
  %i.ye = load i32, ptr %i.yd, align 4
  %i.yf = zext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [12 x i8], ptr %i.xg, i64 %i.yf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.17, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.yg, i64 12, i1 false)
  %i.yh = getelementptr inbounds nuw i8, ptr %.17, i64 12
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph.i384
  %.18 = phi ptr [ null, %.lr.ph.i384 ], [ %i.yh, %bb.do ] ; 2 uses
  %i.yi = add i32 %.8590, 1                       ; 2 uses
  %i.yj = load ptr, ptr %i.xi, align 8
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv.i385
  store i32 %.8590, ptr %i.yk, align 4
  %indvars.iv.next.i387 = add nuw nsw i64 %indvars.iv.i385, 1 ; 2 uses
  %i.yl = load i32, ptr %i.tm, align 8
  %i.ym = zext i32 %i.yl to i64
  %i.yn = icmp samesign ult i64 %indvars.iv.next.i387, %i.ym
  br i1 %i.yn, label %.lr.ph.i384, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402, !llvm.loop !58

_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402: ; preds = %bb.dp, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398, %bb.dj
  %.9601 = phi ptr [ %.8600, %bb.dj ], [ %.8600, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %.8600, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %.18, %bb.dp ] ; 2 uses
  %.3585 = phi i32 [ %i.tt, %bb.dj ], [ %i.tt, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %i.tt, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %i.yi, %bb.dp ] ; 2 uses
  %.4581 = phi ptr [ %i.wy, %bb.dj ], [ %i.wy, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %i.wy, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %i.yb, %bb.dp ] ; 2 uses
  %.2 = phi ptr [ %i.tm, %bb.dj ], [ %i.xh, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.loopexit.i396 ], [ %i.xh, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i398 ], [ %i.xh, %bb.dp ] ; 2 uses
  %i.yo = load ptr, ptr %i.po, align 8
  %i.yp = load ptr, ptr %i.pn, align 8            ; 2 uses
  %i.yq = ptrtoint ptr %i.yo to i64
  %i.yr = ptrtoint ptr %i.yp to i64
  %i.ys = sub i64 %i.yq, %i.yr
  %i.yt = sdiv exact i64 %i.ys, 12
  %i.yu = add nsw i64 %i.yt, 4294967294
  %i.yv = and i64 %i.yu, 4294967295
  %i.yw = icmp samesign ult i64 %indvars.iv.next, %i.yv
  br i1 %i.yw, label %.lr.ph698, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, !llvm.loop !59

bb.dq:                                            ; preds = %bb.ce
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.0526.1729, i64 8 ; 2 uses
  %i.yy = load ptr, ptr %i.yx, align 8            ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.0526.1729, i64 16 ; 2 uses
  %i.za = load ptr, ptr %i.yz, align 8
  %i.zb = ptrtoint ptr %i.za to i64
  %i.zc = ptrtoint ptr %i.yy to i64
  %i.zd = sub i64 %i.zb, %i.zc
  %i.ze = sdiv exact i64 %i.zd, 12
  %i.zf = trunc i64 %i.ze to i32
  %i.zg = icmp eq i8 %i.pm, 2
  %i.zh = sext i1 %i.zg to i32
  %spec.select = add i32 %i.zf, %i.zh             ; 3 uses
  %.not750 = icmp eq i32 %spec.select, 0
  br i1 %.not750, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %.lr.ph719

.lr.ph719:                                        ; preds = %bb.dq
  %i.zi = icmp eq i8 %i.pm, 1
  %i.zj = add i32 %spec.select, -1
  br label %bb.dr

bb.dr:                                            ; preds = %.lr.ph719, %bb.ed
  %.0261717 = phi i32 [ 0, %.lr.ph719 ], [ %i.aau, %bb.ed ] ; 2 uses
  %.sroa.0512.1716 = phi ptr [ %i.yy, %.lr.ph719 ], [ %.sroa.0512.2, %bb.ed ] ; 5 uses
  %.3715 = phi ptr [ %.0576728, %.lr.ph719 ], [ %i.zk, %bb.ed ] ; 3 uses
end_hunk_0
