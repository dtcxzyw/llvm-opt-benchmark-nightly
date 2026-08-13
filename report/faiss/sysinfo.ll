inline.NumInlined: 626
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9benchmark7CPUInfoC2Ev:bb.a

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i
  %i.ea = load i64, ptr %i.n, align 8, !tbaa !39
  %i.eb = sitofp i64 %i.ea to double
  %i.ec = fmul nnan double %i.eb, 1.000000e+03
  br label %_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit

bb.t:                                             ; preds = %_ZN9benchmark12_GLOBAL__N_110CpuScalingEi.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i

bb.u:                                             ; preds = %.noexc.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.critedge111.i

bb.v:                                             ; preds = %.noexc.i124.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.critedge110.i

bb.w:                                             ; preds = %.noexc125.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body130.thread.i

bb.x:                                             ; preds = %.noexc.i134.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

bb.y:                                             ; preds = %.noexc135.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

.body140.i:                                       ; preds = %bb.y, %bb.r
  %eh.lpad-body141.i = phi { ptr, i32 } [ %i.ei, %bb.y ], [ %i.dk, %bb.r ] ; 2 uses
  %i.ej = load ptr, ptr %22, align 8, !tbaa !35   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.cv
  br i1 %i.ek, label %.body130.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i: ; preds = %.body140.i
  %i.el = load i64, ptr %i.cv, align 8, !tbaa !34
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #24
  br label %.body130.i

.body130.i:                                       ; preds = %.body140.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i, %bb.x
  %.pn.i2 = phi { ptr, i32 } [ %i.eh, %bb.x ], [ %eh.lpad-body141.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i ], [ %eh.lpad-body141.i, %.body140.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br i1 %i.bj, label %.body130.thread.i, label %.critedge111.i

.body130.thread.i:                                ; preds = %.body130.i, %bb.w, %bb.o
  %.pn.pn242.i = phi { ptr, i32 } [ %.pn.i2, %.body130.i ], [ %i.cn, %bb.o ], [ %i.eg, %bb.w ] ; 2 uses
  %i.en = load ptr, ptr %21, align 8, !tbaa !35   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %.critedge110.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i: ; preds = %.body130.thread.i
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !34
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #24
  br label %.critedge110.i

.critedge110.i:                                   ; preds = %.body130.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i, %bb.v
  %.pn.pn.pn.ph.i = phi { ptr, i32 } [ %.pn.pn242.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i ], [ %i.ef, %bb.v ], [ %.pn.pn242.i, %.body130.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %.critedge111.i

.critedge111.i:                                   ; preds = %.critedge110.i, %.body130.i, %bb.u, %bb.k
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.ph.i, %.critedge110.i ], [ %i.bx, %bb.k ], [ %i.ee, %bb.u ], [ %.pn.i2, %.body130.i ] ; 2 uses
  %i.es = load ptr, ptr %20, align 8, !tbaa !35   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.bp
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i: ; preds = %.critedge111.i
  %i.eu = load i64, ptr %i.bp, align 8, !tbaa !34
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i: ; preds = %.critedge111.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i, %bb.t
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ed, %bb.t ], [ %.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i ], [ %.pn.pn.pn.pn.i, %.critedge111.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.co

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %23, ptr noundef nonnull @.str.10, i32 noundef 8)
  %i.ew = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.ex = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.ew) #27
  br i1 %i.ex, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.fa = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.fa, ptr %24, align 8, !tbaa !29
  %i.fb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 0, ptr %i.fb, align 8, !tbaa !31
  store i8 0, ptr %i.fa, align 8, !tbaa !34
  %i.fc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 8 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 9 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 6 uses
  %.ptr290.i = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.ptr291.i = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %27, i64 23
  %i.fj = getelementptr inbounds nuw i8, ptr %28, i64 24
  br label %.outer.i

.outer.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, %bb.ac
  %.069.ph.i = phi double [ %.271.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i ], [ -1.000000e+00, %bb.ac ] ; 7 uses
  %.0.ph.i = phi double [ %.3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i ], [ undef, %bb.ac ] ; 6 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ai, %.outer.i
  %i.fk = load ptr, ptr %23, align 8, !tbaa !40
  %i.fl = getelementptr i8, ptr %i.fk, i64 -24
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds i8, ptr %23, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 240
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !51 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc159.i unwind label %.loopexit.split-lp.i

