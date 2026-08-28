Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/sysinfo?download=true
inline.NumInlined: 626
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9benchmark7CPUInfoC2Ev:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.db = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.da) #27
  br i1 %i.db, label %bb.q, label %.critedge.i3

bb.q:                                             ; preds = %.noexc139.i
  %i.dc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZNSirsERl.exit.i138.i unwind label %bb.r ; 0 uses

_ZNSirsERl.exit.i138.i:                           ; preds = %bb.q
  %i.dd = load ptr, ptr %17, align 8, !tbaa !40
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %17, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !42
  %i.dj = icmp eq i32 %i.di, 0
  br label %.critedge.i3

bb.r:                                             ; preds = %bb.q
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %.body140.i

.critedge.i3:                                     ; preds = %_ZNSirsERl.exit.i138.i, %.noexc139.i
  %.0.i137.i = phi i1 [ %i.dj, %_ZNSirsERl.exit.i138.i ], [ false, %.noexc139.i ] ; 2 uses
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.dl = load ptr, ptr %22, align 8, !tbaa !35   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cv
  br i1 %i.dm, label %.critedge104.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %.critedge.i3
  %i.dn = load i64, ptr %i.cv, align 8, !tbaa !34
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #24
  br label %.critedge104.i

.critedge104.i:                                   ; preds = %.critedge.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br i1 %i.bj, label %.critedge106.i, label %.critedge108.i

.critedge106.i:                                   ; preds = %.critedge104.i, %bb.p
  %i.dp = phi i1 [ %.0.i137.i, %.critedge104.i ], [ true, %bb.p ]
  %i.dq = load ptr, ptr %21, align 8, !tbaa !35   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i: ; preds = %.critedge106.i
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !34
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i: ; preds = %.critedge106.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %.critedge108.i

.critedge108.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i, %.critedge104.i, %bb.l
  %i.dv = phi i1 [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i ], [ %.0.i137.i, %.critedge104.i ], [ true, %bb.l ]
  %i.dw = load ptr, ptr %20, align 8, !tbaa !35   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bp
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146.i: ; preds = %.critedge108.i
  %i.dy = load i64, ptr %i.bp, align 8, !tbaa !34
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i: ; preds = %.critedge108.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br i1 %i.dv, label %bb.s, label %bb.z

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
  br label %.critedge110.i.a

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
  br i1 %i.ep, label %.critedge110.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i: ; preds = %.body130.thread.i
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !34
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #24
  br label %.critedge110.i.a

.critedge110.i.a:                                 ; preds = %.body130.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i, %bb.v
  %.pn.pn.pn.ph.i = phi { ptr, i32 } [ %.pn.pn242.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i ], [ %i.ef, %bb.v ], [ %.pn.pn242.i, %.body130.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %.critedge111.i

.critedge111.i:                                   ; preds = %.critedge110.i.a, %.body130.i, %bb.u, %bb.k
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.ph.i, %.critedge110.i.a ], [ %i.bx, %bb.k ], [ %i.ee, %bb.u ], [ %.pn.i2, %.body130.i ] ; 2 uses
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
  br label %bb.cm

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
  br label %bb.cl

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
  %.ptr290.i.a = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.ptr291.i = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %27, i64 23
  %i.fj = getelementptr inbounds nuw i8, ptr %28, i64 24
  br label %.outer.i

.outer.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, %bb.ac
  %.074.ph.i = phi double [ %.377.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i ], [ undef, %bb.ac ] ; 6 uses
  %.0.ph.i = phi double [ %.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i ], [ -1.000000e+00, %bb.ac ] ; 7 uses
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
          to label %.noexc159.i.a unwind label %.loopexit.split-lp.i

.noexc159.i.a:                                    ; preds = %bb.ae
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
  br i1 %.not.i.i, label %bb.ai, label %bb.bp

bb.ai:                                            ; preds = %bb.ah
  %i.gg = load i64, ptr %i.fb, align 8, !tbaa !31
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.ad, label %bb.aj, !llvm.loop !66

