begin_hunk_0_@_ZN9benchmark7CPUInfoC2Ev:bb.a
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
  br i1 %i.ma, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  br label %bb.bq

bb.bp:                                            ; preds = %bb.be
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i, %bb.be, %bb.av
  %cond.i = phi i1 [ false, %bb.be ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ true, %bb.bn ], [ true, %bb.bo ], [ true, %bb.bp ], [ true, %bb.av ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i ]
  %.271.i = phi double [ %.069.ph.i, %bb.be ], [ %.069.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ %i.lz, %bb.bn ], [ -1.000000e+00, %bb.bo ], [ %.069.ph.i, %bb.bp ], [ %.069.ph.i, %bb.av ], [ %.069.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i ]
  %.3.i = phi double [ %i.jq, %bb.be ], [ %.0.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ %.0.ph.i, %bb.bn ], [ %.0.ph.i, %bb.bo ], [ %.0.ph.i, %bb.bp ], [ %.0.ph.i, %bb.av ], [ %.0.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i ] ; 2 uses
  %i.mb = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.fc
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i: ; preds = %bb.bq
  %i.md = load i64, ptr %i.fc, align 8, !tbaa !34
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i
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
  br label %bb.cm

bb.br:                                            ; preds = %bb.ah
  %i.mj = load ptr, ptr %23, align 8, !tbaa !40
  %i.mk = getelementptr i8, ptr %i.mj, i64 -24
  %i.ml = load i64, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds i8, ptr %23, i64 %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !42 ; 2 uses
  %i.mp = trunc i32 %i.mo to i1
  br i1 %i.mp, label %.invoke.i, label %bb.bs

.invoke.i:                                        ; preds = %bb.bs, %bb.br
  %i.mq = phi ptr [ @.str.14, %bb.br ], [ @.str.15, %bb.bs ]
  %i.mr = phi i64 [ 30, %bb.br ], [ 39, %bb.bs ]
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.mq, i64 noundef %i.mr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i unwind label %.loopexit.split-lp.i ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.mt = and i32 %i.mo, 2
  %.not248.i = icmp eq i32 %i.mt, 0
  br i1 %.not248.i, label %.invoke.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mu = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.mv = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.mu)
          to label %.noexc215.i unwind label %.loopexit.split-lp.i

.noexc215.i:                                      ; preds = %bb.bt
  %.not.i214.i = icmp eq ptr %i.mv, null
  br i1 %.not.i214.i, label %bb.bu, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i

bb.bu:                                            ; preds = %.noexc215.i
  %i.mw = load ptr, ptr %23, align 8, !tbaa !40
  %i.mx = getelementptr i8, ptr %i.mw, i64 -24
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = getelementptr inbounds i8, ptr %23, i64 %i.my ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !42
  %i.nc = or i32 %i.nb, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.mz, i32 noundef %i.nc)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i unwind label %.loopexit.split-lp.i

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i: ; preds = %bb.bu, %.noexc215.i
  %i.nd = fcmp ult double %.069.ph.i, 0.000000e+00
  br i1 %i.nd, label %bb.bv, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i

bb.bv:                                            ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.ne = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %29, i64 136 ; 3 uses
  %i.ng = tail call i64 @pthread_self() #25       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ne, i8 0, i64 128, i1 false)
  store i64 %i.ng, ptr %29, align 8, !tbaa !70
  %i.nh = call i32 @pthread_getaffinity_np(i64 noundef %i.ng, i64 noundef 128, ptr noundef nonnull %i.ne) #22
  %.not.i.i217.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i217.i, label %bb.bw, label %.sink.split.i.i

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(128) %i.ne, i64 128, i1 false)
  br label %bb.by

bb.bx:                                            ; preds = %bb.cb
  %i.ni = trunc nuw i8 %.117.i.i.i to i1
  br i1 %i.ni, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.sink.split.i.i

