Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_abf?download=true
inline.NumInlined: 3756
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN14colvarbias_abf13replica_shareEv:bb.a

_ZNKSt14default_deleteI20colvargrid_integrateEclEPS0_.exit.i.i: ; preds = %bb.as
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !154
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(760) %i.fo) #24, !inline_history !6
  br label %_ZNSt10unique_ptrI20colvargrid_integrateSt14default_deleteIS0_EE5resetEPS0_.exit

_ZNSt10unique_ptrI20colvargrid_integrateSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %bb.as, %_ZNKSt14default_deleteI20colvargrid_integrateEclEPS0_.exit.i.i
  %i.fs = load ptr, ptr %i.fe, align 8, !tbaa !224 ; 8 uses
  %.not.i.i134 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i134, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrI20colvargrid_integrateSt14default_deleteIS0_EE5resetEPS0_.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 4 uses
  %i.fu = load atomic i64, ptr %i.ft acquire, align 8 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 4294967297
  %i.fw = trunc i64 %i.fu to i32                  ; 2 uses
  br i1 %i.fv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ft, align 8, !tbaa !226
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 0, ptr %i.fx, align 4, !tbaa !227
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !154
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #24, !inline_history !7
  %i.gb = load ptr, ptr %i.fs, align 8, !tbaa !154
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #24, !inline_history !7
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.ge = load i8, ptr @__libc_single_threaded, align 1, !tbaa !209
  %.not.i.i.i135 = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i.i135, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gf = add nsw i32 %i.fw, -1
  store i32 %i.gf, ptr %i.ft, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

bb.ax:                                            ; preds = %bb.av
  %i.gg = atomicrmw volatile add ptr %i.ft, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i137 = phi i32 [ %i.fw, %bb.aw ], [ %i.gg, %bb.ax ]
  %i.gh = icmp eq i32 %.0.i.i.i.i137, 1
  br i1 %i.gh, label %bb.ay, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !213

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #24
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.ba:                                            ; preds = %bb.k
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.be
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.ba
  %i.gm = load i64, ptr %i.be, align 8, !tbaa !209
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.az
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.az ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.gj, %bb.ba ]
  %i.go = load ptr, ptr %4, align 8, !tbaa !207   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !209
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.cj

bb.bb:                                            ; preds = %bb.q
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  br label %bb.cj

bb.bc:                                            ; preds = %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I17colvar_grid_countvEERKS_IT_E.exit
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 704) #26
  br label %bb.cj

bb.bd:                                            ; preds = %bb.ab, %_ZNSt10shared_ptrI17colvar_grid_countEC2ERKS1_.exit
  %.050 = phi i1 [ false, %bb.ab ], [ true, %_ZNSt10shared_ptrI17colvar_grid_countEC2ERKS1_.exit ]
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %8, align 8, !tbaa !207   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.dq
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.bd
  %i.gy = load i64, ptr %i.dq, align 8, !tbaa !209
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  call void @_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  br i1 %.050, label %bb.be, label %bb.cj

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 728) #26
  br label %bb.cj

bb.bf:                                            ; preds = %_ZNSt10shared_ptrI20colvar_grid_gradientEC2ERKS1_.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 760) #26
  br label %bb.cj

_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136, %bb.au, %_ZNSt10unique_ptrI20colvargrid_integrateSt14default_deleteIS0_EE5resetEPS0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 5 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !230
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 7 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !160
  call void @_ZN11colvar_gridIdE10delta_gridERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %i.hc, ptr noundef nonnull align 8 dereferenceable(698) %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !160
  %i.hh = load ptr, ptr %i.hb, align 8, !tbaa !230
  call void @_ZN11colvar_gridIdE8add_gridERKS0_d(ptr noundef nonnull align 8 dereferenceable(698) %i.hg, ptr noundef nonnull align 8 dereferenceable(698) %i.hh, double noundef 1.000000e+00)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2088 ; 5 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !48
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 6 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !48
  call void @_ZN11colvar_gridImE10delta_gridERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %i.hj, ptr noundef nonnull align 8 dereferenceable(698) %i.hl)
  %i.hm = load ptr, ptr %i.bz, align 8, !tbaa !48
  %i.hn = load ptr, ptr %i.hi, align 8, !tbaa !48
  call void @_ZN11colvar_gridImE8add_gridERKS0_d(ptr noundef nonnull align 8 dereferenceable(698) %i.hm, ptr noundef nonnull align 8 dereferenceable(698) %i.hn, double noundef 1.000000e+00)
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !48 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 464
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 472
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !231
  %i.hs = load ptr, ptr %i.hp, align 8, !tbaa !201
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = lshr exact i64 %i.hv, 3
  %i.hx = load ptr, ptr %i.hd, align 8, !tbaa !160 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 464
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 472
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !211
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !57
  %i.ic = ptrtoint ptr %i.ia to i64               ; 5 uses
  %i.id = ptrtoint ptr %i.ib to i64               ; 5 uses
  %i.ie = sub i64 %i.ic, %i.id                    ; 4 uses
  %i.if = lshr exact i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, %i.hw
  %.tr = trunc i64 %i.ig to i32
  %i.ih = shl i32 %.tr, 3                         ; 9 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ii) #27 ; 33 uses
  %i.ik = ptrtoaddr ptr %i.ij to i64              ; 8 uses
  %i.il = call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.im = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !156
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 800 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !154
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = call noundef i32 %i.iq(ptr noundef nonnull align 8 dereferenceable(24) %i.in)
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %.preheader, label %bb.bp

.preheader:                                       ; preds = %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.it = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call noundef i32 %i.iv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ie ; 6 uses
  %i.iz = add i64 %i.ik, %i.ic
  %18 = sub i64 %i.id, %i.iz
  %invariant.op = add i64 %18, -1
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph, %_ZN11colvar_gridImE11raw_data_inEPKm.exit
  %.0273 = phi i32 [ 1, %.lr.ph ], [ %i.mt, %_ZN11colvar_gridImE11raw_data_inEPKm.exit ] ; 2 uses
  %i.ja = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = call noundef i32 %i.jc(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.ij, i32 noundef %i.ih, i32 noundef %.0273)
  %.not81 = icmp eq i32 %i.jd, %i.ih
  br i1 %.not81, label %bb.bk, label %.noexc.i148

.noexc.i148:                                      ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.je, ptr %10, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 43, ptr %i.d, align 8, !tbaa !62
  %i.jf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc149 unwind label %bb.bi ; 3 uses

.noexc149:                                        ; preds = %.noexc.i148
  store ptr %i.jf, ptr %10, align 8, !tbaa !207
  %i.jg = load i64, ptr %i.d, align 8, !tbaa !62  ; 3 uses
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.jf, ptr noundef nonnull align 1 dereferenceable(43) @.str.74, i64 43, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !208
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jg
  store i8 0, ptr %i.ji, align 1, !tbaa !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.jj = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef -1)
          to label %bb.bh unwind label %bb.bj     ; 0 uses

bb.bh:                                            ; preds = %.noexc149
  %i.jk = load ptr, ptr %10, align 8, !tbaa !207  ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.je
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.bh
  %i.jm = load i64, ptr %i.je, align 8, !tbaa !209
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.critedge

bb.bi:                                            ; preds = %.noexc.i148
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

