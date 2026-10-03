Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull?download=true
inline.NumInlined: 1836
inline.NumDeleted: 944
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_Z14pull_potentialP6pull_tN3gmx8ArrayRefIKfEERK5t_pbcRKNS1_7MpiCommEdfNS2_IKNS1_11BasicVectorIfEEEEPf:bb.a
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !21
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.w
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.dk, %bb.w ], [ %.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn.i.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

bb.aa:                                            ; preds = %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1297) #28
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.aa
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i

bb.af:                                            ; preds = %bb.ab
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn40.i.i = phi { ptr, i32 } [ %i.du, %bb.ag ], [ %i.dt, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.dv = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i: ; preds = %bb.ah
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !21
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i, %bb.ae
  %.pn40.pn.i.i = phi { ptr, i32 } [ %i.ds, %bb.ae ], [ %.pn40.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i ], [ %.pn40.i.i, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %common.resume

_ZL17do_pull_pot_coordRK6pull_tP17pull_coord_work_tRK5t_pbcdfPfS7_.exit: ; preds = %bb.q, %bb.r
  %i.ea = phi <2 x double> [ %i.cy, %bb.q ], [ %i.dj, %bb.r ]
  %i.eb = fptrunc <2 x double> %i.ea to <2 x float>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.h, %bb.h, %_ZL17do_pull_pot_coordRK6pull_tP17pull_coord_work_tRK5t_pbcdfPfS7_.exit
  %i.ec = phi <2 x float> [ %i.eb, %_ZL17do_pull_pot_coordRK6pull_tP17pull_coord_work_tRK5t_pbcdfPfS7_.exit ], [ %i.at, %bb.h ], [ %i.at, %bb.h ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 488 ; 2 uses
  %.not = icmp eq ptr %i.ed, %i.am
  br i1 %.not, label %._crit_edge, label %bb.h

bb.aj:                                            ; preds = %._crit_edge
  %i.ee = load float, ptr %8, align 4, !tbaa !72
  %i.ef = extractelement <2 x float> %i.ap, i64 0
  %i.eg = fadd float %i.ef, %i.ee
  store float %i.eg, ptr %8, align 4, !tbaa !72
  %i.eh = extractelement <2 x float> %i.ap, i64 1
  br label %_ZL37check_external_potential_registrationPK6pull_t.exit._crit_edge

_ZL37check_external_potential_registrationPK6pull_t.exit._crit_edge: ; preds = %_ZL37check_external_potential_registrationPK6pull_t.exit, %._crit_edge, %bb.aj
  %i.ei = phi float [ 0.000000e+00, %._crit_edge ], [ %i.eh, %bb.aj ], [ 0.000000e+00, %_ZL37check_external_potential_registrationPK6pull_t.exit ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !175
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !161
  ret float %i.ei
}

declare void @_Z14pull_calc_comsRKN3gmx7MpiCommEP6pull_tNS_8ArrayRefIKfEERK5t_pbcdNS5_IKNS_11BasicVectorIfEEEENS5_ISC_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr, ptr, ptr noundef nonnull align 4 dereferenceable(384), double noundef, ptr noundef byval(%"class.gmx::ArrayRef.91") align 8, ptr noundef byval(%"class.gmx::ArrayRef.94") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, double noundef %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  switch i32 %i.b, label %_ZL17make_periodic_2piPd.exit [
    i32 0, label %bb.b
    i32 5, label %bb.f
    i32 7, label %bb.f
    i32 6, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt double %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %_ZL17make_periodic_2piPd.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.e = load i32, ptr %i.d, align 4, !tbaa !176
  %i.f = add nsw i32 %i.e, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 661, ptr noundef nonnull @.str.31, i32 noundef %i.f, double noundef %1) #28
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.h = fcmp olt double %1, 0.000000e+00
  %i.i = fcmp ogt double %1, f0x400921FB54442D18
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.g, label %_ZL17make_periodic_2piPd.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.k = load i32, ptr %i.j, align 4, !tbaa !176
  %i.l = add nsw i32 %i.k, 1
  %i.m = load i32, ptr %i.a, align 8, !tbaa !80
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZL14sc_isAngleType, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !81, !range !82, !noundef !83
  %i.q = trunc nuw i8 %i.p to i1
  %..i = select i1 %i.q, double f0x404CA5DC1A63C1F8, double 1.000000e+00
  %i.r = fmul double %1, %..i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 671, ptr noundef nonnull @.str.32, i32 noundef %i.l, double noundef %i.r) #28
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.t = fcmp ult double %1, f0x400921FB54442D18
  br i1 %i.t, label %bb.k, label %.sink.split.i

bb.k:                                             ; preds = %bb.j
  %i.u = fcmp olt double %1, f0xC00921FB54442D18
  br i1 %i.u, label %.sink.split.i, label %_ZL17make_periodic_2piPd.exit

.sink.split.i:                                    ; preds = %bb.k, %bb.j
  %.sink4.i = phi double [ f0xC01921FB54442D18, %bb.j ], [ f0x401921FB54442D18, %bb.k ]
  %i.v = fadd double %1, %.sink4.i
  br label %_ZL17make_periodic_2piPd.exit

_ZL17make_periodic_2piPd.exit:                    ; preds = %.sink.split.i, %bb.k, %bb.a, %bb.f, %bb.b
  %.0 = phi double [ %1, %bb.a ], [ %1, %bb.b ], [ %1, %bb.f ], [ %i.v, %.sink.split.i ], [ %1, %bb.k ]
  ret double %.0

bb.l:                                             ; preds = %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.s, %bb.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z17pull_apply_forcesP6pull_tN3gmx8ArrayRefIKfEERKNS1_7MpiCommEPNS1_15ForceWithVirialE(ptr nofree noundef readonly captures(none) %0, ptr %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %5 = alloca %"class.gmx::ArrayRef.88", align 8  ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %6 = alloca %"class.gmx::ArrayRef.112", align 8 ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [3 x double], align 16            ; 6 uses
  %7 = alloca %struct.PullCoordVectorForces, align 16 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.k = load i8, ptr %i.j, align 1, !tbaa !160, !range !82, !noundef !83
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN3gmx15ForceWithVirial21addVirialContributionEPA3_Kf.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !321, !range !82, !noundef !83
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !172
  %i.r = icmp eq i32 %i.q, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !157
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ab = udiv exact i64 %i.z, 488
  %.038 = add nsw i64 %i.ab, -1                   ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aj = ptrtoint ptr %2 to i64
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.048.us = phi i64 [ %.0.us, %bb.h ], [ %.038, %.lr.ph ] ; 3 uses
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !88  ; 3 uses
  %i.at = getelementptr inbounds nuw [488 x i8], ptr %i.as, i64 %.048.us ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !109
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !107
  %i.ay = icmp eq i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 172
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !108
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [488 x i8], ptr %i.as, i64 %i.bb
  tail call void @_ZN3gmx38distributeTransformationPullCoordForceEP17pull_coord_work_tNS_8ArrayRefIS0_EE(ptr noundef nonnull %i.at, ptr nonnull %i.as, ptr %i.bc)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.lr.ph.split.us
  %.0.us = add nsw i64 %.048.us, -1
  %i.bd = icmp sgt i64 %.048.us, 0
  br i1 %i.bd, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !316

._crit_edge:                                      ; preds = %bb.af, %bb.h, %bb.e
  %.sroa.026.0.lcssa = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.h ], [ %.sroa.026.2, %bb.af ]
  %i.be = phi <8 x float> [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.h ], [ %i.mu, %bb.af ]
  br i1 %i.s, label %bb.ag, label %_ZN3gmx15ForceWithVirial21addVirialContributionEPA3_Kf.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.af
  %.048 = phi i64 [ %.0, %bb.af ], [ %.038, %.lr.ph ] ; 3 uses
  %.sroa.026.047 = phi float [ %.sroa.026.2, %bb.af ], [ 0.000000e+00, %.lr.ph ] ; 5 uses
  %i.bf = phi <8 x float> [ %i.mu, %bb.af ], [ zeroinitializer, %.lr.ph ] ; 5 uses
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !88  ; 3 uses
  %i.bh = getelementptr inbounds nuw [488 x i8], ptr %i.bg, i64 %.048 ; 60 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !109
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.af, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !107
  %i.bm = icmp eq i32 %i.bl, 8
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 172
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !108
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [488 x i8], ptr %i.bg, i64 %i.bp
  call void @_ZN3gmx38distributeTransformationPullCoordForceEP17pull_coord_work_tNS_8ArrayRefIS0_EE(ptr noundef nonnull %i.bh, ptr nonnull %i.bg, ptr %i.bq)
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 192 ; 6 uses
  %i.bs = load i32, ptr %i.bk, align 8, !tbaa !80, !noalias !322
  switch i32 %i.bs, label %.preheader.i [
    i32 0, label %.loopexit.loopexit128.i
    i32 5, label %bb.l
    i32 7, label %bb.o
    i32 6, label %bb.r
  ]

.preheader.i:                                     ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !154, !noalias !322
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  %i.bw = load <3 x double>, ptr %i.bv, align 8, !tbaa !85, !noalias !322
  %i.bx = insertelement <3 x double> poison, double %i.bu, i64 0
  %i.by = shufflevector <3 x double> %i.bx, <3 x double> poison, <3 x i32> zeroinitializer
  %i.bz = fmul <3 x double> %i.by, %i.bw          ; 3 uses
  %i.ca = shufflevector <3 x double> %i.bz, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.ca, ptr %7, align 16, !tbaa !85, !alias.scope !322
  %i.cb = extractelement <3 x double> %i.bz, i64 2
  store double %i.cb, ptr %9, align 16, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

.loopexit.loopexit128.i:                          ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 376
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !117, !noalias !322 ; 2 uses
  %i.ce = fcmp ogt double %i.cd, 0.000000e+00
  %i.cf = fdiv nnan double 1.000000e+00, %i.cd
  %spec.select.i = select i1 %i.ce, double %i.cf, double 0.000000e+00
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !154, !noalias !322
  %i.ci = load <3 x double>, ptr %i.br, align 8, !tbaa !85, !noalias !322
  %i.cj = insertelement <3 x double> poison, double %i.ch, i64 0
  %i.ck = shufflevector <3 x double> %i.cj, <3 x double> poison, <3 x i32> zeroinitializer
  %i.cl = fmul <3 x double> %i.ck, %i.ci
  %i.cm = insertelement <3 x double> poison, double %spec.select.i, i64 0
  %i.cn = shufflevector <3 x double> %i.cm, <3 x double> poison, <3 x i32> zeroinitializer
  %i.co = fmul <3 x double> %i.cn, %i.cl          ; 3 uses
  %i.cp = shufflevector <3 x double> %i.co, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.cp, ptr %7, align 16, !tbaa !85, !alias.scope !322
  %i.cq = extractelement <3 x double> %i.co, i64 2
  store double %i.cq, ptr %9, align 16, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bh, i64 376
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !117, !noalias !322
  %i.ct = call double @cos(double noundef %i.cs) #20, !noalias !322 ; 4 uses
  %i.cu = fmul double %i.ct, %i.ct                ; 2 uses
  %i.cv = fcmp olt double %i.cu, 1.000000e+00
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = fsub double 1.000000e+00, %i.cu
  %i.cx = call double @sqrt(double noundef %i.cw) #20, !noalias !322
  %10 = load double, ptr %i.br, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %11 = load double, ptr %i.cy, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %12 = load double, ptr %i.cz, align 8, !tbaa !85, !noalias !322 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 224
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !154, !noalias !322 ; 2 uses
  %13 = load <2 x double>, ptr %i.da, align 8, !tbaa !85, !noalias !322 ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0    ; 2 uses
  %15 = fmul double %11, %11
  %16 = call double @llvm.fmuladd.f64(double %10, double %10, double %15)
  %i.de = load <2 x double>, ptr %i.db, align 8, !tbaa !85, !noalias !322 ; 5 uses
  %17 = extractelement <2 x double> %i.de, i64 0
  %i.df = fmul <2 x double> %i.de, %i.de
  %18 = extractelement <2 x double> %i.df, i64 0
  %19 = call double @llvm.fmuladd.f64(double %14, double %14, double %18)
  %20 = insertelement <2 x double> %i.de, double %12, i64 0 ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %16, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %19, i64 1
  %i.di = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %20, <2 x double> %i.dh)
  %i.dj = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.di) ; 2 uses
  %i.dk = insertelement <2 x double> %i.dj, double %i.cx, i64 1
  %i.dl = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.dk ; 5 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 1 ; 4 uses
  %i.dn = extractelement <2 x double> %i.dj, i64 1
  %21 = fdiv double 1.000000e+00, %i.dn           ; 3 uses
  %22 = extractelement <2 x double> %i.dl, i64 0
  %23 = fmul double %12, %22                      ; 2 uses
  %24 = shufflevector <2 x double> %13, <2 x double> %i.de, <3 x i32> <i32 0, i32 1, i32 3>
  %25 = insertelement <3 x double> poison, double %21, i64 0
  %i.do = shufflevector <3 x double> %25, <3 x double> poison, <3 x i32> zeroinitializer
  %26 = fmul <3 x double> %24, %i.do              ; 3 uses
  %27 = fmul double %i.ct, %i.dm                  ; 3 uses
  %i.dp = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.ct, i64 1
  %28 = fmul <2 x double> %i.dl, %i.dq            ; 2 uses
  %29 = fmul double %i.dd, %21                    ; 3 uses
  %30 = insertelement <2 x double> poison, double %10, i64 0
  %i.dr = insertelement <2 x double> %30, double %11, i64 1
  %i.ds = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %i.dr, %i.ds          ; 3 uses
  %31 = fneg <2 x double> %i.dt
  %32 = fneg double %23
  %33 = shufflevector <2 x double> %28, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.du = shufflevector <2 x double> %31, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.dv = insertelement <3 x double> %i.du, double %32, i64 2
  %34 = fmul <3 x double> %33, %i.dv
  %35 = shufflevector <2 x double> %i.dl, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %36 = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %35, <3 x double> %26, <3 x double> %34)
  %37 = shufflevector <2 x double> %28, <2 x double> poison, <3 x i32> zeroinitializer
  %i.dw = fmul <3 x double> %37, %36              ; 3 uses
  %38 = extractelement <3 x double> %26, i64 0
  %39 = fneg double %38
  %40 = fmul double %27, %39
  %41 = extractelement <2 x double> %i.dt, i64 0
  %42 = call double @llvm.fmuladd.f64(double %i.dm, double %41, double %40)
  %43 = fmul double %29, %42
  store double %43, ptr %i.af, align 8, !tbaa !85, !alias.scope !322
  %44 = shufflevector <3 x double> %i.dw, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %44, ptr %7, align 16, !tbaa !85, !alias.scope !322
  %45 = fneg double %21
  %46 = fmul double %17, %45
  %47 = fmul double %27, %46
  %48 = extractelement <2 x double> %i.dt, i64 1
  %49 = call double @llvm.fmuladd.f64(double %i.dm, double %48, double %47)
  %50 = fmul double %29, %49
  store double %50, ptr %i.ag, align 16, !tbaa !85, !alias.scope !322
  %i.dx = extractelement <3 x double> %i.dw, i64 2
  store double %i.dx, ptr %9, align 16, !tbaa !85, !alias.scope !322
  %51 = extractelement <3 x double> %26, i64 2
  %i.dy = fneg double %51
  %i.dz = fmul double %27, %i.dy
  %i.ea = call double @llvm.fmuladd.f64(double %i.dm, double %23, double %i.dz)
  %i.eb = fmul double %29, %i.ea
  store double %i.eb, ptr %i.ah, align 8, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, i8 0, i64 48, i1 false), !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.o:                                             ; preds = %bb.k
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bh, i64 376
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !117, !noalias !322
  %i.ee = call double @cos(double noundef %i.ed) #20, !noalias !322 ; 3 uses
  %i.ef = fmul double %i.ee, %i.ee                ; 2 uses
  %i.eg = fcmp olt double %i.ef, 1.000000e+00
  br i1 %i.eg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %52 = load double, ptr %i.eh, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.ei = fsub double 1.000000e+00, %i.ef
  %i.ej = call double @sqrt(double noundef %i.ei) #20, !noalias !322
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  %i.el = load double, ptr %i.ek, align 8, !tbaa !154, !noalias !322
  %i.em = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  %53 = insertelement <2 x double> poison, double %i.el, i64 0
  %54 = insertelement <2 x double> %53, double %i.ee, i64 1
  %i.en = load <2 x double>, ptr %i.br, align 8, !tbaa !85, !noalias !322 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.en, %i.en
  %i.eo = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ep = extractelement <2 x double> %i.en, i64 0 ; 2 uses
  %i.eq = call double @llvm.fmuladd.f64(double %i.ep, double %i.ep, double %i.eo)
  %i.er = call noundef double @llvm.fmuladd.f64(double %52, double %52, double %i.eq)
  %sqrt.i109.i = call noundef double @llvm.sqrt.f64(double %i.er)
  %i.es = insertelement <2 x double> poison, double %sqrt.i109.i, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.ej, i64 1
  %i.eu = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.et ; 3 uses
  %i.ev = fmul <2 x double> %54, %i.eu            ; 2 uses
  %i.ew = extractelement <2 x double> %i.eu, i64 0
  %i.ex = fneg double %i.ew                       ; 2 uses
  %55 = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.ey = load <3 x double>, ptr %i.em, align 8, !tbaa !85, !noalias !322
  %56 = fmul double %52, %i.ex
  %57 = shufflevector <2 x double> %i.ev, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %58 = shufflevector <2 x double> %i.en, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %59 = shufflevector <2 x double> %55, <2 x double> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.ez = fmul <3 x double> %58, %59
  %60 = insertelement <3 x double> %i.ez, double %56, i64 2
  %i.fa = fmul <3 x double> %57, %60
  %i.fb = shufflevector <2 x double> %i.eu, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fc = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.fb, <3 x double> %i.ey, <3 x double> %i.fa)
  %i.fd = shufflevector <2 x double> %i.ev, <2 x double> poison, <3 x i32> zeroinitializer
  %i.fe = fmul <3 x double> %i.fd, %i.fc          ; 3 uses
  %i.ff = shufflevector <3 x double> %i.fe, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.ff, ptr %7, align 16, !tbaa !85, !alias.scope !322
  %i.fg = extractelement <3 x double> %i.fe, i64 2
  store double %i.fg, ptr %9, align 16, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.r:                                             ; preds = %bb.k
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bh, i64 328
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %61 = load <3 x double>, ptr %i.fh, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %62 = load double, ptr %i.fi, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %63 = fmul double %62, %62
  %64 = extractelement <3 x double> %61, i64 0    ; 2 uses
  %65 = call double @llvm.fmuladd.f64(double %64, double %64, double %63)
  %i.fj = extractelement <3 x double> %61, i64 2  ; 2 uses
  %i.fk = call noundef double @llvm.fmuladd.f64(double %i.fj, double %i.fj, double %65) ; 2 uses
  %66 = getelementptr inbounds nuw i8, ptr %i.bh, i64 352
  %67 = load double, ptr %66, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %68 = getelementptr inbounds nuw i8, ptr %i.bh, i64 360
  %69 = load double, ptr %68, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %70 = fmul double %69, %69
  %i.fl = call double @llvm.fmuladd.f64(double %67, double %67, double %70)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bh, i64 368
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.fo = call noundef double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fl) ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bh, i64 224
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !85, !noalias !322 ; 3 uses
  %i.fv = fmul double %i.fs, %i.fs
  %i.fw = call double @llvm.fmuladd.f64(double %i.fq, double %i.fq, double %i.fv)
  %i.fx = call double @llvm.fmuladd.f64(double %i.fu, double %i.fu, double %i.fw) ; 3 uses
  %i.fy = fmul double %i.fx, f0x3E80000000000000  ; 2 uses
  %i.fz = fcmp ogt double %i.fk, %i.fy
  %i.ga = fcmp ogt double %i.fo, %i.fy
  %or.cond.i = and i1 %i.fz, %i.ga
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gb = fneg double %i.fu                       ; 2 uses
  %i.gc = fneg double %i.fq                       ; 2 uses
  %i.gd = fneg double %i.fs                       ; 2 uses
  %sqrt.i = call double @llvm.sqrt.f64(double %i.fx)
  %i.ge = fdiv double 1.000000e+00, %sqrt.i       ; 3 uses
  %i.gf = fmul double %i.ge, %i.ge                ; 2 uses
  %i.gg = fmul double %i.fx, %i.ge                ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !154, !noalias !322 ; 2 uses
  %i.gj = fneg double %i.gg
  %i.gk = fmul double %i.gi, %i.gj
  %i.gl = fdiv double %i.gk, %i.fk                ; 2 uses
  %71 = insertelement <3 x double> poison, double %i.gl, i64 0
  %72 = shufflevector <3 x double> %71, <3 x double> poison, <3 x i32> zeroinitializer
  %73 = fmul <3 x double> %61, %72                ; 3 uses
  %74 = fmul double %62, %i.gl                    ; 2 uses
  %75 = extractelement <3 x double> %73, i64 0    ; 2 uses
  store double %75, ptr %7, align 16, !tbaa !85, !alias.scope !322
  store double %74, ptr %8, align 8, !tbaa !85, !alias.scope !322
  %76 = extractelement <3 x double> %73, i64 2    ; 2 uses
  store double %76, ptr %9, align 16, !tbaa !85, !alias.scope !322
  %i.gm = fneg double %i.gi
  %i.gn = fmul double %i.gg, %i.gm
  %i.go = fdiv double %i.gn, %i.fo                ; 3 uses
  %77 = fmul double %67, %i.go                    ; 2 uses
  store double %77, ptr %i.ac, align 16, !tbaa !85, !alias.scope !322
  %78 = fmul double %69, %i.go                    ; 2 uses
  store double %78, ptr %i.ad, align 8, !tbaa !85, !alias.scope !322
  %i.gp = fmul double %i.fn, %i.go                ; 2 uses
  store double %i.gp, ptr %i.ae, align 16, !tbaa !85, !alias.scope !322
  %i.gq = load double, ptr %i.br, align 8, !tbaa !85, !noalias !322
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !85, !noalias !322
  %i.gt = fmul double %i.gs, %i.gd
  %i.gu = call double @llvm.fmuladd.f64(double %i.gq, double %i.gc, double %i.gt)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !85, !noalias !322
  %i.gx = call noundef double @llvm.fmuladd.f64(double %i.gw, double %i.gb, double %i.gu)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !85, !noalias !322
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bh, i64 248
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !85, !noalias !322
  %i.hc = fmul double %i.hb, %i.gd
  %i.hd = call double @llvm.fmuladd.f64(double %i.gz, double %i.gc, double %i.hc)
  %i.he = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  %i.hf = load double, ptr %i.he, align 8, !tbaa !85, !noalias !322
  %i.hg = call noundef double @llvm.fmuladd.f64(double %i.hf, double %i.gb, double %i.hd)
  %i.hh = fneg double %i.hg
  %i.hi = fmul double %i.gf, %i.hh                ; 3 uses
  %i.hj = fmul double %i.gf, %i.gx                ; 3 uses
  %i.hk = fmul double %75, %i.hj
  %i.hl = fmul double %74, %i.hj
  %i.hm = fmul double %76, %i.hj
  %79 = fmul double %77, %i.hi
  %80 = fmul double %78, %i.hi
  %81 = fmul double %i.gp, %i.hi
  %i.hn = fsub double %i.hk, %79
  %82 = fsub double %i.hl, %80
  %83 = fsub double %i.hm, %81
  store double %i.hn, ptr %i.af, align 8, !tbaa !85, !alias.scope !322
  store double %82, ptr %i.ag, align 16, !tbaa !85, !alias.scope !322
  store double %83, ptr %i.ah, align 8, !tbaa !85, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %7, i8 0, i64 72, i1 false), !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

