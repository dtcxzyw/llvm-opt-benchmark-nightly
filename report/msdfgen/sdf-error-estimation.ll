Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/sdf-error-estimation?download=true
begin_hunk_0_@_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE:bb.a
  %.not.i.i.i130 = icmp ne i64 %i.kd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i130)
  %i.ke = shl nuw nsw i64 %i.kd, 4
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #11
          to label %.noexc135 unwind label %.loopexit ; 4 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.jx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef nonnull align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !22
  %i.kh = icmp sgt i64 %i.jx, 0
  br i1 %i.kh, label %bb.am, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

bb.am:                                            ; preds = %.noexc135
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kf, ptr align 8 %i.ju, i64 %i.jx, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131: ; preds = %bb.am, %.noexc135
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %.not.i17.i.i132 = icmp eq ptr %i.ju, null
  br i1 %.not.i17.i.i132, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jx) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133: ; preds = %bb.an, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  store ptr %i.kf, ptr %6, align 8, !tbaa !14
  store ptr %i.ki, ptr %i.cn, align 8, !tbaa !26
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kd
  store ptr %i.kj, ptr %i.co, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, %bb.aj
  %i.kk = phi ptr [ %i.ki, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.jt, %bb.aj ] ; 2 uses
  %i.kl = xor i8 %.1107146, 1
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136
  %i.km = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jj, %.lr.ph ] ; 2 uses
  %i.kn = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jk, %.lr.ph ] ; 2 uses
  %.2108 = phi i8 [ %i.kl, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %.1107146, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.ao, %bb.ah
  %i.ko = phi ptr [ %i.cq, %bb.ah ], [ %i.km, %bb.ao ] ; 5 uses
  %i.kp = phi ptr [ %i.cr, %bb.ah ], [ %i.kn, %bb.ao ]
  %.1107.lcssa = phi i8 [ %.0106148, %bb.ah ], [ %.2108, %bb.ao ] ; 4 uses
  %i.kq = fcmp ogt float %i.fn, %i.dl
  %i.kr = select i1 %i.kq, float %i.fn, float %i.dl
  %i.ks = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kr, i64 1 ; 2 uses
  %i.ku = fcmp ogt <2 x float> %i.kt, %i.du
  %i.kv = select <2 x i1> %i.ku, <2 x float> %i.du, <2 x float> %i.kt ; 2 uses
  %i.kw = extractelement <2 x float> %i.kv, i64 0 ; 2 uses
  %i.kx = extractelement <2 x float> %i.kv, i64 1 ; 2 uses
  %i.ky = fcmp olt float %i.kw, %i.kx
  %i.kz = select i1 %i.ky, float %i.kx, float %i.kw ; 2 uses
  %i.la = fcmp ogt float %i.kz, 5.000000e-01
  %i.lb = trunc nuw i8 %.1107.lcssa to i1
  %i.lc = xor i1 %i.la, %i.lb
  %i.ld = fcmp une float %i.kz, 5.000000e-01
  %or.cond3 = and i1 %i.ld, %i.lc
  br i1 %or.cond3, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %._crit_edge
  %i.le = load ptr, ptr %6, align 8, !tbaa !38
  %i.lf = icmp eq ptr %i.le, %i.ko
  br i1 %i.lf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lg = getelementptr inbounds i8, ptr %i.ko, i64 -16 ; 3 uses
  store ptr %i.lg, ptr %i.cn, align 8, !tbaa !26
  %i.lh = xor i8 %.1107.lcssa, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge
  %i.li = phi ptr [ %i.ko, %bb.ap ], [ %i.lg, %bb.aq ], [ %i.ko, %._crit_edge ]
  %i.lj = phi ptr [ %i.ko, %bb.ap ], [ %i.lg, %bb.aq ], [ %i.kp, %._crit_edge ]
  %.3109 = phi i8 [ %.1107.lcssa, %bb.ap ], [ %i.lh, %bb.aq ], [ %.1107.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.lk = add nuw nsw i32 %.0105149, 1
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.ll = load i32, ptr %i.a, align 8, !tbaa !40
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp slt i64 %indvars.iv.next155, %i.lm
  br i1 %i.ln, label %bb.k, label %._crit_edge152, !llvm.loop !46

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.aw

bb.at:                                            ; preds = %._crit_edge152
  %i.lo = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !17
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lt) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit
  ret void

bb.aw:                                            ; preds = %bb.as, %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.cf, %bb.i ], [ %i.cg, %bb.j ]
  %i.lu = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i139 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !17
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140 ], [ %i.m, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi1EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi1EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %6 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = icmp slt i32 %i.e, 2
  %i.g = icmp slt i32 %3, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = uitofp nneg i32 %3 to double
  %i.i = fdiv nnan double 1.000000e+00, %i.h
  %i.j = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef 5.000000e-01) ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !8
  %i.l = sitofp i32 %i.k to double
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.m) ; 2 uses
  %i.o = fsub double %i.n, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  invoke void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %6)
          to label %.preheader51 unwind label %bb.l

