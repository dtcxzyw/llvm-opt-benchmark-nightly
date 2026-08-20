inline.NumInlined: 1368
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZNK2cv6dynafu16IntegrateInvokerclERKNS_5RangeE:bb.a
_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.o
  %.not.i.i.i.i109 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i.i.i109, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.q

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dn = shl nuw nsw i64 %i.dl, 2
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #32
          to label %.noexc113 unwind label %.loopexit137 ; 4 uses

.noexc113:                                        ; preds = %bb.q
  store ptr %i.do, ptr %5, align 8, !tbaa !272
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dl
  store ptr %i.dp, ptr %i.k, align 8, !tbaa !275
  store float 0.000000e+00, ptr %i.do, align 4, !tbaa !27
  %i.dq = getelementptr i8, ptr %i.do, i64 4      ; 3 uses
  %i.dr = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.r, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc113
  %.idx.i.i.i.i.i.i.i110 = shl nuw nsw i64 %i.dr, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dq, i8 0, i64 %.idx.i.i.i.i.i.i.i110, i1 false), !tbaa !27
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i110
  br label %bb.r

bb.r:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc113, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i111 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.dq, %.noexc113 ], [ %i.dt, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  store ptr %.0.i.i.i.i.i111, ptr %i.l, align 8, !tbaa !276
  invoke void @_ZN2cv6dynafu9WarpField14findNeighboursENS_7Point3_IfEERSt6vectorIiSaIiEERS4_IfSaIfEE(ptr noundef nonnull align 8 dereferenceable(320) %i.cz, <2 x float> %i.cf, float %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.bz, i64 88 ; 7 uses
  store i32 0, ptr %i.du, align 4, !tbaa !228
  %i.dv = load ptr, ptr %i.j, align 8, !tbaa !271 ; 2 uses
  %i.dw = load ptr, ptr %4, align 8, !tbaa !267   ; 6 uses
  %.not160 = icmp eq ptr %i.dv, %i.dw
  %.pre = load ptr, ptr %5, align 8, !tbaa !272   ; 6 uses
  br i1 %.not160, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 3 uses
  %i.ea = ashr exact i64 %i.dz, 2                 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bz, i64 48 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.ed = icmp eq i64 %i.dz, 4
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ea, -2
  br label %bb.y

._crit_edge:                                      ; preds = %bb.s
  %.not.i.i.i114 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %bb.ac
  %i.ee = and i64 %i.dz, 4
  %lcmp.mod.not = icmp eq i64 %i.ee, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph
  %.096142.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ga, %._crit_edge.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod209 = trunc i64 %i.ea to i1
  call void @llvm.assume(i1 %lcmp.mod209)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.096142.epil.init
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !27 ; 2 uses
  %i.eh = fcmp uno float %i.eg, 0.000000e+00
  br i1 %i.eh, label %._crit_edge.thread, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.ei = load i32, ptr %i.du, align 4, !tbaa !228 ; 2 uses
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ej
  store float %i.eg, ptr %i.ek, align 4, !tbaa !27
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.096142.epil.init
  %i.em = load i32, ptr %i.el, align 4, !tbaa !22
  %i.en = add nsw i32 %i.ei, 1
  store i32 %i.en, ptr %i.du, align 4, !tbaa !228
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ej
  store i32 %i.em, ptr %i.eo, align 4, !tbaa !22
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %bb.t, %.epil.preheader, %._crit_edge
  %i.ep = load ptr, ptr %i.k, align 8, !tbaa !275
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %.pre to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.es) #30
  %.pre165 = load ptr, ptr %4, align 8, !tbaa !267
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  %i.et = phi ptr [ %i.dw, %._crit_edge ], [ %.pre165, %._crit_edge.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.not.i.i.i115 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.eu = load ptr, ptr %i.i, align 8, !tbaa !270
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ae

bb.v:                                             ; preds = %bb.d
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.aq

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit119

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit119

.loopexit137:                                     ; preds = %bb.q
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit117

.loopexit.split-lp138:                            ; preds = %bb.p
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit117

bb.w:                                             ; preds = %bb.r
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %5, align 8, !tbaa !272   ; 3 uses
  %.not.i.i.i116 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIfSaIfEED2Ev.exit117, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !275
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit117

bb.y:                                             ; preds = %bb.ac, %.lr.ph.new
  %.096142 = phi i64 [ 0, %.lr.ph.new ], [ %i.ga, %bb.ac ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ac ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.096142
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !27 ; 2 uses
  %i.fh = fcmp uno float %i.fg, 0.000000e+00
  br i1 %i.fh, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fi = load i32, ptr %i.du, align 4, !tbaa !228 ; 2 uses
  %i.fj = sext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.fj
  store float %i.fg, ptr %i.fk, align 4, !tbaa !27
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.096142
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !22
  %i.fn = add nsw i32 %i.fi, 1
  store i32 %i.fn, ptr %i.du, align 4, !tbaa !228
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fj
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.fp = or disjoint i64 %.096142, 1             ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !27 ; 2 uses
  %i.fs = fcmp uno float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ft = load i32, ptr %i.du, align 4, !tbaa !228 ; 2 uses
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.fu
  store float %i.fr, ptr %i.fv, align 4, !tbaa !27
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fp
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !22
  %i.fy = add nsw i32 %i.ft, 1
  store i32 %i.fy, ptr %i.du, align 4, !tbaa !228
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fu
  store i32 %i.fx, ptr %i.fz, align 4, !tbaa !22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ga = add nuw i64 %.096142, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.loopexit.unr-lcssa, label %bb.y, !llvm.loop !277

_ZNSt6vectorIfSaIfEED2Ev.exit117:                 ; preds = %.loopexit137, %.loopexit.split-lp138, %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.x ], [ %i.ez, %bb.w ], [ %lpad.loopexit139, %.loopexit137 ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp138 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.gb = load ptr, ptr %4, align 8, !tbaa !267   ; 3 uses
  %.not.i.i.i118 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIiSaIiEED2Ev.exit119, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit117
  %i.gc = load ptr, ptr %i.i, align 8, !tbaa !270
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gf) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit119

_ZNSt6vectorIiSaIiEED2Ev.exit119:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.ad, %_ZNSt6vectorIfSaIfEED2Ev.exit117
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit117 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.aq

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt12__shared_ptrIN2cv5flann12GenericIndexIN7cvflann9L2_SimpleIfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gg = load ptr, ptr %i.g, align 8, !tbaa !243
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 4 dereferenceable(40) %i.gh, i64 40, i1 false), !tbaa.struct !278
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bz, i64 88 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !228
  %i.gk = invoke { <2 x float>, float } @_ZNK2cv6dynafu9WarpField9applyWarpENS_7Point3_IfEESt5arrayIiLm10EEib(ptr noundef nonnull align 8 dereferenceable(320) %i.gg, <2 x float> %i.cf, float %i.cg, ptr noundef nonnull byval(%"struct.std::array") align 8 %6, i32 noundef %i.gj, i1 noundef zeroext false)
          to label %bb.af unwind label %bb.ag     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %.fca.0.extract27 = extractvalue { <2 x float>, float } %i.gk, 0 ; 4 uses
  %.fca.1.extract28 = extractvalue { <2 x float>, float } %i.gk, 1 ; 2 uses
  %.sroa.0129.0.vec.extract = extractelement <2 x float> %.fca.0.extract27, i64 0
  %.sroa.0129.4.vec.extract = extractelement <2 x float> %.fca.0.extract27, i64 1
  %i.gl = load float, ptr %i.m, align 8, !tbaa !27
  %i.gm = load float, ptr %i.n, align 4, !tbaa !27
  %i.gn = fmul float %.sroa.0129.4.vec.extract, %i.gm
  %i.go = call float @llvm.fmuladd.f32(float %i.gl, float %.sroa.0129.0.vec.extract, float %i.gn)
  %i.gp = load float, ptr %i.o, align 8, !tbaa !27
  %i.gq = call float @llvm.fmuladd.f32(float %i.gp, float %.fca.1.extract28, float %i.go)
  %i.gr = load float, ptr %i.p, align 4, !tbaa !27
  %i.gs = fadd float %i.gr, %i.gq                 ; 3 uses
  %i.gt = fcmp ugt float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.ah, label %bb.ap

bb.ag:                                            ; preds = %bb.ae
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  %i.gv = fdiv float 1.000000e+00, %i.gs
  %i.gw = load <8 x float>, ptr %i.q, align 8, !tbaa !27 ; 4 uses
  %i.gx = shufflevector <2 x float> %.fca.0.extract27, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = shufflevector <8 x float> %i.gw, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.gz = fmul <2 x float> %i.gx, %i.gy
  %i.ha = shufflevector <8 x float> %i.gw, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.hb = shufflevector <2 x float> %.fca.0.extract27, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.hb, <2 x float> %i.gz)
  %i.hd = shufflevector <8 x float> %i.gw, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.he = insertelement <2 x float> poison, float %.fca.1.extract28, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.hf, <2 x float> %i.hc)
  %i.hh = shufflevector <8 x float> %i.gw, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.hi = fadd <2 x float> %i.hh, %i.hg
  %i.hj = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fmul <2 x float> %i.hk, %i.hi           ; 4 uses
  %i.hm = load <2 x float>, ptr %i.r, align 8, !tbaa !27
  %i.hn = load <2 x float>, ptr %i.s, align 8, !tbaa !27
  %i.ho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.hl, <2 x float> %i.hn) ; 7 uses
  %i.hp = load ptr, ptr %i.t, align 8, !tbaa !279, !nonnull !114, !align !115 ; 4 uses
  %i.hq = extractelement <2 x float> %i.ho, i64 0
  %i.hr = fcmp olt float %i.hq, 0.000000e+00
  br i1 %i.hr, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !280
  %i.hu = add nsw i32 %i.ht, -1
  %i.hv = sitofp i32 %i.hu to float
  %i.hw = extractelement <2 x float> %i.ho, i64 0
  %i.hx = fcmp oge float %i.hw, %i.hv
  %i.hy = extractelement <2 x float> %i.ho, i64 1
  %i.hz = fcmp olt float %i.hy, 0.000000e+00
  %or.cond.i = select i1 %i.hx, i1 true, i1 %i.hz
  br i1 %or.cond.i, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !125
  %i.ic = add nsw i32 %i.ib, -1
  %i.id = sitofp i32 %i.ic to float
  %i.ie = extractelement <2 x float> %i.ho, i64 1
  %i.if = fcmp ult float %i.ie, %i.id
  br i1 %i.if, label %bb.ak, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ig = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ho)
  %i.ih = fptosi <2 x float> %i.ig to <2 x i32>   ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !116 ; 2 uses
  %i.ik = extractelement <2 x i32> %i.ih, i64 1   ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.hp, i64 128
  %i.in = load i64, ptr %i.im, align 8, !tbaa !76 ; 2 uses
  %i.io = mul i64 %i.in, %i.il
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.io ; 2 uses
  %i.iq = add nsw i32 %i.ik, 1
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul i64 %i.in, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.is ; 2 uses
  %i.iu = extractelement <2 x i32> %i.ih, i64 0   ; 2 uses
  %i.iv = sext i32 %i.iu to i64                   ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.iv
  %i.ix = add nsw i32 %i.iu, 1
  %i.iy = sext i32 %i.ix to i64                   ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.iy
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.iv
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.iy
  %i.jc = load <2 x float>, ptr %i.iw, align 4, !tbaa !27 ; 3 uses
  %i.jd = load float, ptr %i.iz, align 4, !tbaa !27
  %i.je = load <2 x float>, ptr %i.ja, align 4, !tbaa !27 ; 3 uses
  %i.jf = load float, ptr %i.jb, align 4, !tbaa !27
  %i.jg = extractelement <2 x float> %i.jc, i64 0
  %i.jh = fcmp ogt float %i.jg, 0.000000e+00
  %i.ji = fcmp ogt float %i.jd, 0.000000e+00
  %i.jj = extractelement <2 x float> %i.je, i64 0
  %i.jk = fcmp ogt float %i.jj, 0.000000e+00
  %i.jl = fcmp ogt float %i.jf, 0.000000e+00
  %or.cond4.i = select i1 %i.jh, i1 %i.ji, i1 false
  %or.cond6.i = select i1 %or.cond4.i, i1 %i.jk, i1 false
  %or.cond8.i = select i1 %or.cond6.i, i1 %i.jl, i1 false
  br i1 %or.cond8.i, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread

_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit: ; preds = %bb.ak
  %i.jm = sitofp <2 x i32> %i.ih to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.ho, %i.jm
  %foldExtExtBinop203 = fsub <2 x float> %i.ho, %i.jm
  %i.jn = extractelement <2 x float> %foldExtExtBinop203, i64 1
  %i.jo = shufflevector <2 x float> %i.je, <2 x float> %i.jc, <2 x i32> <i32 1, i32 3>
  %i.jp = shufflevector <2 x float> %i.je, <2 x float> %i.jc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.jq = fsub <2 x float> %i.jo, %i.jp
  %i.jr = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.jq, <2 x float> %i.jp) ; 2 uses
  %i.jt = extractelement <2 x float> %i.js, i64 0
  %i.ju = extractelement <2 x float> %i.js, i64 1 ; 2 uses
  %i.jv = fsub float %i.jt, %i.ju
  %i.jw = call float @llvm.fmuladd.f32(float %i.jn, float %i.jv, float %i.ju) ; 2 uses
  %i.jx = fcmp oeq float %i.jw, 0.000000e+00
  br i1 %i.jx, label %bb.ap, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread

_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread: ; preds = %bb.ak, %bb.ai, %bb.aj, %bb.ah, %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit
  %.1.i135 = phi float [ %i.jw, %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit ], [ +qnan, %bb.ah ], [ +qnan, %bb.aj ], [ +qnan, %bb.ai ], [ +qnan, %bb.ak ]
  %foldExtExtBinop205 = fmul <2 x float> %i.hl, %i.hl
  %i.jy = extractelement <2 x float> %foldExtExtBinop205, i64 1
  %i.jz = extractelement <2 x float> %i.hl, i64 0 ; 2 uses
  %i.ka = call float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.jy)
  %i.kb = fadd float %i.ka, 1.000000e+00
  %sqrt = call float @llvm.sqrt.f32(float %i.kb)
  %i.kc = load float, ptr %i.u, align 4, !tbaa !281
  %i.kd = fneg float %i.gs
  %i.ke = call float @llvm.fmuladd.f32(float %.1.i135, float %i.kc, float %i.kd)
  %i.kf = fmul float %sqrt, %i.ke                 ; 2 uses
  %i.kg = load ptr, ptr %i.f, align 8, !tbaa !106, !nonnull !114, !align !115 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 112
  %i.ki = load float, ptr %i.kh, align 8, !tbaa !28
  %i.kj = fneg float %i.ki
  %i.kk = fcmp ult float %i.kf, %i.kj
  br i1 %i.kk, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread
  %i.kl = load float, ptr %i.v, align 8, !tbaa !282
  %i.km = fmul float %i.kf, %i.kl
  %i.kn = call nsz noundef float @llvm.minnum.f32(float %i.km, float 1.000000e+00)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.kp = load ptr, ptr %i.g, align 8, !tbaa !243 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !283
  %i.kt = load ptr, ptr %i.kq, align 8, !tbaa !284
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = ashr exact i64 %i.kw, 4
  %i.ky = load i32, ptr %i.kp, align 8, !tbaa !248
  %i.kz = sext i32 %i.ky to i64
  %.not = icmp ult i64 %i.kx, %i.kz
  br i1 %.not, label %._crit_edge146, label %.preheader

.preheader:                                       ; preds = %bb.al
  %i.la = load i32, ptr %i.gi, align 4, !tbaa !228 ; 4 uses
  %i.lb = icmp sgt i32 %i.la, 0
  br i1 %i.lb, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %.preheader
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bz, i64 48 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.la to i64   ; 2 uses
  %xtraiter211 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ld = icmp ult i32 %i.la, 4
  br i1 %i.ld, label %.epil.preheader210, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %unroll_iter215 = and i64 %wide.trip.count, 2147483644
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph145.new
  %indvars.iv = phi i64 [ 0, %.lr.ph145.new ], [ %indvars.iv.next.3, %bb.am ] ; 5 uses
  %.084143 = phi float [ 0.000000e+00, %.lr.ph145.new ], [ %i.lw, %bb.am ]
  %niter216 = phi i64 [ 0, %.lr.ph145.new ], [ %niter216.next.3, %bb.am ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv
  %i.lf = load float, ptr %i.le, align 4, !tbaa !27
  %i.lg = call noundef float @sqrtf(float noundef %i.lf) #28
  %i.lh = fadd float %.084143, %i.lg
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !27
  %i.ll = call noundef float @sqrtf(float noundef %i.lk) #28
  %i.lm = fadd float %i.lh, %i.ll
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !27
  %i.lq = call noundef float @sqrtf(float noundef %i.lp) #28
  %i.lr = fadd float %i.lm, %i.lq
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !27
  %i.lv = call noundef float @sqrtf(float noundef %i.lu) #28
  %i.lw = fadd float %i.lr, %i.lv                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter216.next.3 = add i64 %niter216, 4         ; 2 uses
  %niter216.ncmp.3 = icmp eq i64 %niter216.next.3, %unroll_iter215
  br i1 %niter216.ncmp.3, label %._crit_edge146.thread.unr-lcssa, label %bb.am, !llvm.loop !285

._crit_edge146.thread.unr-lcssa:                  ; preds = %bb.am
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %._crit_edge146.thread, label %.epil.preheader210

.epil.preheader210:                               ; preds = %._crit_edge146.thread.unr-lcssa, %.lr.ph145
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next.3, %._crit_edge146.thread.unr-lcssa ]
  %.084143.epil.init = phi float [ 0.000000e+00, %.lr.ph145 ], [ %i.lw, %._crit_edge146.thread.unr-lcssa ]
  %lcmp.mod214 = icmp ne i64 %xtraiter211, 0
  call void @llvm.assume(i1 %lcmp.mod214)
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.epil.preheader210
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader210 ], [ %indvars.iv.next.epil, %bb.an ] ; 2 uses
  %.084143.epil = phi float [ %.084143.epil.init, %.epil.preheader210 ], [ %i.ma, %bb.an ]
  %epil.iter = phi i64 [ 0, %.epil.preheader210 ], [ %epil.iter.next, %bb.an ]
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.epil
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !27
  %i.lz = call noundef float @sqrtf(float noundef %i.ly) #28
  %i.ma = fadd float %.084143.epil, %i.lz         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter211
  br i1 %epil.iter.cmp.not, label %._crit_edge146.thread, label %bb.an, !llvm.loop !286