.noexc159.i:                                      ; preds = %bb.ae
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.ad
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !59
  %.not.i1.i.i.i = icmp eq i8 %i.fr, 0
  br i1 %.not.i1.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 67
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fp)
          to label %.noexc160.i unwind label %.loopexit.i5

.noexc160.i:                                      ; preds = %bb.ag
  %i.fu = load ptr, ptr %i.fp, align 8, !tbaa !40
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = invoke noundef signext i8 %i.fw(ptr noundef nonnull align 8 dereferenceable(570) %i.fp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit.i5, !inline_history !65

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc160.i, %bb.af
  %.0.i.i.i.i = phi i8 [ %i.ft, %bb.af ], [ %i.fx, %.noexc160.i ]
  %i.fy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(32) %24, i8 noundef signext %.0.i.i.i.i)
          to label %bb.ah unwind label %.loopexit.i5 ; 2 uses

bb.ah:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !40
  %i.ga = getelementptr i8, ptr %i.fz, i64 -24
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds i8, ptr %i.fy, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !42
  %i.gf = and i32 %i.ge, 5
  %.not.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i, label %bb.ai, label %bb.br

bb.ai:                                            ; preds = %bb.ah
  %i.gg = load i64, ptr %i.fb, align 8, !tbaa !31
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.ad, label %bb.aj, !llvm.loop !66

.loopexit.i5:                                     ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc160.i, %bb.ag
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp.i:                             ; preds = %bb.bu, %bb.bt, %.invoke.i, %bb.ae
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.aj:                                            ; preds = %bb.ai
  %i.gi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 noundef signext 58, i64 noundef 0) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %i.fc, ptr %25, align 8, !tbaa !29
  store i64 0, ptr %i.fd, align 8, !tbaa !31
  store i8 0, ptr %i.fc, align 8, !tbaa !34
  %.not.i6 = icmp eq i64 %i.gi, -1
  br i1 %.not.i6, label %._crit_edge.i.i169.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.gj = add nuw i64 %i.gi, 1                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.gk = load i64, ptr %i.fb, align 8, !tbaa !31, !noalias !67 ; 3 uses
  %.not249.i = icmp ult i64 %i.gi, %i.gk
  br i1 %.not249.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i64 noundef %i.gj, i64 noundef %i.gk) #26
          to label %.noexc163.i unwind label %.loopexit.split-lp251.i

.noexc163.i:                                      ; preds = %bb.al
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.ak
  store ptr %i.fe, ptr %26, align 8, !tbaa !29, !alias.scope !67
  %i.gl = load ptr, ptr %24, align 8, !tbaa !35, !noalias !67
  %32 = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gi
  %i.gm = getelementptr inbounds nuw i8, ptr %32, i64 1 ; 2 uses
  %i.gn = sub nuw i64 %i.gk, %i.gj                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22, !noalias !67
  store i64 %i.gn, ptr %i.j, align 8, !tbaa !39, !noalias !67
  %i.go = icmp ugt i64 %i.gn, 15
  br i1 %i.go, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.gp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc164.i unwind label %.loopexit250.i ; 2 uses

