Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sortmax?download=true
inline.NumInlined: 607
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8psort_nwIN3opt7sortmaxEE7dsmergeEjjPKP4exprjS6_R10ptr_vectorIS3_E:bb.a
  %i.et = icmp eq ptr %i.eq, %i.el
  %or.cond386 = select i1 %or.cond, i1 true, i1 %i.et
  br i1 %or.cond386, label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr.exit, label %bb.af

split:                                            ; preds = %bb.ah, %bb.ag
  %i.eu = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %split
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.eu, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 3 uses
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !81
  %i.ex = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153

bb.ab:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !84 ; 3 uses
  %i.fc = icmp ult i64 %i.fb, 16
  call void @llvm.assume(i1 %i.fc)
  %i.fd = add nuw nsw i64 %i.fb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ew, ptr noundef nonnull align 8 dereferenceable(1) %i.ey, i64 %i.fd, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153: ; preds = %bb.aa
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !95
  %i.fe = load i64, ptr %i.ey, align 8, !tbaa !85
  store i64 %i.fe, ptr %i.ew, align 8, !tbaa !85
  %.phi.trans.insert.i154 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre.i155 = load i64, ptr %.phi.trans.insert.i154, align 8, !tbaa !84
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153, %bb.ab
  %i.ff = phi i64 [ %i.fb, %bb.ab ], [ %.pre.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 %i.ff, ptr %i.fh, align 8, !tbaa !84
  store ptr %i.ey, ptr %9, align 8, !tbaa !95
  store i64 0, ptr %i.fg, align 8, !tbaa !84
  store i8 0, ptr %i.ey, align 8, !tbaa !85
  invoke void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ey
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i157: ; preds = %bb.ac
  %i.fl = load i64, ptr %i.ey, align 8, !tbaa !85
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %common.resume

bb.ad:                                            ; preds = %split
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @__cxa_free_exception(ptr %i.eu) #18
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158, %bb.ad, %.body, %bb.ak
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.gx, %bb.ak ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158 ], [ %i.fn, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156
  unreachable

bb.af:                                            ; preds = %_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr.exit90
  %i.fo = load <2 x i32>, ptr %i.aj, align 8, !tbaa !46
  %i.fp = add <2 x i32> %i.fo, <i32 1, i32 3>
  store <2 x i32> %i.fp, ptr %i.aj, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.fq = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 8 uses
  store i32 2, ptr %i.fq, align 4, !tbaa !46
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  store ptr %i.fr, ptr %16, align 8, !tbaa !45
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store ptr %.0.i, ptr %i.fr, align 8, !tbaa !48
  store i32 1, ptr %i.fs, align 4, !tbaa !46
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store ptr %.0.i84, ptr %i.fu, align 8, !tbaa !48
  store i32 2, ptr %i.ft, align 4, !tbaa !46
  %i.fv = load i32, ptr %i.fq, align 8, !tbaa !46
  %i.fw = icmp eq i32 %i.fv, 2
  br i1 %i.fw, label %bb.ag, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2

bb.ag:                                            ; preds = %bb.af
  %i.fx = load i32, ptr %i.fq, align 8, !tbaa !46 ; 3 uses
  %i.fy = mul i32 %i.fx, 3
  %i.fz = add i32 %i.fy, 1
  %i.ga = lshr i32 %i.fz, 1                       ; 3 uses
  %i.gb = shl i32 %i.ga, 3
  %i.gc = add i32 %i.gb, 8                        ; 2 uses
  %.not.i151.2 = icmp ugt i32 %i.ga, %i.fx
  br i1 %.not.i151.2, label %bb.ah, label %split

bb.ah:                                            ; preds = %bb.ag
  %i.gd = shl i32 %i.fx, 3
  %i.ge = add i32 %i.gd, 8
  %.not27.i160.2 = icmp ugt i32 %i.gc, %i.ge
  br i1 %.not27.i160.2, label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2, label %split

_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2: ; preds = %bb.ah
  %i.gf = zext i32 %i.gc to i64
  %i.gg = call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fq, i64 noundef %i.gf) ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  store ptr %i.gh, ptr %16, align 8, !tbaa !45
  store i32 %i.ga, ptr %i.gg, align 4, !tbaa !46
  %.phi.trans.insert.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %.pre2.i.i.i.i.2 = load i32, ptr %.phi.trans.insert.i.i.i.i.2, align 4, !tbaa !46
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2: ; preds = %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2, %bb.af
  %i.gi = phi ptr [ %i.gh, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2 ], [ %i.fr, %bb.af ] ; 3 uses
  %i.gj = phi i32 [ %.pre2.i.i.i.i.2, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2 ], [ 2, %bb.af ] ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 -4
  %i.gl = zext i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gl
  store ptr %i.eq, ptr %i.gm, align 8, !tbaa !48
  %i.gn = add i32 %i.gj, 1
  store i32 %i.gn, ptr %i.gk, align 4, !tbaa !46
  %i.go = load ptr, ptr %i.ai, align 8, !tbaa !107, !nonnull !42, !align !43 ; 2 uses
  %i.gp = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(232) %i.go)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.gs = invoke noundef ptr @_Z5mk_orR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gr, i32 noundef 3, ptr noundef nonnull %i.gi)
          to label %.noexc13.i unwind label %bb.ak