._crit_edge146.thread:                            ; preds = %bb.an, %._crit_edge146.thread.unr-lcssa
  %.lcssa = phi float [ %i.lw, %._crit_edge146.thread.unr-lcssa ], [ %i.ma, %bb.an ]
  %i.mb = uitofp nneg i32 %i.la to float
  %i.mc = fdiv float %.lcssa, %i.mb
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %.preheader, %bb.al, %._crit_edge146.thread
  %.1 = phi float [ %i.mc, %._crit_edge146.thread ], [ 1.000000e+00, %bb.al ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.md = load float, ptr %i.ko, align 4, !tbaa !27 ; 2 uses
  %i.me = fadd float %.1, %i.md                   ; 4 uses
  %i.mf = fcmp une float %i.me, 0.000000e+00
  br i1 %i.mf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge146
  %i.mg = load float, ptr %i.bz, align 4, !tbaa !27
  %i.mh = fmul float %i.kn, %.1
  %i.mi = call float @llvm.fmuladd.f32(float %i.mg, float %i.md, float %i.mh)
  %i.mj = fdiv float %i.mi, %i.me
  store float %i.mj, ptr %i.bz, align 4, !tbaa !27
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kg, i64 28
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !27 ; 2 uses
  %i.mm = fcmp olt float %i.ml, %i.me
  %.sroa.speculated = select i1 %i.mm, float %i.ml, float %i.me
  store float %.sroa.speculated, ptr %i.ko, align 4, !tbaa !27
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit, %._crit_edge146, %bb.ao, %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread, %bb.af
  %i.mn = add nuw nsw i32 %.095148, 1             ; 2 uses
  %i.mo = load ptr, ptr %i.f, align 8, !tbaa !106, !nonnull !114, !align !115 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !31
  %i.mr = icmp slt i32 %i.mn, %i.mq
  br i1 %i.mr, label %bb.d, label %._crit_edge151, !llvm.loop !288

bb.aq:                                            ; preds = %bb.ag, %_ZNSt6vectorIiSaIiEED2Ev.exit119, %bb.v
  %.pn103.pn.pn.pn = phi { ptr, i32 } [ %i.gu, %bb.ag ], [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit119 ], [ %i.ey, %bb.v ]
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !54
  %.not.i124 = icmp eq i32 %i.mt, 0
  br i1 %.not.i124, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit125, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit125 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mu = landingpad { ptr, i32 }
          catch ptr null
  %i.mv = extractvalue { ptr, i32 } %i.mu, 0
  call void @__clang_call_terminate(ptr %i.mv) #31
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit125:    ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn103.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZNK2cv6dynafu9WarpField12getNodeIndexEv(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.33") align 8, ptr noundef nonnull align 8 dereferenceable(320)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6dynafu9WarpField14findNeighboursENS_7Point3_IfEERSt6vectorIiSaIiEERS4_IfSaIfEE(ptr noundef nonnull align 8 dereferenceable(320) %0, <2 x float> %1, float %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvflann::Matrix", align 8   ; 7 uses
  %6 = alloca %"class.cvflann::Matrix.60", align 8 ; 7 uses
  %7 = alloca %"class.cvflann::Matrix", align 8   ; 7 uses
  %8 = alloca %"struct.cvflann::SearchParams", align 8 ; 12 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #32 ; 5 uses
  store <2 x float> %1, ptr %i.a, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %2, ptr %.sroa.6.0..sroa_idx, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244
  %i.d = load i32, ptr %0, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !289
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !294
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !295
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.e, ptr %i.h, align 8, !tbaa !296
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !297
  invoke void @_ZN7cvflann12SearchParams4initEifbb(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 32, float noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_ZN7cvflann12SearchParamsC2Eifb.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit13

_ZN7cvflann12SearchParamsC2Eifb.exit:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 1, ptr %5, align 8, !tbaa !298
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.k, align 8, !tbaa !300
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.a, ptr %i.m, align 8, !tbaa !301
  store i64 3, ptr %i.l, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.n = load ptr, ptr %3, align 8, !tbaa !267    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !271
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2                   ; 2 uses
  store i64 1, ptr %6, align 8, !tbaa !303
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !305
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.n, ptr %i.w, align 8, !tbaa !306
  store i64 %i.t, ptr %i.v, align 8, !tbaa !307
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.x = load ptr, ptr %4, align 8, !tbaa !272    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !276
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2                 ; 2 uses
  store i64 1, ptr %7, align 8, !tbaa !298
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !300
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.x, ptr %i.ag, align 8, !tbaa !301
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !302
  %i.ah = invoke noundef i32 @_ZN7cvflann19flann_distance_typeEv()
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZN7cvflann12SearchParamsC2Eifb.exit
  %.not.i = icmp eq i32 %i.ah, 1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !308 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.e unwind label %bb.g, !inline_history !311

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !294
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.am)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #31
  unreachable

end_hunk_0
begin_hunk_1_@_ZNK2cv6dynafu17MarchCubesInvokerclERKNS_5RangeE:bb.a
.lr.ph.i.i.i.i.i.i540:                            ; preds = %.noexc555, %.lr.ph.i.i.i.i.i.i540
  %.015.i.i.i.i.i.i541 = phi ptr [ %i.vc, %.lr.ph.i.i.i.i.i.i540 ], [ %i.up, %.noexc555 ] ; 5 uses
  %.01214.i.i.i.i.i.i542 = phi ptr [ %i.vb, %.lr.ph.i.i.i.i.i.i540 ], [ %.sroa.0645.9, %.noexc555 ] ; 5 uses
  %i.ur = load float, ptr %.01214.i.i.i.i.i.i542, align 4, !tbaa !27
  store float %i.ur, ptr %.015.i.i.i.i.i.i541, align 4, !tbaa !27
  %i.us = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i542, i64 4
  %i.ut = load float, ptr %i.us, align 4, !tbaa !27
  %i.uu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i541, i64 4
  store float %i.ut, ptr %i.uu, align 4, !tbaa !27
  %i.uv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i542, i64 8
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !27
  %i.ux = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i541, i64 8
  store float %i.uw, ptr %i.ux, align 4, !tbaa !27
  %i.uy = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i542, i64 12
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !27
  %i.va = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i541, i64 12
  store float %i.uz, ptr %i.va, align 4, !tbaa !27
  %i.vb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i542, i64 16 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i541, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i543 = icmp eq ptr %i.vb, %.sroa.14.7
  br i1 %.not.i.i.i.i.i.i543, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i551, label %.lr.ph.i.i.i.i.i.i540, !llvm.loop !387

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i551: ; preds = %.lr.ph.i.i.i.i.i.i540, %.noexc555
  %.0.lcssa.i.i.i.i.i.i545 = phi ptr [ %i.up, %.noexc555 ], [ %i.vc, %.lr.ph.i.i.i.i.i.i540 ]
  %.not.i35.i553 = icmp eq ptr %.sroa.0645.9, null
  br i1 %.not.i35.i553, label %.noexc505, label %bb.bn

bb.bn:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i551
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0645.9, i64 noundef %i.uh) #30
  br label %.noexc505

.noexc505:                                        ; preds = %bb.bn, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i551
  %i.vd = getelementptr inbounds nuw [16 x i8], ptr %i.up, i64 %i.un
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit506

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit506: ; preds = %.noexc505, %bb.bk
  %.0.lcssa.i.i.i.i.i.i545.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i545, %.noexc505 ], [ %.sroa.14.7, %bb.bk ]
  %.sroa.28.10 = phi ptr [ %i.vd, %.noexc505 ], [ %.sroa.28.9, %bb.bk ] ; 2 uses
  %.sroa.0645.10 = phi ptr [ %i.up, %.noexc505 ], [ %.sroa.0645.9, %bb.bk ] ; 2 uses
  %.sroa.14.8 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i545.pn, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !22 ; 2 uses
  %.not329 = icmp eq i32 %i.vf, -1
  br i1 %.not329, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !403

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit666:                                     ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i515
  %lpad.loopexit668 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp667:                            ; preds = %bb.bh
  %lpad.loopexit.split-lp669 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit671:                                     ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i536
  %lpad.loopexit673 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp672:                            ; preds = %bb.bm
  %lpad.loopexit.split-lp674 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %._crit_edge, %bb.aa, %bb.b
  %.pre855.pre871 = phi ptr [ %.pre855.pre870, %bb.b ], [ %.pre855.pre870, %bb.aa ], [ %.pre855.pre, %._crit_edge ] ; 2 uses
  %.pre855864 = phi ptr [ %.pre855863, %bb.b ], [ %.pre855863, %bb.aa ], [ %.pre855.pre, %._crit_edge ] ; 2 uses
  %i.vg = phi ptr [ %i.bz, %bb.b ], [ %.pre855863, %bb.aa ], [ %.pre855.pre, %._crit_edge ] ; 2 uses
  %i.vh = phi ptr [ %i.ca, %bb.b ], [ %.pre855863, %bb.aa ], [ %.pre855.pre, %._crit_edge ] ; 2 uses
  %.sroa.14.5 = phi ptr [ %.sroa.14.2773, %bb.b ], [ %.sroa.14.2773, %bb.aa ], [ %.sroa.14.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.28.5 = phi ptr [ %.sroa.28.2774, %bb.b ], [ %.sroa.28.2774, %bb.aa ], [ %.sroa.28.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0645.5 = phi ptr [ %.sroa.0645.2775, %bb.b ], [ %.sroa.0645.2775, %bb.aa ], [ %.sroa.0645.3.lcssa, %._crit_edge ] ; 2 uses
  %i.vi = add nuw nsw i32 %.0310776, 1            ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 24
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !31
  %i.vl = add nsw i32 %i.vk, -1
  %i.vm = icmp slt i32 %i.vi, %i.vl
  br i1 %i.vm, label %bb.b, label %._crit_edge780, !llvm.loop !404

bb.bp:                                            ; preds = %.loopexit671, %.loopexit.split-lp672, %.loopexit666, %.loopexit.split-lp667, %.loopexit, %.loopexit.split-lp
  %.sroa.28.6 = phi ptr [ %.sroa.28.8, %.loopexit.split-lp667 ], [ %.sroa.28.3768, %.loopexit.split-lp ], [ %.sroa.28.3768, %.loopexit ], [ %.sroa.28.8, %.loopexit666 ], [ %.sroa.14.7, %.loopexit671 ], [ %.sroa.14.7, %.loopexit.split-lp672 ]
  %.sroa.0645.6 = phi ptr [ %.sroa.0645.8, %.loopexit.split-lp667 ], [ %.sroa.0645.3769, %.loopexit.split-lp ], [ %.sroa.0645.3769, %.loopexit ], [ %.sroa.0645.8, %.loopexit666 ], [ %.sroa.0645.9, %.loopexit671 ], [ %.sroa.0645.9, %.loopexit.split-lp672 ]
  %.pn330.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp669, %.loopexit.split-lp667 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit668, %.loopexit666 ], [ %lpad.loopexit673, %.loopexit671 ], [ %lpad.loopexit.split-lp674, %.loopexit.split-lp672 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.bx

bb.bq:                                            ; preds = %._crit_edge802
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.vo = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.vn) #28 ; 2 uses
  %.not.i.i507 = icmp eq i32 %i.vo, 0
  br i1 %.not.i.i507, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.vo) #29
          to label %.noexc508 unwind label %bb.bt

