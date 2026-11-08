Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/gtest-all?download=true
inline.NumInlined: 8800
inline.NumDeleted: 2313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a
  br i1 %i.dl, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  %i.dm = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.o, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.o:                                             ; preds = %bb.n
  %i.do = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.q unwind label %bb.r, !inline_history !2

bb.q:                                             ; preds = %bb.p
  %i.dp = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.ax, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.dq, %bb.r ], [ %i.oo, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.n, %bb.o, %bb.q
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 368
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !185 ; 2 uses
  %.not.i62 = icmp eq ptr %i.dt, null
  br i1 %.not.i62, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.t:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 360
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !384 ; 2 uses
  %.not4.i = icmp eq ptr %i.dw, null
  br i1 %.not4.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.s, %bb.u, %bb.v
  %.0.i = phi ptr [ %i.du, %bb.s ], [ %i.dx, %bb.u ], [ %i.dy, %bb.v ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !326 ; 2 uses
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !328 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = sdiv exact i64 %i.ef, 112               ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ae, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !190
  %i.ek = call i32 @fflush(ptr noundef %i.ej)     ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.ae
  %i.el = phi ptr [ %i.fi, %bb.ae ], [ %i.ec, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.em = phi ptr [ %i.fj, %bb.ae ], [ %i.eb, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %bb.ae ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.en = phi i64 [ %i.fn, %bb.ae ], [ %i.eg, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.en, %indvars.iv162
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.471, i64 noundef %indvars.iv162, i64 noundef %i.en) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.eo = getelementptr inbounds nuw [112 x i8], ptr %i.el, i64 %indvars.iv162 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !325
  %i.eq = icmp eq i32 %i.ep, 3
  br i1 %i.eq, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !78 ; 4 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !75
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.noexc, label %bb.y

.noexc:                                           ; preds = %bb.x
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.eu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.es) #58 ; 8 uses
  %i.ev = icmp ugt i64 %i.eu, 15
  br i1 %i.ev, label %bb.z, label %._crit_edge.i.i

bb.z:                                             ; preds = %bb.y
  %i.ew = icmp slt i64 %i.eu, 0
  br i1 %i.ew, label %.noexc.i, label %bb.aa

.noexc.i:                                         ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.ex = add nuw i64 %i.eu, 1                    ; 2 uses
  %i.ey = icmp slt i64 %i.ex, 0
  br i1 %i.ey, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.aa
  call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.aa
  %i.ez = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #55 ; 2 uses
  store ptr %i.ez, ptr %2, align 8, !tbaa !78
  store i64 %i.eu, ptr %i.ba, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.y
  %i.fa = phi ptr [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.ba, %bb.y ] ; 3 uses
  switch i64 %i.eu, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.fb = load i8, ptr %i.es, align 1, !tbaa !81
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !81
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr nonnull align 1 %i.es, i64 %i.eu, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i
  store i64 %i.eu, ptr %i.bb, align 8, !tbaa !79
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.eu
  store i8 0, ptr %i.fc, align 1, !tbaa !81
  %i.fd = load ptr, ptr %2, align 8, !tbaa !78
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.fd) ; 0 uses
  %i.fe = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ba
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.fg = load i64, ptr %i.ba, align 8, !tbaa !81
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %.pre = load ptr, ptr %i.ea, align 8, !tbaa !326
  %.pre165 = load ptr, ptr %i.dz, align 8, !tbaa !328
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.fi = phi ptr [ %.pre165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.el, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.fj = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.em, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = sdiv exact i64 %i.fm, 112               ; 2 uses
  %i.fo = shl i64 %i.fn, 32
  %i.fp = ashr exact i64 %i.fo, 32
  %i.fq = icmp slt i64 %indvars.iv.next163, %i.fp
  br i1 %i.fq, label %.lr.ph, label %._crit_edge, !llvm.loop !1992

bb.af:                                            ; preds = %bb.m
  %i.fr = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.fr, label %bb.ah, label %.preheader97

.preheader97:                                     ; preds = %bb.af
  %i.fs = load ptr, ptr %i.aw, align 8, !tbaa !401
  %i.ft = load ptr, ptr %i.av, align 8, !tbaa !402 ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = lshr exact i64 %i.fw, 3
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader97, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 0, %.preheader97 ] ; 6 uses
  %i.ga = phi ptr [ %i.im, %bb.ag ], [ %i.ft, %.preheader97 ]
  %i.gb = load ptr, ptr %i.az, align 8, !tbaa !487
  %i.gc = load ptr, ptr %i.au, align 8, !tbaa !484 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = shl i64 %i.gf, 30
  %i.gh = ashr i64 %i.gg, 32
  %.not.i.i67 = icmp slt i64 %indvars.iv, %i.gh
  call void @llvm.assume(i1 %.not.i.i67)
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !88 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  call void @llvm.assume(i1 %i.gk)
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !387
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gn)
  %i.go = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i69, label %bb.ag

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i69: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.gq = load ptr, ptr %i.az, align 8, !tbaa !487
  %i.gr = load ptr, ptr %i.au, align 8, !tbaa !484 ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = shl i64 %i.gu, 30
  %i.gw = ashr i64 %i.gv, 32
  %.not.i.i68 = icmp slt i64 %indvars.iv, %i.gw
  call void @llvm.assume(i1 %.not.i.i68)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !88 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, -1
  call void @llvm.assume(i1 %i.gz)
  %i.ha = zext nneg i32 %i.gy to i64
  %i.hb = load ptr, ptr %i.av, align 8, !tbaa !402
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !387
  %i.he = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.hd)
  br i1 %i.he, label %.preheader95, label %bb.ag

