Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4079
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiS7_i:bb.a
  %i.lm = fsub double %i.kn, %i.ll
  %i.ln = fneg double %i.lm
  %i.lo = call double @llvm.fmuladd.f64(double %i.ln, double %i.kh, double %i.kn)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit273

bb.ar:                                            ; preds = %bb.as, %bb.ap
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %bb.ao
  %i.lq = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %5, i32 noundef %i.hm)
          to label %bb.at unwind label %bb.ar     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.lr = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.ls = load ptr, ptr %9, align 8, !tbaa !193   ; 7 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lr
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !192
  %.not552 = icmp eq i32 %i.hl, 0
  br i1 %.not552, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271, label %.lr.ph.preheader.i264

.lr.ph.preheader.i264:                            ; preds = %bb.at
  %.pre.i265 = load double, ptr %i.ls, align 8, !tbaa !192 ; 2 uses
  %i.lv = add nsw i64 %i.lr, -1                   ; 3 uses
  %xtraiter591 = and i64 %i.lv, 1
  %i.lw = icmp eq i32 %i.hm, 2
  br i1 %i.lw, label %.lr.ph.i266.epil.preheader, label %.lr.ph.preheader.i264.new

.lr.ph.preheader.i264.new:                        ; preds = %.lr.ph.preheader.i264
  %unroll_iter597 = and i64 %i.lv, -2
  br label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %.lr.ph.i266, %.lr.ph.preheader.i264.new
  %i.lx = phi double [ %.pre.i265, %.lr.ph.preheader.i264.new ], [ %i.mh, %.lr.ph.i266 ] ; 2 uses
  %.014.i267 = phi i64 [ 1, %.lr.ph.preheader.i264.new ], [ %i.mg, %.lr.ph.i266 ] ; 4 uses
  %.01013.i268 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %spec.select.i269.1, %.lr.ph.i266 ]
  %niter598 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %niter598.next.1, %.lr.ph.i266 ]
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.014.i267
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !192 ; 2 uses
  %i.ma = fcmp olt double %i.lz, %i.lx            ; 2 uses
  %spec.select.i269 = select i1 %i.ma, i64 %.014.i267, i64 %.01013.i268
  %i.mb = add nuw nsw i64 %.014.i267, 1           ; 2 uses
  %i.mc = select i1 %i.ma, double %i.lz, double %i.lx ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.mb
  %i.me = load double, ptr %i.md, align 8, !tbaa !192 ; 2 uses
  %i.mf = fcmp olt double %i.me, %i.mc            ; 2 uses
  %spec.select.i269.1 = select i1 %i.mf, i64 %i.mb, i64 %spec.select.i269 ; 3 uses
  %i.mg = add nuw nsw i64 %.014.i267, 2           ; 2 uses
  %i.mh = select i1 %i.mf, double %i.me, double %i.mc ; 2 uses
  %niter598.next.1 = add nuw i64 %niter598, 2     ; 2 uses
  %niter598.ncmp.1 = icmp eq i64 %niter598.next.1, %unroll_iter597
  br i1 %niter598.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa, label %.lr.ph.i266, !llvm.loop !4

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa: ; preds = %.lr.ph.i266
  %lcmp.mod594.not = icmp eq i64 %xtraiter591, 0
  br i1 %lcmp.mod594.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271, label %.lr.ph.i266.epil.preheader

.lr.ph.i266.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa, %.lr.ph.preheader.i264
  %.epil.init593 = phi double [ %.pre.i265, %.lr.ph.preheader.i264 ], [ %i.mh, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ]
  %.014.i267.epil.init = phi i64 [ 1, %.lr.ph.preheader.i264 ], [ %i.mg, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i268.epil.init = phi i64 [ 0, %.lr.ph.preheader.i264 ], [ %spec.select.i269.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ]
  %lcmp.mod596 = trunc i64 %i.lv to i1
  call void @llvm.assume(i1 %lcmp.mod596)
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.014.i267.epil.init
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !192
  %i.mk = fcmp olt double %i.mj, %.epil.init593
  %spec.select.i269.epil = select i1 %i.mk, i64 %.014.i267.epil.init, i64 %.01013.i268.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271:    ; preds = %.lr.ph.i266.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa, %bb.at
  %.011.i263 = phi i64 [ 0, %bb.at ], [ %spec.select.i269.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ], [ %spec.select.i269.epil, %.lr.ph.i266.epil.preheader ]
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.011.i263
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !192 ; 2 uses
  %i.mn = fsub double %i.mm, %i.lu
  %i.mo = fneg double %i.mn
  %i.mp = call double @llvm.fmuladd.f64(double %i.mo, double %i.kh, double %i.mm)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit273

_ZNSt6vectorIdSaIdEED2Ev.exit273:                 ; preds = %.thread466, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253
  %.3469 = phi double [ %i.je, %.thread466 ], [ %i.mp, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271 ], [ %i.lo, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262 ], [ %i.kf, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253 ]
  %i.mq = phi ptr [ %i.jc, %.thread466 ], [ %i.ls, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271 ], [ %i.kl, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262 ], [ %i.jg, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253 ] ; 2 uses
  %i.mr = load ptr, ptr %i.hb, align 8, !tbaa !195
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %i.mq to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mu) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cv

bb.au:                                            ; preds = %.loopexit478, %.loopexit.split-lp479, %bb.al, %bb.ar
  %.pn180 = phi { ptr, i32 } [ %i.lp, %bb.ar ], [ %i.jf, %bb.al ], [ %lpad.loopexit480, %.loopexit478 ], [ %lpad.loopexit.split-lp481, %.loopexit.split-lp479 ] ; 2 uses
  %i.mv = load ptr, ptr %9, align 8, !tbaa !193   ; 3 uses
  %.not.i.i.i274 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i274, label %_ZNSt6vectorIdSaIdEED2Ev.exit275, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mw = load ptr, ptr %i.hb, align 8, !tbaa !195
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = ptrtoint ptr %i.mv to i64
  %i.mz = sub i64 %i.mx, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.mz) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit275

_ZNSt6vectorIdSaIdEED2Ev.exit275:                 ; preds = %bb.av, %bb.au, %bb.ad
  %.pn180.pn = phi { ptr, i32 } [ %i.ho, %bb.ad ], [ %.pn180, %bb.au ], [ %.pn180, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cw

bb.aw:                                            ; preds = %bb.a
  br i1 %i.ad, label %bb.ax, label %bb.bw

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ae, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !219
  %i.nc = load i32, ptr %3, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.nb, ptr %i.o, align 8, !tbaa !221
  store i32 %i.nc, ptr %i.p, align 4, !tbaa !205
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !154
  %.not.i.i276 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i276, label %bb.az, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit277

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit277:          ; preds = %bb.ay
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !243
  %i.nh = call noundef double %i.ng(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cv

bb.ba:                                            ; preds = %bb.ax
  %i.ni = zext nneg i32 %5 to i64                 ; 7 uses
  %i.nj = shl nuw nsw i64 %i.ni, 2                ; 5 uses
  %i.nk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nj) #34 ; 15 uses
  store i32 0, ptr %i.nk, align 4, !tbaa !205
  %i.nl = getelementptr i8, ptr %i.nk, i64 4
  %.idx.i.i.i.i.i.i.i279 = add nsw i64 %i.nj, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.nl, i8 0, i64 %.idx.i.i.i.i.i.i.i279, i1 false), !tbaa !205
  %min.iters.check555 = icmp ult i32 %5, 8
  br i1 %min.iters.check555, label %scalar.ph554.preheader, label %vector.ph556

vector.ph556:                                     ; preds = %bb.ba
  %n.vec557 = and i64 %i.ni, 2147483640           ; 3 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph556
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next562, %vector.body558 ] ; 2 uses
  %vec.ind560 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph556 ], [ %vec.ind.next563, %vector.body558 ] ; 3 uses
  %step.add561 = add <4 x i32> %vec.ind560, splat (i32 4)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %index559 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store <4 x i32> %vec.ind560, ptr %i.nm, align 4, !tbaa !205
  store <4 x i32> %step.add561, ptr %i.nn, align 4, !tbaa !205
  %index.next562 = add nuw i64 %index559, 8       ; 2 uses
  %vec.ind.next563 = add <4 x i32> %vec.ind560, splat (i32 8)
  %i.no = icmp eq i64 %index.next562, %n.vec557
  br i1 %i.no, label %middle.block564, label %vector.body558, !llvm.loop !394

middle.block564:                                  ; preds = %vector.body558
  %cmp.n565 = icmp eq i64 %n.vec557, %i.ni
  br i1 %cmp.n565, label %.loopexit567, label %scalar.ph554.preheader

scalar.ph554.preheader:                           ; preds = %bb.ba, %middle.block564
  %indvars.iv503.ph = phi i64 [ 0, %bb.ba ], [ %n.vec557, %middle.block564 ]
  br label %scalar.ph554

.loopexit567:                                     ; preds = %scalar.ph554, %middle.block564
  %i.np = getelementptr i8, ptr %i.nk, i64 %i.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %7, align 8
  %.sroa.2443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2443.0..sroa_idx, align 8
  %.sroa.3444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.y, ptr %.sroa.3444.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_T0_(ptr nonnull %i.nk, ptr %i.np, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
          to label %bb.bb unwind label %bb.bc

scalar.ph554:                                     ; preds = %scalar.ph554.preheader, %scalar.ph554
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %scalar.ph554 ], [ %indvars.iv503.ph, %scalar.ph554.preheader ] ; 3 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv503
  %i.nr = trunc nuw nsw i64 %indvars.iv503 to i32
  store i32 %i.nr, ptr %i.nq, align 4, !tbaa !205
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %exitcond507.not = icmp eq i64 %indvars.iv.next504, %i.ni
  br i1 %exitcond507.not, label %.loopexit567, label %scalar.ph554, !llvm.loop !395

bb.bb:                                            ; preds = %.loopexit567
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ns = shl nuw nsw i64 %i.ni, 3                ; 4 uses
  %i.nt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ns) #34
          to label %.lr.ph487.preheader unwind label %bb.bd ; 13 uses

.lr.ph487.preheader:                              ; preds = %bb.bb
  %i.nu = getelementptr i8, ptr %i.nt, i64 8
  %.idx.i.i.i.i.i.i.i285 = add nsw i64 %i.ns, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.nu, i8 0, i64 %.idx.i.i.i.i.i.i.i285, i1 false), !tbaa !192
  %i.nv = load ptr, ptr %i.aa, align 8, !tbaa !222 ; 4 uses
  %i.nw = load ptr, ptr %i.y, align 8, !tbaa !241 ; 5 uses
  %i.nx = load i32, ptr %i.nk, align 4, !tbaa !205
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !205
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.ob
  %i.od = load float, ptr %i.oc, align 4, !tbaa !170
  %i.oe = fpext float %i.od to double             ; 3 uses
  store double %i.oe, ptr %i.nt, align 8, !tbaa !192
  %i.of = add nsw i64 %i.ni, -1                   ; 3 uses
  %xtraiter572 = and i64 %i.of, 1
  %i.og = icmp eq i32 %5, 2
  br i1 %i.og, label %.lr.ph487.epil.preheader, label %.lr.ph487.preheader.new