_ZL21calculateVectorForcesRK17pull_coord_work_t.exit: ; preds = %.preheader.i, %.loopexit.loopexit128.i, %bb.m, %bb.n, %bb.p, %bb.q, %bb.s, %bb.t
  %i.ho = phi <3 x double> [ %i.bz, %.preheader.i ], [ %i.co, %.loopexit.loopexit128.i ], [ %i.dw, %bb.m ], [ zeroinitializer, %bb.n ], [ %i.fe, %bb.p ], [ zeroinitializer, %bb.q ], [ %73, %bb.s ], [ zeroinitializer, %bb.t ]
  %.pre = load i32, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  br i1 %i.s, label %bb.u, label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit

bb.u:                                             ; preds = %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit
  %.not.i = icmp eq i32 %.pre, 3
  br i1 %.not.i, label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit.thread, label %bb.v

_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit.thread: ; preds = %bb.u
  %i.hp = load ptr, ptr %i.ai, align 8, !tbaa !111
  %i.hq = load ptr, ptr %4, align 8, !tbaa !179
  br label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.hr = fmul <3 x double> %i.ho, splat (double -5.000000e-01) ; 2 uses
  %84 = shufflevector <3 x double> %i.hr, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.hs = fpext <8 x float> %i.bf to <8 x double>
  %85 = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %86 = load double, ptr %85, align 8, !tbaa !85
  %87 = load <3 x double>, ptr %i.br, align 8, !tbaa !85
  %88 = shufflevector <3 x double> %87, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %89 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %84, <8 x double> %88, <8 x double> %i.hs)
  %90 = fptrunc <8 x double> %89 to <8 x float>   ; 2 uses
  %91 = fpext float %.sroa.026.047 to double
  %92 = extractelement <3 x double> %i.hr, i64 2
  %93 = call double @llvm.fmuladd.f64(double %92, double %86, double %91)
  %94 = fptrunc double %93 to float               ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !116 ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 3
  br i1 %i.hv, label %bb.w, label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit

bb.w:                                             ; preds = %bb.v
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  %95 = fpext <8 x float> %90 to <8 x double>
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !85
  %i.hz = load <3 x double>, ptr %i.hw, align 8, !tbaa !85
  %96 = shufflevector <3 x double> %i.hz, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %97 = load <3 x double>, ptr %i.af, align 8, !tbaa !85
  %98 = fmul <3 x double> %97, splat (double -5.000000e-01) ; 2 uses
  %99 = shufflevector <3 x double> %98, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %100 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %99, <8 x double> %96, <8 x double> %95)
  %101 = fptrunc <8 x double> %100 to <8 x float> ; 2 uses
  %102 = fpext float %94 to double
  %103 = extractelement <3 x double> %98, i64 2
  %104 = call double @llvm.fmuladd.f64(double %103, double %i.hy, double %102)
  %105 = fptrunc double %104 to float             ; 2 uses
  %i.ia = icmp samesign ugt i32 %i.hu, 5
  br i1 %i.ia, label %bb.x, label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit

bb.x:                                             ; preds = %bb.w
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %106 = fpext <8 x float> %101 to <8 x double>
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  %i.id = load double, ptr %i.ic, align 8, !tbaa !85
  %i.ie = load <3 x double>, ptr %i.ib, align 8, !tbaa !85
  %107 = shufflevector <3 x double> %i.ie, <3 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %108 = load <3 x double>, ptr %i.ac, align 16, !tbaa !85
  %109 = fmul <3 x double> %108, splat (double -5.000000e-01) ; 2 uses
  %110 = shufflevector <3 x double> %109, <3 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %111 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %110, <8 x double> %107, <8 x double> %106)
  %112 = fptrunc <8 x double> %111 to <8 x float>
  %113 = fpext float %105 to double
  %114 = extractelement <3 x double> %109, i64 2
  %115 = call double @llvm.fmuladd.f64(double %114, double %i.id, double %113)
  %116 = fptrunc double %115 to float
  br label %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit

_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit: ; preds = %bb.x, %bb.w, %bb.v, %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit
  %.sroa.026.1 = phi float [ %.sroa.026.047, %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit ], [ %94, %bb.v ], [ %116, %bb.x ], [ %105, %bb.w ] ; 4 uses
  %i.if = phi <8 x float> [ %i.bf, %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit ], [ %90, %bb.v ], [ %112, %bb.x ], [ %101, %bb.w ] ; 4 uses
  %i.ig = load ptr, ptr %i.ai, align 8, !tbaa !111 ; 5 uses
  %i.ih = load ptr, ptr %4, align 8, !tbaa !179   ; 6 uses
  switch i32 %.pre, label %bb.ab [
    i32 2, label %bb.y
    i32 8, label %_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit
    i32 4, label %bb.aa
  ]

bb.y:                                             ; preds = %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bh, i64 176
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !115 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bh, i64 320
  %i.il = load double, ptr %i.ik, align 8, !tbaa !323
  %i.im = getelementptr inbounds nuw i8, ptr %i.bh, i64 384 ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.io = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %5, align 8
  store ptr %i.am, ptr %i.ao, align 8
  store double %i.il, ptr %i.b, align 8, !tbaa !85
  store ptr %7, ptr %i.c, align 8, !tbaa !180
  store double %i.in, ptr %i.d, align 8, !tbaa !85
  store i32 -1, ptr %i.e, align 4, !tbaa !67
  store ptr %i.ih, ptr %i.f, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 136
  %i.iq = load float, ptr %i.ip, align 8, !tbaa !181
  %i.ir = fpext float %i.iq to double
  store double %i.ir, ptr %i.g, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 96 ; 2 uses
  %i.it = call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.is) ; 2 uses
  %i.iu = extractvalue { ptr, ptr } %i.it, 0      ; 2 uses
  store ptr %i.iu, ptr %6, align 8
  %i.iv = extractvalue { ptr, ptr } %i.it, 1      ; 2 uses
  store ptr %i.iv, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.iu to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = lshr exact i64 %i.iy, 2
  %i.ja = trunc i64 %i.iz to i32
  store i32 %i.ja, ptr %i.h, align 4, !tbaa !67
  %i.jb = call noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.is)
  %i.jc = icmp ult i64 %i.jb, 101
  br i1 %i.jc, label %_ZL20apply_forces_cyl_grpRK17pull_group_work_tdN3gmx8ArrayRefIKfEEPKddiPA3_f.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ij, i64 60
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !60
  br label %_ZL20apply_forces_cyl_grpRK17pull_group_work_tdN3gmx8ArrayRefIKfEEPKddiPA3_f.exit.i

