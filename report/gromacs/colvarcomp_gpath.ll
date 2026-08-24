Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_gpath?download=true
inline.NumInlined: 3692
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE22determineClosestFramesEv:bb.a
.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.x:                                             ; preds = %bb.k
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit86:                                      ; preds = %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

.loopexit.split-lp87:                             ; preds = %bb.p
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

.loopexit91:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

.loopexit.split-lp92:                             ; preds = %bb.r
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

.loopexit96:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp97:                             ; preds = %bb.u
  %lpad.loopexit.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp97, %.loopexit96
  %lpad.phi100 = phi { ptr, i32 } [ %lpad.loopexit98, %.loopexit96 ], [ %lpad.loopexit.split-lp99, %.loopexit.split-lp97 ] ; 2 uses
  %i.fs = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.aq
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.y
  %i.fu = load i64, ptr %i.aq, align 8, !tbaa !42
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.y, %.loopexit91, %.loopexit.split-lp92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %.pn = phi { ptr, i32 } [ %lpad.phi100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp92 ], [ %lpad.loopexit93, %.loopexit91 ], [ %lpad.phi100, %bb.y ] ; 2 uses
  %i.fw = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ao
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.fy = load i64, ptr %i.ao, align 8, !tbaa !42
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %.loopexit86, %.loopexit.split-lp87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp87 ], [ %lpad.loopexit88, %.loopexit86 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ] ; 2 uses
  %i.ga = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.an
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.gc = load i64, ptr %i.an, align 8, !tbaa !42
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fr, %bb.x ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ge = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.aj
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.gg = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 2 uses
  %i.gi = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.ah
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.gk = load i64, ptr %i.ah, align 8, !tbaa !42
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fq, %bb.w ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 2 uses
  %i.gm = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.as
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.go = load i64, ptr %i.as, align 8, !tbaa !42
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.v
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.v ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.gq = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.aa
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.gs = load i64, ptr %i.aa, align 8, !tbaa !42
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.gu = phi i64 [ %.pre148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %bb.d ] ; 3 uses
  %i.gv = phi ptr [ %.pre147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %bb.d ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.gu, ptr %i.gw, align 8, !tbaa !153
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !14, !range !34, !noundef !35
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !39
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hc = load i64, ptr %i.r, align 8, !tbaa !151
  %i.hd = sub nsw i64 %i.gu, %i.hc
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.he = phi i64 [ %i.hb, %bb.aa ], [ %i.hd, %bb.ab ]
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !156
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !44, !range !34, !noundef !35
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !39
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.hl = load i64, ptr %i.r, align 8, !tbaa !151
  %i.hm = add nsw i64 %i.hl, %i.gu
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hn = phi i64 [ %i.hk, %bb.ad ], [ %i.hm, %bb.ae ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !252
  %i.hp = load i64, ptr %i.gv, align 8, !tbaa !39
  %i.hq = uitofp i64 %i.hp to double
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double %i.hq, ptr %i.hr, align 8, !tbaa !334
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE12computeValueEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !353
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !152  ; 3 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !152
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %2 = extractelement <2 x double> %i.bs, i64 0   ; 2 uses
  store double %2, ptr %i.j, align 8, !tbaa !354
  %i.y = extractelement <2 x double> %i.bs, i64 1 ; 2 uses
  store double %i.y, ptr %1, align 8, !tbaa !355
  %i.z = extractelement <2 x double> %i.ce, i64 0
  store double %i.z, ptr %i.k, align 8, !tbaa !356
  %3 = extractelement <2 x double> %i.ce, i64 1
  store double %3, ptr %i.l, align 8, !tbaa !353
  %4 = fsub double %2, %i.y
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.aa = phi double [ %4, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %i.ab = phi <2 x double> [ %i.ce, %._crit_edge ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.ac = fneg double %i.aa
  %i.ad = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ac
  %i.af = extractelement <2 x double> %i.ab, i64 1 ; 3 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ae)
  %i.ah = tail call noundef double @sqrt(double noundef %i.ag) #29
  %i.ai = fsub double %i.ah, %i.af
  %i.aj = fdiv double %i.ai, %i.ad                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.aj, ptr %i.ak, align 8, !tbaa !357
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.am = load double, ptr %i.al, align 8, !tbaa !334
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ao = load double, ptr %i.an, align 8, !tbaa !157 ; 2 uses
  %i.ap = fdiv double %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !151
  %i.as = sitofp i64 %i.ar to double
  %i.at = fadd double %i.aj, -1.000000e+00
  %i.au = fmul double %i.ao, 2.000000e+00
  %i.av = fdiv double %i.at, %i.au
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.as, double %i.av, double %i.ap)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.aw, ptr %i.ax, align 8, !tbaa !358
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %bb.c ] ; 4 uses
  %i.ay = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ce, %bb.c ]
  %i.az = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bs, %bb.c ]
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.010 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.010 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !190
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.010 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !190 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.ba, align 8, !tbaa !142 ; 3 uses
  %i.bj = load <2 x double>, ptr %i.bc, align 8, !tbaa !142 ; 2 uses
  %i.bk = load <2 x double>, ptr %i.bb, align 8, !tbaa !142 ; 3 uses
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> %i.bj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bl
  %i.bn = shufflevector <2 x double> %i.bi, <2 x double> %i.bj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bn, <2 x double> %i.bm)
  %i.bp = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bq = insertelement <2 x double> %i.bp, double %i.be, i64 1 ; 2 uses
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.bo)
  %i.bs = fadd <2 x double> %i.az, %i.br          ; 3 uses
  %i.bt = load <2 x double>, ptr %i.bf, align 8, !tbaa !142 ; 4 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.bv = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fmul <2 x double> %i.bu, %i.bv
  %i.bx = shufflevector <2 x double> %i.bt, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.by = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.by, <2 x double> %i.bw)
  %i.ca = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cb = insertelement <2 x double> %i.bk, double %i.bh, i64 0
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cc, <2 x double> %i.bz)
  %i.ce = fadd <2 x double> %i.ay, %i.cd          ; 4 uses
  %i.cf = add nuw i64 %.010, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !359
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE18computeDerivativesEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !356 ; 3 uses
  %i.c = fmul double %i.b, 2.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !353 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !354
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !355
  %i.j = fsub double %i.g, %i.i
  %i.k = fneg double %i.j
  %i.l = fmul double %i.b, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.l)
  %i.n = tail call noundef double @sqrt(double noundef %i.m) #29
  %i.o = fmul double %i.c, %i.n
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.b, i64 1
  %i.r = fdiv <2 x double> splat (double 1.000000e+00), %i.q ; 9 uses
  %i.s = extractelement <2 x double> %i.r, i64 1
  %i.t = extractelement <2 x double> %i.r, i64 0  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !188  ; 4 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !152  ; 7 uses
  %.not = icmp eq ptr %i.w, %i.x
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = sdiv exact i64 %i.aa, 24                ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !152 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !152 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !152 ; 8 uses
  %min.iters.check = icmp ult i64 %i.ab, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.aa ; 5 uses
  %scevgep32 = getelementptr i8, ptr %i.aj, i64 %i.aa ; 5 uses
  %scevgep33 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %scevgep34 = getelementptr i8, ptr %i.ad, i64 %i.aa ; 2 uses
  %scevgep36 = getelementptr i8, ptr %i.ah, i64 %i.aa ; 2 uses
  %bound0 = icmp ult ptr %i.af, %scevgep32
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound037 = icmp ult ptr %i.af, %scevgep33
  %bound138 = icmp ult ptr %i.a, %scevgep
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx = or i1 %found.conflict, %found.conflict39
  %bound040 = icmp ult ptr %i.af, %scevgep34
  %bound141 = icmp ult ptr %i.ad, %scevgep
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx, %found.conflict42
  %bound044 = icmp ult ptr %i.af, %i.w
  %bound145 = icmp ult ptr %i.x, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  %bound048 = icmp ult ptr %i.af, %scevgep36
  %bound149 = icmp ult ptr %i.ah, %scevgep
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx47, %found.conflict50
  %bound052 = icmp ult ptr %i.aj, %scevgep33
  %bound153 = icmp ult ptr %i.a, %scevgep32
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx51, %found.conflict54
  %bound056 = icmp ult ptr %i.aj, %scevgep34
  %bound157 = icmp ult ptr %i.ad, %scevgep32
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx55, %found.conflict58
  %bound060 = icmp ult ptr %i.aj, %i.w
  %bound161 = icmp ult ptr %i.x, %scevgep32
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx59, %found.conflict62
  %bound064 = icmp ult ptr %i.aj, %scevgep36
  %bound165 = icmp ult ptr %i.ah, %scevgep32
  %found.conflict66 = and i1 %bound064, %bound165
  %conflict.rdx67 = or i1 %conflict.rdx63, %found.conflict66
  br i1 %conflict.rdx67, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, -2                      ; 3 uses
  %i.ak = load double, ptr %i.d, align 8, !tbaa !353, !alias.scope !360
  %i.al = fmul double %i.ak, 2.000000e+00
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.al, i64 0 ; 2 uses
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = load double, ptr %i.a, align 8, !tbaa !356, !alias.scope !360 ; 2 uses
  %i.an = fmul double %i.am, 2.000000e+00
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %i.an, i64 0 ; 2 uses
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul double %i.am, 2.000000e+00
  %broadcast.splatinsert74 = insertelement <2 x double> poison, double %i.ao, i64 0 ; 2 uses
  %broadcast.splat75 = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat69 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> zeroinitializer
  %i.aq = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ar = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <4 x i32> zeroinitializer
  %i.as = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.at = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.av = or disjoint i64 %index, 1               ; 3 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %index ; 3 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.av ; 3 uses
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !208, !alias.scope !363, !noalias !365
  %i.az = load double, ptr %i.ax, align 8, !tbaa !208, !alias.scope !363, !noalias !365
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.be = load double, ptr %i.bc, align 8, !tbaa !212, !alias.scope !363, !noalias !365
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !212, !alias.scope !363, !noalias !365
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !190, !alias.scope !363, !noalias !365
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !190, !alias.scope !363, !noalias !365
  %i.bm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1 ; 2 uses
  %i.bo = fmul <2 x double> %broadcast.splat71, %i.bn
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.av ; 3 uses
  %i.br = load double, ptr %i.bp, align 8, !tbaa !208, !alias.scope !368, !noalias !370
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !208, !alias.scope !368, !noalias !370
  %i.bt = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bs, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !212, !alias.scope !368, !noalias !370
  %i.by = load double, ptr %i.bw, align 8, !tbaa !212, !alias.scope !368, !noalias !370
  %i.bz = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.by, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !190, !alias.scope !368, !noalias !370
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !190, !alias.scope !368, !noalias !370
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.ce, i64 1
  %i.ch = fmul <2 x double> %broadcast.splat73, %i.cg
  %i.ci = fsub <2 x double> %i.bo, %i.ch
  %i.cj = fmul <2 x double> %broadcast.splat, %i.ci
  %i.ck = fmul <2 x double> %broadcast.splat69, %i.bn
  %i.cl = fsub <2 x double> %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %index
  %i.cn = shufflevector <2 x double> %i.bb, <2 x double> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = fmul <4 x double> %i.aq, %i.cn
  %i.cp = shufflevector <2 x double> %i.bu, <2 x double> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cq = fmul <4 x double> %i.ar, %i.cp
  %i.cr = fsub <4 x double> %i.co, %i.cq
  %i.cs = fmul <4 x double> %i.ap, %i.cr
  %i.ct = shufflevector <2 x double> %i.bb, <2 x double> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = fmul <4 x double> %i.as, %i.ct
  %i.cv = fsub <4 x double> %i.cs, %i.cu
  %i.cw = shufflevector <2 x double> %i.cl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.cv, <4 x double> %i.cw, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.cm, align 8, !tbaa !142, !alias.scope !373, !noalias !375
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !208, !alias.scope !378, !noalias !379
  %i.da = load double, ptr %i.cy, align 8, !tbaa !208, !alias.scope !378, !noalias !379
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.df = load double, ptr %i.dd, align 8, !tbaa !212, !alias.scope !378, !noalias !379
  %i.dg = load double, ptr %i.de, align 8, !tbaa !212, !alias.scope !378, !noalias !379
  %i.dh = insertelement <2 x double> poison, double %i.df, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.dg, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !190, !alias.scope !378, !noalias !379
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !190, !alias.scope !378, !noalias !379
  %i.dn = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dm, i64 1
  %i.dp = fmul <2 x double> %broadcast.splat75, %i.do
  %i.dq = fmul <2 x double> %broadcast.splat, %i.dp
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %index
  %i.ds = shufflevector <2 x double> %i.dc, <2 x double> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = fmul <4 x double> %i.au, %i.ds
  %i.du = fmul <4 x double> %i.at, %i.dt
  %i.dv = shufflevector <2 x double> %i.dq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec76 = shufflevector <4 x double> %i.du, <4 x double> %i.dv, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec76, ptr %i.dr, align 8, !tbaa !142, !alias.scope !382, !noalias !383
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.031.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dx = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.031 = phi i64 [ %i.fp, %scalar.ph ], [ %.031.ph, %scalar.ph.preheader ] ; 6 uses
  %i.dz = load double, ptr %i.d, align 8, !tbaa !353
  %i.ea = fmul double %i.dz, 2.000000e+00         ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.031 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !190, !noalias !365 ; 2 uses
  %i.ee = fmul double %i.ea, %i.ed
  %i.ef = load double, ptr %i.a, align 8, !tbaa !356
  %i.eg = fmul double %i.ef, 2.000000e+00         ; 2 uses
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.031 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !190, !noalias !370
  %i.ek = fmul double %i.eg, %i.ej
  %i.el = fsub double %i.ee, %i.ek
  %i.em = fmul double %i.t, %i.el
  %i.en = fmul double %i.s, %i.ed
  %i.eo = fsub double %i.em, %i.en
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.031 ; 2 uses
  %i.eq = load <2 x double>, ptr %i.eb, align 8, !tbaa !142, !noalias !365 ; 2 uses
  %i.er = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x double> %i.es, %i.eq
  %i.eu = load <2 x double>, ptr %i.eh, align 8, !tbaa !142, !noalias !370
  %i.ev = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x double> %i.ew, %i.eu
  %i.ey = fsub <2 x double> %i.et, %i.ex
  %i.ez = fmul <2 x double> %i.dx, %i.ey
  %i.fa = fmul <2 x double> %i.dy, %i.eq
  %i.fb = fsub <2 x double> %i.ez, %i.fa
  store <2 x double> %i.fb, ptr %i.ep, align 8, !tbaa !142
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store double %i.eo, ptr %.sroa.530.0..sroa_idx, align 8, !tbaa !142
  %i.fc = load double, ptr %i.a, align 8, !tbaa !356
  %i.fd = fmul double %i.fc, 2.000000e+00         ; 2 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.031 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !190, !noalias !379
  %i.fh = fmul double %i.fd, %i.fg
  %i.fi = fmul double %i.t, %i.fh
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.031 ; 2 uses
  %i.fk = load <2 x double>, ptr %i.fe, align 8, !tbaa !142, !noalias !379
  %i.fl = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x double> %i.fm, %i.fk
  %i.fo = fmul <2 x double> %i.dx, %i.fn
  store <2 x double> %i.fo, ptr %i.fj, align 8, !tbaa !142
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store double %i.fi, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !142
  %i.fp = add nuw i64 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fp, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !385
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar6gzpathD2Ev(ptr noundef nonnull align 8 dead_on_return(3232) dereferenceable(3232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gzpathE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gzpathE, i64 280), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gzpathE, i64 344), ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2664
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2096
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.d) #29
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #29
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(1704) %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar6gzpathD0Ev(ptr noundef nonnull align 8 dereferenceable(3232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gzpathE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gzpathE, i64 280), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gzpathE, i64 344), ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2664
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29, !inline_history !386
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2096
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.d) #29, !inline_history !386
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #29, !inline_history !386
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(3232) %0) #29, !inline_history !386
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 3232) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar6gzpath4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i8, align 1                       ; 7 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.m = tail call noundef i32 @_ZN6colvar18CartesianBasedPath4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  store i8 1, ptr %i.h, align 1, !tbaa !12
  %i.p = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRbRKbNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.h, i32 noundef 131078) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  %i.q = load i8, ptr %i.o, align 8, !tbaa !387, !range !34, !noundef !35
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.noexc.i, label %.noexc.i55

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  store i64 74, ptr %i.g, align 8, !tbaa !39
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.t, ptr %2, align 8, !tbaa !40
  %i.u = load i64, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(74) %i.t, ptr noundef nonnull align 1 dereferenceable(74) @.str.30, i64 74, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.s
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.s, align 8, !tbaa !42
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.i