.noexc508:                                        ; preds = %bb.br
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.bq
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !405, !nonnull !114, !align !115 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !196
  %i.vt = load ptr, ptr %i.vq, align 8, !tbaa !196 ; 2 uses
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = getelementptr inbounds i8, ptr %i.vt, i64 %i.vw
  invoke void @_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, ptr %i.vx, ptr %.sroa.0645.1.lcssa, ptr %.sroa.14.1.lcssa)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.vy = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.vn) #28 ; 0 uses
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bu:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.wa = landingpad { ptr, i32 }
          cleanup
  %i.wb = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.vn) #28 ; 0 uses
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bs, %._crit_edge802
  %.not.i.i.i = icmp eq ptr %.sroa.0645.1.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.wc = ptrtoint ptr %.sroa.28.1.lcssa to i64
  %i.wd = sub i64 %i.wc, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0645.1.lcssa, i64 noundef %i.wd) #30
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit:   ; preds = %bb.a, %.lr.ph801, %bb.bv, %bb.bw
  ret void

bb.bx:                                            ; preds = %bb.bt, %bb.bu, %bb.bp
  %.sroa.28.7 = phi ptr [ %.sroa.28.6, %bb.bp ], [ %.sroa.28.1.lcssa, %bb.bu ], [ %.sroa.28.1.lcssa, %bb.bt ]
  %.sroa.0645.7 = phi ptr [ %.sroa.0645.6, %bb.bp ], [ %.sroa.0645.1.lcssa, %bb.bu ], [ %.sroa.0645.1.lcssa, %bb.bt ] ; 3 uses
  %.pn330.pn.pn = phi { ptr, i32 } [ %.pn330.pn, %bb.bp ], [ %i.wa, %bb.bu ], [ %i.vz, %bb.bt ]
  %.not.i.i.i510 = icmp eq ptr %.sroa.0645.7, null
  br i1 %.not.i.i.i510, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit511, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.we = ptrtoint ptr %.sroa.28.7 to i64
  %i.wf = ptrtoint ptr %.sroa.0645.7 to i64
  %i.wg = sub i64 %i.we, %i.wf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0645.7, i64 noundef %i.wg) #30
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit511

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit511: ; preds = %bb.bx, %bb.by
  resume { ptr, i32 } %.pn330.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi92EEEZNS_6dynafu13TSDFVolumeCPU5resetEvE3$_0EEvRKT0_EN21PixelOperationWrapperD0Ev"(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi92EEEZNS_6dynafu13TSDFVolumeCPU5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %union.Index, align 4               ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !45   ; 2 uses
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %i.h = icmp ult i32 %i.f, %narrow.i
  br i1 %i.h, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !32     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !25
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit74 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 6 uses
  %i.s = icmp samesign ult i32 %i.d, 3
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !46     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48   ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.lr.ph, label %.loopexit

