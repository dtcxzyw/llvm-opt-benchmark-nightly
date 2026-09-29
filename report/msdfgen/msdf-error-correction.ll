Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/msdf-error-correction?download=true
inline.NumInlined: 211
inline.NumDeleted: 66
begin_hunk_0_@_ZN7msdfgen26msdfErrorCorrection_legacyERKNS_13BitmapSectionIfLi3EEERKNS_7Vector2E:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !54 ; 4 uses
  %i.fi = load float, ptr %i.fc, align 4, !tbaa !54 ; 2 uses
  %i.fj = load <2 x float>, ptr %i.ew, align 4, !tbaa !54 ; 2 uses
  %i.fk = load float, ptr %i.ff, align 4, !tbaa !54 ; 2 uses
  %i.fl = load <2 x float>, ptr %i.fa, align 4, !tbaa !54 ; 2 uses
  %i.fm = fsub <2 x float> %i.fl, %i.fj
  %i.fn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fm) ; 2 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 0 ; 2 uses
  %i.fp = extractelement <2 x float> %i.fn, i64 1 ; 2 uses
  %i.fq = fcmp olt float %i.fo, %i.fp
  %i.fr = extractelement <2 x float> %i.fl, i64 0 ; 2 uses
  %i.fs = extractelement <2 x float> %i.fj, i64 0 ; 2 uses
  br i1 %i.fq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi53.i108.us.i = phi float [ %i.fo, %bb.y ], [ %i.fp, %bb.x ] ; 2 uses
  %.051.i109.us.i = phi float [ %i.fi, %bb.y ], [ %i.fs, %bb.x ]
  %.049.i110.us.i = phi float [ %i.fs, %bb.y ], [ %i.fi, %bb.x ] ; 2 uses
  %.046.i111.us.i = phi float [ %i.fk, %bb.y ], [ %i.fr, %bb.x ] ; 4 uses
  %.045.i112.us.i = phi float [ %i.fr, %bb.y ], [ %i.fk, %bb.x ] ; 3 uses
  %i.ft = fsub float %i.fh, %i.fe
  %i.fu = tail call float @llvm.fabs.f32(float %i.ft) ; 3 uses
  %i.fv = fcmp olt float %.pre-phi53.i108.us.i, %i.fu
  br i1 %i.fv, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fw = fsub float %.046.i111.us.i, %.051.i109.us.i
  %i.fx = tail call float @llvm.fabs.f32(float %i.fw) ; 2 uses
  %i.fy = fcmp olt float %i.fx, %i.fu
  br i1 %i.fy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.pre-phi55.i113.us.i = phi float [ %i.fu, %bb.aa ], [ %i.fx, %bb.ab ], [ %.pre-phi53.i108.us.i, %bb.z ]
  %.048.i114.us.i = phi float [ %.049.i110.us.i, %bb.aa ], [ %.049.i110.us.i, %bb.ab ], [ %i.fe, %bb.z ]
  %.147.i115.us.i = phi float [ %.046.i111.us.i, %bb.aa ], [ %i.fh, %bb.ab ], [ %.046.i111.us.i, %bb.z ] ; 2 uses
  %.1.i116.us.i = phi float [ %i.fh, %bb.aa ], [ %.046.i111.us.i, %bb.ab ], [ %.045.i112.us.i, %bb.z ]
  %.0.i117.us.i = phi float [ %.045.i112.us.i, %bb.aa ], [ %.045.i112.us.i, %bb.ab ], [ %i.fh, %bb.z ] ; 2 uses
  %i.fz = fpext float %.pre-phi55.i113.us.i to double
  %i.ga = fcmp ugt double %i.fb, %i.fz
  br i1 %i.ga, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = fcmp oeq float %.147.i115.us.i, %.1.i116.us.i
  %i.gc = fcmp oeq float %.147.i115.us.i, %.0.i117.us.i
  %or.cond.i118.us.i = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond.i118.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i:   ; preds = %bb.ad
  %i.gd = fadd float %.048.i114.us.i, -5.000000e-01
  %i.ge = tail call float @llvm.fabs.f32(float %i.gd)
  %i.gf = fadd float %.0.i117.us.i, -5.000000e-01
  %i.gg = tail call float @llvm.fabs.f32(float %i.gf)
  %i.gh = fcmp ult float %i.ge, %i.gg
  br i1 %i.gh, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i
  %.sroa.0.0.insert.insert.i.us.i = add nuw nsw i64 %indvars.iv.i, %.sroa.2.0.insert.shift.i.us.i ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %.sroa.13.1315.us.i, %.sroa.25.1314.us.i
  br i1 %.not.i.i.us.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i64 %.sroa.0.0.insert.insert.i.us.i, ptr %.sroa.13.1315.us.i, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.13.1315.us.i, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

bb.ag:                                            ; preds = %bb.ae
  %i.gj = ptrtoint ptr %.sroa.13.1315.us.i to i64
  %i.gk = ptrtoint ptr %.sroa.0244.1316.us.i to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 4 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %.split.us.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i: ; preds = %bb.ag
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i.us.i, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = tail call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 3 uses
  %.not.i.i.i.i.us.i = icmp ne i64 %i.gr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.us.i)
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #9
          to label %.noexc120.us.i unwind label %.loopexit280.split.us.i ; 5 uses

