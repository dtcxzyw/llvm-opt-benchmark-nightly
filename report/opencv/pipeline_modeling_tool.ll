Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pipeline_modeling_tool?download=true
inline.NumInlined: 8267
inline.NumDeleted: 3627
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8Pipeline3runEv:bb.a
bb.aq:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.et = load i64, ptr %i.dj, align 8, !tbaa !122
  store i64 %i.et, ptr %i.er, align 8, !tbaa !122
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.eu, ptr %i.dk, align 8, !tbaa !733
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.ar:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.ev = load ptr, ptr %i.di, align 8, !tbaa !214 ; 4 uses
  %i.ew = ptrtoint ptr %i.er to i64
  %i.ex = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 5 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %.invoke, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ar
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i.i36 = tail call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i36, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = tail call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i.i37 = icmp ne i64 %i.fe, 0
  tail call void @llvm.assume(i1 %.not.i.i.i37)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #37
          to label %.noexc40 unwind label %.loopexit74 ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.ey ; 2 uses
  %i.fi = load i64, ptr %i.dj, align 8, !tbaa !122
  store i64 %i.fi, ptr %i.fh, align 8, !tbaa !122
  %i.fj = icmp sgt i64 %i.ey, 0
  br i1 %i.fj, label %bb.as, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.as:                                            ; preds = %.noexc40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr align 8 %i.ev, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.as, %.noexc40
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.not.i17.i.i38 = icmp eq ptr %i.ev, null
  br i1 %.not.i17.i.i38, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.fl = load ptr, ptr %i.dl, align 8, !tbaa !215
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.ex
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fn) #38
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.fg, ptr %i.di, align 8, !tbaa !214
  store ptr %i.fk, ptr %i.dk, align 8, !tbaa !733
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  store ptr %i.fo, ptr %i.dl, align 8, !tbaa !215
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.aq
  %i.fp = load ptr, ptr %i.db, align 8, !tbaa !177 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !116
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
          to label %bb.au unwind label %.loopexit74

bb.au:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.ft = load ptr, ptr %i.db, align 8, !tbaa !177 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !116
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = invoke noundef zeroext i1 %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.ft)
          to label %bb.av unwind label %.loopexit74

bb.av:                                            ; preds = %bb.au
  br i1 %i.fx, label %bb.aw, label %bb.ak

bb.aw:                                            ; preds = %bb.av
  %i.fy = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #35
  %i.fz = sub nsw i64 %i.fy, %i.da
  %i.ga = sitofp i64 %i.fz to double
  %i.gb = fdiv double %i.ga, 1.000000e+06
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store double %i.gb, ptr %i.gc, align 8, !tbaa !734
  %i.gd = load ptr, ptr %0, align 8, !tbaa !116
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void %i.gf(ptr noundef nonnull align 8 dereferenceable(320) %0)
          to label %bb.az unwind label %.loopexit.split-lp75

bb.ax:                                            ; preds = %_ZNSt10shared_ptrI11DummySourceEC2ERKS1_.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %_ZNSt10shared_ptrI11DummySourceEaSERKS1_.exit32, %bb.x, %bb.w, %_ZNSt10shared_ptrI11DummySourceEaSERKS1_.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit73:                                      ; preds = %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp:                               ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit74:                                      ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %bb.au, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp75:                             ; preds = %.invoke, %bb.aw
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.az:                                            ; preds = %bb.aw
  %i.gi = load ptr, ptr %i.df, align 8, !tbaa !735 ; 8 uses
  %i.gj = load ptr, ptr %i.dg, align 8, !tbaa !735 ; 6 uses
  %.not5.i.i = icmp eq ptr %i.gi, %i.gj           ; 2 uses
  br i1 %.not5.i.i, label %.loopexit72, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.az, %.lr.ph.i.i
  %.07.i.i = phi double [ %i.gl, %.lr.ph.i.i ], [ 0.000000e+00, %bb.az ]
  %.sroa.02.06.i.i = phi ptr [ %i.gm, %.lr.ph.i.i ], [ %i.gi, %bb.az ] ; 2 uses
  %i.gk = load double, ptr %.sroa.02.06.i.i, align 8, !tbaa !153
  %i.gl = fadd double %.07.i.i, %i.gk             ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gm, %i.gj
  br i1 %.not.i.i, label %.loopexit72, label %.lr.ph.i.i, !llvm.loop !723