.lr.ph.i.i.i.lr.ph:                               ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.d to i64
  %i.ab = sext i32 %i.r to i64
  %.idx.i = mul nuw nsw i64 %i.ab, 92
  %i.ac = icmp sgt i32 %i.r, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.us.preheader, label %.loopexit

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph.i.i.i.lr.ph
  %i.ad = add nsw i32 %i.d, -1
  %i.ae = icmp ult i32 %i.ad, 3
  %lcmp.mod151.not = icmp eq i32 %i.d, 0
  %lcmp.mod153 = icmp ne i32 %i.d, 0
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi92EEEZNS_6dynafu13TSDFVolumeCPU5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us"
  %.034111.us = phi i32 [ %i.bj, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi92EEEZNS_6dynafu13TSDFVolumeCPU5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us" ], [ %i.t, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i32 %.034111.us, ptr %6, align 4, !tbaa !22
  store i32 0, ptr %i.x, align 4, !tbaa !22
  br i1 %i.ae, label %.epil.preheader148, label %.lr.ph.i.i.i.us.new

.lr.ph.i.i.i.us.new:                              ; preds = %.lr.ph.i.i.i.us, %.lr.ph.i.i.i.us.new
  %indvars.iv.i.i.i.us = phi i64 [ %indvars.iv.next.i.i.i.us.3, %.lr.ph.i.i.i.us.new ], [ 0, %.lr.ph.i.i.i.us ] ; 6 uses
  %.010.i.i.i.us = phi ptr [ %i.bg, %.lr.ph.i.i.i.us.new ], [ %i.z, %.lr.ph.i.i.i.us ]
  %niter155 = phi i64 [ %niter155.next.3, %.lr.ph.i.i.i.us.new ], [ 0, %.lr.ph.i.i.i.us ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !76
  %i.ak = mul i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us, i64 %i.ak
  %indvars.iv.next.i.i.i.us = or disjoint i64 %indvars.iv.i.i.i.us, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !76
  %i.ar = mul i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar
  %indvars.iv.next.i.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.i.us, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !22
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.1
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !76
  %i.ay = mul i64 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ay
  %indvars.iv.next.i.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.i.us, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.2
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !76
  %i.bf = mul i64 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bf ; 3 uses
  %indvars.iv.next.i.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.i.us, 4 ; 2 uses
  %niter155.next.3 = add i64 %niter155, 4         ; 2 uses
  %niter155.ncmp.3 = icmp eq i64 %niter155.next.3, 0
  br i1 %niter155.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa, label %.lr.ph.i.i.i.us.new, !llvm.loop !406

.lr.ph.i.us:                                      ; preds = %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us, %.lr.ph.i.us
  %.02.i.us = phi ptr [ %i.bh, %.lr.ph.i.us ], [ %.lcssa, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02.i.us, i64 92 ; 2 uses
  store <2 x float> zeroinitializer, ptr %.02.i.us, align 4, !tbaa !27
  %i.bi = icmp ult ptr %i.bh, %i.br
  br i1 %i.bi, label %.lr.ph.i.us, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi92EEEZNS_6dynafu13TSDFVolumeCPU5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", !llvm.loop !407

"_ZZN2cv3Mat12forEach_implINS_3VecIhLi92EEEZNS_6dynafu13TSDFVolumeCPU5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us": ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bj = add nsw i32 %.034111.us, 1              ; 2 uses
  %exitcond118.not = icmp eq i32 %i.bj, %i.v
  br i1 %exitcond118.not, label %.loopexit, label %.lr.ph.i.i.i.us, !llvm.loop !408

_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.us.new
  br i1 %lcmp.mod151.not, label %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us, label %.epil.preheader148

.epil.preheader148:                               ; preds = %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.us
  %indvars.iv.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %indvars.iv.next.i.i.i.us.3, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ]
  %.010.i.i.i.us.epil.init = phi ptr [ %i.z, %.lr.ph.i.i.i.us ], [ %i.bg, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod153)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader148
  %indvars.iv.i.i.i.us.epil = phi i64 [ %indvars.iv.i.i.i.us.epil.init, %.epil.preheader148 ], [ %indvars.iv.next.i.i.i.us.epil, %bb.f ] ; 3 uses
  %.010.i.i.i.us.epil = phi ptr [ %.010.i.i.i.us.epil.init, %.epil.preheader148 ], [ %i.bq, %bb.f ]
  %epil.iter150 = phi i64 [ 0, %.epil.preheader148 ], [ %epil.iter150.next, %bb.f ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us.epil
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us.epil
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !76
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us.epil, i64 %i.bp ; 2 uses
  %indvars.iv.next.i.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.i.us.epil, 1
  %epil.iter150.next = add i64 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i64 %epil.iter150.next, %wide.trip.count.i.i.i
  br i1 %epil.iter150.cmp.not, label %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us, label %bb.f, !llvm.loop !409

_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us: ; preds = %bb.f, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa
  %.lcssa = phi ptr [ %i.bg, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ], [ %i.bq, %bb.f ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.idx.i
  br label %.lr.ph.i.us

bb.g:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.bs = zext nneg i32 %i.d to i64               ; 4 uses
  %i.bt = shl nuw nsw i64 %i.bs, 2                ; 4 uses
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #32 ; 14 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !22
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.bt, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bv, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !22
  %i.bw = load i32, ptr %1, align 4, !tbaa !46    ; 3 uses
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = add nsw i32 %i.d, -2                    ; 2 uses
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bz ; 3 uses
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !48 ; 2 uses
  %i.cd = icmp slt i32 %i.bw, %i.cc
  br i1 %i.cd, label %.lr.ph.us.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.us.preheader:                              ; preds = %bb.g
  %i.ce = getelementptr [4 x i8], ptr %i.bu, i64 %i.bs
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %i.ci = icmp sgt i32 %i.r, 0
  %i.cj = zext nneg i32 %i.by to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cj
  %narrow.i39.us = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.ck = zext nneg i32 %narrow.i39.us to i64
  %i.cl = zext nneg i32 %narrow.i to i64
  %xtraiter = and i64 %i.bs, 3                    ; 3 uses
  %i.cm = icmp eq i32 %i.d, 3
  %unroll_iter = and i64 %i.bs, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod141 = icmp ne i64 %xtraiter, 0
  %xtraiter142 = and i32 %i.r, 7                  ; 3 uses
  %i.cn = icmp ult i32 %i.r, 8
  %unroll_iter146 = and i32 %i.r, 2147483640
  %lcmp.mod144.not = icmp eq i32 %xtraiter142, 0
  %lcmp.mod145 = icmp ne i32 %xtraiter142, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit86.us
  %.03090.us = phi i32 [ %i.eu, %.loopexit86.us ], [ %i.bw, %.lr.ph.us.preheader ]
  %i.co = load i32, ptr %i.ca, align 4, !tbaa !22
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.ca, align 4, !tbaa !22
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.us, %_ZN2cv8MatShapeixEm.exit63.us
  %i.cq = phi i32 [ %.pre, %.lr.ph.us ], [ %i.cz, %_ZN2cv8MatShapeixEm.exit63.us ] ; 3 uses
  %indvars.iv = phi i64 [ %i.cj, %.lr.ph.us ], [ %indvars.iv.next, %_ZN2cv8MatShapeixEm.exit63.us ] ; 6 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.cs = icmp ult i64 %indvars.iv, %i.ck
  br i1 %i.cs, label %bb.i, label %.split.us

bb.i:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !22 ; 3 uses
  %.not.us = icmp slt i32 %i.cq, %i.cu
  br i1 %.not.us, label %.lr.ph.i.i.i67.us, label %_ZN2cv8MatShapeixEm.exit54.us

_ZN2cv8MatShapeixEm.exit54.us:                    ; preds = %bb.i
  %i.cv = sdiv i32 %i.cq, %i.cu
  %i.cw = srem i32 %i.cq, %i.cu
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !22
  %i.cz = add nsw i32 %i.cy, %i.cv                ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !22
  %i.da = icmp samesign ult i64 %indvars.iv, %i.cl
  br i1 %i.da, label %_ZN2cv8MatShapeixEm.exit63.us, label %.split94.us

_ZN2cv8MatShapeixEm.exit63.us:                    ; preds = %_ZN2cv8MatShapeixEm.exit54.us
  store i32 %i.cw, ptr %i.cr, align 4, !tbaa !22
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.lr.ph.i.i.i67.us, label %bb.h, !llvm.loop !410

.lr.ph.i.i.i67.us:                                ; preds = %bb.i, %_ZN2cv8MatShapeixEm.exit63.us
  store i32 0, ptr %i.cf, align 4, !tbaa !22
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !116 ; 2 uses
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph.i.i.i67.us.new

.lr.ph.i.i.i67.us.new:                            ; preds = %.lr.ph.i.i.i67.us, %.lr.ph.i.i.i67.us.new
  %indvars.iv.i.i.i69.us = phi i64 [ %indvars.iv.next.i.i.i71.us.3, %.lr.ph.i.i.i67.us.new ], [ 0, %.lr.ph.i.i.i67.us ] ; 6 uses
  %.010.i.i.i70.us = phi ptr [ %i.ed, %.lr.ph.i.i.i67.us.new ], [ %i.db, %.lr.ph.i.i.i67.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i67.us.new ], [ 0, %.lr.ph.i.i.i67.us ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i69.us
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !22
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i69.us
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !76
  %i.dh = mul i64 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %.010.i.i.i70.us, i64 %i.dh
  %indvars.iv.next.i.i.i71.us = or disjoint i64 %indvars.iv.i.i.i69.us, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.i71.us
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !22
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i71.us
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !76
  %i.do = mul i64 %i.dn, %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.do
  %indvars.iv.next.i.i.i71.us.1 = or disjoint i64 %indvars.iv.i.i.i69.us, 2 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.i71.us.1
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !22
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i71.us.1
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !76
  %i.dv = mul i64 %i.du, %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dv
  %indvars.iv.next.i.i.i71.us.2 = or disjoint i64 %indvars.iv.i.i.i69.us, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.i71.us.2
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !22
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i71.us.2
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !76
  %i.ec = mul i64 %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ec ; 3 uses
  %indvars.iv.next.i.i.i71.us.3 = add nuw nsw i64 %indvars.iv.i.i.i69.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us.unr-lcssa, label %.lr.ph.i.i.i67.us.new, !llvm.loop !406

_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us.unr-lcssa: ; preds = %.lr.ph.i.i.i67.us.new
  br i1 %lcmp.mod.not, label %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us.unr-lcssa, %.lr.ph.i.i.i67.us
  %indvars.iv.i.i.i69.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i67.us ], [ %indvars.iv.next.i.i.i71.us.3, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us.unr-lcssa ]
  %.010.i.i.i70.us.epil.init = phi ptr [ %i.db, %.lr.ph.i.i.i67.us ], [ %i.ed, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod141)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.i.i.i69.us.epil = phi i64 [ %indvars.iv.i.i.i69.us.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i71.us.epil, %bb.j ] ; 3 uses
  %.010.i.i.i70.us.epil = phi ptr [ %.010.i.i.i70.us.epil.init, %.epil.preheader ], [ %i.ek, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i69.us.epil
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !22
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i69.us.epil
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !76
  %i.ej = mul i64 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.i.i.i70.us.epil, i64 %i.ej ; 2 uses
  %indvars.iv.next.i.i.i71.us.epil = add nuw nsw i64 %indvars.iv.i.i.i69.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us, label %bb.j, !llvm.loop !411

_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us: ; preds = %bb.j, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us.unr-lcssa
  %.lcssa139 = phi ptr [ %i.ed, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us.unr-lcssa ], [ %i.ek, %bb.j ] ; 2 uses
  br i1 %i.ci, label %.lr.ph.i66.us.preheader, label %.loopexit86.us

.lr.ph.i66.us.preheader:                          ; preds = %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us
  br i1 %i.cn, label %.lr.ph.i66.us.epil.preheader, label %.lr.ph.i66.us

.lr.ph.i66.us:                                    ; preds = %.lr.ph.i66.us.preheader, %.lr.ph.i66.us
  %.01.i.us = phi ptr [ %i.es, %.lr.ph.i66.us ], [ %.lcssa139, %.lr.ph.i66.us.preheader ] ; 9 uses
  %niter147 = phi i32 [ %niter147.next.7, %.lr.ph.i66.us ], [ 0, %.lr.ph.i66.us.preheader ]
  store <2 x float> zeroinitializer, ptr %.01.i.us, align 4, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 92
  store <2 x float> zeroinitializer, ptr %i.el, align 4, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 184
  store <2 x float> zeroinitializer, ptr %i.em, align 4, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 276
  store <2 x float> zeroinitializer, ptr %i.en, align 4, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 368
  store <2 x float> zeroinitializer, ptr %i.eo, align 4, !tbaa !27
  %i.ep = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 460
  store <2 x float> zeroinitializer, ptr %i.ep, align 4, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 552
  store <2 x float> zeroinitializer, ptr %i.eq, align 4, !tbaa !27
  %i.er = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 644
  store <2 x float> zeroinitializer, ptr %i.er, align 4, !tbaa !27
  %i.es = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 736 ; 2 uses
  %niter147.next.7 = add nuw nsw i32 %niter147, 8 ; 2 uses
  %niter147.ncmp.7 = icmp eq i32 %niter147.next.7, %unroll_iter146
  br i1 %niter147.ncmp.7, label %.loopexit86.us.loopexit.unr-lcssa, label %.lr.ph.i66.us, !llvm.loop !412

.loopexit86.us.loopexit.unr-lcssa:                ; preds = %.lr.ph.i66.us
  br i1 %lcmp.mod144.not, label %.loopexit86.us, label %.lr.ph.i66.us.epil.preheader

.lr.ph.i66.us.epil.preheader:                     ; preds = %.loopexit86.us.loopexit.unr-lcssa, %.lr.ph.i66.us.preheader
  %.01.i.us.epil.init = phi ptr [ %.lcssa139, %.lr.ph.i66.us.preheader ], [ %i.es, %.loopexit86.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph.i66.us.epil

.lr.ph.i66.us.epil:                               ; preds = %.lr.ph.i66.us.epil, %.lr.ph.i66.us.epil.preheader
  %.01.i.us.epil = phi ptr [ %i.et, %.lr.ph.i66.us.epil ], [ %.01.i.us.epil.init, %.lr.ph.i66.us.epil.preheader ] ; 2 uses
  %epil.iter143 = phi i32 [ %epil.iter143.next, %.lr.ph.i66.us.epil ], [ 0, %.lr.ph.i66.us.epil.preheader ]
  store <2 x float> zeroinitializer, ptr %.01.i.us.epil, align 4, !tbaa !27
  %i.et = getelementptr inbounds nuw i8, ptr %.01.i.us.epil, i64 92
  %epil.iter143.next = add i32 %epil.iter143, 1   ; 2 uses
  %epil.iter143.cmp.not = icmp eq i32 %epil.iter143.next, %xtraiter142
  br i1 %epil.iter143.cmp.not, label %.loopexit86.us, label %.lr.ph.i66.us.epil, !llvm.loop !413

.loopexit86.us:                                   ; preds = %.loopexit86.us.loopexit.unr-lcssa, %.lr.ph.i66.us.epil, %_ZN2cv3Mat2atINS_3VecIhLi92EEEEERT_PKi.exit.i64.us
  store i32 0, ptr %i.cf, align 4, !tbaa !22
  %i.eu = add i32 %.03090.us, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.eu, %i.cc
  br i1 %exitcond.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.us, !llvm.loop !414

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit86.us, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bt) #30
  br label %.loopexit

.split.us:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc44 unwind label %bb.o

.noexc44:                                         ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #29
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc44
  unreachable

bb.l:                                             ; preds = %.noexc44
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %bb.l
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !25
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

.split94.us:                                      ; preds = %_ZN2cv8MatShapeixEm.exit54.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc60 unwind label %bb.o

.noexc60:                                         ; preds = %.split94.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc60
  unreachable

bb.n:                                             ; preds = %.noexc60
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.n
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !25
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

bb.o:                                             ; preds = %.split94.us, %.split.us
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

_ZNSt6vectorIiSaIiEED2Ev.exit74:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58
  %.pn = phi { ptr, i32 } [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42 ], [ %i.fh, %bb.o ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bt) #30
  br label %common.resume

.loopexit:                                        ; preds = %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi92EEEZNS_6dynafu13TSDFVolumeCPU5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", %.lr.ph.i.i.i.lr.ph, %bb.e, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !63
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !63
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_1
begin_hunk_2_@_ZN2cv3Mat12forEach_implINS_3VecIfLi4EEENS_6dynafu11PushNormalsEEEvRKT0_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

_ZN2cv8MatShapeixEm.exit19:                       ; preds = %bb.p
  %i.au = zext nneg i32 %i.al to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22
  %i.ax = sext i32 %i.aw to i64
  %i.ay = udiv i64 %i.aj, %i.ax
  %i.az = trunc i64 %i.ay to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i32 0, ptr %10, align 4, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN2cv3Mat12forEach_implINS_3VecIfLi4EEENS_6dynafu11PushNormalsEEEvRKT0_E21PixelOperationWrapper, i64 16), ptr %11, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.bb, align 8, !tbaa !422
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !425
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef -1.000000e+00)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %_ZN2cv8MatShapeixEm.exit19
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  ret void

bb.u:                                             ; preds = %_ZN2cv8MatShapeixEm.exit19
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEENS_6dynafu11PushNormalsEEEvRKT0_EN21PixelOperationWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEENS_6dynafu11PushNormalsEEEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %union.Index.75, align 4            ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !422  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !45
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.h = icmp ult i32 %i.f, %narrow.i
  br i1 %i.h, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !32     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !25
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit74 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 4 uses
  %i.s = icmp samesign ult i32 %i.d, 3
  br i1 %i.s, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !46     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = sext i32 %i.r to i64
  %.idx.i = shl nuw nsw i64 %i.y, 4
  %i.z = icmp sgt i32 %i.r, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.z, label %.lr.ph117.split.us.preheader, label %.loopexit

.lr.ph117.split.us.preheader:                     ; preds = %.lr.ph117
  %i.ah = sext i32 %i.t to i64
  br label %.lr.ph117.split.us

.lr.ph117.split.us:                               ; preds = %.lr.ph117.split.us.preheader, %_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEENS_6dynafu11PushNormalsEEEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us
  %indvars.iv135 = phi i64 [ %i.ah, %.lr.ph117.split.us.preheader ], [ %indvars.iv.next136, %_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEENS_6dynafu11PushNormalsEEEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ai = trunc nsw i64 %indvars.iv135 to i32
  store i32 %i.ai, ptr %6, align 4, !tbaa !22
  store i32 0, ptr %i.x, align 4, !tbaa !22
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !422 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !116 ; 3 uses
  %i.ao = icmp sgt i32 %i.al, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.us, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph117.split.us
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 128 ; 5 uses
  %wide.trip.count.i.i.i.us = zext nneg i32 %i.al to i64 ; 2 uses
  %xtraiter175 = and i64 %wide.trip.count.i.i.i.us, 3 ; 3 uses
  %i.aq = icmp ult i32 %i.al, 4
  br i1 %i.aq, label %.epil.preheader174, label %.lr.ph.i.i.i.us.new

.lr.ph.i.i.i.us.new:                              ; preds = %.lr.ph.i.i.i.us
  %unroll_iter180 = and i64 %wide.trip.count.i.i.i.us, 2147483644
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.us.new
  %indvars.iv.i.i.i.us = phi i64 [ 0, %.lr.ph.i.i.i.us.new ], [ %indvars.iv.next.i.i.i.us.3, %bb.f ] ; 6 uses
  %.010.i.i.i.us = phi ptr [ %i.an, %.lr.ph.i.i.i.us.new ], [ %i.bs, %bb.f ]
  %niter181 = phi i64 [ 0, %.lr.ph.i.i.i.us.new ], [ %niter181.next.3, %bb.f ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !76
  %i.aw = mul i64 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us, i64 %i.aw
  %indvars.iv.next.i.i.i.us = or disjoint i64 %indvars.iv.i.i.i.us, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !22
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.us
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !76
  %i.bd = mul i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bd
  %indvars.iv.next.i.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.i.us, 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.1
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.us.1
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !76
  %i.bk = mul i64 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk
  %indvars.iv.next.i.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.i.us, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.2
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !22
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.us.2
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !76
  %i.br = mul i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.br ; 3 uses
  %indvars.iv.next.i.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.i.us, 4 ; 2 uses
  %niter181.next.3 = add i64 %niter181, 4         ; 2 uses
  %niter181.ncmp.3 = icmp eq i64 %niter181.next.3, %unroll_iter180
  br i1 %niter181.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa, label %bb.f, !llvm.loop !406

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod177.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod177.not, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us, label %.epil.preheader174

.epil.preheader174:                               ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.i.us
  %indvars.iv.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %indvars.iv.next.i.i.i.us.3, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa ]
  %.010.i.i.i.us.epil.init = phi ptr [ %i.an, %.lr.ph.i.i.i.us ], [ %i.bs, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa ]
  %lcmp.mod179 = icmp ne i64 %xtraiter175, 0
  tail call void @llvm.assume(i1 %lcmp.mod179)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader174
  %indvars.iv.i.i.i.us.epil = phi i64 [ %indvars.iv.i.i.i.us.epil.init, %.epil.preheader174 ], [ %indvars.iv.next.i.i.i.us.epil, %bb.g ] ; 3 uses
  %.010.i.i.i.us.epil = phi ptr [ %.010.i.i.i.us.epil.init, %.epil.preheader174 ], [ %i.bz, %bb.g ]
  %epil.iter176 = phi i64 [ 0, %.epil.preheader174 ], [ %epil.iter176.next, %bb.g ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us.epil
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !22
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.us.epil
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !76
  %i.by = mul i64 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us.epil, i64 %i.by ; 2 uses
  %indvars.iv.next.i.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.i.us.epil, 1
  %epil.iter176.next = add i64 %epil.iter176, 1   ; 2 uses
  %epil.iter176.cmp.not = icmp eq i64 %epil.iter176.next, %xtraiter175
  br i1 %epil.iter176.cmp.not, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us, label %bb.g, !llvm.loop !426

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us:  ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa, %bb.g, %.lr.ph117.split.us
  %.0.lcssa.i.i.i.us = phi ptr [ %i.an, %.lr.ph117.split.us ], [ %i.bs, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa ], [ %i.bz, %bb.g ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.us, i64 %.idx.i
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2cv6dynafu11PushNormalsclERKNS_3VecIfLi4EEEPKi.exit.us, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %_ZNK2cv6dynafu11PushNormalsclERKNS_3VecIfLi4EEEPKi.exit.us ], [ 0, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us ] ; 2 uses
  %.06.i.us = phi ptr [ %i.cb, %_ZNK2cv6dynafu11PushNormalsclERKNS_3VecIfLi4EEEPKi.exit.us ], [ %.0.lcssa.i.i.i.us, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.us, i64 16 ; 2 uses
  %i.cc = load float, ptr %.06.i.us, align 4, !tbaa !27, !noalias !427 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.us, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !27, !noalias !427 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.us, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !27, !noalias !427
  %.fr.i.i.us = freeze float %i.cg                ; 3 uses
  %i.ch = fcmp uno float %i.cc, 0.000000e+00
  %spec.select.i.i.us = fcmp uno float %i.ce, %.fr.i.i.us
  %i.ci = select i1 %i.ch, i1 true, i1 %spec.select.i.i.us
  br i1 %i.ci, label %_ZNK2cv6dynafu11PushNormalsclERKNS_3VecIfLi4EEEPKi.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = load float, ptr %i.ac, align 8, !tbaa !27
  %i.ck = load float, ptr %i.ad, align 4, !tbaa !27
  %i.cl = fmul float %i.ce, %i.ck
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cc, float %i.cl)
  %i.cn = load float, ptr %i.ae, align 8, !tbaa !27
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %.fr.i.i.us, float %i.cm)
  %i.cp = load float, ptr %i.af, align 4, !tbaa !27
  %i.cq = fadd float %i.cp, %i.co
  %i.cr = load ptr, ptr %i.aa, align 8, !tbaa !430, !nonnull !114, !align !115 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !21 ; 2 uses
  %i.cu = load <8 x float>, ptr %i.ab, align 8, !tbaa !27 ; 4 uses
  %i.cv = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <8 x float> %i.cu, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cy = fmul <2 x float> %i.cw, %i.cx
  %i.cz = shufflevector <8 x float> %i.cu, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.da = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.db, <2 x float> %i.cy)
  %i.dd = shufflevector <8 x float> %i.cu, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.de = insertelement <2 x float> poison, float %.fr.i.i.us, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.df, <2 x float> %i.dc)
  %i.dh = shufflevector <8 x float> %i.cu, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.di = fadd <2 x float> %i.dh, %i.dg
  %i.dj = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.di, %i.dk
  %i.dm = fmul float %i.ct, %i.cq
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.dp = load float, ptr %i.do, align 8, !tbaa !27, !noalias !431
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !27, !noalias !431
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.du = load float, ptr %i.dt, align 8, !tbaa !27, !noalias !431
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cr, i64 68
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !27, !noalias !431
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !27, !noalias !431
  %i.dz = load <2 x float>, ptr %i.dn, align 8, !tbaa !27, !noalias !431 ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dq, align 8, !tbaa !27, !noalias !431 ; 2 uses
  %i.eb = tail call { <2 x float>, float } @_ZNK2cv6dynafu13TSDFVolumeCPU14getNormalVoxelENS_7Point3_IfEE(ptr noundef nonnull align 8 dereferenceable(376) %i.cr, <2 x float> %i.dl, float %i.dm) ; 2 uses
  %.fca.0.extract1.i.us = extractvalue { <2 x float>, float } %i.eb, 0 ; 4 uses
  %.fca.1.extract2.i.us = extractvalue { <2 x float>, float } %i.eb, 1 ; 2 uses
  %.sroa.036.0.vec.extract.i.us = extractelement <2 x float> %.fca.0.extract1.i.us, i64 0
  %.sroa.036.4.vec.extract.i.us = extractelement <2 x float> %.fca.0.extract1.i.us, i64 1
  %i.ec = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.ed = shufflevector <2 x float> %.fca.0.extract1.i.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ed, <2 x float> zeroinitializer)
  %i.ef = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 1, i32 3>
  %i.eg = shufflevector <2 x float> %.fca.0.extract1.i.us, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.eg, <2 x float> %i.ee)
  %i.ei = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.ds, i64 1
  %i.ek = insertelement <2 x float> poison, float %.fca.1.extract2.i.us, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.el, <2 x float> %i.eh)
  %i.en = tail call float @llvm.fmuladd.f32(float %i.du, float %.sroa.036.0.vec.extract.i.us, float 0.000000e+00)
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.dw, float %.sroa.036.4.vec.extract.i.us, float %i.en)
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.dy, float %.fca.1.extract2.i.us, float %i.eo)
  br label %_ZNK2cv6dynafu11PushNormalsclERKNS_3VecIfLi4EEEPKi.exit.us