.noexc120.us.i:                                   ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl
  store i64 %.sroa.0.0.insert.insert.i.us.i, ptr %i.gu, align 4
  %.not10.i.i.i.i.i.i.us.i = icmp eq ptr %.sroa.0244.1316.us.i, %.sroa.13.1315.us.i
  br i1 %.not10.i.i.i.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.i.us.i:                          ; preds = %.noexc120.us.i, %.lr.ph.i.i.i.i.i.i.us.i
  %.012.i.i.i.i.i.i.us.i = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i.i.us.i ], [ %i.gt, %.noexc120.us.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.us.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i.us.i ], [ %.sroa.0244.1316.us.i, %.noexc120.us.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.gv = load i64, ptr %.0911.i.i.i.i.i.i.us.i, align 4, !alias.scope !110, !noalias !109
  store i64 %i.gv, ptr %.012.i.i.i.i.i.i.us.i, align 4, !alias.scope !109, !noalias !110
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.us.i = icmp eq ptr %i.gw, %.sroa.13.1315.us.i
  br i1 %.not.i.i.i.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i, !llvm.loop !0

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.us.i, %.noexc120.us.i
  %.0.lcssa.i.i.i.i.i.i.us.i = phi ptr [ %i.gt, %.noexc120.us.i ], [ %i.gx, %.lr.ph.i.i.i.i.i.i.us.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.us.i, i64 8
  %.not.i23.i.i.i.us.i = icmp eq ptr %.sroa.0244.1316.us.i, null
  br i1 %.not.i23.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.1316.us.i, i64 noundef %i.gl) #11
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i: ; preds = %bb.ah, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i, %bb.af, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i, %bb.ad, %bb.ac, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i
  %.sroa.25.2.us.i = phi ptr [ %.sroa.25.1314.us.i, %bb.af ], [ %.sroa.25.1314.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.25.1314.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.gz, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.25.1314.us.i, %bb.ad ], [ %.sroa.25.1314.us.i, %bb.ac ] ; 3 uses
  %.sroa.13.2.us.i = phi ptr [ %i.gi, %bb.af ], [ %.sroa.13.1315.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.13.1315.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.gy, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.13.1315.us.i, %bb.ad ], [ %.sroa.13.1315.us.i, %bb.ac ] ; 5 uses
  %.sroa.0244.2.us.i = phi ptr [ %.sroa.0244.1316.us.i, %bb.af ], [ %.sroa.0244.1316.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.0244.1316.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.gt, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.0244.1316.us.i, %bb.ad ], [ %.sroa.0244.1316.us.i, %bb.ac ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !99

._crit_edge.us.i:                                 ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %.preheader278.i, label %.preheader279.us.i, !llvm.loop !100

.loopexit280.split.us.i:                          ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i
  %lpad.loopexit282.us.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.preheader278.i:                                  ; preds = %._crit_edge.us.i
  %.not335.i = icmp eq ptr %.sroa.0244.2.us.i, %.sroa.13.2.us.i
  br i1 %.not335.i, label %.preheader277.us.i.preheader, label %.lr.ph.i

.preheader277.us.i.preheader:                     ; preds = %bb.bp, %.preheader278.i
  %.sroa.13.3346.us.i.ph = phi ptr [ %.sroa.13.2.us.i, %.preheader278.i ], [ %.sroa.0244.2.us.i, %bb.bp ]
  br label %.preheader277.us.i

.lr.ph.i:                                         ; preds = %.preheader278.i
  %i.ha = load ptr, ptr %0, align 8, !tbaa !32
  %i.hb = load i32, ptr %i.g, align 8, !tbaa !108
  br label %bb.bp

.split.us.i:                                      ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc.i unwind label %.loopexit.split-lp281.i

.noexc.i:                                         ; preds = %.split.us.i
  unreachable

.loopexit.split-lp281.i:                          ; preds = %.split.us.i
  %lpad.loopexit.split-lp283.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.preheader277.us.i:                               ; preds = %.preheader277.us.i.preheader, %._crit_edge.us352.i
  %indvars.iv387.i = phi i64 [ %indvars.iv.next388.i, %._crit_edge.us352.i ], [ 0, %.preheader277.us.i.preheader ] ; 6 uses
  %.sroa.0244.3347.us.i = phi ptr [ %.sroa.0244.5.us.i, %._crit_edge.us352.i ], [ %.sroa.0244.2.us.i, %.preheader277.us.i.preheader ]
  %.sroa.13.3346.us.i = phi ptr [ %.sroa.13.5.us.i, %._crit_edge.us352.i ], [ %.sroa.13.3346.us.i.ph, %.preheader277.us.i.preheader ]
  %.sroa.25.3345.us.i = phi ptr [ %.sroa.25.5.us.i, %._crit_edge.us352.i ], [ %.sroa.25.2.us.i, %.preheader277.us.i.preheader ]
  %i.hc = icmp ne i64 %indvars.iv387.i, 0         ; 2 uses
  %i.hd = add nsw i64 %indvars.iv387.i, -1        ; 2 uses
  %i.he = icmp samesign ult i64 %indvars.iv387.i, %i.l ; 2 uses
  %indvars.iv.next388.i = add nuw nsw i64 %indvars.iv387.i, 1 ; 3 uses
  %.sroa.2.0.insert.shift.i171.us.i = shl nuw nsw i64 %indvars.iv387.i, 32
  %i.hf = trunc nuw nsw i64 %indvars.iv387.i to i32 ; 4 uses
  %i.hg = trunc nuw nsw i64 %indvars.iv.next388.i to i32 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, %.preheader277.us.i
  %indvars.iv382.i = phi i64 [ 0, %.preheader277.us.i ], [ %indvars.iv.next383.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.0244.4339.us.i = phi ptr [ %.sroa.0244.3347.us.i, %.preheader277.us.i ], [ %.sroa.0244.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.13.4338.us.i = phi ptr [ %.sroa.13.3346.us.i, %.preheader277.us.i ], [ %.sroa.13.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.25.4337.us.i = phi ptr [ %.sroa.25.3345.us.i, %.preheader277.us.i ], [ %.sroa.25.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 6 uses
  %i.hh = icmp ne i64 %indvars.iv382.i, 0         ; 2 uses
  %or.cond.us.i = and i1 %i.hc, %i.hh
  br i1 %or.cond.us.i, label %bb.aj, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i

bb.aj:                                            ; preds = %bb.ai
  %i.hi = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.hj = load i32, ptr %i.g, align 8, !tbaa !108 ; 2 uses
  %i.hk = mul nsw i32 %i.hj, %i.hf
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.hl
  %.idx429.i = mul nuw nsw i64 %indvars.iv382.i, 12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx429.i ; 3 uses
  %i.ho = sext i32 %i.hj to i64
  %i.hp = mul nsw i64 %i.hd, %i.ho
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.hp
  %i.hr = mul nuw nsw i64 %indvars.iv382.i, 3
  %i.hs = add nuw nsw i64 %i.hr, 4294967293
  %i.ht = and i64 %i.hs, 4294967295
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ht ; 3 uses
  %i.hv = load double, ptr %1, align 8, !tbaa !52
  %i.hw = load double, ptr %i.h, align 8, !tbaa !55
  %i.hx = fadd double %i.hv, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !54 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.id = load float, ptr %i.ic, align 4, !tbaa !54 ; 4 uses
  %i.ie = load float, ptr %i.hy, align 4, !tbaa !54 ; 2 uses
  %i.if = load <2 x float>, ptr %i.hn, align 4, !tbaa !54 ; 2 uses
  %i.ig = load float, ptr %i.ib, align 4, !tbaa !54 ; 2 uses
  %i.ih = load <2 x float>, ptr %i.hu, align 4, !tbaa !54 ; 2 uses
  %i.ii = fsub <2 x float> %i.ih, %i.if
  %i.ij = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ii) ; 2 uses
  %i.ik = extractelement <2 x float> %i.ij, i64 0 ; 2 uses
  %i.il = extractelement <2 x float> %i.ij, i64 1 ; 2 uses
  %i.im = fcmp olt float %i.ik, %i.il
  %i.in = extractelement <2 x float> %i.ih, i64 0 ; 2 uses
  %i.io = extractelement <2 x float> %i.if, i64 0 ; 2 uses
  br i1 %i.im, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre-phi53.i122.us.i = phi float [ %i.ik, %bb.ak ], [ %i.il, %bb.aj ] ; 2 uses
  %.051.i123.us.i = phi float [ %i.ie, %bb.ak ], [ %i.io, %bb.aj ]
  %.049.i124.us.i = phi float [ %i.io, %bb.ak ], [ %i.ie, %bb.aj ] ; 2 uses
  %.046.i125.us.i = phi float [ %i.ig, %bb.ak ], [ %i.in, %bb.aj ] ; 4 uses
  %.045.i126.us.i = phi float [ %i.in, %bb.ak ], [ %i.ig, %bb.aj ] ; 3 uses
  %i.ip = fsub float %i.id, %i.ia
  %i.iq = tail call float @llvm.fabs.f32(float %i.ip) ; 3 uses
  %i.ir = fcmp olt float %.pre-phi53.i122.us.i, %i.iq
  br i1 %i.ir, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.is = fsub float %.046.i125.us.i, %.051.i123.us.i
  %i.it = tail call float @llvm.fabs.f32(float %i.is) ; 2 uses
  %i.iu = fcmp olt float %i.it, %i.iq
  br i1 %i.iu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.pre-phi55.i127.us.i = phi float [ %i.iq, %bb.am ], [ %i.it, %bb.an ], [ %.pre-phi53.i122.us.i, %bb.al ]
  %.048.i128.us.i = phi float [ %.049.i124.us.i, %bb.am ], [ %.049.i124.us.i, %bb.an ], [ %i.ia, %bb.al ]
  %.147.i129.us.i = phi float [ %.046.i125.us.i, %bb.am ], [ %i.id, %bb.an ], [ %.046.i125.us.i, %bb.al ] ; 2 uses
  %.1.i130.us.i = phi float [ %i.id, %bb.am ], [ %.046.i125.us.i, %bb.an ], [ %.045.i126.us.i, %bb.al ]
  %.0.i131.us.i = phi float [ %.045.i126.us.i, %bb.am ], [ %.045.i126.us.i, %bb.an ], [ %i.id, %bb.al ] ; 2 uses
  %i.iv = fpext float %.pre-phi55.i127.us.i to double
  %i.iw = fcmp ugt double %i.hx, %i.iv
  br i1 %i.iw, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ix = fcmp oeq float %.147.i129.us.i, %.1.i130.us.i
  %i.iy = fcmp oeq float %.147.i129.us.i, %.0.i131.us.i
  %or.cond.i132.us.i = select i1 %i.ix, i1 %i.iy, i1 false
  br i1 %or.cond.i132.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i:   ; preds = %bb.ap
  %i.iz = fadd float %.048.i128.us.i, -5.000000e-01
  %i.ja = tail call float @llvm.fabs.f32(float %i.iz)
  %i.jb = fadd float %.0.i131.us.i, -5.000000e-01
  %i.jc = tail call float @llvm.fabs.f32(float %i.jb)
  %i.jd = fcmp ult float %i.ja, %i.jc
  br i1 %i.jd, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i, %bb.ap, %bb.ao, %bb.ai
  %i.je = icmp samesign ult i64 %indvars.iv382.i, %i.k ; 2 uses
  %or.cond3.us.i = and i1 %i.hc, %i.je
  br i1 %or.cond3.us.i, label %bb.aq, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i

bb.aq:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i
  %i.jf = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.jg = load i32, ptr %i.g, align 8, !tbaa !108 ; 2 uses
  %i.jh = mul nsw i32 %i.jg, %i.hf
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.ji
  %.idx430.i = mul nuw nsw i64 %indvars.iv382.i, 12
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.idx430.i ; 3 uses
  %i.jl = sext i32 %i.jg to i64
  %i.jm = mul nsw i64 %i.hd, %i.jl
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jm
  %i.jo = mul i64 %indvars.iv382.i, 12884901888
  %sext431.i = add i64 %i.jo, 12884901888
  %i.jp = ashr exact i64 %sext431.i, 30
  %i.jq = getelementptr inbounds i8, ptr %i.jn, i64 %i.jp ; 3 uses
  %i.jr = load double, ptr %1, align 8, !tbaa !52
  %i.js = load double, ptr %i.h, align 8, !tbaa !55
  %i.jt = fadd double %i.jr, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !54 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !54 ; 4 uses
  %i.ka = load float, ptr %i.ju, align 4, !tbaa !54 ; 2 uses
  %i.kb = load <2 x float>, ptr %i.jk, align 4, !tbaa !54 ; 2 uses
  %i.kc = load float, ptr %i.jx, align 4, !tbaa !54 ; 2 uses
  %i.kd = load <2 x float>, ptr %i.jq, align 4, !tbaa !54 ; 2 uses
  %i.ke = fsub <2 x float> %i.kd, %i.kb
  %i.kf = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ke) ; 2 uses
  %i.kg = extractelement <2 x float> %i.kf, i64 0 ; 2 uses
  %i.kh = extractelement <2 x float> %i.kf, i64 1 ; 2 uses
  %i.ki = fcmp olt float %i.kg, %i.kh
  %i.kj = extractelement <2 x float> %i.kd, i64 0 ; 2 uses
  %i.kk = extractelement <2 x float> %i.kb, i64 0 ; 2 uses
  br i1 %i.ki, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pre-phi53.i134.us.i = phi float [ %i.kg, %bb.ar ], [ %i.kh, %bb.aq ] ; 2 uses
  %.051.i135.us.i = phi float [ %i.ka, %bb.ar ], [ %i.kk, %bb.aq ]
  %.049.i136.us.i = phi float [ %i.kk, %bb.ar ], [ %i.ka, %bb.aq ] ; 2 uses
  %.046.i137.us.i = phi float [ %i.kc, %bb.ar ], [ %i.kj, %bb.aq ] ; 4 uses
  %.045.i138.us.i = phi float [ %i.kj, %bb.ar ], [ %i.kc, %bb.aq ] ; 3 uses
  %i.kl = fsub float %i.jz, %i.jw
  %i.km = tail call float @llvm.fabs.f32(float %i.kl) ; 3 uses
  %i.kn = fcmp olt float %.pre-phi53.i134.us.i, %i.km
  br i1 %i.kn, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ko = fsub float %.046.i137.us.i, %.051.i135.us.i
  %i.kp = tail call float @llvm.fabs.f32(float %i.ko) ; 2 uses
  %i.kq = fcmp olt float %i.kp, %i.km
  br i1 %i.kq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.pre-phi55.i139.us.i = phi float [ %i.km, %bb.at ], [ %i.kp, %bb.au ], [ %.pre-phi53.i134.us.i, %bb.as ]
  %.048.i140.us.i = phi float [ %.049.i136.us.i, %bb.at ], [ %.049.i136.us.i, %bb.au ], [ %i.jw, %bb.as ]
  %.147.i141.us.i = phi float [ %.046.i137.us.i, %bb.at ], [ %i.jz, %bb.au ], [ %.046.i137.us.i, %bb.as ] ; 2 uses
  %.1.i142.us.i = phi float [ %i.jz, %bb.at ], [ %.046.i137.us.i, %bb.au ], [ %.045.i138.us.i, %bb.as ]
  %.0.i143.us.i = phi float [ %.045.i138.us.i, %bb.at ], [ %.045.i138.us.i, %bb.au ], [ %i.jz, %bb.as ] ; 2 uses
  %i.kr = fpext float %.pre-phi55.i139.us.i to double
  %i.ks = fcmp ugt double %i.jt, %i.kr
  br i1 %i.ks, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kt = fcmp oeq float %.147.i141.us.i, %.1.i142.us.i
  %i.ku = fcmp oeq float %.147.i141.us.i, %.0.i143.us.i
  %or.cond.i144.us.i = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %or.cond.i144.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i:   ; preds = %bb.aw
  %i.kv = fadd float %.048.i140.us.i, -5.000000e-01
  %i.kw = tail call float @llvm.fabs.f32(float %i.kv)
  %i.kx = fadd float %.0.i143.us.i, -5.000000e-01
  %i.ky = tail call float @llvm.fabs.f32(float %i.kx)
  %i.kz = fcmp ult float %i.kw, %i.ky
  br i1 %i.kz, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i, %bb.aw, %bb.av, %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i
  %or.cond271.us.i = select i1 %i.hh, i1 %i.he, i1 false
  br i1 %or.cond271.us.i, label %bb.ax, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i

bb.ax:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i
  %i.la = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.lb = load i32, ptr %i.g, align 8, !tbaa !108 ; 2 uses
  %i.lc = mul nsw i32 %i.lb, %i.hf
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.ld
  %.idx432.i = mul nuw nsw i64 %indvars.iv382.i, 12
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %.idx432.i ; 3 uses
  %i.lg = mul nsw i32 %i.lb, %i.hg
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.lh
  %i.lj = mul nuw nsw i64 %indvars.iv382.i, 3
  %i.lk = add nuw nsw i64 %i.lj, 4294967293
  %i.ll = and i64 %i.lk, 4294967295
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.ll ; 3 uses
  %i.ln = load double, ptr %1, align 8, !tbaa !52
  %i.lo = load double, ptr %i.h, align 8, !tbaa !55
  %i.lp = fadd double %i.ln, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !54 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !54 ; 4 uses
  %i.lw = load float, ptr %i.lq, align 4, !tbaa !54 ; 2 uses
  %i.lx = load <2 x float>, ptr %i.lf, align 4, !tbaa !54 ; 2 uses
  %i.ly = load float, ptr %i.lt, align 4, !tbaa !54 ; 2 uses
  %i.lz = load <2 x float>, ptr %i.lm, align 4, !tbaa !54 ; 2 uses
  %i.ma = fsub <2 x float> %i.lz, %i.lx
  %i.mb = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ma) ; 2 uses
  %i.mc = extractelement <2 x float> %i.mb, i64 0 ; 2 uses
  %i.md = extractelement <2 x float> %i.mb, i64 1 ; 2 uses
  %i.me = fcmp olt float %i.mc, %i.md
  %i.mf = extractelement <2 x float> %i.lz, i64 0 ; 2 uses
  %i.mg = extractelement <2 x float> %i.lx, i64 0 ; 2 uses
  br i1 %i.me, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pre-phi53.i146.us.i = phi float [ %i.mc, %bb.ay ], [ %i.md, %bb.ax ] ; 2 uses
  %.051.i147.us.i = phi float [ %i.lw, %bb.ay ], [ %i.mg, %bb.ax ]
  %.049.i148.us.i = phi float [ %i.mg, %bb.ay ], [ %i.lw, %bb.ax ] ; 2 uses
  %.046.i149.us.i = phi float [ %i.ly, %bb.ay ], [ %i.mf, %bb.ax ] ; 4 uses
  %.045.i150.us.i = phi float [ %i.mf, %bb.ay ], [ %i.ly, %bb.ax ] ; 3 uses
  %i.mh = fsub float %i.lv, %i.ls
  %i.mi = tail call float @llvm.fabs.f32(float %i.mh) ; 3 uses
  %i.mj = fcmp olt float %.pre-phi53.i146.us.i, %i.mi
  br i1 %i.mj, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.mk = fsub float %.046.i149.us.i, %.051.i147.us.i
  %i.ml = tail call float @llvm.fabs.f32(float %i.mk) ; 2 uses
  %i.mm = fcmp olt float %i.ml, %i.mi
  br i1 %i.mm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.pre-phi55.i151.us.i = phi float [ %i.mi, %bb.ba ], [ %i.ml, %bb.bb ], [ %.pre-phi53.i146.us.i, %bb.az ]
  %.048.i152.us.i = phi float [ %.049.i148.us.i, %bb.ba ], [ %.049.i148.us.i, %bb.bb ], [ %i.ls, %bb.az ]
  %.147.i153.us.i = phi float [ %.046.i149.us.i, %bb.ba ], [ %i.lv, %bb.bb ], [ %.046.i149.us.i, %bb.az ] ; 2 uses
  %.1.i154.us.i = phi float [ %i.lv, %bb.ba ], [ %.046.i149.us.i, %bb.bb ], [ %.045.i150.us.i, %bb.az ]
  %.0.i155.us.i = phi float [ %.045.i150.us.i, %bb.ba ], [ %.045.i150.us.i, %bb.bb ], [ %i.lv, %bb.az ] ; 2 uses
  %i.mn = fpext float %.pre-phi55.i151.us.i to double
  %i.mo = fcmp ugt double %i.lp, %i.mn
  br i1 %i.mo, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mp = fcmp oeq float %.147.i153.us.i, %.1.i154.us.i
  %i.mq = fcmp oeq float %.147.i153.us.i, %.0.i155.us.i
  %or.cond.i156.us.i = select i1 %i.mp, i1 %i.mq, i1 false
  br i1 %or.cond.i156.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i:   ; preds = %bb.bd
  %i.mr = fadd float %.048.i152.us.i, -5.000000e-01
  %i.ms = tail call float @llvm.fabs.f32(float %i.mr)
  %i.mt = fadd float %.0.i155.us.i, -5.000000e-01
  %i.mu = tail call float @llvm.fabs.f32(float %i.mt)
  %i.mv = fcmp ult float %i.ms, %i.mu
  br i1 %i.mv, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i, %bb.bd, %bb.bc, %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i
  %or.cond273.us.i = select i1 %i.je, i1 %i.he, i1 false
  br i1 %or.cond273.us.i, label %bb.be, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

bb.be:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i
  %i.mw = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.mx = load i32, ptr %i.g, align 8, !tbaa !108 ; 2 uses
  %i.my = mul nsw i32 %i.mx, %i.hf
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.mz
  %.idx433.i = mul nuw nsw i64 %indvars.iv382.i, 12
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %.idx433.i ; 3 uses
  %i.nc = mul nsw i32 %i.mx, %i.hg
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.nd
  %i.nf = mul i64 %indvars.iv382.i, 12884901888
  %sext434.i = add i64 %i.nf, 12884901888
  %i.ng = ashr exact i64 %sext434.i, 30
  %i.nh = getelementptr inbounds i8, ptr %i.ne, i64 %i.ng ; 3 uses
  %i.ni = load double, ptr %1, align 8, !tbaa !52
  %i.nj = load double, ptr %i.h, align 8, !tbaa !55
  %i.nk = fadd double %i.ni, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !54 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nq = load float, ptr %i.np, align 4, !tbaa !54 ; 4 uses
  %i.nr = load float, ptr %i.nl, align 4, !tbaa !54 ; 2 uses
  %i.ns = load <2 x float>, ptr %i.nb, align 4, !tbaa !54 ; 2 uses
  %i.nt = load float, ptr %i.no, align 4, !tbaa !54 ; 2 uses
  %i.nu = load <2 x float>, ptr %i.nh, align 4, !tbaa !54 ; 2 uses
  %i.nv = fsub <2 x float> %i.nu, %i.ns
  %i.nw = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.nv) ; 2 uses
  %i.nx = extractelement <2 x float> %i.nw, i64 0 ; 2 uses
  %i.ny = extractelement <2 x float> %i.nw, i64 1 ; 2 uses
  %i.nz = fcmp olt float %i.nx, %i.ny
  %i.oa = extractelement <2 x float> %i.nu, i64 0 ; 2 uses
  %i.ob = extractelement <2 x float> %i.ns, i64 0 ; 2 uses
  br i1 %i.nz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pre-phi53.i158.us.i = phi float [ %i.nx, %bb.bf ], [ %i.ny, %bb.be ] ; 2 uses
  %.051.i159.us.i = phi float [ %i.nr, %bb.bf ], [ %i.ob, %bb.be ]
  %.049.i160.us.i = phi float [ %i.ob, %bb.bf ], [ %i.nr, %bb.be ] ; 2 uses
  %.046.i161.us.i = phi float [ %i.nt, %bb.bf ], [ %i.oa, %bb.be ] ; 4 uses
  %.045.i162.us.i = phi float [ %i.oa, %bb.bf ], [ %i.nt, %bb.be ] ; 3 uses
  %i.oc = fsub float %i.nq, %i.nn
  %i.od = tail call float @llvm.fabs.f32(float %i.oc) ; 3 uses
  %i.oe = fcmp olt float %.pre-phi53.i158.us.i, %i.od
  br i1 %i.oe, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.of = fsub float %.046.i161.us.i, %.051.i159.us.i
  %i.og = tail call float @llvm.fabs.f32(float %i.of) ; 2 uses
  %i.oh = fcmp olt float %i.og, %i.od
  br i1 %i.oh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pre-phi55.i163.us.i = phi float [ %i.od, %bb.bh ], [ %i.og, %bb.bi ], [ %.pre-phi53.i158.us.i, %bb.bg ]
  %.048.i164.us.i = phi float [ %.049.i160.us.i, %bb.bh ], [ %.049.i160.us.i, %bb.bi ], [ %i.nn, %bb.bg ]
  %.147.i165.us.i = phi float [ %.046.i161.us.i, %bb.bh ], [ %i.nq, %bb.bi ], [ %.046.i161.us.i, %bb.bg ] ; 2 uses
  %.1.i166.us.i = phi float [ %i.nq, %bb.bh ], [ %.046.i161.us.i, %bb.bi ], [ %.045.i162.us.i, %bb.bg ]
  %.0.i167.us.i = phi float [ %.045.i162.us.i, %bb.bh ], [ %.045.i162.us.i, %bb.bi ], [ %i.nq, %bb.bg ] ; 2 uses
  %i.oi = fpext float %.pre-phi55.i163.us.i to double
  %i.oj = fcmp ugt double %i.nk, %i.oi
  br i1 %i.oj, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ok = fcmp oeq float %.147.i165.us.i, %.1.i166.us.i
  %i.ol = fcmp oeq float %.147.i165.us.i, %.0.i167.us.i
  %or.cond.i168.us.i = select i1 %i.ok, i1 %i.ol, i1 false
  br i1 %or.cond.i168.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i:   ; preds = %bb.bk
  %i.om = fadd float %.048.i164.us.i, -5.000000e-01
  %i.on = tail call float @llvm.fabs.f32(float %i.om)
  %i.oo = fadd float %.0.i167.us.i, -5.000000e-01
  %i.op = tail call float @llvm.fabs.f32(float %i.oo)
  %i.oq = fcmp ult float %i.on, %i.op
  br i1 %i.oq, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i
  %.sroa.0.0.insert.insert.i173.us.i = add nuw nsw i64 %indvars.iv382.i, %.sroa.2.0.insert.shift.i171.us.i ; 2 uses
  %.not.i.i174.us.i = icmp eq ptr %.sroa.13.4338.us.i, %.sroa.25.4337.us.i
  br i1 %.not.i.i174.us.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i64 %.sroa.0.0.insert.insert.i173.us.i, ptr %.sroa.13.4338.us.i, align 4
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.13.4338.us.i, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

bb.bn:                                            ; preds = %bb.bl
  %i.os = ptrtoint ptr %.sroa.13.4338.us.i to i64
  %i.ot = ptrtoint ptr %.sroa.0244.4339.us.i to i64
  %i.ou = sub i64 %i.os, %i.ot                    ; 4 uses
  %i.ov = icmp eq i64 %i.ou, 9223372036854775800
  br i1 %i.ov, label %.split.us354.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i: ; preds = %bb.bn
  %i.ow = ashr exact i64 %i.ou, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i176.us.i = tail call i64 @llvm.umax.i64(i64 %i.ow, i64 1)
  %i.ox = add nsw i64 %.sroa.speculated.i.i.i.i176.us.i, %i.ow ; 2 uses
  %i.oy = icmp ult i64 %i.ox, %i.ow
  %i.oz = tail call i64 @llvm.umin.i64(i64 %i.ox, i64 1152921504606846975)
  %i.pa = select i1 %i.oy, i64 1152921504606846975, i64 %i.oz ; 3 uses
  %.not.i.i.i.i177.us.i = icmp ne i64 %i.pa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i177.us.i)
  %i.pb = shl nuw nsw i64 %i.pa, 3
  %i.pc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pb) #9
          to label %.noexc188.us.i unwind label %.loopexit.split.us.i ; 5 uses