bb.bj:                                            ; preds = %.noexc149
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = load ptr, ptr %10, align 8, !tbaa !207  ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.je
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.bj
  %i.js = load i64, ptr %i.je, align 8, !tbaa !209
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.bi
  %.pn82 = phi { ptr, i32 } [ %i.jo, %bb.bi ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %i.jp, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.cj

bb.bk:                                            ; preds = %bb.bg
  %i.ju = load ptr, ptr %i.hb, align 8, !tbaa !230 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 464
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 472
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !211 ; 2 uses
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !57 ; 8 uses
  %.not.i = icmp eq ptr %i.jx, %i.jy
  br i1 %.not.i, label %_ZN11colvar_gridIdE11raw_data_inEPKd.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bk
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = ashr exact i64 %i.kb, 3                 ; 6 uses
  %min.iters.check430 = icmp ult i64 %i.kc, 4
  %i.kd = sub i64 %i.ik, %i.ka
  %diff.check428 = icmp ugt i64 %i.kd, -32
  %or.cond = or i1 %min.iters.check430, %diff.check428
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph.preheader.i
  %n.vec432 = and i64 %i.kc, -4                   ; 3 uses
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next437, %vector.body433 ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index434 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %wide.load435 = load <2 x double>, ptr %i.ke, align 8, !tbaa !82
  %wide.load436 = load <2 x double>, ptr %i.kf, align 8, !tbaa !82
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %index434 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store <2 x double> %wide.load435, ptr %i.kg, align 8, !tbaa !82
  store <2 x double> %wide.load436, ptr %i.kh, align 8, !tbaa !82
  %index.next437 = add nuw i64 %index434, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next437, %n.vec432
  br i1 %i.ki, label %middle.block438, label %vector.body433, !llvm.loop !386

middle.block438:                                  ; preds = %vector.body433
  %cmp.n439 = icmp eq i64 %i.kc, %n.vec432
  br i1 %cmp.n439, label %_ZN11colvar_gridIdE11raw_data_inEPKd.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block438
  %.05.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec432, %middle.block438 ] ; 3 uses
  %xtraiter511 = and i64 %i.kc, 3                 ; 2 uses
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.05.i.prol = phi i64 [ %i.km, %.lr.ph.i.prol ], [ %.05.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter513 = phi i64 [ %prol.iter513.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.05.i.prol
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !82
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.05.i.prol
  store double %i.kk, ptr %i.kl, align 8, !tbaa !82
  %i.km = add nuw i64 %.05.i.prol, 1              ; 2 uses
  %prol.iter513.next = add i64 %prol.iter513, 1   ; 2 uses
  %prol.iter513.cmp.not = icmp eq i64 %prol.iter513.next, %xtraiter511
  br i1 %prol.iter513.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !387

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05.i.unr = phi i64 [ %.05.i.ph, %.lr.ph.i.preheader ], [ %i.km, %.lr.ph.i.prol ]
  %i.kn = sub nsw i64 %.05.i.ph, %i.kc
  %i.ko = icmp ugt i64 %i.kn, -4
  br i1 %i.ko, label %_ZN11colvar_gridIdE11raw_data_inEPKd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05.i = phi i64 [ %i.le, %.lr.ph.i ], [ %.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.05.i
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !82
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.05.i
  store double %i.kq, ptr %i.kr, align 8, !tbaa !82
  %i.ks = add nuw i64 %.05.i, 1                   ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !82
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ks
  store double %i.ku, ptr %i.kv, align 8, !tbaa !82
  %i.kw = add nuw i64 %.05.i, 2                   ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.kw
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !82
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.kw
  store double %i.ky, ptr %i.kz, align 8, !tbaa !82
  %i.la = add nuw i64 %.05.i, 3                   ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.la
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !82
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.la
  store double %i.lc, ptr %i.ld, align 8, !tbaa !82
  %i.le = add nuw i64 %.05.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.le, %i.kc
  br i1 %exitcond.not.i.3, label %_ZN11colvar_gridIdE11raw_data_inEPKd.exit, label %.lr.ph.i, !llvm.loop !388

_ZN11colvar_gridIdE11raw_data_inEPKd.exit:        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block438, %bb.bk
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ju, i64 697
  store i8 1, ptr %i.lf, align 1, !tbaa !216
  %i.lg = load ptr, ptr %i.hd, align 8, !tbaa !160
  call void @_ZN11colvar_gridIdE8add_gridERKS0_d(ptr noundef nonnull align 8 dereferenceable(698) %i.lg, ptr noundef nonnull align 8 dereferenceable(698) %i.ju, double noundef 1.000000e+00)
  %i.lh = load ptr, ptr %i.hi, align 8, !tbaa !48 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 464
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 472
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !231 ; 2 uses
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !201 ; 8 uses
  %.not.i157 = icmp eq ptr %i.lk, %i.ll
  br i1 %.not.i157, label %_ZN11colvar_gridImE11raw_data_inEPKm.exit, label %.lr.ph.preheader.i158

.lr.ph.preheader.i158:                            ; preds = %_ZN11colvar_gridIdE11raw_data_inEPKd.exit
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %i.ll to i64               ; 2 uses
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = ashr exact i64 %i.lo, 3                 ; 6 uses
  %min.iters.check416 = icmp ult i64 %i.lp, 4
  %.reass = add i64 %i.ln, %invariant.op
  %diff.check414 = icmp ult i64 %.reass, 31
  %or.cond530 = or i1 %min.iters.check416, %diff.check414
  br i1 %or.cond530, label %.lr.ph.i159.preheader, label %vector.ph417

vector.ph417:                                     ; preds = %.lr.ph.preheader.i158
  %n.vec418 = and i64 %i.lp, -4                   ; 3 uses
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph417
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next423, %vector.body419 ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %index420 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load421 = load <2 x i64>, ptr %i.lq, align 8, !tbaa !62
  %wide.load422 = load <2 x i64>, ptr %i.lr, align 8, !tbaa !62
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %index420 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store <2 x i64> %wide.load421, ptr %i.ls, align 8, !tbaa !62
  store <2 x i64> %wide.load422, ptr %i.lt, align 8, !tbaa !62
  %index.next423 = add nuw i64 %index420, 4       ; 2 uses
  %i.lu = icmp eq i64 %index.next423, %n.vec418
  br i1 %i.lu, label %middle.block424, label %vector.body419, !llvm.loop !389

middle.block424:                                  ; preds = %vector.body419
  %cmp.n425 = icmp eq i64 %i.lp, %n.vec418
  br i1 %cmp.n425, label %_ZN11colvar_gridImE11raw_data_inEPKm.exit, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %.lr.ph.preheader.i158, %middle.block424
  %.05.i160.ph = phi i64 [ %n.vec418, %middle.block424 ], [ 0, %.lr.ph.preheader.i158 ] ; 3 uses
  %xtraiter514 = and i64 %i.lp, 3                 ; 2 uses
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %.lr.ph.i159.prol.loopexit, label %.lr.ph.i159.prol

.lr.ph.i159.prol:                                 ; preds = %.lr.ph.i159.preheader, %.lr.ph.i159.prol
  %.05.i160.prol = phi i64 [ %i.ly, %.lr.ph.i159.prol ], [ %.05.i160.ph, %.lr.ph.i159.preheader ] ; 3 uses
  %prol.iter516 = phi i64 [ %prol.iter516.next, %.lr.ph.i159.prol ], [ 0, %.lr.ph.i159.preheader ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.05.i160.prol
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !62
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.05.i160.prol
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !62
  %i.ly = add nuw i64 %.05.i160.prol, 1           ; 2 uses
  %prol.iter516.next = add i64 %prol.iter516, 1   ; 2 uses
  %prol.iter516.cmp.not = icmp eq i64 %prol.iter516.next, %xtraiter514
  br i1 %prol.iter516.cmp.not, label %.lr.ph.i159.prol.loopexit, label %.lr.ph.i159.prol, !llvm.loop !390

.lr.ph.i159.prol.loopexit:                        ; preds = %.lr.ph.i159.prol, %.lr.ph.i159.preheader
  %.05.i160.unr = phi i64 [ %.05.i160.ph, %.lr.ph.i159.preheader ], [ %i.ly, %.lr.ph.i159.prol ]
  %i.lz = sub nsw i64 %.05.i160.ph, %i.lp
  %i.ma = icmp ugt i64 %i.lz, -4
  br i1 %i.ma, label %_ZN11colvar_gridImE11raw_data_inEPKm.exit, label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159
  %.05.i160 = phi i64 [ %i.mq, %.lr.ph.i159 ], [ %.05.i160.unr, %.lr.ph.i159.prol.loopexit ] ; 6 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.05.i160
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !62
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.05.i160
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !62
  %i.me = add nuw i64 %.05.i160, 1                ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.me
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !62
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.me
  store i64 %i.mg, ptr %i.mh, align 8, !tbaa !62
  %i.mi = add nuw i64 %.05.i160, 2                ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.mi
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !62
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.mi
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !62
  %i.mm = add nuw i64 %.05.i160, 3                ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.mm
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !62
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.mm
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !62
  %i.mq = add nuw i64 %.05.i160, 4                ; 2 uses
  %exitcond.not.i161.3 = icmp eq i64 %i.mq, %i.lp
  br i1 %exitcond.not.i161.3, label %_ZN11colvar_gridImE11raw_data_inEPKm.exit, label %.lr.ph.i159, !llvm.loop !391

_ZN11colvar_gridImE11raw_data_inEPKm.exit:        ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159, %middle.block424, %_ZN11colvar_gridIdE11raw_data_inEPKd.exit
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lh, i64 697
  store i8 1, ptr %i.mr, align 1, !tbaa !232
  %i.ms = load ptr, ptr %i.hk, align 8, !tbaa !48
  call void @_ZN11colvar_gridImE8add_gridERKS0_d(ptr noundef nonnull align 8 dereferenceable(698) %i.ms, ptr noundef nonnull align 8 dereferenceable(698) %i.lh, double noundef 1.000000e+00)
  %i.mt = add nuw nsw i32 %.0273, 1               ; 2 uses
  %i.mu = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = call noundef i32 %i.mw(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  %i.my = icmp slt i32 %i.mt, %i.mx
  br i1 %i.my, label %bb.bg, label %._crit_edge, !llvm.loop !392

._crit_edge:                                      ; preds = %_ZN11colvar_gridImE11raw_data_inEPKm.exit, %.preheader
  %i.mz = load ptr, ptr %i.hd, align 8, !tbaa !160 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 464
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 472
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !211 ; 2 uses
  %i.nd = load ptr, ptr %i.na, align 8, !tbaa !57 ; 8 uses
  %.not.i162 = icmp eq ptr %i.nc, %i.nd
  br i1 %.not.i162, label %_ZNK11colvar_gridIdE12raw_data_outEPd.exit, label %.lr.ph.preheader.i163

.lr.ph.preheader.i163:                            ; preds = %._crit_edge
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = ptrtoint ptr %i.nd to i64               ; 2 uses
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = ashr exact i64 %i.ng, 3                 ; 6 uses
  %min.iters.check444 = icmp ult i64 %i.nh, 8
  %i.ni = sub i64 %i.nf, %i.ik
  %diff.check446 = icmp ugt i64 %i.ni, -32
  %or.cond499 = or i1 %min.iters.check444, %diff.check446
  br i1 %or.cond499, label %.lr.ph.i164.preheader, label %vector.ph447

vector.ph447:                                     ; preds = %.lr.ph.preheader.i163
  %n.vec448 = and i64 %i.nh, -4                   ; 3 uses
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph447
  %index450 = phi i64 [ 0, %vector.ph447 ], [ %index.next453, %vector.body449 ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %index450 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %wide.load451 = load <2 x double>, ptr %i.nj, align 8, !tbaa !82
  %wide.load452 = load <2 x double>, ptr %i.nk, align 8, !tbaa !82
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index450 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store <2 x double> %wide.load451, ptr %i.nl, align 8, !tbaa !82
  store <2 x double> %wide.load452, ptr %i.nm, align 8, !tbaa !82
  %index.next453 = add nuw i64 %index450, 4       ; 2 uses
  %i.nn = icmp eq i64 %index.next453, %n.vec448
  br i1 %i.nn, label %middle.block454, label %vector.body449, !llvm.loop !393

middle.block454:                                  ; preds = %vector.body449
  %cmp.n455 = icmp eq i64 %i.nh, %n.vec448
  br i1 %cmp.n455, label %_ZNK11colvar_gridIdE12raw_data_outEPd.exit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i163, %middle.block454
  %.05.i165.ph = phi i64 [ 0, %.lr.ph.preheader.i163 ], [ %n.vec448, %middle.block454 ] ; 3 uses
  %xtraiter517 = and i64 %i.nh, 3                 ; 2 uses
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %.05.i165.prol = phi i64 [ %i.nr, %.lr.ph.i164.prol ], [ %.05.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter519 = phi i64 [ %prol.iter519.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.05.i165.prol
  %i.np = load double, ptr %i.no, align 8, !tbaa !82
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.05.i165.prol
  store double %i.np, ptr %i.nq, align 8, !tbaa !82
  %i.nr = add nuw i64 %.05.i165.prol, 1           ; 2 uses
  %prol.iter519.next = add i64 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i64 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !394

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %.05.i165.unr = phi i64 [ %.05.i165.ph, %.lr.ph.i164.preheader ], [ %i.nr, %.lr.ph.i164.prol ]
  %i.ns = sub nsw i64 %.05.i165.ph, %i.nh
  %i.nt = icmp ugt i64 %i.ns, -4
  br i1 %i.nt, label %_ZNK11colvar_gridIdE12raw_data_outEPd.exit, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %.05.i165 = phi i64 [ %i.oj, %.lr.ph.i164 ], [ %.05.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.05.i165
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !82
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.05.i165
  store double %i.nv, ptr %i.nw, align 8, !tbaa !82
  %i.nx = add nuw i64 %.05.i165, 1                ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nx
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !82
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.nx
  store double %i.nz, ptr %i.oa, align 8, !tbaa !82
  %i.ob = add nuw i64 %.05.i165, 2                ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.ob
  %i.od = load double, ptr %i.oc, align 8, !tbaa !82
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ob
  store double %i.od, ptr %i.oe, align 8, !tbaa !82
  %i.of = add nuw i64 %.05.i165, 3                ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.of
  %i.oh = load double, ptr %i.og, align 8, !tbaa !82
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.of
  store double %i.oh, ptr %i.oi, align 8, !tbaa !82
  %i.oj = add nuw i64 %.05.i165, 4                ; 2 uses
  %exitcond.not.i166.3 = icmp eq i64 %i.oj, %i.nh
  br i1 %exitcond.not.i166.3, label %_ZNK11colvar_gridIdE12raw_data_outEPd.exit, label %.lr.ph.i164, !llvm.loop !395

_ZNK11colvar_gridIdE12raw_data_outEPd.exit:       ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block454, %._crit_edge
  %i.ok = load ptr, ptr %i.hk, align 8, !tbaa !48 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ie ; 6 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 464
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 472
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !231 ; 2 uses
  %i.op = load ptr, ptr %i.om, align 8, !tbaa !201 ; 8 uses
  %.not.i167 = icmp eq ptr %i.oo, %i.op
  br i1 %.not.i167, label %_ZNK11colvar_gridImE12raw_data_outEPm.exit, label %.lr.ph.preheader.i168

.lr.ph.preheader.i168:                            ; preds = %_ZNK11colvar_gridIdE12raw_data_outEPd.exit
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = ptrtoint ptr %i.op to i64               ; 2 uses
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = ashr exact i64 %i.os, 3                 ; 6 uses
  %min.iters.check460 = icmp ult i64 %i.ot, 14
  br i1 %min.iters.check460, label %.lr.ph.i169.preheader, label %vector.memcheck461

vector.memcheck461:                               ; preds = %.lr.ph.preheader.i168
  %i.ou = add i64 %i.ik, %i.ic
  %i.ov = add i64 %i.or, %i.id
  %i.ow = sub i64 %i.ov, %i.ou
  %diff.check462 = icmp ugt i64 %i.ow, -32
  br i1 %diff.check462, label %.lr.ph.i169.preheader, label %vector.ph463

vector.ph463:                                     ; preds = %vector.memcheck461
  %n.vec464 = and i64 %i.ot, -4                   ; 3 uses
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next469, %vector.body465 ] ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %index466 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load467 = load <2 x i64>, ptr %i.ox, align 8, !tbaa !62
  %wide.load468 = load <2 x i64>, ptr %i.oy, align 8, !tbaa !62
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %index466 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store <2 x i64> %wide.load467, ptr %i.oz, align 8, !tbaa !62
  store <2 x i64> %wide.load468, ptr %i.pa, align 8, !tbaa !62
  %index.next469 = add nuw i64 %index466, 4       ; 2 uses
  %i.pb = icmp eq i64 %index.next469, %n.vec464
  br i1 %i.pb, label %middle.block470, label %vector.body465, !llvm.loop !396

middle.block470:                                  ; preds = %vector.body465
  %cmp.n471 = icmp eq i64 %i.ot, %n.vec464
  br i1 %cmp.n471, label %_ZNK11colvar_gridImE12raw_data_outEPm.exit, label %.lr.ph.i169.preheader

.lr.ph.i169.preheader:                            ; preds = %vector.memcheck461, %.lr.ph.preheader.i168, %middle.block470
  %.05.i170.ph = phi i64 [ 0, %vector.memcheck461 ], [ 0, %.lr.ph.preheader.i168 ], [ %n.vec464, %middle.block470 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN14colvarbias_abf18replica_share_CZAREv:bb.a
  br i1 %.not.i.i.i.i91, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !83
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !83
  br label %_ZNSt10shared_ptrI20colvar_grid_gradientEC2ERKS1_.exit

bb.bb:                                            ; preds = %bb.az
  %i.gv = atomicrmw volatile add ptr %i.gr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrI20colvar_grid_gradientEC2ERKS1_.exit

_ZNSt10shared_ptrI20colvar_grid_gradientEC2ERKS1_.exit: ; preds = %_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89, %bb.ba, %bb.bb
  invoke void @_ZN20colvargrid_integrateC1ERSt6vectorIP6colvarSaIS2_EESt10shared_ptrI20colvar_grid_gradientE(ptr noundef nonnull align 8 dereferenceable(760) %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 %10)
          to label %bb.bc unwind label %bb.bt

bb.bc:                                            ; preds = %_ZNSt10shared_ptrI20colvar_grid_gradientEC2ERKS1_.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2216
  invoke void @_ZNSt12__shared_ptrI20colvargrid_integrateLN9__gnu_cxx12_Lock_policyE2EE5resetIS0_EENSt9enable_ifIXsr21__sp_is_constructibleIS0_T_EE5valueEvE4typeEPS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull %i.gm)
          to label %bb.bd unwind label %bb.bs

bb.bd:                                            ; preds = %bb.bc
  %i.gx = load ptr, ptr %i.gn, align 8, !tbaa !224 ; 8 uses
  %.not.i.i92 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i92, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gy, align 8, !tbaa !226
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4, !tbaa !227
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !154
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #24, !inline_history !7
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !154
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #24, !inline_history !7
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !209
  %.not.i.i.i93 = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i93, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hk = add nsw i32 %i.hb, -1
  store i32 %i.hk, ptr %i.gy, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94

bb.bi:                                            ; preds = %bb.bg
  %i.hl = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i95 = phi i32 [ %i.hb, %bb.bh ], [ %i.hl, %bb.bi ]
  %i.hm = icmp eq i32 %.0.i.i.i.i95, 1
  br i1 %i.hm, label %bb.bj, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !213

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #24
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bk:                                            ; preds = %bb.a
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.bl:                                            ; preds = %bb.c
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hp = load ptr, ptr %1, align 8, !tbaa !207   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.h
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.bl
  %i.hr = load i64, ptr %i.h, align 8, !tbaa !209
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.hn, %bb.bk ], [ %i.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.ho, %bb.bl ]
  %i.ht = load ptr, ptr %2, align 8, !tbaa !207   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !209
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.ce

bb.bm:                                            ; preds = %bb.j
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %bb.ce

bb.bn:                                            ; preds = %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I17colvar_grid_countvEERKS_IT_E.exit
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 704) #26
  br label %bb.ce

bb.bo:                                            ; preds = %bb.u, %_ZNSt10shared_ptrI17colvar_grid_countEC2ERKS1_.exit
  %.035 = phi i1 [ false, %bb.u ], [ true, %_ZNSt10shared_ptrI17colvar_grid_countEC2ERKS1_.exit ]
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load ptr, ptr %6, align 8, !tbaa !207   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.cz
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.bo
  %i.id = load i64, ptr %i.cz, align 8, !tbaa !209
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  br i1 %.035, label %bb.bp, label %bb.ce

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 728) #26
  br label %bb.ce

bb.bq:                                            ; preds = %bb.al, %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I17colvar_grid_countvEERKS_IT_E.exit76
  %.034 = phi i1 [ false, %bb.al ], [ true, %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I17colvar_grid_countvEERKS_IT_E.exit76 ]
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %9, align 8, !tbaa !207   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.ez
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.bq
  %i.ii = load i64, ptr %i.ez, align 8, !tbaa !209
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  call void @_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  br i1 %.034, label %bb.br, label %bb.ce

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 728) #26
  br label %bb.ce

bb.bs:                                            ; preds = %bb.bc
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #24
  br label %bb.ce

bb.bt:                                            ; preds = %_ZNSt10shared_ptrI20colvar_grid_gradientEC2ERKS1_.exit
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef 760) #26
  br label %bb.ce

_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94, %bb.bf, %bb.bd, %bb.e
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !160
  %i.io = load ptr, ptr %i.am, align 8, !tbaa !160
  call void @_ZN11colvar_gridIdE9copy_gridERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %i.in, ptr noundef nonnull align 8 dereferenceable(698) %i.io)
  %i.ip = load ptr, ptr %i.bj, align 8, !tbaa !48
  %i.iq = load ptr, ptr %i.ac, align 8, !tbaa !48
  call void @_ZN11colvar_gridImE9copy_gridERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %i.ip, ptr noundef nonnull align 8 dereferenceable(698) %i.iq)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.e, i64 800 ; 6 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !154
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = call noundef i32 %i.iu(ptr noundef nonnull align 8 dereferenceable(24) %i.ir)
  %.not53145 = icmp sgt i32 %i.iv, 1
  br i1 %.not53145, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au ; 6 uses
  %i.iz = add i64 %i.ba, %i.as
  %13 = sub i64 %i.at, %i.iz
  %invariant.op = add i64 %13, -1
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph, %_ZN11colvar_gridImE11raw_data_inEPKm.exit
  %.032146 = phi i32 [ 1, %.lr.ph ], [ %i.mu, %_ZN11colvar_gridImE11raw_data_inEPKm.exit ] ; 2 uses
  %i.ja = load ptr, ptr %i.ir, align 8, !tbaa !154
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = call noundef i32 %i.jc(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, ptr noundef nonnull %i.az, i32 noundef %i.ax, i32 noundef %.032146)
  %.not48 = icmp eq i32 %i.jd, %i.ax
  br i1 %.not48, label %bb.by, label %.noexc.i

.noexc.i:                                         ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.je, ptr %11, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 43, ptr %i.b, align 8, !tbaa !62
  %i.jf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc108 unwind label %bb.bw ; 3 uses

.noexc108:                                        ; preds = %.noexc.i
  store ptr %i.jf, ptr %11, align 8, !tbaa !207
  %i.jg = load i64, ptr %i.b, align 8, !tbaa !62  ; 3 uses
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.jf, ptr noundef nonnull align 1 dereferenceable(43) @.str.74, i64 43, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !208
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jg
  store i8 0, ptr %i.ji, align 1, !tbaa !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.jj = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef -1)
          to label %bb.bv unwind label %bb.bx     ; 0 uses