.noexc13.i:                                       ; preds = %.noexc.i
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.gp, ptr noundef %i.gs)
          to label %_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit.i unwind label %bb.ak

_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit.i:       ; preds = %.noexc13.i
  %i.gt = load ptr, ptr %16, align 8, !tbaa !45   ; 2 uses
  %.not.i.i15.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i15.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit.i
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gu)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.ai, %_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr.exit

bb.ak:                                            ; preds = %.noexc13.i, %.noexc.i, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %common.resume

_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr.exit: ; preds = %_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr.exit90, %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.gy = add i32 %.065211, 1                     ; 2 uses
  %.not79 = icmp ugt i32 %i.gy, %4
  br i1 %.not79, label %.critedge, label %bb.g, !llvm.loop !222

._crit_edge216:                                   ; preds = %.critedge, %.preheader194.thread, %.preheader194, %.preheader193.thread
  %.pr = load i32, ptr %i.g, align 8, !tbaa !105
  %.not75 = icmp eq i32 %.pr, 0
  br i1 %.not75, label %bb.co, label %.thread

.thread:                                          ; preds = %._crit_edge, %._crit_edge216
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store ptr null, ptr %17, align 8, !tbaa !45
  br i1 %.not223, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %.lr.ph221

.lr.ph221:                                        ; preds = %.thread
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.he = zext i32 %4 to i64                      ; 3 uses
  %i.hf = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count247 = zext i32 %1 to i64
  %.not227 = icmp eq i32 %2, 0
  br label %bb.an

.loopexit192:                                     ; preds = %bb.cn, %bb.ba
  %indvars.iv.next241 = add i32 %indvars.iv240, 1
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %._crit_edge222, label %bb.an, !llvm.loop !223

._crit_edge222:                                   ; preds = %.loopexit192
  %.pre295 = load ptr, ptr %17, align 8, !tbaa !45 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre295, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge222
  %i.hg = getelementptr inbounds i8, ptr %.pre295, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hg)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %.thread, %._crit_edge222, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.co