.noexc164.i:                                      ; preds = %.noexc10.i.i.i
  store ptr %i.gp, ptr %26, align 8, !tbaa !35, !alias.scope !67
  %i.gq = load i64, ptr %i.j, align 8, !tbaa !39, !noalias !67
  store i64 %i.gq, ptr %i.fe, align 8, !tbaa !34, !alias.scope !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc164.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.gr = phi ptr [ %i.gp, %.noexc164.i ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %i.gn, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %bb.ao
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gs = load i8, ptr %i.gm, align 1, !tbaa !34
  store i8 %i.gs, ptr %i.gr, align 1, !tbaa !34
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr nonnull align 1 %i.gm, i64 %i.gn, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %._crit_edge.i.i.i.i
  %i.gt = load i64, ptr %i.j, align 8, !tbaa !39, !noalias !67 ; 2 uses
  store i64 %i.gt, ptr %i.ff, align 8, !tbaa !31, !alias.scope !67
  %i.gu = load ptr, ptr %26, align 8, !tbaa !35, !alias.scope !67
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gt
  store i8 0, ptr %i.gv, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22, !noalias !67
  %i.gw = load ptr, ptr %25, align 8, !tbaa !35   ; 6 uses
  %i.gx = icmp eq ptr %i.gw, %i.fc
  %i.gy = load ptr, ptr %26, align 8, !tbaa !35   ; 5 uses
  %i.gz = icmp eq ptr %i.gy, %i.fe                ; 2 uses
  br i1 %i.gx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  br i1 %i.gz, label %bb.ap, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ao
  br i1 %i.gz, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ha = load i64, ptr %i.ff, align 8, !tbaa !31 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  switch i64 %i.ha, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.hc = load i8, ptr %i.gy, align 1, !tbaa !34
  store i8 %i.hc, ptr %i.gw, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr align 1 %i.gy, i64 %i.ha, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.hd = load i64, ptr %i.ff, align 8, !tbaa !31 ; 2 uses
  store i64 %i.hd, ptr %i.fd, align 8, !tbaa !31
  %i.he = load ptr, ptr %25, align 8, !tbaa !35
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hd
  store i8 0, ptr %i.hf, align 1, !tbaa !34
  %.pre.i.i = load ptr, ptr %26, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.gy, ptr %25, align 8, !tbaa !35
  %i.hg = load <2 x i64>, ptr %i.ff, align 8, !tbaa !34
  store <2 x i64> %i.hg, ptr %i.fd, align 8, !tbaa !34
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.hh = load i64, ptr %i.fc, align 8, !tbaa !34
  store ptr %i.gy, ptr %25, align 8, !tbaa !35
  %i.hi = load <2 x i64>, ptr %i.ff, align 8, !tbaa !34
  store <2 x i64> %i.hi, ptr %i.fd, align 8, !tbaa !34
  %.not.i165.i = icmp eq ptr %i.gw, null
  br i1 %.not.i165.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.gw, ptr %26, align 8, !tbaa !35
  store i64 %i.hh, ptr %i.fe, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.fe, ptr %26, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.at, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.hj = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.gw, %bb.as ], [ %i.fe, %bb.at ]
  store i64 0, ptr %i.ff, align 8, !tbaa !31
  store i8 0, ptr %i.hj, align 1, !tbaa !34
  %i.hk = load ptr, ptr %26, align 8, !tbaa !35   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.fe
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.hm = load i64, ptr %i.fe, align 8, !tbaa !34
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %._crit_edge.i.i169.i

.loopexit250.i:                                   ; preds = %.noexc10.i.i.i
  %lpad.loopexit252.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp251.i:                          ; preds = %bb.al
  %lpad.loopexit.split-lp253.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp251.i, %.loopexit250.i
  %lpad.phi254.i = phi { ptr, i32 } [ %lpad.loopexit252.i, %.loopexit250.i ], [ %lpad.loopexit.split-lp253.i, %.loopexit.split-lp251.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %.body177.i

._crit_edge.i.i169.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store ptr %.ptr290.i, ptr %27, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.ptr290.i, ptr noundef nonnull align 1 dereferenceable(7) @.str.12, i64 7, i1 false)
  store i64 7, ptr %i.fg, align 8, !tbaa !31
  store i8 0, ptr %i.fi, align 1, !tbaa !34
  %.val119.i = load i64, ptr %i.fb, align 8, !tbaa !31 ; 2 uses
  %i.ho = icmp ult i64 %.val119.i, 7
  br i1 %i.ho, label %._crit_edge.i.i182.thread.i, label %.lr.ph.i.i.preheader.i

._crit_edge.i.i182.thread.i:                      ; preds = %._crit_edge.i.i169.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i

.lr.ph.i.i.preheader.i:                           ; preds = %._crit_edge.i.i169.i
  %.val118.i = load ptr, ptr %24, align 8         ; 15 uses
  %i.hp = load i8, ptr %.val118.i, align 1, !tbaa !34
  %i.hq = call i32 @tolower(i32 noundef 99) #27
  %i.hr = sext i8 %i.hp to i32
  %i.hs = call i32 @tolower(i32 noundef %i.hr) #27
  %i.ht = icmp eq i32 %i.hq, %i.hs
  br i1 %i.ht, label %.lr.ph.i.i.1.i, label %._crit_edge.i.i182.i

.lr.ph.i.i.1.i:                                   ; preds = %.lr.ph.i.i.preheader.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.val118.i, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !34
  %i.hw = call i32 @tolower(i32 noundef 112) #27
  %i.hx = sext i8 %i.hv to i32
  %i.hy = call i32 @tolower(i32 noundef %i.hx) #27
  %i.hz = icmp eq i32 %i.hw, %i.hy
  br i1 %i.hz, label %.lr.ph.i.i.2.i, label %._crit_edge.i.i182.i