.loopexit.i5:                                     ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc160.i, %bb.ag
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp.i:                             ; preds = %bb.bs, %bb.br, %.invoke.i, %bb.ae
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.aj:                                            ; preds = %bb.ai
  %i.gi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 noundef signext 58, i64 noundef 0) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %i.fc, ptr %25, align 8, !tbaa !29
  store i64 0, ptr %i.fd, align 8, !tbaa !31
  store i8 0, ptr %i.fc, align 8, !tbaa !34
  %.not.i6 = icmp eq i64 %i.gi, -1
  br i1 %.not.i6, label %._crit_edge.i.i169.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.gj = add nuw i64 %i.gi, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.gk = load i64, ptr %i.fb, align 8, !tbaa !31, !noalias !67 ; 3 uses
  %.not249.i = icmp ult i64 %i.gi, %i.gk
  br i1 %.not249.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i64 noundef %i.gj, i64 noundef %i.gk) #26
          to label %.noexc163.i.a unwind label %.loopexit.split-lp251.i

.noexc163.i.a:                                    ; preds = %bb.al
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.ak
  store ptr %i.fe, ptr %26, align 8, !tbaa !29, !alias.scope !67
  %i.gl = load ptr, ptr %24, align 8, !tbaa !35, !noalias !67
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gj ; 2 uses
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
  store ptr %.ptr290.i.a, ptr %27, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.ptr290.i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.12, i64 7, i1 false)
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
  %i.ix = icmp eq i32 %i.iu, %i.iw
  br i1 %i.ix, label %.lr.ph.i.i.6.i, label %._crit_edge.i.i182.i

.lr.ph.i.i.6.i:                                   ; preds = %.lr.ph.i.i.5.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.val118.i, i64 6
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !34
  %i.ja = call i32 @tolower(i32 noundef 122) #27
  %i.jb = sext i8 %i.iz to i32
  %i.jc = call i32 @tolower(i32 noundef %i.jb) #27
  %i.jd = icmp eq i32 %i.ja, %i.jc
  br i1 %i.jd, label %bb.av, label %._crit_edge.i.i182.i

bb.av:                                            ; preds = %.lr.ph.i.i.6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.je = load i64, ptr %i.fd, align 8, !tbaa !31
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %bb.bo, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.jh = tail call ptr @__errno_location() #25   ; 6 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !12 ; 2 uses
  store i32 0, ptr %i.jh, align 4, !tbaa !12
  %i.jj = call noundef double @strtod(ptr noundef %i.jg, ptr noundef nonnull %i.i)
  %i.jk = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.jl = icmp eq ptr %i.jk, %i.jg
  br i1 %i.jl, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.19) #26
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %.critedge.i.i.i, %bb.ax
  %i.jm = landingpad { ptr, i32 }
          cleanup
  %i.jn = load i32, ptr %i.jh, align 4, !tbaa !12
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.ba, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !12
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %.body177.i

bb.bb:                                            ; preds = %bb.aw
  %i.jp = load i32, ptr %i.jh, align 4, !tbaa !12
  switch i32 %i.jp, label %bb.be [
    i32 34, label %.critedge.i.i.i
    i32 0, label %bb.bd
  ]

.critedge.i.i.i:                                  ; preds = %bb.bb
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.19) #26
          to label %bb.bc unwind label %bb.az

bb.bc:                                            ; preds = %.critedge.i.i.i
  unreachable

bb.bd:                                            ; preds = %bb.bb
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !12
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  %i.jq = fmul double %i.jj, 1.000000e+06         ; 2 uses
  %i.jr = fcmp ule double %i.jq, 0.000000e+00
  br i1 %i.jr, label %33, label %bb.bo