bb.by:                                            ; preds = %bb.cb, %bb.bw
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.bw ], [ %indvars.iv.next.i.i.i, %bb.cb ] ; 3 uses
  %.01621.i.i.i = phi i8 [ 1, %bb.bw ], [ %.117.i.i.i, %bb.cb ] ; 2 uses
  %i.nj = lshr i64 %indvars.iv.i.i.i, 6
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.nj ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !39 ; 2 uses
  %i.nm = and i64 %indvars.iv.i.i.i, 63
  %i.nn = shl nuw i64 1, %i.nm                    ; 2 uses
  %i.no = and i64 %i.nl, %i.nn
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nq = trunc nuw i8 %.01621.i.i.i to i1
  br i1 %i.nq, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nr = xor i64 %i.nn, -1
  %i.ns = and i64 %i.nl, %i.nr
  store i64 %i.ns, ptr %i.nk, align 8, !tbaa !39
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %.117.i.i.i = phi i8 [ %.01621.i.i.i, %bb.by ], [ 0, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 1024
  br i1 %exitcond.not.i.i.i, label %bb.bx, label %bb.by, !llvm.loop !73

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i: ; preds = %bb.bx
  %i.nt = load i64, ptr %29, align 8, !tbaa !70
  %i.nu = call i32 @pthread_setaffinity_np(i64 noundef %i.nt, i64 noundef 128, ptr noundef nonnull %16) #22
  %i.nv = icmp eq i32 %i.nu, 0                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.nw = zext i1 %i.nv to i8
  store i8 %i.nw, ptr %i.nf, align 8, !tbaa !74
  br i1 %i.nv, label %bb.cd, label %bb.cc

.sink.split.i.i:                                  ; preds = %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.thread2.i.i, %bb.bv
  store i8 0, ptr %i.nf, align 8, !tbaa !74
  br label %bb.cc

bb.cc:                                            ; preds = %.sink.split.i.i, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 87)
          to label %bb.cd unwind label %bb.cl     ; 0 uses