.lr.ph.i.i.2.i:                                   ; preds = %.lr.ph.i.i.1.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.val118.i, i64 2
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !34
  %i.ic = call i32 @tolower(i32 noundef 117) #27
  %i.id = sext i8 %i.ib to i32
  %i.ie = call i32 @tolower(i32 noundef %i.id) #27
  %i.if = icmp eq i32 %i.ic, %i.ie
  br i1 %i.if, label %.lr.ph.i.i.3.i, label %._crit_edge.i.i182.i

.lr.ph.i.i.3.i:                                   ; preds = %.lr.ph.i.i.2.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.val118.i, i64 3
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !34
  %i.ii = call i32 @tolower(i32 noundef 32) #27
  %i.ij = sext i8 %i.ih to i32
  %i.ik = call i32 @tolower(i32 noundef %i.ij) #27
  %i.il = icmp eq i32 %i.ii, %i.ik
  br i1 %i.il, label %.lr.ph.i.i.4.i, label %._crit_edge.i.i182.i

.lr.ph.i.i.4.i:                                   ; preds = %.lr.ph.i.i.3.i
  %i.im = getelementptr inbounds nuw i8, ptr %.val118.i, i64 4
  %i.in = load i8, ptr %i.im, align 1, !tbaa !34
  %i.io = call i32 @tolower(i32 noundef 77) #27
  %i.ip = sext i8 %i.in to i32
  %i.iq = call i32 @tolower(i32 noundef %i.ip) #27
  %i.ir = icmp eq i32 %i.io, %i.iq
  br i1 %i.ir, label %.lr.ph.i.i.5.i, label %._crit_edge.i.i182.i

.lr.ph.i.i.5.i:                                   ; preds = %.lr.ph.i.i.4.i
  %i.is = getelementptr inbounds nuw i8, ptr %.val118.i, i64 5
  %i.it = load i8, ptr %i.is, align 1, !tbaa !34
  %i.iu = call i32 @tolower(i32 noundef 72) #27
  %i.iv = sext i8 %i.it to i32
  %i.iw = call i32 @tolower(i32 noundef %i.iv) #27
end_hunk_0
begin_hunk_1_@_ZN9benchmark7CPUInfoC2Ev:bb.a
  %.val.i.i = load ptr, ptr %12, align 8, !tbaa !35, !noalias !88
  store i32 0, ptr %i.qm, align 8, !tbaa !12, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !88
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef %.val.i.i, i32 noundef 8)
          to label %.noexc38.i.i unwind label %bb.dy

.noexc38.i.i:                                     ; preds = %bb.dq
  %i.tb = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.qn) #27
  br i1 %i.tb, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %.noexc38.i.i
  %i.tc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.qm)
          to label %bb.ds unwind label %bb.dt     ; 0 uses

bb.ds:                                            ; preds = %bb.dr
  %i.td = load ptr, ptr %4, align 8, !tbaa !40, !noalias !88
  %i.te = getelementptr i8, ptr %i.td, i64 -24
  %i.tf = load i64, ptr %i.te, align 8
  %i.tg = getelementptr inbounds i8, ptr %4, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !42, !noalias !88
  %i.tj = icmp eq i32 %i.ti, 0
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !88
  br label %.body.i.i

bb.du:                                            ; preds = %bb.ds, %.noexc38.i.i
  %.0.i.i.i = phi i1 [ %i.tj, %bb.ds ], [ false, %.noexc38.i.i ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !88
  %i.tl = load ptr, ptr %12, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.tm = icmp eq ptr %i.tl, %i.qo
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i: ; preds = %bb.du
  %i.tn = load i64, ptr %i.qo, align 8, !tbaa !34, !noalias !88
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.to) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !88
  br i1 %.0.i.i.i, label %bb.dz, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i
  invoke fastcc void @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %7) #26
          to label %bb.dw unwind label %.loopexit.split-lp108.i.i

bb.dw:                                            ; preds = %bb.dv
  unreachable

bb.dx:                                            ; preds = %bb.dp
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i