._crit_edge.i.i182.i:                             ; preds = %.lr.ph.i.i.6.i, %.lr.ph.i.i.5.i, %.lr.ph.i.i.4.i, %.lr.ph.i.i.3.i, %.lr.ph.i.i.2.i, %.lr.ph.i.i.1.i, %.lr.ph.i.i.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr %.ptr291.i, ptr %28, align 8, !tbaa !29
  store i64 8318264430494707554, ptr %.ptr291.i, align 8
  store i64 8, ptr %i.fh, align 8, !tbaa !31
  store i8 0, ptr %i.fj, align 8, !tbaa !34
  %i.js = icmp eq i64 %.val119.i, 7
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i, label %.lr.ph.i.i187.preheader.i

.lr.ph.i.i187.preheader.i:                        ; preds = %._crit_edge.i.i182.i
  %i.jt = load i8, ptr %.val118.i, align 1, !tbaa !34
  %i.ju = call i32 @tolower(i32 noundef 98) #27
  %i.jv = sext i8 %i.jt to i32
  %i.jw = call i32 @tolower(i32 noundef %i.jv) #27
  %i.jx = icmp eq i32 %i.ju, %i.jw
  br i1 %i.jx, label %.lr.ph.i.i187.1.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i

.lr.ph.i.i187.1.i:                                ; preds = %.lr.ph.i.i187.preheader.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.val118.i, i64 1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !34
  %i.ka = call i32 @tolower(i32 noundef 111) #27  ; 2 uses
  %i.kb = sext i8 %i.jz to i32
  %i.kc = call i32 @tolower(i32 noundef %i.kb) #27
  %i.kd = icmp eq i32 %i.ka, %i.kc
  br i1 %i.kd, label %.lr.ph.i.i187.2.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i

.lr.ph.i.i187.2.i:                                ; preds = %.lr.ph.i.i187.1.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.val118.i, i64 2
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !34
  %i.kg = call i32 @tolower(i32 noundef 103) #27
  %i.kh = sext i8 %i.kf to i32
  %i.ki = call i32 @tolower(i32 noundef %i.kh) #27
  %i.kj = icmp eq i32 %i.kg, %i.ki
  br i1 %i.kj, label %.lr.ph.i.i187.3.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i

.lr.ph.i.i187.3.i:                                ; preds = %.lr.ph.i.i187.2.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.val118.i, i64 3
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !34
  %i.km = sext i8 %i.kl to i32
  %i.kn = call i32 @tolower(i32 noundef %i.km) #27
  %i.ko = icmp eq i32 %i.ka, %i.kn
  br i1 %i.ko, label %.lr.ph.i.i187.4.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i

.lr.ph.i.i187.4.i:                                ; preds = %.lr.ph.i.i187.3.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.val118.i, i64 4
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !34
  %i.kr = call i32 @tolower(i32 noundef 109) #27
  %i.ks = sext i8 %i.kq to i32
  %i.kt = call i32 @tolower(i32 noundef %i.ks) #27
  %i.ku = icmp eq i32 %i.kr, %i.kt
  br i1 %i.ku, label %.lr.ph.i.i187.5.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i

.lr.ph.i.i187.5.i:                                ; preds = %.lr.ph.i.i187.4.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.val118.i, i64 5
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !34
  %i.kx = call i32 @tolower(i32 noundef 105) #27
  %i.ky = sext i8 %i.kw to i32
  %i.kz = call i32 @tolower(i32 noundef %i.ky) #27
  %i.la = icmp eq i32 %i.kx, %i.kz
  br i1 %i.la, label %.lr.ph.i.i187.6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i

.lr.ph.i.i187.6.i:                                ; preds = %.lr.ph.i.i187.5.i
  %i.lb = getelementptr inbounds nuw i8, ptr %.val118.i, i64 6
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !34
  %i.ld = call i32 @tolower(i32 noundef 112) #27
  %i.le = sext i8 %i.lc to i32
  %i.lf = call i32 @tolower(i32 noundef %i.le) #27
  %i.lg = icmp eq i32 %i.ld, %i.lf
  br i1 %i.lg, label %.lr.ph.i.i187.7.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i