.preheader51:                                     ; preds = %bb.c
  %i.p = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  %i.r = icmp sgt i32 %i.p, 1
  br i1 %i.r, label %.preheader.us.preheader, label %._crit_edge59

.preheader.us.preheader:                          ; preds = %.preheader51
  %i.s = fdiv double -1.000000e+00, %i.o
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.03758.us = phi double [ %i.ad, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %.03957.us = phi i32 [ %i.af, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.t = uitofp nneg i32 %.03957.us to double
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.i
  %.156.us = phi double [ %.03758.us, %.preheader.us ], [ %i.ad, %bb.i ]
  %.03855.us = phi i32 [ 0, %.preheader.us ], [ %i.ae, %bb.i ] ; 2 uses
  %i.u = uitofp nneg i32 %.03855.us to double
  %i.v = fadd nnan double %i.u, 5.000000e-01
  %i.w = fmul double %i.i, %i.v
  %i.x = fadd double %i.w, %i.t
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.y)
          to label %bb.e unwind label %.split.us  ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.z)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.g unwind label %.split.us

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.z, i32 noundef %i.aa)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef double @_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %6, double noundef %i.j, double noundef %i.n, i32 noundef %4)
          to label %bb.i unwind label %.split.us

bb.i:                                             ; preds = %bb.h
  %i.ac = call double @llvm.fmuladd.f64(double %i.s, double %i.ab, double 1.000000e+00)
  %i.ad = fadd double %.156.us, %i.ac             ; 3 uses
  %i.ae = add nuw nsw i32 %.03855.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !47

._crit_edge.us:                                   ; preds = %bb.i
  %i.af = add nuw nsw i32 %.03957.us, 1           ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !13
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.preheader.us, label %._crit_edge59, !llvm.loop !48

.split.us:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i47, label %_ZN7msdfgen8ScanlineD2Ev.exit48, label %bb.m

._crit_edge59:                                    ; preds = %._crit_edge.us, %.preheader51
  %.037.lcssa = phi double [ 0.000000e+00, %.preheader51 ], [ %i.ad, %._crit_edge.us ]
  %.lcssa = phi i32 [ %i.q, %.preheader51 ], [ %i.ah, %._crit_edge.us ]
  %i.al = mul nsw i32 %.lcssa, %3
  %i.am = sitofp i32 %i.al to double
  %i.an = fdiv double %.037.lcssa, %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge59
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit

_ZN7msdfgen8ScanlineD2Ev.exit:                    ; preds = %._crit_edge59, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.au = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i45, label %_ZN7msdfgen8ScanlineD2Ev.exit46, label %bb.k

bb.k:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit46

_ZN7msdfgen8ScanlineD2Ev.exit46:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.o

bb.l:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

bb.m:                                             ; preds = %.split.us
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ak to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bf) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

_ZN7msdfgen8ScanlineD2Ev.exit48:                  ; preds = %bb.m, %.split.us, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %i.aj, %.split.us ], [ %i.aj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.bg = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i49, label %_ZN7msdfgen8ScanlineD2Ev.exit50, label %bb.n

bb.n:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit50

_ZN7msdfgen8ScanlineD2Ev.exit50:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.a, %bb.b, %_ZN7msdfgen8ScanlineD2Ev.exit46
  %.0 = phi double [ %i.an, %_ZN7msdfgen8ScanlineD2Ev.exit46 ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi3EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi3EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %6 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = icmp slt i32 %i.e, 2
  %i.g = icmp slt i32 %3, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = uitofp nneg i32 %3 to double
  %i.i = fdiv nnan double 1.000000e+00, %i.h
  %i.j = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef 5.000000e-01) ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !29
  %i.l = sitofp i32 %i.k to double
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.m) ; 2 uses
  %i.o = fsub double %i.n, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  invoke void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %6)
          to label %.preheader51 unwind label %bb.k