bb.dy:                                            ; preds = %bb.dq
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.dy, %bb.dt
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.tq, %bb.dy ], [ %i.tk, %bb.dt ] ; 2 uses
  %i.tr = load ptr, ptr %12, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.qo
  br i1 %i.ts, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i: ; preds = %.body.i.i
  %i.tt = load i64, ptr %i.qo, align 8, !tbaa !34, !noalias !88
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i: ; preds = %.body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i, %bb.dx
  %.pn18.i.i = phi { ptr, i32 } [ %i.tp, %bb.dx ], [ %eh.lpad-body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !88
  br label %bb.fg

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !88
  store ptr %i.qp, ptr %13, align 8, !tbaa !29, !noalias !88
  store i64 0, ptr %i.qq, align 8, !tbaa !31, !noalias !88
  store i8 0, ptr %i.qp, align 8, !tbaa !34, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !88
  invoke void @_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(15) @.str.34)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  %i.tv = invoke fastcc noundef zeroext i1 @_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %13)
          to label %bb.eb unwind label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  %i.tw = load ptr, ptr %14, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.qr
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i: ; preds = %bb.eb
  %i.ty = load i64, ptr %i.qr, align 8, !tbaa !34, !noalias !88
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.tz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !88
  br i1 %i.tv, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i
  invoke fastcc void @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %7) #26
          to label %bb.ed unwind label %.loopexit.split-lp113.i.i

bb.ed:                                            ; preds = %bb.ec
  unreachable

bb.ee:                                            ; preds = %bb.dz
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i

bb.ef:                                            ; preds = %bb.ea
  %i.ub = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uc = load ptr, ptr %14, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.qr
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i: ; preds = %bb.ef
  %i.ue = load i64, ptr %i.qr, align 8, !tbaa !34, !noalias !88
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.uf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i, %bb.ee
  %.pn20.i.i = phi { ptr, i32 } [ %i.ua, %bb.ee ], [ %i.ub, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i ], [ %i.ub, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i

.loopexit112.i.i:                                 ; preds = %bb.fe, %.noexc.i.i.i.i.i, %.noexc.i52.i.i
  %lpad.loopexit114.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i

.loopexit.split-lp113.i.i:                        ; preds = %bb.ec
  %lpad.loopexit.split-lp115.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i

bb.eg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i
  store ptr %i.qs, ptr %15, align 8, !tbaa !29, !noalias !88
  %i.ug = load ptr, ptr %13, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.uh = load i64, ptr %i.qq, align 8, !tbaa !31, !noalias !88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22, !noalias !88
  store i64 %i.uh, ptr %i.e, align 8, !tbaa !39, !noalias !88
  %i.ui = icmp ugt i64 %i.uh, 15
  br i1 %i.ui, label %.noexc.i52.i.i, label %._crit_edge.i.i51.i.i

.noexc.i52.i.i:                                   ; preds = %bb.eg
  %i.uj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc53.i.i unwind label %.loopexit112.i.i ; 2 uses

.noexc53.i.i:                                     ; preds = %.noexc.i52.i.i
  store ptr %i.uj, ptr %15, align 8, !tbaa !35, !noalias !88
  %i.uk = load i64, ptr %i.e, align 8, !tbaa !39, !noalias !88
  store i64 %i.uk, ptr %i.qs, align 8, !tbaa !34, !noalias !88
  br label %._crit_edge.i.i51.i.i

._crit_edge.i.i51.i.i:                            ; preds = %.noexc53.i.i, %bb.eg
  %i.ul = phi ptr [ %i.uj, %.noexc53.i.i ], [ %i.qs, %bb.eg ] ; 2 uses
  switch i64 %i.uh, label %bb.ei [
    i64 1, label %bb.eh
    i64 0, label %bb.ej
  ]

bb.eh:                                            ; preds = %._crit_edge.i.i51.i.i
  %i.um = load i8, ptr %i.ug, align 1, !tbaa !34
  store i8 %i.um, ptr %i.ul, align 1, !tbaa !34
  br label %bb.ej

bb.ei:                                            ; preds = %._crit_edge.i.i51.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ul, ptr align 1 %i.ug, i64 %i.uh, i1 false)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %._crit_edge.i.i51.i.i
  %i.un = load i64, ptr %i.e, align 8, !tbaa !39, !noalias !88 ; 2 uses
  store i64 %i.un, ptr %i.qt, align 8, !tbaa !31, !noalias !88
  %i.uo = load ptr, ptr %15, align 8, !tbaa !35, !noalias !88
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.un
  store i8 0, ptr %i.up, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !88
  %i.uq = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 noundef signext 44, i64 noundef 0) #22 ; 2 uses
  %.not34.i.i.i = icmp eq i64 %i.uq, -1
  br i1 %.not34.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i
  %i.ur = phi i64 [ %i.wn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i ], [ %i.uq, %bb.ej ] ; 4 uses
  %.0735.i.i.i = phi i32 [ %i.vd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i ], [ 0, %bb.ej ]
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.us = load i64, ptr %i.qt, align 8, !tbaa !31, !noalias !94
  store ptr %i.qu, ptr %1, align 8, !tbaa !29, !alias.scope !91, !noalias !88
  %i.ut = load ptr, ptr %15, align 8, !tbaa !35, !noalias !94 ; 2 uses
  %spec.select.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ur, i64 %i.us) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !94
  store i64 %spec.select.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !39, !noalias !94
  %i.uu = icmp ugt i64 %spec.select.i.i.i.i.i.i, 15
  br i1 %i.uu, label %.noexc10.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc10.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.uv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc57.i.i unwind label %.loopexit.i.i ; 2 uses