bb.bv:                                            ; preds = %.noexc108
  %i.jk = load ptr, ptr %11, align 8, !tbaa !207  ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.je
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.bv
  %i.jm = load i64, ptr %i.je, align 8, !tbaa !209
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.cd

bb.bw:                                            ; preds = %.noexc.i
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.bx:                                            ; preds = %.noexc108
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = load ptr, ptr %11, align 8, !tbaa !207  ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.je
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.bx
  %i.js = load i64, ptr %i.je, align 8, !tbaa !209
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.bw
  %.pn49 = phi { ptr, i32 } [ %i.jo, %bb.bw ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.jp, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ce

bb.by:                                            ; preds = %bb.bu
  %i.ju = load ptr, ptr %i.iw, align 8, !tbaa !230 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 464
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 472
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !211 ; 2 uses
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !57 ; 8 uses
  %.not.i = icmp eq ptr %i.jx, %i.jy
  br i1 %.not.i, label %_ZN11colvar_gridIdE11raw_data_inEPKd.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.by
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = ashr exact i64 %i.kb, 3                 ; 6 uses
  %min.iters.check225 = icmp ult i64 %i.kc, 4
  %i.kd = sub i64 %i.ba, %i.ka
  %diff.check223 = icmp ugt i64 %i.kd, -32
  %or.cond = or i1 %min.iters.check225, %diff.check223
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph.preheader.i
  %n.vec227 = and i64 %i.kc, -4                   ; 3 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next232, %vector.body228 ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index229 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %wide.load230 = load <2 x double>, ptr %i.ke, align 8, !tbaa !82
  %wide.load231 = load <2 x double>, ptr %i.kf, align 8, !tbaa !82
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %index229 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store <2 x double> %wide.load230, ptr %i.kg, align 8, !tbaa !82
  store <2 x double> %wide.load231, ptr %i.kh, align 8, !tbaa !82
  %index.next232 = add nuw i64 %index229, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next232, %n.vec227
  br i1 %i.ki, label %middle.block233, label %vector.body228, !llvm.loop !772

middle.block233:                                  ; preds = %vector.body228
  %cmp.n234 = icmp eq i64 %i.kc, %n.vec227
  br i1 %cmp.n234, label %_ZN11colvar_gridIdE11raw_data_inEPKd.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block233
  %.05.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec227, %middle.block233 ] ; 3 uses
  %xtraiter240 = and i64 %i.kc, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.05.i.prol = phi i64 [ %i.km, %.lr.ph.i.prol ], [ %.05.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter242 = phi i64 [ %prol.iter242.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.05.i.prol
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !82
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.05.i.prol
  store double %i.kk, ptr %i.kl, align 8, !tbaa !82
  %i.km = add nuw i64 %.05.i.prol, 1              ; 2 uses
  %prol.iter242.next = add i64 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !773

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05.i.unr = phi i64 [ %.05.i.ph, %.lr.ph.i.preheader ], [ %i.km, %.lr.ph.i.prol ]
  %i.kn = sub nsw i64 %.05.i.ph, %i.kc
  %i.ko = icmp ugt i64 %i.kn, -4
  br i1 %i.ko, label %_ZN11colvar_gridIdE11raw_data_inEPKd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05.i = phi i64 [ %i.le, %.lr.ph.i ], [ %.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.05.i
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !82
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.05.i
  store double %i.kq, ptr %i.kr, align 8, !tbaa !82
  %i.ks = add nuw i64 %.05.i, 1                   ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !82
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ks
  store double %i.ku, ptr %i.kv, align 8, !tbaa !82
  %i.kw = add nuw i64 %.05.i, 2                   ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.kw
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !82
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.kw
  store double %i.ky, ptr %i.kz, align 8, !tbaa !82
  %i.la = add nuw i64 %.05.i, 3                   ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.la
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !82
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.la
  store double %i.lc, ptr %i.ld, align 8, !tbaa !82
  %i.le = add nuw i64 %.05.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.le, %i.kc
  br i1 %exitcond.not.i.3, label %_ZN11colvar_gridIdE11raw_data_inEPKd.exit, label %.lr.ph.i, !llvm.loop !774

_ZN11colvar_gridIdE11raw_data_inEPKd.exit:        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block233, %bb.by
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ju, i64 697
  store i8 1, ptr %i.lf, align 1, !tbaa !216
  %i.lg = load ptr, ptr %i.ix, align 8, !tbaa !48 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 464
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 472
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !231 ; 2 uses
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !201 ; 8 uses
  %.not.i115 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not.i115, label %_ZN11colvar_gridImE11raw_data_inEPKm.exit, label %.lr.ph.preheader.i116

.lr.ph.preheader.i116:                            ; preds = %_ZN11colvar_gridIdE11raw_data_inEPKd.exit
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = ptrtoint ptr %i.lk to i64               ; 2 uses
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = ashr exact i64 %i.ln, 3                 ; 6 uses
  %min.iters.check211 = icmp ult i64 %i.lo, 4
  %.reass = add i64 %i.lm, %invariant.op
  %diff.check209 = icmp ult i64 %.reass, 31
  %or.cond249 = or i1 %min.iters.check211, %diff.check209
  br i1 %or.cond249, label %.lr.ph.i117.preheader, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph.preheader.i116
  %n.vec213 = and i64 %i.lo, -4                   ; 3 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next218, %vector.body214 ] ; 3 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %index215 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %wide.load216 = load <2 x i64>, ptr %i.lp, align 8, !tbaa !62
  %wide.load217 = load <2 x i64>, ptr %i.lq, align 8, !tbaa !62
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %index215 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %wide.load216, ptr %i.lr, align 8, !tbaa !62
  store <2 x i64> %wide.load217, ptr %i.ls, align 8, !tbaa !62
  %index.next218 = add nuw i64 %index215, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.lt, label %middle.block219, label %vector.body214, !llvm.loop !775

middle.block219:                                  ; preds = %vector.body214
  %cmp.n220 = icmp eq i64 %i.lo, %n.vec213
  br i1 %cmp.n220, label %_ZN11colvar_gridImE11raw_data_inEPKm.exit, label %.lr.ph.i117.preheader

.lr.ph.i117.preheader:                            ; preds = %.lr.ph.preheader.i116, %middle.block219
  %.05.i118.ph = phi i64 [ %n.vec213, %middle.block219 ], [ 0, %.lr.ph.preheader.i116 ] ; 3 uses
  %xtraiter243 = and i64 %i.lo, 3                 ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph.i117.prol.loopexit, label %.lr.ph.i117.prol

.lr.ph.i117.prol:                                 ; preds = %.lr.ph.i117.preheader, %.lr.ph.i117.prol
  %.05.i118.prol = phi i64 [ %i.lx, %.lr.ph.i117.prol ], [ %.05.i118.ph, %.lr.ph.i117.preheader ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %.lr.ph.i117.prol ], [ 0, %.lr.ph.i117.preheader ]
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.05.i118.prol
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !62
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %.05.i118.prol
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !62
  %i.lx = add nuw i64 %.05.i118.prol, 1           ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph.i117.prol.loopexit, label %.lr.ph.i117.prol, !llvm.loop !776

.lr.ph.i117.prol.loopexit:                        ; preds = %.lr.ph.i117.prol, %.lr.ph.i117.preheader
  %.05.i118.unr = phi i64 [ %.05.i118.ph, %.lr.ph.i117.preheader ], [ %i.lx, %.lr.ph.i117.prol ]
  %i.ly = sub nsw i64 %.05.i118.ph, %i.lo
  %i.lz = icmp ugt i64 %i.ly, -4
  br i1 %i.lz, label %_ZN11colvar_gridImE11raw_data_inEPKm.exit, label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117.prol.loopexit, %.lr.ph.i117
  %.05.i118 = phi i64 [ %i.mp, %.lr.ph.i117 ], [ %.05.i118.unr, %.lr.ph.i117.prol.loopexit ] ; 6 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.05.i118
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !62
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %.05.i118
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !62
  %i.md = add nuw i64 %.05.i118, 1                ; 2 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.md
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !62
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.md
  store i64 %i.mf, ptr %i.mg, align 8, !tbaa !62
  %i.mh = add nuw i64 %.05.i118, 2                ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.mh
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !62
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.mh
  store i64 %i.mj, ptr %i.mk, align 8, !tbaa !62
  %i.ml = add nuw i64 %.05.i118, 3                ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ml
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !62
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.ml
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !62
  %i.mp = add nuw i64 %.05.i118, 4                ; 2 uses
  %exitcond.not.i119.3 = icmp eq i64 %i.mp, %i.lo
  br i1 %exitcond.not.i119.3, label %_ZN11colvar_gridImE11raw_data_inEPKm.exit, label %.lr.ph.i117, !llvm.loop !777

_ZN11colvar_gridImE11raw_data_inEPKm.exit:        ; preds = %.lr.ph.i117.prol.loopexit, %.lr.ph.i117, %middle.block219, %_ZN11colvar_gridIdE11raw_data_inEPKd.exit
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lg, i64 697
  store i8 1, ptr %i.mq, align 1, !tbaa !232
  %i.mr = load ptr, ptr %i.im, align 8, !tbaa !160
  call void @_ZN11colvar_gridIdE8add_gridERKS0_d(ptr noundef nonnull align 8 dereferenceable(698) %i.mr, ptr noundef nonnull align 8 dereferenceable(698) %i.ju, double noundef 1.000000e+00)
  %i.ms = load ptr, ptr %i.bj, align 8, !tbaa !48
  %i.mt = load ptr, ptr %i.ix, align 8, !tbaa !48
  call void @_ZN11colvar_gridImE8add_gridERKS0_d(ptr noundef nonnull align 8 dereferenceable(698) %i.ms, ptr noundef nonnull align 8 dereferenceable(698) %i.mt, double noundef 1.000000e+00)
  %i.mu = add nuw nsw i32 %.032146, 1             ; 2 uses
  %i.mv = load ptr, ptr %i.ir, align 8, !tbaa !154
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = call noundef i32 %i.mx(ptr noundef nonnull align 8 dereferenceable(24) %i.ir)
  %.not53 = icmp slt i32 %i.mu, %i.my
  br i1 %.not53, label %bb.bu, label %.critedge, !llvm.loop !778

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.mz = load ptr, ptr %i.am, align 8, !tbaa !160 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 464
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 472
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !211 ; 2 uses
  %i.nd = load ptr, ptr %i.na, align 8, !tbaa !57 ; 8 uses
  %.not.i120 = icmp eq ptr %i.nc, %i.nd
  br i1 %.not.i120, label %_ZNK11colvar_gridIdE12raw_data_outEPd.exit, label %.lr.ph.preheader.i121

.lr.ph.preheader.i121:                            ; preds = %bb.bz
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = ptrtoint ptr %i.nd to i64               ; 2 uses
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = ashr exact i64 %i.ng, 3                 ; 6 uses
  %min.iters.check = icmp ult i64 %i.nh, 8
  %i.ni = sub i64 %i.nf, %i.ba
  %diff.check = icmp ugt i64 %i.ni, -32
  %or.cond236 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond236, label %.lr.ph.i122.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i121
  %n.vec = and i64 %i.nh, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %index ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %wide.load = load <2 x double>, ptr %i.nj, align 8, !tbaa !82
  %wide.load191 = load <2 x double>, ptr %i.nk, align 8, !tbaa !82
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store <2 x double> %wide.load, ptr %i.nl, align 8, !tbaa !82
  store <2 x double> %wide.load191, ptr %i.nm, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nn = icmp eq i64 %index.next, %n.vec
  br i1 %i.nn, label %middle.block, label %vector.body, !llvm.loop !779

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nh, %n.vec
  br i1 %cmp.n, label %_ZNK11colvar_gridIdE12raw_data_outEPd.exit, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %.lr.ph.preheader.i121, %middle.block
  %.05.i123.ph = phi i64 [ 0, %.lr.ph.preheader.i121 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.nh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol

.lr.ph.i122.prol:                                 ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122.prol
  %.05.i123.prol = phi i64 [ %i.nr, %.lr.ph.i122.prol ], [ %.05.i123.ph, %.lr.ph.i122.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i122.prol ], [ 0, %.lr.ph.i122.preheader ]
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.05.i123.prol
  %i.np = load double, ptr %i.no, align 8, !tbaa !82
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.05.i123.prol
  store double %i.np, ptr %i.nq, align 8, !tbaa !82
  %i.nr = add nuw i64 %.05.i123.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol, !llvm.loop !780

.lr.ph.i122.prol.loopexit:                        ; preds = %.lr.ph.i122.prol, %.lr.ph.i122.preheader
  %.05.i123.unr = phi i64 [ %.05.i123.ph, %.lr.ph.i122.preheader ], [ %i.nr, %.lr.ph.i122.prol ]
  %i.ns = sub nsw i64 %.05.i123.ph, %i.nh
  %i.nt = icmp ugt i64 %i.ns, -4
  br i1 %i.nt, label %_ZNK11colvar_gridIdE12raw_data_outEPd.exit, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122
  %.05.i123 = phi i64 [ %i.oj, %.lr.ph.i122 ], [ %.05.i123.unr, %.lr.ph.i122.prol.loopexit ] ; 6 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.05.i123
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !82
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.05.i123
  store double %i.nv, ptr %i.nw, align 8, !tbaa !82
  %i.nx = add nuw i64 %.05.i123, 1                ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nx
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !82
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.nx
  store double %i.nz, ptr %i.oa, align 8, !tbaa !82
  %i.ob = add nuw i64 %.05.i123, 2                ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.ob
  %i.od = load double, ptr %i.oc, align 8, !tbaa !82
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ob
  store double %i.od, ptr %i.oe, align 8, !tbaa !82
  %i.of = add nuw i64 %.05.i123, 3                ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.of
  %i.oh = load double, ptr %i.og, align 8, !tbaa !82
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.of
  store double %i.oh, ptr %i.oi, align 8, !tbaa !82
  %i.oj = add nuw i64 %.05.i123, 4                ; 2 uses
  %exitcond.not.i124.3 = icmp eq i64 %i.oj, %i.nh
  br i1 %exitcond.not.i124.3, label %_ZNK11colvar_gridIdE12raw_data_outEPd.exit, label %.lr.ph.i122, !llvm.loop !781

_ZNK11colvar_gridIdE12raw_data_outEPd.exit:       ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122, %middle.block, %bb.bz
  %i.ok = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au ; 6 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 464
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 472
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !231 ; 2 uses
  %i.op = load ptr, ptr %i.om, align 8, !tbaa !201 ; 8 uses
  %.not.i125 = icmp eq ptr %i.oo, %i.op
  br i1 %.not.i125, label %_ZNK11colvar_gridImE12raw_data_outEPm.exit, label %.lr.ph.preheader.i126

.lr.ph.preheader.i126:                            ; preds = %_ZNK11colvar_gridIdE12raw_data_outEPd.exit
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = ptrtoint ptr %i.op to i64               ; 2 uses
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = ashr exact i64 %i.os, 3                 ; 6 uses
  %min.iters.check195 = icmp ult i64 %i.ot, 14
  br i1 %min.iters.check195, label %.lr.ph.i127.preheader, label %vector.memcheck196

vector.memcheck196:                               ; preds = %.lr.ph.preheader.i126
  %i.ou = add i64 %i.ba, %i.as
  %i.ov = add i64 %i.at, %i.or
  %i.ow = sub i64 %i.ov, %i.ou
  %diff.check197 = icmp ugt i64 %i.ow, -32
  br i1 %diff.check197, label %.lr.ph.i127.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck196
  %n.vec199 = and i64 %i.ot, -4                   ; 3 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next204, %vector.body200 ] ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %index201 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load202 = load <2 x i64>, ptr %i.ox, align 8, !tbaa !62
  %wide.load203 = load <2 x i64>, ptr %i.oy, align 8, !tbaa !62
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %index201 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store <2 x i64> %wide.load202, ptr %i.oz, align 8, !tbaa !62
  store <2 x i64> %wide.load203, ptr %i.pa, align 8, !tbaa !62
  %index.next204 = add nuw i64 %index201, 4       ; 2 uses
  %i.pb = icmp eq i64 %index.next204, %n.vec199
  br i1 %i.pb, label %middle.block205, label %vector.body200, !llvm.loop !782

middle.block205:                                  ; preds = %vector.body200
  %cmp.n206 = icmp eq i64 %i.ot, %n.vec199
  br i1 %cmp.n206, label %_ZNK11colvar_gridImE12raw_data_outEPm.exit, label %.lr.ph.i127.preheader
end_hunk_1
begin_hunk_2_@_ZN11UIestimator11UIestimator8calc_pmfEv:bb.a

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.al
  %i.rm = phi i32 [ %i.qp, %bb.al ], [ %i.rk, %._crit_edge ] ; 3 uses
  %i.rn = sext i32 %i.rm to i64                   ; 2 uses
  %i.ro = icmp slt i32 %i.rm, 0
  br i1 %i.ro, label %bb.am, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270

bb.am:                                            ; preds = %._crit_edge.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
          to label %.noexc277 unwind label %bb.au

.noexc277:                                        ; preds = %bb.am
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270: ; preds = %._crit_edge.thread
  %.not.i.i.i.i271 = icmp eq i32 %i.rm, 0
  br i1 %.not.i.i.i.i271, label %.preheader669, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270
  %i.rp = shl nuw nsw i64 %i.rn, 3                ; 2 uses
  %i.rq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rp) #27
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit279 unwind label %bb.au ; 12 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit279:         ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rq, i8 0, i64 %i.rp, i1 false), !tbaa !82
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.rn
  %.pre849 = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.rs = ptrtoint ptr %i.rr to i64               ; 10 uses
  %i.rt = zext nneg i32 %.pre849 to i64           ; 2 uses
  %i.ru = icmp slt i32 %.pre849, 0
  br i1 %i.ru, label %bb.ao, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280