.preheader95:                                     ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i69
  %i.hf = trunc nuw nsw i64 %indvars.iv to i32
  %.055125 = add nuw nsw i32 %i.hf, 1             ; 2 uses
  %i.hg = load ptr, ptr %i.aw, align 8, !tbaa !401
  %i.hh = load ptr, ptr %i.av, align 8, !tbaa !402 ; 2 uses
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = lshr exact i64 %i.hk, 3
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = icmp slt i32 %.055125, %i.hm
  br i1 %i.hn, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader: ; preds = %.preheader95
  %3 = zext nneg i32 %.055125 to i64
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72
  %indvars.iv156.a = phi i64 [ %3, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader ], [ %indvars.iv.next157.a, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72 ] ; 3 uses
  %i.ho = phi ptr [ %i.hh, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader ], [ %i.id, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72 ]
  %i.hp = load ptr, ptr %i.az, align 8, !tbaa !487
  %i.hq = load ptr, ptr %i.au, align 8, !tbaa !484 ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = shl i64 %i.ht, 30
  %i.hv = ashr i64 %i.hu, 32
  %.not.i.i71 = icmp slt i64 %indvars.iv156.a, %i.hv
  call void @llvm.assume(i1 %.not.i.i71)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv156.a
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !88 ; 2 uses
  %i.hy = icmp sgt i32 %i.hx, -1
  call void @llvm.assume(i1 %i.hy)
  %i.hz = zext nneg i32 %i.hx to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !387
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ib)
  %indvars.iv.next157.a = add nuw nsw i64 %indvars.iv156.a, 1 ; 2 uses
  %i.ic = load ptr, ptr %i.aw, align 8, !tbaa !401
  %i.id = load ptr, ptr %i.av, align 8, !tbaa !402 ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = lshr exact i64 %i.ig, 3
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = trunc nuw i64 %indvars.iv.next157.a to i32
  %i.ik = icmp slt i32 %i.ij, %i.ii
  br i1 %i.ik, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72, label %.loopexit, !llvm.loop !1993