.lr.ph487.preheader.new:                          ; preds = %.lr.ph487.preheader
  %unroll_iter575 = and i64 %i.of, -2
  br label %.lr.ph487

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa: ; preds = %.lr.ph487
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, label %.lr.ph487.epil.preheader

.lr.ph487.epil.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph487.preheader
  %store_forwarded.epil.init = phi double [ %i.oe, %.lr.ph487.preheader ], [ %i.qd, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ]
  %indvars.iv508.epil.init = phi i64 [ 1, %.lr.ph487.preheader ], [ %indvars.iv.next509.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod574 = trunc i64 %i.of to i1
  call void @llvm.assume(i1 %lcmp.mod574)
  %i.oh = getelementptr [8 x i8], ptr %i.nt, i64 %indvars.iv508.epil.init
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv508.epil.init
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !205
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !205
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.on
  %i.op = load float, ptr %i.oo, align 4, !tbaa !170
  %i.oq = fpext float %i.op to double
  %i.or = fadd double %store_forwarded.epil.init, %i.oq
  store double %i.or, ptr %i.oh, align 8, !tbaa !192
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph487.epil.preheader
  %i.os = add nsw i32 %5, -1
  %i.ot = zext nneg i32 %i.os to i64              ; 3 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.ot
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !192
  %i.ow = fmul double %i.ov, 5.000000e-01         ; 4 uses
  %i.ox = ptrtoint ptr %i.nt to i64
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ni, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.nt, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %i.oy = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.oy ; 2 uses
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !192
  %i.pb = fcmp olt double %i.ow, %i.pa            ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pd = xor i64 %i.oy, -1
  %i.pe = add nsw i64 %.016.i.i, %i.pd
  %.sroa.011.1.i.i = select i1 %i.pb, ptr %.sroa.011.015.i.i, ptr %i.pc ; 3 uses
  %.1.i.i = select i1 %i.pb, i64 %i.oy, i64 %i.pe ; 2 uses
  %i.pf = icmp sgt i64 %.1.i.i, 0
  br i1 %i.pf, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit, !llvm.loop !5

bb.bc:                                            ; preds = %.loopexit567
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

bb.bd:                                            ; preds = %bb.bb
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

.lr.ph487:                                        ; preds = %.lr.ph487, %.lr.ph487.preheader.new
  %store_forwarded = phi double [ %i.oe, %.lr.ph487.preheader.new ], [ %i.qd, %.lr.ph487 ]
  %indvars.iv508 = phi i64 [ 1, %.lr.ph487.preheader.new ], [ %indvars.iv.next509.1, %.lr.ph487 ] ; 4 uses
  %niter576 = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %niter576.next.1, %.lr.ph487 ]
  %i.pi = getelementptr [8 x i8], ptr %i.nt, i64 %indvars.iv508
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv508
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !205
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !205
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.po
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !170
  %i.pr = fpext float %i.pq to double
  %i.ps = fadd double %store_forwarded, %i.pr     ; 2 uses
  store double %i.ps, ptr %i.pi, align 8, !tbaa !192
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %i.pt = getelementptr [8 x i8], ptr %i.nt, i64 %indvars.iv.next509
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next509
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !205
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !205
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.pz
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !170
  %i.qc = fpext float %i.qb to double
  %i.qd = fadd double %i.ps, %i.qc                ; 3 uses
  store double %i.qd, ptr %i.pt, align 8, !tbaa !192
  %indvars.iv.next509.1 = add nuw nsw i64 %indvars.iv508, 2 ; 2 uses
  %niter576.next.1 = add nuw i64 %niter576, 2     ; 2 uses
  %niter576.ncmp.1 = icmp eq i64 %niter576.next.1, %unroll_iter575
  br i1 %niter576.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, label %.lr.ph487, !llvm.loop !396

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.qe = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.qf = sub i64 %i.qe, %i.ox
  %i.qg = ashr exact i64 %i.qf, 3                 ; 2 uses
  %.sroa.speculated403 = call i64 @llvm.umin.i64(i64 %i.qg, i64 %i.ot) ; 4 uses
  %i.qh = icmp eq ptr %.sroa.011.1.i.i, %i.nt
  %i.qi = icmp uge i64 %i.qg, %i.ot
  %or.cond = or i1 %i.qh, %i.qi
  br i1 %or.cond, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !219
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.sroa.speculated403
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !205
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.qk, ptr %i.m, align 8, !tbaa !221
  store i32 %i.qp, ptr %i.n, align 4, !tbaa !205
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !154
  %.not.i.i290 = icmp eq ptr %i.qr, null
  br i1 %.not.i.i290, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc291 unwind label %bb.bh

.noexc291:                                        ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !243
  %i.qu = invoke noundef double %i.qt(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit293 unwind label %bb.bh, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit293:          ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bl, %bb.bj
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit306

bb.bi:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.qw = add nsw i64 %.sroa.speculated403, -1    ; 2 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.qw ; 2 uses
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !192
  %i.qz = fcmp ult double %i.ow, %i.qy
  br i1 %i.qz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 273)
          to label %bb.bk unwind label %bb.bh

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %.sroa.speculated403 ; 2 uses
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !192
  %i.rc = fcmp olt double %i.ow, %i.rb
  br i1 %i.rc, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 273)
          to label %bb.bm unwind label %bb.bh

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !219
  %i.rf = load ptr, ptr %i.y, align 8, !tbaa !241
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.qw
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !205
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.re, ptr %i.k, align 8, !tbaa !221
  store i32 %i.rk, ptr %i.l, align 4, !tbaa !205
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !154
  %.not.i.i294 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i294, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc295 unwind label %bb.bu

.noexc295:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.rn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !243
  %i.rp = invoke noundef double %i.ro(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.bp unwind label %bb.bu, !inline_history !0 ; 3 uses

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.rq = load ptr, ptr %i.rd, align 8, !tbaa !219
  %i.rr = load ptr, ptr %i.y, align 8, !tbaa !241
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.sroa.speculated403
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !205
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.rq, ptr %i.i, align 8, !tbaa !221
  store i32 %i.rw, ptr %i.j, align 4, !tbaa !205
  %i.rx = load ptr, ptr %i.rl, align 8, !tbaa !154
  %.not.i.i298 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i298, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc299 unwind label %bb.bv

.noexc299:                                        ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.ry = load ptr, ptr %i.rn, align 8, !tbaa !243
  %i.rz = invoke noundef double %i.ry(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.bs unwind label %bb.bv, !inline_history !0

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.sa = load double, ptr %i.ra, align 8, !tbaa !192
  %i.sb = load double, ptr %i.qx, align 8, !tbaa !192 ; 2 uses
  %i.sc = fsub double %i.sa, %i.sb                ; 2 uses
  %i.sd = fcmp ult double %i.sc, 1.000000e+00
  br i1 %i.sd, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.se = fsub double %i.ow, %i.sb
  %i.sf = fdiv double %i.se, %i.sc
  %i.sg = fsub double %i.rz, %i.rp
  %i.sh = call double @llvm.fmuladd.f64(double %i.sf, double %i.sg, double %i.rp)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.bu:                                            ; preds = %bb.bo, %bb.bn
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit306

bb.bv:                                            ; preds = %bb.br, %bb.bq
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit306

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit293, %bb.bt, %bb.bs
  %.5 = phi double [ %i.qu, %_ZNKSt8functionIFdPKfiEEclES1_i.exit293 ], [ %i.sh, %bb.bt ], [ %i.rp, %bb.bs ]
  call void @_ZdlPvm(ptr noundef nonnull %i.nt, i64 noundef %i.ns) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef %i.nj) #35
  br label %bb.cv

_ZNSt6vectorIdSaIdEED2Ev.exit306:                 ; preds = %bb.bu, %bb.bv, %bb.bh
  %.pn172 = phi { ptr, i32 } [ %i.qv, %bb.bh ], [ %i.si, %bb.bu ], [ %i.sj, %bb.bv ]
  call void @_ZdlPvm(ptr noundef nonnull %i.nt, i64 noundef %i.ns) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

_ZNSt6vectorIiSaIiEED2Ev.exit308:                 ; preds = %bb.bd, %_ZNSt6vectorIdSaIdEED2Ev.exit306, %bb.bc
  %.pn172.pn.pn = phi { ptr, i32 } [ %i.pg, %bb.bc ], [ %.pn172, %_ZNSt6vectorIdSaIdEED2Ev.exit306 ], [ %i.ph, %bb.bd ]
  call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef %i.nj) #35
  br label %bb.cw

bb.bw:                                            ; preds = %bb.aw
  br i1 %i.ae, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !219
  %i.sm = load i32, ptr %3, align 4, !tbaa !205
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %4, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.sl, ptr %i.g, align 8, !tbaa !221
  store i32 %i.sp, ptr %i.h, align 4, !tbaa !205
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !154
  %.not.i.i309 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i309, label %bb.by, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit310

bb.by:                                            ; preds = %bb.bx
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit310:          ; preds = %bb.bx
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !243
  %i.su = call noundef double %i.st(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cv

bb.bz:                                            ; preds = %bb.bw
  %i.sv = zext nneg i32 %5 to i64                 ; 7 uses
  %i.sw = shl nuw nsw i64 %i.sv, 2                ; 5 uses
  %i.sx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sw) #34 ; 15 uses
  store i32 0, ptr %i.sx, align 4, !tbaa !205
  %i.sy = getelementptr i8, ptr %i.sx, i64 4
  %.idx.i.i.i.i.i.i.i313 = add nsw i64 %i.sw, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.sy, i8 0, i64 %.idx.i.i.i.i.i.i.i313, i1 false), !tbaa !205
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bz
  %n.vec = and i64 %i.sv, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %index ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  store <4 x i32> %vec.ind, ptr %i.sz, align 4, !tbaa !205
  store <4 x i32> %step.add, ptr %i.ta, align 4, !tbaa !205
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.tb = icmp eq i64 %index.next, %n.vec
  br i1 %i.tb, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.sv
  br i1 %cmp.n, label %.loopexit568, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bz, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.bz ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit568:                                     ; preds = %scalar.ph, %middle.block
  %i.tc = getelementptr i8, ptr %i.sx, i64 %i.sw
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.z, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEEvT_SK_T0_(ptr nonnull %i.sx, ptr %i.tc, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.59") align 8 %6)
          to label %bb.ca unwind label %bb.cb

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv
  %i.te = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.te, ptr %i.td, align 4, !tbaa !205
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.sv
  br i1 %exitcond.not, label %.loopexit568, label %scalar.ph, !llvm.loop !398

bb.ca:                                            ; preds = %.loopexit568
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.tf = shl nuw nsw i64 %i.sv, 3                ; 4 uses
  %i.tg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tf) #34
          to label %.lr.ph.preheader unwind label %bb.cc ; 13 uses