.lr.ph.i.i187.7.i:                                ; preds = %.lr.ph.i.i187.6.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.val118.i, i64 7
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !34
  %i.lj = call i32 @tolower(i32 noundef 115) #27
  %i.lk = sext i8 %i.li to i32
  %i.ll = call i32 @tolower(i32 noundef %i.lk) #27
  %i.lm = icmp eq i32 %i.lj, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i: ; preds = %.lr.ph.i.i187.7.i, %.lr.ph.i.i187.6.i, %.lr.ph.i.i187.5.i, %.lr.ph.i.i187.4.i, %.lr.ph.i.i187.3.i, %.lr.ph.i.i187.2.i, %.lr.ph.i.i187.1.i, %.lr.ph.i.i187.preheader.i, %._crit_edge.i.i182.i, %._crit_edge.i.i182.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i: ; preds = %.lr.ph.i.i187.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.ln = load i64, ptr %i.fd, align 8
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i
  %i.lp = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.lq = tail call ptr @__errno_location() #25   ; 6 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !12 ; 2 uses
  store i32 0, ptr %i.lq, align 4, !tbaa !12
  %i.ls = call noundef double @strtod(ptr noundef %i.lp, ptr noundef nonnull %i.h)
  %i.lt = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.lu = icmp eq ptr %i.lt, %i.lp
  br i1 %i.lu, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.19) #26
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %.critedge.i.i196.i, %bb.bg
  %i.lv = landingpad { ptr, i32 }
          cleanup
  %i.lw = load i32, ptr %i.lq, align 4, !tbaa !12
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.bj, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i197.i

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.lr, ptr %i.lq, align 4, !tbaa !12
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i197.i

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i197.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %.body177.i

bb.bk:                                            ; preds = %bb.bf
  %i.ly = load i32, ptr %i.lq, align 4, !tbaa !12
  switch i32 %i.ly, label %bb.bn [
    i32 34, label %.critedge.i.i196.i
    i32 0, label %bb.bm
  ]

.critedge.i.i196.i:                               ; preds = %bb.bk
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.19) #26
          to label %bb.bl unwind label %bb.bi

bb.bl:                                            ; preds = %.critedge.i.i196.i
  unreachable

bb.bm:                                            ; preds = %bb.bk
  store i32 %i.lr, ptr %i.lq, align 4, !tbaa !12
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.lz = fmul double %i.ls, 1.000000e+06         ; 2 uses
  %i.ma = fcmp olt double %i.lz, 0.000000e+00
  br i1 %i.ma, label %32, label %bb.bo

32:                                               ; preds = %bb.bn
  br label %bb.bo

33:                                               ; preds = %bb.be
  br label %bb.bo

bb.bo:                                            ; preds = %33, %32, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i, %bb.be, %bb.av
  %.377.i = phi double [ %i.jq, %bb.be ], [ %.074.ph.i, %bb.av ], [ %.074.ph.i, %33 ], [ %.074.ph.i, %32 ], [ %.074.ph.i, %bb.bn ], [ %.074.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ %.074.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i ] ; 2 uses
  %cond.i = phi i1 [ false, %bb.be ], [ true, %bb.av ], [ true, %33 ], [ true, %32 ], [ true, %bb.bn ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i ]
  %.2.i = phi double [ %.0.ph.i, %bb.be ], [ %.0.ph.i, %bb.av ], [ %.0.ph.i, %33 ], [ -1.000000e+00, %32 ], [ %i.lz, %bb.bn ], [ %.0.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ %.0.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i ]
  %i.mb = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.fc
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i: ; preds = %bb.bo
  %i.md = load i64, ptr %i.fc, align 8, !tbaa !34
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br i1 %cond.i, label %.outer.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i, !llvm.loop !66

.body177.i:                                       ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i197.i, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i, %bb.au
  %.pn98.i = phi { ptr, i32 } [ %lpad.phi254.i, %bb.au ], [ %i.jm, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %i.lv, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i197.i ]
  %i.mf = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.fc
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i: ; preds = %.body177.i
  %i.mh = load i64, ptr %i.fc, align 8, !tbaa !34
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i: ; preds = %.body177.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.ck