bb.ao:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit279
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
          to label %.noexc287 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit534.thread

.noexc287:                                        ; preds = %bb.ao
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit279
  %.not.i.i.i.i281 = icmp eq i32 %.pre849, 0
  br i1 %.not.i.i.i.i281, label %.preheader669, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280
  %i.rv = shl nuw nsw i64 %i.rt, 3                ; 2 uses
  %i.rw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #27
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit289 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit534.thread ; 10 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit289:         ; preds = %bb.ap
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rw, i8 0, i64 %i.rv, i1 false), !tbaa !82
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.rt
  %.pre850 = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.ry = ptrtoint ptr %i.rx to i64               ; 8 uses
  %i.rz = zext nneg i32 %.pre850 to i64           ; 2 uses
  %i.sa = icmp slt i32 %.pre850, 0
  br i1 %i.sa, label %bb.aq, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290

bb.aq:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit289
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
          to label %.noexc297 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit532.thread

.noexc297:                                        ; preds = %bb.aq
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit289
  %.not.i.i.i.i291 = icmp eq i32 %.pre850, 0
  br i1 %.not.i.i.i.i291, label %.preheader669, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290
  %i.sb = shl nuw nsw i64 %i.rz, 3                ; 2 uses
  %i.sc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sb) #27
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit299 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit532.thread ; 13 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit299:         ; preds = %bb.ar
  %i.sd = ptrtoaddr ptr %i.sc to i64              ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.sc, i8 0, i64 %i.sb, i1 false), !tbaa !82
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.rz
  %.pre851 = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.sf = ptrtoint ptr %i.se to i64               ; 6 uses
  %i.sg = zext nneg i32 %.pre851 to i64           ; 2 uses
  %i.sh = icmp slt i32 %.pre851, 0
  br i1 %i.sh, label %bb.as, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300