.lr.ph.preheader:                                 ; preds = %bb.ca
  %i.th = getelementptr i8, ptr %i.tg, i64 8
  %.idx.i.i.i.i.i.i.i321 = add nsw i64 %i.tf, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.th, i8 0, i64 %.idx.i.i.i.i.i.i.i321, i1 false), !tbaa !192
  %i.ti = load ptr, ptr %i.aa, align 8, !tbaa !222 ; 4 uses
  %i.tj = load ptr, ptr %i.z, align 8, !tbaa !241 ; 5 uses
  %i.tk = load ptr, ptr %i.y, align 8, !tbaa !241 ; 5 uses
  %i.tl = load i32, ptr %i.sx, align 4, !tbaa !205
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !205
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !205
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.ts
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !170
  %i.tv = fpext float %i.tu to double             ; 3 uses
  store double %i.tv, ptr %i.tg, align 8, !tbaa !192
  %i.tw = add nsw i64 %i.sv, -1                   ; 3 uses
  %xtraiter = and i64 %i.tw, 1
  %i.tx = icmp eq i32 %5, 2
  br i1 %i.tx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.tw, -2
  br label %.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa, %.lr.ph.preheader
  %store_forwarded570.epil.init = phi double [ %i.tv, %.lr.ph.preheader ], [ %i.wd, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa ]
  %indvars.iv498.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next499.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod571 = trunc i64 %i.tw to i1
  call void @llvm.assume(i1 %lcmp.mod571)
  %i.ty = getelementptr [8 x i8], ptr %i.tg, i64 %indvars.iv498.epil.init
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv498.epil.init
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !205
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !205
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !205
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.uh
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !170
  %i.uk = fpext float %i.uj to double
  %i.ul = fadd double %store_forwarded570.epil.init, %i.uk
  store double %i.ul, ptr %i.ty, align 8, !tbaa !192
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %i.um = add nsw i32 %5, -1
  %i.un = zext nneg i32 %i.um to i64              ; 3 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.un
  %i.up = load double, ptr %i.uo, align 8, !tbaa !192
  %i.uq = fmul double %i.up, 5.000000e-01         ; 4 uses
  %i.ur = ptrtoint ptr %i.tg to i64
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328
  %.016.i.i329 = phi i64 [ %.1.i.i334, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328 ], [ %i.sv, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader ] ; 2 uses
  %.sroa.011.015.i.i330 = phi ptr [ %.sroa.011.1.i.i333, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328 ], [ %i.tg, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader ] ; 2 uses
  %i.us = lshr i64 %.016.i.i329, 1                ; 3 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i330, i64 %i.us ; 2 uses
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !192
  %i.uv = fcmp olt double %i.uq, %i.uu            ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.ux = xor i64 %i.us, -1
  %i.uy = add nsw i64 %.016.i.i329, %i.ux
  %.sroa.011.1.i.i333 = select i1 %i.uv, ptr %.sroa.011.015.i.i330, ptr %i.uw ; 3 uses
  %.1.i.i334 = select i1 %i.uv, i64 %i.us, i64 %i.uy ; 2 uses
  %i.uz = icmp sgt i64 %.1.i.i334, 0
  br i1 %i.uz, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335, !llvm.loop !5

bb.cb:                                            ; preds = %.loopexit568
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit356

bb.cc:                                            ; preds = %bb.ca
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit356

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded570 = phi double [ %i.tv, %.lr.ph.preheader.new ], [ %i.wd, %.lr.ph ]
  %indvars.iv498 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next499.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.vc = getelementptr [8 x i8], ptr %i.tg, i64 %indvars.iv498
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv498
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !205
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.vf
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !205
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.vi
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !205
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.vl
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !170
  %i.vo = fpext float %i.vn to double
  %i.vp = fadd double %store_forwarded570, %i.vo  ; 2 uses
  store double %i.vp, ptr %i.vc, align 8, !tbaa !192
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1 ; 2 uses
  %i.vq = getelementptr [8 x i8], ptr %i.tg, i64 %indvars.iv.next499
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv.next499
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !205
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !205
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !205
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.vz
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !170
  %i.wc = fpext float %i.wb to double
  %i.wd = fadd double %i.vp, %i.wc                ; 3 uses
  store double %i.wd, ptr %i.vq, align 8, !tbaa !192
  %indvars.iv.next499.1 = add nuw nsw i64 %indvars.iv498, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !399

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328
  %i.we = ptrtoint ptr %.sroa.011.1.i.i333 to i64
  %i.wf = sub i64 %i.we, %i.ur
  %i.wg = ashr exact i64 %i.wf, 3                 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.wg, i64 %i.un) ; 4 uses
  %i.wh = icmp eq ptr %.sroa.011.1.i.i333, %i.tg
  %i.wi = icmp uge i64 %i.wg, %i.un
  %or.cond191 = or i1 %i.wh, %i.wi
  br i1 %or.cond191, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !219
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %.sroa.speculated
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !205
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !205
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.wk, ptr %i.e, align 8, !tbaa !221
  store i32 %i.ws, ptr %i.f, align 4, !tbaa !205
  %i.wt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !154
  %.not.i.i337 = icmp eq ptr %i.wu, null
  br i1 %.not.i.i337, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc338 unwind label %bb.cg

.noexc338:                                        ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.wv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !243
  %i.wx = invoke noundef double %i.ww(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit340 unwind label %bb.cg, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit340:          ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit352

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.ck, %bb.ci
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit354

bb.ch:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335
  %i.wz = add nsw i64 %.sroa.speculated, -1       ; 2 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.wz ; 2 uses
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !192
  %i.xc = fcmp ult double %i.uq, %i.xb
  br i1 %i.xc, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 279)
          to label %bb.cj unwind label %bb.cg

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %.sroa.speculated ; 2 uses
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !192
  %i.xf = fcmp olt double %i.uq, %i.xe
  br i1 %i.xf, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 279)
          to label %bb.cl unwind label %bb.cg

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !219
  %i.xi = load ptr, ptr %i.z, align 8, !tbaa !241
  %i.xj = load ptr, ptr %i.y, align 8, !tbaa !241
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.wz
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !205
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.xm
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !205
  %i.xp = sext i32 %i.xo to i64
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xi, i64 %i.xp
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.xh, ptr %i.c, align 8, !tbaa !221
  store i32 %i.xr, ptr %i.d, align 4, !tbaa !205
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !154
  %.not.i.i341 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i341, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc342 unwind label %bb.ct

.noexc342:                                        ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.xu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !243
  %i.xw = invoke noundef double %i.xv(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.co unwind label %bb.ct, !inline_history !0 ; 3 uses

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.xx = load ptr, ptr %i.xg, align 8, !tbaa !219
  %i.xy = load ptr, ptr %i.z, align 8, !tbaa !241
  %i.xz = load ptr, ptr %i.y, align 8, !tbaa !241
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %.sroa.speculated
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !205
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.xz, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !205
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.xy, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.xx, ptr %i.a, align 8, !tbaa !221
  store i32 %i.yh, ptr %i.b, align 4, !tbaa !205
  %i.yi = load ptr, ptr %i.xs, align 8, !tbaa !154
  %.not.i.i345 = icmp eq ptr %i.yi, null
  br i1 %.not.i.i345, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc346 unwind label %bb.cu

.noexc346:                                        ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.yj = load ptr, ptr %i.xu, align 8, !tbaa !243
  %i.yk = invoke noundef double %i.yj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.cr unwind label %bb.cu, !inline_history !0

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.yl = load double, ptr %i.xd, align 8, !tbaa !192
  %i.ym = load double, ptr %i.xa, align 8, !tbaa !192 ; 2 uses
  %i.yn = fsub double %i.yl, %i.ym                ; 2 uses
  %i.yo = fcmp ult double %i.yn, 1.000000e+00
  br i1 %i.yo, label %_ZNSt6vectorIiSaIiEED2Ev.exit352, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yp = fsub double %i.uq, %i.ym
  %i.yq = fdiv double %i.yp, %i.yn
  %i.yr = fsub double %i.yk, %i.xw
  %i.ys = call double @llvm.fmuladd.f64(double %i.yq, double %i.yr, double %i.xw)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit352

bb.ct:                                            ; preds = %bb.cn, %bb.cm
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit354

bb.cu:                                            ; preds = %bb.cq, %bb.cp
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit354

_ZNSt6vectorIiSaIiEED2Ev.exit352:                 ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit340, %bb.cs, %bb.cr
  %.7 = phi double [ %i.wx, %_ZNKSt8functionIFdPKfiEEclES1_i.exit340 ], [ %i.ys, %bb.cs ], [ %i.xw, %bb.cr ]
  call void @_ZdlPvm(ptr noundef nonnull %i.tg, i64 noundef %i.tf) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef %i.sw) #35
  br label %bb.cv

_ZNSt6vectorIdSaIdEED2Ev.exit354:                 ; preds = %bb.ct, %bb.cu, %bb.cg
  %.pn165 = phi { ptr, i32 } [ %i.wy, %bb.cg ], [ %i.yt, %bb.ct ], [ %i.yu, %bb.cu ]
  call void @_ZdlPvm(ptr noundef nonnull %i.tg, i64 noundef %i.tf) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit356

_ZNSt6vectorIiSaIiEED2Ev.exit356:                 ; preds = %bb.cc, %_ZNSt6vectorIdSaIdEED2Ev.exit354, %bb.cb
  %.pn165.pn.pn = phi { ptr, i32 } [ %i.va, %bb.cb ], [ %.pn165, %_ZNSt6vectorIdSaIdEED2Ev.exit354 ], [ %i.vb, %bb.cc ]
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef %i.sw) #35
  br label %bb.cw

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit352, %_ZNKSt8functionIFdPKfiEEclES1_i.exit310, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt8functionIFdPKfiEEclES1_i.exit277, %_ZNSt6vectorIdSaIdEED2Ev.exit273, %_ZNKSt8functionIFdPKfiEEclES1_i.exit221, %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNKSt8functionIFdPKfiEEclES1_i.exit
  %.8 = phi double [ %i.am, %_ZNKSt8functionIFdPKfiEEclES1_i.exit ], [ %.1462, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.gw, %_ZNKSt8functionIFdPKfiEEclES1_i.exit221 ], [ %.3469, %_ZNSt6vectorIdSaIdEED2Ev.exit273 ], [ %i.nh, %_ZNKSt8functionIFdPKfiEEclES1_i.exit277 ], [ %.5, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.su, %_ZNKSt8functionIFdPKfiEEclES1_i.exit310 ], [ %.7, %_ZNSt6vectorIiSaIiEED2Ev.exit352 ]
  ret double %.8

bb.cw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit356, %_ZNSt6vectorIiSaIiEED2Ev.exit308, %_ZNSt6vectorIdSaIdEED2Ev.exit275, %_ZNSt6vectorIdSaIdEED2Ev.exit219
  %.pn187.pn.pn = phi { ptr, i32 } [ %.pn187.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit219 ], [ %.pn180.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit275 ], [ %.pn165.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit356 ], [ %.pn172.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit308 ]
  resume { ptr, i32 } %.pn187.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM16RegressionL1loss14BoostFromScoreEi(ptr noundef nonnull align 8 dereferenceable(57) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !218  ; 6 uses
  %i.e = icmp slt i32 %i.d, 2                     ; 2 uses
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM22RegressionQuantileloss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiS7_i:bb.a
  %i.lu = fsub double %i.kv, %i.lt
  %i.lv = fneg double %i.lu
  %i.lw = call double @llvm.fmuladd.f64(double %i.lv, double %i.kp, double %i.kv)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit273

bb.ar:                                            ; preds = %bb.as, %bb.ap
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %bb.ao
  %i.ly = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %5, i32 noundef %i.hu)
          to label %bb.at unwind label %bb.ar     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.lz = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.ma = load ptr, ptr %9, align 8, !tbaa !193   ; 7 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.lz
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !192
  %.not552 = icmp eq i32 %i.ht, 0
  br i1 %.not552, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271, label %.lr.ph.preheader.i264