bb.an:                                            ; preds = %.lr.ph221, %.loopexit192
  %indvars.iv244 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next245, %.loopexit192 ] ; 9 uses
  %indvars.iv240 = phi i32 [ 1, %.lr.ph221 ], [ %indvars.iv.next241, %.loopexit192 ] ; 2 uses
  %umin = call i32 @llvm.umin.i32(i32 %2, i32 %indvars.iv240)
  %i.hj = load ptr, ptr %17, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.hj, null
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -4
  store i32 0, ptr %i.hk, align 4, !tbaa !46
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.an, %bb.ao
  %i.hl = load ptr, ptr %6, align 8, !tbaa !45
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv244
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !48
  %i.ho = invoke noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hn)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.hp = load ptr, ptr %17, align 8, !tbaa !45   ; 4 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hr = getelementptr inbounds i8, ptr %i.hp, i64 -4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !46 ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hp, i64 -8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !46
  %i.hv = icmp eq i32 %i.hs, %i.hu
  br i1 %i.hv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.ar
  %.pre.i91 = load ptr, ptr %17, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert.i92 = getelementptr inbounds i8, ptr %.pre.i91, i64 -4
  %.pre2.i93 = load i32, ptr %.phi.trans.insert.i92, align 4, !tbaa !46
  br label %bb.as

bb.as:                                            ; preds = %.noexc, %bb.aq
  %i.hw = phi i32 [ %.pre2.i93, %.noexc ], [ %i.hs, %bb.aq ] ; 2 uses
  %i.hx = phi ptr [ %.pre.i91, %.noexc ], [ %i.hp, %bb.aq ] ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -4
  %i.hz = zext i32 %i.hw to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hz
  store ptr %i.ho, ptr %i.ia, align 8, !tbaa !48
  %i.ib = add i32 %i.hw, 1
  store i32 %i.ib, ptr %i.hy, align 4, !tbaa !46
  %.not76 = icmp samesign ult i64 %indvars.iv244, %i.hf
  br i1 %.not76, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ic = load ptr, ptr %6, align 8, !tbaa !45
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv244
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !48
  %i.if = invoke noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ie)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ig = sub nuw nsw i64 %indvars.iv244, %i.hf
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.if, ptr %i.b, align 16, !tbaa !48
  store ptr %i.ii, ptr %i.gz, align 8, !tbaa !48
  invoke void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.b)
          to label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit unwind label %bb.av

_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.ax

bb.av:                                            ; preds = %bb.az, %bb.au, %bb.ay, %bb.at
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.ar, %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit, %bb.as
  %.not77 = icmp samesign ult i64 %indvars.iv244, %i.he
  br i1 %.not77, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.il = load ptr, ptr %6, align 8, !tbaa !45
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv244
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !48
  %i.io = invoke noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.in)
          to label %bb.az unwind label %bb.av

bb.az:                                            ; preds = %bb.ay
  %i.ip = sub nuw nsw i64 %indvars.iv244, %i.he
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.io, ptr %i.a, align 16, !tbaa !48
  store ptr %i.ir, ptr %i.ha, align 8, !tbaa !48
  invoke void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit97 unwind label %bb.av

_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit97: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit97, %bb.ax
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  br i1 %.not227, label %.loopexit192, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %bb.ba
  %wide.trip.count242 = zext i32 %umin to i64
  br label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph219.preheader, %bb.cn
  %indvars.iv237 = phi i64 [ 0, %.lr.ph219.preheader ], [ %indvars.iv.next238, %bb.cn ] ; 3 uses
  %18 = sub nuw nsw i64 %indvars.iv244, %indvars.iv237 ; 2 uses
  %i.is = icmp samesign ult i64 %18, %i.he
  br i1 %i.is, label %bb.bb, label %bb.cn

bb.bb:                                            ; preds = %.lr.ph219
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv237
  %i.iu = load ptr, ptr %17, align 8, !tbaa !45   ; 4 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iw = getelementptr inbounds i8, ptr %i.iu, i64 -4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !46 ; 5 uses
  %i.iy = getelementptr inbounds i8, ptr %i.iu, i64 -8 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !46
  %i.ja = icmp eq i32 %i.ix, %i.iz
  br i1 %i.ja, label %bb.be, label %bb.bn

bb.bd:                                            ; preds = %bb.bb
  %i.jb = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc111 unwind label %.loopexit.split-lp ; 3 uses

.noexc111:                                        ; preds = %bb.bd
  store i32 2, ptr %i.jb, align 4, !tbaa !46
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 0, ptr %i.jc, align 4, !tbaa !46
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  store ptr %i.jd, ptr %17, align 8, !tbaa !45
  br label %.noexc101