_ZNK2cv6dynafu11PushNormalsclERKNS_3VecIfLi4EEEPKi.exit.us: ; preds = %bb.i, %bb.h
  %.sroa.043.0.i.us = phi <2 x float> [ splat (float +qnan), %bb.h ], [ %i.em, %bb.i ]
  %.sroa.746.0.i.us = phi float [ +qnan, %bb.h ], [ %i.ep, %bb.i ]
  %i.eq = load ptr, ptr %i.ag, align 8, !tbaa !436, !nonnull !114, !align !115 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !38
  %i.et = icmp slt i32 %i.es, 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !116
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = mul i64 %i.ex, %indvars.iv135
  %.sink.idx.i.i.us = select i1 %i.et, i64 0, i64 %i.ey
  %.sink.i.i.us = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.sink.idx.i.i.us
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.sink.i.i.us, i64 %indvars.iv132 ; 3 uses
  store <2 x float> %.sroa.043.0.i.us, ptr %i.ez, align 4
  %.sroa.5.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store float %.sroa.746.0.i.us, ptr %.sroa.5.0..sroa_idx.i.us, align 4
  %.sroa.635.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store float 0.000000e+00, ptr %.sroa.635.0..sroa_idx.i.us, align 4
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %i.fa = icmp ult ptr %i.cb, %i.ca
  br i1 %i.fa, label %bb.h, label %_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEENS_6dynafu11PushNormalsEEEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us, !llvm.loop !437