bb.cd:                                            ; preds = %bb.cc, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i
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
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %bb.cd
  %i.oh = phi i64 [ 0, %bb.cd ], [ %i.oq, %bb.cf ]
  %.sroa.0.0.i = phi i64 [ %storemerge.i.i.i, %bb.cd ], [ %i.op, %bb.cf ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.ce
  %.03.i.i = phi i64 [ 10000, %bb.ce ], [ %i.on, %.lr.ph.i.i ]
  %i.oi = phi i64 [ %.sroa.0.0.i, %bb.ce ], [ %i.om, %.lr.ph.i.i ]
  %32 = mul nuw nsw i64 %i.oi, 48271
  %33 = urem i64 %32, 2147483647
  %34 = mul nuw nsw i64 %33, 48271
  %35 = urem i64 %34, 2147483647
  %i.oj = mul nuw nsw i64 %35, 48271
  %i.ok = urem i64 %i.oj, 2147483647
  %i.ol = mul nuw nsw i64 %i.ok, 48271
  %i.om = urem i64 %i.ol, 2147483647              ; 2 uses
  %i.on = add nsw i64 %.03.i.i, -4                ; 2 uses
  %.not.i219.i.3 = icmp eq i64 %i.on, 0
  br i1 %.not.i219.i.3, label %bb.cf, label %.lr.ph.i.i, !llvm.loop !76

bb.cf:                                            ; preds = %.lr.ph.i.i
  %i.oo = mul nuw nsw i64 %i.om, 48271
  %i.op = urem i64 %i.oo, 2147483647              ; 2 uses
  %i.oq = add i64 %i.op, %i.oh                    ; 3 uses
  store i64 %i.oq, ptr %i.o, align 8, !tbaa !39
  %i.or = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.os = sitofp i64 %i.or to double
  %i.ot = fdiv double %i.os, 1.000000e+09
  %i.ou = fsub double %i.ot, %i.oa
  %i.ov = fcmp olt double %i.ou, 1.000000e+00
  br i1 %i.ov, label %bb.ce, label %bb.cg, !llvm.loop !77

bb.cg:                                            ; preds = %bb.cf
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #22
  %i.pi = load i8, ptr %i.nf, align 8, !tbaa !74, !range !79, !noundef !80
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %bb.ch, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i

bb.ch:                                            ; preds = %bb.cg
  %i.pk = load i64, ptr %29, align 8, !tbaa !70
  %i.pl = call i32 @pthread_setaffinity_np(i64 noundef %i.pk, i64 noundef 128, ptr noundef nonnull %i.ne) #22
  %i.pm = icmp eq i32 %i.pl, 0
  br i1 %i.pm, label %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke fastcc void @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_() #26
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.pn = landingpad { ptr, i32 }
          catch ptr null
  %i.po = extractvalue { ptr, i32 } %i.pn, 0
  call void @__clang_call_terminate(ptr %i.po) #28
  unreachable

_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i

bb.cl:                                            ; preds = %bb.cc
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.cm

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i, %.invoke.i
  %.4.i = phi double [ %i.ph, %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i ], [ %.069.ph.i, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i ], [ -1.000000e+00, %.invoke.i ], [ %.3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i ]
  %i.pq = load ptr, ptr %24, align 8, !tbaa !35   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.fa
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i
  %i.ps = load i64, ptr %i.fa, align 8, !tbaa !34
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

bb.cm:                                            ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, %.loopexit.split-lp.i, %.loopexit.i5
  %.pn98.pn.i = phi { ptr, i32 } [ %.pn98.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %i.pp, %bb.cl ], [ %lpad.loopexit.i, %.loopexit.i5 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.pu = load ptr, ptr %24, align 8, !tbaa !35   ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.fa
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i: ; preds = %bb.cm
  %i.pw = load i64, ptr %i.fa, align 8, !tbaa !34
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.cn

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, %bb.aa
  %.5.i = phi double [ %.4.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i ], [ -1.000000e+00, %bb.aa ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i, %bb.ab
  %.pn98.pn.pn.i = phi { ptr, i32 } [ %.pn98.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.i ], [ %i.ez, %bb.ab ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i
  %.pn98.pn.pn.pn.i = phi { ptr, i32 } [ %.pn98.pn.pn.i, %bb.cn ], [ %.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  br label %common.resume

_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit: ; preds = %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %.6.i = phi double [ %i.ec, %bb.s ], [ %.5.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  store double %.6.i, ptr %i.bo, align 8, !tbaa !81
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.py, i8 0, i64 24, i1 false), !alias.scope !88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !88
  %i.pz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.pz, ptr %5, align 8, !tbaa !29, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22, !noalias !88
  store i64 35, ptr %i.f, align 8, !tbaa !39, !noalias !88
  %i.qa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.ct, !noalias !88 ; 3 uses

.noexc.i.i:                                       ; preds = %_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit
  store ptr %i.qa, ptr %5, align 8, !tbaa !35, !noalias !88
  %i.qb = load i64, ptr %i.f, align 8, !tbaa !39, !noalias !88 ; 3 uses
  store i64 %i.qb, ptr %i.pz, align 8, !tbaa !34, !noalias !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.qa, ptr noundef nonnull align 1 dereferenceable(35) @.str.22, i64 35, i1 false)
  %i.qc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !31, !noalias !88
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qb
  store i8 0, ptr %i.qd, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22, !noalias !88
  %i.qe = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.qi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.qo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ra = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i, %.noexc.i.i
  %.04.i.i = phi i32 [ 0, %.noexc.i.i ], [ %i.re, %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !88
  store ptr %i.qe, ptr %6, align 8, !tbaa !29, !noalias !88
  store i64 0, ptr %i.qf, align 8, !tbaa !31, !noalias !88
  store i8 0, ptr %i.qe, align 8, !tbaa !34, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22, !noalias !88
  %i.re = add nuw nsw i32 %.04.i.i, 1
  store i32 %.04.i.i, ptr %i.g, align 4, !tbaa !12, !noalias !88
  invoke void @_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(2) @.str.24)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !88
  invoke void @_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(5) @.str.25)
          to label %bb.cr unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  %i.rf = load ptr, ptr %9, align 8, !tbaa !35, !noalias !88
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %8, ptr noundef %i.rf, i32 noundef 8)
          to label %bb.cs unwind label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  %i.rg = load ptr, ptr %9, align 8, !tbaa !35, !noalias !88 ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.qg
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cs
  %i.ri = load i64, ptr %i.qg, align 8, !tbaa !34, !noalias !88
end_hunk_0