bb.bp:                                            ; preds = %bb.ah
  %i.mj = load ptr, ptr %23, align 8, !tbaa !40
  %i.mk = getelementptr i8, ptr %i.mj, i64 -24
  %i.ml = load i64, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds i8, ptr %23, i64 %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !42 ; 2 uses
  %i.mp = trunc i32 %i.mo to i1
  br i1 %i.mp, label %.invoke.i, label %bb.bq

.invoke.i:                                        ; preds = %bb.bq, %bb.bp
  %i.mq = phi ptr [ @.str.14, %bb.bp ], [ @.str.15, %bb.bq ]
  %i.mr = phi i64 [ 30, %bb.bp ], [ 39, %bb.bq ]
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.mq, i64 noundef %i.mr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i unwind label %.loopexit.split-lp.i ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.mt = and i32 %i.mo, 2
  %.not248.i = icmp eq i32 %i.mt, 0
  br i1 %.not248.i, label %.invoke.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mu = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.mv = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.mu)
          to label %.noexc215.i unwind label %.loopexit.split-lp.i

.noexc215.i:                                      ; preds = %bb.br
  %.not.i214.i = icmp eq ptr %i.mv, null
  br i1 %.not.i214.i, label %bb.bs, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i

bb.bs:                                            ; preds = %.noexc215.i
  %i.mw = load ptr, ptr %23, align 8, !tbaa !40
  %i.mx = getelementptr i8, ptr %i.mw, i64 -24
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = getelementptr inbounds i8, ptr %23, i64 %i.my ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !42
  %i.nc = or i32 %i.nb, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.mz, i32 noundef %i.nc)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i unwind label %.loopexit.split-lp.i

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i: ; preds = %bb.bs, %.noexc215.i
  %i.nd = fcmp ult double %.0.ph.i, 0.000000e+00
  br i1 %i.nd, label %bb.bt, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i

bb.bt:                                            ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.ne = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %29, i64 136 ; 3 uses
  %i.ng = tail call i64 @pthread_self() #25       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ne, i8 0, i64 128, i1 false)
  store i64 %i.ng, ptr %29, align 8, !tbaa !70
  %i.nh = call i32 @pthread_getaffinity_np(i64 noundef %i.ng, i64 noundef 128, ptr noundef nonnull %i.ne) #22
  %.not.i.i217.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i217.i, label %bb.bu, label %.sink.split.i.i

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(128) %i.ne, i64 128, i1 false)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bz
  %i.ni = trunc nuw i8 %.118.i.i.i to i1
  br i1 %i.ni, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.sink.split.i.i

bb.bw:                                            ; preds = %bb.bz, %bb.bu
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.bu ], [ %indvars.iv.next.i.i.i, %bb.bz ] ; 3 uses
  %.01720.i.i.i = phi i8 [ 1, %bb.bu ], [ %.118.i.i.i, %bb.bz ] ; 2 uses
  %i.nj = lshr i64 %indvars.iv.i.i.i, 6
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.nj ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !39 ; 2 uses
  %i.nm = and i64 %indvars.iv.i.i.i, 63
  %i.nn = shl nuw i64 1, %i.nm                    ; 2 uses
  %i.no = and i64 %i.nl, %i.nn
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nq = trunc nuw i8 %.01720.i.i.i to i1
  br i1 %i.nq, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nr = xor i64 %i.nn, -1
  %i.ns = and i64 %i.nl, %i.nr
  store i64 %i.ns, ptr %i.nk, align 8, !tbaa !39
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %.118.i.i.i = phi i8 [ %.01720.i.i.i, %bb.bw ], [ 0, %bb.by ], [ 0, %bb.bx ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 1024
  br i1 %exitcond.not.i.i.i, label %bb.bv, label %bb.bw, !llvm.loop !73

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i: ; preds = %bb.bv
  %i.nt = load i64, ptr %29, align 8, !tbaa !70
  %i.nu = call i32 @pthread_setaffinity_np(i64 noundef %i.nt, i64 noundef 128, ptr noundef nonnull %16) #22
  %i.nv = icmp eq i32 %i.nu, 0                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.nw = zext i1 %i.nv to i8
  store i8 %i.nw, ptr %i.nf, align 8, !tbaa !74
  br i1 %i.nv, label %bb.cb, label %bb.ca

.sink.split.i.i:                                  ; preds = %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i, %bb.bt
  store i8 0, ptr %i.nf, align 8, !tbaa !74
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split.i.i, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 87)
          to label %bb.cb unwind label %bb.cj     ; 0 uses