_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEENS_6dynafu11PushNormalsEEEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us: ; preds = %_ZNK2cv6dynafu11PushNormalsclERKNS_3VecIfLi4EEEPKi.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.fb = load i32, ptr %i.u, align 4, !tbaa !48
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next136, %i.fc
  br i1 %i.fd, label %.lr.ph117.split.us, label %.loopexit, !llvm.loop !438

bb.j:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.fe = zext nneg i32 %i.d to i64               ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 2                ; 4 uses
  %i.fg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #32 ; 15 uses
  store i32 0, ptr %i.fg, align 4, !tbaa !22
  %i.fh = getelementptr i8, ptr %i.fg, i64 4      ; 2 uses
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ff, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fh, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !22
  %i.fi = load i32, ptr %1, align 4, !tbaa !46    ; 3 uses
  %i.fj = add nsw i32 %i.fi, -1
  %i.fk = add nsw i32 %i.d, -2                    ; 2 uses
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fl ; 3 uses
  store i32 %i.fj, ptr %i.fm, align 4, !tbaa !22
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !48 ; 2 uses
  %i.fp = icmp slt i32 %i.fi, %i.fo
  br i1 %i.fp, label %.lr.ph113, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph113:                                        ; preds = %bb.j
  %i.fq = getelementptr [4 x i8], ptr %i.fg, i64 %i.fe
  %i.fr = getelementptr i8, ptr %i.fq, i64 -4     ; 4 uses
  %i.fs = icmp sgt i32 %i.r, 0
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ga = zext nneg i32 %i.fk to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ga
  br label %.lr.ph

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit107, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.ff) #30
  br label %.loopexit

.lr.ph:                                           ; preds = %.loopexit107, %.lr.ph113
  %i.gb = phi i32 [ %i.fo, %.lr.ph113 ], [ %i.mg, %.loopexit107 ]
  %.030111 = phi i32 [ %i.fi, %.lr.ph113 ], [ %i.mh, %.loopexit107 ]
  %i.gc = load i32, ptr %i.fm, align 4, !tbaa !22
  %i.gd = add nsw i32 %i.gc, 1
  store i32 %i.gd, ptr %i.fm, align 4, !tbaa !22
  %i.ge = load ptr, ptr %i.a, align 8, !tbaa !422 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 72 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 84
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN2cv8MatShapeixEm.exit62
  %i.gh = phi i32 [ %.pre, %.lr.ph ], [ %i.gx, %_ZN2cv8MatShapeixEm.exit62 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ga, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv8MatShapeixEm.exit62 ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv
  %i.gj = load i32, ptr %i.gf, align 4, !tbaa !45
  %narrow.i38 = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 1)
  %i.gk = zext nneg i32 %narrow.i38 to i64
  %i.gl = icmp ult i64 %indvars.iv, %i.gk
  br i1 %i.gl, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc43 unwind label %bb.s

.noexc43:                                         ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc43
  unreachable

bb.n:                                             ; preds = %.noexc43
  %i.gm = landingpad { ptr, i32 }
          cleanup
  %i.gn = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.n
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !25
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

bb.o:                                             ; preds = %bb.k
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !22 ; 2 uses
  %.not = icmp slt i32 %i.gh, %i.gt
  br i1 %.not, label %._crit_edge, label %_ZN2cv8MatShapeixEm.exit53

_ZN2cv8MatShapeixEm.exit53:                       ; preds = %bb.o
  %i.gu = sdiv i32 %i.gh, %i.gt
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !22
  %i.gx = add nsw i32 %i.gw, %i.gu                ; 2 uses
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !22
  %i.gy = load i32, ptr %i.gf, align 4, !tbaa !45
  %narrow.i54 = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 1)
  %i.gz = zext nneg i32 %narrow.i54 to i64
  %i.ha = icmp samesign ult i64 %indvars.iv, %i.gz
  br i1 %i.ha, label %_ZN2cv8MatShapeixEm.exit62, label %bb.p

bb.p:                                             ; preds = %_ZN2cv8MatShapeixEm.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc59 unwind label %bb.s

.noexc59:                                         ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #29
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.noexc59
  unreachable

bb.r:                                             ; preds = %.noexc59
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.r
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !25
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

_ZN2cv8MatShapeixEm.exit62:                       ; preds = %_ZN2cv8MatShapeixEm.exit53
  %i.hh = load i32, ptr %i.gs, align 4, !tbaa !22
  %i.hi = srem i32 %i.gh, %i.hh
  store i32 %i.hi, ptr %i.gi, align 4, !tbaa !22
  %.not168 = icmp eq i64 %indvars.iv, 0
  br i1 %.not168, label %._crit_edge, label %bb.k, !llvm.loop !439

bb.s:                                             ; preds = %bb.p, %bb.l
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

._crit_edge:                                      ; preds = %_ZN2cv8MatShapeixEm.exit62, %bb.o
  %.phi.trans.insert139 = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %.pre140 = load ptr, ptr %.phi.trans.insert139, align 8, !tbaa !116 ; 3 uses
  store i32 0, ptr %i.fr, align 4, !tbaa !22
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !38 ; 3 uses
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph.i.i.i66, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63

.lr.ph.i.i.i66:                                   ; preds = %._crit_edge
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ge, i64 128 ; 5 uses
  %wide.trip.count.i.i.i67 = zext nneg i32 %i.hl to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i67, 3 ; 3 uses
  %i.ho = icmp ult i32 %i.hl, 4
  br i1 %i.ho, label %.epil.preheader, label %.lr.ph.i.i.i66.new