.lr.ph.preheader.i264:                            ; preds = %bb.at
  %.pre.i265 = load double, ptr %i.ma, align 8, !tbaa !192 ; 2 uses
  %i.md = add nsw i64 %i.lz, -1                   ; 3 uses
  %xtraiter591 = and i64 %i.md, 1
  %i.me = icmp eq i32 %i.hu, 2
  br i1 %i.me, label %.lr.ph.i266.epil.preheader, label %.lr.ph.preheader.i264.new

.lr.ph.preheader.i264.new:                        ; preds = %.lr.ph.preheader.i264
  %unroll_iter597 = and i64 %i.md, -2
  br label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %.lr.ph.i266, %.lr.ph.preheader.i264.new
  %i.mf = phi double [ %.pre.i265, %.lr.ph.preheader.i264.new ], [ %i.mp, %.lr.ph.i266 ] ; 2 uses
  %.014.i267 = phi i64 [ 1, %.lr.ph.preheader.i264.new ], [ %i.mo, %.lr.ph.i266 ] ; 4 uses
  %.01013.i268 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %spec.select.i269.1, %.lr.ph.i266 ]
  %niter598 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %niter598.next.1, %.lr.ph.i266 ]
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %.014.i267
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !192 ; 2 uses
  %i.mi = fcmp olt double %i.mh, %i.mf            ; 2 uses
  %spec.select.i269 = select i1 %i.mi, i64 %.014.i267, i64 %.01013.i268
  %i.mj = add nuw nsw i64 %.014.i267, 1           ; 2 uses
  %i.mk = select i1 %i.mi, double %i.mh, double %i.mf ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mj
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !192 ; 2 uses
  %i.mn = fcmp olt double %i.mm, %i.mk            ; 2 uses
  %spec.select.i269.1 = select i1 %i.mn, i64 %i.mj, i64 %spec.select.i269 ; 3 uses
  %i.mo = add nuw nsw i64 %.014.i267, 2           ; 2 uses
  %i.mp = select i1 %i.mn, double %i.mm, double %i.mk ; 2 uses
  %niter598.next.1 = add nuw i64 %niter598, 2     ; 2 uses
  %niter598.ncmp.1 = icmp eq i64 %niter598.next.1, %unroll_iter597
  br i1 %niter598.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa, label %.lr.ph.i266, !llvm.loop !4

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa: ; preds = %.lr.ph.i266
  %lcmp.mod594.not = icmp eq i64 %xtraiter591, 0
  br i1 %lcmp.mod594.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271, label %.lr.ph.i266.epil.preheader

.lr.ph.i266.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa, %.lr.ph.preheader.i264
  %.epil.init593 = phi double [ %.pre.i265, %.lr.ph.preheader.i264 ], [ %i.mp, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ]
  %.014.i267.epil.init = phi i64 [ 1, %.lr.ph.preheader.i264 ], [ %i.mo, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i268.epil.init = phi i64 [ 0, %.lr.ph.preheader.i264 ], [ %spec.select.i269.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ]
  %lcmp.mod596 = trunc i64 %i.md to i1
  call void @llvm.assume(i1 %lcmp.mod596)
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %.014.i267.epil.init
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !192
  %i.ms = fcmp olt double %i.mr, %.epil.init593
  %spec.select.i269.epil = select i1 %i.ms, i64 %.014.i267.epil.init, i64 %.01013.i268.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271:    ; preds = %.lr.ph.i266.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa, %bb.at
  %.011.i263 = phi i64 [ 0, %bb.at ], [ %spec.select.i269.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ], [ %spec.select.i269.epil, %.lr.ph.i266.epil.preheader ]
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %.011.i263
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !192 ; 2 uses
  %i.mv = fsub double %i.mu, %i.mc
  %i.mw = fneg double %i.mv
  %i.mx = call double @llvm.fmuladd.f64(double %i.mw, double %i.kp, double %i.mu)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit273

_ZNSt6vectorIdSaIdEED2Ev.exit273:                 ; preds = %.thread466, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253
  %.3469 = phi double [ %i.jm, %.thread466 ], [ %i.mx, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271 ], [ %i.lw, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262 ], [ %i.kn, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253 ]
  %i.my = phi ptr [ %i.jk, %.thread466 ], [ %i.ma, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271 ], [ %i.kt, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262 ], [ %i.jo, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253 ] ; 2 uses
  %i.mz = load ptr, ptr %i.hf, align 8, !tbaa !195
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.my to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef %i.nc) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cv

bb.au:                                            ; preds = %.loopexit478, %.loopexit.split-lp479, %bb.al, %bb.ar
  %.pn180 = phi { ptr, i32 } [ %i.lx, %bb.ar ], [ %i.jn, %bb.al ], [ %lpad.loopexit480, %.loopexit478 ], [ %lpad.loopexit.split-lp481, %.loopexit.split-lp479 ] ; 2 uses
  %i.nd = load ptr, ptr %9, align 8, !tbaa !193   ; 3 uses
  %.not.i.i.i274 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i274, label %_ZNSt6vectorIdSaIdEED2Ev.exit275, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ne = load ptr, ptr %i.hf, align 8, !tbaa !195
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = ptrtoint ptr %i.nd to i64
  %i.nh = sub i64 %i.nf, %i.ng
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.nh) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit275

_ZNSt6vectorIdSaIdEED2Ev.exit275:                 ; preds = %bb.av, %bb.au, %bb.ad
  %.pn180.pn = phi { ptr, i32 } [ %i.hw, %bb.ad ], [ %.pn180, %bb.au ], [ %.pn180, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cw

bb.aw:                                            ; preds = %bb.a
  br i1 %i.ad, label %bb.ax, label %bb.bw

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ae, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !219
  %i.nk = load i32, ptr %3, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.nj, ptr %i.o, align 8, !tbaa !221
  store i32 %i.nk, ptr %i.p, align 4, !tbaa !205
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !154
  %.not.i.i276 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i276, label %bb.az, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit277

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit277:          ; preds = %bb.ay
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !243
  %i.np = call noundef double %i.no(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cv

bb.ba:                                            ; preds = %bb.ax
  %i.nq = zext nneg i32 %5 to i64                 ; 7 uses
  %i.nr = shl nuw nsw i64 %i.nq, 2                ; 5 uses
  %i.ns = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nr) #34 ; 15 uses
  store i32 0, ptr %i.ns, align 4, !tbaa !205
  %i.nt = getelementptr i8, ptr %i.ns, i64 4
  %.idx.i.i.i.i.i.i.i279 = add nsw i64 %i.nr, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.nt, i8 0, i64 %.idx.i.i.i.i.i.i.i279, i1 false), !tbaa !205
  %min.iters.check555 = icmp ult i32 %5, 8
  br i1 %min.iters.check555, label %scalar.ph554.preheader, label %vector.ph556

vector.ph556:                                     ; preds = %bb.ba
  %n.vec557 = and i64 %i.nq, 2147483640           ; 3 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph556
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next562, %vector.body558 ] ; 2 uses
  %vec.ind560 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph556 ], [ %vec.ind.next563, %vector.body558 ] ; 3 uses
  %step.add561 = add <4 x i32> %vec.ind560, splat (i32 4)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %index559 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store <4 x i32> %vec.ind560, ptr %i.nu, align 4, !tbaa !205
  store <4 x i32> %step.add561, ptr %i.nv, align 4, !tbaa !205
  %index.next562 = add nuw i64 %index559, 8       ; 2 uses
  %vec.ind.next563 = add <4 x i32> %vec.ind560, splat (i32 8)
  %i.nw = icmp eq i64 %index.next562, %n.vec557
  br i1 %i.nw, label %middle.block564, label %vector.body558, !llvm.loop !512

middle.block564:                                  ; preds = %vector.body558
  %cmp.n565 = icmp eq i64 %n.vec557, %i.nq
  br i1 %cmp.n565, label %.loopexit567, label %scalar.ph554.preheader

scalar.ph554.preheader:                           ; preds = %bb.ba, %middle.block564
  %indvars.iv503.ph = phi i64 [ 0, %bb.ba ], [ %n.vec557, %middle.block564 ]
  br label %scalar.ph554

.loopexit567:                                     ; preds = %scalar.ph554, %middle.block564
  %i.nx = getelementptr i8, ptr %i.ns, i64 %i.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %7, align 8
  %.sroa.2443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2443.0..sroa_idx, align 8
  %.sroa.3444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.y, ptr %.sroa.3444.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_T0_(ptr nonnull %i.ns, ptr %i.nx, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.69") align 8 %7)
          to label %bb.bb unwind label %bb.bc

scalar.ph554:                                     ; preds = %scalar.ph554.preheader, %scalar.ph554
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %scalar.ph554 ], [ %indvars.iv503.ph, %scalar.ph554.preheader ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv503
  %i.nz = trunc nuw nsw i64 %indvars.iv503 to i32
  store i32 %i.nz, ptr %i.ny, align 4, !tbaa !205
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %exitcond507.not = icmp eq i64 %indvars.iv.next504, %i.nq
  br i1 %exitcond507.not, label %.loopexit567, label %scalar.ph554, !llvm.loop !513

bb.bb:                                            ; preds = %.loopexit567
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.oa = shl nuw nsw i64 %i.nq, 3                ; 4 uses
  %i.ob = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oa) #34
          to label %.lr.ph487.preheader unwind label %bb.bd ; 13 uses

.lr.ph487.preheader:                              ; preds = %bb.bb
  %i.oc = getelementptr i8, ptr %i.ob, i64 8
  %.idx.i.i.i.i.i.i.i285 = add nsw i64 %i.oa, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.oc, i8 0, i64 %.idx.i.i.i.i.i.i.i285, i1 false), !tbaa !192
  %i.od = load ptr, ptr %i.aa, align 8, !tbaa !222 ; 4 uses
  %i.oe = load ptr, ptr %i.y, align 8, !tbaa !241 ; 5 uses
  %i.of = load i32, ptr %i.ns, align 4, !tbaa !205
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !205
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.oj
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !170
  %i.om = fpext float %i.ol to double             ; 3 uses
  store double %i.om, ptr %i.ob, align 8, !tbaa !192
  %i.on = add nsw i64 %i.nq, -1                   ; 3 uses
  %xtraiter572 = and i64 %i.on, 1
  %i.oo = icmp eq i32 %5, 2
  br i1 %i.oo, label %.lr.ph487.epil.preheader, label %.lr.ph487.preheader.new

.lr.ph487.preheader.new:                          ; preds = %.lr.ph487.preheader
  %unroll_iter575 = and i64 %i.on, -2
  br label %.lr.ph487

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa: ; preds = %.lr.ph487
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, label %.lr.ph487.epil.preheader