bb.ag:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.il = load ptr, ptr %i.aw, align 8, !tbaa !401
  %i.im = load ptr, ptr %i.av, align 8, !tbaa !402 ; 2 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = shl i64 %i.ip, 29
  %i.ir = ashr i64 %i.iq, 32
  %i.is = icmp slt i64 %indvars.iv.next, %i.ir
  br i1 %i.is, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !1994

bb.ah:                                            ; preds = %bb.af
  %i.it = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.it, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ah
  %i.iu = load ptr, ptr %i.aw, align 8, !tbaa !401
  %i.iv = load ptr, ptr %i.av, align 8, !tbaa !402 ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = lshr exact i64 %i.iy, 3
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75 ], [ 0, %.preheader ] ; 3 uses
  %i.jc = phi ptr [ %i.jr, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75 ], [ %i.iv, %.preheader ]
  %i.jd = load ptr, ptr %i.az, align 8, !tbaa !487
  %i.je = load ptr, ptr %i.au, align 8, !tbaa !484 ; 2 uses
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = shl i64 %i.jh, 30
  %i.jj = ashr i64 %i.ji, 32
  %.not.i.i74 = icmp slt i64 %indvars.iv159, %i.jj
  call void @llvm.assume(i1 %.not.i.i74)
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv159
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !88 ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, -1
  call void @llvm.assume(i1 %i.jm)
  %i.jn = zext nneg i32 %i.jl to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jn
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !387
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.jp)
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.jq = load ptr, ptr %i.aw, align 8, !tbaa !401
  %i.jr = load ptr, ptr %i.av, align 8, !tbaa !402 ; 2 uses
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = shl i64 %i.ju, 29
  %i.jw = ashr i64 %i.jv, 32
  %i.jx = icmp slt i64 %indvars.iv.next160, %i.jw
  br i1 %i.jx, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75, label %.loopexit, !llvm.loop !1995

.loopexit:                                        ; preds = %bb.ag, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75, %.preheader97, %.preheader95, %.preheader, %bb.ah, %._crit_edge
  %i.jy = icmp eq i32 %.059130, %i.bc
  %or.cond5 = select i1 %i.jy, i1 true, i1 %i.ar
  br i1 %or.cond5, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.loopexit
  %i.jz = load ptr, ptr %i.ah, align 8, !tbaa !514
  %i.ka = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 112
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.jz)
  %i.kd = load ptr, ptr %i.ay, align 8, !tbaa !516, !noalias !2005 ; 2 uses
  %i.ke = load ptr, ptr %i.ax, align 8, !tbaa !516, !noalias !2006 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.ai, %.lr.ph.i77
  %.sroa.090.0 = phi ptr [ %i.kg, %.lr.ph.i77 ], [ %i.kd, %bb.ai ]
  %i.kg = getelementptr inbounds i8, ptr %.sroa.090.0, i64 -8 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !512 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !87
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.kh), !inline_history !2000
  %i.kl = icmp eq ptr %i.kg, %i.ke
  br i1 %i.kl, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i77, !llvm.loop !2001

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i77, %bb.ai
  %i.km = load ptr, ptr %i.ah, align 8, !tbaa !514
  %i.kn = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 120
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.km)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, %.loopexit, %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.kq = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #58
  %i.kr = sub nsw i64 %i.kq, %i.bl
  %i.ks = sdiv i64 %i.kr, 1000000
  store i64 %i.ks, ptr %i.bd, align 8, !tbaa !491
  %i.kt = load ptr, ptr %i.ah, align 8, !tbaa !514
  %i.ku = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 128
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.kt, i32 noundef %.059130)
  %i.kx = load ptr, ptr %i.av, align 8, !tbaa !386 ; 4 uses
  %i.ky = load ptr, ptr %i.aw, align 8, !tbaa !386 ; 3 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky                ; 2 uses
  br i1 %i.kz, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aj, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %.08.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ 0, %bb.aj ]
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.mr, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.kx, %bb.aj ] ; 2 uses
  %i.la = load ptr, ptr %.sroa.04.07.i.i.i.i, align 8, !tbaa !387 ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 112
  %i.lc = load i8, ptr %i.lb, align 8, !tbaa !400, !range !70, !noundef !71
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.ak, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !403 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !403 ; 2 uses
  %i.li = icmp eq ptr %i.lf, %i.lh
  br i1 %i.li, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i, label %.lr.ph.i.i.i84