.noexc188.us.i:                                   ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.ou
  store i64 %.sroa.0.0.insert.insert.i173.us.i, ptr %i.pd, align 4
  %.not10.i.i.i.i.i.i178.us.i = icmp eq ptr %.sroa.0244.4339.us.i, %.sroa.13.4338.us.i
  br i1 %.not10.i.i.i.i.i.i178.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i, label %.lr.ph.i.i.i.i.i.i179.us.i

.lr.ph.i.i.i.i.i.i179.us.i:                       ; preds = %.noexc188.us.i, %.lr.ph.i.i.i.i.i.i179.us.i
  %.012.i.i.i.i.i.i180.us.i = phi ptr [ %i.pg, %.lr.ph.i.i.i.i.i.i179.us.i ], [ %i.pc, %.noexc188.us.i ] ; 2 uses
  %.0911.i.i.i.i.i.i181.us.i = phi ptr [ %i.pf, %.lr.ph.i.i.i.i.i.i179.us.i ], [ %.sroa.0244.4339.us.i, %.noexc188.us.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
end_hunk_0
begin_hunk_1_@_ZN7msdfgen26msdfErrorCorrection_legacyERKNS_13BitmapSectionIfLi4EEERKNS_7Vector2E:bb.a
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !54 ; 4 uses
  %i.fk = load float, ptr %i.fe, align 4, !tbaa !54 ; 2 uses
  %i.fl = load <2 x float>, ptr %i.ey, align 4, !tbaa !54 ; 2 uses
  %i.fm = load float, ptr %i.fh, align 4, !tbaa !54 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.fc, align 4, !tbaa !54 ; 2 uses
  %i.fo = fsub <2 x float> %i.fn, %i.fl
  %i.fp = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fo) ; 2 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 0 ; 2 uses
  %i.fr = extractelement <2 x float> %i.fp, i64 1 ; 2 uses
  %i.fs = fcmp olt float %i.fq, %i.fr
  %i.ft = extractelement <2 x float> %i.fn, i64 0 ; 2 uses
  %i.fu = extractelement <2 x float> %i.fl, i64 0 ; 2 uses
  br i1 %i.fs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi53.i108.us.i = phi float [ %i.fq, %bb.y ], [ %i.fr, %bb.x ] ; 2 uses
  %.051.i109.us.i = phi float [ %i.fk, %bb.y ], [ %i.fu, %bb.x ]
  %.049.i110.us.i = phi float [ %i.fu, %bb.y ], [ %i.fk, %bb.x ] ; 2 uses
  %.046.i111.us.i = phi float [ %i.fm, %bb.y ], [ %i.ft, %bb.x ] ; 4 uses
  %.045.i112.us.i = phi float [ %i.ft, %bb.y ], [ %i.fm, %bb.x ] ; 3 uses
  %i.fv = fsub float %i.fj, %i.fg
  %i.fw = tail call float @llvm.fabs.f32(float %i.fv) ; 3 uses
  %i.fx = fcmp olt float %.pre-phi53.i108.us.i, %i.fw
  br i1 %i.fx, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fy = fsub float %.046.i111.us.i, %.051.i109.us.i
  %i.fz = tail call float @llvm.fabs.f32(float %i.fy) ; 2 uses
  %i.ga = fcmp olt float %i.fz, %i.fw
  br i1 %i.ga, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.pre-phi55.i113.us.i = phi float [ %i.fw, %bb.aa ], [ %i.fz, %bb.ab ], [ %.pre-phi53.i108.us.i, %bb.z ]
  %.048.i114.us.i = phi float [ %.049.i110.us.i, %bb.aa ], [ %.049.i110.us.i, %bb.ab ], [ %i.fg, %bb.z ]
  %.147.i115.us.i = phi float [ %.046.i111.us.i, %bb.aa ], [ %i.fj, %bb.ab ], [ %.046.i111.us.i, %bb.z ] ; 2 uses
  %.1.i116.us.i = phi float [ %i.fj, %bb.aa ], [ %.046.i111.us.i, %bb.ab ], [ %.045.i112.us.i, %bb.z ]
  %.0.i117.us.i = phi float [ %.045.i112.us.i, %bb.aa ], [ %.045.i112.us.i, %bb.ab ], [ %i.fj, %bb.z ] ; 2 uses
  %i.gb = fpext float %.pre-phi55.i113.us.i to double
  %i.gc = fcmp ugt double %i.fd, %i.gb
  br i1 %i.gc, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gd = fcmp oeq float %.147.i115.us.i, %.1.i116.us.i
  %i.ge = fcmp oeq float %.147.i115.us.i, %.0.i117.us.i
  %or.cond.i118.us.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i118.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i:   ; preds = %bb.ad
  %i.gf = fadd float %.048.i114.us.i, -5.000000e-01
  %i.gg = tail call float @llvm.fabs.f32(float %i.gf)
  %i.gh = fadd float %.0.i117.us.i, -5.000000e-01
  %i.gi = tail call float @llvm.fabs.f32(float %i.gh)
  %i.gj = fcmp ult float %i.gg, %i.gi
  br i1 %i.gj, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i
  %.sroa.0.0.insert.insert.i.us.i = add nuw nsw i64 %indvars.iv.i, %.sroa.2.0.insert.shift.i.us.i ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %.sroa.13.1315.us.i, %.sroa.25.1314.us.i
  br i1 %.not.i.i.us.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i64 %.sroa.0.0.insert.insert.i.us.i, ptr %.sroa.13.1315.us.i, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.13.1315.us.i, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

