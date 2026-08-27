Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/kuhn_munkres?download=true
inline.NumInlined: 276
inline.NumDeleted: 152
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv6detail8tracking11KuhnMunkres3RunEv:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc80, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11105.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.gy, %.noexc80 ]
  %.sroa.0102.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.gx, %.noexc80 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.gz, %.noexc80 ]
  %i.hq = load ptr, ptr %i.k, align 8, !tbaa !49  ; 3 uses
  %i.hr = load ptr, ptr %i.o, align 8, !tbaa !50
  store ptr %.sroa.0102.0, ptr %i.k, align 8, !tbaa !49
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !51
  store ptr %.sroa.11105.0, ptr %i.o, align 8, !tbaa !50
  %.not.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hu) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.z, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.hv = load i32, ptr %i.b, align 8, !tbaa !31  ; 3 uses
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = icmp slt i32 %i.hv, 0
  br i1 %i.hx, label %.noexc90, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83

.noexc90:                                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.not.i.i.i.i84 = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92, label %.noexc91

.noexc91:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83
  %i.hy = shl nuw nsw i64 %i.hw, 2                ; 3 uses
  %i.hz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #18 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hz, i8 0, i64 %i.hy, i1 false), !tbaa !30
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hw
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92:          ; preds = %.noexc91, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83
  %.sroa.097.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83 ], [ %i.hz, %.noexc91 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83 ], [ %i.ia, %.noexc91 ]
  %.0.i.i.i.i.i.i.i88 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83 ], [ %i.ib, %.noexc91 ]
  %i.ic = load ptr, ptr %i.g, align 8, !tbaa !49  ; 3 uses
  %i.id = load ptr, ptr %i.q, align 8, !tbaa !50
  store ptr %.sroa.097.0, ptr %i.g, align 8, !tbaa !49
  store ptr %.0.i.i.i.i.i.i.i88, ptr %i.p, align 8, !tbaa !51
  store ptr %.sroa.11.0, ptr %i.q, align 8, !tbaa !50
  %.not.i.i.i.i.i93 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i.i.i93, label %_ZNSt6vectorIiSaIiEED2Ev.exit96, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ic to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ig) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

_ZNSt6vectorIiSaIiEED2Ev.exit96:                  ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !28
  store i32 -1056833530, ptr %1, align 8, !tbaa !25
  store ptr %i.a, ptr %i.s, align 8, !tbaa !27
  store i64 4294967297, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN2cveqERKNS_3MatEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %i.w, double noundef 2.000000e+00)
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(688) %3)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit96
  %i.ih = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.critedge unwind label %bb.ad ; 0 uses

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit96
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ij, %bb.ad ], [ %i.ii, %bb.ac ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %bb.ab
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.t) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.v) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.ik = load i32, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %.lr.ph18.split.preheader.i, label %_ZN2cv6detail8tracking11KuhnMunkres21CheckIfOptimumIsFoundEv.exit.thread

_ZN2cv6detail8tracking11KuhnMunkres25UpdateDissimilarityMatrixEf.exit: ; preds = %._crit_edge.i54, %bb.l, %.thread
  %.pre = phi i32 [ %.pre.pre, %.thread ], [ %.pre141, %bb.l ], [ %.pre141, %._crit_edge.i54 ]
  %i.im = phi ptr [ %i.ep, %.thread ], [ %i.at, %bb.l ], [ %i.at, %._crit_edge.i54 ]
  br label %.preheader114, !llvm.loop !92

_ZN2cv6detail8tracking11KuhnMunkres21CheckIfOptimumIsFoundEv.exit.thread: ; preds = %_ZN2cv6detail8tracking11KuhnMunkres21CheckIfOptimumIsFoundEv.exit, %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking11KuhnMunkres13TrySimpleCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(492) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit40, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false), !tbaa !30
  %.pre = load i32, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  %i.g = zext nneg i32 %.pre to i64               ; 2 uses
  %i.h = icmp slt i32 %.pre, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i29

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
          to label %.noexc36 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit44

.noexc36:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i29: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %.not.i.i.i.i30 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i.i30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i29
  %i.i = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #18
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit38 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit44 ; 3 uses

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit38:          ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !30
  %.pre67 = load i32, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  %i.k = icmp sgt i32 %.pre67, 0
  br i1 %i.k, label %.lr.ph61, label %.loopexit