_ZL20apply_forces_cyl_grpRK17pull_group_work_tdN3gmx8ArrayRefIKfEEPKddiPA3_f.exit.i: ; preds = %bb.z, %bb.y
  %i.jf = phi i32 [ %i.je, %bb.z ], [ 1, %bb.y ]
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.io, i32 %i.jf)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @_ZL20apply_forces_cyl_grpRK17pull_group_work_tdN3gmx8ArrayRefIKfEEPKddiPA3_f.omp_outlined, ptr nonnull %i.h, ptr nonnull align 8 dereferenceable(272) %i.ij, ptr nonnull %6, ptr nonnull %5, ptr nonnull %i.b, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.c, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.jg = load double, ptr %i.im, align 8, !tbaa !154 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bh, i64 296
  %i.ji = load double, ptr %7, align 16, !tbaa !85
  %i.jj = load double, ptr %i.jh, align 8, !tbaa !85
  %i.jk = call double @llvm.fmuladd.f64(double %i.jg, double %i.jj, double %i.ji)
  store double %i.jk, ptr %i.i, align 16, !tbaa !85
  %i.jl = load double, ptr %8, align 8, !tbaa !85
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bh, i64 304
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !85
  %i.jo = call double @llvm.fmuladd.f64(double %i.jg, double %i.jn, double %i.jl)
  store double %i.jo, ptr %i.aq, align 8, !tbaa !85
  %i.jp = load double, ptr %9, align 16, !tbaa !85
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bh, i64 312
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !85
  %i.js = call double @llvm.fmuladd.f64(double %i.jg, double %i.jr, double %i.jp)
  store double %i.js, ptr %i.ar, align 16, !tbaa !85
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !67
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [272 x i8], ptr %i.ig, i64 %i.jv
  call fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %i.jw, ptr %1, ptr %i.am, ptr noundef %i.i, i32 noundef 1, ptr noundef %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit

bb.aa:                                            ; preds = %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !85 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bh, i64 280
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !85 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bh, i64 288
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  %i.ke = load <2 x double>, ptr %i.br, align 8, !tbaa !85 ; 3 uses
  %i.kf = load <2 x double>, ptr %i.jx, align 8, !tbaa !85 ; 3 uses
  %i.kg = extractelement <2 x double> %i.kf, i64 0
  %i.kh = extractelement <2 x double> %i.ke, i64 0
  %i.ki = call double @llvm.fmuladd.f64(double %i.kh, double %i.kg, double 0.000000e+00)
  %i.kj = extractelement <2 x double> %i.kf, i64 1
  %i.kk = extractelement <2 x double> %i.ke, i64 1
  %i.kl = call double @llvm.fmuladd.f64(double %i.kk, double %i.kj, double %i.ki)
  %i.km = call double @llvm.fmuladd.f64(double %i.jz, double %i.kb, double %i.kl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.kn = fneg double %i.km                       ; 2 uses
  %i.ko = load double, ptr %i.kc, align 8, !tbaa !112 ; 2 uses
  %i.kp = load double, ptr %i.kd, align 8, !tbaa !154 ; 2 uses
  %i.kq = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kr = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> %i.kf, <2 x double> %i.ke)
  %i.kt = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = fdiv <2 x double> %i.ks, %i.ku
  %i.kw = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x double> %i.kv, %i.kx
  store <2 x double> %i.ky, ptr %i.a, align 16, !tbaa !85
  %i.kz = call double @llvm.fmuladd.f64(double %i.kn, double %i.kb, double %i.jz)
  %i.la = fdiv double %i.kz, %i.ko
  %i.lb = fmul double %i.la, %i.kp
  store double %i.lb, ptr %i.an, align 16, !tbaa !85
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bh, i64 100
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !67
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [272 x i8], ptr %i.ig, i64 %i.le
  call fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %i.lf, ptr %1, ptr %i.am, ptr noundef %i.a, i32 noundef -1, ptr noundef %i.ih)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !67
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [272 x i8], ptr %i.ig, i64 %i.li
  call fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %i.lj, ptr %1, ptr %i.am, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ab

bb.ab:                                            ; preds = %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit.thread, %bb.aa, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit
  %i.lk = phi ptr [ %i.hq, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit.thread ], [ %i.ih, %bb.aa ], [ %i.ih, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit ] ; 6 uses
  %i.ll = phi ptr [ %i.hp, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit.thread ], [ %i.ig, %bb.aa ], [ %i.ig, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit ] ; 6 uses
  %.sroa.026.199 = phi float [ %.sroa.026.047, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit.thread ], [ %.sroa.026.1, %bb.aa ], [ %.sroa.026.1, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit ] ; 3 uses
  %i.lm = phi <8 x float> [ %i.bf, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit.thread ], [ %i.if, %bb.aa ], [ %i.if, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit ] ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bh, i64 92
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !67
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [272 x i8], ptr %i.ll, i64 %i.lp ; 3 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !65
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !65
  %i.lu = icmp eq ptr %i.lr, %i.lt
  br i1 %i.lu, label %._crit_edge.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %i.lq, ptr %1, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef -1, ptr noundef %i.lk)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ac, %bb.ab
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !67
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [272 x i8], ptr %i.ll, i64 %i.lx
  call fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %i.ly, ptr %1, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef 1, ptr noundef %i.lk)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bh, i64 88 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !116
  %i.mb = icmp sgt i32 %i.ma, 3
  br i1 %i.mb, label %bb.ad, label %_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit

bb.ad:                                            ; preds = %._crit_edge.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bh, i64 100
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !67
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [272 x i8], ptr %i.ll, i64 %i.me
  call fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %i.mf, ptr %1, ptr %i.am, ptr noundef %i.af, i32 noundef -1, ptr noundef %i.lk)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !67
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [272 x i8], ptr %i.ll, i64 %i.mi
  call fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %i.mj, ptr %1, ptr %i.am, ptr noundef %i.af, i32 noundef 1, ptr noundef %i.lk)
  %.pr.i = load i32, ptr %i.lz, align 8, !tbaa !116
  %i.mk = icmp sgt i32 %.pr.i, 5
  br i1 %i.mk, label %bb.ae, label %_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ml = getelementptr inbounds nuw i8, ptr %i.bh, i64 108
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !67
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [272 x i8], ptr %i.ll, i64 %i.mn
  call fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %i.mo, ptr %1, ptr %i.am, ptr noundef %i.ac, i32 noundef -1, ptr noundef %i.lk)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !67
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [272 x i8], ptr %i.ll, i64 %i.mr
  call fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %i.ms, ptr %1, ptr %i.am, ptr noundef %i.ac, i32 noundef 1, ptr noundef %i.lk)
  br label %_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit

_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit: ; preds = %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit, %_ZL20apply_forces_cyl_grpRK17pull_group_work_tdN3gmx8ArrayRefIKfEEPKddiPA3_f.exit.i, %._crit_edge.i, %bb.ad, %bb.ae
  %.sroa.026.198 = phi float [ %.sroa.026.1, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit ], [ %.sroa.026.1, %_ZL20apply_forces_cyl_grpRK17pull_group_work_tdN3gmx8ArrayRefIKfEEPKddiPA3_f.exit.i ], [ %.sroa.026.199, %._crit_edge.i ], [ %.sroa.026.199, %bb.ad ], [ %.sroa.026.199, %bb.ae ]
  %i.mt = phi <8 x float> [ %i.if, %_ZL16add_virial_coordPA3_fRK17pull_coord_work_tRK21PullCoordVectorForces.exit ], [ %i.if, %_ZL20apply_forces_cyl_grpRK17pull_group_work_tdN3gmx8ArrayRefIKfEEPKddiPA3_f.exit.i ], [ %i.lm, %._crit_edge.i ], [ %i.lm, %bb.ad ], [ %i.lm, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.j, %_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit, %.lr.ph.split
  %.sroa.026.2 = phi float [ %.sroa.026.047, %.lr.ph.split ], [ %.sroa.026.047, %bb.j ], [ %.sroa.026.198, %_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit ] ; 2 uses
  %i.mu = phi <8 x float> [ %i.bf, %.lr.ph.split ], [ %i.bf, %bb.j ], [ %i.mt, %_ZL18apply_forces_coordRK17pull_coord_work_tN3gmx8ArrayRefIK17pull_group_work_tEERK21PullCoordVectorForcesNS3_IKfEEPA3_f.exit ] ; 2 uses
  %.0 = add nsw i64 %.048, -1
  %i.mv = icmp sgt i64 %.048, 0
  br i1 %i.mv, label %.lr.ph.split, label %._crit_edge, !llvm.loop !316

bb.ag:                                            ; preds = %._crit_edge
  %i.mw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.mx = load i8, ptr %i.mw, align 8, !tbaa !321, !range !82, !noundef !83
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %.preheader10.i, label %_ZN3gmx15ForceWithVirial21addVirialContributionEPA3_Kf.exit

.preheader10.i:                                   ; preds = %bb.ag
  %i.mz = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %117 = load <8 x float>, ptr %i.mz, align 4, !tbaa !72
  %118 = fadd <8 x float> %i.be, %117
  store <8 x float> %118, ptr %i.mz, align 4, !tbaa !72
  %i.na = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %119 = load float, ptr %i.na, align 4, !tbaa !72
  %120 = fadd float %.sroa.026.0.lcssa, %119
  store float %120, ptr %i.na, align 4, !tbaa !72
  br label %_ZN3gmx15ForceWithVirial21addVirialContributionEPA3_Kf.exit

_ZN3gmx15ForceWithVirial21addVirialContributionEPA3_Kf.exit: ; preds = %._crit_edge, %bb.ag, %.preheader10.i, %bb.a
  ret void
}

declare void @_ZN3gmx38distributeTransformationPullCoordForceEP17pull_coord_work_tNS_8ArrayRefIS0_EE(ptr noundef, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr %1, ptr %2, ptr noundef nonnull %3, i32 noundef range(i32 -1, 2) %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %"class.gmx::ArrayRef.88", align 8  ; 3 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %7 = alloca %"class.gmx::ArrayRef.112", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %6, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.f, align 8
  store ptr %3, ptr %i.a, align 8, !tbaa !180
  store i32 %4, ptr %i.b, align 4, !tbaa !67
  store ptr %5, ptr %i.c, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 3 uses
  store ptr %i.i, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = load ptr, ptr %0, align 8, !tbaa !26
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.q, 4
  %i.s = ptrtoint ptr %i.i to i64
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.v = sitofp i32 %4 to double                  ; 2 uses
  %i.w = load i32, ptr %i.i, align 4, !tbaa !67
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [12 x i8], ptr %5, i64 %i.x ; 3 uses
  %i.z = load <2 x double>, ptr %3, align 8, !tbaa !85
  %i.aa = load <2 x float>, ptr %i.y, align 4, !tbaa !72
  %i.ab = fpext <2 x float> %i.aa to <2 x double>
  %i.ac = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.z, <2 x double> %i.ab)
  %i.af = fptrunc <2 x double> %i.ae to <2 x float>
  store <2 x float> %i.af, ptr %i.y, align 4, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !85
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !72
  %i.ak = fpext float %i.aj to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ah, double %i.ak)
  %i.am = fptrunc double %i.al to float
  store float %i.am, ptr %i.ai, align 4, !tbaa !72
  br label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.an = tail call noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.ao = icmp ult i64 %i.an, 101
  br i1 %i.ao, label %_ZNK17pull_group_work_t10numThreadsEv.exit.thread, label %_ZNK17pull_group_work_t10numThreadsEv.exit

_ZNK17pull_group_work_t10numThreadsEv.exit:       ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !60 ; 3 uses
  store i32 %i.aq, ptr %i.d, align 4, !tbaa !67
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %_ZNK17pull_group_work_t10numThreadsEv.exit.thread, label %bb.d

_ZNK17pull_group_work_t10numThreadsEv.exit.thread: ; preds = %bb.c, %_ZNK17pull_group_work_t10numThreadsEv.exit
  %i.as = ptrtoint ptr %i.k to i64
  %i.at = sub i64 %i.as, %i.s
  %i.au = lshr exact i64 %i.at, 2
  %i.av = trunc i64 %i.au to i32
  tail call fastcc void @_ZL21apply_forces_grp_partRK17pull_group_work_tiiN3gmx8ArrayRefIKfEEPKdiPA3_f(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef 0, i32 noundef %i.av, ptr %1, ptr noundef nonnull %3, i32 noundef %4, ptr noundef %5)
  br label %bb.e

bb.d:                                             ; preds = %_ZNK17pull_group_work_t10numThreadsEv.exit
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.aq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZL16apply_forces_grpRK17pull_group_work_tN3gmx8ArrayRefIKfEEPKdiPA3_f.omp_outlined, ptr nonnull %i.d, ptr nonnull %7, ptr nonnull %0, ptr nonnull %6, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK17pull_group_work_t10numThreadsEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void
}