.noexc57.i.i:                                     ; preds = %.noexc10.i.i.i.i.i
  store ptr %i.uv, ptr %1, align 8, !tbaa !35, !alias.scope !91, !noalias !88
  %i.uw = load i64, ptr %i.d, align 8, !tbaa !39, !noalias !94
  store i64 %i.uw, ptr %i.qu, align 8, !tbaa !34, !alias.scope !91, !noalias !88
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc57.i.i, %.lr.ph.i.i.i
  %i.ux = phi ptr [ %i.uv, %.noexc57.i.i ], [ %i.qu, %.lr.ph.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i.i.i, label %bb.el [
    i64 1, label %bb.ek
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i
  ]

bb.ek:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.uy = load i8, ptr %i.ut, align 1, !tbaa !34
  store i8 %i.uy, ptr %i.ux, align 1, !tbaa !34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i

bb.el:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ux, ptr align 1 %i.ut, i64 %spec.select.i.i.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i: ; preds = %bb.el, %bb.ek, %._crit_edge.i.i.i.i.i.i
  %i.uz = load i64, ptr %i.d, align 8, !tbaa !39, !noalias !94 ; 2 uses
  store i64 %i.uz, ptr %i.qv, align 8, !tbaa !31, !alias.scope !91, !noalias !88
  %i.va = load ptr, ptr %1, align 8, !tbaa !35, !alias.scope !91, !noalias !88
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uz
  store i8 0, ptr %i.vb, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !94
  %i.vc = invoke fastcc noundef i32 @"_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_"(ptr noundef align 8 %1)
          to label %bb.em unwind label %bb.ev

bb.em:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i
  %i.vd = add nuw nsw i32 %i.vc, %.0735.i.i.i     ; 2 uses
  %i.ve = load ptr, ptr %1, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.qu
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.em
  %i.vg = load i64, ptr %i.qu, align 8, !tbaa !34, !noalias !88
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !88
  %i.vi = add nuw i64 %i.ur, 1                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.vj = load i64, ptr %i.qt, align 8, !tbaa !31, !noalias !98 ; 3 uses
  %.not26.i.i.i = icmp ult i64 %i.ur, %i.vj
  br i1 %.not26.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i, label %bb.en

bb.en:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i64 noundef %i.vi, i64 noundef %i.vj) #26
          to label %.noexc58.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

.noexc58.i.i:                                     ; preds = %bb.en
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  store ptr %i.qw, ptr %2, align 8, !tbaa !29, !alias.scope !95, !noalias !88
  %i.vk = load ptr, ptr %15, align 8, !tbaa !35, !noalias !98
  %33 = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.ur
  %i.vl = getelementptr inbounds nuw i8, ptr %33, i64 1 ; 2 uses
  %i.vm = sub nuw i64 %i.vj, %i.vi                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !98
  store i64 %i.vm, ptr %i.c, align 8, !tbaa !39, !noalias !98
  %i.vn = icmp ugt i64 %i.vm, 15
  br i1 %i.vn, label %.noexc10.i.i12.i.i.i, label %._crit_edge.i.i.i11.i.i.i

.noexc10.i.i12.i.i.i:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.vo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc59.i.i unwind label %.loopexit.i.i ; 2 uses