.lr.ph.i.i.i66.new:                               ; preds = %.lr.ph.i.i.i66
  %unroll_iter = and i64 %wide.trip.count.i.i.i67, 2147483644
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.i66.new
  %indvars.iv.i.i.i68 = phi i64 [ 0, %.lr.ph.i.i.i66.new ], [ %indvars.iv.next.i.i.i70.3, %bb.t ] ; 6 uses
  %.010.i.i.i69 = phi ptr [ %.pre140, %.lr.ph.i.i.i66.new ], [ %i.iq, %bb.t ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i66.new ], [ %niter.next.3, %bb.t ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i.i.i68
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !22
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.i.i.i68
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !76
  %i.hu = mul i64 %i.ht, %i.hr
  %i.hv = getelementptr inbounds nuw i8, ptr %.010.i.i.i69, i64 %i.hu
  %indvars.iv.next.i.i.i70 = or disjoint i64 %indvars.iv.i.i.i68, 1 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next.i.i.i70
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !22
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.next.i.i.i70
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !76
  %i.ib = mul i64 %i.ia, %i.hy
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.ib
  %indvars.iv.next.i.i.i70.1 = or disjoint i64 %indvars.iv.i.i.i68, 2 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next.i.i.i70.1
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !22
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.next.i.i.i70.1
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !76
  %i.ii = mul i64 %i.ih, %i.if
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ii
  %indvars.iv.next.i.i.i70.2 = or disjoint i64 %indvars.iv.i.i.i68, 3 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next.i.i.i70.2
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !22
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.next.i.i.i70.2
  %i.io = load i64, ptr %i.in, align 8, !tbaa !76
  %i.ip = mul i64 %i.io, %i.im
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ip ; 3 uses
  %indvars.iv.next.i.i.i70.3 = add nuw nsw i64 %indvars.iv.i.i.i68, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.loopexit.unr-lcssa, label %bb.t, !llvm.loop !406

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.loopexit.unr-lcssa: ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.loopexit.unr-lcssa, %.lr.ph.i.i.i66
  %indvars.iv.i.i.i68.epil.init = phi i64 [ 0, %.lr.ph.i.i.i66 ], [ %indvars.iv.next.i.i.i70.3, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.loopexit.unr-lcssa ]
  %.010.i.i.i69.epil.init = phi ptr [ %.pre140, %.lr.ph.i.i.i66 ], [ %i.iq, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.loopexit.unr-lcssa ]
  %lcmp.mod173 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.i.i.i68.epil = phi i64 [ %indvars.iv.i.i.i68.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i70.epil, %bb.u ] ; 3 uses
  %.010.i.i.i69.epil = phi ptr [ %.010.i.i.i69.epil.init, %.epil.preheader ], [ %i.ix, %bb.u ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i.i.i68.epil
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !22
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.i.i.i68.epil
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !76
  %i.iw = mul i64 %i.iv, %i.it
  %i.ix = getelementptr inbounds nuw i8, ptr %.010.i.i.i69.epil, i64 %i.iw ; 2 uses
  %indvars.iv.next.i.i.i70.epil = add nuw nsw i64 %indvars.iv.i.i.i68.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63, label %bb.u, !llvm.loop !440

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63:   ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.loopexit.unr-lcssa, %bb.u, %._crit_edge
  %.0.lcssa.i.i.i64 = phi ptr [ %.pre140, %._crit_edge ], [ %i.iq, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.loopexit.unr-lcssa ], [ %i.ix, %bb.u ]
  br i1 %i.fs, label %.lr.ph.i65, label %.loopexit107

.lr.ph.i65:                                       ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63, %.noexc72
  %.011.i = phi ptr [ %i.mc, %.noexc72 ], [ %.0.lcssa.i.i.i64, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63 ] ; 4 uses
  %i.iy = load float, ptr %.011.i, align 4, !tbaa !27, !noalias !441 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !27, !noalias !441 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !27, !noalias !441
  %.fr.i.i75 = freeze float %i.jc                 ; 3 uses
  %i.jd = fcmp uno float %i.iy, 0.000000e+00
  %spec.select.i.i76 = fcmp uno float %i.ja, %.fr.i.i75
  %i.je = select i1 %i.jd, i1 true, i1 %spec.select.i.i76
  br i1 %i.je, label %.noexc72, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i65
  %i.jf = load float, ptr %i.fu, align 8, !tbaa !27
  %i.jg = load float, ptr %i.fv, align 4, !tbaa !27
  %i.jh = fmul float %i.ja, %i.jg
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.iy, float %i.jh)
  %i.jj = load float, ptr %i.fw, align 8, !tbaa !27
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.jj, float %.fr.i.i75, float %i.ji)
  %i.jl = load float, ptr %i.fx, align 4, !tbaa !27
  %i.jm = fadd float %i.jl, %i.jk
  %i.jn = load ptr, ptr %i.ft, align 8, !tbaa !430, !nonnull !114, !align !115 ; 9 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !21 ; 2 uses
  %i.jq = fmul float %i.jm, %i.jp
  %i.jr = load <8 x float>, ptr %i.fy, align 8, !tbaa !27 ; 4 uses
  %i.js = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = shufflevector <8 x float> %i.jr, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.jv = fmul <2 x float> %i.jt, %i.ju
  %i.jw = shufflevector <8 x float> %i.jr, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.jx = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.jy, <2 x float> %i.jv)
  %i.ka = shufflevector <8 x float> %i.jr, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.kb = insertelement <2 x float> poison, float %.fr.i.i75, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.kc, <2 x float> %i.jz)
  %i.ke = shufflevector <8 x float> %i.jr, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.kf = fadd <2 x float> %i.ke, %i.kd
  %i.kg = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = fmul <2 x float> %i.kf, %i.kh           ; 2 uses
  %.sroa.0.0.vec.insert.i27.i77 = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.kj = shufflevector <2 x float> %.sroa.0.0.vec.insert.i27.i77, <2 x float> %i.ki, <2 x i32> <i32 0, i32 2>
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.km = load float, ptr %i.kl, align 8, !tbaa !27, !noalias !444
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  %i.ko = load <2 x float>, ptr %i.kk, align 8, !tbaa !27, !noalias !444 ; 2 uses
  %i.kp = load <2 x float>, ptr %i.kn, align 8, !tbaa !27, !noalias !444 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !27, !noalias !444
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %i.kt = load float, ptr %i.ks, align 8, !tbaa !27, !noalias !444
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jn, i64 68
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !27, !noalias !444
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jn, i64 72
  %i.kx = load float, ptr %i.kw, align 8, !tbaa !27, !noalias !444
  %i.ky = extractelement <2 x float> %i.ki, i64 1
  %i.kz = invoke { <2 x float>, float } @_ZNK2cv6dynafu13TSDFVolumeCPU14getNormalVoxelENS_7Point3_IfEE(ptr noundef nonnull align 8 dereferenceable(376) %i.jn, <2 x float> %i.kj, float %i.ky)
          to label %.noexc94 unwind label %bb.w   ; 2 uses

.noexc94:                                         ; preds = %bb.v
  %.fca.0.extract1.i79 = extractvalue { <2 x float>, float } %i.kz, 0 ; 4 uses
  %.fca.1.extract2.i80 = extractvalue { <2 x float>, float } %i.kz, 1 ; 2 uses
  %.sroa.036.0.vec.extract.i81 = extractelement <2 x float> %.fca.0.extract1.i79, i64 0
  %.sroa.036.4.vec.extract.i82 = extractelement <2 x float> %.fca.0.extract1.i79, i64 1
  %i.la = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 0, i32 2>
  %i.lb = shufflevector <2 x float> %.fca.0.extract1.i79, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> %i.lb, <2 x float> zeroinitializer)
  %i.ld = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 1, i32 3>
  %i.le = shufflevector <2 x float> %.fca.0.extract1.i79, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ld, <2 x float> %i.le, <2 x float> %i.lc)
  %i.lg = insertelement <2 x float> poison, float %i.km, i64 0
  %i.lh = insertelement <2 x float> %i.lg, float %i.kr, i64 1
  %i.li = insertelement <2 x float> poison, float %.fca.1.extract2.i80, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.lj, <2 x float> %i.lf)
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.kt, float %.sroa.036.0.vec.extract.i81, float 0.000000e+00)
  %i.lm = tail call float @llvm.fmuladd.f32(float %i.kv, float %.sroa.036.4.vec.extract.i82, float %i.ll)
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.kx, float %.fca.1.extract2.i80, float %i.lm)
  br label %.noexc72

.noexc72:                                         ; preds = %.noexc94, %.lr.ph.i65
  %.sroa.043.0.i85 = phi <2 x float> [ splat (float +qnan), %.lr.ph.i65 ], [ %i.lk, %.noexc94 ]
  %.sroa.746.0.i86 = phi float [ +qnan, %.lr.ph.i65 ], [ %i.ln, %.noexc94 ]
  %i.lo = load ptr, ptr %i.fz, align 8, !tbaa !436, !nonnull !114, !align !115 ; 3 uses
  %i.lp = load i32, ptr %i.fg, align 4, !tbaa !22
  %i.lq = load i32, ptr %i.fh, align 4, !tbaa !22
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !38
  %i.lt = icmp slt i32 %i.ls, 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !116
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 128
  %i.lx = load i64, ptr %i.lw, align 8
  %i.ly = sext i32 %i.lp to i64
  %i.lz = mul i64 %i.lx, %i.ly
  %.sink.idx.i.i89 = select i1 %i.lt, i64 0, i64 %i.lz
  %.sink.i.i90 = getelementptr inbounds nuw i8, ptr %i.lv, i64 %.sink.idx.i.i89
  %i.ma = sext i32 %i.lq to i64
  %i.mb = getelementptr inbounds [16 x i8], ptr %.sink.i.i90, i64 %i.ma ; 3 uses
  store <2 x float> %.sroa.043.0.i85, ptr %i.mb, align 4
  %.sroa.5.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store float %.sroa.746.0.i86, ptr %.sroa.5.0..sroa_idx.i92, align 4
  %.sroa.635.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.mb, i64 12
  store float 0.000000e+00, ptr %.sroa.635.0..sroa_idx.i93, align 4
  %i.mc = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.md = load i32, ptr %i.fr, align 4, !tbaa !22
  %i.me = add nsw i32 %i.md, 1                    ; 2 uses
  store i32 %i.me, ptr %i.fr, align 4, !tbaa !22
  %i.mf = icmp slt i32 %i.me, %i.r
  br i1 %i.mf, label %.lr.ph.i65, label %.loopexit107.loopexit, !llvm.loop !449

.loopexit107.loopexit:                            ; preds = %.noexc72
  %.pre141 = load i32, ptr %i.fn, align 4, !tbaa !48
  br label %.loopexit107

.loopexit107:                                     ; preds = %.loopexit107.loopexit, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63
  %i.mg = phi i32 [ %.pre141, %.loopexit107.loopexit ], [ %i.gb, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63 ] ; 2 uses
  store i32 0, ptr %i.fr, align 4, !tbaa !22
  %i.mh = add nsw i32 %.030111, 1                 ; 2 uses
  %i.mi = icmp slt i32 %i.mh, %i.mg
  br i1 %i.mi, label %.lr.ph, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !450

bb.w:                                             ; preds = %bb.v
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

_ZNSt6vectorIiSaIiEED2Ev.exit74:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, %bb.w
  %.pn = phi { ptr, i32 } [ %i.mj, %bb.w ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41 ], [ %i.hj, %bb.s ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.ff) #30
  br label %common.resume

.loopexit:                                        ; preds = %_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEENS_6dynafu11PushNormalsEEEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us, %.lr.ph117, %bb.e, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu13TSDFVolumeCPUESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6dynafu13TSDFVolumeCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %i.a) #28, !inline_history !451
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_2