declare { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZL20apply_forces_cyl_grpRK17pull_group_work_tdN3gmx8ArrayRefIKfEEPKddiPA3_f.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not40 = icmp sgt i32 %i.k, %i.j
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.s = load float, ptr %i.r, align 4, !tbaa !72 ; 2 uses
  %i.t = fcmp oeq float %i.s, 0.000000e+00
  br i1 %i.t, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.c
  %i.u = fpext float %i.s to double
  %i.v = load i64, ptr %4, align 8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = load i64, ptr %5, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.z
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !72
  %i.ae = fpext float %i.ad to double
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !182
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !85
  %i.ai = load double, ptr %6, align 8, !tbaa !85
  %i.aj = fadd double %i.ah, %i.ai                ; 2 uses
  %i.ak = load i32, ptr %8, align 4, !tbaa !67
  %i.al = sitofp i32 %i.ak to double
  %i.am = load double, ptr %9, align 8, !tbaa !85
  %i.an = load ptr, ptr %10, align 8, !tbaa !180  ; 2 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.aq = load double, ptr %11, align 8, !tbaa !85 ; 2 uses
  %i.ar = load ptr, ptr %7, align 8, !tbaa !71
  %i.as = getelementptr inbounds [12 x i8], ptr %i.ar, i64 %i.z ; 3 uses
  %i.at = fmul double %i.am, %i.al                ; 2 uses
  %i.au = fmul double %i.u, %i.ae                 ; 2 uses
  %i.av = load <2 x double>, ptr %i.an, align 8, !tbaa !85
  %i.aw = load <2 x double>, ptr %i.ap, align 8, !tbaa !85
  %i.ax = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.ay, %i.aw
  %i.ba = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.az, %i.bb
  %i.bd = insertelement <2 x double> poison, double %i.au, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.av, <2 x double> %i.bc)
  %i.bg = load <2 x float>, ptr %i.as, align 4, !tbaa !72
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  %i.bi = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bf, <2 x double> %i.bh)
end_hunk_0
begin_hunk_1_@_ZN13pull_params_tD2Ev:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !21
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i