bb.d:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.e:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.e
  %i.af = load i64, ptr %i.s, align 8, !tbaa !42
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.d
  %.pn30 = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ba

.noexc.i55:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 72, ptr %i.f, align 8, !tbaa !39
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc56 unwind label %bb.g   ; 3 uses

.noexc56:                                         ; preds = %.noexc.i55
  store ptr %i.ai, ptr %3, align 8, !tbaa !40
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !39  ; 3 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.ai, ptr noundef nonnull align 1 dereferenceable(72) @.str.31, i64 72, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 0, ptr %i.al, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 10)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.noexc56
  %i.am = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ah
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.f
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !42
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.g:                                             ; preds = %.noexc.i55
  %i.aq = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v6f64
!154 = !{!89, !90, i64 0}
!155 = !{!110, !110, i64 0}
!156 = !{!15, !33, i64 352}
!157 = !{!15, !16, i64 376}
!158 = !{!159}
!159 = distinct !{!159, !160}
!160 = distinct !{!160, !"LVerDomain"}
!161 = !{!162}
!162 = distinct !{!162, !160}
!163 = !{!164}
!164 = distinct !{!164, !160}
!165 = !{!166}
!166 = distinct !{!166, !160}
!167 = !{!168, !169, !170, !171, !172, !162, !159, !164}
!168 = distinct !{!168, !160}
!169 = distinct !{!169, !160}
!170 = distinct !{!170, !160}
!171 = distinct !{!171, !160}
!172 = distinct !{!172, !160}
!173 = !{!168}
!174 = !{!169, !170, !171, !172, !162, !159, !164}
!175 = !{!169}
!176 = !{!170, !171, !172, !162, !159, !164}
!177 = !{!170}
!178 = !{!171, !172, !162, !159, !164}
!179 = !{!171}
!180 = !{!172, !162, !159, !164}
!181 = !{!172}
!182 = !{!162, !159, !164}
!183 = distinct !{!183, !184, !185, !186}
!184 = !{!"llvm.loop.mustprogress"}
!185 = !{!"llvm.loop.isvectorized", i32 1}
!186 = !{!"llvm.loop.unroll.runtime.disable"}
!187 = distinct !{!187, !184, !185}
!188 = !{!20, !21, i64 8}
!189 = !{!20, !21, i64 16}
!190 = !{!98, !16, i64 16}
!191 = distinct !{!191, !184}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!194 = distinct !{!194, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!197 = distinct !{!197, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!198 = distinct !{!198, !184}
!199 = !{!99, !16, i64 0}
!200 = !{!201, !203}
!201 = distinct !{!201, !202, !"_ZmlRKN12colvarmodule10quaternionES2_: argument 0"}
!202 = distinct !{!202, !"_ZmlRKN12colvarmodule10quaternionES2_"}
!203 = distinct !{!203, !204, !"_ZNK12colvarmodule10quaternion6rotateERKNS_7rvectorE: argument 0"}
!204 = distinct !{!204, !"_ZNK12colvarmodule10quaternion6rotateERKNS_7rvectorE"}
!205 = !{!99, !16, i64 24}
!206 = distinct !{!206, !184}
!207 = !{!203}
!208 = !{!98, !16, i64 0}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!211 = distinct !{!211, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!212 = !{!98, !16, i64 8}
!213 = distinct !{!213, !184}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!216 = distinct !{!216, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!217 = distinct !{!217, !184}
!218 = distinct !{!218, !184}
!219 = distinct !{!219, !184, !185, !186}
!220 = distinct !{!220, !184, !186, !185}
!221 = !{!222}
!222 = distinct !{!222, !223}
!223 = distinct !{!223, !"LVerDomain"}
!224 = !{!225}
!225 = distinct !{!225, !223}
!226 = !{!227}
!227 = distinct !{!227, !223}
!228 = !{!229}
!229 = distinct !{!229, !223}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!232 = distinct !{!232, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!233 = !{!234}
!234 = distinct !{!234, !223}
!235 = !{!236, !227, !225, !222, !229, !237, !238, !239, !240}
!236 = distinct !{!236, !223}
!237 = distinct !{!237, !223}
!238 = distinct !{!238, !223}
!239 = distinct !{!239, !223}
!240 = distinct !{!240, !223}
!241 = !{!239}
!242 = !{!238}
!243 = !{!237}
!244 = !{!240}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!247 = distinct !{!247, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!248 = !{!236}
!249 = !{!227, !225, !222, !229, !237, !238, !239, !240}
!250 = distinct !{!250, !184, !185, !186}
!251 = distinct !{!251, !184, !185}
!252 = !{!15, !33, i64 360}
!253 = distinct !{!253, !184}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!256 = distinct !{!256, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!259 = distinct !{!259, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!260 = distinct !{!260, !184}
!261 = !{!46, !13, i64 1616}
!262 = distinct !{!262, !184}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!265 = distinct !{!265, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!268 = distinct !{!268, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!269 = distinct !{!269, !184}
!270 = !{!271, !273}
!271 = distinct !{!271, !272, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv: argument 0"}
!272 = distinct !{!272, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv"}
!273 = distinct !{!273, !274, !"_ZNK12colvarmodule8rotation6matrixEv: argument 0"}
!274 = distinct !{!274, !"_ZNK12colvarmodule8rotation6matrixEv"}
!275 = !{!276}
!276 = distinct !{!276, !277}
!277 = distinct !{!277, !"LVerDomain"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE: argument 0"}
!280 = distinct !{!280, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE"}
!281 = !{!282}
!282 = distinct !{!282, !277}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!285 = distinct !{!285, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!286 = !{!287}
!287 = distinct !{!287, !277}
!288 = !{!276, !282}
!289 = distinct !{!289, !184, !185, !186}
!290 = distinct !{!290, !184, !185}
!291 = distinct !{!291, !184}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!294 = distinct !{!294, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!297 = distinct !{!297, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!298 = distinct !{!298, !184}
!299 = distinct !{!299, !184}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!302 = distinct !{!302, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!305 = distinct !{!305, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!306 = distinct !{!306, !184}
!307 = !{!308, !310}
!308 = distinct !{!308, !309, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv: argument 0"}
!309 = distinct !{!309, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv"}
!310 = distinct !{!310, !311, !"_ZNK12colvarmodule8rotation6matrixEv: argument 0"}
!311 = distinct !{!311, !"_ZNK12colvarmodule8rotation6matrixEv"}
!312 = !{!313}
!313 = distinct !{!313, !314}
!314 = distinct !{!314, !"LVerDomain"}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE: argument 0"}
!317 = distinct !{!317, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE"}
!318 = !{!319}
!319 = distinct !{!319, !314}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!322 = distinct !{!322, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!323 = !{!324}
!324 = distinct !{!324, !314}
!325 = !{!313, !319}
!326 = distinct !{!326, !184, !185, !186}
!327 = distinct !{!327, !184, !185}
!328 = !{ptr @_ZN6colvar6gspathD0Ev, ptr @_ZN6colvar6gspathD2Ev}
!329 = !{ptr @_ZN6colvar6gspathD0Ev}
!330 = !{!31, !32, i64 8}
!331 = !{!31, !32, i64 0}
!332 = distinct !{!332, !184, !185, !186}
!333 = !{!15, !13, i64 338}
!334 = !{!15, !16, i64 384}
!335 = distinct !{!335, !184, !186, !185}
!336 = distinct !{!336, !184, !185, !186}
!337 = distinct !{!337, !184, !186, !185}
!338 = !{ptr @_ZN6colvar6gspath31updateDistanceToReferenceFramesEv}
!339 = !{!32, !32, i64 0}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!342 = distinct !{!342, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!345 = distinct !{!345, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!348 = distinct !{!348, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!351 = distinct !{!351, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!352 = distinct !{!352, !184}
!353 = !{!15, !16, i64 40}
!354 = !{!15, !16, i64 8}
!355 = !{!15, !16, i64 16}
!356 = !{!15, !16, i64 24}
!357 = !{!15, !16, i64 56}
!358 = !{!15, !16, i64 72}
!359 = distinct !{!359, !184}
!360 = !{!361}
!361 = distinct !{!361, !362}
!362 = distinct !{!362, !"LVerDomain"}
!363 = !{!364}
!364 = distinct !{!364, !362}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!367 = distinct !{!367, !"_ZmldRKN12colvarmodule7rvectorE"}
!368 = !{!369}
!369 = distinct !{!369, !362}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!372 = distinct !{!372, !"_ZmldRKN12colvarmodule7rvectorE"}
!373 = !{!374}
!374 = distinct !{!374, !362}
!375 = !{!376, !361, !364, !369, !377}
!376 = distinct !{!376, !362}
!377 = distinct !{!377, !362}
!378 = !{!377}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!381 = distinct !{!381, !"_ZmldRKN12colvarmodule7rvectorE"}
!382 = !{!376}
!383 = !{!361, !364, !369, !377}
!384 = distinct !{!384, !184, !185, !186}
!385 = distinct !{!385, !184, !185}
!386 = !{ptr @_ZN6colvar6gzpathD2Ev}
!387 = !{!388, !13, i64 336}
!388 = !{!"_ZTSN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EEE", !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !17, i64 96, !17, i64 120, !17, i64 144, !17, i64 168, !17, i64 192, !17, i64 216, !17, i64 240, !17, i64 264, !23, i64 288, !28, i64 312, !13, i64 336, !13, i64 337, !13, i64 338, !33, i64 344, !33, i64 352, !33, i64 360, !33, i64 368, !16, i64 376, !16, i64 384}
!389 = !{!388, !13, i64 337}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!392 = distinct !{!392, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!395 = distinct !{!395, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!398 = distinct !{!398, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!401 = distinct !{!401, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!402 = !{!388, !33, i64 344}
!403 = !{!388, !33, i64 352}
!404 = !{!405}
!405 = distinct !{!405, !406}
!406 = distinct !{!406, !"LVerDomain"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!409 = distinct !{!409, !"_ZmldRKN12colvarmodule7rvectorE"}
!410 = !{!411}
!411 = distinct !{!411, !406}
!412 = !{!413}
!413 = distinct !{!413, !406}
!414 = !{!415, !416, !417, !418, !419, !405, !411}
!415 = distinct !{!415, !406}
!416 = distinct !{!416, !406}
!417 = distinct !{!417, !406}
!418 = distinct !{!418, !406}
!419 = distinct !{!419, !406}
!420 = !{!415}
!421 = !{!416, !417, !418, !419, !405, !411}
!422 = !{!416}
!423 = !{!417, !418, !419, !405, !411}
!424 = !{!417}
!425 = !{!418, !419, !405, !411}
!426 = !{!418}
!427 = !{!419, !405, !411}
!428 = !{!419}
!429 = !{!405, !411}
!430 = distinct !{!430, !184, !185, !186}
!431 = distinct !{!431, !184, !185}
!432 = distinct !{!432, !184}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!435 = distinct !{!435, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!438 = distinct !{!438, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!439 = distinct !{!439, !184}
!440 = distinct !{!440, !184}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!443 = distinct !{!443, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!446 = distinct !{!446, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!447 = distinct !{!447, !184}
!448 = !{!449, !451}
!449 = distinct !{!449, !450, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv: argument 0"}
!450 = distinct !{!450, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv"}
!451 = distinct !{!451, !452, !"_ZNK12colvarmodule8rotation6matrixEv: argument 0"}
!452 = distinct !{!452, !"_ZNK12colvarmodule8rotation6matrixEv"}
!453 = !{!454}
!454 = distinct !{!454, !455}
!455 = distinct !{!455, !"LVerDomain"}
!456 = !{!457}
!457 = distinct !{!457, !455}
!458 = !{!459}
!459 = distinct !{!459, !455}
!460 = !{!461}
!461 = distinct !{!461, !455}
!462 = !{!463}
!463 = distinct !{!463, !455}
!464 = !{!465}
!465 = distinct !{!465, !455}
!466 = !{!467}
!467 = distinct !{!467, !455}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!470 = distinct !{!470, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!471 = !{!472}
!472 = distinct !{!472, !455}
!473 = !{!474, !475, !459, !457, !454, !465, !463, !461, !467, !476, !477, !478}
!474 = distinct !{!474, !455}
!475 = distinct !{!475, !455}
!476 = distinct !{!476, !455}
!477 = distinct !{!477, !455}
!478 = distinct !{!478, !455}
!479 = !{!476}
!480 = !{!481}
!481 = distinct !{!481, !482, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!482 = distinct !{!482, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!483 = !{!474}
!484 = !{!475, !459, !457, !454, !465, !463, !461, !467, !476, !477, !478}
!485 = !{!477}
!486 = !{!487}
!487 = distinct !{!487, !488, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE: argument 0"}
!488 = distinct !{!488, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE"}
!489 = !{!478}
!490 = !{!491}
!491 = distinct !{!491, !492, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!492 = distinct !{!492, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!493 = !{!475}
!494 = !{!459, !457, !454, !465, !463, !461, !467, !476, !477, !478}
!495 = distinct !{!495, !184, !185, !186}
!496 = distinct !{!496, !184, !185}
!497 = !{!388, !33, i64 360}
!498 = !{!388, !16, i64 376}
!499 = distinct !{!499, !184}
!500 = distinct !{!500, !501}
!501 = !{!"llvm.loop.unroll.disable"}
!502 = !{!503}
!503 = distinct !{!503, !504, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!504 = distinct !{!504, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!505 = distinct !{!505, !184}
!506 = distinct !{!506, !184}
!507 = distinct !{!507, !501}
!508 = !{!509}
!509 = distinct !{!509, !510, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!510 = distinct !{!510, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!511 = distinct !{!511, !184}
!512 = !{!513, !515}
!513 = distinct !{!513, !514, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv: argument 0"}
!514 = distinct !{!514, !"_ZNK12colvarmodule10quaternion15rotation_matrixEv"}
!515 = distinct !{!515, !516, !"_ZNK12colvarmodule8rotation6matrixEv: argument 0"}
!516 = distinct !{!516, !"_ZNK12colvarmodule8rotation6matrixEv"}
!517 = !{!518}
!518 = distinct !{!518, !519}
!519 = distinct !{!519, !"LVerDomain"}
!520 = !{!521}
!521 = distinct !{!521, !522, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE: argument 0"}
!522 = distinct !{!522, !"_ZmlRKN12colvarmodule7rmatrixERKNS_7rvectorE"}
!523 = !{!524}
!524 = distinct !{!524, !519}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!527 = distinct !{!527, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!528 = !{!529}
!529 = distinct !{!529, !519}
!530 = !{!518, !524}
!531 = distinct !{!531, !184, !185, !186}
!532 = distinct !{!532, !184, !185}
!533 = !{ptr @_ZN6colvar6gzpathD0Ev, ptr @_ZN6colvar6gzpathD2Ev}
!534 = !{ptr @_ZN6colvar6gzpathD0Ev}
!535 = !{!388, !33, i64 368}
!536 = distinct !{!536, !184, !185, !186}
!537 = !{!388, !13, i64 338}
!538 = !{!388, !16, i64 384}
!539 = distinct !{!539, !184, !186, !185}
!540 = distinct !{!540, !184, !185, !186}
!541 = distinct !{!541, !184, !186, !185}
!542 = !{ptr @_ZN6colvar6gzpath31updateDistanceToReferenceFramesEv}
!543 = !{!544}
!544 = distinct !{!544, !545, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!545 = distinct !{!545, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!548 = distinct !{!548, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!549 = !{!550}
!550 = distinct !{!550, !551, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!551 = distinct !{!551, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!552 = !{!553}
!553 = distinct !{!553, !554, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!554 = distinct !{!554, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!555 = distinct !{!555, !184}
!556 = !{!388, !16, i64 8}
!557 = !{!388, !16, i64 48}
!558 = !{!388, !16, i64 56}
!559 = !{!388, !16, i64 64}
end_hunk_1