.noexc59.i.i:                                     ; preds = %.noexc10.i.i12.i.i.i
  store ptr %i.vo, ptr %2, align 8, !tbaa !35, !alias.scope !95, !noalias !88
  %i.vp = load i64, ptr %i.c, align 8, !tbaa !39, !noalias !98
  store i64 %i.vp, ptr %i.qw, align 8, !tbaa !34, !alias.scope !95, !noalias !88
  br label %._crit_edge.i.i.i11.i.i.i

._crit_edge.i.i.i11.i.i.i:                        ; preds = %.noexc59.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.vq = phi ptr [ %i.vo, %.noexc59.i.i ], [ %i.qw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i ] ; 2 uses
  switch i64 %i.vm, label %bb.ep [
    i64 1, label %bb.eo
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i
  ]

bb.eo:                                            ; preds = %._crit_edge.i.i.i11.i.i.i
  %i.vr = load i8, ptr %i.vl, align 1, !tbaa !34
  store i8 %i.vr, ptr %i.vq, align 1, !tbaa !34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i

bb.ep:                                            ; preds = %._crit_edge.i.i.i11.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vq, ptr nonnull align 1 %i.vl, i64 %i.vm, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i: ; preds = %bb.ep, %bb.eo, %._crit_edge.i.i.i11.i.i.i
  %i.vs = load i64, ptr %i.c, align 8, !tbaa !39, !noalias !98 ; 2 uses
  store i64 %i.vs, ptr %i.qx, align 8, !tbaa !31, !alias.scope !95, !noalias !88
  %i.vt = load ptr, ptr %2, align 8, !tbaa !35, !alias.scope !95, !noalias !88
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vs
  store i8 0, ptr %i.vu, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !98
  %i.vv = load ptr, ptr %15, align 8, !tbaa !35, !noalias !88 ; 6 uses
  %i.vw = icmp eq ptr %i.vv, %i.qs
  %i.vx = load ptr, ptr %2, align 8, !tbaa !35, !noalias !88 ; 5 uses
  %i.vy = icmp eq ptr %i.vx, %i.qw                ; 2 uses
  br i1 %i.vw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i
  br i1 %i.vy, label %bb.eq, label %.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i
  br i1 %i.vy, label %bb.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i
  %i.vz = load i64, ptr %i.qx, align 8, !tbaa !31, !noalias !88 ; 3 uses
  %i.wa = icmp ult i64 %i.vz, 16
  call void @llvm.assume(i1 %i.wa)
  switch i64 %i.vz, label %bb.es [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq
  %i.wb = load i8, ptr %i.vx, align 1, !tbaa !34
  store i8 %i.wb, ptr %i.vv, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.es:                                            ; preds = %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vv, ptr align 1 %i.vx, i64 %i.vz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.es, %bb.er, %bb.eq
  %i.wc = load i64, ptr %i.qx, align 8, !tbaa !31, !noalias !88 ; 2 uses
  store i64 %i.wc, ptr %i.qt, align 8, !tbaa !31, !noalias !88
  %i.wd = load ptr, ptr %15, align 8, !tbaa !35, !noalias !88
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.wc
  store i8 0, ptr %i.we, align 1, !tbaa !34
  %.pre.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !35, !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i
  store ptr %i.vx, ptr %15, align 8, !tbaa !35, !noalias !88
  %i.wf = load <2 x i64>, ptr %i.qx, align 8, !tbaa !34, !noalias !88
  store <2 x i64> %i.wf, ptr %i.qt, align 8, !tbaa !34, !noalias !88
  br label %bb.eu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54.i.i
  %i.wg = load i64, ptr %i.qs, align 8, !tbaa !34, !noalias !88
  store ptr %i.vx, ptr %15, align 8, !tbaa !35, !noalias !88
  %i.wh = load <2 x i64>, ptr %i.qx, align 8, !tbaa !34, !noalias !88
  store <2 x i64> %i.wh, ptr %i.qt, align 8, !tbaa !34, !noalias !88
  %.not.i.i.i.i9 = icmp eq ptr %i.vv, null
  br i1 %.not.i.i.i.i9, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i
  store ptr %i.vv, ptr %2, align 8, !tbaa !35, !noalias !88
  store i64 %i.wg, ptr %i.qw, align 8, !tbaa !34, !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

bb.eu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i, %.thread.i.i.i.i
  store ptr %i.qw, ptr %2, align 8, !tbaa !35, !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i: ; preds = %bb.eu, %bb.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
  %i.wi = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ], [ %i.vv, %bb.et ], [ %i.qw, %bb.eu ]
  store i64 0, ptr %i.qx, align 8, !tbaa !31, !noalias !88
  store i8 0, ptr %i.wi, align 1, !tbaa !34
  %i.wj = load ptr, ptr %2, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.wk = icmp eq ptr %i.wj, %i.qw
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i
  %i.wl = load i64, ptr %i.qw, align 8, !tbaa !34, !noalias !88
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !88
  %i.wn = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 noundef signext 44, i64 noundef 0) #22 ; 2 uses
  %.not.i55.i.i = icmp eq i64 %i.wn, -1
  br i1 %.not.i55.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !99

