inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11MD5Importer15LoadMD5AnimFileEv:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit155 ] ; 3 uses
  %i.eb = invoke noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #27
          to label %bb.aa unwind label %bb.ah     ; 8 uses

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1048 ; 2 uses
  store ptr null, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 1056
  store i32 0, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 1064
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.eb, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  %i.ef = load ptr, ptr %i.dd, align 8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv
  store ptr %i.eb, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.eh = load ptr, ptr %i.bs, align 8
  %i.ei = getelementptr inbounds nuw [1040 x i8], ptr %i.eh, i64 %indvars.iv ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.dv, i8 0, i64 1024, i1 false)
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.ej, i32 1023) ; 3 uses
  store i32 %spec.select.i, ptr %5, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.el = zext nneg i32 %spec.select.i to i64     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dv, ptr nonnull align 4 %i.ek, i64 %i.el, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.el
  store i8 0, ptr %i.em, align 1
  store i32 %spec.select.i, ptr %i.eb, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.en, ptr nonnull align 4 %i.dv, i64 %i.el, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el
  store i8 0, ptr %i.eo, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ep = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.eq = load ptr, ptr %i.bx, align 8            ; 3 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es                    ; 3 uses
  %i.eu = ashr exact i64 %i.et, 5                 ; 3 uses
  %i.ev = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.eu, i64 24) ; 2 uses
  %i.ew = extractvalue { i64, i1 } %i.ev, 1
  %i.ex = extractvalue { i64, i1 } %i.ev, 0
  %i.ey = select i1 %i.ew, i64 -1, i64 %i.ex
  %i.ez = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ey) #27
          to label %bb.ab unwind label %bb.ah     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.fa = icmp eq ptr %i.ep, %i.eq                ; 2 uses
  br i1 %i.fa, label %.loopexit156, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fb = getelementptr inbounds [24 x i8], ptr %i.ez, i64 %i.eu
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %i.fc = phi ptr [ %i.ez, %bb.ac ], [ %i.fe, %bb.ad ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.fb
  br i1 %i.ff, label %.loopexit156, label %bb.ad

.loopexit156:                                     ; preds = %bb.ad, %bb.ab
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eb, i64 1032
  store ptr %i.ez, ptr %i.fg, align 8
  %i.fh = icmp ugt i64 %i.eu, 576460752303423487
  %i.fi = select i1 %i.fh, i64 -1, i64 %i.et
  %i.fj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fi) #27
          to label %bb.ae unwind label %bb.ah     ; 3 uses

bb.ae:                                            ; preds = %.loopexit156
  br i1 %i.fa, label %.loopexit155, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.et
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %i.fl = phi ptr [ %i.fj, %bb.af ], [ %i.fo, %bb.ag ] ; 4 uses
  store double 0.000000e+00, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i32 1, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.fk
  br i1 %i.fp, label %.loopexit155, label %bb.ag

.loopexit155:                                     ; preds = %bb.ag, %bb.ae
  store ptr %i.fj, ptr %i.ec, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = load i32, ptr %i.dc, align 8
  %i.fr = zext i32 %i.fq to i64
  %i.fs = icmp samesign ult i64 %indvars.iv.next, %i.fr
  br i1 %i.fs, label %bb.z, label %._crit_edge, !llvm.loop !29

bb.ah:                                            ; preds = %.loopexit156, %bb.aa, %bb.z
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

._crit_edge171:                                   ; preds = %.loopexit, %._crit_edge
  %i.fu = load ptr, ptr %i.ct, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %.not68 = icmp eq ptr %i.fw, null
  br i1 %.not68, label %bb.aq, label %bb.bb

.lr.ph170:                                        ; preds = %._crit_edge, %.loopexit
  %.sroa.0131.0168 = phi ptr [ %i.ja, %.loopexit ], [ %i.dx, %._crit_edge ] ; 5 uses
  %i.fx = load i32, ptr %.sroa.0131.0168, align 8
  %i.fy = uitofp i32 %i.fx to double              ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0131.0168, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0131.0168, i64 16 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = icmp ne ptr %i.ga, %i.gc
  %i.ge = load ptr, ptr %i.bx, align 8
  %i.gf = icmp eq ptr %.sroa.0131.0168, %i.ge
  %or.cond = select i1 %i.gd, i1 true, i1 %i.gf
  br i1 %or.cond, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %.lr.ph170
  %i.gg = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.gh = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not153162 = icmp eq ptr %i.gg, %i.gh
  br i1 %.not153162, label %.loopexit, label %.lr.ph166.preheader