.lr.ph487.epil.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph487.preheader
  %store_forwarded.epil.init = phi double [ %i.om, %.lr.ph487.preheader ], [ %i.qo, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ]
  %indvars.iv508.epil.init = phi i64 [ 1, %.lr.ph487.preheader ], [ %indvars.iv.next509.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod574 = trunc i64 %i.on to i1
  call void @llvm.assume(i1 %lcmp.mod574)
  %i.op = getelementptr [8 x i8], ptr %i.ob, i64 %indvars.iv508.epil.init
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv508.epil.init
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !205
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !205
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.ov
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !170
  %i.oy = fpext float %i.ox to double
  %i.oz = fadd double %store_forwarded.epil.init, %i.oy
  store double %i.oz, ptr %i.op, align 8, !tbaa !192
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph487.epil.preheader
  %i.pa = add nsw i32 %5, -1
  %i.pb = zext nneg i32 %i.pa to i64              ; 3 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.pb
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !192
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !148
  %i.pg = fpext float %i.pf to double
  %i.ph = fmul double %i.pd, %i.pg                ; 4 uses
  %i.pi = ptrtoint ptr %i.ob to i64
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.nq, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ob, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %i.pj = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.pj ; 2 uses
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !192
  %i.pm = fcmp olt double %i.ph, %i.pl            ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.po = xor i64 %i.pj, -1
  %i.pp = add nsw i64 %.016.i.i, %i.po
  %.sroa.011.1.i.i = select i1 %i.pm, ptr %.sroa.011.015.i.i, ptr %i.pn ; 3 uses
  %.1.i.i = select i1 %i.pm, i64 %i.pj, i64 %i.pp ; 2 uses
  %i.pq = icmp sgt i64 %.1.i.i, 0
  br i1 %i.pq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit, !llvm.loop !5

bb.bc:                                            ; preds = %.loopexit567
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

bb.bd:                                            ; preds = %bb.bb
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

.lr.ph487:                                        ; preds = %.lr.ph487, %.lr.ph487.preheader.new
  %store_forwarded = phi double [ %i.om, %.lr.ph487.preheader.new ], [ %i.qo, %.lr.ph487 ]
  %indvars.iv508 = phi i64 [ 1, %.lr.ph487.preheader.new ], [ %indvars.iv.next509.1, %.lr.ph487 ] ; 4 uses
  %niter576 = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %niter576.next.1, %.lr.ph487 ]
  %i.pt = getelementptr [8 x i8], ptr %i.ob, i64 %indvars.iv508
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv508
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !205
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !205
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.pz
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !170
  %i.qc = fpext float %i.qb to double
  %i.qd = fadd double %store_forwarded, %i.qc     ; 2 uses
  store double %i.qd, ptr %i.pt, align 8, !tbaa !192
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %i.qe = getelementptr [8 x i8], ptr %i.ob, i64 %indvars.iv.next509
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.next509
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !205
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !205
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.qk
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !170
  %i.qn = fpext float %i.qm to double
  %i.qo = fadd double %i.qd, %i.qn                ; 3 uses
  store double %i.qo, ptr %i.qe, align 8, !tbaa !192
  %indvars.iv.next509.1 = add nuw nsw i64 %indvars.iv508, 2 ; 2 uses
  %niter576.next.1 = add nuw i64 %niter576, 2     ; 2 uses
  %niter576.ncmp.1 = icmp eq i64 %niter576.next.1, %unroll_iter575
  br i1 %niter576.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, label %.lr.ph487, !llvm.loop !514

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.qp = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.qq = sub i64 %i.qp, %i.pi
  %i.qr = ashr exact i64 %i.qq, 3                 ; 2 uses
  %.sroa.speculated403 = call i64 @llvm.umin.i64(i64 %i.qr, i64 %i.pb) ; 4 uses
  %i.qs = icmp eq ptr %.sroa.011.1.i.i, %i.ob
  %i.qt = icmp uge i64 %i.qr, %i.pb
  %or.cond = or i1 %i.qs, %i.qt
  br i1 %or.cond, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !219
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %.sroa.speculated403
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !205
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.qy
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.qv, ptr %i.m, align 8, !tbaa !221
  store i32 %i.ra, ptr %i.n, align 4, !tbaa !205
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !154
  %.not.i.i290 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i290, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc291 unwind label %bb.bh

.noexc291:                                        ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !243
  %i.rf = invoke noundef double %i.re(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit293 unwind label %bb.bh, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit293:          ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bl, %bb.bj
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit306

bb.bi:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.rh = add nsw i64 %.sroa.speculated403, -1    ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.rh ; 2 uses
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !192
  %i.rk = fcmp ult double %i.ph, %i.rj
  br i1 %i.rk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 559)
          to label %bb.bk unwind label %bb.bh

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %.sroa.speculated403 ; 2 uses
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !192
  %i.rn = fcmp olt double %i.ph, %i.rm
  br i1 %i.rn, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 559)
          to label %bb.bm unwind label %bb.bh

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !219
  %i.rq = load ptr, ptr %i.y, align 8, !tbaa !241
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.rh
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !205
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rt
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.rp, ptr %i.k, align 8, !tbaa !221
  store i32 %i.rv, ptr %i.l, align 4, !tbaa !205
  %i.rw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !154
  %.not.i.i294 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i294, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc295 unwind label %bb.bu

.noexc295:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !243
  %i.sa = invoke noundef double %i.rz(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.bp unwind label %bb.bu, !inline_history !0 ; 3 uses

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.sb = load ptr, ptr %i.ro, align 8, !tbaa !219
  %i.sc = load ptr, ptr %i.y, align 8, !tbaa !241
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %.sroa.speculated403
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !205
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.sb, ptr %i.i, align 8, !tbaa !221
  store i32 %i.sh, ptr %i.j, align 4, !tbaa !205
  %i.si = load ptr, ptr %i.rw, align 8, !tbaa !154
  %.not.i.i298 = icmp eq ptr %i.si, null
  br i1 %.not.i.i298, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc299 unwind label %bb.bv

.noexc299:                                        ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.sj = load ptr, ptr %i.ry, align 8, !tbaa !243
  %i.sk = invoke noundef double %i.sj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.bs unwind label %bb.bv, !inline_history !0

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.sl = load double, ptr %i.rl, align 8, !tbaa !192
  %i.sm = load double, ptr %i.ri, align 8, !tbaa !192 ; 2 uses
  %i.sn = fsub double %i.sl, %i.sm                ; 2 uses
  %i.so = fcmp ult double %i.sn, 1.000000e+00
  br i1 %i.so, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sp = fsub double %i.ph, %i.sm
  %i.sq = fdiv double %i.sp, %i.sn
  %i.sr = fsub double %i.sk, %i.sa
  %i.ss = call double @llvm.fmuladd.f64(double %i.sq, double %i.sr, double %i.sa)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.bu:                                            ; preds = %bb.bo, %bb.bn
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit306

bb.bv:                                            ; preds = %bb.br, %bb.bq
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit306

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit293, %bb.bt, %bb.bs
  %.5 = phi double [ %i.rf, %_ZNKSt8functionIFdPKfiEEclES1_i.exit293 ], [ %i.ss, %bb.bt ], [ %i.sa, %bb.bs ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ob, i64 noundef %i.oa) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef %i.nr) #35
  br label %bb.cv

_ZNSt6vectorIdSaIdEED2Ev.exit306:                 ; preds = %bb.bu, %bb.bv, %bb.bh
  %.pn172 = phi { ptr, i32 } [ %i.rg, %bb.bh ], [ %i.st, %bb.bu ], [ %i.su, %bb.bv ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ob, i64 noundef %i.oa) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

_ZNSt6vectorIiSaIiEED2Ev.exit308:                 ; preds = %bb.bd, %_ZNSt6vectorIdSaIdEED2Ev.exit306, %bb.bc
  %.pn172.pn.pn = phi { ptr, i32 } [ %i.pr, %bb.bc ], [ %.pn172, %_ZNSt6vectorIdSaIdEED2Ev.exit306 ], [ %i.ps, %bb.bd ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef %i.nr) #35
  br label %bb.cw

bb.bw:                                            ; preds = %bb.aw
  br i1 %i.ae, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !219
  %i.sx = load i32, ptr %3, align 4, !tbaa !205
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.sw, ptr %i.g, align 8, !tbaa !221
  store i32 %i.ta, ptr %i.h, align 4, !tbaa !205
  %i.tb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !154
  %.not.i.i309 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i309, label %bb.by, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit310

bb.by:                                            ; preds = %bb.bx
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit310:          ; preds = %bb.bx
  %i.td = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !243
  %i.tf = call noundef double %i.te(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cv

bb.bz:                                            ; preds = %bb.bw
  %i.tg = zext nneg i32 %5 to i64                 ; 7 uses
  %i.th = shl nuw nsw i64 %i.tg, 2                ; 5 uses
  %i.ti = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.th) #34 ; 15 uses
  store i32 0, ptr %i.ti, align 4, !tbaa !205
  %i.tj = getelementptr i8, ptr %i.ti, i64 4
  %.idx.i.i.i.i.i.i.i313 = add nsw i64 %i.th, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.tj, i8 0, i64 %.idx.i.i.i.i.i.i.i313, i1 false), !tbaa !205
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bz
  %n.vec = and i64 %i.tg, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %index ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store <4 x i32> %vec.ind, ptr %i.tk, align 4, !tbaa !205
  store <4 x i32> %step.add, ptr %i.tl, align 4, !tbaa !205
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.tm = icmp eq i64 %index.next, %n.vec
  br i1 %i.tm, label %middle.block, label %vector.body, !llvm.loop !515

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.tg
  br i1 %cmp.n, label %.loopexit568, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bz, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.bz ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit568:                                     ; preds = %scalar.ph, %middle.block
  %i.tn = getelementptr i8, ptr %i.ti, i64 %i.th
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.z, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEEvT_SK_T0_(ptr nonnull %i.ti, ptr %i.tn, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.72") align 8 %6)
          to label %bb.ca unwind label %bb.cb

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv
  %i.tp = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.tp, ptr %i.to, align 4, !tbaa !205
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.tg
  br i1 %exitcond.not, label %.loopexit568, label %scalar.ph, !llvm.loop !516

bb.ca:                                            ; preds = %.loopexit568
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.tq = shl nuw nsw i64 %i.tg, 3                ; 4 uses
  %i.tr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tq) #34
          to label %.lr.ph.preheader unwind label %bb.cc ; 13 uses