bb.ev:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wp = load ptr, ptr %1, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.qu
  br i1 %i.wq, label %.body61.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i.i: ; preds = %bb.ev
  %i.wr = load i64, ptr %i.qu, align 8, !tbaa !34, !noalias !88
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.ws) #24
  br label %.body61.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i, %bb.ej
  %.07.lcssa.i.i.i = phi i32 [ 0, %bb.ej ], [ %i.vd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i ] ; 2 uses
  %i.wt = load i64, ptr %i.qt, align 8, !tbaa !31, !noalias !88 ; 5 uses
  %i.wu = icmp eq i64 %i.wt, 0
  br i1 %i.wu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %._crit_edge.i.i.i
  store ptr %i.qy, ptr %3, align 8, !tbaa !29, !noalias !88
  %i.wv = load ptr, ptr %15, align 8, !tbaa !35, !noalias !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !88
  store i64 %i.wt, ptr %i.b, align 8, !tbaa !39, !noalias !88
  %i.ww = icmp ugt i64 %i.wt, 15
  br i1 %i.ww, label %._crit_edge.i.i.thread.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.thread.i.i.i:                     ; preds = %bb.ew
  %i.wx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc60.i.i unwind label %.loopexit.split-lp.loopexit.i.i ; 2 uses

.noexc60.i.i:                                     ; preds = %._crit_edge.i.i.thread.i.i.i
  store ptr %i.wx, ptr %3, align 8, !tbaa !35, !noalias !88
  %i.wy = load i64, ptr %i.b, align 8, !tbaa !39, !noalias !88
  store i64 %i.wy, ptr %i.qy, align 8, !tbaa !34, !noalias !88
  br label %bb.ey

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ew
  %cond.i.i.i = icmp eq i64 %i.wt, 1
  br i1 %cond.i.i.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.wz = load i8, ptr %i.wv, align 1, !tbaa !34
  store i8 %i.wz, ptr %i.qy, align 8, !tbaa !34, !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.ey:                                            ; preds = %._crit_edge.i.i.i.i.i, %.noexc60.i.i
  %i.xa = phi ptr [ %i.wx, %.noexc60.i.i ], [ %i.qy, %._crit_edge.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xa, ptr align 1 %i.wv, i64 %i.wt, i1 false)
  %.pre.i.i10 = load i64, ptr %i.b, align 8, !tbaa !39, !noalias !88
  %.pre255.i.i = load ptr, ptr %3, align 8, !tbaa !35, !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i: ; preds = %bb.ey, %bb.ex
  %i.xb = phi ptr [ %.pre255.i.i, %bb.ey ], [ %i.qy, %bb.ex ]
  %i.xc = phi i64 [ %.pre.i.i10, %bb.ey ], [ 1, %bb.ex ] ; 2 uses
  store i64 %i.xc, ptr %i.qz, align 8, !tbaa !31, !noalias !88
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.xc
  store i8 0, ptr %i.xd, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !88
  %i.xe = invoke fastcc noundef i32 @"_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_"(ptr noundef align 8 %3)
          to label %bb.ez unwind label %bb.fa

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.xf = add nuw nsw i32 %i.xe, %.07.lcssa.i.i.i ; 2 uses
  %i.xg = load ptr, ptr %3, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.xh = icmp eq ptr %i.xg, %i.qy
  br i1 %i.xh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i: ; preds = %bb.ez
  %i.xi = load i64, ptr %i.qy, align 8, !tbaa !34, !noalias !88
  %i.xj = add i64 %i.xi, 1
  call void @_ZdlPvm(ptr noundef %i.xg, i64 noundef %i.xj) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21.i.i.i

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.xk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xl = load ptr, ptr %3, align 8, !tbaa !35, !noalias !88 ; 2 uses
end_hunk_1
