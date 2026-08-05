inline.NumInlined: 665
inline.NumDeleted: 271
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9benchmark7CPUInfoC2Ev:bb.a

.body177.i:                                       ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i197.i, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i, %bb.cm
  %.pn98.i = phi { ptr, i32 } [ %lpad.phi259.i, %bb.cm ], [ %i.on, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %i.qw, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i197.i ]
  %i.rg = load ptr, ptr %25, align 8, !tbaa !50   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.kd
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i: ; preds = %.body177.i
  %i.ri = load i64, ptr %i.kd, align 8, !tbaa !18
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i: ; preds = %.body177.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.eh

bb.dj:                                            ; preds = %bb.bz
  %i.rk = load ptr, ptr %23, align 8, !tbaa !19
  %i.rl = getelementptr i8, ptr %i.rk, i64 -24
  %i.rm = load i64, ptr %i.rl, align 8
  %i.rn = getelementptr inbounds i8, ptr %23, i64 %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !44 ; 2 uses
  %i.rq = trunc i32 %i.rp to i1
  br i1 %i.rq, label %.invoke.i, label %bb.dk

.invoke.i:                                        ; preds = %bb.dk, %bb.dj
  %i.rr = phi ptr [ @.str.23, %bb.dj ], [ @.str.24, %bb.dk ]
  %i.rs = phi i64 [ 30, %bb.dj ], [ 39, %bb.dk ]
  %i.rt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.rr, i64 noundef %i.rs)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i unwind label %.loopexit.split-lp.i ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.ru = and i32 %i.rp, 2
  %.not253.i = icmp eq i32 %i.ru, 0
  br i1 %.not253.i, label %.invoke.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rv = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rw = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.rv)
          to label %.noexc215.i unwind label %.loopexit.split-lp.i

.noexc215.i:                                      ; preds = %bb.dl
  %.not.i214.i = icmp eq ptr %i.rw, null
  br i1 %.not.i214.i, label %bb.dm, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i

bb.dm:                                            ; preds = %.noexc215.i
  %i.rx = load ptr, ptr %23, align 8, !tbaa !19
  %i.ry = getelementptr i8, ptr %i.rx, i64 -24
  %i.rz = load i64, ptr %i.ry, align 8
  %i.sa = getelementptr inbounds i8, ptr %23, i64 %i.rz ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !44
  %i.sd = or i32 %i.sc, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.sa, i32 noundef %i.sd)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i unwind label %.loopexit.split-lp.i

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i: ; preds = %bb.dm, %.noexc215.i
  %i.se = fcmp ult double %.069.ph.i, 0.000000e+00
  br i1 %i.se, label %bb.dn, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i

bb.dn:                                            ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.sf = getelementptr inbounds nuw i8, ptr %29, i64 136 ; 3 uses
  %i.sg = tail call i64 @pthread_self() #29       ; 2 uses
  store i64 %i.sg, ptr %29, align 8, !tbaa !75
  %i.sh = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.si = call i32 @pthread_getaffinity_np(i64 noundef %i.sg, i64 noundef 128, ptr noundef nonnull %i.sh) #24
  %.not.i.i217.i = icmp eq i32 %i.si, 0
  br i1 %.not.i.i217.i, label %bb.do, label %.sink.split.i.i

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(128) %i.sh, i64 128, i1 false)
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dt
  %i.sj = trunc nuw i8 %.117.i.i.i to i1
  br i1 %i.sj, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i: ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %.sink.split.i.i