bb.cb:                                            ; preds = %bb.ca, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i
  %i.ny = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.nz = sitofp i64 %i.ny to double
  %i.oa = fdiv double %i.nz, 1.000000e+09         ; 2 uses
  %i.ob = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !75 ; 2 uses
  %i.oc = extractvalue { i64, i64 } %i.ob, 0
  %i.od = extractvalue { i64, i64 } %i.ob, 1
  %i.oe = shl i64 %i.od, 32
  %i.of = or i64 %i.oe, %i.oc                     ; 2 uses
  %i.og = urem i64 %i.of, 2147483647
  %storemerge.i.i.i = call i64 @llvm.umax.i64(i64 %i.og, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  %i.oh = phi i64 [ 0, %bb.cb ], [ %i.oq, %bb.cd ]
  %.sroa.0.0.i = phi i64 [ %storemerge.i.i.i, %bb.cb ], [ %i.op, %bb.cd ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.cc
  %.03.i.i = phi i64 [ 10000, %bb.cc ], [ %i.on, %.lr.ph.i.i ]
  %i.oi = phi i64 [ %.sroa.0.0.i, %bb.cc ], [ %i.om, %.lr.ph.i.i ]
  %i.oj = mul nuw nsw i64 %i.oi, 48271
  %i.ok = urem i64 %i.oj, 2147483647
  %i.ol = mul nuw nsw i64 %i.ok, 48271
  %i.om = urem i64 %i.ol, 2147483647              ; 2 uses
  %i.on = add nsw i64 %.03.i.i, -2                ; 2 uses
  %.not.i219.i.1 = icmp eq i64 %i.on, 0
  br i1 %.not.i219.i.1, label %bb.cd, label %.lr.ph.i.i, !llvm.loop !76

bb.cd:                                            ; preds = %.lr.ph.i.i
  %i.oo = mul nuw nsw i64 %i.om, 48271
  %i.op = urem i64 %i.oo, 2147483647              ; 2 uses
  %i.oq = add i64 %i.op, %i.oh                    ; 3 uses
  store i64 %i.oq, ptr %i.o, align 8, !tbaa !39
  %i.or = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.os = sitofp i64 %i.or to double
  %i.ot = fdiv double %i.os, 1.000000e+09
  %i.ou = fsub double %i.ot, %i.oa
  %i.ov = fcmp olt double %i.ou, 1.000000e+00
  br i1 %i.ov, label %bb.cc, label %bb.ce, !llvm.loop !77

bb.ce:                                            ; preds = %bb.cd
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.o, i64 %i.oq) #22, !srcloc !78
  %i.ow = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !75 ; 2 uses
  %i.ox = extractvalue { i64, i64 } %i.ow, 0
  %i.oy = extractvalue { i64, i64 } %i.ow, 1
  %i.oz = shl i64 %i.oy, 32
  %i.pa = or i64 %i.oz, %i.ox
  %i.pb = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.pc = sitofp i64 %i.pb to double
  %i.pd = fdiv double %i.pc, 1.000000e+09
  %i.pe = sub nsw i64 %i.pa, %i.of
  %i.pf = sitofp i64 %i.pe to double
  %i.pg = fsub double %i.pd, %i.oa
  %i.ph = fdiv double %i.pf, %i.pg
end_hunk_0