.loopexit72:                                      ; preds = %.lr.ph.i.i, %bb.az
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.az ], [ %i.gl, %.lr.ph.i.i ]
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = ptrtoint ptr %i.gi to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 3
  %i.gr = uitofp i64 %i.gq to double              ; 2 uses
  %i.gs = fdiv double %.0.lcssa.i.i, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.gs, ptr %i.gt, align 8, !tbaa !736
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 3 uses
  %.not9.i.i.i = icmp eq ptr %i.gu, %i.gj
  %or.cond.i.i.i = select i1 %.not5.i.i, i1 true, i1 %.not9.i.i.i
  %i.gv = load double, ptr %i.gi, align 8, !tbaa !153 ; 3 uses
  br i1 %or.cond.i.i.i, label %.thread70, label %.lr.ph.i.i.i

.thread70:                                        ; preds = %.loopexit72
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.gv, ptr %i.gw, align 8, !tbaa !737
  br label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.loopexit72, %.lr.ph.i.i.i
  %i.gx = phi double [ %i.hc, %.lr.ph.i.i.i ], [ %i.gv, %.loopexit72 ] ; 2 uses
  %i.gy = phi ptr [ %i.hb, %.lr.ph.i.i.i ], [ %i.gu, %.loopexit72 ] ; 3 uses
  %.sroa.02.010.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.gi, %.loopexit72 ]
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !153 ; 2 uses
  %i.ha = fcmp olt double %i.gz, %i.gx            ; 2 uses
  %spec.select.i.i.i = select i1 %i.ha, ptr %i.gy, ptr %.sroa.02.010.i.i.i ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.hb, %i.gj
  %i.hc = select i1 %i.ha, double %i.gz, double %i.gx
  br i1 %.not.i.i.i41, label %.lr.ph.preheader.i.i.i44, label %.lr.ph.i.i.i, !llvm.loop !724