bb.as:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit299
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25
          to label %.noexc307 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit530.thread

.noexc307:                                        ; preds = %bb.as
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit299
  %.not.i.i.i.i301 = icmp eq i32 %.pre851, 0
  br i1 %.not.i.i.i.i301, label %.preheader669, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300
  %i.si = shl nuw nsw i64 %i.sg, 3                ; 2 uses
  %i.sj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.si) #27
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit530.thread ; 11 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309:         ; preds = %bb.at
  %i.sk = ptrtoaddr ptr %i.sj to i64              ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.sj, i8 0, i64 %i.si, i1 false), !tbaa !82
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sg
  %.pre852 = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.sm = ptrtoint ptr %i.sl to i64               ; 4 uses
  %i.sn = icmp sgt i32 %.pre852, 0
  br i1 %i.sn, label %.lr.ph738, label %.preheader669

.lr.ph738:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309
  %i.so = load ptr, ptr %i.ax, align 8, !tbaa !57 ; 5 uses
  %i.sp = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 5 uses
  %wide.trip.count828 = zext nneg i32 %.pre852 to i64 ; 5 uses
  %min.iters.check1351 = icmp ult i32 %.pre852, 20
  br i1 %min.iters.check1351, label %scalar.ph1350.preheader, label %vector.memcheck1352