bb.ag:                                            ; preds = %bb.ae
  %i.gl = ptrtoint ptr %.sroa.13.1315.us.i to i64
  %i.gm = ptrtoint ptr %.sroa.0244.1316.us.i to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 4 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %.split.us.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i: ; preds = %bb.ag
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i.i.us.i, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 3 uses
  %.not.i.i.i.i.us.i = icmp ne i64 %i.gt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.us.i)
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #9
          to label %.noexc120.us.i unwind label %.loopexit280.split.us.i ; 5 uses

.noexc120.us.i:                                   ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn
  store i64 %.sroa.0.0.insert.insert.i.us.i, ptr %i.gw, align 4
  %.not10.i.i.i.i.i.i.us.i = icmp eq ptr %.sroa.0244.1316.us.i, %.sroa.13.1315.us.i
  br i1 %.not10.i.i.i.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.i.us.i:                          ; preds = %.noexc120.us.i, %.lr.ph.i.i.i.i.i.i.us.i
  %.012.i.i.i.i.i.i.us.i = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.us.i ], [ %i.gv, %.noexc120.us.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.us.i = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i.i.us.i ], [ %.sroa.0244.1316.us.i, %.noexc120.us.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.gx = load i64, ptr %.0911.i.i.i.i.i.i.us.i, align 4, !alias.scope !127, !noalias !126
  store i64 %i.gx, ptr %.012.i.i.i.i.i.i.us.i, align 4, !alias.scope !126, !noalias !127
  %i.gy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.us.i = icmp eq ptr %i.gy, %.sroa.13.1315.us.i
  br i1 %.not.i.i.i.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i, !llvm.loop !0

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.us.i, %.noexc120.us.i
  %.0.lcssa.i.i.i.i.i.i.us.i = phi ptr [ %i.gv, %.noexc120.us.i ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.us.i ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.us.i, i64 8
  %.not.i23.i.i.i.us.i = icmp eq ptr %.sroa.0244.1316.us.i, null
  br i1 %.not.i23.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.1316.us.i, i64 noundef %i.gn) #11
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i: ; preds = %bb.ah, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i, %bb.af, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i, %bb.ad, %bb.ac, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i
  %.sroa.25.2.us.i = phi ptr [ %.sroa.25.1314.us.i, %bb.af ], [ %.sroa.25.1314.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.25.1314.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.hb, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.25.1314.us.i, %bb.ad ], [ %.sroa.25.1314.us.i, %bb.ac ] ; 3 uses
  %.sroa.13.2.us.i = phi ptr [ %i.gk, %bb.af ], [ %.sroa.13.1315.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.13.1315.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.ha, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.13.1315.us.i, %bb.ad ], [ %.sroa.13.1315.us.i, %bb.ac ] ; 5 uses
  %.sroa.0244.2.us.i = phi ptr [ %.sroa.0244.1316.us.i, %bb.af ], [ %.sroa.0244.1316.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.0244.1316.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.gv, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.0244.1316.us.i, %bb.ad ], [ %.sroa.0244.1316.us.i, %bb.ac ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !116

._crit_edge.us.i:                                 ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %.preheader278.i, label %.preheader279.us.i, !llvm.loop !117

.loopexit280.split.us.i:                          ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i
  %lpad.loopexit282.us.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.preheader278.i:                                  ; preds = %._crit_edge.us.i
  %.not335.i = icmp eq ptr %.sroa.0244.2.us.i, %.sroa.13.2.us.i
  br i1 %.not335.i, label %.preheader277.us.i.preheader, label %.lr.ph.i

.preheader277.us.i.preheader:                     ; preds = %bb.bp, %.preheader278.i
  %.sroa.13.3346.us.i.ph = phi ptr [ %.sroa.13.2.us.i, %.preheader278.i ], [ %.sroa.0244.2.us.i, %bb.bp ]
  br label %.preheader277.us.i

.lr.ph.i:                                         ; preds = %.preheader278.i
  %i.hc = load ptr, ptr %0, align 8, !tbaa !43
  %i.hd = load i32, ptr %i.g, align 8, !tbaa !125
  br label %bb.bp

.split.us.i:                                      ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc.i unwind label %.loopexit.split-lp281.i

.noexc.i:                                         ; preds = %.split.us.i
  unreachable

.loopexit.split-lp281.i:                          ; preds = %.split.us.i
  %lpad.loopexit.split-lp283.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.preheader277.us.i:                               ; preds = %.preheader277.us.i.preheader, %._crit_edge.us352.i
  %indvars.iv387.i = phi i64 [ %indvars.iv.next388.i, %._crit_edge.us352.i ], [ 0, %.preheader277.us.i.preheader ] ; 6 uses
  %.sroa.0244.3347.us.i = phi ptr [ %.sroa.0244.5.us.i, %._crit_edge.us352.i ], [ %.sroa.0244.2.us.i, %.preheader277.us.i.preheader ]
  %.sroa.13.3346.us.i = phi ptr [ %.sroa.13.5.us.i, %._crit_edge.us352.i ], [ %.sroa.13.3346.us.i.ph, %.preheader277.us.i.preheader ]
  %.sroa.25.3345.us.i = phi ptr [ %.sroa.25.5.us.i, %._crit_edge.us352.i ], [ %.sroa.25.2.us.i, %.preheader277.us.i.preheader ]
  %i.he = icmp ne i64 %indvars.iv387.i, 0         ; 2 uses
  %i.hf = add nsw i64 %indvars.iv387.i, -1        ; 2 uses
  %i.hg = icmp samesign ult i64 %indvars.iv387.i, %i.l ; 2 uses
  %indvars.iv.next388.i = add nuw nsw i64 %indvars.iv387.i, 1 ; 3 uses
  %.sroa.2.0.insert.shift.i171.us.i = shl nuw nsw i64 %indvars.iv387.i, 32
  %i.hh = trunc nuw nsw i64 %indvars.iv387.i to i32 ; 4 uses
  %i.hi = trunc nuw nsw i64 %indvars.iv.next388.i to i32 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, %.preheader277.us.i
  %indvars.iv382.i = phi i64 [ 0, %.preheader277.us.i ], [ %indvars.iv.next383.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.0244.4339.us.i = phi ptr [ %.sroa.0244.3347.us.i, %.preheader277.us.i ], [ %.sroa.0244.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.13.4338.us.i = phi ptr [ %.sroa.13.3346.us.i, %.preheader277.us.i ], [ %.sroa.13.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.25.4337.us.i = phi ptr [ %.sroa.25.3345.us.i, %.preheader277.us.i ], [ %.sroa.25.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 6 uses
  %i.hj = icmp ne i64 %indvars.iv382.i, 0         ; 2 uses
  %or.cond.us.i = and i1 %i.he, %i.hj
  br i1 %or.cond.us.i, label %bb.aj, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i

bb.aj:                                            ; preds = %bb.ai
  %i.hk = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.hl = load i32, ptr %i.g, align 8, !tbaa !125 ; 2 uses
  %i.hm = mul nsw i32 %i.hl, %i.hh
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hn
  %.idx429.i = shl nuw nsw i64 %indvars.iv382.i, 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx429.i ; 3 uses
  %i.hq = sext i32 %i.hl to i64
  %i.hr = mul nsw i64 %i.hf, %i.hq
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hr
  %i.ht = shl nuw nsw i64 %indvars.iv382.i, 2
  %i.hu = add nuw nsw i64 %i.ht, 4294967292
  %i.hv = and i64 %i.hu, 4294967292
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hv ; 3 uses
  %i.hx = load double, ptr %1, align 8, !tbaa !52
  %i.hy = load double, ptr %i.h, align 8, !tbaa !55
  %i.hz = fadd double %i.hx, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !54 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.if = load float, ptr %i.ie, align 4, !tbaa !54 ; 4 uses
  %i.ig = load float, ptr %i.ia, align 4, !tbaa !54 ; 2 uses
  %i.ih = load <2 x float>, ptr %i.hp, align 4, !tbaa !54 ; 2 uses
  %i.ii = load float, ptr %i.id, align 4, !tbaa !54 ; 2 uses
  %i.ij = load <2 x float>, ptr %i.hw, align 4, !tbaa !54 ; 2 uses
  %i.ik = fsub <2 x float> %i.ij, %i.ih
  %i.il = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ik) ; 2 uses
  %i.im = extractelement <2 x float> %i.il, i64 0 ; 2 uses
  %i.in = extractelement <2 x float> %i.il, i64 1 ; 2 uses
  %i.io = fcmp olt float %i.im, %i.in
  %i.ip = extractelement <2 x float> %i.ij, i64 0 ; 2 uses
  %i.iq = extractelement <2 x float> %i.ih, i64 0 ; 2 uses
  br i1 %i.io, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre-phi53.i122.us.i = phi float [ %i.im, %bb.ak ], [ %i.in, %bb.aj ] ; 2 uses
  %.051.i123.us.i = phi float [ %i.ig, %bb.ak ], [ %i.iq, %bb.aj ]
  %.049.i124.us.i = phi float [ %i.iq, %bb.ak ], [ %i.ig, %bb.aj ] ; 2 uses
  %.046.i125.us.i = phi float [ %i.ii, %bb.ak ], [ %i.ip, %bb.aj ] ; 4 uses
  %.045.i126.us.i = phi float [ %i.ip, %bb.ak ], [ %i.ii, %bb.aj ] ; 3 uses
  %i.ir = fsub float %i.if, %i.ic
  %i.is = tail call float @llvm.fabs.f32(float %i.ir) ; 3 uses
  %i.it = fcmp olt float %.pre-phi53.i122.us.i, %i.is
  br i1 %i.it, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.iu = fsub float %.046.i125.us.i, %.051.i123.us.i
  %i.iv = tail call float @llvm.fabs.f32(float %i.iu) ; 2 uses
  %i.iw = fcmp olt float %i.iv, %i.is
  br i1 %i.iw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.pre-phi55.i127.us.i = phi float [ %i.is, %bb.am ], [ %i.iv, %bb.an ], [ %.pre-phi53.i122.us.i, %bb.al ]
  %.048.i128.us.i = phi float [ %.049.i124.us.i, %bb.am ], [ %.049.i124.us.i, %bb.an ], [ %i.ic, %bb.al ]
  %.147.i129.us.i = phi float [ %.046.i125.us.i, %bb.am ], [ %i.if, %bb.an ], [ %.046.i125.us.i, %bb.al ] ; 2 uses
  %.1.i130.us.i = phi float [ %i.if, %bb.am ], [ %.046.i125.us.i, %bb.an ], [ %.045.i126.us.i, %bb.al ]
  %.0.i131.us.i = phi float [ %.045.i126.us.i, %bb.am ], [ %.045.i126.us.i, %bb.an ], [ %i.if, %bb.al ] ; 2 uses
  %i.ix = fpext float %.pre-phi55.i127.us.i to double
  %i.iy = fcmp ugt double %i.hz, %i.ix
  br i1 %i.iy, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iz = fcmp oeq float %.147.i129.us.i, %.1.i130.us.i
  %i.ja = fcmp oeq float %.147.i129.us.i, %.0.i131.us.i
  %or.cond.i132.us.i = select i1 %i.iz, i1 %i.ja, i1 false
  br i1 %or.cond.i132.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i:   ; preds = %bb.ap
  %i.jb = fadd float %.048.i128.us.i, -5.000000e-01
  %i.jc = tail call float @llvm.fabs.f32(float %i.jb)
  %i.jd = fadd float %.0.i131.us.i, -5.000000e-01
  %i.je = tail call float @llvm.fabs.f32(float %i.jd)
  %i.jf = fcmp ult float %i.jc, %i.je
  br i1 %i.jf, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i, %bb.ap, %bb.ao, %bb.ai
  %i.jg = icmp samesign ult i64 %indvars.iv382.i, %i.k ; 2 uses
  %or.cond3.us.i = and i1 %i.he, %i.jg
  br i1 %or.cond3.us.i, label %bb.aq, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i

bb.aq:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i
  %i.jh = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.ji = load i32, ptr %i.g, align 8, !tbaa !125 ; 2 uses
  %i.jj = mul nsw i32 %i.ji, %i.hh
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jk
  %.idx430.i = shl nuw nsw i64 %indvars.iv382.i, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %.idx430.i ; 3 uses
  %i.jn = sext i32 %i.ji to i64
  %i.jo = mul nsw i64 %i.hf, %i.jn
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jo
  %i.jq = trunc nuw nsw i64 %indvars.iv382.i to i32
  %i.jr = shl i32 %i.jq, 2
  %i.js = add i32 %i.jr, 4
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jt ; 3 uses
  %i.jv = load double, ptr %1, align 8, !tbaa !52
  %i.jw = load double, ptr %i.h, align 8, !tbaa !55
  %i.jx = fadd double %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !54 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !54 ; 4 uses
  %i.ke = load float, ptr %i.jy, align 4, !tbaa !54 ; 2 uses
  %i.kf = load <2 x float>, ptr %i.jm, align 4, !tbaa !54 ; 2 uses
  %i.kg = load float, ptr %i.kb, align 4, !tbaa !54 ; 2 uses
  %i.kh = load <2 x float>, ptr %i.ju, align 4, !tbaa !54 ; 2 uses
  %i.ki = fsub <2 x float> %i.kh, %i.kf
  %i.kj = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ki) ; 2 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0 ; 2 uses
  %i.kl = extractelement <2 x float> %i.kj, i64 1 ; 2 uses
  %i.km = fcmp olt float %i.kk, %i.kl
  %i.kn = extractelement <2 x float> %i.kh, i64 0 ; 2 uses
  %i.ko = extractelement <2 x float> %i.kf, i64 0 ; 2 uses
  br i1 %i.km, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pre-phi53.i134.us.i = phi float [ %i.kk, %bb.ar ], [ %i.kl, %bb.aq ] ; 2 uses
  %.051.i135.us.i = phi float [ %i.ke, %bb.ar ], [ %i.ko, %bb.aq ]
  %.049.i136.us.i = phi float [ %i.ko, %bb.ar ], [ %i.ke, %bb.aq ] ; 2 uses
  %.046.i137.us.i = phi float [ %i.kg, %bb.ar ], [ %i.kn, %bb.aq ] ; 4 uses
  %.045.i138.us.i = phi float [ %i.kn, %bb.ar ], [ %i.kg, %bb.aq ] ; 3 uses
  %i.kp = fsub float %i.kd, %i.ka
  %i.kq = tail call float @llvm.fabs.f32(float %i.kp) ; 3 uses
  %i.kr = fcmp olt float %.pre-phi53.i134.us.i, %i.kq
  br i1 %i.kr, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ks = fsub float %.046.i137.us.i, %.051.i135.us.i
  %i.kt = tail call float @llvm.fabs.f32(float %i.ks) ; 2 uses
  %i.ku = fcmp olt float %i.kt, %i.kq
  br i1 %i.ku, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.pre-phi55.i139.us.i = phi float [ %i.kq, %bb.at ], [ %i.kt, %bb.au ], [ %.pre-phi53.i134.us.i, %bb.as ]
  %.048.i140.us.i = phi float [ %.049.i136.us.i, %bb.at ], [ %.049.i136.us.i, %bb.au ], [ %i.ka, %bb.as ]
  %.147.i141.us.i = phi float [ %.046.i137.us.i, %bb.at ], [ %i.kd, %bb.au ], [ %.046.i137.us.i, %bb.as ] ; 2 uses
  %.1.i142.us.i = phi float [ %i.kd, %bb.at ], [ %.046.i137.us.i, %bb.au ], [ %.045.i138.us.i, %bb.as ]
  %.0.i143.us.i = phi float [ %.045.i138.us.i, %bb.at ], [ %.045.i138.us.i, %bb.au ], [ %i.kd, %bb.as ] ; 2 uses
  %i.kv = fpext float %.pre-phi55.i139.us.i to double
  %i.kw = fcmp ugt double %i.jx, %i.kv
  br i1 %i.kw, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kx = fcmp oeq float %.147.i141.us.i, %.1.i142.us.i
  %i.ky = fcmp oeq float %.147.i141.us.i, %.0.i143.us.i
  %or.cond.i144.us.i = select i1 %i.kx, i1 %i.ky, i1 false
  br i1 %or.cond.i144.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i:   ; preds = %bb.aw
  %i.kz = fadd float %.048.i140.us.i, -5.000000e-01
  %i.la = tail call float @llvm.fabs.f32(float %i.kz)
  %i.lb = fadd float %.0.i143.us.i, -5.000000e-01
  %i.lc = tail call float @llvm.fabs.f32(float %i.lb)
  %i.ld = fcmp ult float %i.la, %i.lc
  br i1 %i.ld, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i, %bb.aw, %bb.av, %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i
  %or.cond271.us.i = select i1 %i.hj, i1 %i.hg, i1 false
  br i1 %or.cond271.us.i, label %bb.ax, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i

bb.ax:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i
  %i.le = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.lf = load i32, ptr %i.g, align 8, !tbaa !125 ; 2 uses
  %i.lg = mul nsw i32 %i.lf, %i.hh
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lh
  %.idx431.i = shl nuw nsw i64 %indvars.iv382.i, 4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %.idx431.i ; 3 uses
  %i.lk = mul nsw i32 %i.lf, %i.hi
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.ll
  %i.ln = shl nuw nsw i64 %indvars.iv382.i, 2
  %i.lo = add nuw nsw i64 %i.ln, 4294967292
  %i.lp = and i64 %i.lo, 4294967292
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.lp ; 3 uses
  %i.lr = load double, ptr %1, align 8, !tbaa !52
  %i.ls = load double, ptr %i.h, align 8, !tbaa !55
  %i.lt = fadd double %i.lr, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !54 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !54 ; 4 uses
  %i.ma = load float, ptr %i.lu, align 4, !tbaa !54 ; 2 uses
  %i.mb = load <2 x float>, ptr %i.lj, align 4, !tbaa !54 ; 2 uses
  %i.mc = load float, ptr %i.lx, align 4, !tbaa !54 ; 2 uses
  %i.md = load <2 x float>, ptr %i.lq, align 4, !tbaa !54 ; 2 uses
  %i.me = fsub <2 x float> %i.md, %i.mb
  %i.mf = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.me) ; 2 uses
  %i.mg = extractelement <2 x float> %i.mf, i64 0 ; 2 uses
  %i.mh = extractelement <2 x float> %i.mf, i64 1 ; 2 uses
  %i.mi = fcmp olt float %i.mg, %i.mh
  %i.mj = extractelement <2 x float> %i.md, i64 0 ; 2 uses
  %i.mk = extractelement <2 x float> %i.mb, i64 0 ; 2 uses
  br i1 %i.mi, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pre-phi53.i146.us.i = phi float [ %i.mg, %bb.ay ], [ %i.mh, %bb.ax ] ; 2 uses
  %.051.i147.us.i = phi float [ %i.ma, %bb.ay ], [ %i.mk, %bb.ax ]
  %.049.i148.us.i = phi float [ %i.mk, %bb.ay ], [ %i.ma, %bb.ax ] ; 2 uses
  %.046.i149.us.i = phi float [ %i.mc, %bb.ay ], [ %i.mj, %bb.ax ] ; 4 uses
  %.045.i150.us.i = phi float [ %i.mj, %bb.ay ], [ %i.mc, %bb.ax ] ; 3 uses
  %i.ml = fsub float %i.lz, %i.lw
  %i.mm = tail call float @llvm.fabs.f32(float %i.ml) ; 3 uses
  %i.mn = fcmp olt float %.pre-phi53.i146.us.i, %i.mm
  br i1 %i.mn, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.mo = fsub float %.046.i149.us.i, %.051.i147.us.i
  %i.mp = tail call float @llvm.fabs.f32(float %i.mo) ; 2 uses
  %i.mq = fcmp olt float %i.mp, %i.mm
  br i1 %i.mq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.pre-phi55.i151.us.i = phi float [ %i.mm, %bb.ba ], [ %i.mp, %bb.bb ], [ %.pre-phi53.i146.us.i, %bb.az ]
  %.048.i152.us.i = phi float [ %.049.i148.us.i, %bb.ba ], [ %.049.i148.us.i, %bb.bb ], [ %i.lw, %bb.az ]
  %.147.i153.us.i = phi float [ %.046.i149.us.i, %bb.ba ], [ %i.lz, %bb.bb ], [ %.046.i149.us.i, %bb.az ] ; 2 uses
  %.1.i154.us.i = phi float [ %i.lz, %bb.ba ], [ %.046.i149.us.i, %bb.bb ], [ %.045.i150.us.i, %bb.az ]
  %.0.i155.us.i = phi float [ %.045.i150.us.i, %bb.ba ], [ %.045.i150.us.i, %bb.bb ], [ %i.lz, %bb.az ] ; 2 uses
  %i.mr = fpext float %.pre-phi55.i151.us.i to double
  %i.ms = fcmp ugt double %i.lt, %i.mr
  br i1 %i.ms, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mt = fcmp oeq float %.147.i153.us.i, %.1.i154.us.i
  %i.mu = fcmp oeq float %.147.i153.us.i, %.0.i155.us.i
  %or.cond.i156.us.i = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %or.cond.i156.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i:   ; preds = %bb.bd
  %i.mv = fadd float %.048.i152.us.i, -5.000000e-01
  %i.mw = tail call float @llvm.fabs.f32(float %i.mv)
  %i.mx = fadd float %.0.i155.us.i, -5.000000e-01
  %i.my = tail call float @llvm.fabs.f32(float %i.mx)
  %i.mz = fcmp ult float %i.mw, %i.my
  br i1 %i.mz, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i, %bb.bd, %bb.bc, %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i
  %or.cond273.us.i = select i1 %i.jg, i1 %i.hg, i1 false
  br i1 %or.cond273.us.i, label %bb.be, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

bb.be:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i
  %i.na = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.nb = load i32, ptr %i.g, align 8, !tbaa !125 ; 2 uses
  %i.nc = mul nsw i32 %i.nb, %i.hh
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.nd
  %.idx432.i = shl nuw nsw i64 %indvars.iv382.i, 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.idx432.i ; 3 uses
  %i.ng = mul nsw i32 %i.nb, %i.hi
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.nh
  %i.nj = trunc nuw nsw i64 %indvars.iv382.i to i32
  %i.nk = shl i32 %i.nj, 2
  %i.nl = add i32 %i.nk, 4
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.nm ; 3 uses
  %i.no = load double, ptr %1, align 8, !tbaa !52
  %i.np = load double, ptr %i.h, align 8, !tbaa !55
  %i.nq = fadd double %i.no, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !54 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !54 ; 4 uses
  %i.nx = load float, ptr %i.nr, align 4, !tbaa !54 ; 2 uses
  %i.ny = load <2 x float>, ptr %i.nf, align 4, !tbaa !54 ; 2 uses
  %i.nz = load float, ptr %i.nu, align 4, !tbaa !54 ; 2 uses
  %i.oa = load <2 x float>, ptr %i.nn, align 4, !tbaa !54 ; 2 uses
  %i.ob = fsub <2 x float> %i.oa, %i.ny
  %i.oc = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ob) ; 2 uses
  %i.od = extractelement <2 x float> %i.oc, i64 0 ; 2 uses
  %i.oe = extractelement <2 x float> %i.oc, i64 1 ; 2 uses
  %i.of = fcmp olt float %i.od, %i.oe
  %i.og = extractelement <2 x float> %i.oa, i64 0 ; 2 uses
  %i.oh = extractelement <2 x float> %i.ny, i64 0 ; 2 uses
  br i1 %i.of, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pre-phi53.i158.us.i = phi float [ %i.od, %bb.bf ], [ %i.oe, %bb.be ] ; 2 uses
  %.051.i159.us.i = phi float [ %i.nx, %bb.bf ], [ %i.oh, %bb.be ]
  %.049.i160.us.i = phi float [ %i.oh, %bb.bf ], [ %i.nx, %bb.be ] ; 2 uses
  %.046.i161.us.i = phi float [ %i.nz, %bb.bf ], [ %i.og, %bb.be ] ; 4 uses
  %.045.i162.us.i = phi float [ %i.og, %bb.bf ], [ %i.nz, %bb.be ] ; 3 uses
  %i.oi = fsub float %i.nw, %i.nt
  %i.oj = tail call float @llvm.fabs.f32(float %i.oi) ; 3 uses
  %i.ok = fcmp olt float %.pre-phi53.i158.us.i, %i.oj
  br i1 %i.ok, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.ol = fsub float %.046.i161.us.i, %.051.i159.us.i
  %i.om = tail call float @llvm.fabs.f32(float %i.ol) ; 2 uses
  %i.on = fcmp olt float %i.om, %i.oj
  br i1 %i.on, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pre-phi55.i163.us.i = phi float [ %i.oj, %bb.bh ], [ %i.om, %bb.bi ], [ %.pre-phi53.i158.us.i, %bb.bg ]
  %.048.i164.us.i = phi float [ %.049.i160.us.i, %bb.bh ], [ %.049.i160.us.i, %bb.bi ], [ %i.nt, %bb.bg ]
  %.147.i165.us.i = phi float [ %.046.i161.us.i, %bb.bh ], [ %i.nw, %bb.bi ], [ %.046.i161.us.i, %bb.bg ] ; 2 uses
  %.1.i166.us.i = phi float [ %i.nw, %bb.bh ], [ %.046.i161.us.i, %bb.bi ], [ %.045.i162.us.i, %bb.bg ]
  %.0.i167.us.i = phi float [ %.045.i162.us.i, %bb.bh ], [ %.045.i162.us.i, %bb.bi ], [ %i.nw, %bb.bg ] ; 2 uses
  %i.oo = fpext float %.pre-phi55.i163.us.i to double
  %i.op = fcmp ugt double %i.nq, %i.oo
  br i1 %i.op, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oq = fcmp oeq float %.147.i165.us.i, %.1.i166.us.i
  %i.or = fcmp oeq float %.147.i165.us.i, %.0.i167.us.i
  %or.cond.i168.us.i = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %or.cond.i168.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i:   ; preds = %bb.bk
  %i.os = fadd float %.048.i164.us.i, -5.000000e-01
  %i.ot = tail call float @llvm.fabs.f32(float %i.os)
  %i.ou = fadd float %.0.i167.us.i, -5.000000e-01
  %i.ov = tail call float @llvm.fabs.f32(float %i.ou)
  %i.ow = fcmp ult float %i.ot, %i.ov
  br i1 %i.ow, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i
  %.sroa.0.0.insert.insert.i173.us.i = add nuw nsw i64 %indvars.iv382.i, %.sroa.2.0.insert.shift.i171.us.i ; 2 uses
  %.not.i.i174.us.i = icmp eq ptr %.sroa.13.4338.us.i, %.sroa.25.4337.us.i
  br i1 %.not.i.i174.us.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i64 %.sroa.0.0.insert.insert.i173.us.i, ptr %.sroa.13.4338.us.i, align 4
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.13.4338.us.i, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

bb.bn:                                            ; preds = %bb.bl
  %i.oy = ptrtoint ptr %.sroa.13.4338.us.i to i64
  %i.oz = ptrtoint ptr %.sroa.0244.4339.us.i to i64
  %i.pa = sub i64 %i.oy, %i.oz                    ; 4 uses
  %i.pb = icmp eq i64 %i.pa, 9223372036854775800
  br i1 %i.pb, label %.split.us354.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i: ; preds = %bb.bn
  %i.pc = ashr exact i64 %i.pa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i176.us.i = tail call i64 @llvm.umax.i64(i64 %i.pc, i64 1)
  %i.pd = add nsw i64 %.sroa.speculated.i.i.i.i176.us.i, %i.pc ; 2 uses
  %i.pe = icmp ult i64 %i.pd, %i.pc
  %i.pf = tail call i64 @llvm.umin.i64(i64 %i.pd, i64 1152921504606846975)
  %i.pg = select i1 %i.pe, i64 1152921504606846975, i64 %i.pf ; 3 uses
  %.not.i.i.i.i177.us.i = icmp ne i64 %i.pg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i177.us.i)
  %i.ph = shl nuw nsw i64 %i.pg, 3
  %i.pi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ph) #9
          to label %.noexc188.us.i unwind label %.loopexit.split.us.i ; 5 uses

.noexc188.us.i:                                   ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pa
  store i64 %.sroa.0.0.insert.insert.i173.us.i, ptr %i.pj, align 4
  %.not10.i.i.i.i.i.i178.us.i = icmp eq ptr %.sroa.0244.4339.us.i, %.sroa.13.4338.us.i
  br i1 %.not10.i.i.i.i.i.i178.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i, label %.lr.ph.i.i.i.i.i.i179.us.i

.lr.ph.i.i.i.i.i.i179.us.i:                       ; preds = %.noexc188.us.i, %.lr.ph.i.i.i.i.i.i179.us.i
  %.012.i.i.i.i.i.i180.us.i = phi ptr [ %i.pm, %.lr.ph.i.i.i.i.i.i179.us.i ], [ %i.pi, %.noexc188.us.i ] ; 2 uses
  %.0911.i.i.i.i.i.i181.us.i = phi ptr [ %i.pl, %.lr.ph.i.i.i.i.i.i179.us.i ], [ %.sroa.0244.4339.us.i, %.noexc188.us.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
end_hunk_1