.lr.ph.preheader:                                 ; preds = %bb.ca
  %i.ts = getelementptr i8, ptr %i.tr, i64 8
  %.idx.i.i.i.i.i.i.i321 = add nsw i64 %i.tq, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ts, i8 0, i64 %.idx.i.i.i.i.i.i.i321, i1 false), !tbaa !192
  %i.tt = load ptr, ptr %i.aa, align 8, !tbaa !222 ; 4 uses
  %i.tu = load ptr, ptr %i.z, align 8, !tbaa !241 ; 5 uses
  %i.tv = load ptr, ptr %i.y, align 8, !tbaa !241 ; 5 uses
  %i.tw = load i32, ptr %i.ti, align 4, !tbaa !205
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !205
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !205
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.ud
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !170
  %i.ug = fpext float %i.uf to double             ; 3 uses
  store double %i.ug, ptr %i.tr, align 8, !tbaa !192
  %i.uh = add nsw i64 %i.tg, -1                   ; 3 uses
  %xtraiter = and i64 %i.uh, 1
  %i.ui = icmp eq i32 %5, 2
  br i1 %i.ui, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.uh, -2
  br label %.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa, %.lr.ph.preheader
  %store_forwarded570.epil.init = phi double [ %i.ug, %.lr.ph.preheader ], [ %i.wr, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa ]
  %indvars.iv498.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next499.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod571 = trunc i64 %i.uh to i1
  call void @llvm.assume(i1 %lcmp.mod571)
  %i.uj = getelementptr [8 x i8], ptr %i.tr, i64 %indvars.iv498.epil.init
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv498.epil.init
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !205
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.um
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !205
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.up
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !205
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.us
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !170
  %i.uv = fpext float %i.uu to double
  %i.uw = fadd double %store_forwarded570.epil.init, %i.uv
  store double %i.uw, ptr %i.uj, align 8, !tbaa !192
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %i.ux = add nsw i32 %5, -1
  %i.uy = zext nneg i32 %i.ux to i64              ; 3 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %i.uy
  %i.va = load double, ptr %i.uz, align 8, !tbaa !192
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !148
  %i.vd = fpext float %i.vc to double
  %i.ve = fmul double %i.va, %i.vd                ; 4 uses
  %i.vf = ptrtoint ptr %i.tr to i64
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328
  %.016.i.i329 = phi i64 [ %.1.i.i334, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328 ], [ %i.tg, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader ] ; 2 uses
  %.sroa.011.015.i.i330 = phi ptr [ %.sroa.011.1.i.i333, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328 ], [ %i.tr, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader ] ; 2 uses
  %i.vg = lshr i64 %.016.i.i329, 1                ; 3 uses
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i330, i64 %i.vg ; 2 uses
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !192
  %i.vj = fcmp olt double %i.ve, %i.vi            ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vl = xor i64 %i.vg, -1
  %i.vm = add nsw i64 %.016.i.i329, %i.vl
  %.sroa.011.1.i.i333 = select i1 %i.vj, ptr %.sroa.011.015.i.i330, ptr %i.vk ; 3 uses
  %.1.i.i334 = select i1 %i.vj, i64 %i.vg, i64 %i.vm ; 2 uses
  %i.vn = icmp sgt i64 %.1.i.i334, 0
  br i1 %i.vn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335, !llvm.loop !5

bb.cb:                                            ; preds = %.loopexit568
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit356

bb.cc:                                            ; preds = %bb.ca
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit356

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded570 = phi double [ %i.ug, %.lr.ph.preheader.new ], [ %i.wr, %.lr.ph ]
  %indvars.iv498 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next499.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.vq = getelementptr [8 x i8], ptr %i.tr, i64 %indvars.iv498
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv498
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !205
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !205
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !205
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.vz
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !170
  %i.wc = fpext float %i.wb to double
  %i.wd = fadd double %store_forwarded570, %i.wc  ; 2 uses
  store double %i.wd, ptr %i.vq, align 8, !tbaa !192
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1 ; 2 uses
  %i.we = getelementptr [8 x i8], ptr %i.tr, i64 %indvars.iv.next499
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %indvars.iv.next499
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !205
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.wh
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !205
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !205
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.wn
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !170
  %i.wq = fpext float %i.wp to double
  %i.wr = fadd double %i.wd, %i.wq                ; 3 uses
  store double %i.wr, ptr %i.we, align 8, !tbaa !192
  %indvars.iv.next499.1 = add nuw nsw i64 %indvars.iv498, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !517

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328
  %i.ws = ptrtoint ptr %.sroa.011.1.i.i333 to i64
  %i.wt = sub i64 %i.ws, %i.vf
  %i.wu = ashr exact i64 %i.wt, 3                 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.wu, i64 %i.uy) ; 4 uses
  %i.wv = icmp eq ptr %.sroa.011.1.i.i333, %i.tr
  %i.ww = icmp uge i64 %i.wu, %i.uy
  %or.cond191 = or i1 %i.wv, %i.ww
  br i1 %or.cond191, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !219
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %.sroa.speculated
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !205
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.xb
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !205
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.xe
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.wy, ptr %i.e, align 8, !tbaa !221
  store i32 %i.xg, ptr %i.f, align 4, !tbaa !205
  %i.xh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !154
  %.not.i.i337 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i337, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc338 unwind label %bb.cg

.noexc338:                                        ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.xj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !243
  %i.xl = invoke noundef double %i.xk(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit340 unwind label %bb.cg, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit340:          ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit352

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.ck, %bb.ci
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit354

bb.ch:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335
  %i.xn = add nsw i64 %.sroa.speculated, -1       ; 2 uses
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %i.xn ; 2 uses
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !192
  %i.xq = fcmp ult double %i.ve, %i.xp
  br i1 %i.xq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 565)
          to label %bb.cj unwind label %bb.cg

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %.sroa.speculated ; 2 uses
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !192
  %i.xt = fcmp olt double %i.ve, %i.xs
  br i1 %i.xt, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 565)
          to label %bb.cl unwind label %bb.cg

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !219
  %i.xw = load ptr, ptr %i.z, align 8, !tbaa !241
  %i.xx = load ptr, ptr %i.y, align 8, !tbaa !241
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.xn
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !205
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.xx, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !205
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.xw, i64 %i.yd
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.xv, ptr %i.c, align 8, !tbaa !221
  store i32 %i.yf, ptr %i.d, align 4, !tbaa !205
  %i.yg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !154
  %.not.i.i341 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i341, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc342 unwind label %bb.ct

.noexc342:                                        ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.yi = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !243
  %i.yk = invoke noundef double %i.yj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.co unwind label %bb.ct, !inline_history !0 ; 3 uses

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.yl = load ptr, ptr %i.xu, align 8, !tbaa !219
  %i.ym = load ptr, ptr %i.z, align 8, !tbaa !241
  %i.yn = load ptr, ptr %i.y, align 8, !tbaa !241
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %.sroa.speculated
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !205
  %i.yq = sext i32 %i.yp to i64
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.yn, i64 %i.yq
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !205
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.ym, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.yl, ptr %i.a, align 8, !tbaa !221
  store i32 %i.yv, ptr %i.b, align 4, !tbaa !205
  %i.yw = load ptr, ptr %i.yg, align 8, !tbaa !154
  %.not.i.i345 = icmp eq ptr %i.yw, null
  br i1 %.not.i.i345, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc346 unwind label %bb.cu

.noexc346:                                        ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.yx = load ptr, ptr %i.yi, align 8, !tbaa !243
  %i.yy = invoke noundef double %i.yx(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.cr unwind label %bb.cu, !inline_history !0

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.yz = load double, ptr %i.xr, align 8, !tbaa !192
  %i.za = load double, ptr %i.xo, align 8, !tbaa !192 ; 2 uses
  %i.zb = fsub double %i.yz, %i.za                ; 2 uses
  %i.zc = fcmp ult double %i.zb, 1.000000e+00
  br i1 %i.zc, label %_ZNSt6vectorIiSaIiEED2Ev.exit352, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.zd = fsub double %i.ve, %i.za
  %i.ze = fdiv double %i.zd, %i.zb
  %i.zf = fsub double %i.yy, %i.yk
  %i.zg = call double @llvm.fmuladd.f64(double %i.ze, double %i.zf, double %i.yk)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit352

bb.ct:                                            ; preds = %bb.cn, %bb.cm
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit354

bb.cu:                                            ; preds = %bb.cq, %bb.cp
  %i.zi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit354

_ZNSt6vectorIiSaIiEED2Ev.exit352:                 ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit340, %bb.cs, %bb.cr
  %.7 = phi double [ %i.xl, %_ZNKSt8functionIFdPKfiEEclES1_i.exit340 ], [ %i.zg, %bb.cs ], [ %i.yk, %bb.cr ]
  call void @_ZdlPvm(ptr noundef nonnull %i.tr, i64 noundef %i.tq) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.th) #35
  br label %bb.cv

_ZNSt6vectorIdSaIdEED2Ev.exit354:                 ; preds = %bb.ct, %bb.cu, %bb.cg
  %.pn165 = phi { ptr, i32 } [ %i.xm, %bb.cg ], [ %i.zh, %bb.ct ], [ %i.zi, %bb.cu ]
  call void @_ZdlPvm(ptr noundef nonnull %i.tr, i64 noundef %i.tq) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit356

_ZNSt6vectorIiSaIiEED2Ev.exit356:                 ; preds = %bb.cc, %_ZNSt6vectorIdSaIdEED2Ev.exit354, %bb.cb
  %.pn165.pn.pn = phi { ptr, i32 } [ %i.vo, %bb.cb ], [ %.pn165, %_ZNSt6vectorIdSaIdEED2Ev.exit354 ], [ %i.vp, %bb.cc ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.th) #35
  br label %bb.cw

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit352, %_ZNKSt8functionIFdPKfiEEclES1_i.exit310, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt8functionIFdPKfiEEclES1_i.exit277, %_ZNSt6vectorIdSaIdEED2Ev.exit273, %_ZNKSt8functionIFdPKfiEEclES1_i.exit221, %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNKSt8functionIFdPKfiEEclES1_i.exit
  %.8 = phi double [ %i.am, %_ZNKSt8functionIFdPKfiEEclES1_i.exit ], [ %.1462, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.ha, %_ZNKSt8functionIFdPKfiEEclES1_i.exit221 ], [ %.3469, %_ZNSt6vectorIdSaIdEED2Ev.exit273 ], [ %i.np, %_ZNKSt8functionIFdPKfiEEclES1_i.exit277 ], [ %.5, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.tf, %_ZNKSt8functionIFdPKfiEEclES1_i.exit310 ], [ %.7, %_ZNSt6vectorIiSaIiEED2Ev.exit352 ]
  ret double %.8

bb.cw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit356, %_ZNSt6vectorIiSaIiEED2Ev.exit308, %_ZNSt6vectorIdSaIdEED2Ev.exit275, %_ZNSt6vectorIdSaIdEED2Ev.exit219
  %.pn187.pn.pn = phi { ptr, i32 } [ %.pn187.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit219 ], [ %.pn180.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit275 ], [ %.pn165.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit356 ], [ %.pn172.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit308 ]
  resume { ptr, i32 } %.pn187.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !218  ; 6 uses
  %i.e = icmp slt i32 %i.d, 2                     ; 2 uses
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d
end_hunk_1
begin_hunk_2_@_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi:bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.80)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !220  ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !175  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.u = sub nuw nsw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.u)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.f:                                             ; preds = %.loopexit
  %i.v = icmp ugt i64 %i.s, %i.l
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.w, ptr %i.m, align 8, !tbaa !220
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !222
  %i.z = icmp eq ptr %i.y, null
  %i.aa = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.a, i32 %i.aa)
  %_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined._ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined.81 = select i1 %i.z, ptr @_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined, ptr @_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined.81
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull %_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined._ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined.81, ptr nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.a, align 8, !tbaa !223
  store ptr %2, ptr %i.b, align 8, !tbaa !221
  store ptr %3, ptr %i.c, align 8, !tbaa !221
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !222
  %i.g = icmp eq ptr %i.f, null
  %i.h = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.h)
  %_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined.82 = select i1 %i.g, ptr @_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined, ptr @_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined.82
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull %_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined.82, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM18RegressionMAPELOSS7GetNameEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8LightGBM18RegressionMAPELOSS17IsConstantHessianEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8LightGBM18RegressionMAPELOSS17IsRenewTreeOutputEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiS7_i(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1, ptr nofree noundef align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.99, align 8             ; 7 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %7 = alloca %class.anon.98, align 8             ; 6 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 9 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  store ptr %3, ptr %i.q, align 8, !tbaa !241
  store ptr %4, ptr %i.r, align 8, !tbaa !241
  %i.s = icmp eq ptr %4, null
  %i.t = icmp slt i32 %5, 2                       ; 2 uses
  br i1 %i.s, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !219
  %i.w = load i32, ptr %3, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.v, ptr %i.o, align 8, !tbaa !221
  store i32 %i.w, ptr %i.p, align 4, !tbaa !205
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !154
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit:             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !243
  %i.ab = call noundef double %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.az

bb.e:                                             ; preds = %bb.b
  %i.ac = zext nneg i32 %5 to i64                 ; 7 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 5 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #34 ; 15 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !205
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ad, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !205
  %min.iters.check299 = icmp ult i32 %5, 8
  br i1 %min.iters.check299, label %scalar.ph298.preheader, label %vector.ph300

vector.ph300:                                     ; preds = %bb.e
  %n.vec301 = and i64 %i.ac, 2147483640           ; 3 uses
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next306, %vector.body302 ] ; 2 uses
  %vec.ind304 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph300 ], [ %vec.ind.next307, %vector.body302 ] ; 3 uses
  %step.add305 = add <4 x i32> %vec.ind304, splat (i32 4)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index303 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %vec.ind304, ptr %i.ag, align 4, !tbaa !205
  store <4 x i32> %step.add305, ptr %i.ah, align 4, !tbaa !205
  %index.next306 = add nuw i64 %index303, 8       ; 2 uses
  %vec.ind.next307 = add <4 x i32> %vec.ind304, splat (i32 8)
  %i.ai = icmp eq i64 %index.next306, %n.vec301
  br i1 %i.ai, label %middle.block308, label %vector.body302, !llvm.loop !789