bb.be:                                            ; preds = %bb.bc
  %i.je = mul i32 %i.ix, 3
  %i.jf = add i32 %i.je, 1
  %i.jg = lshr i32 %i.jf, 1                       ; 3 uses
  %i.jh = shl i32 %i.jg, 3
  %i.ji = add i32 %i.jh, 8                        ; 2 uses
  %.not.i108 = icmp ugt i32 %i.jg, %i.ix
  br i1 %.not.i108, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jj = shl i32 %i.ix, 3
  %i.jk = add i32 %i.jj, 8
  %.not27.i = icmp ugt i32 %i.ji, %i.jk
  br i1 %.not27.i, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.jl = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.jl, align 8, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 24 ; 3 uses
  store ptr %i.jn, ptr %i.jm, align 8, !tbaa !81
  %i.jo = load ptr, ptr %14, align 8, !tbaa !95   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.jr = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !84 ; 3 uses
  %i.jt = icmp ult i64 %i.js, 16
  call void @llvm.assume(i1 %i.jt)
  %i.ju = add nuw nsw i64 %i.js, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jn, ptr noundef nonnull align 8 dereferenceable(1) %i.jp, i64 %i.ju, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bh
  store ptr %i.jo, ptr %i.jm, align 8, !tbaa !95
  %i.jv = load i64, ptr %i.jp, align 8, !tbaa !85
  store i64 %i.jv, ptr %i.jn, align 8, !tbaa !85
  %.phi.trans.insert.i109 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre.i110 = load i64, ptr %.phi.trans.insert.i109, align 8, !tbaa !84
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bi
  %i.jw = phi i64 [ %i.js, %bb.bi ], [ %.pre.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.jx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store i64 %i.jw, ptr %i.jy, align 8, !tbaa !84
  store ptr %i.jp, ptr %14, align 8, !tbaa !95
  store i64 0, ptr %i.jx, align 8, !tbaa !84
  store i8 0, ptr %i.jp, align 8, !tbaa !85
  invoke void @__cxa_throw(ptr nonnull %i.jl, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.bm unwind label %bb.bj

bb.bj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  %i.ka = load ptr, ptr %14, align 8, !tbaa !95   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.jp
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.bj
  %i.kc = load i64, ptr %i.jp, align 8, !tbaa !85
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.body

bb.bk:                                            ; preds = %bb.bg
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @__cxa_free_exception(ptr %i.jl) #18
  br label %.body

bb.bl:                                            ; preds = %bb.bf
  %i.kf = zext i32 %i.ji to i64
  %i.kg = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.iy, i64 noundef %i.kf)
          to label %.noexc112 unwind label %.loopexit.split-lp ; 2 uses

.noexc112:                                        ; preds = %bb.bl
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  store ptr %i.kh, ptr %17, align 8, !tbaa !45
  store i32 %i.jg, ptr %i.kg, align 4, !tbaa !46
  br label %.noexc101

bb.bm:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc101:                                        ; preds = %.noexc112, %.noexc111
  %.pre.i98 = phi ptr [ %i.kh, %.noexc112 ], [ %i.jd, %.noexc111 ] ; 2 uses
  %.phi.trans.insert.i99 = getelementptr inbounds i8, ptr %.pre.i98, i64 -4
  %.pre2.i100 = load i32, ptr %.phi.trans.insert.i99, align 4, !tbaa !46
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bc, %.noexc101
  %i.ki = phi i32 [ %.pre2.i100, %.noexc101 ], [ %i.ix, %bb.bc ] ; 2 uses
  %i.kj = phi ptr [ %.pre.i98, %.noexc101 ], [ %i.iu, %bb.bc ] ; 4 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -4
  %i.kl = zext i32 %i.ki to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kl
  %i.kn = load ptr, ptr %i.it, align 8, !tbaa !48
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !48
  %i.ko = add i32 %i.ki, 1                        ; 6 uses
  store i32 %i.ko, ptr %i.kk, align 4, !tbaa !46
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %18
  %i.kq = getelementptr inbounds i8, ptr %i.kj, i64 -8 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !46
  %i.ks = icmp eq i32 %i.ko, %i.kr
  br i1 %i.ks, label %bb.bo, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.kt = mul i32 %i.ko, 3
  %i.ku = add i32 %i.kt, 1
  %i.kv = lshr i32 %i.ku, 1                       ; 3 uses
  %i.kw = shl i32 %i.kv, 3
  %i.kx = add i32 %i.kw, 8                        ; 2 uses
  %.not.i113 = icmp ugt i32 %i.kv, %i.ko
  br i1 %.not.i113, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ky = shl i32 %i.ko, 3
  %i.kz = add i32 %i.ky, 8
  %.not27.i122 = icmp ugt i32 %i.kx, %i.kz
  br i1 %.not27.i122, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.la = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.la, align 8, !tbaa !13
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 24 ; 3 uses
  store ptr %i.lc, ptr %i.lb, align 8, !tbaa !81
  %i.ld = load ptr, ptr %12, align 8, !tbaa !95   ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %bb.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115

bb.bs:                                            ; preds = %bb.br
  %i.lg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !84 ; 3 uses
  %i.li = icmp ult i64 %i.lh, 16
  call void @llvm.assume(i1 %i.li)
  %i.lj = add nuw nsw i64 %i.lh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lc, ptr noundef nonnull align 8 dereferenceable(1) %i.le, i64 %i.lj, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115: ; preds = %bb.br
  store ptr %i.ld, ptr %i.lb, align 8, !tbaa !95
  %i.lk = load i64, ptr %i.le, align 8, !tbaa !85
  store i64 %i.lk, ptr %i.lc, align 8, !tbaa !85
  %.phi.trans.insert.i116 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre.i117 = load i64, ptr %.phi.trans.insert.i116, align 8, !tbaa !84
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i118

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i118: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115, %bb.bs
  %i.ll = phi i64 [ %i.lh, %bb.bs ], [ %.pre.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115 ]
  %i.lm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store i64 %i.ll, ptr %i.ln, align 8, !tbaa !84
  store ptr %i.le, ptr %12, align 8, !tbaa !95
  store i64 0, ptr %i.lm, align 8, !tbaa !84
  store i8 0, ptr %i.le, align 8, !tbaa !85
  invoke void @__cxa_throw(ptr nonnull %i.la, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.bw unwind label %bb.bt

bb.bt:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i118
  %i.lo = landingpad { ptr, i32 }
          cleanup
  %i.lp = load ptr, ptr %12, align 8, !tbaa !95   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.le
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i119: ; preds = %bb.bt
  %i.lr = load i64, ptr %i.le, align 8, !tbaa !85
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i120: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %.body

bb.bu:                                            ; preds = %bb.bq
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @__cxa_free_exception(ptr %i.la) #18
  br label %.body

bb.bv:                                            ; preds = %bb.bp
  %i.lu = zext i32 %i.kx to i64
  %i.lv = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.kq, i64 noundef %i.lu)
          to label %.noexc105 unwind label %.loopexit.split-lp ; 3 uses

bb.bw:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i118
  unreachable

.noexc105:                                        ; preds = %bb.bv
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  store ptr %i.lw, ptr %17, align 8, !tbaa !45
  store i32 %i.kv, ptr %i.lv, align 4, !tbaa !46
  %.phi.trans.insert.i103.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %.pre2.i104.pre = load i32, ptr %.phi.trans.insert.i103.phi.trans.insert, align 4, !tbaa !46
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.bn, %.noexc105
  %i.lx = phi i32 [ %.pre2.i104.pre, %.noexc105 ], [ %i.ko, %bb.bn ] ; 2 uses
  %i.ly = phi ptr [ %i.lw, %.noexc105 ], [ %i.kj, %bb.bn ] ; 5 uses
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 -4
  %i.ma = zext i32 %i.lx to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.ma
  %i.mc = load ptr, ptr %i.kp, align 8, !tbaa !48
  store ptr %i.mc, ptr %i.mb, align 8, !tbaa !48
  %i.md = add i32 %i.lx, 1                        ; 6 uses
  store i32 %i.md, ptr %i.lz, align 4, !tbaa !46
  %.not.i128 = icmp eq i32 %i.md, 0
  br i1 %.not.i128, label %_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.me = load ptr, ptr %i.hb, align 8, !tbaa !107, !nonnull !42, !align !43
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 832
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !165
  %wide.trip.count.i = zext i32 %i.md to i64      ; 2 uses
  br label %bb.by

bb.bx:                                            ; preds = %bb.by
  %indvars.iv.next.i130 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %exitcond.not.i131 = icmp eq i64 %indvars.iv.next.i130, %wide.trip.count.i
  br i1 %exitcond.not.i131, label %._crit_edge.i132, label %bb.by, !llvm.loop !2

bb.by:                                            ; preds = %bb.bx, %.lr.ph.i
  %indvars.iv.i129 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i130, %bb.bx ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.i129
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !48
  %i.ml = icmp eq ptr %i.mk, %i.mi
  br i1 %i.ml, label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseERK10ptr_vectorI4exprE.exit, label %bb.bx

._crit_edge.i132:                                 ; preds = %bb.bx
  %i.mm = load i32, ptr %i.hc, align 8, !tbaa !179
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr %i.hc, align 8, !tbaa !179
  %i.mo = load i32, ptr %i.hd, align 4, !tbaa !180
  %i.mp = add i32 %i.mo, %i.md
  store i32 %i.mp, ptr %i.hd, align 4, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store ptr null, ptr %11, align 8, !tbaa !45
  br label %.lr.ph.i.i.i133

.lr.ph.i.i.i133:                                  ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i135, %._crit_edge.i132
  %i.mq = phi ptr [ null, %._crit_edge.i132 ], [ %i.oh, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i135 ] ; 5 uses
  %indvars.iv.i.i.i134 = phi i64 [ 0, %._crit_edge.i132 ], [ %indvars.iv.next.i.i.i136, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i135 ] ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.i.i.i134
  %i.ms = icmp eq ptr %i.mq, null
  br i1 %i.ms, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i133
  %i.mt = getelementptr inbounds i8, ptr %i.mq, i64 -4
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !46 ; 2 uses
  %i.mv = getelementptr inbounds i8, ptr %i.mq, i64 -8
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !46
  %i.mx = icmp eq i32 %i.mu, %i.mw
  br i1 %i.mx, label %bb.cb, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i135

bb.ca:                                            ; preds = %.lr.ph.i.i.i133
  %i.my = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc172 unwind label %.loopexit ; 3 uses

.noexc172:                                        ; preds = %bb.ca
  store i32 2, ptr %i.my, align 4, !tbaa !46
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  store i32 0, ptr %i.mz, align 4, !tbaa !46
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  store ptr %i.na, ptr %11, align 8, !tbaa !45
  br label %.noexc147

bb.cb:                                            ; preds = %bb.bz
  %i.nb = getelementptr inbounds i8, ptr %i.mq, i64 -8 ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !46 ; 3 uses
  %i.nd = mul i32 %i.nc, 3
  %i.ne = add i32 %i.nd, 1
  %i.nf = lshr i32 %i.ne, 1                       ; 3 uses
  %i.ng = shl i32 %i.nf, 3
  %i.nh = add i32 %i.ng, 8                        ; 2 uses
  %.not.i162 = icmp ugt i32 %i.nf, %i.nc
  br i1 %.not.i162, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ni = shl i32 %i.nc, 3
  %i.nj = add i32 %i.ni, 8
  %.not27.i171 = icmp ugt i32 %i.nh, %i.nj
  br i1 %.not27.i171, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.nk = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
end_hunk_0