.preheader51:                                     ; preds = %bb.c
  %i.p = load i32, ptr %i.d, align 4, !tbaa !31   ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  %i.r = icmp sgt i32 %i.p, 1
  br i1 %i.r, label %.preheader.us.preheader, label %._crit_edge59

.preheader.us.preheader:                          ; preds = %.preheader51
  %i.s = fdiv double -1.000000e+00, %i.o
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.03758.us = phi double [ %i.ad, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %.03957.us = phi i32 [ %i.af, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.t = uitofp nneg i32 %.03957.us to double
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.h
  %.156.us = phi double [ %.03758.us, %.preheader.us ], [ %i.ad, %bb.h ]
  %.03855.us = phi i32 [ 0, %.preheader.us ], [ %i.ae, %bb.h ] ; 2 uses
  %i.u = uitofp nneg i32 %.03855.us to double
  %i.v = fadd nnan double %i.u, 5.000000e-01
  %i.w = fmul double %i.i, %i.v
  %i.x = fadd double %i.w, %i.t
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.y)
          to label %bb.e unwind label %.split.us  ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.z)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.g unwind label %.split.us

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.z, i32 noundef %i.aa)
          to label %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us unwind label %.split.us

_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us: ; preds = %bb.g
  %i.ab = invoke noundef double @_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %6, double noundef %i.j, double noundef %i.n, i32 noundef %4)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us
  %i.ac = call double @llvm.fmuladd.f64(double %i.s, double %i.ab, double 1.000000e+00)
  %i.ad = fadd double %.156.us, %i.ac             ; 3 uses
  %i.ae = add nuw nsw i32 %.03855.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !49

._crit_edge.us:                                   ; preds = %bb.h
  %i.af = add nuw nsw i32 %.03957.us, 1           ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !31
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.preheader.us, label %._crit_edge59, !llvm.loop !50

.split.us:                                        ; preds = %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us, %bb.g, %bb.f, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i47, label %_ZN7msdfgen8ScanlineD2Ev.exit48, label %bb.l

._crit_edge59:                                    ; preds = %._crit_edge.us, %.preheader51
  %.037.lcssa = phi double [ 0.000000e+00, %.preheader51 ], [ %i.ad, %._crit_edge.us ]
  %.lcssa = phi i32 [ %i.q, %.preheader51 ], [ %i.ah, %._crit_edge.us ]
  %i.al = mul nsw i32 %.lcssa, %3
  %i.am = sitofp i32 %i.al to double
  %i.an = fdiv double %.037.lcssa, %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge59
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit

_ZN7msdfgen8ScanlineD2Ev.exit:                    ; preds = %._crit_edge59, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.au = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i45, label %_ZN7msdfgen8ScanlineD2Ev.exit46, label %bb.j

bb.j:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit46

_ZN7msdfgen8ScanlineD2Ev.exit46:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

bb.l:                                             ; preds = %.split.us
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ak to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bf) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

_ZN7msdfgen8ScanlineD2Ev.exit48:                  ; preds = %bb.l, %.split.us, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.aj, %.split.us ], [ %i.aj, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.bg = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i49, label %_ZN7msdfgen8ScanlineD2Ev.exit50, label %bb.m

bb.m:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit50

_ZN7msdfgen8ScanlineD2Ev.exit50:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.a, %bb.b, %_ZN7msdfgen8ScanlineD2Ev.exit46
  %.0 = phi double [ %i.an, %_ZN7msdfgen8ScanlineD2Ev.exit46 ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi4EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi4EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %6 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %i.f = icmp slt i32 %i.e, 2
  %i.g = icmp slt i32 %3, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = uitofp nneg i32 %3 to double
  %i.i = fdiv nnan double 1.000000e+00, %i.h
  %i.j = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef 5.000000e-01) ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !40
  %i.l = sitofp i32 %i.k to double
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.m) ; 2 uses
  %i.o = fsub double %i.n, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  invoke void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %6)
          to label %.preheader51 unwind label %bb.k