_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI12t_pull_coordEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !289
  br label %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.r = phi ptr [ %.pr.i, %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI12t_pull_coordSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !301
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #31
  br label %_ZNSt6vectorI12t_pull_coordSaIS0_EED2Ev.exit

_ZNSt6vectorI12t_pull_coordSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12t_pull_coordS0_EvT_S2_RSaIT0_E.exit.i, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !284  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !298 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorI12t_pull_coordSaIS0_EED2Ev.exit, %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ao, %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i ], [ %i.y, %_ZNSt6vectorI12t_pull_coordSaIS0_EED2Ev.exit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i2
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.c, %.lr.ph.i.i.i2
  %i.ai = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #31
  br label %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i

_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i:     ; preds = %bb.d, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 56 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ao, %i.aa
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !0

_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI12t_pull_groupEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.x, align 8, !tbaa !284
  br label %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI12t_pull_coordSaIS0_EED2Ev.exit
  %i.ap = phi ptr [ %.pr.i5, %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt6vectorI12t_pull_coordSaIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorI12t_pull_groupSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !299
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #31
  br label %_ZNSt6vectorI12t_pull_groupSaIS0_EED2Ev.exit

_ZNSt6vectorI12t_pull_groupSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12t_pull_groupS0_EvT_S2_RSaIT0_E.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z19pull_have_potentialRK6pull_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(348) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.b = load i8, ptr %i.a, align 1, !tbaa !286, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z20pull_have_constraintRK6pull_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(348) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.b = load i8, ptr %i.a, align 2, !tbaa !287, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_Z20pull_have_constraintRK13pull_params_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !561  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !289
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [176 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 8, !tbaa !302
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.h, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !560

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_pull.cpp() #24 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2muL13ParserVersionB5cxx11E, i64 16), ptr @_ZN2muL13ParserVersionB5cxx11E, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZN2muL13ParserVersionB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN2muL13ParserVersionB5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN2muL13ParserVersionB5cxx11E, i64 31), align 1, !tbaa !21
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN2muL13ParserVersionB5cxx11E, ptr nonnull @__dso_handle) #20 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2muL17ParserVersionDateB5cxx11E, i64 16), ptr @_ZN2muL17ParserVersionDateB5cxx11E, align 8, !tbaa !16
  store i64 4121128121874395186, ptr getelementptr inbounds nuw (i8, ptr @_ZN2muL17ParserVersionDateB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2muL17ParserVersionDateB5cxx11E, i64 8), align 8, !tbaa !22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN2muL17ParserVersionDateB5cxx11E, i64 24), align 8, !tbaa !21
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN2muL17ParserVersionDateB5cxx11E, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x double> @llvm.fmuladd.v3f64(<3 x double>, <3 x double>, <3 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #14

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { nounwind }
attributes #21 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !178}
!1 = distinct !{!1, !178}
!2 = distinct !{!2, !178}
!3 = distinct !{!3, !178}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !9, i64 16}
!20 = !{!19, !14, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!19, !17, i64 8}
!23 = !{!"p1 int", !13, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 8}
!26 = !{!24, !23, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !24, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!30 = !{!"p1 float", !13, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIfSaIfEE", !33, i64 0}
!35 = !{!"_ZTS12t_pull_group", !29, i64 0, !34, i64 24, !10, i64 48, !10, i64 52}
!36 = !{!"bool", !9, i64 0}
!37 = !{!"p1 _ZTSN3gmx8internal16LocalAtomSetDataE", !13, i64 0}
!38 = !{!"_ZTSN3gmx12LocalAtomSetE", !37, i64 0}
!39 = !{!"p1 _ZTSN3gmx12LocalAtomSetE", !13, i64 0}
!40 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx12LocalAtomSetELb0EE", !39, i64 0}
!41 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx12LocalAtomSetESt14default_deleteIS1_EEE", !40, i64 0}
!42 = !{!"_ZTSSt5tupleIJPN3gmx12LocalAtomSetESt14default_deleteIS1_EEE", !41, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx12LocalAtomSetESt14default_deleteIS1_EE", !42, i64 0}
!44 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx12LocalAtomSetESt14default_deleteIS1_ELb1ELb1EE", !43, i64 0}
!45 = !{!"_ZTSSt10unique_ptrIN3gmx12LocalAtomSetESt14default_deleteIS1_EE", !44, i64 0}
!46 = !{!"float", !9, i64 0}
!47 = !{!"p1 _ZTSN3gmx11BasicVectorIdEE", !13, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIdEESaIS2_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIdEESaIS2_EE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIdEESaIS2_EE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIdEESaIS2_EE", !50, i64 0}
!52 = !{!"p1 double", !13, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIdSaIdEE", !55, i64 0}
!57 = !{!"_ZTSN3gmx11BasicVectorIdEE", !9, i64 0}
!58 = !{!"_ZTS17pull_group_work_t", !35, i64 0, !10, i64 56, !10, i64 60, !36, i64 64, !34, i64 72, !38, i64 96, !34, i64 104, !45, i64 128, !46, i64 136, !46, i64 140, !46, i64 144, !51, i64 152, !56, i64 176, !57, i64 200, !57, i64 224, !57, i64 248}
!59 = !{!58, !10, i64 56}
!60 = !{!58, !10, i64 60}
!61 = !{!58, !36, i64 64}
!62 = !{!37, !37, i64 0}
!63 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!64 = !{!24, !23, i64 16}
!65 = !{!23, !23, i64 0}
!66 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!67 = !{!10, !10, i64 0}
!68 = !{!31, !30, i64 8}
!69 = !{!31, !30, i64 0}
!70 = !{!31, !30, i64 16}
!71 = !{!30, !30, i64 0}
!72 = !{!46, !46, i64 0}
!73 = !{!"_ZTS16PullingAlgorithm", !9, i64 0}
!74 = !{!"_ZTS17PullGroupGeometry", !9, i64 0}
!75 = !{!"double", !9, i64 0}
!76 = !{!"_ZTSSt5arrayIiLm6EE", !9, i64 0}
!77 = !{!"_ZTSN3gmx11BasicVectorIiEE", !9, i64 0}
!78 = !{!"_ZTSN3gmx11BasicVectorIfEE", !9, i64 0}
!79 = !{!"_ZTS12t_pull_coord", !73, i64 0, !19, i64 8, !74, i64 40, !19, i64 48, !75, i64 80, !10, i64 88, !76, i64 92, !77, i64 116, !78, i64 128, !78, i64 140, !36, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !10, i64 172}
!80 = !{!79, !74, i64 40}
!81 = !{!36, !36, i64 0}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!"_ZTS7PbcType", !9, i64 0}
!85 = !{!75, !75, i64 0}
!86 = !{!"p1 _ZTS17pull_coord_work_t", !13, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseI17pull_coord_work_tSaIS0_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 0}
!89 = !{!"p1 _ZTS17pull_group_work_t", !13, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EP17pull_group_work_tLb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJP17pull_group_work_tSt14default_deleteIS0_EEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJP17pull_group_work_tSt14default_deleteIS0_EEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implI17pull_group_work_tSt14default_deleteIS0_EE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataI17pull_group_work_tSt14default_deleteIS0_ELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrI17pull_group_work_tSt14default_deleteIS0_EE", !94, i64 0}
!96 = !{!"_ZTS20PullCoordSpatialData", !9, i64 0, !9, i64 24, !9, i64 48, !57, i64 72, !75, i64 96, !9, i64 104, !75, i64 128, !9, i64 136, !9, i64 160, !75, i64 184}
!97 = !{!"p1 _ZTSN2mu6ParserE", !13, i64 0}
!98 = !{!"_ZTSSt10_Head_baseILm0EPN2mu6ParserELb0EE", !97, i64 0}
!99 = !{!"_ZTSSt11_Tuple_implILm0EJPN2mu6ParserESt14default_deleteIS1_EEE", !98, i64 0}
!100 = !{!"_ZTSSt5tupleIJPN2mu6ParserESt14default_deleteIS1_EEE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_implIN2mu6ParserESt14default_deleteIS1_EE", !100, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_dataIN2mu6ParserESt14default_deleteIS1_ELb1ELb1EE", !101, i64 0}
!103 = !{!"_ZTSSt10unique_ptrIN2mu6ParserESt14default_deleteIS1_EE", !102, i64 0}
!104 = !{!"_ZTSN3gmx25PullCoordExpressionParserE", !19, i64 0, !56, i64 32, !103, i64 56}
!105 = !{!"_ZTS17pull_coord_work_t", !79, i64 0, !95, i64 176, !75, i64 184, !96, i64 192, !75, i64 384, !36, i64 392, !104, i64 400, !56, i64 464}
!106 = !{!105, !75, i64 376}
!107 = !{!105, !74, i64 40}
!108 = !{!105, !10, i64 172}
!109 = !{!105, !73, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseI17pull_group_work_tSaIS0_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!111 = !{!110, !89, i64 0}
!112 = !{!96, !75, i64 96}
!113 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!89, !89, i64 0}
!116 = !{!105, !10, i64 88}
!117 = !{!96, !75, i64 184}
!118 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !13, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!105, !75, i64 184}
!121 = !{!"p1 _ZTS12t_pull_group", !13, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseI12t_pull_groupSaIS0_EE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!123 = !{!"_ZTSNSt12_Vector_baseI12t_pull_groupSaIS0_EE12_Vector_implE", !122, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseI12t_pull_groupSaIS0_EE", !123, i64 0}
!125 = !{!"_ZTSSt6vectorI12t_pull_groupSaIS0_EE", !124, i64 0}
!126 = !{!"p1 _ZTS12t_pull_coord", !13, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseI12t_pull_coordSaIS0_EE17_Vector_impl_dataE", !126, i64 0, !126, i64 8, !126, i64 16}
!128 = !{!"_ZTSNSt12_Vector_baseI12t_pull_coordSaIS0_EE12_Vector_implE", !127, i64 0}
!129 = !{!"_ZTSSt12_Vector_baseI12t_pull_coordSaIS0_EE", !128, i64 0}
!130 = !{!"_ZTSSt6vectorI12t_pull_coordSaIS0_EE", !129, i64 0}
!131 = !{!"_ZTS13pull_params_t", !10, i64 0, !10, i64 4, !46, i64 8, !46, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19, !10, i64 20, !10, i64 24, !36, i64 28, !36, i64 29, !125, i64 32, !130, i64 56}
!132 = !{!"_ZTSNSt12_Vector_baseI17pull_group_work_tSaIS0_EE12_Vector_implE", !110, i64 0}
!133 = !{!"_ZTSSt12_Vector_baseI17pull_group_work_tSaIS0_EE", !132, i64 0}
!134 = !{!"_ZTSSt6vectorI17pull_group_work_tSaIS0_EE", !133, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseI17pull_coord_work_tSaIS0_EE12_Vector_implE", !87, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseI17pull_coord_work_tSaIS0_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorI17pull_coord_work_tSaIS0_EE", !136, i64 0}
!138 = !{!"p1 _ZTS7ComSums", !13, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseI7ComSumsSaIS0_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!140 = !{!"_ZTSNSt12_Vector_baseI7ComSumsSaIS0_EE12_Vector_implE", !139, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseI7ComSumsSaIS0_EE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorI7ComSumsSaIS0_EE", !141, i64 0}
!143 = !{!"p1 _ZTS10tmpi_comm_", !13, i64 0}
!144 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !13, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!146 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !145, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !146, i64 0}
!148 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !147, i64 0}
!149 = !{!"_ZTS11pull_comm_t", !36, i64 0, !36, i64 1, !143, i64 8, !10, i64 16, !36, i64 20, !17, i64 24, !17, i64 32, !148, i64 40, !51, i64 64, !56, i64 88}
!150 = !{!"p1 _ZTS11PullHistory", !13, i64 0}
!151 = !{!"_ZTS6pull_t", !131, i64 0, !36, i64 80, !36, i64 81, !36, i64 82, !36, i64 83, !84, i64 84, !10, i64 88, !36, i64 92, !10, i64 96, !36, i64 100, !134, i64 104, !137, i64 128, !36, i64 152, !142, i64 160, !36, i64 184, !149, i64 192, !113, i64 304, !113, i64 312, !36, i64 320, !36, i64 321, !150, i64 328, !10, i64 336, !10, i64 340, !10, i64 344}
!152 = !{!151, !36, i64 80}
!153 = !{!86, !86, i64 0}
!154 = !{!105, !75, i64 384}
!155 = !{!"llvm.loop.isvectorized", i32 1}
!156 = !{!"llvm.loop.unroll.runtime.disable"}
!157 = !{!87, !86, i64 8}
!158 = !{!105, !36, i64 392}
end_hunk_1