middle.block308:                                  ; preds = %vector.body302
  %cmp.n309 = icmp eq i64 %n.vec301, %i.ac
  br i1 %cmp.n309, label %.loopexit, label %scalar.ph298.preheader

scalar.ph298.preheader:                           ; preds = %bb.e, %middle.block308
  %indvars.iv282.ph = phi i64 [ 0, %bb.e ], [ %n.vec301, %middle.block308 ]
  br label %scalar.ph298

.loopexit:                                        ; preds = %scalar.ph298, %middle.block308
  %i.aj = getelementptr i8, ptr %i.ae, i64 %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %7, align 8
  %.sroa.2248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2248.0..sroa_idx, align 8
  %.sroa.3249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.q, ptr %.sroa.3249.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_T0_(ptr nonnull %i.ae, ptr %i.aj, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.100") align 8 %7)
          to label %bb.f unwind label %bb.g

scalar.ph298:                                     ; preds = %scalar.ph298.preheader, %scalar.ph298
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %scalar.ph298 ], [ %indvars.iv282.ph, %scalar.ph298.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv282
  %i.al = trunc nuw nsw i64 %indvars.iv282 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !205
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond286.not = icmp eq i64 %indvars.iv.next283, %i.ac
  br i1 %exitcond286.not, label %.loopexit, label %scalar.ph298, !llvm.loop !790

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.am = shl nuw nsw i64 %i.ac, 3                ; 4 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #34
          to label %.lr.ph274.preheader unwind label %bb.h ; 13 uses

.lr.ph274.preheader:                              ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.idx.i.i.i.i.i.i.i94 = add nsw i64 %i.am, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i94, i1 false), !tbaa !192
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !241 ; 5 uses
  %i.ar = load i32, ptr %i.ae, align 4, !tbaa !205
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !205
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !175 ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !170
  %i.az = fpext float %i.ay to double             ; 3 uses
  store double %i.az, ptr %i.an, align 8, !tbaa !192
  %i.ba = add nsw i64 %i.ac, -1                   ; 3 uses
  %xtraiter315 = and i64 %i.ba, 1
  %i.bb = icmp eq i32 %5, 2
  br i1 %i.bb, label %.lr.ph274.epil.preheader, label %.lr.ph274.preheader.new

.lr.ph274.preheader.new:                          ; preds = %.lr.ph274.preheader
  %unroll_iter318 = and i64 %i.ba, -2
  br label %.lr.ph274

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa: ; preds = %.lr.ph274
  %lcmp.mod316.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, label %.lr.ph274.epil.preheader

.lr.ph274.epil.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph274.preheader
  %store_forwarded.epil.init = phi double [ %i.az, %.lr.ph274.preheader ], [ %i.cy, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ]
  %indvars.iv287.epil.init = phi i64 [ 1, %.lr.ph274.preheader ], [ %indvars.iv.next288.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod317 = trunc i64 %i.ba to i1
  call void @llvm.assume(i1 %lcmp.mod317)
  %i.bc = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv287.epil.init
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv287.epil.init
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !205
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !205
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !170
  %i.bl = fpext float %i.bk to double
  %i.bm = fadd double %store_forwarded.epil.init, %i.bl
  store double %i.bm, ptr %i.bc, align 8, !tbaa !192
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph274.epil.preheader
  %i.bn = add nsw i32 %5, -1
  %i.bo = zext nneg i32 %i.bn to i64              ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !192
  %i.br = fmul double %i.bq, 5.000000e-01         ; 4 uses
  %i.bs = ptrtoint ptr %i.an to i64
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %i.bt = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.bt ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !192
  %i.bw = fcmp olt double %i.br, %i.bv            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = xor i64 %i.bt, -1
  %i.bz = add nsw i64 %.016.i.i, %i.by
  %.sroa.011.1.i.i = select i1 %i.bw, ptr %.sroa.011.015.i.i, ptr %i.bx ; 3 uses
  %.1.i.i = select i1 %i.bw, i64 %i.bt, i64 %i.bz ; 2 uses
  %i.ca = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ca, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit, !llvm.loop !5

bb.g:                                             ; preds = %.loopexit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit113

bb.h:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit113

.lr.ph274:                                        ; preds = %.lr.ph274, %.lr.ph274.preheader.new
  %store_forwarded = phi double [ %i.az, %.lr.ph274.preheader.new ], [ %i.cy, %.lr.ph274 ]
  %indvars.iv287 = phi i64 [ 1, %.lr.ph274.preheader.new ], [ %indvars.iv.next288.1, %.lr.ph274 ] ; 4 uses
  %niter319 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %niter319.next.1, %.lr.ph274 ]
  %i.cd = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv287
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv287
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !205
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !205
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !170
  %i.cm = fpext float %i.cl to double
  %i.cn = fadd double %store_forwarded, %i.cm     ; 2 uses
  store double %i.cn, ptr %i.cd, align 8, !tbaa !192
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv.next288
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next288
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !205
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !205
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !170
  %i.cx = fpext float %i.cw to double
  %i.cy = fadd double %i.cn, %i.cx                ; 3 uses
  store double %i.cy, ptr %i.co, align 8, !tbaa !192
  %indvars.iv.next288.1 = add nuw nsw i64 %indvars.iv287, 2 ; 2 uses
  %niter319.next.1 = add nuw i64 %niter319, 2     ; 2 uses
  %niter319.ncmp.1 = icmp eq i64 %niter319.next.1, %unroll_iter318
  br i1 %niter319.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, label %.lr.ph274, !llvm.loop !791

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.cz = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.da = sub i64 %i.cz, %i.bs
  %i.db = ashr exact i64 %i.da, 3                 ; 2 uses
  %.sroa.speculated208 = call i64 @llvm.umin.i64(i64 %i.db, i64 %i.bo) ; 4 uses
  %i.dc = icmp eq ptr %.sroa.011.1.i.i, %i.an
  %i.dd = icmp uge i64 %i.db, %i.bo
  %or.cond = or i1 %i.dc, %i.dd
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !219
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.speculated208
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !205
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.df, ptr %i.m, align 8, !tbaa !221
  store i32 %i.dk, ptr %i.n, align 4, !tbaa !205
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !154
  %.not.i.i97 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i97, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc98 unwind label %bb.l

.noexc98:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !243
  %i.dp = invoke noundef double %i.do(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit100 unwind label %bb.l, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit100:          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.p, %bb.n
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit111

bb.m:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.dr = add nsw i64 %.sroa.speculated208, -1    ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dr ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !192
  %i.du = fcmp ult double %i.br, %i.dt
  br i1 %i.du, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 652)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.speculated208 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !192
  %i.dx = fcmp olt double %i.br, %i.dw
  br i1 %i.dx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 652)
          to label %bb.q unwind label %bb.l

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !219
  %i.ea = load ptr, ptr %i.q, align 8, !tbaa !241
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dr
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !205
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.dz, ptr %i.k, align 8, !tbaa !221
  store i32 %i.ef, ptr %i.l, align 4, !tbaa !205
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !154
  %.not.i.i101 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i101, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc102 unwind label %bb.y

.noexc102:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !243
  %i.ek = invoke noundef double %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.t unwind label %bb.y, !inline_history !0 ; 3 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.el = load ptr, ptr %i.dy, align 8, !tbaa !219
  %i.em = load ptr, ptr %i.q, align 8, !tbaa !241
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.speculated208
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !205
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.el, ptr %i.i, align 8, !tbaa !221
  store i32 %i.er, ptr %i.j, align 4, !tbaa !205
  %i.es = load ptr, ptr %i.eg, align 8, !tbaa !154
  %.not.i.i105 = icmp eq ptr %i.es, null
  br i1 %.not.i.i105, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc106 unwind label %bb.z

.noexc106:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.et = load ptr, ptr %i.ei, align 8, !tbaa !243
  %i.eu = invoke noundef double %i.et(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.w unwind label %bb.z, !inline_history !0

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ev = load double, ptr %i.dv, align 8, !tbaa !192
  %i.ew = load double, ptr %i.ds, align 8, !tbaa !192 ; 2 uses
  %i.ex = fsub double %i.ev, %i.ew                ; 2 uses
  %i.ey = fcmp ult double %i.ex, 1.000000e+00
  br i1 %i.ey, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = fsub double %i.br, %i.ew
  %i.fa = fdiv double %i.ez, %i.ex
  %i.fb = fsub double %i.eu, %i.ek
  %i.fc = call double @llvm.fmuladd.f64(double %i.fa, double %i.fb, double %i.ek)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.y:                                             ; preds = %bb.s, %bb.r
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit111

bb.z:                                             ; preds = %bb.v, %bb.u
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit111

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit100, %bb.x, %bb.w
  %.1 = phi double [ %i.dp, %_ZNKSt8functionIFdPKfiEEclES1_i.exit100 ], [ %i.fc, %bb.x ], [ %i.ek, %bb.w ]
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.am) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #35
  br label %bb.az

_ZNSt6vectorIdSaIdEED2Ev.exit111:                 ; preds = %bb.y, %bb.z, %bb.l
  %.pn85 = phi { ptr, i32 } [ %i.dq, %bb.l ], [ %i.fd, %bb.y ], [ %i.fe, %bb.z ]
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.am) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit113