vector.memcheck1352:                              ; preds = %.lr.ph738
  %i.sq = ptrtoaddr ptr %i.sp to i64              ; 2 uses
  %i.sr = ptrtoaddr ptr %i.so to i64              ; 2 uses
  %i.ss = sub i64 %i.sd, %i.sk
  %diff.check1353 = icmp ugt i64 %i.ss, -32
  %i.st = sub i64 %i.sr, %i.sd
  %diff.check1354 = icmp ugt i64 %i.st, -32
  %conflict.rdx1355 = or i1 %diff.check1353, %diff.check1354
  %i.su = sub i64 %i.sd, %i.sq
  %diff.check1356 = icmp ugt i64 %i.su, -32
  %conflict.rdx1357 = or i1 %conflict.rdx1355, %diff.check1356
  %i.sv = sub i64 %i.sr, %i.sk
  %diff.check1358 = icmp ugt i64 %i.sv, -32
  %conflict.rdx1359 = or i1 %conflict.rdx1357, %diff.check1358
  %i.sw = sub i64 %i.sq, %i.sk
  %diff.check1360 = icmp ugt i64 %i.sw, -32
  %conflict.rdx1361 = or i1 %conflict.rdx1359, %diff.check1360
  br i1 %conflict.rdx1361, label %scalar.ph1350.preheader, label %vector.ph1362

vector.ph1362:                                    ; preds = %vector.memcheck1352
  %n.vec1363 = and i64 %wide.trip.count828, 2147483644 ; 3 uses
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1370, %vector.body1364 ] ; 5 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %index1365 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %wide.load1366 = load <2 x double>, ptr %i.sx, align 8, !tbaa !82 ; 2 uses
  %wide.load1367 = load <2 x double>, ptr %i.sy, align 8, !tbaa !82 ; 2 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %index1365 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  store <2 x double> %wide.load1366, ptr %i.sz, align 8, !tbaa !82
  store <2 x double> %wide.load1367, ptr %i.ta, align 8, !tbaa !82
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %index1365 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %wide.load1368 = load <2 x double>, ptr %i.tb, align 8, !tbaa !82
  %wide.load1369 = load <2 x double>, ptr %i.tc, align 8, !tbaa !82
  %i.td = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1368, <2 x double> splat (double -1.000000e+01), <2 x double> %wide.load1366)
  %i.te = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1369, <2 x double> splat (double -1.000000e+01), <2 x double> %wide.load1367)
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %index1365 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  store <2 x double> %i.td, ptr %i.tf, align 8, !tbaa !82
  store <2 x double> %i.te, ptr %i.tg, align 8, !tbaa !82
  %index.next1370 = add nuw i64 %index1365, 4     ; 2 uses
  %i.th = icmp eq i64 %index.next1370, %n.vec1363
  br i1 %i.th, label %middle.block1371, label %vector.body1364, !llvm.loop !973

middle.block1371:                                 ; preds = %vector.body1364
  %cmp.n1372 = icmp eq i64 %n.vec1363, %wide.trip.count828
  br i1 %cmp.n1372, label %.preheader669, label %scalar.ph1350.preheader

scalar.ph1350.preheader:                          ; preds = %vector.memcheck1352, %.lr.ph738, %middle.block1371
  %indvars.iv825.ph = phi i64 [ 0, %vector.memcheck1352 ], [ 0, %.lr.ph738 ], [ %n.vec1363, %middle.block1371 ] ; 7 uses
  %xtraiter1698 = and i64 %wide.trip.count828, 1
  %lcmp.mod1699.not = icmp eq i64 %xtraiter1698, 0
  br i1 %lcmp.mod1699.not, label %scalar.ph1350.prol.loopexit, label %scalar.ph1350.prol

scalar.ph1350.prol:                               ; preds = %scalar.ph1350.preheader
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %indvars.iv825.ph
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !82 ; 2 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv825.ph
  store double %i.tj, ptr %i.tk, align 8, !tbaa !82
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %indvars.iv825.ph
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !82
  %i.tn = tail call double @llvm.fmuladd.f64(double %i.tm, double -1.000000e+01, double %i.tj)
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv825.ph
  store double %i.tn, ptr %i.to, align 8, !tbaa !82
  %indvars.iv.next826.prol = or disjoint i64 %indvars.iv825.ph, 1
  br label %scalar.ph1350.prol.loopexit

scalar.ph1350.prol.loopexit:                      ; preds = %scalar.ph1350.prol, %scalar.ph1350.preheader
  %indvars.iv825.unr = phi i64 [ %indvars.iv825.ph, %scalar.ph1350.preheader ], [ %indvars.iv.next826.prol, %scalar.ph1350.prol ]
  %i.tp = add nsw i64 %wide.trip.count828, -1
  %i.tq = icmp eq i64 %indvars.iv825.ph, %i.tp
  br i1 %i.tq, label %.preheader669, label %scalar.ph1350