.lr.ph.preheader.i.i.i44:                         ; preds = %.lr.ph.i.i.i
  %i.hd = load double, ptr %spec.select.i.i.i, align 8, !tbaa !153
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.hd, ptr %i.he, align 8, !tbaa !737
  %.pre.i.i.i45 = load double, ptr %i.gi, align 8, !tbaa !153
  br label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %.lr.ph.i.i.i46, %.lr.ph.preheader.i.i.i44
  %i.hf = phi double [ %i.hk, %.lr.ph.i.i.i46 ], [ %.pre.i.i.i45, %.lr.ph.preheader.i.i.i44 ] ; 2 uses
  %i.hg = phi ptr [ %i.hj, %.lr.ph.i.i.i46 ], [ %i.gu, %.lr.ph.preheader.i.i.i44 ] ; 3 uses
  %.sroa.02.010.i.i.i47 = phi ptr [ %spec.select.i.i.i48, %.lr.ph.i.i.i46 ], [ %i.gi, %.lr.ph.preheader.i.i.i44 ]
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !153 ; 2 uses
  %i.hi = fcmp olt double %i.hf, %i.hh            ; 2 uses
  %spec.select.i.i.i48 = select i1 %i.hi, ptr %i.hg, ptr %.sroa.02.010.i.i.i47 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.hj, %i.gj
  %i.hk = select i1 %i.hi, double %i.hh, double %i.hf
  br i1 %.not.i.i.i49, label %.loopexit.loopexit, label %.lr.ph.i.i.i46, !llvm.loop !725

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i46
  %.pre95 = load double, ptr %spec.select.i.i.i48, align 8, !tbaa !153
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.thread70
  %i.hl = phi double [ %i.gv, %.thread70 ], [ %.pre95, %.loopexit.loopexit ]
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.hl, ptr %i.hm, align 8, !tbaa !738
  %i.hn = load ptr, ptr %i.di, align 8, !tbaa !214 ; 10 uses
  %i.ho = load ptr, ptr %i.dk, align 8, !tbaa !733 ; 2 uses
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq                    ; 2 uses
  %i.hs = ashr exact i64 %i.hr, 3                 ; 5 uses
  %i.ht = icmp ugt i64 %i.hs, 1
  br i1 %i.ht, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %.promoted = load i64, ptr %i.hu, align 8, !tbaa !739 ; 3 uses
  %i.hv = add nsw i64 %i.hs, -1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.hs, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %bound0 = icmp ult ptr %i.hu, %i.ho
  %bound1 = icmp ult ptr %i.hn, %i.df
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hv, -4                      ; 4 uses
  %i.hw = or disjoint i64 %n.vec, 1
  %i.hx = shl i64 %n.vec, 3
  %i.hy = getelementptr i8, ptr %i.hn, i64 %i.hx
  %i.hz = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.hz, %vector.ph ], [ %i.ij, %vector.body ]
  %vec.phi119 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ik, %vector.body ]
  %i.ia = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hn, i64 %i.ia ; 2 uses
  %i.ib = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !122, !alias.scope !740
  %wide.load120 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !122, !alias.scope !740
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %index ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %wide.load121 = load <2 x i64>, ptr %i.id, align 8, !tbaa !122, !alias.scope !740
  %wide.load122 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !122, !alias.scope !740
  %i.if = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.ig = xor <2 x i64> %wide.load120, splat (i64 -1)
  %i.ih = add <2 x i64> %wide.load121, %i.if
  %i.ii = add <2 x i64> %wide.load122, %i.ig
  %i.ij = add <2 x i64> %i.ih, %vec.phi           ; 2 uses
  %i.ik = add <2 x i64> %i.ii, %vec.phi119        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !728

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ik, %i.ij
  %i.im = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.im, ptr %i.hu, align 8, !tbaa !739, !alias.scope !743, !noalias !740
  %cmp.n = icmp eq i64 %i.hv, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.im, %middle.block ] ; 2 uses
  %.092.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.hw, %middle.block ] ; 4 uses
  %.08.in91.ph = phi ptr [ %i.hn, %vector.memcheck ], [ %i.hn, %.lr.ph ], [ %i.hy, %middle.block ] ; 2 uses
  %.neg = add nsw i64 %.092.ph, 1
  %i.in = and i64 %i.hr, 8
  %lcmp.mod.not.not = icmp eq i64 %i.in, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.08.prol = load i64, ptr %.08.in91.ph, align 8, !tbaa !122
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.092.ph ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !122
  %i.iq = xor i64 %.08.prol, -1
  %i.ir = add i64 %i.ip, %i.iq
  %i.is = add nsw i64 %i.ir, %.ph                 ; 2 uses
  store i64 %i.is, ptr %i.hu, align 8, !tbaa !739
  %i.it = add nuw nsw i64 %.092.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.is, %scalar.ph.prol ]
  %.092.unr = phi i64 [ %.092.ph, %scalar.ph.preheader ], [ %i.it, %scalar.ph.prol ]
  %.08.in91.unr = phi ptr [ %.08.in91.ph, %scalar.ph.preheader ], [ %i.io, %scalar.ph.prol ]
  %i.iu = icmp eq i64 %i.hs, %.neg
  br i1 %i.iu, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.iv = load double, ptr %i.gc, align 8, !tbaa !734
  %i.iw = fdiv double %i.gr, %i.iv
  %i.ix = fmul double %i.iw, 1.000000e+03
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %i.ix, ptr %i.iy, align 8, !tbaa !744
  %i.iz = load ptr, ptr %i.n, align 8, !tbaa !169 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 4 uses
  %i.jb = load atomic i64, ptr %i.ja acquire, align 8 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 4294967297
  %i.jd = trunc i64 %i.jb to i32                  ; 2 uses
  br i1 %i.jc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.ja, align 8, !tbaa !220
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  store i32 0, ptr %i.je, align 4, !tbaa !221
  %i.jf = load ptr, ptr %i.iz, align 8, !tbaa !116
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #35, !inline_history !10
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !116
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8
  tail call void %i.jk(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #35, !inline_history !10
  br label %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !125
  %.not.i.i.i52 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i52, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jm = add nsw i32 %i.jd, -1
  store i32 %i.jm, ptr %i.ja, align 8, !tbaa !222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.jn = atomicrmw volatile add ptr %i.ja, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i = phi i32 [ %i.jd, %bb.bd ], [ %i.jn, %bb.be ]
  %i.jo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.jo, label %bb.bf, label %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !223

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #35
  br label %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.jp = load ptr, ptr %i.c, align 8, !tbaa !169 ; 8 uses
  %.not.i.i53 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i53, label %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.jq, align 8, !tbaa !220
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !221
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !116
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  tail call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #35, !inline_history !10
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !116
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  tail call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #35, !inline_history !10
  br label %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57

bb.bi:                                            ; preds = %bb.bg
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !125
  %.not.i.i.i54 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i54, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55

bb.bk:                                            ; preds = %bb.bi
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i56 = phi i32 [ %i.jt, %bb.bj ], [ %i.kd, %bb.bk ]
  %i.ke = icmp eq i32 %.0.i.i.i.i56, 1
  br i1 %i.ke, label %bb.bl, label %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57, !prof !223

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #35
  br label %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57

_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57: ; preds = %_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.kf = phi i64 [ %i.kq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %.092 = phi i64 [ %i.kr, %scalar.ph ], [ %.092.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.08.in91 = phi ptr [ %i.km, %scalar.ph ], [ %.08.in91.unr, %scalar.ph.prol.loopexit ]
  %.08 = load i64, ptr %.08.in91, align 8, !tbaa !122
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.092 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !122
  %i.ki = xor i64 %.08, -1
  %i.kj = add i64 %i.kh, %i.ki
  %i.kk = add nsw i64 %i.kj, %i.kf                ; 2 uses
  store i64 %i.kk, ptr %i.hu, align 8, !tbaa !739
  %.08.1 = load i64, ptr %i.kg, align 8, !tbaa !122
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.092
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !122
  %i.ko = xor i64 %.08.1, -1
  %i.kp = add i64 %i.kn, %i.ko
  %i.kq = add nsw i64 %i.kp, %i.kk                ; 2 uses
  store i64 %i.kq, ptr %i.hu, align 8, !tbaa !739
  %i.kr = add nuw i64 %.092, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.kr, %i.hs
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !730

bb.bm:                                            ; preds = %.loopexit74, %.loopexit.split-lp75, %.loopexit73, %.loopexit.split-lp, %bb.ay
  %.pn16.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.gh, %bb.ay ], [ %lpad.loopexit, %.loopexit73 ], [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ]
  call void @_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35
  br label %.body

.body:                                            ; preds = %bb.ax, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI11DummySourceSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i, %bb.bm
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %bb.bm ], [ %i.gg, %bb.ax ], [ %i.m, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI11DummySourceSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @_ZNSt12__shared_ptrI11DummySourceLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %.pn16.pn.pn
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(144) ptr @_ZNK8Pipeline6reportEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(320) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12SubGraphCallclERKSt6vectorIN2cv4util7variantIJNS1_4GMatENS1_5GMatPENS1_6GFrameENS1_7GScalarENS1_6detail7GArrayUENS8_8GOpaqueUEEEESaISB_EERSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.4", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.4", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.4", align 1  ; 3 uses
  %9 = alloca %"class.cv::GMat", align 16         ; 7 uses
  %10 = alloca %"class.cv::GMat", align 16        ; 12 uses
  %11 = alloca %"class.cv::GMat", align 16        ; 7 uses
  %12 = alloca %"class.cv::GComputation", align 16 ; 4 uses
  %13 = alloca %"class.std::vector.33", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242
  %i.c = load ptr, ptr %1, align 8, !tbaa !243    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 40
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN12SubGraphCallclERKSt6vectorIN2cv4util7variantIJNS1_4GMatENS1_5GMatPENS1_6GFrameENS1_7GScalarENS1_6detail7GArrayUENS8_8GOpaqueUEEEESaISB_EERSD_, ptr noundef nonnull @.str.16, i32 noundef 119) #36
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_0