_ZNSt6vectorIiSaIiEED2Ev.exit113:                 ; preds = %bb.h, %_ZNSt6vectorIdSaIdEED2Ev.exit111, %bb.g
  %.pn85.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.g ], [ %.pn85, %_ZNSt6vectorIdSaIdEED2Ev.exit111 ], [ %i.cc, %bb.h ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #35
  br label %bb.ba

bb.aa:                                            ; preds = %bb.a
  br i1 %i.t, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !219
  %i.fh = load i32, ptr %3, align 4, !tbaa !205
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.fg, ptr %i.g, align 8, !tbaa !221
  store i32 %i.fk, ptr %i.h, align 4, !tbaa !205
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !154
  %.not.i.i114 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i114, label %bb.ac, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit115

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit115:          ; preds = %bb.ab
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !243
  %i.fp = call noundef double %i.fo(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.az

bb.ad:                                            ; preds = %bb.aa
  %i.fq = zext nneg i32 %5 to i64                 ; 7 uses
  %i.fr = shl nuw nsw i64 %i.fq, 2                ; 5 uses
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #34 ; 15 uses
  store i32 0, ptr %i.fs, align 4, !tbaa !205
  %i.ft = getelementptr i8, ptr %i.fs, i64 4
  %.idx.i.i.i.i.i.i.i118 = add nsw i64 %i.fr, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ft, i8 0, i64 %.idx.i.i.i.i.i.i.i118, i1 false), !tbaa !205
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ad
  %n.vec = and i64 %i.fq, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %index ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <4 x i32> %vec.ind, ptr %i.fu, align 4, !tbaa !205
  store <4 x i32> %step.add, ptr %i.fv, align 4, !tbaa !205
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !792

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fq
  br i1 %cmp.n, label %.loopexit311, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ad, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.ad ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit311:                                     ; preds = %scalar.ph, %middle.block
  %i.fx = getelementptr i8, ptr %i.fs, i64 %i.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEEvT_SK_T0_(ptr nonnull %i.fs, ptr %i.fx, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.103") align 8 %6)
          to label %bb.ae unwind label %bb.af

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv
  %i.fz = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !205
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.fq
  br i1 %exitcond.not, label %.loopexit311, label %scalar.ph, !llvm.loop !793

bb.ae:                                            ; preds = %.loopexit311
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ga = shl nuw nsw i64 %i.fq, 3                ; 4 uses
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #34
          to label %.lr.ph.preheader unwind label %bb.ag ; 13 uses

.lr.ph.preheader:                                 ; preds = %bb.ae
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %.idx.i.i.i.i.i.i.i126 = add nsw i64 %i.ga, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.gc, i8 0, i64 %.idx.i.i.i.i.i.i.i126, i1 false), !tbaa !192
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ge = load ptr, ptr %i.r, align 8, !tbaa !241 ; 5 uses
  %i.gf = load ptr, ptr %i.q, align 8, !tbaa !241 ; 5 uses
  %i.gg = load i32, ptr %i.fs, align 4, !tbaa !205
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !205
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !205
  %i.gn = sext i32 %i.gm to i64
  %i.go = load ptr, ptr %i.gd, align 8, !tbaa !175 ; 4 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gn
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !170
  %i.gr = fpext float %i.gq to double             ; 3 uses
  store double %i.gr, ptr %i.gb, align 8, !tbaa !192
  %i.gs = add nsw i64 %i.fq, -1                   ; 3 uses
  %xtraiter = and i64 %i.gs, 1
  %i.gt = icmp eq i32 %5, 2
  br i1 %i.gt, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gs, -2
  br label %.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa, %.lr.ph.preheader
  %store_forwarded313.epil.init = phi double [ %i.gr, %.lr.ph.preheader ], [ %i.iz, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa ]
  %indvars.iv277.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next278.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod314 = trunc i64 %i.gs to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %i.gu = getelementptr [8 x i8], ptr %i.gb, i64 %indvars.iv277.epil.init
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv277.epil.init
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !205
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !205
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !205
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.hd
  %i.hf = load float, ptr %i.he, align 4, !tbaa !170
  %i.hg = fpext float %i.hf to double
  %i.hh = fadd double %store_forwarded313.epil.init, %i.hg
  store double %i.hh, ptr %i.gu, align 8, !tbaa !192
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %i.hi = add nsw i32 %5, -1
  %i.hj = zext nneg i32 %i.hi to i64              ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.hj
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !192
  %i.hm = fmul double %i.hl, 5.000000e-01         ; 4 uses
  %i.hn = ptrtoint ptr %i.gb to i64
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133
  %.016.i.i134 = phi i64 [ %.1.i.i139, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133 ], [ %i.fq, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader ] ; 2 uses
  %.sroa.011.015.i.i135 = phi ptr [ %.sroa.011.1.i.i138, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133 ], [ %i.gb, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader ] ; 2 uses
  %i.ho = lshr i64 %.016.i.i134, 1                ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i135, i64 %i.ho ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !192
  %i.hr = fcmp olt double %i.hm, %i.hq            ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ht = xor i64 %i.ho, -1
  %i.hu = add nsw i64 %.016.i.i134, %i.ht
  %.sroa.011.1.i.i138 = select i1 %i.hr, ptr %.sroa.011.015.i.i135, ptr %i.hs ; 3 uses
  %.1.i.i139 = select i1 %i.hr, i64 %i.ho, i64 %i.hu ; 2 uses
  %i.hv = icmp sgt i64 %.1.i.i139, 0
  br i1 %i.hv, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit140, !llvm.loop !5

bb.af:                                            ; preds = %.loopexit311
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit161

bb.ag:                                            ; preds = %bb.ae
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit161

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded313 = phi double [ %i.gr, %.lr.ph.preheader.new ], [ %i.iz, %.lr.ph ]
  %indvars.iv277 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next278.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.hy = getelementptr [8 x i8], ptr %i.gb, i64 %indvars.iv277
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv277
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !205
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !205
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !205
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !170
  %i.ik = fpext float %i.ij to double
  %i.il = fadd double %store_forwarded313, %i.ik  ; 2 uses
  store double %i.il, ptr %i.hy, align 8, !tbaa !192
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.im = getelementptr [8 x i8], ptr %i.gb, i64 %indvars.iv.next278
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next278
  %i.io = load i32, ptr %i.in, align 4, !tbaa !205
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !205
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !205
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.iv
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !170
  %i.iy = fpext float %i.ix to double
  %i.iz = fadd double %i.il, %i.iy                ; 3 uses
  store double %i.iz, ptr %i.im, align 8, !tbaa !192
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !794

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit140: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133
  %i.ja = ptrtoint ptr %.sroa.011.1.i.i138 to i64
  %i.jb = sub i64 %i.ja, %i.hn
  %i.jc = ashr exact i64 %i.jb, 3                 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.jc, i64 %i.hj) ; 4 uses
  %i.jd = icmp eq ptr %.sroa.011.1.i.i138, %i.gb
  %i.je = icmp uge i64 %i.jc, %i.hj
  %or.cond91 = or i1 %i.jd, %i.je
  br i1 %or.cond91, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit140
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !219
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.sroa.speculated
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !205
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !205
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.jg, ptr %i.e, align 8, !tbaa !221
  store i32 %i.jo, ptr %i.f, align 4, !tbaa !205
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !154
  %.not.i.i142 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i142, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc143 unwind label %bb.ak

.noexc143:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !243
  %i.jt = invoke noundef double %i.js(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit145 unwind label %bb.ak, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit145:          ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit157

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ao, %bb.am
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit159

bb.al:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit140
  %i.jv = add nsw i64 %.sroa.speculated, -1       ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.jv ; 2 uses
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !192
  %i.jy = fcmp ult double %i.hm, %i.jx
  br i1 %i.jy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 658)
          to label %bb.an unwind label %bb.ak

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.sroa.speculated ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !192
  %i.kb = fcmp olt double %i.hm, %i.ka
  br i1 %i.kb, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 658)
          to label %bb.ap unwind label %bb.ak

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !219
  %i.ke = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.kf = load ptr, ptr %i.q, align 8, !tbaa !241
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.jv
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !205
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !205
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.kd, ptr %i.c, align 8, !tbaa !221
  store i32 %i.kn, ptr %i.d, align 4, !tbaa !205
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !154
  %.not.i.i146 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i146, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc147 unwind label %bb.ax

.noexc147:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !243
  %i.ks = invoke noundef double %i.kr(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.as unwind label %bb.ax, !inline_history !0 ; 3 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.kt = load ptr, ptr %i.kc, align 8, !tbaa !219
  %i.ku = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.kv = load ptr, ptr %i.q, align 8, !tbaa !241
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.sroa.speculated
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !205
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !205
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.kt, ptr %i.a, align 8, !tbaa !221
  store i32 %i.ld, ptr %i.b, align 4, !tbaa !205
  %i.le = load ptr, ptr %i.ko, align 8, !tbaa !154
  %.not.i.i150 = icmp eq ptr %i.le, null
  br i1 %.not.i.i150, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc151 unwind label %bb.ay

.noexc151:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.lf = load ptr, ptr %i.kq, align 8, !tbaa !243
  %i.lg = invoke noundef double %i.lf(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.av unwind label %bb.ay, !inline_history !0

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lh = load double, ptr %i.jz, align 8, !tbaa !192
  %i.li = load double, ptr %i.jw, align 8, !tbaa !192 ; 2 uses
  %i.lj = fsub double %i.lh, %i.li                ; 2 uses
  %i.lk = fcmp ult double %i.lj, 1.000000e+00
  br i1 %i.lk, label %_ZNSt6vectorIiSaIiEED2Ev.exit157, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ll = fsub double %i.hm, %i.li
  %i.lm = fdiv double %i.ll, %i.lj
  %i.ln = fsub double %i.lg, %i.ks
  %i.lo = call double @llvm.fmuladd.f64(double %i.lm, double %i.ln, double %i.ks)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit157

bb.ax:                                            ; preds = %bb.ar, %bb.aq
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit159

bb.ay:                                            ; preds = %bb.au, %bb.at
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit159

_ZNSt6vectorIiSaIiEED2Ev.exit157:                 ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit145, %bb.aw, %bb.av
  %.3 = phi double [ %i.jt, %_ZNKSt8functionIFdPKfiEEclES1_i.exit145 ], [ %i.lo, %bb.aw ], [ %i.ks, %bb.av ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.ga) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fr) #35
  br label %bb.az

_ZNSt6vectorIdSaIdEED2Ev.exit159:                 ; preds = %bb.ax, %bb.ay, %bb.ak
  %.pn78 = phi { ptr, i32 } [ %i.ju, %bb.ak ], [ %i.lp, %bb.ax ], [ %i.lq, %bb.ay ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.ga) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit161

_ZNSt6vectorIiSaIiEED2Ev.exit161:                 ; preds = %bb.ag, %_ZNSt6vectorIdSaIdEED2Ev.exit159, %bb.af
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.af ], [ %.pn78, %_ZNSt6vectorIdSaIdEED2Ev.exit159 ], [ %i.hx, %bb.ag ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fr) #35
  br label %bb.ba

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit157, %_ZNKSt8functionIFdPKfiEEclES1_i.exit115, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt8functionIFdPKfiEEclES1_i.exit
  %.4 = phi double [ %i.ab, %_ZNKSt8functionIFdPKfiEEclES1_i.exit ], [ %.1, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.fp, %_ZNKSt8functionIFdPKfiEEclES1_i.exit115 ], [ %.3, %_ZNSt6vectorIiSaIiEED2Ev.exit157 ]
  ret double %.4

bb.ba:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit161, %_ZNSt6vectorIiSaIiEED2Ev.exit113
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit161 ], [ %.pn85.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit113 ]
  resume { ptr, i32 } %.pn85.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !218  ; 2 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.f = load float, ptr %i.e, align 4, !tbaa !170
  br label %bb.n

end_hunk_2