.preheader669:                                    ; preds = %scalar.ph1350.prol.loopexit, %scalar.ph1350, %middle.block1371, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309
  %.sroa.22.01033 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290 ], [ %i.sm, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270 ], [ %i.sm, %middle.block1371 ], [ %i.sm, %scalar.ph1350 ], [ %i.sm, %scalar.ph1350.prol.loopexit ] ; 2 uses
  %.sroa.0582.01031 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290 ], [ %i.sj, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270 ], [ %i.sj, %middle.block1371 ], [ %i.sj, %scalar.ph1350 ], [ %i.sj, %scalar.ph1350.prol.loopexit ] ; 20 uses
  %.sroa.27.0100310111030 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290 ], [ %i.sf, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309 ], [ %i.sf, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270 ], [ %i.sf, %middle.block1371 ], [ %i.sf, %scalar.ph1350 ], [ %i.sf, %scalar.ph1350.prol.loopexit ] ; 2 uses
  %.sroa.0600.0100010121029 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290 ], [ %i.sc, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309 ], [ %i.sc, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270 ], [ %i.sc, %middle.block1371 ], [ %i.sc, %scalar.ph1350 ], [ %i.sc, %scalar.ph1350.prol.loopexit ] ; 22 uses
  %.sroa.13.097097699710131028 = phi i64 [ %i.ry, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290 ], [ %i.ry, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309 ], [ %i.ry, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270 ], [ %i.ry, %middle.block1371 ], [ %i.ry, %scalar.ph1350 ], [ %i.ry, %scalar.ph1350.prol.loopexit ] ; 3 uses
  %.sroa.0623.096797799410141027 = phi ptr [ %i.rw, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290 ], [ %i.rw, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309 ], [ %i.rw, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270 ], [ %i.rw, %middle.block1371 ], [ %i.rw, %scalar.ph1350 ], [ %i.rw, %scalar.ph1350.prol.loopexit ] ; 17 uses
  %.sroa.0632.094995396497899110151026 = phi ptr [ %i.rq, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290 ], [ %i.rq, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309 ], [ %i.rq, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300 ], [ %i.rq, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270 ], [ %i.rq, %middle.block1371 ], [ %i.rq, %scalar.ph1350 ], [ %i.rq, %scalar.ph1350.prol.loopexit ] ; 17 uses
  %.sroa.14640.094695496197998810161025 = phi i64 [ %i.rs, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i290 ], [ %i.rs, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit309 ], [ %i.rs, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i300 ], [ %i.rs, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i280 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i270 ], [ %i.rs, %middle.block1371 ], [ %i.rs, %scalar.ph1350 ], [ %i.rs, %scalar.ph1350.prol.loopexit ] ; 3 uses
  %.sroa.0623.0967977994101410271558 = ptrtoaddr ptr %.sroa.0623.096797799410141027 to i64 ; 4 uses
  %.sroa.0632.0949953964978991101510261559 = ptrtoaddr ptr %.sroa.0632.094995396497899110151026 to i64 ; 4 uses
  %.sroa.0582.010311561 = ptrtoaddr ptr %.sroa.0582.01031 to i64 ; 4 uses
  %.sroa.0600.01000101210291564 = ptrtoaddr ptr %.sroa.0600.0100010121029 to i64 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 9 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 6 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.up = sub i64 %.sroa.0632.0949953964978991101510261559, %.sroa.0623.0967977994101410271558
  %diff.check1560 = icmp ugt i64 %i.up, -16
  %i.uq = sub i64 %.sroa.0632.0949953964978991101510261559, %.sroa.0582.010311561
  %diff.check1562 = icmp ugt i64 %i.uq, -16
  %conflict.rdx1563 = or i1 %diff.check1560, %diff.check1562
  %i.ur = sub i64 %.sroa.0632.0949953964978991101510261559, %.sroa.0600.01000101210291564
  %diff.check1565 = icmp ugt i64 %i.ur, -16
  %conflict.rdx1566 = or i1 %conflict.rdx1563, %diff.check1565
  %i.us = sub i64 %.sroa.0623.0967977994101410271558, %.sroa.0582.010311561
  %diff.check1569 = icmp ugt i64 %i.us, -16
  %invariant.op = or i1 %conflict.rdx1566, %diff.check1569
  %i.ut = sub i64 %.sroa.0623.0967977994101410271558, %.sroa.0600.01000101210291564
  %diff.check1571 = icmp ugt i64 %i.ut, -16
  %invariant.op1789 = or i1 %invariant.op, %diff.check1571
  %i.uu = sub i64 %.sroa.0600.01000101210291564, %.sroa.0582.010311561
  %diff.check1575 = icmp ugt i64 %i.uu, -16
  br label %.preheader668

scalar.ph1350:                                    ; preds = %scalar.ph1350.prol.loopexit, %scalar.ph1350
  %indvars.iv825 = phi i64 [ %indvars.iv.next826.1, %scalar.ph1350 ], [ %indvars.iv825.unr, %scalar.ph1350.prol.loopexit ] ; 6 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %indvars.iv825
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !82 ; 2 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv825
  store double %i.uw, ptr %i.ux, align 8, !tbaa !82
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %indvars.iv825
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !82
  %i.va = tail call double @llvm.fmuladd.f64(double %i.uz, double -1.000000e+01, double %i.uw)
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv825
  store double %i.va, ptr %i.vb, align 8, !tbaa !82
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 1 ; 4 uses
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %indvars.iv.next826
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !82 ; 2 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next826
  store double %i.vd, ptr %i.ve, align 8, !tbaa !82
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %indvars.iv.next826
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !82
  %i.vh = tail call double @llvm.fmuladd.f64(double %i.vg, double -1.000000e+01, double %i.vd)
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next826
  store double %i.vh, ptr %i.vi, align 8, !tbaa !82
  %indvars.iv.next826.1 = add nuw nsw i64 %indvars.iv825, 2 ; 2 uses
  %exitcond829.not.1 = icmp eq i64 %indvars.iv.next826.1, %wide.trip.count828
  br i1 %exitcond829.not.1, label %.preheader669, label %scalar.ph1350, !llvm.loop !974

bb.au:                                            ; preds = %bb.an, %bb.am
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit536

_ZNSt6vectorIdSaIdEED2Ev.exit534.thread:          ; preds = %bb.ao, %bb.ap
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

_ZNSt6vectorIdSaIdEED2Ev.exit532.thread:          ; preds = %bb.aq, %bb.ar
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

_ZNSt6vectorIdSaIdEED2Ev.exit530.thread:          ; preds = %bb.as, %bb.at
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.preheader668:                                    ; preds = %.preheader669, %_ZNSt6vectorIdSaIdEED2Ev.exit516
  %i.vn = load i32, ptr %i.c, align 8, !tbaa !268 ; 3 uses
  %i.vo = icmp sgt i32 %i.vn, 0
  br i1 %i.vo, label %.lr.ph740, label %.preheader667

.lr.ph740:                                        ; preds = %.preheader668
  %i.vp = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 5 uses
  %wide.trip.count833 = zext nneg i32 %i.vn to i64 ; 5 uses
  %min.iters.check1580 = icmp ult i32 %i.vn, 12
  br i1 %min.iters.check1580, label %scalar.ph1579.preheader, label %vector.memcheck1557

vector.memcheck1557:                              ; preds = %.lr.ph740
  %i.vq = ptrtoaddr ptr %i.vp to i64              ; 3 uses
  %i.vr = sub i64 %.sroa.0632.0949953964978991101510261559, %i.vq
  %diff.check1567 = icmp ugt i64 %i.vr, -16
  %conflict.rdx1572.reass = or i1 %diff.check1567, %invariant.op1789
  %i.vs = sub i64 %.sroa.0623.0967977994101410271558, %i.vq
  %diff.check1573 = icmp ugt i64 %i.vs, -16
  %conflict.rdx1574 = or i1 %conflict.rdx1572.reass, %diff.check1573
  %conflict.rdx1576 = or i1 %conflict.rdx1574, %diff.check1575
  %i.vt = sub i64 %i.vq, %.sroa.0582.010311561
  %diff.check1577 = icmp ugt i64 %i.vt, -16
  %conflict.rdx1578 = or i1 %conflict.rdx1576, %diff.check1577
  br i1 %conflict.rdx1578, label %scalar.ph1579.preheader, label %vector.ph1581

vector.ph1581:                                    ; preds = %vector.memcheck1557
  %n.vec1582 = and i64 %wide.trip.count833, 2147483646 ; 3 uses
  br label %vector.body1583

vector.body1583:                                  ; preds = %vector.body1583, %vector.ph1581
  %index1584 = phi i64 [ 0, %vector.ph1581 ], [ %index.next1587, %vector.body1583 ] ; 6 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094995396497899110151026, i64 %index1584
  store <2 x double> zeroinitializer, ptr %i.vu, align 8, !tbaa !82
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096797799410141027, i64 %index1584
  store <2 x double> zeroinitializer, ptr %i.vv, align 8, !tbaa !82
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.0100010121029, i64 %index1584
  %wide.load1585 = load <2 x double>, ptr %i.vw, align 8, !tbaa !82
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %index1584
  %wide.load1586 = load <2 x double>, ptr %i.vx, align 8, !tbaa !82
  %i.vy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1586, <2 x double> splat (double -1.000000e+01), <2 x double> %wide.load1585)
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01031, i64 %index1584
  store <2 x double> %i.vy, ptr %i.vz, align 8, !tbaa !82
  %index.next1587 = add nuw i64 %index1584, 2     ; 2 uses
  %i.wa = icmp eq i64 %index.next1587, %n.vec1582
  br i1 %i.wa, label %middle.block1588, label %vector.body1583, !llvm.loop !975

middle.block1588:                                 ; preds = %vector.body1583
  %cmp.n1589 = icmp eq i64 %n.vec1582, %wide.trip.count833
  br i1 %cmp.n1589, label %.preheader667, label %scalar.ph1579.preheader

scalar.ph1579.preheader:                          ; preds = %vector.memcheck1557, %.lr.ph740, %middle.block1588
  %indvars.iv830.ph = phi i64 [ 0, %vector.memcheck1557 ], [ 0, %.lr.ph740 ], [ %n.vec1582, %middle.block1588 ] ; 8 uses
  %xtraiter1700 = and i64 %wide.trip.count833, 1
  %lcmp.mod1701.not = icmp eq i64 %xtraiter1700, 0
  br i1 %lcmp.mod1701.not, label %scalar.ph1579.prol.loopexit, label %scalar.ph1579.prol

scalar.ph1579.prol:                               ; preds = %scalar.ph1579.preheader
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094995396497899110151026, i64 %indvars.iv830.ph
  store double 0.000000e+00, ptr %i.wb, align 8, !tbaa !82
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096797799410141027, i64 %indvars.iv830.ph
  store double 0.000000e+00, ptr %i.wc, align 8, !tbaa !82
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.0100010121029, i64 %indvars.iv830.ph
  %i.we = load double, ptr %i.wd, align 8, !tbaa !82
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv830.ph
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !82
  %i.wh = call double @llvm.fmuladd.f64(double %i.wg, double -1.000000e+01, double %i.we)
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01031, i64 %indvars.iv830.ph
  store double %i.wh, ptr %i.wi, align 8, !tbaa !82
  %indvars.iv.next831.prol = or disjoint i64 %indvars.iv830.ph, 1
  br label %scalar.ph1579.prol.loopexit

scalar.ph1579.prol.loopexit:                      ; preds = %scalar.ph1579.prol, %scalar.ph1579.preheader
  %indvars.iv830.unr = phi i64 [ %indvars.iv830.ph, %scalar.ph1579.preheader ], [ %indvars.iv.next831.prol, %scalar.ph1579.prol ]
  %i.wj = add nsw i64 %wide.trip.count833, -1
  %i.wk = icmp eq i64 %indvars.iv830.ph, %i.wj
  br i1 %i.wk, label %.preheader667, label %scalar.ph1579