.lr.ph.i.i.i84:                                   ; preds = %bb.ak, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i
  %.08.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i ], [ 0, %bb.ak ]
  %.sroa.04.07.i.i.i = phi ptr [ %i.mb, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i ], [ %i.lf, %bb.ak ] ; 2 uses
  %i.lj = load ptr, ptr %.sroa.04.07.i.i.i, align 8, !tbaa !404 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  %i.ll = load i8, ptr %i.lk, align 8, !tbaa !407, !range !70, !noundef !71
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.al, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i

bb.al:                                            ; preds = %.lr.ph.i.i.i84
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 200
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 208
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !326
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !328 ; 2 uses
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = sdiv exact i64 %i.lt, 112               ; 5 uses
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = icmp sgt i32 %i.lv, 0
  br i1 %i.lw, label %.lr.ph.preheader.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.al
  %wide.trip.count.i.i.i.i = and i64 %i.lu, 2147483647
  br label %.lr.ph.i.i.i.i89

bb.am:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i, label %.lr.ph.i.i.i.i89, !llvm.loop !20

.lr.ph.i.i.i.i89:                                 ; preds = %bb.am, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.am ] ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.lu
  br i1 %exitcond.not.i.i.i.i, label %bb.an, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i

bb.an:                                            ; preds = %.lr.ph.i.i.i.i89
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.471, i64 noundef %i.lu, i64 noundef %i.lu) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i89
  %i.lx = getelementptr inbounds nuw [112 x i8], ptr %i.lq, i64 %indvars.iv.i.i.i.i
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !325
  %i.lz = add i32 %i.ly, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.lz, 2
  br i1 %spec.select.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i, label %bb.am

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i, %bb.am, %bb.al, %.lr.ph.i.i.i84
  %i.ma = phi i32 [ 0, %.lr.ph.i.i.i84 ], [ 0, %bb.al ], [ 0, %bb.am ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i ]
  %spec.select.i.i.i = add nuw nsw i32 %i.ma, %.08.i.i.i ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i, i64 8 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.lh
  br i1 %i.mc, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i, label %.lr.ph.i.i.i84, !llvm.loop !21

_ZNK7testing9TestSuite17failed_test_countEv.exit.i: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i
  %.not.i85 = icmp eq i32 %spec.select.i.i.i, 0
  br i1 %.not.i85, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i: ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i, %bb.ak
  %i.md = getelementptr inbounds nuw i8, ptr %i.la, i64 192
  %i.me = getelementptr inbounds nuw i8, ptr %i.la, i64 200
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !326
  %i.mg = load ptr, ptr %i.md, align 8, !tbaa !328 ; 2 uses
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = sdiv exact i64 %i.mj, 112               ; 5 uses
  %i.ml = trunc i64 %i.mk to i32
  %i.mm = icmp sgt i32 %i.ml, 0
  br i1 %i.mm, label %.lr.ph.preheader.i.i86, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

.lr.ph.preheader.i.i86:                           ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i
  %wide.trip.count.i.i = and i64 %i.mk, 2147483647
  br label %.lr.ph.i.i87

bb.ao:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i, label %.lr.ph.i.i87, !llvm.loop !20

.lr.ph.i.i87:                                     ; preds = %bb.ao, %.lr.ph.preheader.i.i86
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i86 ], [ %indvars.iv.next.i.i, %bb.ao ] ; 3 uses
  %exitcond.not.i.i88 = icmp eq i64 %indvars.iv.i.i, %i.mk
  br i1 %exitcond.not.i.i88, label %bb.ap, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

end_hunk_0