.lr.ph166.preheader:                              ; preds = %.critedge
  %i.gi = load ptr, ptr %i.cc, align 8
  %i.gj = load ptr, ptr %i.dd, align 8
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.ap
  %i.gk = phi ptr [ %i.iu, %bb.ap ], [ %i.gh, %.lr.ph166.preheader ]
  %.061165 = phi ptr [ %i.ix, %bb.ap ], [ %i.gi, %.lr.ph166.preheader ] ; 7 uses
  %.062164 = phi ptr [ %i.iw, %bb.ap ], [ %i.gj, %.lr.ph166.preheader ] ; 2 uses
  %.sroa.0119.0163 = phi ptr [ %i.iv, %bb.ap ], [ %i.gg, %.lr.ph166.preheader ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0119.0163, i64 1036
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %i.go = load ptr, ptr %i.gb, align 8
  %i.gp = load ptr, ptr %i.fz, align 8            ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = ashr exact i64 %i.gs, 2
  %.not70 = icmp ugt i64 %i.gt, %i.gn
  br i1 %.not70, label %_ZN10aiVector3tIfEixEj.exit96, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph166
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
  %.not72 = trunc nuw i32 %i.hs to i1             ; 2 uses
  %spec.select = select i1 %.not72, ptr %i.gz, ptr %.061165
  %spec.select226.idx = select i1 %.not72, i64 4, i64 0
  %spec.select226 = getelementptr inbounds nuw i8, ptr %i.gz, i64 %spec.select226.idx ; 2 uses
  %storemerge = load float, ptr %spec.select, align 4
  store float %storemerge, ptr %i.ho, align 4
  %i.ht = load i32, ptr %i.hn, align 4
  %i.hu = and i32 %i.ht, 2
  %.not72.1 = icmp eq i32 %i.hu, 0                ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.061165, i64 4
  %storemerge220.in = select i1 %.not72.1, ptr %i.hv, ptr %spec.select226
  %.158.1.idx = select i1 %.not72.1, i64 0, i64 4
  %.158.1 = getelementptr inbounds nuw i8, ptr %spec.select226, i64 %.158.1.idx ; 2 uses
  %storemerge220 = load float, ptr %storemerge220.in, align 4
  store float %storemerge220, ptr %i.hp, align 4
  %i.hw = load i32, ptr %i.hn, align 4
  %i.hx = and i32 %i.hw, 4                        ; 2 uses
  %.not72.2 = icmp eq i32 %i.hx, 0
  %storemerge221.in = select i1 %.not72.2, ptr %i.hr, ptr %.158.1
  %.158.2.idx = zext nneg i32 %i.hx to i64
  %.158.2 = getelementptr inbounds nuw i8, ptr %.158.1, i64 %.158.2.idx ; 2 uses
  %storemerge221 = load float, ptr %storemerge221.in, align 4
  store float %storemerge221, ptr %i.hq, align 4
  %i.hy = load i32, ptr %i.hn, align 4            ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.061165, i64 20
  %i.ia = getelementptr inbounds nuw i8, ptr %.061165, i64 12
  %i.ib = and i32 %i.hy, 8
  %.not71 = icmp eq i32 %i.ib, 0                  ; 2 uses
  %spec.select227 = select i1 %.not71, ptr %i.ia, ptr %.158.2
  %spec.select228.idx = select i1 %.not71, i64 0, i64 4
  %spec.select228 = getelementptr inbounds nuw i8, ptr %.158.2, i64 %spec.select228.idx ; 2 uses
  %storemerge222 = load float, ptr %spec.select227, align 4 ; 3 uses
  %i.ic = and i32 %i.hy, 16
  %.not71.1 = icmp eq i32 %i.ic, 0                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.061165, i64 16
  %storemerge223.in = select i1 %.not71.1, ptr %i.id, ptr %spec.select228
  %.360.1.idx = select i1 %.not71.1, i64 0, i64 4
  %.360.1 = getelementptr inbounds nuw i8, ptr %spec.select228, i64 %.360.1.idx
  %storemerge223 = load float, ptr %storemerge223.in, align 4 ; 3 uses
  %i.ie = and i32 %i.hy, 32
  %.not71.2 = icmp eq i32 %i.ie, 0
  %storemerge224.in = select i1 %.not71.2, ptr %i.hz, ptr %.360.1
  %storemerge224 = load float, ptr %storemerge224.in, align 4 ; 3 uses
  %i.if = zext i32 %i.hl to i64
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %i.if ; 5 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  store float %storemerge222, ptr %i.ii, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store float %storemerge223, ptr %i.ij, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 20
  store float %storemerge224, ptr %i.ik, align 4
  %i.il = fneg float %storemerge222
  %i.im = call float @llvm.fmuladd.f32(float %i.il, float %storemerge222, float 1.000000e+00)
  %i.in = fneg float %storemerge223
  %i.io = call float @llvm.fmuladd.f32(float %i.in, float %storemerge223, float %i.im)
  %i.ip = fneg float %storemerge224
  %i.iq = call float @llvm.fmuladd.f32(float %i.ip, float %storemerge224, float %i.io) ; 2 uses
  %i.ir = fcmp olt float %i.iq, 0.000000e+00
  br i1 %i.ir, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit96
  %i.is = call noundef float @sqrtf(float noundef %i.iq) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN10aiVector3tIfEixEj.exit96
  %storemerge.i = phi float [ %i.is, %bb.an ], [ 0.000000e+00, %_ZN10aiVector3tIfEixEj.exit96 ]
  %i.it = fneg float %storemerge.i
  store float %i.it, ptr %i.ih, align 4
  store double %i.fy, ptr %i.hh, align 8
  store double %i.fy, ptr %i.ig, align 8
  %.pre175 = load ptr, ptr %i.bu, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ai, %bb.ao
  %i.iu = phi ptr [ %i.gk, %bb.ai ], [ %.pre175, %bb.ao ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0119.0163, i64 1040 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.062164, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.061165, i64 24
  %.not153 = icmp eq ptr %i.iv, %i.iu
  br i1 %.not153, label %.loopexit, label %.lr.ph166, !llvm.loop !30

.loopexit:                                        ; preds = %bb.ap, %.critedge, %.lr.ph170
  %i.iy = load double, ptr %i.da, align 8         ; 2 uses
  %i.iz = fcmp ogt double %i.iy, %i.fy
  %.sroa.speculated = select i1 %i.iz, double %i.iy, double %i.fy
  store double %.sroa.speculated, ptr %i.da, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0131.0168, i64 32 ; 2 uses
  %.not152 = icmp eq ptr %i.ja, %i.dw
  br i1 %.not152, label %._crit_edge171, label %.lr.ph170, !llvm.loop !31

bb.aq:                                            ; preds = %._crit_edge171
  %i.jb = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.ar unwind label %bb.y      ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.jb)
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.jc = load ptr, ptr %i.ct, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr %i.jb, ptr %i.jd, align 8
  %i.je = load ptr, ptr %i.ct, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ji = load i64, ptr %i.jh, align 8            ; 4 uses
  %i.jj = icmp ugt i64 %i.ji, 1023
  br i1 %i.jj, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jk = trunc nuw nsw i64 %i.ji to i32
  store i32 %i.jk, ptr %i.jg, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 2 uses
  %i.jm = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jl, ptr align 1 %i.jm, i64 %i.ji, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ji
  store i8 0, ptr %i.jn, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.at, %bb.au
  %i.jo = load ptr, ptr %6, align 8               ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.jr = load i64, ptr %i.jp, align 8
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.jt = load ptr, ptr %i.ct, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = load ptr, ptr %i.dd, align 8
  invoke void @_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef -1, ptr noundef %i.jv, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef %i.jw)
          to label %bb.av unwind label %bb.y

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.jx = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8            ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 1104
  %i.kb = load i32, ptr %i.ka, align 8
  %.not69 = icmp eq i32 %i.kb, 0
  br i1 %.not69, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 1112
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = load ptr, ptr %i.kd, align 8
  invoke void @_ZN6Assimp19SkeletonMeshBuilderC1EP7aiSceneP6aiNodeb(ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull %i.jx, ptr noundef %i.ke, i1 noundef zeroext false)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN6Assimp19SkeletonMeshBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ar
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 1144) #24
  br label %bb.bj

bb.az:                                            ; preds = %bb.as
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bj

bb.ba:                                            ; preds = %bb.aw
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bj

bb.bb:                                            ; preds = %._crit_edge171, %bb.ax, %bb.av, %bb.q
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8            ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.kl = load ptr, ptr %i.kk, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kj, %i.kl
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3MD59FrameDescES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bb, %_ZSt8_DestroyIN6Assimp3MD59FrameDescEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.kt, %_ZSt8_DestroyIN6Assimp3MD59FrameDescEEvPT_.exit.i.i.i.i ], [ %i.kj, %bb.bb ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.kn = load ptr, ptr %i.km, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kn, null
end_hunk_0