.preheader667:                                    ; preds = %scalar.ph1579.prol.loopexit, %scalar.ph1579, %middle.block1588, %.preheader668
  %.pre853 = load i32, ptr %i.ts, align 8, !tbaa !277
  br label %bb.av

scalar.ph1579:                                    ; preds = %scalar.ph1579.prol.loopexit, %scalar.ph1579
  %indvars.iv830 = phi i64 [ %indvars.iv.next831.1, %scalar.ph1579 ], [ %indvars.iv830.unr, %scalar.ph1579.prol.loopexit ] ; 7 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094995396497899110151026, i64 %indvars.iv830
  store double 0.000000e+00, ptr %i.wl, align 8, !tbaa !82
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096797799410141027, i64 %indvars.iv830
  store double 0.000000e+00, ptr %i.wm, align 8, !tbaa !82
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.0100010121029, i64 %indvars.iv830
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !82
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv830
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !82
  %i.wr = call double @llvm.fmuladd.f64(double %i.wq, double -1.000000e+01, double %i.wo)
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01031, i64 %indvars.iv830
  store double %i.wr, ptr %i.ws, align 8, !tbaa !82
  %indvars.iv.next831 = add nuw nsw i64 %indvars.iv830, 1 ; 5 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0632.094995396497899110151026, i64 %indvars.iv.next831
  store double 0.000000e+00, ptr %i.wt, align 8, !tbaa !82
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0623.096797799410141027, i64 %indvars.iv.next831
  store double 0.000000e+00, ptr %i.wu, align 8, !tbaa !82
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.0100010121029, i64 %indvars.iv.next831
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !82
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv.next831
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !82
  %i.wz = call double @llvm.fmuladd.f64(double %i.wy, double -1.000000e+01, double %i.ww)
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0582.01031, i64 %indvars.iv.next831
  store double %i.wz, ptr %i.xa, align 8, !tbaa !82
  %indvars.iv.next831.1 = add nuw nsw i64 %indvars.iv830, 2 ; 2 uses
  %exitcond834.not.1 = icmp eq i64 %indvars.iv.next831.1, %wide.trip.count833
  br i1 %exitcond834.not.1, label %.preheader667, label %scalar.ph1579, !llvm.loop !976

bb.av:                                            ; preds = %.preheader667, %._crit_edge748
  %i.xb = phi i32 [ %.pre853, %.preheader667 ], [ %i.asv, %._crit_edge748 ] ; 2 uses
  %.0113752 = phi i32 [ 0, %.preheader667 ], [ %i.abf, %._crit_edge748 ]
  %i.xc = icmp sgt i32 %i.xb, 0
  br i1 %i.xc, label %.lr.ph.i.i311, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread

.lr.ph.i.i311:                                    ; preds = %bb.av
  %i.xd = load ptr, ptr %i.tr, align 8, !tbaa !57
  %i.xe = load ptr, ptr %i.tt, align 8, !tbaa !57 ; 2 uses
  %i.xf = load ptr, ptr %i.tu, align 8, !tbaa !60 ; 5 uses
  br label %bb.aw

.preheader27.i.i314:                              ; preds = %bb.aw
  %i.xg = icmp sgt i32 %i.xt, 0
  br i1 %i.xg, label %.lr.ph33.i.i315, label %_ZN11UIestimator8n_matrix9convert_xERKSt6vectorIdSaIdEE.exit.i.thread

.lr.ph33.i.i315:                                  ; preds = %.preheader27.i.i314
  %i.xh = zext nneg i32 %i.xt to i64              ; 4 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i.i311
  %indvars.iv.i.i312 = phi i64 [ 0, %.lr.ph.i.i311 ], [ %indvars.iv.next.i.i313, %bb.aw ] ; 5 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0600.0100010121029, i64 %indvars.iv.i.i312
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !82
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.i.i312
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !82
  %i.xm = fsub double %i.xj, %i.xl
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %indvars.iv.i.i312
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !82
  %i.xp = fdiv double %i.xm, %i.xo
  %i.xq = fadd double %i.xp, f0x3EB0C6F7A0B5ED8D
  %i.xr = fptosi double %i.xq to i32
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %indvars.iv.i.i312
  store i32 %i.xr, ptr %i.xs, align 4, !tbaa !83
  %indvars.iv.next.i.i313 = add nuw nsw i64 %indvars.iv.i.i312, 1 ; 2 uses
  %i.xt = load i32, ptr %i.ts, align 8, !tbaa !277 ; 4 uses
  %i.xu = sext i32 %i.xt to i64
  %i.xv = icmp slt i64 %indvars.iv.next.i.i313, %i.xu
  br i1 %i.xv, label %bb.aw, label %.preheader27.i.i314, !llvm.loop !23

bb.ax:                                            ; preds = %bb.az, %.lr.ph33.i.i315
  %indvars.iv43.i.i316 = phi i64 [ 0, %.lr.ph33.i.i315 ], [ %indvars.iv.next44.i.i319, %bb.az ] ; 4 uses
  %indvars.iv38.i.i317 = phi i64 [ 1, %.lr.ph33.i.i315 ], [ %indvars.iv.next39.i.i322, %bb.az ] ; 4 uses
  %.02132.i.i318 = phi i32 [ 0, %.lr.ph33.i.i315 ], [ %.1.i.i321, %bb.az ]
  %indvars.iv.next44.i.i319 = add nuw nsw i64 %indvars.iv43.i.i316, 1 ; 3 uses
  %i.xw = icmp samesign ult i64 %indvars.iv.next44.i.i319, %i.xh
  br i1 %i.xw, label %.preheader.i.i324, label %bb.ay

.preheader.i.i324:                                ; preds = %bb.ax
  %i.xx = load ptr, ptr %i.tw, align 8, !tbaa !60 ; 2 uses
  %i.xy = xor i64 %indvars.iv43.i.i316, -1
  %i.xz = add nsw i64 %i.xy, %i.xh                ; 3 uses
  %min.iters.check1542 = icmp ult i64 %i.xz, 8
  br i1 %min.iters.check1542, label %scalar.ph1541.preheader, label %vector.ph1543

vector.ph1543:                                    ; preds = %.preheader.i.i324
  %n.vec1544 = and i64 %i.xz, -8                  ; 3 uses
  %i.ya = add i64 %indvars.iv38.i.i317, %n.vec1544
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv38.i.i317
  br label %vector.body1545

vector.body1545:                                  ; preds = %vector.body1545, %vector.ph1543
  %index1546 = phi i64 [ 0, %vector.ph1543 ], [ %index.next1551, %vector.body1545 ] ; 2 uses
  %vec.phi1547 = phi <4 x i32> [ splat (i32 1), %vector.ph1543 ], [ %i.ye, %vector.body1545 ]
  %vec.phi1548 = phi <4 x i32> [ splat (i32 1), %vector.ph1543 ], [ %i.yf, %vector.body1545 ]
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %index1546 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %wide.load1549 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !83
  %wide.load1550 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !83
  %i.ye = mul <4 x i32> %wide.load1549, %vec.phi1547 ; 2 uses
  %i.yf = mul <4 x i32> %wide.load1550, %vec.phi1548 ; 2 uses
  %index.next1551 = add nuw i64 %index1546, 8     ; 2 uses
  %i.yg = icmp eq i64 %index.next1551, %n.vec1544
  br i1 %i.yg, label %middle.block1552, label %vector.body1545, !llvm.loop !977

middle.block1552:                                 ; preds = %vector.body1545
  %bin.rdx1553 = mul <4 x i32> %i.yf, %i.ye
  %i.yh = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx1553) ; 2 uses
  %cmp.n1554 = icmp eq i64 %i.xz, %n.vec1544
  br i1 %cmp.n1554, label %.loopexit1597, label %scalar.ph1541.preheader

scalar.ph1541.preheader:                          ; preds = %.preheader.i.i324, %middle.block1552
  %indvars.iv40.i.i325.ph = phi i64 [ %indvars.iv38.i.i317, %.preheader.i.i324 ], [ %i.ya, %middle.block1552 ]
  %.030.i.i326.ph = phi i32 [ 1, %.preheader.i.i324 ], [ %i.yh, %middle.block1552 ]
  br label %scalar.ph1541

scalar.ph1541:                                    ; preds = %scalar.ph1541.preheader, %scalar.ph1541
  %indvars.iv40.i.i325 = phi i64 [ %indvars.iv.next41.i.i327, %scalar.ph1541 ], [ %indvars.iv40.i.i325.ph, %scalar.ph1541.preheader ] ; 2 uses
  %.030.i.i326 = phi i32 [ %i.yk, %scalar.ph1541 ], [ %.030.i.i326.ph, %scalar.ph1541.preheader ]
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv40.i.i325
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !83
  %i.yk = mul nsw i32 %i.yj, %.030.i.i326         ; 2 uses
  %indvars.iv.next41.i.i327 = add nuw nsw i64 %indvars.iv40.i.i325, 1 ; 2 uses
  %exitcond.not.i.i328 = icmp eq i64 %indvars.iv.next41.i.i327, %i.xh
  br i1 %exitcond.not.i.i328, label %.loopexit1597, label %scalar.ph1541, !llvm.loop !978

.loopexit1597:                                    ; preds = %scalar.ph1541, %middle.block1552
  %.lcssa1157 = phi i32 [ %i.yh, %middle.block1552 ], [ %i.yk, %scalar.ph1541 ]
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %indvars.iv43.i.i316
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !83
  %i.yn = mul nsw i32 %i.ym, %.lcssa1157
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %indvars.iv43.i.i316
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !83
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.loopexit1597
  %.pn.i.i320 = phi i32 [ %i.yn, %.loopexit1597 ], [ %i.yp, %bb.ay ]
  %.1.i.i321 = add nsw i32 %.pn.i.i320, %.02132.i.i318 ; 2 uses
end_hunk_2