.lr.ph61:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit38
  %.idx108 = shl nuw nsw i64 %i.g, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx108) #17
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i29
  %.idx109 = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %.idx109) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit40

_ZNSt6vectorIiSaIiEED2Ev.exit40:                  ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.d
  ret void

bb.e:                                             ; preds = %.lr.ph61, %._crit_edge
  %i.p = phi i32 [ %.pre67, %.lr.ph61 ], [ %i.bg, %._crit_edge ] ; 6 uses
  %indvars.iv64 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next65, %._crit_edge ] ; 4 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.r = load i64, ptr %i.m, align 8, !tbaa !57
  %i.s = mul i64 %i.r, %indvars.iv64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 7 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.v = load i64, ptr %i.o, align 8, !tbaa !57
  %i.w = mul i64 %i.v, %indvars.iv64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = sext i32 %i.p to i64                     ; 2 uses
  %.idx = shl nsw i64 %i.y, 2                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %or.cond.i.i = icmp ult i32 %i.p, 2
  br i1 %or.cond.i.i, label %_ZSt11min_elementIPfET_S1_S1_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %.pre.i.i = load float, ptr %i.t, align 4, !tbaa !77 ; 2 uses
  %i.ab = add nsw i64 %.idx, -8                   ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.ae = phi float [ %i.aj, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.af = phi ptr [ %i.ai, %.lr.ph.i.i.prol ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 3 uses
  %.018.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ag = load float, ptr %i.af, align 4, !tbaa !77 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.ae             ; 2 uses
  %spec.select.i.i.prol = select i1 %i.ah, ptr %i.af, ptr %.018.i.i.prol ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.aj = select i1 %i.ah, float %i.ag, float %i.ae ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !93

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi float [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.aj, %.lr.ph.i.i.prol ]
  %.unr111 = phi ptr [ %i.aa, %.lr.ph.preheader.i.i ], [ %i.ai, %.lr.ph.i.i.prol ]
  %.018.i.i.unr = phi ptr [ %i.t, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ak = icmp ult i64 %i.ab, 12
  br i1 %i.ak, label %_ZSt11min_elementIPfET_S1_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.al = phi float [ %i.bc, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.am = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.unr111, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.018.i.i = phi ptr [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.an = load float, ptr %i.am, align 4, !tbaa !77 ; 2 uses
  %i.ao = fcmp olt float %i.an, %i.al             ; 2 uses
  %spec.select.i.i = select i1 %i.ao, ptr %i.am, ptr %.018.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.aq = select i1 %i.ao, float %i.an, float %i.al ; 2 uses
  %i.ar = load float, ptr %i.ap, align 4, !tbaa !77 ; 2 uses
  %i.as = fcmp olt float %i.ar, %i.aq             ; 2 uses
  %spec.select.i.i.1 = select i1 %i.as, ptr %i.ap, ptr %spec.select.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.au = select i1 %i.as, float %i.ar, float %i.aq ; 2 uses
  %i.av = load float, ptr %i.at, align 4, !tbaa !77 ; 2 uses
  %i.aw = fcmp olt float %i.av, %i.au             ; 2 uses
  %spec.select.i.i.2 = select i1 %i.aw, ptr %i.at, ptr %spec.select.i.i.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.ay = select i1 %i.aw, float %i.av, float %i.au ; 2 uses
  %i.az = load float, ptr %i.ax, align 4, !tbaa !77 ; 2 uses
  %i.ba = fcmp olt float %i.az, %i.ay             ; 2 uses
  %spec.select.i.i.3 = select i1 %i.ba, ptr %i.ax, ptr %spec.select.i.i.2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bb, %i.z
  %i.bc = select i1 %i.ba, float %i.az, float %i.ay
  br i1 %.not.i.i.3, label %_ZSt11min_elementIPfET_S1_S1_.exit, label %.lr.ph.i.i, !llvm.loop !95

_ZSt11min_elementIPfET_S1_S1_.exit:               ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.011.i.i = phi ptr [ %i.t, %bb.e ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %i.bd = load float, ptr %.011.i.i, align 4, !tbaa !77
  %i.be = icmp sgt i32 %i.p, 0
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11min_elementIPfET_S1_S1_.exit
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv64 ; 2 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre69 = sext i32 %i.bs to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSt11min_elementIPfET_S1_S1_.exit
  %.pre-phi = phi i64 [ %.pre69, %._crit_edge.loopexit ], [ %i.y, %_ZSt11min_elementIPfET_S1_S1_.exit ]
  %i.bg = phi i32 [ %i.bs, %._crit_edge.loopexit ], [ %i.p, %_ZSt11min_elementIPfET_S1_S1_.exit ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv.next65, %.pre-phi
  br i1 %i.bh, label %bb.e, label %.loopexit, !llvm.loop !96

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.bi = phi i32 [ %i.p, %.lr.ph ], [ %i.bs, %bb.j ] ; 3 uses
  %i.bj = phi i32 [ %i.p, %.lr.ph ], [ %i.bt, %bb.j ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !77
  %i.bm = fsub float %i.bl, %i.bd                 ; 2 uses
  store float %i.bm, ptr %i.bk, align 4, !tbaa !77
  %i.bn = fcmp oeq float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !30
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bq = load i32, ptr %i.bf, align 4, !tbaa !30
  %.not27 = icmp eq i32 %i.bq, 0
  br i1 %.not27, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv
  store i8 1, ptr %i.br, align 1, !tbaa !21
  store i32 1, ptr %i.bo, align 4, !tbaa !30
  store i32 1, ptr %i.bf, align 4, !tbaa !30
  %.pre68 = load i32, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.bs = phi i32 [ %i.bi, %bb.f ], [ %i.bi, %bb.g ], [ %i.bi, %bb.h ], [ %.pre68, %bb.i ] ; 3 uses
  %i.bt = phi i32 [ %i.bj, %bb.f ], [ %i.bj, %bb.g ], [ %i.bj, %bb.h ], [ %.pre68, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !97

_ZNSt6vectorIiSaIiEED2Ev.exit44:                  ; preds = %bb.c, %bb.b
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %.idx110 = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %.idx110) #17
  resume { ptr, i32 } %i.bw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2cv6detail8tracking11KuhnMunkres21CheckIfOptimumIsFoundEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(492) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph18.split.preheader, label %._crit_edge19

.lr.ph18.split.preheader:                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %.lr.ph18.split

._crit_edge19.loopexit:                           ; preds = %._crit_edge
  %i.i = icmp sge i32 %.1.lcssa, %i.o
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge19.loopexit, %bb.a
  %.011.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge19.loopexit ]
  ret i1 %.011.lcssa

.lr.ph18.split:                                   ; preds = %.lr.ph18.split.preheader, %._crit_edge
  %i.j = phi i32 [ %i.b, %.lr.ph18.split.preheader ], [ %i.o, %._crit_edge ] ; 4 uses
  %indvars.iv26 = phi i64 [ 0, %.lr.ph18.split.preheader ], [ %indvars.iv.next27, %._crit_edge ] ; 2 uses
  %.01115 = phi i32 [ 0, %.lr.ph18.split.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.k = mul i64 %i.g, %indvars.iv26
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph18.split
  %i.n = load ptr, ptr %i.h, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph18.split
  %i.o = phi i32 [ %i.j, %.lr.ph18.split ], [ %i.y, %bb.c ] ; 3 uses
  %.1.lcssa = phi i32 [ %.01115, %.lr.ph18.split ], [ %.2, %bb.c ] ; 2 uses
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next27, %i.p
  br i1 %i.q, label %.lr.ph18.split, label %._crit_edge19.loopexit, !llvm.loop !74

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.r = phi i32 [ %i.y, %bb.c ], [ %i.j, %.lr.ph.preheader ]
  %i.s = phi i32 [ %i.z, %bb.c ], [ %i.j, %.lr.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.113 = phi i32 [ %.2, %bb.c ], [ %.01115, %.lr.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21
  %i.v = icmp eq i8 %i.u, 1
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 1, ptr %i.w, align 4, !tbaa !30
  %i.x = add nsw i32 %.113, 1
  %.pre = load i32, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.y = phi i32 [ %.pre, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.z = phi i32 [ %.pre, %bb.b ], [ %i.s, %.lr.ph ] ; 2 uses
  %.2 = phi i32 [ %i.x, %bb.b ], [ %.113, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !76
}
end_hunk_0