bb.dq:                                            ; preds = %bb.dt, %bb.do
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.do ], [ %indvars.iv.next.i.i.i, %bb.dt ] ; 3 uses
  %.01621.i.i.i = phi i8 [ 1, %bb.do ], [ %.117.i.i.i, %bb.dt ] ; 2 uses
  %i.sk = lshr i64 %indvars.iv.i.i.i, 6
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.sk ; 2 uses
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !51 ; 2 uses
  %i.sn = and i64 %indvars.iv.i.i.i, 63
  %i.so = shl nuw i64 1, %i.sn                    ; 2 uses
  %i.sp = and i64 %i.sm, %i.so
  %i.sq = icmp eq i64 %i.sp, 0
  br i1 %i.sq, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sr = trunc nuw i8 %.01621.i.i.i to i1
  br i1 %i.sr, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ss = xor i64 %i.so, -1
  %i.st = and i64 %i.sm, %i.ss
  store i64 %i.st, ptr %i.sl, align 8, !tbaa !51
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dq
  %.117.i.i.i = phi i8 [ %.01621.i.i.i, %bb.dq ], [ 0, %bb.ds ], [ 0, %bb.dr ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 1024
  br i1 %exitcond.not.i.i.i, label %bb.dp, label %bb.dq, !llvm.loop !78

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i: ; preds = %bb.dp
  %i.su = load i64, ptr %29, align 8, !tbaa !75
  %i.sv = call i32 @pthread_setaffinity_np(i64 noundef %i.su, i64 noundef 128, ptr noundef nonnull %16) #24
  %i.sw = icmp eq i32 %i.sv, 0                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.sx = zext i1 %i.sw to i8
  store i8 %i.sx, ptr %i.sf, align 8, !tbaa !79
  br i1 %i.sw, label %bb.dy, label %bb.du

.sink.split.i.i:                                  ; preds = %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i, %bb.dn
  store i8 0, ptr %i.sf, align 8, !tbaa !79
  br label %bb.du

bb.du:                                            ; preds = %.sink.split.i.i, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i
  %i.sy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.26, i64 noundef 86)
          to label %.noexc218.i unwind label %bb.eg ; 0 uses

.noexc218.i:                                      ; preds = %bb.du
  %i.sz = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !19
  %i.ta = getelementptr i8, ptr %i.sz, i64 -24
  %i.tb = load i64, ptr %i.ta, align 8
  %i.tc = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 240
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !21 ; 6 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i.i10, label %bb.dv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i11

bb.dv:                                            ; preds = %.noexc218.i
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.noexc219.i unwind label %bb.eg

.noexc219.i:                                      ; preds = %bb.dv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i11: ; preds = %.noexc218.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 56
  %i.tg = load i8, ptr %i.tf, align 8, !tbaa !37
  %.not.i1.i.i.i.i12 = icmp eq i8 %i.tg, 0
  br i1 %.not.i1.i.i.i.i12, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i11
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 67
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !18
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i

bb.dx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i11
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.te)
          to label %.noexc220.i unwind label %bb.eg

.noexc220.i:                                      ; preds = %bb.dx
  %i.tj = load ptr, ptr %i.te, align 8, !tbaa !19
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 48
  %i.tl = load ptr, ptr %i.tk, align 8
  %i.tm = invoke noundef signext i8 %i.tl(ptr noundef nonnull align 8 dereferenceable(570) %i.te, i8 noundef signext 10)
          to label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i unwind label %bb.eg, !inline_history !80

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i: ; preds = %.noexc220.i, %bb.dw
  %.0.i.i.i.i.i13 = phi i8 [ %i.ti, %bb.dw ], [ %i.tm, %.noexc220.i ]
  %i.tn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i.i.i13)
          to label %.noexc222.i unwind label %bb.eg

.noexc222.i:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i
  %i.to = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tn)
          to label %bb.dy unwind label %bb.eg     ; 0 uses