.preheader51:                                     ; preds = %bb.c
  %i.p = load i32, ptr %i.d, align 4, !tbaa !42   ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  %i.r = icmp sgt i32 %i.p, 1
  br i1 %i.r, label %.preheader.us.preheader, label %._crit_edge59

.preheader.us.preheader:                          ; preds = %.preheader51
  %i.s = fdiv double -1.000000e+00, %i.o
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.03758.us = phi double [ %i.ad, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %.03957.us = phi i32 [ %i.af, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.t = uitofp nneg i32 %.03957.us to double
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.h
  %.156.us = phi double [ %.03758.us, %.preheader.us ], [ %i.ad, %bb.h ]
  %.03855.us = phi i32 [ 0, %.preheader.us ], [ %i.ae, %bb.h ] ; 2 uses
  %i.u = uitofp nneg i32 %.03855.us to double
  %i.v = fadd nnan double %i.u, 5.000000e-01
  %i.w = fmul double %i.i, %i.v
  %i.x = fadd double %i.w, %i.t
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.y)
          to label %bb.e unwind label %.split.us  ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.z)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.g unwind label %.split.us

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.z, i32 noundef %i.aa)
          to label %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us unwind label %.split.us

_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us: ; preds = %bb.g
  %i.ab = invoke noundef double @_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %6, double noundef %i.j, double noundef %i.n, i32 noundef %4)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us
  %i.ac = call double @llvm.fmuladd.f64(double %i.s, double %i.ab, double 1.000000e+00)
  %i.ad = fadd double %.156.us, %i.ac             ; 3 uses
  %i.ae = add nuw nsw i32 %.03855.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !51

._crit_edge.us:                                   ; preds = %bb.h
  %i.af = add nuw nsw i32 %.03957.us, 1           ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !42
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.preheader.us, label %._crit_edge59, !llvm.loop !52

.split.us:                                        ; preds = %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us, %bb.g, %bb.f, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i47, label %_ZN7msdfgen8ScanlineD2Ev.exit48, label %bb.l

._crit_edge59:                                    ; preds = %._crit_edge.us, %.preheader51
  %.037.lcssa = phi double [ 0.000000e+00, %.preheader51 ], [ %i.ad, %._crit_edge.us ]
  %.lcssa = phi i32 [ %i.q, %.preheader51 ], [ %i.ah, %._crit_edge.us ]
  %i.al = mul nsw i32 %.lcssa, %3
  %i.am = sitofp i32 %i.al to double
  %i.an = fdiv double %.037.lcssa, %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge59
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit

_ZN7msdfgen8ScanlineD2Ev.exit:                    ; preds = %._crit_edge59, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.au = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i45, label %_ZN7msdfgen8ScanlineD2Ev.exit46, label %bb.j

bb.j:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit46

_ZN7msdfgen8ScanlineD2Ev.exit46:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

bb.l:                                             ; preds = %.split.us
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ak to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bf) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

_ZN7msdfgen8ScanlineD2Ev.exit48:                  ; preds = %bb.l, %.split.us, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.aj, %.split.us ], [ %i.aj, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.bg = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i49, label %_ZN7msdfgen8ScanlineD2Ev.exit50, label %bb.m

bb.m:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit50

_ZN7msdfgen8ScanlineD2Ev.exit50:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.a, %bb.b, %_ZN7msdfgen8ScanlineD2Ev.exit46
  %.0 = phi double [ %i.an, %_ZN7msdfgen8ScanlineD2Ev.exit46 ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %4 to i32
  tail call void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %4 to i32
  tail call void @_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %4 to i32
  tail call void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_7Vector2ES8_bd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = zext i1 %4 to i32
  call void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef %5, i32 noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret void
}

declare void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_7Vector2ES8_bd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = zext i1 %4 to i32
  call void @_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef %5, i32 noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_7Vector2ES8_bd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = zext i1 %4 to i32
  call void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef %5, i32 noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi1EEERKNS_5ShapeERKNS_7Vector2ES9_iNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi1EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_7Vector2ES9_iNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi3EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_7Vector2ES9_iNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi4EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret double %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1
end_hunk_0