bb.dy:                                            ; preds = %.noexc222.i, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i
  %i.tp = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #24
  %i.tq = sitofp i64 %i.tp to double
  %i.tr = fdiv double %i.tq, 1.000000e+09         ; 2 uses
  %i.ts = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !81 ; 2 uses
  %i.tt = extractvalue { i64, i64 } %i.ts, 0
  %i.tu = extractvalue { i64, i64 } %i.ts, 1
  %i.tv = shl i64 %i.tu, 32
  %i.tw = or i64 %i.tv, %i.tt                     ; 2 uses
  %i.tx = urem i64 %i.tw, 2147483647
  %storemerge.i.i.i = call i64 @llvm.umax.i64(i64 %i.tx, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ea, %bb.dy
  %i.ty = phi i64 [ 0, %bb.dy ], [ %i.uh, %bb.ea ]
  %.sroa.0.0.i = phi i64 [ %storemerge.i.i.i, %bb.dy ], [ %i.ug, %bb.ea ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.dz
  %.03.i.i = phi i64 [ 10000, %bb.dz ], [ %i.ue, %.lr.ph.i.i ]
  %i.tz = phi i64 [ %.sroa.0.0.i, %bb.dz ], [ %i.ud, %.lr.ph.i.i ]
  %37 = mul nuw nsw i64 %i.tz, 48271
  %38 = urem i64 %37, 2147483647
  %39 = mul nuw nsw i64 %38, 48271
  %40 = urem i64 %39, 2147483647
  %i.ua = mul nuw nsw i64 %40, 48271
  %i.ub = urem i64 %i.ua, 2147483647
  %i.uc = mul nuw nsw i64 %i.ub, 48271
  %i.ud = urem i64 %i.uc, 2147483647              ; 2 uses
  %i.ue = add nsw i64 %.03.i.i, -4                ; 2 uses
  %.not.i224.i.3 = icmp eq i64 %i.ue, 0
  br i1 %.not.i224.i.3, label %bb.ea, label %.lr.ph.i.i, !llvm.loop !82

bb.ea:                                            ; preds = %.lr.ph.i.i
  %i.uf = mul nuw nsw i64 %i.ud, 48271
  %i.ug = urem i64 %i.uf, 2147483647              ; 2 uses
  %i.uh = add i64 %i.ug, %i.ty                    ; 3 uses
  store i64 %i.uh, ptr %i.o, align 8, !tbaa !51
  %i.ui = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #24
  %i.uj = sitofp i64 %i.ui to double
  %i.uk = fdiv double %i.uj, 1.000000e+09
  %i.ul = fsub double %i.uk, %i.tr
  %i.um = fcmp olt double %i.ul, 1.000000e+00
  br i1 %i.um, label %bb.dz, label %bb.eb, !llvm.loop !83

bb.eb:                                            ; preds = %bb.ea
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.o, i64 %i.uh) #24, !srcloc !84
  %i.un = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !81 ; 2 uses
  %i.uo = extractvalue { i64, i64 } %i.un, 0
  %i.up = extractvalue { i64, i64 } %i.un, 1
  %i.uq = shl i64 %i.up, 32
  %i.ur = or i64 %i.uq, %i.uo
  %i.us = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #24
  %i.ut = sitofp i64 %i.us to double
  %i.uu = fdiv double %i.ut, 1.000000e+09
  %i.uv = sub nsw i64 %i.ur, %i.tw
  %i.uw = sitofp i64 %i.uv to double
  %i.ux = fsub double %i.uu, %i.tr
  %i.uy = fdiv double %i.uw, %i.ux
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  %i.uz = load i8, ptr %i.sf, align 8, !tbaa !79, !range !85, !noundef !86
  %i.va = trunc nuw i8 %i.uz to i1
  br i1 %i.va, label %bb.ec, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i

bb.ec:                                            ; preds = %bb.eb
  %i.vb = load i64, ptr %29, align 8, !tbaa !75
  %i.vc = call i32 @pthread_setaffinity_np(i64 noundef %i.vb, i64 noundef 128, ptr noundef nonnull %i.sh) #24
  %i.vd = icmp eq i32 %i.vc, 0
  br i1 %i.vd, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  invoke fastcc void @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_() #28
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %i.ve = landingpad { ptr, i32 }
          catch ptr null
  %i.vf = extractvalue { ptr, i32 } %i.ve, 0
  call void @__clang_call_terminate(ptr %i.vf) #31
  unreachable

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i: ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i

bb.eg:                                            ; preds = %.noexc222.i, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i, %.noexc220.i, %bb.dx, %bb.dv, %bb.du
  %i.vg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.eh

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i, %.invoke.i
  %.4.i9 = phi double [ %i.uy, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i ], [ %.069.ph.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i ], [ -1.000000e+00, %.invoke.i ], [ %.3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i ]
  %i.vh = load ptr, ptr %24, align 8, !tbaa !50   ; 2 uses
  %i.vi = icmp eq ptr %i.vh, %i.kb
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i
  %i.vj = load i64, ptr %i.kb, align 8, !tbaa !18
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

bb.eh:                                            ; preds = %bb.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, %.loopexit.split-lp.i, %.loopexit.i7
  %.pn98.pn.i = phi { ptr, i32 } [ %.pn98.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %i.vg, %bb.eg ], [ %lpad.loopexit.i, %.loopexit.i7 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.vl = load ptr, ptr %24, align 8, !tbaa !50   ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.kb
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i: ; preds = %bb.eh
  %i.vn = load i64, ptr %i.kb, align 8, !tbaa !18
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.ei

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, %bb.bs
  %.5.i = phi double [ %.4.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i ], [ -1.000000e+00, %bb.bs ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i, %bb.bt
  %.pn98.pn.pn.i = phi { ptr, i32 } [ %.pn98.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i ], [ %i.ka, %bb.bt ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i
  %.pn98.pn.pn.pn.i = phi { ptr, i32 } [ %.pn98.pn.pn.i, %bb.ei ], [ %.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  br label %common.resume

_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit: ; preds = %bb.bk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %.6.i = phi double [ %i.jd, %bb.bk ], [ %.5.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  store double %.6.i, ptr %i.go, align 8, !tbaa !87
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vp, i8 0, i64 24, i1 false), !alias.scope !94
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !94
  %i.vq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.vq, ptr %5, align 8, !tbaa !12, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24, !noalias !94
  store i64 35, ptr %i.f, align 8, !tbaa !51, !noalias !94
  %i.vr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.eo, !noalias !94 ; 3 uses

.noexc.i.i:                                       ; preds = %_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit
  store ptr %i.vr, ptr %5, align 8, !tbaa !50, !noalias !94
  %i.vs = load i64, ptr %i.f, align 8, !tbaa !51, !noalias !94 ; 3 uses
  store i64 %i.vs, ptr %i.vq, align 8, !tbaa !18, !noalias !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.vr, ptr noundef nonnull align 1 dereferenceable(35) @.str.28, i64 35, i1 false)
  %i.vt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.vs, ptr %i.vt, align 8, !tbaa !15, !noalias !94
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vs
  store i8 0, ptr %i.vu, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !94
  %i.vv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.vz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.wf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.ek

bb.ek:                                            ; preds = %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i, %.noexc.i.i
  %.04.i.i = phi i32 [ 0, %.noexc.i.i ], [ %i.wv, %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !94
  store ptr %i.vv, ptr %6, align 8, !tbaa !12, !noalias !94
  store i64 0, ptr %i.vw, align 8, !tbaa !15, !noalias !94
  store i8 0, ptr %i.vv, align 8, !tbaa !18, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24, !noalias !94
  %i.wv = add nuw nsw i32 %.04.i.i, 1
  store i32 %.04.i.i, ptr %i.g, align 4, !tbaa !4, !noalias !94
  invoke void @_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(6) @.str.29, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(2) @.str.30)
          to label %bb.el unwind label %bb.ep

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !94
  invoke void @_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(5) @.str.31)
          to label %bb.em unwind label %bb.eq

bb.em:                                            ; preds = %bb.el
  %i.ww = load ptr, ptr %9, align 8, !tbaa !50, !noalias !94
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %8, ptr noundef %i.ww, i32 noundef 8)
          to label %bb.en unwind label %bb.er

bb.en:                                            ; preds = %bb.em
  %i.wx = load ptr, ptr %9, align 8, !tbaa !50, !noalias !94 ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.vx
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %bb.en
  %i.wz = load i64, ptr %i.vx, align 8, !tbaa !18, !noalias !94
end_hunk_0
