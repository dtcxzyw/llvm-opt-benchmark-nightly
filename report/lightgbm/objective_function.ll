Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4075
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiS7_i:bb.a
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca ptr, align 8                      ; 11 uses
  %i.z = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %"class.std::vector.13", align 8    ; 11 uses
  %9 = alloca %"class.std::vector.13", align 8    ; 11 uses
  store ptr %3, ptr %i.y, align 8, !tbaa !240
  store ptr %4, ptr %i.z, align 8, !tbaa !240
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !221
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = icmp eq ptr %4, null                    ; 2 uses
  %i.ae = icmp slt i32 %5, 2                      ; 4 uses
  br i1 %i.ac, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  br i1 %i.ad, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !218
  %i.ah = load i32, ptr %3, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !220
  store i32 %i.ah, ptr %i.x, align 4, !tbaa !204
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !153
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit:             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !242
  %i.am = call noundef double %i.al(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.cf

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.an = zext nneg i32 %5 to i64                 ; 4 uses
  %i.ao = shl nuw nsw i64 %i.an, 3                ; 3 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #34
          to label %.lr.ph460 unwind label %bb.g  ; 14 uses

.lr.ph460:                                        ; preds = %bb.f
  store ptr %i.ap, ptr %8, align 8, !tbaa !192
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !194
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !191
  %i.as = getelementptr i8, ptr %i.ap, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ao, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !191
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !193
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.h

._crit_edge461:                                   ; preds = %bb.k
  %i.ay = add nsw i32 %5, -1
  %i.az = uitofp nneg i32 %i.ay to double
  %i.ba = fmul nnan double %i.az, 5.000000e-01    ; 2 uses
  %i.bb = fptosi double %i.ba to i32              ; 9 uses
  %i.bc = add nuw nsw i32 %i.bb, 1                ; 5 uses
  %.not178 = icmp slt i32 %i.bc, %5
  br i1 %.not178, label %bb.l, label %.lr.ph.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit204

bb.h:                                             ; preds = %.lr.ph460, %bb.k
  %indvars.iv483 = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next484, %bb.k ] ; 3 uses
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !218
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv483
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.be, ptr %i.u, align 8, !tbaa !220
  store i32 %i.bh, ptr %i.v, align 4, !tbaa !204
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !153
  %.not.i.i185 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i185, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc186 unwind label %.loopexit.split-lp

.noexc186:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !242
  %i.bk = invoke noundef double %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %bb.k unwind label %.loopexit, !inline_history !0

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv483
  store double %i.bk, ptr %i.bl, align 8, !tbaa !191
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %i.an
  br i1 %exitcond487.not, label %._crit_edge461, label %bb.h, !llvm.loop !391

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.lr.ph.preheader.i:                               ; preds = %._crit_edge461
  %.pre.i = load double, ptr %i.ap, align 8, !tbaa !191 ; 2 uses
  %i.bm = add nsw i64 %i.an, -1                   ; 3 uses
  %xtraiter565 = and i64 %i.bm, 1
  %i.bn = icmp eq i32 %5, 2
  br i1 %i.bn, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter571 = and i64 %i.bm, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %i.bo = phi double [ %.pre.i, %.lr.ph.preheader.i.new ], [ %i.by, %.lr.ph.i ] ; 2 uses
  %.013.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.bx, %.lr.ph.i ] ; 4 uses
  %.01012.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %niter572 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter572.next.1, %.lr.ph.i ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.013.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !191 ; 2 uses
  %i.br = fcmp olt double %i.bq, %i.bo            ; 2 uses
  %spec.select.i = select i1 %i.br, i64 %.013.i, i64 %.01012.i
  %i.bs = add nuw i64 %.013.i, 1                  ; 2 uses
  %i.bt = select i1 %i.br, double %i.bq, double %i.bo ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !191 ; 2 uses
  %i.bw = fcmp olt double %i.bv, %i.bt            ; 2 uses
  %spec.select.i.1 = select i1 %i.bw, i64 %i.bs, i64 %spec.select.i ; 3 uses
  %i.bx = add nuw i64 %.013.i, 2                  ; 2 uses
  %i.by = select i1 %i.bw, double %i.bv, double %i.bt ; 2 uses
  %niter572.next.1 = add nuw i64 %niter572, 2     ; 2 uses
  %niter572.ncmp.1 = icmp eq i64 %niter572.next.1, %unroll_iter571
  br i1 %niter572.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod568.not = icmp eq i64 %xtraiter565, 0
  br i1 %lcmp.mod568.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init567 = phi double [ %.pre.i, %.lr.ph.preheader.i ], [ %i.by, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.unr-lcssa ]
  %.013.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bx, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.unr-lcssa ] ; 2 uses
  %.01012.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.unr-lcssa ]
  %lcmp.mod570 = trunc i64 %i.bm to i1
  call void @llvm.assume(i1 %lcmp.mod570)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.013.i.epil.init
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !191
  %i.cb = fcmp olt double %i.ca, %.epil.init567
  %spec.select.i.epil = select i1 %i.cb, i64 %.013.i.epil.init, i64 %.01012.i.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit

_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit: ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.unr-lcssa, %.lr.ph.i.epil.preheader
  %spec.select.i.lcssa = phi i64 [ %spec.select.i.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %spec.select.i.lcssa
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !191
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.l:                                             ; preds = %._crit_edge461
  %i.ce = uitofp nneg i32 %i.bb to double
  %i.cf = fsub double %i.ba, %i.ce                ; 2 uses
  %i.cg = lshr i32 %5, 1
  %.not179 = icmp samesign ugt i32 %i.cg, %i.bb
  br i1 %.not179, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %8, i32 noundef 0, i32 noundef %5, i32 noundef %i.bb)
          to label %bb.n unwind label %bb.q       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ci = zext nneg i32 %i.bb to i64
  %i.cj = load ptr, ptr %8, align 8, !tbaa !192   ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !191 ; 2 uses
  %i.cm = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cm ; 4 uses
  %i.co = sub nuw nsw i32 %5, %i.bc               ; 3 uses
  %i.cp = icmp ugt i32 %i.co, 1
  br i1 %i.cp, label %.lr.ph.preheader.i190, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit

.lr.ph.preheader.i190:                            ; preds = %bb.n
  %i.cq = zext nneg i32 %i.co to i64
  %.pre.i191 = load double, ptr %i.cn, align 8, !tbaa !191 ; 2 uses
  %i.cr = add nsw i64 %i.cq, -1                   ; 3 uses
  %xtraiter573 = and i64 %i.cr, 1
  %i.cs = icmp eq i32 %i.co, 2
  br i1 %i.cs, label %.lr.ph.i192.epil.preheader, label %.lr.ph.preheader.i190.new

.lr.ph.preheader.i190.new:                        ; preds = %.lr.ph.preheader.i190
  %unroll_iter579 = and i64 %i.cr, -2
  br label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %.lr.ph.i192, %.lr.ph.preheader.i190.new
  %i.ct = phi double [ %.pre.i191, %.lr.ph.preheader.i190.new ], [ %i.dd, %.lr.ph.i192 ] ; 2 uses
  %.014.i = phi i64 [ 1, %.lr.ph.preheader.i190.new ], [ %i.dc, %.lr.ph.i192 ] ; 4 uses
  %.01013.i = phi i64 [ 0, %.lr.ph.preheader.i190.new ], [ %spec.select.i193.1, %.lr.ph.i192 ]
  %niter580 = phi i64 [ 0, %.lr.ph.preheader.i190.new ], [ %niter580.next.1, %.lr.ph.i192 ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.014.i
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !191 ; 2 uses
  %i.cw = fcmp ogt double %i.cv, %i.ct            ; 2 uses
  %spec.select.i193 = select i1 %i.cw, i64 %.014.i, i64 %.01013.i
  %i.cx = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %i.cy = select i1 %i.cw, double %i.cv, double %i.ct ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cx
  %i.da = load double, ptr %i.cz, align 8, !tbaa !191 ; 2 uses
  %i.db = fcmp ogt double %i.da, %i.cy            ; 2 uses
  %spec.select.i193.1 = select i1 %i.db, i64 %i.cx, i64 %spec.select.i193 ; 3 uses
  %i.dc = add nuw nsw i64 %.014.i, 2              ; 2 uses
  %i.dd = select i1 %i.db, double %i.da, double %i.cy ; 2 uses
  %niter580.next.1 = add nuw i64 %niter580, 2     ; 2 uses
  %niter580.ncmp.1 = icmp eq i64 %niter580.next.1, %unroll_iter579
  br i1 %niter580.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa, label %.lr.ph.i192, !llvm.loop !2

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i192
  %lcmp.mod576.not = icmp eq i64 %xtraiter573, 0
  br i1 %lcmp.mod576.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit, label %.lr.ph.i192.epil.preheader

.lr.ph.i192.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i190
  %.epil.init575 = phi double [ %.pre.i191, %.lr.ph.preheader.i190 ], [ %i.dd, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa ]
  %.014.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i190 ], [ %i.dc, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i190 ], [ %spec.select.i193.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa ]
  %lcmp.mod578 = trunc i64 %i.cr to i1
  call void @llvm.assume(i1 %lcmp.mod578)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.014.i.epil.init
  %i.df = load double, ptr %i.de, align 8, !tbaa !191
  %i.dg = fcmp ogt double %i.df, %.epil.init575
  %spec.select.i193.epil = select i1 %i.dg, i64 %.014.i.epil.init, i64 %.01013.i.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit:       ; preds = %.lr.ph.i192.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa, %bb.n
  %.011.i189 = phi i64 [ 0, %bb.n ], [ %spec.select.i193.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa ], [ %spec.select.i193.epil, %.lr.ph.i192.epil.preheader ]
  %i.dh = getelementptr [8 x i8], ptr %i.cj, i64 %.011.i189
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.cm
  %i.dj = load double, ptr %i.di, align 8, !tbaa !191
  %i.dk = fsub double %i.cl, %i.dj
  %i.dl = fneg double %i.dk
  %i.dm = call double @llvm.fmuladd.f64(double %i.dl, double %i.cf, double %i.cl)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.dn = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %8, i32 noundef 0, i32 noundef %5, i32 noundef %i.bc)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.do = zext nneg i32 %i.bc to i64
  %i.dp = load ptr, ptr %8, align 8, !tbaa !192   ; 7 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !191
  %.not442 = icmp eq i32 %i.bb, 0
  br i1 %.not442, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit, label %.lr.ph.preheader.i196

.lr.ph.preheader.i196:                            ; preds = %bb.p
  %.pre.i197 = load double, ptr %i.dp, align 8, !tbaa !191 ; 2 uses
  %i.ds = zext nneg i32 %i.bb to i64              ; 2 uses
  %xtraiter581 = and i64 %i.ds, 1
  %i.dt = icmp eq i32 %i.bb, 1
  br i1 %i.dt, label %.lr.ph.i198.epil.preheader, label %.lr.ph.preheader.i196.new

.lr.ph.preheader.i196.new:                        ; preds = %.lr.ph.preheader.i196
  %unroll_iter587 = and i64 %i.ds, 2147483646
  br label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %.lr.ph.i198, %.lr.ph.preheader.i196.new
  %i.du = phi double [ %.pre.i197, %.lr.ph.preheader.i196.new ], [ %i.ee, %.lr.ph.i198 ] ; 2 uses
  %.014.i199 = phi i64 [ 1, %.lr.ph.preheader.i196.new ], [ %i.ed, %.lr.ph.i198 ] ; 4 uses
  %.01013.i200 = phi i64 [ 0, %.lr.ph.preheader.i196.new ], [ %spec.select.i201.1, %.lr.ph.i198 ]
  %niter588 = phi i64 [ 0, %.lr.ph.preheader.i196.new ], [ %niter588.next.1, %.lr.ph.i198 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.014.i199
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !191 ; 2 uses
  %i.dx = fcmp olt double %i.dw, %i.du            ; 2 uses
  %spec.select.i201 = select i1 %i.dx, i64 %.014.i199, i64 %.01013.i200
  %i.dy = add nuw nsw i64 %.014.i199, 1           ; 2 uses
  %i.dz = select i1 %i.dx, double %i.dw, double %i.du ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dy
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !191 ; 2 uses
  %i.ec = fcmp olt double %i.eb, %i.dz            ; 2 uses
  %spec.select.i201.1 = select i1 %i.ec, i64 %i.dy, i64 %spec.select.i201 ; 3 uses
  %i.ed = add nuw nsw i64 %.014.i199, 2           ; 2 uses
  %i.ee = select i1 %i.ec, double %i.eb, double %i.dz ; 2 uses
  %niter588.next.1 = add nuw i64 %niter588, 2     ; 2 uses
  %niter588.ncmp.1 = icmp eq i64 %niter588.next.1, %unroll_iter587
  br i1 %niter588.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa, label %.lr.ph.i198, !llvm.loop !3

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i198
  %lcmp.mod584.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod584.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit, label %.lr.ph.i198.epil.preheader

.lr.ph.i198.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i196
  %.epil.init583 = phi double [ %.pre.i197, %.lr.ph.preheader.i196 ], [ %i.ee, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa ]
  %.014.i199.epil.init = phi i64 [ 1, %.lr.ph.preheader.i196 ], [ %i.ed, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i200.epil.init = phi i64 [ 0, %.lr.ph.preheader.i196 ], [ %spec.select.i201.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa ]
  %lcmp.mod586 = trunc i32 %i.bb to i1
  call void @llvm.assume(i1 %lcmp.mod586)
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.014.i199.epil.init
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !191
  %i.eh = fcmp olt double %i.eg, %.epil.init583
  %spec.select.i201.epil = select i1 %i.eh, i64 %.014.i199.epil.init, i64 %.01013.i200.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit:       ; preds = %.lr.ph.i198.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa, %bb.p
  %.011.i195 = phi i64 [ 0, %bb.p ], [ %spec.select.i201.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa ], [ %spec.select.i201.epil, %.lr.ph.i198.epil.preheader ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.011.i195
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !191 ; 2 uses
  %i.ek = fsub double %i.ej, %i.dr
  %i.el = fneg double %i.ek
  %i.em = call double @llvm.fmuladd.f64(double %i.el, double %i.cf, double %i.ej)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit
  %i.en = phi ptr [ %i.ap, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit ], [ %i.cj, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit ], [ %i.dp, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit ] ; 2 uses
  %.1 = phi double [ %i.cd, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit ], [ %i.dm, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit ], [ %i.em, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit ]
  %i.eo = load ptr, ptr %i.ar, align 8, !tbaa !194
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.er) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.cf

bb.q:                                             ; preds = %bb.m, %bb.o
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre488 = load ptr, ptr %8, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %.pre488, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIdSaIdEED2Ev.exit204, label %.thread

.thread:                                          ; preds = %.loopexit.split-lp, %.loopexit, %bb.q
  %.merged183514 = phi { ptr, i32 } [ %i.es, %bb.q ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %i.et = phi ptr [ %.pre488, %bb.q ], [ %i.ap, %.loopexit.split-lp ], [ %i.ap, %.loopexit ] ; 2 uses
  %i.eu = load ptr, ptr %i.ar, align 8, !tbaa !194
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit204

_ZNSt6vectorIdSaIdEED2Ev.exit204:                 ; preds = %.thread, %bb.q, %bb.g
  %.merged182 = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.es, %bb.q ], [ %.merged183514, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.cg

bb.r:                                             ; preds = %bb.b
  br i1 %i.ae, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !218
  %i.fa = load i32, ptr %3, align 4, !tbaa !204
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ez, ptr %i.s, align 8, !tbaa !220
  store i32 %i.fd, ptr %i.t, align 4, !tbaa !204
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !153
  %.not.i.i205 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i205, label %bb.t, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit206

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit206:          ; preds = %bb.s
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !242
  %i.fi = call noundef double %i.fh(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cf

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.fj = zext nneg i32 %5 to i64                 ; 4 uses
  %i.fk = shl nuw nsw i64 %i.fj, 3                ; 3 uses
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #34
          to label %.lr.ph456 unwind label %bb.v  ; 14 uses

.lr.ph456:                                        ; preds = %bb.u
  store ptr %i.fl, ptr %9, align 8, !tbaa !192
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !194
  store double 0.000000e+00, ptr %i.fl, align 8, !tbaa !191
  %i.fo = getelementptr i8, ptr %i.fl, i64 8
  %.idx.i.i.i.i.i.i.i209 = add nsw i64 %i.fk, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fo, i8 0, i64 %.idx.i.i.i.i.i.i.i209, i1 false), !tbaa !191
  %i.fp = getelementptr i8, ptr %i.fl, i64 %i.fk
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !193
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.w

._crit_edge457:                                   ; preds = %bb.z
  %i.fu = add nsw i32 %5, -1
  %i.fv = uitofp nneg i32 %i.fu to double
  %i.fw = fmul nnan double %i.fv, 5.000000e-01    ; 2 uses
  %i.fx = fptosi double %i.fw to i32              ; 9 uses
  %i.fy = add nuw nsw i32 %i.fx, 1                ; 5 uses
  %.not = icmp slt i32 %i.fy, %5
  br i1 %.not, label %bb.aa, label %.lr.ph.preheader.i220

bb.v:                                             ; preds = %bb.u
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit249

bb.w:                                             ; preds = %.lr.ph456, %bb.z
  %indvars.iv478 = phi i64 [ 0, %.lr.ph456 ], [ %indvars.iv.next479, %bb.z ] ; 3 uses
  %i.ga = load ptr, ptr %i.fr, align 8, !tbaa !218
  %i.gb = load ptr, ptr %i.z, align 8, !tbaa !240
  %i.gc = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv478
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !204
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.ga, ptr %i.q, align 8, !tbaa !220
  store i32 %i.gh, ptr %i.r, align 4, !tbaa !204
  %i.gi = load ptr, ptr %i.fs, align 8, !tbaa !153
  %.not.i.i214 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i214, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc215 unwind label %.loopexit.split-lp444

.noexc215:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.gj = load ptr, ptr %i.ft, align 8, !tbaa !242
  %i.gk = invoke noundef double %i.gj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %bb.z unwind label %.loopexit443, !inline_history !0

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv478
  store double %i.gk, ptr %i.gl, align 8, !tbaa !191
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next479, %i.fj
  br i1 %exitcond482.not, label %._crit_edge457, label %bb.w, !llvm.loop !392

.loopexit443:                                     ; preds = %bb.y
  %lpad.loopexit445 = landingpad { ptr, i32 }
          cleanup
  br label %.thread516

.loopexit.split-lp444:                            ; preds = %bb.x
  %lpad.loopexit.split-lp446 = landingpad { ptr, i32 }
          cleanup
  br label %.thread516

.lr.ph.preheader.i220:                            ; preds = %._crit_edge457
  %.pre.i221 = load double, ptr %i.fl, align 8, !tbaa !191 ; 2 uses
  %i.gm = add nsw i64 %i.fj, -1                   ; 3 uses
  %xtraiter543 = and i64 %i.gm, 1
  %i.gn = icmp eq i32 %5, 2
  br i1 %i.gn, label %.lr.ph.i222.epil.preheader, label %.lr.ph.preheader.i220.new

.lr.ph.preheader.i220.new:                        ; preds = %.lr.ph.preheader.i220
  %unroll_iter547 = and i64 %i.gm, -2
  br label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.lr.ph.i222, %.lr.ph.preheader.i220.new
  %i.go = phi double [ %.pre.i221, %.lr.ph.preheader.i220.new ], [ %i.gy, %.lr.ph.i222 ] ; 2 uses
  %.013.i223 = phi i64 [ 1, %.lr.ph.preheader.i220.new ], [ %i.gx, %.lr.ph.i222 ] ; 4 uses
  %.01012.i224 = phi i64 [ 0, %.lr.ph.preheader.i220.new ], [ %spec.select.i225.1, %.lr.ph.i222 ]
  %niter548 = phi i64 [ 0, %.lr.ph.preheader.i220.new ], [ %niter548.next.1, %.lr.ph.i222 ]
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.013.i223
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !191 ; 2 uses
  %i.gr = fcmp olt double %i.gq, %i.go            ; 2 uses
  %spec.select.i225 = select i1 %i.gr, i64 %.013.i223, i64 %.01012.i224
  %i.gs = add nuw i64 %.013.i223, 1               ; 2 uses
  %i.gt = select i1 %i.gr, double %i.gq, double %i.go ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gs
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !191 ; 2 uses
  %i.gw = fcmp olt double %i.gv, %i.gt            ; 2 uses
  %spec.select.i225.1 = select i1 %i.gw, i64 %i.gs, i64 %spec.select.i225 ; 3 uses
  %i.gx = add nuw i64 %.013.i223, 2               ; 2 uses
  %i.gy = select i1 %i.gw, double %i.gv, double %i.gt ; 2 uses
  %niter548.next.1 = add nuw i64 %niter548, 2     ; 2 uses
  %niter548.ncmp.1 = icmp eq i64 %niter548.next.1, %unroll_iter547
  br i1 %niter548.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227.unr-lcssa, label %.lr.ph.i222, !llvm.loop !1

_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227.unr-lcssa: ; preds = %.lr.ph.i222
  %lcmp.mod544.not = icmp eq i64 %xtraiter543, 0
  br i1 %lcmp.mod544.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227, label %.lr.ph.i222.epil.preheader

.lr.ph.i222.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227.unr-lcssa, %.lr.ph.preheader.i220
  %.epil.init = phi double [ %.pre.i221, %.lr.ph.preheader.i220 ], [ %i.gy, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227.unr-lcssa ]
  %.013.i223.epil.init = phi i64 [ 1, %.lr.ph.preheader.i220 ], [ %i.gx, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227.unr-lcssa ] ; 2 uses
  %.01012.i224.epil.init = phi i64 [ 0, %.lr.ph.preheader.i220 ], [ %spec.select.i225.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227.unr-lcssa ]
  %lcmp.mod546 = trunc i64 %i.gm to i1
  call void @llvm.assume(i1 %lcmp.mod546)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.013.i223.epil.init
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !191
  %i.hb = fcmp olt double %i.ha, %.epil.init
  %spec.select.i225.epil = select i1 %i.hb, i64 %.013.i223.epil.init, i64 %.01012.i224.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227

_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227: ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227.unr-lcssa, %.lr.ph.i222.epil.preheader
  %spec.select.i225.lcssa = phi i64 [ %spec.select.i225.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227.unr-lcssa ], [ %spec.select.i225.epil, %.lr.ph.i222.epil.preheader ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %spec.select.i225.lcssa
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !191
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit247

bb.aa:                                            ; preds = %._crit_edge457
  %i.he = uitofp nneg i32 %i.fx to double
  %i.hf = fsub double %i.fw, %i.he                ; 2 uses
  %i.hg = lshr i32 %5, 1
  %.not177 = icmp samesign ugt i32 %i.hg, %i.fx
  br i1 %.not177, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hh = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %5, i32 noundef %i.fx)
          to label %bb.ac unwind label %bb.af     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.hi = zext nneg i32 %i.fx to i64
  %i.hj = load ptr, ptr %9, align 8, !tbaa !192   ; 4 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hi
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !191 ; 2 uses
  %i.hm = zext nneg i32 %i.fy to i64              ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hm ; 4 uses
  %i.ho = sub nuw nsw i32 %5, %i.fy               ; 3 uses
  %i.hp = icmp ugt i32 %i.ho, 1
  br i1 %i.hp, label %.lr.ph.preheader.i229, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236

.lr.ph.preheader.i229:                            ; preds = %bb.ac
  %i.hq = zext nneg i32 %i.ho to i64
  %.pre.i230 = load double, ptr %i.hn, align 8, !tbaa !191 ; 2 uses
  %i.hr = add nsw i64 %i.hq, -1                   ; 3 uses
  %xtraiter549 = and i64 %i.hr, 1
  %i.hs = icmp eq i32 %i.ho, 2
  br i1 %i.hs, label %.lr.ph.i231.epil.preheader, label %.lr.ph.preheader.i229.new

.lr.ph.preheader.i229.new:                        ; preds = %.lr.ph.preheader.i229
  %unroll_iter555 = and i64 %i.hr, -2
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.lr.ph.i231, %.lr.ph.preheader.i229.new
  %i.ht = phi double [ %.pre.i230, %.lr.ph.preheader.i229.new ], [ %i.id, %.lr.ph.i231 ] ; 2 uses
  %.014.i232 = phi i64 [ 1, %.lr.ph.preheader.i229.new ], [ %i.ic, %.lr.ph.i231 ] ; 4 uses
  %.01013.i233 = phi i64 [ 0, %.lr.ph.preheader.i229.new ], [ %spec.select.i234.1, %.lr.ph.i231 ]
  %niter556 = phi i64 [ 0, %.lr.ph.preheader.i229.new ], [ %niter556.next.1, %.lr.ph.i231 ]
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.014.i232
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !191 ; 2 uses
  %i.hw = fcmp ogt double %i.hv, %i.ht            ; 2 uses
  %spec.select.i234 = select i1 %i.hw, i64 %.014.i232, i64 %.01013.i233
  %i.hx = add nuw nsw i64 %.014.i232, 1           ; 2 uses
  %i.hy = select i1 %i.hw, double %i.hv, double %i.ht ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hx
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !191 ; 2 uses
  %i.ib = fcmp ogt double %i.ia, %i.hy            ; 2 uses
  %spec.select.i234.1 = select i1 %i.ib, i64 %i.hx, i64 %spec.select.i234 ; 3 uses
  %i.ic = add nuw nsw i64 %.014.i232, 2           ; 2 uses
  %i.id = select i1 %i.ib, double %i.ia, double %i.hy ; 2 uses
  %niter556.next.1 = add nuw i64 %niter556, 2     ; 2 uses
  %niter556.ncmp.1 = icmp eq i64 %niter556.next.1, %unroll_iter555
  br i1 %niter556.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa, label %.lr.ph.i231, !llvm.loop !2

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa: ; preds = %.lr.ph.i231
  %lcmp.mod552.not = icmp eq i64 %xtraiter549, 0
  br i1 %lcmp.mod552.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236, label %.lr.ph.i231.epil.preheader

.lr.ph.i231.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa, %.lr.ph.preheader.i229
  %.epil.init551 = phi double [ %.pre.i230, %.lr.ph.preheader.i229 ], [ %i.id, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa ]
  %.014.i232.epil.init = phi i64 [ 1, %.lr.ph.preheader.i229 ], [ %i.ic, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i233.epil.init = phi i64 [ 0, %.lr.ph.preheader.i229 ], [ %spec.select.i234.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa ]
  %lcmp.mod554 = trunc i64 %i.hr to i1
  call void @llvm.assume(i1 %lcmp.mod554)
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.014.i232.epil.init
  %i.if = load double, ptr %i.ie, align 8, !tbaa !191
  %i.ig = fcmp ogt double %i.if, %.epil.init551
  %spec.select.i234.epil = select i1 %i.ig, i64 %.014.i232.epil.init, i64 %.01013.i233.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236:    ; preds = %.lr.ph.i231.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa, %bb.ac
  %.011.i228 = phi i64 [ 0, %bb.ac ], [ %spec.select.i234.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa ], [ %spec.select.i234.epil, %.lr.ph.i231.epil.preheader ]
  %i.ih = getelementptr [8 x i8], ptr %i.hj, i64 %.011.i228
  %i.ii = getelementptr [8 x i8], ptr %i.ih, i64 %i.hm
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !191
  %i.ik = fsub double %i.hl, %i.ij
  %i.il = fneg double %i.ik
  %i.im = call double @llvm.fmuladd.f64(double %i.il, double %i.hf, double %i.hl)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit247

bb.ad:                                            ; preds = %bb.aa
  %i.in = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %5, i32 noundef %i.fy)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.io = zext nneg i32 %i.fy to i64
  %i.ip = load ptr, ptr %9, align 8, !tbaa !192   ; 7 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.io
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !191
  %.not441 = icmp eq i32 %i.fx, 0
  br i1 %.not441, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245, label %.lr.ph.preheader.i238

.lr.ph.preheader.i238:                            ; preds = %bb.ae
  %.pre.i239 = load double, ptr %i.ip, align 8, !tbaa !191 ; 2 uses
  %i.is = zext nneg i32 %i.fx to i64              ; 2 uses
  %xtraiter557 = and i64 %i.is, 1
  %i.it = icmp eq i32 %i.fx, 1
  br i1 %i.it, label %.lr.ph.i240.epil.preheader, label %.lr.ph.preheader.i238.new

.lr.ph.preheader.i238.new:                        ; preds = %.lr.ph.preheader.i238
  %unroll_iter563 = and i64 %i.is, 2147483646
  br label %.lr.ph.i240

.lr.ph.i240:                                      ; preds = %.lr.ph.i240, %.lr.ph.preheader.i238.new
  %i.iu = phi double [ %.pre.i239, %.lr.ph.preheader.i238.new ], [ %i.je, %.lr.ph.i240 ] ; 2 uses
  %.014.i241 = phi i64 [ 1, %.lr.ph.preheader.i238.new ], [ %i.jd, %.lr.ph.i240 ] ; 4 uses
  %.01013.i242 = phi i64 [ 0, %.lr.ph.preheader.i238.new ], [ %spec.select.i243.1, %.lr.ph.i240 ]
  %niter564 = phi i64 [ 0, %.lr.ph.preheader.i238.new ], [ %niter564.next.1, %.lr.ph.i240 ]
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.014.i241
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !191 ; 2 uses
  %i.ix = fcmp olt double %i.iw, %i.iu            ; 2 uses
  %spec.select.i243 = select i1 %i.ix, i64 %.014.i241, i64 %.01013.i242
  %i.iy = add nuw nsw i64 %.014.i241, 1           ; 2 uses
  %i.iz = select i1 %i.ix, double %i.iw, double %i.iu ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iy
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !191 ; 2 uses
  %i.jc = fcmp olt double %i.jb, %i.iz            ; 2 uses
  %spec.select.i243.1 = select i1 %i.jc, i64 %i.iy, i64 %spec.select.i243 ; 3 uses
  %i.jd = add nuw nsw i64 %.014.i241, 2           ; 2 uses
  %i.je = select i1 %i.jc, double %i.jb, double %i.iz ; 2 uses
  %niter564.next.1 = add nuw i64 %niter564, 2     ; 2 uses
  %niter564.ncmp.1 = icmp eq i64 %niter564.next.1, %unroll_iter563
  br i1 %niter564.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa, label %.lr.ph.i240, !llvm.loop !3

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa: ; preds = %.lr.ph.i240
  %lcmp.mod560.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod560.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245, label %.lr.ph.i240.epil.preheader

.lr.ph.i240.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa, %.lr.ph.preheader.i238
  %.epil.init559 = phi double [ %.pre.i239, %.lr.ph.preheader.i238 ], [ %i.je, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa ]
  %.014.i241.epil.init = phi i64 [ 1, %.lr.ph.preheader.i238 ], [ %i.jd, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i242.epil.init = phi i64 [ 0, %.lr.ph.preheader.i238 ], [ %spec.select.i243.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa ]
  %lcmp.mod562 = trunc i32 %i.fx to i1
  call void @llvm.assume(i1 %lcmp.mod562)
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.014.i241.epil.init
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !191
  %i.jh = fcmp olt double %i.jg, %.epil.init559
  %spec.select.i243.epil = select i1 %i.jh, i64 %.014.i241.epil.init, i64 %.01013.i242.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245:    ; preds = %.lr.ph.i240.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa, %bb.ae
  %.011.i237 = phi i64 [ 0, %bb.ae ], [ %spec.select.i243.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa ], [ %spec.select.i243.epil, %.lr.ph.i240.epil.preheader ]
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.011.i237
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !191 ; 2 uses
  %i.jk = fsub double %i.jj, %i.ir
  %i.jl = fneg double %i.jk
  %i.jm = call double @llvm.fmuladd.f64(double %i.jl, double %i.hf, double %i.jj)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit247

_ZNSt6vectorIdSaIdEED2Ev.exit247:                 ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227
  %i.jn = phi ptr [ %i.fl, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227 ], [ %i.hj, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236 ], [ %i.ip, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245 ] ; 2 uses
  %.3 = phi double [ %i.hd, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227 ], [ %i.im, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236 ], [ %i.jm, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245 ]
  %i.jo = load ptr, ptr %i.fn, align 8, !tbaa !194
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jn to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.jr) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cf

bb.af:                                            ; preds = %bb.ab, %bb.ad
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %9, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i248 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i248, label %_ZNSt6vectorIdSaIdEED2Ev.exit249, label %.thread516

.thread516:                                       ; preds = %.loopexit.split-lp444, %.loopexit443, %bb.af
  %.merged181519 = phi { ptr, i32 } [ %i.js, %bb.af ], [ %lpad.loopexit.split-lp446, %.loopexit.split-lp444 ], [ %lpad.loopexit445, %.loopexit443 ]
  %i.jt = phi ptr [ %.pre, %bb.af ], [ %i.fl, %.loopexit.split-lp444 ], [ %i.fl, %.loopexit443 ] ; 2 uses
  %i.ju = load ptr, ptr %i.fn, align 8, !tbaa !194
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jx) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit249

_ZNSt6vectorIdSaIdEED2Ev.exit249:                 ; preds = %.thread516, %bb.af, %bb.v
  %.merged180 = phi { ptr, i32 } [ %i.fz, %bb.v ], [ %i.js, %bb.af ], [ %.merged181519, %.thread516 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cg

bb.ag:                                            ; preds = %bb.a
  br i1 %i.ad, label %bb.ah, label %bb.bg

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ae, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !218
  %i.ka = load i32, ptr %3, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.jz, ptr %i.o, align 8, !tbaa !220
  store i32 %i.ka, ptr %i.p, align 4, !tbaa !204
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !153
  %.not.i.i250 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i250, label %bb.aj, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit251

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit251:          ; preds = %bb.ai
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !242
  %i.kf = call noundef double %i.ke(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cf

bb.ak:                                            ; preds = %bb.ah
  %i.kg = zext nneg i32 %5 to i64                 ; 7 uses
  %i.kh = shl nuw nsw i64 %i.kg, 2                ; 5 uses
  %i.ki = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #34 ; 15 uses
  store i32 0, ptr %i.ki, align 4, !tbaa !204
  %i.kj = getelementptr i8, ptr %i.ki, i64 4
  %.idx.i.i.i.i.i.i.i253 = add nsw i64 %i.kh, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kj, i8 0, i64 %.idx.i.i.i.i.i.i.i253, i1 false), !tbaa !204
  %min.iters.check521 = icmp ult i32 %5, 8
  br i1 %min.iters.check521, label %scalar.ph520.preheader, label %vector.ph522

vector.ph522:                                     ; preds = %bb.ak
  %n.vec523 = and i64 %i.kg, 2147483640           ; 3 uses
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph522
  %index525 = phi i64 [ 0, %vector.ph522 ], [ %index.next528, %vector.body524 ] ; 2 uses
  %vec.ind526 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph522 ], [ %vec.ind.next529, %vector.body524 ] ; 3 uses
  %step.add527 = add <4 x i32> %vec.ind526, splat (i32 4)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %index525 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <4 x i32> %vec.ind526, ptr %i.kk, align 4, !tbaa !204
  store <4 x i32> %step.add527, ptr %i.kl, align 4, !tbaa !204
  %index.next528 = add nuw i64 %index525, 8       ; 2 uses
  %vec.ind.next529 = add <4 x i32> %vec.ind526, splat (i32 8)
  %i.km = icmp eq i64 %index.next528, %n.vec523
  br i1 %i.km, label %middle.block530, label %vector.body524, !llvm.loop !393

middle.block530:                                  ; preds = %vector.body524
  %cmp.n531 = icmp eq i64 %n.vec523, %i.kg
  br i1 %cmp.n531, label %.loopexit533, label %scalar.ph520.preheader

scalar.ph520.preheader:                           ; preds = %bb.ak, %middle.block530
  %indvars.iv468.ph = phi i64 [ 0, %bb.ak ], [ %n.vec523, %middle.block530 ]
  br label %scalar.ph520

.loopexit533:                                     ; preds = %scalar.ph520, %middle.block530
  %i.kn = getelementptr i8, ptr %i.ki, i64 %i.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %7, align 8
  %.sroa.2417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2417.0..sroa_idx, align 8
  %.sroa.3418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.y, ptr %.sroa.3418.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_T0_(ptr nonnull %i.ki, ptr %i.kn, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
          to label %bb.al unwind label %bb.am

scalar.ph520:                                     ; preds = %scalar.ph520.preheader, %scalar.ph520
  %indvars.iv468 = phi i64 [ %indvars.iv.next469, %scalar.ph520 ], [ %indvars.iv468.ph, %scalar.ph520.preheader ] ; 3 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv468
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM16RegressionL1loss14BoostFromScoreEi:bb.a
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !169
  %i.cd = fpext float %i.cc to double
  %i.ce = fadd double %i.bw, %i.cd                ; 3 uses
  store double %i.ce, ptr %i.bx, align 8, !tbaa !191
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge172.loopexit.unr-lcssa, label %.lr.ph171, !llvm.loop !401

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre193.a = ptrtoint ptr %.sroa.011.1.i.i to i64
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit.loopexit, %._crit_edge172
  %.pre-phi = phi i64 [ %.pre193.a, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit.loopexit ], [ %i.bb, %._crit_edge172 ]
  %i.cf = sub i64 %.pre-phi, %i.bb
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.aw) ; 5 uses
  %i.ch = icmp eq i64 %.sroa.speculated, 0
  %i.ci = icmp uge i64 %i.cg, %i.aw
  %or.cond = or i1 %i.ci, %i.ch
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !218
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.speculated
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !204
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.i:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.cq = add nsw i64 %.sroa.speculated, -1       ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.cq ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !191
  %i.ct = fcmp ult double %i.az, %i.cs
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 242)
          to label %bb.k unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit83

_ZNSt6vectorIdSaIdEED2Ev.exit83:                  ; preds = %bb.l, %bb.j
  %i.cu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.x) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit85

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.speculated ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !191 ; 2 uses
  %i.cx = fcmp olt double %i.az, %i.cw
  br i1 %i.cx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 242)
          to label %._crit_edge189 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit83

._crit_edge189:                                   ; preds = %bb.l
  %.pre = load double, ptr %i.cv, align 8, !tbaa !191
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge189, %bb.k
  %i.cy = phi double [ %.pre, %._crit_edge189 ], [ %i.cw, %bb.k ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !218 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cq
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !204
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !169 ; 3 uses
  %i.dg = load double, ptr %i.cr, align 8, !tbaa !191 ; 2 uses
  %i.dh = fsub double %i.cy, %i.dg                ; 2 uses
  %i.di = fcmp ult double %i.dh, 1.000000e+00
  br i1 %i.di, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.speculated
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !204
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !169
  %i.do = fsub double %i.az, %i.dg
  %i.dp = fdiv double %i.do, %i.dh
  %i.dq = fsub float %i.dn, %i.df
  %i.dr = fpext float %i.dq to double
  %i.ds = fpext float %i.df to double
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dr, double %i.ds)
  %i.du = fptrunc double %i.dt to float
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.n, %bb.m, %bb.h
  %.1.in = phi float [ %i.cp, %bb.h ], [ %i.du, %bb.n ], [ %i.df, %bb.m ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.x) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #35
  br label %bb.ag

_ZNSt6vectorIiSaIiEED2Ev.exit85:                  ; preds = %bb.g, %_ZNSt6vectorIdSaIdEED2Ev.exit83, %bb.f
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.f ], [ %i.cu, %_ZNSt6vectorIdSaIdEED2Ev.exit83 ], [ %i.bo, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #35
  br label %bb.ah

bb.o:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !218
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !169
  br label %bb.ag

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.dy = zext nneg i32 %i.d to i64               ; 4 uses
  %i.dz = shl nuw nsw i64 %i.dy, 2                ; 3 uses
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #34
          to label %bb.r unwind label %bb.s       ; 24 uses

bb.r:                                             ; preds = %bb.q
  store ptr %i.ea, ptr %2, align 8, !tbaa !174
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !175
  store float 0.000000e+00, ptr %i.ea, align 4, !tbaa !169
  %i.ed = getelementptr i8, ptr %i.ea, i64 4
  %.idx.i.i.i.i.i.i.i87 = add nsw i64 %i.dz, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ed, i8 0, i64 %.idx.i.i.i.i.i.i.i87, i1 false), !tbaa !169
  %i.ee = getelementptr i8, ptr %i.ea, i64 %i.dz
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !219
  %i.eg = load i32, ptr %i.c, align 4, !tbaa !217 ; 8 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %bb.r
  %i.ei = ptrtoaddr ptr %i.ea to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !218 ; 7 uses
  %wide.trip.count187 = zext nneg i32 %i.eg to i64 ; 5 uses
  %min.iters.check216 = icmp ult i32 %i.eg, 8
  %i.el = ptrtoaddr ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.ei
  %diff.check = icmp ugt i64 %i.em, -32
  %or.cond227 = select i1 %min.iters.check216, i1 true, i1 %diff.check
  br i1 %or.cond227, label %scalar.ph215.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph175
  %n.vec218 = and i64 %wide.trip.count187, 2147483640 ; 3 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next222, %vector.body219 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index220 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <4 x float>, ptr %i.en, align 4, !tbaa !169
  %wide.load221 = load <4 x float>, ptr %i.eo, align 4, !tbaa !169
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index220 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> %wide.load, ptr %i.ep, align 4, !tbaa !169
  store <4 x float> %wide.load221, ptr %i.eq, align 4, !tbaa !169
  %index.next222 = add nuw i64 %index220, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next222, %n.vec218
  br i1 %i.er, label %middle.block223, label %vector.body219, !llvm.loop !402

middle.block223:                                  ; preds = %vector.body219
  %cmp.n224 = icmp eq i64 %n.vec218, %wide.trip.count187
  br i1 %cmp.n224, label %._crit_edge176, label %scalar.ph215.preheader

scalar.ph215.preheader:                           ; preds = %.lr.ph175, %middle.block223
  %indvars.iv184.ph = phi i64 [ 0, %.lr.ph175 ], [ %n.vec218, %middle.block223 ] ; 3 uses
  %xtraiter230 = and i64 %wide.trip.count187, 3   ; 2 uses
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %scalar.ph215.prol.loopexit, label %scalar.ph215.prol

scalar.ph215.prol:                                ; preds = %scalar.ph215.preheader, %scalar.ph215.prol
  %indvars.iv184.prol = phi i64 [ %indvars.iv.next185.prol, %scalar.ph215.prol ], [ %indvars.iv184.ph, %scalar.ph215.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph215.prol ], [ 0, %scalar.ph215.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv184.prol
  %i.et = load float, ptr %i.es, align 4, !tbaa !169
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv184.prol
  store float %i.et, ptr %i.eu, align 4, !tbaa !169
  %indvars.iv.next185.prol = add nuw nsw i64 %indvars.iv184.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter230
  br i1 %prol.iter.cmp.not, label %scalar.ph215.prol.loopexit, label %scalar.ph215.prol, !llvm.loop !403

scalar.ph215.prol.loopexit:                       ; preds = %scalar.ph215.prol, %scalar.ph215.preheader
  %indvars.iv184.unr = phi i64 [ %indvars.iv184.ph, %scalar.ph215.preheader ], [ %indvars.iv.next185.prol, %scalar.ph215.prol ]
  %i.ev = sub nsw i64 %indvars.iv184.ph, %wide.trip.count187
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %._crit_edge176, label %scalar.ph215

._crit_edge176:                                   ; preds = %scalar.ph215.prol.loopexit, %scalar.ph215, %middle.block223, %bb.r
  %i.ex = add nsw i32 %i.eg, -1
  %i.ey = sitofp i32 %i.ex to double
  %i.ez = fmul nnan double %i.ey, 5.000000e-01    ; 2 uses
  %i.fa = fptosi double %i.ez to i32              ; 9 uses
  %i.fb = add nuw nsw i32 %i.fa, 1                ; 6 uses
  %i.fc = icmp slt i32 %i.fa, 0
  br i1 %i.fc, label %bb.t, label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit115

scalar.ph215:                                     ; preds = %scalar.ph215.prol.loopexit, %scalar.ph215
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.3, %scalar.ph215 ], [ %indvars.iv184.unr, %scalar.ph215.prol.loopexit ] ; 6 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv184
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !169
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv184
  store float %i.ff, ptr %i.fg, align 4, !tbaa !169
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next185
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !169
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next185
  store float %i.fi, ptr %i.fj, align 4, !tbaa !169
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next185.1
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !169
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next185.1
  store float %i.fl, ptr %i.fm, align 4, !tbaa !169
  %indvars.iv.next185.2 = add nuw nsw i64 %indvars.iv184, 3 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.next185.2
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !169
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next185.2
  store float %i.fo, ptr %i.fp, align 4, !tbaa !169
  %indvars.iv.next185.3 = add nuw nsw i64 %indvars.iv184, 4 ; 2 uses
  %exitcond188.not.3 = icmp eq i64 %indvars.iv.next185.3, %wide.trip.count187
  br i1 %exitcond188.not.3, label %._crit_edge176, label %scalar.ph215, !llvm.loop !404

bb.t:                                             ; preds = %._crit_edge176
  %i.fq = icmp samesign ugt i32 %i.d, 1024
  br i1 %i.fq, label %bb.u, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %.pre.i = load float, ptr %i.ea, align 4, !tbaa !169 ; 2 uses
  %i.fr = add nsw i64 %i.dy, -1                   ; 3 uses
  %xtraiter246 = and i64 %i.fr, 1
  %i.fs = icmp eq i32 %i.d, 2
  br i1 %i.fs, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter252 = and i64 %i.fr, -2
  br label %.lr.ph.i

bb.u:                                             ; preds = %bb.t
  %i.ft = invoke noundef i64 @_ZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %..thread_crit_edge unwind label %bb.v

..thread_crit_edge:                               ; preds = %bb.u
  %.pre192 = load ptr, ptr %2, align 8, !tbaa !174
  br label %.thread

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %i.fu = phi float [ %.pre.i, %.lr.ph.preheader.i.new ], [ %i.ge, %.lr.ph.i ] ; 2 uses
  %.015.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.gd, %.lr.ph.i ] ; 4 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %niter253 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter253.next.1, %.lr.ph.i ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.015.i
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !169 ; 2 uses
  %i.fx = fcmp ogt float %i.fw, %i.fu             ; 2 uses
  %spec.select.i = select i1 %i.fx, i64 %.015.i, i64 %.01214.i
  %i.fy = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %i.fz = select i1 %i.fx, float %i.fw, float %i.fu ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fy
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !169 ; 2 uses
  %i.gc = fcmp ogt float %i.gb, %i.fz             ; 2 uses
  %spec.select.i.1 = select i1 %i.gc, i64 %i.fy, i64 %spec.select.i ; 3 uses
  %i.gd = add nuw nsw i64 %.015.i, 2              ; 2 uses
  %i.ge = select i1 %i.gc, float %i.gb, float %i.fz ; 2 uses
  %niter253.next.1 = add nuw i64 %niter253, 2     ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph.i
  %lcmp.mod249.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod249.not, label %.thread, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init248 = phi float [ %.pre.i, %.lr.ph.preheader.i ], [ %i.ge, %.thread.loopexit.unr-lcssa ]
  %.015.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.gd, %.thread.loopexit.unr-lcssa ] ; 2 uses
  %.01214.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i.1, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod251 = trunc i64 %i.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.015.i.epil.init
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !169
  %i.gh = fcmp ogt float %i.gg, %.epil.init248
  %spec.select.i.epil = select i1 %i.gh, i64 %.015.i.epil.init, i64 %.01214.i.epil.init
  br label %.thread

.thread:                                          ; preds = %.lr.ph.i.epil.preheader, %.thread.loopexit.unr-lcssa, %..thread_crit_edge
  %i.gi = phi ptr [ %.pre192, %..thread_crit_edge ], [ %i.ea, %.thread.loopexit.unr-lcssa ], [ %i.ea, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.013.i = phi i64 [ %i.ft, %..thread_crit_edge ], [ %spec.select.i.1, %.thread.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.013.i
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !169
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.w:                                             ; preds = %._crit_edge176
  %.not64 = icmp slt i32 %i.fb, %i.eg
  br i1 %.not64, label %bb.x, label %.lr.ph.preheader.i93

.lr.ph.preheader.i93:                             ; preds = %bb.w
  %.pre.i94 = load float, ptr %i.ea, align 4, !tbaa !169 ; 2 uses
  %i.gm = add nsw i64 %i.dy, -1                   ; 3 uses
  %xtraiter232 = and i64 %i.gm, 1
  %i.gn = icmp eq i32 %i.d, 2
  br i1 %i.gn, label %.lr.ph.i95.epil.preheader, label %.lr.ph.preheader.i93.new

.lr.ph.preheader.i93.new:                         ; preds = %.lr.ph.preheader.i93
  %unroll_iter236 = and i64 %i.gm, -2
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95, %.lr.ph.preheader.i93.new
  %i.go = phi float [ %.pre.i94, %.lr.ph.preheader.i93.new ], [ %i.gy, %.lr.ph.i95 ] ; 2 uses
  %.013.i96 = phi i64 [ 1, %.lr.ph.preheader.i93.new ], [ %i.gx, %.lr.ph.i95 ] ; 4 uses
  %.01012.i = phi i64 [ 0, %.lr.ph.preheader.i93.new ], [ %spec.select.i97.1, %.lr.ph.i95 ]
  %niter237 = phi i64 [ 0, %.lr.ph.preheader.i93.new ], [ %niter237.next.1, %.lr.ph.i95 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.013.i96
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !169 ; 2 uses
  %i.gr = fcmp olt float %i.gq, %i.go             ; 2 uses
  %spec.select.i97 = select i1 %i.gr, i64 %.013.i96, i64 %.01012.i
  %i.gs = add nuw i64 %.013.i96, 1                ; 2 uses
  %i.gt = select i1 %i.gr, float %i.gq, float %i.go ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.gs
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !169 ; 2 uses
  %i.gw = fcmp olt float %i.gv, %i.gt             ; 2 uses
  %spec.select.i97.1 = select i1 %i.gw, i64 %i.gs, i64 %spec.select.i97 ; 3 uses
  %i.gx = add nuw i64 %.013.i96, 2                ; 2 uses
  %i.gy = select i1 %i.gw, float %i.gv, float %i.gt ; 2 uses
  %niter237.next.1 = add nuw i64 %niter237, 2     ; 2 uses
  %niter237.ncmp.1 = icmp eq i64 %niter237.next.1, %unroll_iter236
  br i1 %niter237.ncmp.1, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa, label %.lr.ph.i95, !llvm.loop !6

_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa: ; preds = %.lr.ph.i95
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit, label %.lr.ph.i95.epil.preheader

.lr.ph.i95.epil.preheader:                        ; preds = %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa, %.lr.ph.preheader.i93
  %.epil.init = phi float [ %.pre.i94, %.lr.ph.preheader.i93 ], [ %i.gy, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa ]
  %.013.i96.epil.init = phi i64 [ 1, %.lr.ph.preheader.i93 ], [ %i.gx, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa ] ; 2 uses
  %.01012.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i93 ], [ %spec.select.i97.1, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa ]
  %lcmp.mod235 = trunc i64 %i.gm to i1
  tail call void @llvm.assume(i1 %lcmp.mod235)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.013.i96.epil.init
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !169
  %i.hb = fcmp olt float %i.ha, %.epil.init
  %spec.select.i97.epil = select i1 %i.hb, i64 %.013.i96.epil.init, i64 %.01012.i.epil.init
  br label %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit

_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit: ; preds = %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa, %.lr.ph.i95.epil.preheader
  %spec.select.i97.lcssa = phi i64 [ %spec.select.i97.1, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa ], [ %spec.select.i97.epil, %.lr.ph.i95.epil.preheader ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %spec.select.i97.lcssa
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !169
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.he = uitofp nneg i32 %i.fa to double
  %i.hf = fsub double %i.ez, %i.he
  %i.hg = lshr i32 %i.eg, 1
  %.not65 = icmp samesign ugt i32 %i.hg, %i.fa
  br i1 %.not65, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hh = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIfE9ArgMaxAtKEPSt6vectorIfSaIfEEiii(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.eg, i32 noundef %i.fa)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.hi = zext nneg i32 %i.fa to i64
  %i.hj = load ptr, ptr %2, align 8, !tbaa !174   ; 4 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hi
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !169 ; 2 uses
  %i.hm = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.c, align 4, !tbaa !217
  %i.hp = sub nsw i32 %i.ho, %i.fb                ; 2 uses
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp ugt i32 %i.hp, 1
  br i1 %i.hr, label %.lr.ph.preheader.i100, label %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit

.lr.ph.preheader.i100:                            ; preds = %bb.z
  %.pre.i101 = load float, ptr %i.hn, align 4, !tbaa !169
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %.lr.ph.i102, %.lr.ph.preheader.i100
  %i.hs = phi float [ %i.hx, %.lr.ph.i102 ], [ %.pre.i101, %.lr.ph.preheader.i100 ] ; 2 uses
  %.014.i = phi i64 [ %i.hw, %.lr.ph.i102 ], [ 1, %.lr.ph.preheader.i100 ] ; 3 uses
  %.01013.i = phi i64 [ %spec.select.i103, %.lr.ph.i102 ], [ 0, %.lr.ph.preheader.i100 ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.014.i
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !169 ; 2 uses
  %i.hv = fcmp ogt float %i.hu, %i.hs             ; 2 uses
  %spec.select.i103 = select i1 %i.hv, i64 %.014.i, i64 %.01013.i ; 2 uses
  %i.hw = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.hw, %i.hq
  %i.hx = select i1 %i.hv, float %i.hu, float %i.hs
  br i1 %exitcond.not.i104, label %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit, label %.lr.ph.i102, !llvm.loop !7

_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit:       ; preds = %.lr.ph.i102, %bb.z
  %.011.i99 = phi i64 [ 0, %bb.z ], [ %spec.select.i103, %.lr.ph.i102 ]
  %i.hy = getelementptr [4 x i8], ptr %i.hj, i64 %.011.i99
  %i.hz = getelementptr [4 x i8], ptr %i.hy, i64 %i.hm
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !169
  %i.ib = fsub float %i.hl, %i.ia
  br label %bb.ad

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.x
  %i.id = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIfE9ArgMaxAtKEPSt6vectorIfSaIfEEiii(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.eg, i32 noundef %i.fb)
          to label %bb.ac unwind label %bb.aa     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.ie = zext nneg i32 %i.fb to i64
  %i.if = load ptr, ptr %2, align 8, !tbaa !174   ; 7 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !169
  %.not214 = icmp eq i32 %i.fa, 0
  br i1 %.not214, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit, label %.lr.ph.preheader.i106

.lr.ph.preheader.i106:                            ; preds = %bb.ac
  %.pre.i107 = load float, ptr %i.if, align 4, !tbaa !169 ; 2 uses
  %3 = zext nneg i32 %i.fa to i64                 ; 2 uses
  %xtraiter238 = and i64 %3, 1
  %i.ii = icmp eq i32 %i.fb, 2
  br i1 %i.ii, label %.lr.ph.i108.epil.preheader, label %.lr.ph.preheader.i106.new

.lr.ph.preheader.i106.new:                        ; preds = %.lr.ph.preheader.i106
  %unroll_iter244 = and i64 %3, 2147483646
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.lr.ph.i108, %.lr.ph.preheader.i106.new
  %i.ij = phi float [ %.pre.i107, %.lr.ph.preheader.i106.new ], [ %i.it, %.lr.ph.i108 ] ; 2 uses
  %.014.i109 = phi i64 [ 1, %.lr.ph.preheader.i106.new ], [ %i.is, %.lr.ph.i108 ] ; 4 uses
  %.01013.i110 = phi i64 [ 0, %.lr.ph.preheader.i106.new ], [ %spec.select.i111.1, %.lr.ph.i108 ]
  %niter245 = phi i64 [ 0, %.lr.ph.preheader.i106.new ], [ %niter245.next.1, %.lr.ph.i108 ]
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.014.i109
  %i.il = load float, ptr %i.ik, align 4, !tbaa !169 ; 2 uses
  %i.im = fcmp olt float %i.il, %i.ij             ; 2 uses
  %spec.select.i111 = select i1 %i.im, i64 %.014.i109, i64 %.01013.i110
  %i.in = add nuw nsw i64 %.014.i109, 1           ; 2 uses
  %i.io = select i1 %i.im, float %i.il, float %i.ij ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.in
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !169 ; 2 uses
  %i.ir = fcmp olt float %i.iq, %i.io             ; 2 uses
  %spec.select.i111.1 = select i1 %i.ir, i64 %i.in, i64 %spec.select.i111 ; 3 uses
  %i.is = add nuw nsw i64 %.014.i109, 2           ; 2 uses
  %i.it = select i1 %i.ir, float %i.iq, float %i.io ; 2 uses
  %niter245.next.1 = add nuw i64 %niter245, 2     ; 2 uses
  %niter245.ncmp.1 = icmp eq i64 %niter245.next.1, %unroll_iter244
  br i1 %niter245.ncmp.1, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa, label %.lr.ph.i108, !llvm.loop !8

_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i108
  %lcmp.mod241.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod241.not, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit, label %.lr.ph.i108.epil.preheader

.lr.ph.i108.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i106
  %.epil.init240 = phi float [ %.pre.i107, %.lr.ph.preheader.i106 ], [ %i.it, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa ]
  %.014.i109.epil.init = phi i64 [ 1, %.lr.ph.preheader.i106 ], [ %i.is, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i110.epil.init = phi i64 [ 0, %.lr.ph.preheader.i106 ], [ %spec.select.i111.1, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa ]
  %lcmp.mod243 = trunc i32 %i.fa to i1
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.014.i109.epil.init
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !169
  %i.iw = fcmp olt float %i.iv, %.epil.init240
  %spec.select.i111.epil = select i1 %i.iw, i64 %.014.i109.epil.init, i64 %.01013.i110.epil.init
  br label %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit

_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit:       ; preds = %.lr.ph.i108.epil.preheader, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa, %bb.ac
  %.011.i105 = phi i64 [ 0, %bb.ac ], [ %spec.select.i111.1, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa ], [ %spec.select.i111.epil, %.lr.ph.i108.epil.preheader ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.011.i105
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !169 ; 2 uses
  %i.iz = fsub float %i.iy, %i.ih
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit, %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit
  %.sink = phi float [ %i.iz, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit ], [ %i.ib, %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit ]
  %.sink212.in = phi float [ %i.iy, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit ], [ %i.hl, %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit ]
  %.pr191 = phi ptr [ %i.if, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit ], [ %i.hj, %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit ]
  %.sink212 = fpext float %.sink212.in to double
  %i.ja = fpext float %.sink to double
  %i.jb = fneg double %i.ja
  %i.jc = call double @llvm.fmuladd.f64(double %i.jb, double %i.hf, double %.sink212)
  %.2.in = fptrunc double %i.jc to float
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.thread, %bb.ad, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit
  %.3.in163 = phi float [ %i.gk, %.thread ], [ %.2.in, %bb.ad ], [ %i.hd, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit ]
  %i.jd = phi ptr [ %i.gi, %.thread ], [ %.pr191, %bb.ad ], [ %i.ea, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit ] ; 2 uses
  %i.je = load ptr, ptr %i.ec, align 8, !tbaa !175
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jh) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.ag

bb.ae:                                            ; preds = %bb.aa, %bb.v
  %.pn = phi { ptr, i32 } [ %i.gl, %bb.v ], [ %i.ic, %bb.aa ] ; 2 uses
  %i.ji = load ptr, ptr %2, align 8, !tbaa !174   ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIfSaIfEED2Ev.exit115, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jj = load ptr, ptr %i.ec, align 8, !tbaa !175
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.ji to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jm) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit115

_ZNSt6vectorIfSaIfEED2Ev.exit115:                 ; preds = %bb.af, %bb.ae, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.s ], [ %.pn, %bb.ae ], [ %.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.p, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %.4.in = phi float [ %i.h, %bb.c ], [ %.1.in, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.dx, %bb.p ], [ %.3.in163, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %.4 = fpext float %.4.in to double
  ret double %.4

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit85, %_ZNSt6vectorIfSaIfEED2Ev.exit115
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit115 ], [ %.pn68.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit85 ]
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionL1loss12GetGradientsEPKdPfS3_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !204
  %i.i = load i32, ptr %0, align 4, !tbaa !204    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !204
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 4 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  %i.l = load i32, ptr %i.a, align 4, !tbaa !204  ; 3 uses
  %.not18 = icmp sgt i32 %i.l, %i.k
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !222    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 3 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !220    ; 3 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !220    ; 3 uses
  %i.r = sext i32 %i.l to i64                     ; 4 uses
  %i.s = add nsw i32 %i.k, 1
  %i.t = sub i32 %i.k, %i.l                       ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.t, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.w = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.x = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.y = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.z = sub i64 %i.x, %i.w
  %diff.check = icmp ugt i64 %i.z, -8
  %i.aa = sub i64 %i.y, %i.x
  %diff.check23 = icmp ugt i64 %i.aa, -8
  %conflict.rdx = or i1 %diff.check, %diff.check23
  %i.ab = sub i64 %i.y, %i.w
  %diff.check24 = icmp ugt i64 %i.ab, -8
  %conflict.rdx25 = or i1 %conflict.rdx, %diff.check24
  br i1 %conflict.rdx25, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 8589934590               ; 3 uses
  %i.ac = add nsw i64 %n.vec, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add i64 %index, %i.r                    ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ad
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !191
  %i.af = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ad
  %wide.load26 = load <2 x float>, ptr %i.af, align 4, !tbaa !169
  %i.ag = fpext <2 x float> %wide.load26 to <2 x double>
  %i.ah = fsub <2 x double> %wide.load, %i.ag     ; 2 uses
  %i.ai = fcmp ogt <2 x double> %i.ah, zeroinitializer
  %i.aj = zext <2 x i1> %i.ai to <2 x i32>
  %i.ak = fcmp olt <2 x double> %i.ah, zeroinitializer
  %i.al = sext <2 x i1> %i.ak to <2 x i32>
  %i.am = add nsw <2 x i32> %i.al, %i.aj
  %i.an = sitofp <2 x i32> %i.am to <2 x float>
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ad
  store <2 x float> %i.an, ptr %i.ao, align 4, !tbaa !169
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ad
  store <2 x float> splat (float 1.000000e+00), ptr %i.ap, align 4, !tbaa !169
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !405

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.as = load double, ptr %i.ar, align 8, !tbaa !191
  %i.at = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.au = load float, ptr %i.at, align 4, !tbaa !169
  %i.av = fpext float %i.au to double
  %i.aw = fsub double %i.as, %i.av                ; 2 uses
  %i.ax = fcmp ogt double %i.aw, 0.000000e+00
  %i.ay = zext i1 %i.ax to i32
  %i.az = fcmp olt double %i.aw, 0.000000e+00
  %.neg.i = sext i1 %i.az to i32
  %i.ba = add nsw i32 %.neg.i, %i.ay
  %i.bb = sitofp i32 %i.ba to float
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  store float %i.bb, ptr %i.bc, align 4, !tbaa !169
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !169
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !406

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionL1loss12GetGradientsEPKdPfS3_.omp_outlined.25(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvimmEZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_E9_M_invokeERKSt9_Any_dataOiOmSF_:bb.a
  %exitcond.not.i.i.i.1 = icmp eq i64 %.0.i.i.i.1, %i.c
  %i.w = select i1 %i.v, float %i.u, float %i.s
  br i1 %exitcond.not.i.i.i.1, label %_ZSt10__invoke_rIvRZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_JimmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %.lr.ph.i.i.i.new, !llvm.loop !504

_ZSt10__invoke_rIvRZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_JimmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new, %bb.a
  %.010.lcssa.i.i.i = phi i64 [ %i.b, %bb.a ], [ %spec.select.i.i.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i.i.i.1, %.lr.ph.i.i.i.new ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !507, !nonnull !134, !align !255
  %i.z = sext i32 %i.a to i64
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !245
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store i64 %.010.lcssa.i.i.i, ptr %i.ab, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvimmEZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_, ptr %0, align 8, !tbaa !257
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !185
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !508
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEEEUlimmE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM22RegressionQuantilelossD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8LightGBM16RegressionL2lossE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN8LightGBM16RegressionL2lossD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35, !inline_history !176
  br label %_ZN8LightGBM16RegressionL2lossD2Ev.exit

_ZN8LightGBM16RegressionL2lossD2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM22RegressionQuantileloss12GetGradientsEPKdPfS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.a, align 8, !tbaa !222
  store ptr %2, ptr %i.b, align 8, !tbaa !220
  store ptr %3, ptr %i.c, align 8, !tbaa !220
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !221
  %i.g = icmp eq ptr %i.f, null
  %i.h = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.h)
  %_ZNK8LightGBM22RegressionQuantileloss12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM22RegressionQuantileloss12GetGradientsEPKdPfS3_.omp_outlined.34 = select i1 %i.g, ptr @_ZNK8LightGBM22RegressionQuantileloss12GetGradientsEPKdPfS3_.omp_outlined, ptr @_ZNK8LightGBM22RegressionQuantileloss12GetGradientsEPKdPfS3_.omp_outlined.34
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull %_ZNK8LightGBM22RegressionQuantileloss12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM22RegressionQuantileloss12GetGradientsEPKdPfS3_.omp_outlined.34, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM22RegressionQuantileloss7GetNameEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8LightGBM22RegressionQuantileloss17IsRenewTreeOutputEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM22RegressionQuantileloss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiS7_i(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %1, ptr nofree noundef align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.68, align 8             ; 7 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %7 = alloca %class.anon.67, align 8             ; 6 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca ptr, align 8                      ; 11 uses
  %i.z = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %"class.std::vector.13", align 8    ; 16 uses
  %9 = alloca %"class.std::vector.13", align 8    ; 16 uses
  store ptr %3, ptr %i.y, align 8, !tbaa !240
  store ptr %4, ptr %i.z, align 8, !tbaa !240
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !221
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = icmp eq ptr %4, null                    ; 2 uses
  %i.ae = icmp slt i32 %5, 2                      ; 4 uses
  br i1 %i.ac, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  br i1 %i.ad, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !218
  %i.ah = load i32, ptr %3, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !220
  store i32 %i.ah, ptr %i.x, align 4, !tbaa !204
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !153
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit:             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !242
  %i.am = call noundef double %i.al(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.cv

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.an = zext nneg i32 %5 to i64                 ; 3 uses
  %i.ao = shl nuw nsw i64 %i.an, 3                ; 3 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #34
          to label %.lr.ph495 unwind label %bb.g  ; 5 uses

.lr.ph495:                                        ; preds = %bb.f
  store ptr %i.ap, ptr %8, align 8, !tbaa !192
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !194
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !191
  %i.as = getelementptr i8, ptr %i.ap, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ao, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !191
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !193
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.h

._crit_edge496:                                   ; preds = %bb.k
  %i.ay = add nsw i32 %5, -1
  %i.az = uitofp nneg i32 %i.ay to double
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !147
  %i.bc = fpext float %i.bb to double
  %i.bd = fsub double 1.000000e+00, %i.bc
  %i.be = fmul double %i.bd, %i.az                ; 2 uses
  %i.bf = fptosi double %i.be to i32              ; 9 uses
  %i.bg = add nuw nsw i32 %i.bf, 1                ; 6 uses
  %i.bh = icmp slt i32 %i.bf, 0
  br i1 %i.bh, label %bb.l, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit219

bb.h:                                             ; preds = %.lr.ph495, %bb.k
  %indvars.iv518 = phi i64 [ 0, %.lr.ph495 ], [ %indvars.iv.next519, %bb.k ] ; 3 uses
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !218
  %i.bk = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv518
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.bj, ptr %i.u, align 8, !tbaa !220
  store i32 %i.bm, ptr %i.v, align 4, !tbaa !204
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !153
  %.not.i.i192 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i192, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc193 unwind label %.loopexit.split-lp

.noexc193:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !242
  %i.bp = invoke noundef double %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %bb.k unwind label %.loopexit, !inline_history !0

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bq = load ptr, ptr %8, align 8, !tbaa !192
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv518
  store double %i.bp, ptr %i.br, align 8, !tbaa !191
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond522.not = icmp eq i64 %indvars.iv.next519, %i.an
  br i1 %exitcond522.not, label %._crit_edge496, label %bb.h, !llvm.loop !509

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %._crit_edge496
  %i.bs = load ptr, ptr %8, align 8, !tbaa !222   ; 10 uses
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !222 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3                 ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 1024
  br i1 %i.bz, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.ca = icmp samesign ugt i64 %i.by, 1
  br i1 %i.ca, label %.lr.ph.preheader.i, label %.thread

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.pre.i = load double, ptr %i.bs, align 8, !tbaa !191 ; 2 uses
  %i.cb = add nsw i64 %i.by, -1                   ; 3 uses
  %xtraiter631 = and i64 %i.cb, 1
  %i.cc = icmp eq i64 %i.bx, 16
  br i1 %i.cc, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter637 = and i64 %i.cb, -2
  br label %.lr.ph.i

bb.n:                                             ; preds = %bb.m
  %i.cd = invoke noundef i64 @_ZN8LightGBM9ArrayArgsIdE8ArgMaxMTERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %..thread_crit_edge unwind label %bb.o

..thread_crit_edge:                               ; preds = %bb.n
  %.pre525 = load ptr, ptr %8, align 8, !tbaa !192
  br label %.thread

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %i.ce = phi double [ %.pre.i, %.lr.ph.preheader.i.new ], [ %i.co, %.lr.ph.i ] ; 2 uses
  %.015.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.cn, %.lr.ph.i ] ; 4 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %niter638 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter638.next.1, %.lr.ph.i ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.015.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !191 ; 2 uses
  %i.ch = fcmp ogt double %i.cg, %i.ce            ; 2 uses
  %spec.select.i = select i1 %i.ch, i64 %.015.i, i64 %.01214.i
  %i.ci = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %i.cj = select i1 %i.ch, double %i.cg, double %i.ce ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ci
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !191 ; 2 uses
  %i.cm = fcmp ogt double %i.cl, %i.cj            ; 2 uses
  %spec.select.i.1 = select i1 %i.cm, i64 %i.ci, i64 %spec.select.i ; 3 uses
  %i.cn = add nuw nsw i64 %.015.i, 2              ; 2 uses
  %i.co = select i1 %i.cm, double %i.cl, double %i.cj ; 2 uses
  %niter638.next.1 = add nuw i64 %niter638, 2     ; 2 uses
  %niter638.ncmp.1 = icmp eq i64 %niter638.next.1, %unroll_iter637
  br i1 %niter638.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !510

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph.i
  %lcmp.mod634.not = icmp eq i64 %xtraiter631, 0
  br i1 %lcmp.mod634.not, label %.thread, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init633 = phi double [ %.pre.i, %.lr.ph.preheader.i ], [ %i.co, %.thread.loopexit.unr-lcssa ]
  %.015.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.cn, %.thread.loopexit.unr-lcssa ] ; 2 uses
  %.01214.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i.1, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod636 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod636)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.015.i.epil.init
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !191
  %i.cr = fcmp ogt double %i.cq, %.epil.init633
  %spec.select.i.epil = select i1 %i.cr, i64 %.015.i.epil.init, i64 %.01214.i.epil.init
  br label %.thread

.thread:                                          ; preds = %.lr.ph.i.epil.preheader, %.thread.loopexit.unr-lcssa, %..thread_crit_edge, %bb.l, %.preheader.i
  %i.cs = phi ptr [ %i.bs, %bb.l ], [ %.pre525, %..thread_crit_edge ], [ %i.bs, %.preheader.i ], [ %i.bs, %.thread.loopexit.unr-lcssa ], [ %i.bs, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.013.i = phi i64 [ 0, %bb.l ], [ %i.cd, %..thread_crit_edge ], [ 0, %.preheader.i ], [ %spec.select.i.1, %.thread.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.013.i
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !191
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.p:                                             ; preds = %._crit_edge496
  %.not183 = icmp slt i32 %i.bg, %5
  br i1 %.not183, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = load ptr, ptr %8, align 8, !tbaa !222   ; 8 uses
  %i.cx = load ptr, ptr %i.au, align 8, !tbaa !222 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit, label %.preheader.i197

.preheader.i197:                                  ; preds = %bb.q
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = ashr exact i64 %i.db, 3                 ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, 1
  br i1 %i.dd, label %.lr.ph.preheader.i198, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit

.lr.ph.preheader.i198:                            ; preds = %.preheader.i197
  %.pre.i199 = load double, ptr %i.cw, align 8, !tbaa !191 ; 2 uses
  %i.de = add nsw i64 %i.dc, -1                   ; 3 uses
  %xtraiter607 = and i64 %i.de, 1
  %i.df = icmp eq i64 %i.db, 16
  br i1 %i.df, label %.lr.ph.i200.epil.preheader, label %.lr.ph.preheader.i198.new

.lr.ph.preheader.i198.new:                        ; preds = %.lr.ph.preheader.i198
  %unroll_iter613 = and i64 %i.de, -2
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %.lr.ph.i200, %.lr.ph.preheader.i198.new
  %i.dg = phi double [ %.pre.i199, %.lr.ph.preheader.i198.new ], [ %i.dq, %.lr.ph.i200 ] ; 2 uses
  %.013.i201 = phi i64 [ 1, %.lr.ph.preheader.i198.new ], [ %i.dp, %.lr.ph.i200 ] ; 4 uses
  %.01012.i = phi i64 [ 0, %.lr.ph.preheader.i198.new ], [ %spec.select.i202.1, %.lr.ph.i200 ]
  %niter614 = phi i64 [ 0, %.lr.ph.preheader.i198.new ], [ %niter614.next.1, %.lr.ph.i200 ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.013.i201
  %i.di = load double, ptr %i.dh, align 8, !tbaa !191 ; 2 uses
  %i.dj = fcmp olt double %i.di, %i.dg            ; 2 uses
  %spec.select.i202 = select i1 %i.dj, i64 %.013.i201, i64 %.01012.i
  %i.dk = add nuw i64 %.013.i201, 1               ; 2 uses
  %i.dl = select i1 %i.dj, double %i.di, double %i.dg ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dk
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !191 ; 2 uses
  %i.do = fcmp olt double %i.dn, %i.dl            ; 2 uses
  %spec.select.i202.1 = select i1 %i.do, i64 %i.dk, i64 %spec.select.i202 ; 3 uses
  %i.dp = add nuw i64 %.013.i201, 2               ; 2 uses
  %i.dq = select i1 %i.do, double %i.dn, double %i.dl ; 2 uses
  %niter614.next.1 = add nuw i64 %niter614, 2     ; 2 uses
  %niter614.ncmp.1 = icmp eq i64 %niter614.next.1, %unroll_iter613
  br i1 %niter614.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa, label %.lr.ph.i200, !llvm.loop !1

_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i200
  %lcmp.mod610.not = icmp eq i64 %xtraiter607, 0
  br i1 %lcmp.mod610.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit, label %.lr.ph.i200.epil.preheader

.lr.ph.i200.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i198
  %.epil.init609 = phi double [ %.pre.i199, %.lr.ph.preheader.i198 ], [ %i.dq, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa ]
  %.013.i201.epil.init = phi i64 [ 1, %.lr.ph.preheader.i198 ], [ %i.dp, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01012.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i198 ], [ %spec.select.i202.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod612 = trunc i64 %i.de to i1
  call void @llvm.assume(i1 %lcmp.mod612)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.013.i201.epil.init
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !191
  %i.dt = fcmp olt double %i.ds, %.epil.init609
  %spec.select.i202.epil = select i1 %i.dt, i64 %.013.i201.epil.init, i64 %.01012.i.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit

_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit: ; preds = %.lr.ph.i200.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa, %bb.q, %.preheader.i197
  %.011.i = phi i64 [ 0, %bb.q ], [ 0, %.preheader.i197 ], [ %spec.select.i202.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa ], [ %spec.select.i202.epil, %.lr.ph.i200.epil.preheader ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.011.i
  %i.dv = load double, ptr %i.du, align 8, !tbaa !191
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.dw = uitofp nneg i32 %i.bf to double
  %i.dx = fsub double %i.be, %i.dw                ; 2 uses
  %i.dy = lshr i32 %5, 1
  %.not184 = icmp samesign ugt i32 %i.dy, %i.bf
  br i1 %.not184, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %8, i32 noundef 0, i32 noundef %5, i32 noundef %i.bf)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ea = zext nneg i32 %i.bf to i64
  %i.eb = load ptr, ptr %8, align 8, !tbaa !192   ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !191 ; 2 uses
  %i.ee = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ee ; 4 uses
  %i.eg = sub nuw nsw i32 %5, %i.bg               ; 3 uses
  %i.eh = icmp ugt i32 %i.eg, 1
  br i1 %i.eh, label %.lr.ph.preheader.i205, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit

.lr.ph.preheader.i205:                            ; preds = %bb.t
  %i.ei = zext nneg i32 %i.eg to i64
  %.pre.i206 = load double, ptr %i.ef, align 8, !tbaa !191 ; 2 uses
  %i.ej = add nsw i64 %i.ei, -1                   ; 3 uses
  %xtraiter615 = and i64 %i.ej, 1
  %i.ek = icmp eq i32 %i.eg, 2
  br i1 %i.ek, label %.lr.ph.i207.epil.preheader, label %.lr.ph.preheader.i205.new

.lr.ph.preheader.i205.new:                        ; preds = %.lr.ph.preheader.i205
  %unroll_iter621 = and i64 %i.ej, -2
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207, %.lr.ph.preheader.i205.new
  %i.el = phi double [ %.pre.i206, %.lr.ph.preheader.i205.new ], [ %i.ev, %.lr.ph.i207 ] ; 2 uses
  %.014.i = phi i64 [ 1, %.lr.ph.preheader.i205.new ], [ %i.eu, %.lr.ph.i207 ] ; 4 uses
  %.01013.i = phi i64 [ 0, %.lr.ph.preheader.i205.new ], [ %spec.select.i208.1, %.lr.ph.i207 ]
  %niter622 = phi i64 [ 0, %.lr.ph.preheader.i205.new ], [ %niter622.next.1, %.lr.ph.i207 ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.014.i
  %i.en = load double, ptr %i.em, align 8, !tbaa !191 ; 2 uses
  %i.eo = fcmp ogt double %i.en, %i.el            ; 2 uses
  %spec.select.i208 = select i1 %i.eo, i64 %.014.i, i64 %.01013.i
  %i.ep = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %i.eq = select i1 %i.eo, double %i.en, double %i.el ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ep
  %i.es = load double, ptr %i.er, align 8, !tbaa !191 ; 2 uses
  %i.et = fcmp ogt double %i.es, %i.eq            ; 2 uses
  %spec.select.i208.1 = select i1 %i.et, i64 %i.ep, i64 %spec.select.i208 ; 3 uses
  %i.eu = add nuw nsw i64 %.014.i, 2              ; 2 uses
  %i.ev = select i1 %i.et, double %i.es, double %i.eq ; 2 uses
  %niter622.next.1 = add nuw i64 %niter622, 2     ; 2 uses
  %niter622.ncmp.1 = icmp eq i64 %niter622.next.1, %unroll_iter621
  br i1 %niter622.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa, label %.lr.ph.i207, !llvm.loop !2

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i207
  %lcmp.mod618.not = icmp eq i64 %xtraiter615, 0
  br i1 %lcmp.mod618.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit, label %.lr.ph.i207.epil.preheader

.lr.ph.i207.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i205
  %.epil.init617 = phi double [ %.pre.i206, %.lr.ph.preheader.i205 ], [ %i.ev, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa ]
  %.014.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i205 ], [ %i.eu, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i205 ], [ %spec.select.i208.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa ]
  %lcmp.mod620 = trunc i64 %i.ej to i1
  call void @llvm.assume(i1 %lcmp.mod620)
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.014.i.epil.init
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !191
  %i.ey = fcmp ogt double %i.ex, %.epil.init617
  %spec.select.i208.epil = select i1 %i.ey, i64 %.014.i.epil.init, i64 %.01013.i.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit:       ; preds = %.lr.ph.i207.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa, %bb.t
  %.011.i204 = phi i64 [ 0, %bb.t ], [ %spec.select.i208.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit.loopexit.unr-lcssa ], [ %spec.select.i208.epil, %.lr.ph.i207.epil.preheader ]
  %i.ez = getelementptr [8 x i8], ptr %i.eb, i64 %.011.i204
  %i.fa = getelementptr [8 x i8], ptr %i.ez, i64 %i.ee
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !191
  %i.fc = fsub double %i.ed, %i.fb
  %i.fd = fneg double %i.fc
  %i.fe = call double @llvm.fmuladd.f64(double %i.fd, double %i.dx, double %i.ed)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.fg = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %8, i32 noundef 0, i32 noundef %5, i32 noundef %i.bg)
          to label %bb.w unwind label %bb.u       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.fh = zext nneg i32 %i.bg to i64
  %i.fi = load ptr, ptr %8, align 8, !tbaa !192   ; 7 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !191
  %.not553 = icmp eq i32 %i.bf, 0
  br i1 %.not553, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit, label %.lr.ph.preheader.i211

.lr.ph.preheader.i211:                            ; preds = %bb.w
  %.pre.i212 = load double, ptr %i.fi, align 8, !tbaa !191 ; 2 uses
  %10 = zext nneg i32 %i.bf to i64                ; 2 uses
  %xtraiter623 = and i64 %10, 1
  %i.fl = icmp eq i32 %i.bg, 2
  br i1 %i.fl, label %.lr.ph.i213.epil.preheader, label %.lr.ph.preheader.i211.new

.lr.ph.preheader.i211.new:                        ; preds = %.lr.ph.preheader.i211
  %unroll_iter629 = and i64 %10, 2147483646
  br label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213, %.lr.ph.preheader.i211.new
  %i.fm = phi double [ %.pre.i212, %.lr.ph.preheader.i211.new ], [ %i.fw, %.lr.ph.i213 ] ; 2 uses
  %.014.i214 = phi i64 [ 1, %.lr.ph.preheader.i211.new ], [ %i.fv, %.lr.ph.i213 ] ; 4 uses
  %.01013.i215 = phi i64 [ 0, %.lr.ph.preheader.i211.new ], [ %spec.select.i216.1, %.lr.ph.i213 ]
  %niter630 = phi i64 [ 0, %.lr.ph.preheader.i211.new ], [ %niter630.next.1, %.lr.ph.i213 ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.014.i214
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !191 ; 2 uses
  %i.fp = fcmp olt double %i.fo, %i.fm            ; 2 uses
  %spec.select.i216 = select i1 %i.fp, i64 %.014.i214, i64 %.01013.i215
  %i.fq = add nuw nsw i64 %.014.i214, 1           ; 2 uses
  %i.fr = select i1 %i.fp, double %i.fo, double %i.fm ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fq
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !191 ; 2 uses
  %i.fu = fcmp olt double %i.ft, %i.fr            ; 2 uses
  %spec.select.i216.1 = select i1 %i.fu, i64 %i.fq, i64 %spec.select.i216 ; 3 uses
  %i.fv = add nuw nsw i64 %.014.i214, 2           ; 2 uses
  %i.fw = select i1 %i.fu, double %i.ft, double %i.fr ; 2 uses
  %niter630.next.1 = add nuw i64 %niter630, 2     ; 2 uses
  %niter630.ncmp.1 = icmp eq i64 %niter630.next.1, %unroll_iter629
  br i1 %niter630.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa, label %.lr.ph.i213, !llvm.loop !3

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i213
  %lcmp.mod626.not = icmp eq i64 %xtraiter623, 0
  br i1 %lcmp.mod626.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit, label %.lr.ph.i213.epil.preheader

.lr.ph.i213.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i211
  %.epil.init625 = phi double [ %.pre.i212, %.lr.ph.preheader.i211 ], [ %i.fw, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa ]
  %.014.i214.epil.init = phi i64 [ 1, %.lr.ph.preheader.i211 ], [ %i.fv, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i215.epil.init = phi i64 [ 0, %.lr.ph.preheader.i211 ], [ %spec.select.i216.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa ]
  %lcmp.mod628 = trunc i32 %i.bf to i1
  call void @llvm.assume(i1 %lcmp.mod628)
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.014.i214.epil.init
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !191
  %i.fz = fcmp olt double %i.fy, %.epil.init625
  %spec.select.i216.epil = select i1 %i.fz, i64 %.014.i214.epil.init, i64 %.01013.i215.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit:       ; preds = %.lr.ph.i213.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa, %bb.w
  %.011.i210 = phi i64 [ 0, %bb.w ], [ %spec.select.i216.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit.loopexit.unr-lcssa ], [ %spec.select.i216.epil, %.lr.ph.i213.epil.preheader ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.011.i210
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !191 ; 2 uses
  %i.gc = fsub double %i.gb, %i.fk
  %i.gd = fneg double %i.gc
  %i.ge = call double @llvm.fmuladd.f64(double %i.gd, double %i.dx, double %i.gb)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.thread, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit
  %.1462 = phi double [ %i.cu, %.thread ], [ %i.ge, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit ], [ %i.fe, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit ], [ %i.dv, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit ]
  %i.gf = phi ptr [ %i.cs, %.thread ], [ %i.fi, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit ], [ %i.eb, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit ], [ %i.cw, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit ] ; 2 uses
  %i.gg = load ptr, ptr %i.ar, align 8, !tbaa !194
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.cv

bb.x:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.o, %bb.u
  %.pn187 = phi { ptr, i32 } [ %i.ff, %bb.u ], [ %i.cv, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.gk = load ptr, ptr %8, align 8, !tbaa !192   ; 3 uses
  %.not.i.i.i218 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i218, label %_ZNSt6vectorIdSaIdEED2Ev.exit219, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gl = load ptr, ptr %i.ar, align 8, !tbaa !194
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.go) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit219

_ZNSt6vectorIdSaIdEED2Ev.exit219:                 ; preds = %bb.y, %bb.x, %bb.g
  %.pn187.pn = phi { ptr, i32 } [ %i.bi, %bb.g ], [ %.pn187, %bb.x ], [ %.pn187, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.cw

bb.z:                                             ; preds = %bb.b
  br i1 %i.ae, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !218
  %i.gr = load i32, ptr %3, align 4, !tbaa !204
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.gq, ptr %i.s, align 8, !tbaa !220
  store i32 %i.gu, ptr %i.t, align 4, !tbaa !204
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !153
  %.not.i.i220 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i220, label %bb.ab, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit221

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit221:          ; preds = %bb.aa
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !242
  %i.gz = call noundef double %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cv

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.ha = zext nneg i32 %5 to i64                 ; 3 uses
  %i.hb = shl nuw nsw i64 %i.ha, 3                ; 3 uses
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #34
          to label %.lr.ph491 unwind label %bb.ad ; 5 uses

.lr.ph491:                                        ; preds = %bb.ac
  store ptr %i.hc, ptr %9, align 8, !tbaa !192
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.ha
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !194
  store double 0.000000e+00, ptr %i.hc, align 8, !tbaa !191
  %i.hf = getelementptr i8, ptr %i.hc, i64 8
  %.idx.i.i.i.i.i.i.i224 = add nsw i64 %i.hb, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hf, i8 0, i64 %.idx.i.i.i.i.i.i.i224, i1 false), !tbaa !191
  %i.hg = getelementptr i8, ptr %i.hc, i64 %i.hb
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !193
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.ae

._crit_edge492:                                   ; preds = %bb.ah
  %i.hl = add nsw i32 %5, -1
  %i.hm = uitofp nneg i32 %i.hl to double
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !147
  %i.hp = fpext float %i.ho to double
  %i.hq = fsub double 1.000000e+00, %i.hp
  %i.hr = fmul double %i.hq, %i.hm                ; 2 uses
  %i.hs = fptosi double %i.hr to i32              ; 9 uses
  %i.ht = add nuw nsw i32 %i.hs, 1                ; 6 uses
  %i.hu = icmp slt i32 %i.hs, 0
  br i1 %i.hu, label %bb.ai, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit275

bb.ae:                                            ; preds = %.lr.ph491, %bb.ah
  %indvars.iv513 = phi i64 [ 0, %.lr.ph491 ], [ %indvars.iv.next514, %bb.ah ] ; 3 uses
  %i.hw = load ptr, ptr %i.hi, align 8, !tbaa !218
  %i.hx = load ptr, ptr %i.z, align 8, !tbaa !240
  %i.hy = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv513
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !204
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.hw, ptr %i.q, align 8, !tbaa !220
  store i32 %i.id, ptr %i.r, align 4, !tbaa !204
  %i.ie = load ptr, ptr %i.hj, align 8, !tbaa !153
  %.not.i.i229 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i229, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc230 unwind label %.loopexit.split-lp479

.noexc230:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.if = load ptr, ptr %i.hk, align 8, !tbaa !242
  %i.ig = invoke noundef double %i.if(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %bb.ah unwind label %.loopexit478, !inline_history !0

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ih = load ptr, ptr %9, align 8, !tbaa !192
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv513
  store double %i.ig, ptr %i.ii, align 8, !tbaa !191
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next514, %i.ha
  br i1 %exitcond517.not, label %._crit_edge492, label %bb.ae, !llvm.loop !511

.loopexit478:                                     ; preds = %bb.ag
  %lpad.loopexit480 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp479:                            ; preds = %bb.af
  %lpad.loopexit.split-lp481 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ai:                                            ; preds = %._crit_edge492
  %i.ij = load ptr, ptr %9, align 8, !tbaa !222   ; 10 uses
  %i.ik = load ptr, ptr %i.hh, align 8, !tbaa !222 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %.thread466, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = sub i64 %i.im, %i.in                    ; 2 uses
  %i.ip = ashr exact i64 %i.io, 3                 ; 3 uses
  %i.iq = icmp ugt i64 %i.ip, 1024
  br i1 %i.iq, label %bb.ak, label %.preheader.i233

.preheader.i233:                                  ; preds = %bb.aj
  %i.ir = icmp samesign ugt i64 %i.ip, 1
  br i1 %i.ir, label %.lr.ph.preheader.i235, label %.thread466

.lr.ph.preheader.i235:                            ; preds = %.preheader.i233
  %.pre.i236 = load double, ptr %i.ij, align 8, !tbaa !191 ; 2 uses
  %i.is = add nsw i64 %i.ip, -1                   ; 3 uses
  %xtraiter599 = and i64 %i.is, 1
  %i.it = icmp eq i64 %i.io, 16
  br i1 %i.it, label %.lr.ph.i237.epil.preheader, label %.lr.ph.preheader.i235.new

.lr.ph.preheader.i235.new:                        ; preds = %.lr.ph.preheader.i235
  %unroll_iter605 = and i64 %i.is, -2
  br label %.lr.ph.i237

bb.ak:                                            ; preds = %bb.aj
  %i.iu = invoke noundef i64 @_ZN8LightGBM9ArrayArgsIdE8ArgMaxMTERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %..thread466_crit_edge unwind label %bb.al

..thread466_crit_edge:                            ; preds = %bb.ak
  %.pre = load ptr, ptr %9, align 8, !tbaa !192
  br label %.thread466

.lr.ph.i237:                                      ; preds = %.lr.ph.i237, %.lr.ph.preheader.i235.new
  %i.iv = phi double [ %.pre.i236, %.lr.ph.preheader.i235.new ], [ %i.jf, %.lr.ph.i237 ] ; 2 uses
  %.015.i238 = phi i64 [ 1, %.lr.ph.preheader.i235.new ], [ %i.je, %.lr.ph.i237 ] ; 4 uses
  %.01214.i239 = phi i64 [ 0, %.lr.ph.preheader.i235.new ], [ %spec.select.i240.1, %.lr.ph.i237 ]
  %niter606 = phi i64 [ 0, %.lr.ph.preheader.i235.new ], [ %niter606.next.1, %.lr.ph.i237 ]
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.015.i238
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !191 ; 2 uses
  %i.iy = fcmp ogt double %i.ix, %i.iv            ; 2 uses
  %spec.select.i240 = select i1 %i.iy, i64 %.015.i238, i64 %.01214.i239
  %i.iz = add nuw nsw i64 %.015.i238, 1           ; 2 uses
  %i.ja = select i1 %i.iy, double %i.ix, double %i.iv ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.iz
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !191 ; 2 uses
  %i.jd = fcmp ogt double %i.jc, %i.ja            ; 2 uses
  %spec.select.i240.1 = select i1 %i.jd, i64 %i.iz, i64 %spec.select.i240 ; 3 uses
  %i.je = add nuw nsw i64 %.015.i238, 2           ; 2 uses
  %i.jf = select i1 %i.jd, double %i.jc, double %i.ja ; 2 uses
  %niter606.next.1 = add nuw i64 %niter606, 2     ; 2 uses
  %niter606.ncmp.1 = icmp eq i64 %niter606.next.1, %unroll_iter605
  br i1 %niter606.ncmp.1, label %.thread466.loopexit.unr-lcssa, label %.lr.ph.i237, !llvm.loop !510

.thread466.loopexit.unr-lcssa:                    ; preds = %.lr.ph.i237
  %lcmp.mod602.not = icmp eq i64 %xtraiter599, 0
  br i1 %lcmp.mod602.not, label %.thread466, label %.lr.ph.i237.epil.preheader

.lr.ph.i237.epil.preheader:                       ; preds = %.thread466.loopexit.unr-lcssa, %.lr.ph.preheader.i235
  %.epil.init601 = phi double [ %.pre.i236, %.lr.ph.preheader.i235 ], [ %i.jf, %.thread466.loopexit.unr-lcssa ]
  %.015.i238.epil.init = phi i64 [ 1, %.lr.ph.preheader.i235 ], [ %i.je, %.thread466.loopexit.unr-lcssa ] ; 2 uses
  %.01214.i239.epil.init = phi i64 [ 0, %.lr.ph.preheader.i235 ], [ %spec.select.i240.1, %.thread466.loopexit.unr-lcssa ]
  %lcmp.mod604 = trunc i64 %i.is to i1
  call void @llvm.assume(i1 %lcmp.mod604)
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.015.i238.epil.init
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !191
  %i.ji = fcmp ogt double %i.jh, %.epil.init601
  %spec.select.i240.epil = select i1 %i.ji, i64 %.015.i238.epil.init, i64 %.01214.i239.epil.init
  br label %.thread466

.thread466:                                       ; preds = %.lr.ph.i237.epil.preheader, %.thread466.loopexit.unr-lcssa, %..thread466_crit_edge, %bb.ai, %.preheader.i233
  %i.jj = phi ptr [ %i.ij, %bb.ai ], [ %.pre, %..thread466_crit_edge ], [ %i.ij, %.preheader.i233 ], [ %i.ij, %.thread466.loopexit.unr-lcssa ], [ %i.ij, %.lr.ph.i237.epil.preheader ] ; 2 uses
  %.013.i234 = phi i64 [ 0, %bb.ai ], [ %i.iu, %..thread466_crit_edge ], [ 0, %.preheader.i233 ], [ %spec.select.i240.1, %.thread466.loopexit.unr-lcssa ], [ %spec.select.i240.epil, %.lr.ph.i237.epil.preheader ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %.013.i234
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !191
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit273

bb.al:                                            ; preds = %bb.ak
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.am:                                            ; preds = %._crit_edge492
  %.not = icmp slt i32 %i.ht, %5
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jn = load ptr, ptr %9, align 8, !tbaa !222   ; 8 uses
  %i.jo = load ptr, ptr %i.hh, align 8, !tbaa !222 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253, label %.preheader.i244

.preheader.i244:                                  ; preds = %bb.an
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jn to i64
  %i.js = sub i64 %i.jq, %i.jr                    ; 2 uses
  %i.jt = ashr exact i64 %i.js, 3                 ; 2 uses
  %i.ju = icmp ugt i64 %i.jt, 1
  br i1 %i.ju, label %.lr.ph.preheader.i246, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253

.lr.ph.preheader.i246:                            ; preds = %.preheader.i244
  %.pre.i247 = load double, ptr %i.jn, align 8, !tbaa !191 ; 2 uses
  %i.jv = add nsw i64 %i.jt, -1                   ; 3 uses
  %xtraiter577 = and i64 %i.jv, 1
  %i.jw = icmp eq i64 %i.js, 16
  br i1 %i.jw, label %.lr.ph.i248.epil.preheader, label %.lr.ph.preheader.i246.new

.lr.ph.preheader.i246.new:                        ; preds = %.lr.ph.preheader.i246
  %unroll_iter581 = and i64 %i.jv, -2
  br label %.lr.ph.i248

.lr.ph.i248:                                      ; preds = %.lr.ph.i248, %.lr.ph.preheader.i246.new
  %i.jx = phi double [ %.pre.i247, %.lr.ph.preheader.i246.new ], [ %i.kh, %.lr.ph.i248 ] ; 2 uses
  %.013.i249 = phi i64 [ 1, %.lr.ph.preheader.i246.new ], [ %i.kg, %.lr.ph.i248 ] ; 4 uses
  %.01012.i250 = phi i64 [ 0, %.lr.ph.preheader.i246.new ], [ %spec.select.i251.1, %.lr.ph.i248 ]
  %niter582 = phi i64 [ 0, %.lr.ph.preheader.i246.new ], [ %niter582.next.1, %.lr.ph.i248 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.013.i249
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !191 ; 2 uses
  %i.ka = fcmp olt double %i.jz, %i.jx            ; 2 uses
  %spec.select.i251 = select i1 %i.ka, i64 %.013.i249, i64 %.01012.i250
  %i.kb = add nuw i64 %.013.i249, 1               ; 2 uses
  %i.kc = select i1 %i.ka, double %i.jz, double %i.jx ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.kb
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !191 ; 2 uses
  %i.kf = fcmp olt double %i.ke, %i.kc            ; 2 uses
  %spec.select.i251.1 = select i1 %i.kf, i64 %i.kb, i64 %spec.select.i251 ; 3 uses
  %i.kg = add nuw i64 %.013.i249, 2               ; 2 uses
  %i.kh = select i1 %i.kf, double %i.ke, double %i.kc ; 2 uses
  %niter582.next.1 = add nuw i64 %niter582, 2     ; 2 uses
  %niter582.ncmp.1 = icmp eq i64 %niter582.next.1, %unroll_iter581
  br i1 %niter582.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253.loopexit.unr-lcssa, label %.lr.ph.i248, !llvm.loop !1

_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253.loopexit.unr-lcssa: ; preds = %.lr.ph.i248
  %lcmp.mod578.not = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod578.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253, label %.lr.ph.i248.epil.preheader

.lr.ph.i248.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253.loopexit.unr-lcssa, %.lr.ph.preheader.i246
  %.epil.init = phi double [ %.pre.i247, %.lr.ph.preheader.i246 ], [ %i.kh, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253.loopexit.unr-lcssa ]
  %.013.i249.epil.init = phi i64 [ 1, %.lr.ph.preheader.i246 ], [ %i.kg, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253.loopexit.unr-lcssa ] ; 2 uses
  %.01012.i250.epil.init = phi i64 [ 0, %.lr.ph.preheader.i246 ], [ %spec.select.i251.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253.loopexit.unr-lcssa ]
  %lcmp.mod580 = trunc i64 %i.jv to i1
  call void @llvm.assume(i1 %lcmp.mod580)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.013.i249.epil.init
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !191
  %i.kk = fcmp olt double %i.kj, %.epil.init
  %spec.select.i251.epil = select i1 %i.kk, i64 %.013.i249.epil.init, i64 %.01012.i250.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253

_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253: ; preds = %.lr.ph.i248.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253.loopexit.unr-lcssa, %bb.an, %.preheader.i244
  %.011.i245 = phi i64 [ 0, %bb.an ], [ 0, %.preheader.i244 ], [ %spec.select.i251.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253.loopexit.unr-lcssa ], [ %spec.select.i251.epil, %.lr.ph.i248.epil.preheader ]
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.011.i245
  %i.km = load double, ptr %i.kl, align 8, !tbaa !191
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit273

bb.ao:                                            ; preds = %bb.am
  %i.kn = uitofp nneg i32 %i.hs to double
  %i.ko = fsub double %i.hr, %i.kn                ; 2 uses
  %i.kp = lshr i32 %5, 1
  %.not177 = icmp samesign ugt i32 %i.kp, %i.hs
  br i1 %.not177, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kq = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %5, i32 noundef %i.hs)
          to label %bb.aq unwind label %bb.ar     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.kr = zext nneg i32 %i.hs to i64
  %i.ks = load ptr, ptr %9, align 8, !tbaa !192   ; 4 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kr
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !191 ; 2 uses
  %i.kv = zext nneg i32 %i.ht to i64              ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kv ; 4 uses
  %i.kx = sub nuw nsw i32 %5, %i.ht               ; 3 uses
  %i.ky = icmp ugt i32 %i.kx, 1
  br i1 %i.ky, label %.lr.ph.preheader.i255, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262

.lr.ph.preheader.i255:                            ; preds = %bb.aq
  %i.kz = zext nneg i32 %i.kx to i64
  %.pre.i256 = load double, ptr %i.kw, align 8, !tbaa !191 ; 2 uses
  %i.la = add nsw i64 %i.kz, -1                   ; 3 uses
  %xtraiter583 = and i64 %i.la, 1
  %i.lb = icmp eq i32 %i.kx, 2
  br i1 %i.lb, label %.lr.ph.i257.epil.preheader, label %.lr.ph.preheader.i255.new

.lr.ph.preheader.i255.new:                        ; preds = %.lr.ph.preheader.i255
  %unroll_iter589 = and i64 %i.la, -2
  br label %.lr.ph.i257

.lr.ph.i257:                                      ; preds = %.lr.ph.i257, %.lr.ph.preheader.i255.new
  %i.lc = phi double [ %.pre.i256, %.lr.ph.preheader.i255.new ], [ %i.lm, %.lr.ph.i257 ] ; 2 uses
  %.014.i258 = phi i64 [ 1, %.lr.ph.preheader.i255.new ], [ %i.ll, %.lr.ph.i257 ] ; 4 uses
  %.01013.i259 = phi i64 [ 0, %.lr.ph.preheader.i255.new ], [ %spec.select.i260.1, %.lr.ph.i257 ]
  %niter590 = phi i64 [ 0, %.lr.ph.preheader.i255.new ], [ %niter590.next.1, %.lr.ph.i257 ]
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %.014.i258
  %i.le = load double, ptr %i.ld, align 8, !tbaa !191 ; 2 uses
  %i.lf = fcmp ogt double %i.le, %i.lc            ; 2 uses
  %spec.select.i260 = select i1 %i.lf, i64 %.014.i258, i64 %.01013.i259
  %i.lg = add nuw nsw i64 %.014.i258, 1           ; 2 uses
  %i.lh = select i1 %i.lf, double %i.le, double %i.lc ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.lg
  %i.lj = load double, ptr %i.li, align 8, !tbaa !191 ; 2 uses
  %i.lk = fcmp ogt double %i.lj, %i.lh            ; 2 uses
  %spec.select.i260.1 = select i1 %i.lk, i64 %i.lg, i64 %spec.select.i260 ; 3 uses
  %i.ll = add nuw nsw i64 %.014.i258, 2           ; 2 uses
  %i.lm = select i1 %i.lk, double %i.lj, double %i.lh ; 2 uses
  %niter590.next.1 = add nuw i64 %niter590, 2     ; 2 uses
  %niter590.ncmp.1 = icmp eq i64 %niter590.next.1, %unroll_iter589
  br i1 %niter590.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa, label %.lr.ph.i257, !llvm.loop !2

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa: ; preds = %.lr.ph.i257
  %lcmp.mod586.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod586.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262, label %.lr.ph.i257.epil.preheader

.lr.ph.i257.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa, %.lr.ph.preheader.i255
  %.epil.init585 = phi double [ %.pre.i256, %.lr.ph.preheader.i255 ], [ %i.lm, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa ]
  %.014.i258.epil.init = phi i64 [ 1, %.lr.ph.preheader.i255 ], [ %i.ll, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i259.epil.init = phi i64 [ 0, %.lr.ph.preheader.i255 ], [ %spec.select.i260.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa ]
  %lcmp.mod588 = trunc i64 %i.la to i1
  call void @llvm.assume(i1 %lcmp.mod588)
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %.014.i258.epil.init
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !191
  %i.lp = fcmp ogt double %i.lo, %.epil.init585
  %spec.select.i260.epil = select i1 %i.lp, i64 %.014.i258.epil.init, i64 %.01013.i259.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262:    ; preds = %.lr.ph.i257.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa, %bb.aq
  %.011.i254 = phi i64 [ 0, %bb.aq ], [ %spec.select.i260.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa ], [ %spec.select.i260.epil, %.lr.ph.i257.epil.preheader ]
  %i.lq = getelementptr [8 x i8], ptr %i.ks, i64 %.011.i254
  %i.lr = getelementptr [8 x i8], ptr %i.lq, i64 %i.kv
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !191
  %i.lt = fsub double %i.ku, %i.ls
  %i.lu = fneg double %i.lt
  %i.lv = call double @llvm.fmuladd.f64(double %i.lu, double %i.ko, double %i.ku)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit273

bb.ar:                                            ; preds = %bb.as, %bb.ap
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %bb.ao
  %i.lx = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %5, i32 noundef %i.ht)
          to label %bb.at unwind label %bb.ar     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.ly = zext nneg i32 %i.ht to i64
  %i.lz = load ptr, ptr %9, align 8, !tbaa !192   ; 7 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ly
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !191
  %.not552 = icmp eq i32 %i.hs, 0
  br i1 %.not552, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271, label %.lr.ph.preheader.i264

.lr.ph.preheader.i264:                            ; preds = %bb.at
  %.pre.i265 = load double, ptr %i.lz, align 8, !tbaa !191 ; 2 uses
  %11 = zext nneg i32 %i.hs to i64                ; 2 uses
  %xtraiter591 = and i64 %11, 1
  %i.mc = icmp eq i32 %i.ht, 2
  br i1 %i.mc, label %.lr.ph.i266.epil.preheader, label %.lr.ph.preheader.i264.new

.lr.ph.preheader.i264.new:                        ; preds = %.lr.ph.preheader.i264
  %unroll_iter597 = and i64 %11, 2147483646
  br label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %.lr.ph.i266, %.lr.ph.preheader.i264.new
  %i.md = phi double [ %.pre.i265, %.lr.ph.preheader.i264.new ], [ %i.mn, %.lr.ph.i266 ] ; 2 uses
  %.014.i267 = phi i64 [ 1, %.lr.ph.preheader.i264.new ], [ %i.mm, %.lr.ph.i266 ] ; 4 uses
  %.01013.i268 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %spec.select.i269.1, %.lr.ph.i266 ]
  %niter598 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %niter598.next.1, %.lr.ph.i266 ]
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %.014.i267
  %i.mf = load double, ptr %i.me, align 8, !tbaa !191 ; 2 uses
  %i.mg = fcmp olt double %i.mf, %i.md            ; 2 uses
  %spec.select.i269 = select i1 %i.mg, i64 %.014.i267, i64 %.01013.i268
  %i.mh = add nuw nsw i64 %.014.i267, 1           ; 2 uses
  %i.mi = select i1 %i.mg, double %i.mf, double %i.md ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mh
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !191 ; 2 uses
  %i.ml = fcmp olt double %i.mk, %i.mi            ; 2 uses
  %spec.select.i269.1 = select i1 %i.ml, i64 %i.mh, i64 %spec.select.i269 ; 3 uses
  %i.mm = add nuw nsw i64 %.014.i267, 2           ; 2 uses
  %i.mn = select i1 %i.ml, double %i.mk, double %i.mi ; 2 uses
  %niter598.next.1 = add nuw i64 %niter598, 2     ; 2 uses
  %niter598.ncmp.1 = icmp eq i64 %niter598.next.1, %unroll_iter597
  br i1 %niter598.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa, label %.lr.ph.i266, !llvm.loop !3

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa: ; preds = %.lr.ph.i266
  %lcmp.mod594.not = icmp eq i64 %xtraiter591, 0
  br i1 %lcmp.mod594.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271, label %.lr.ph.i266.epil.preheader

.lr.ph.i266.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa, %.lr.ph.preheader.i264
  %.epil.init593 = phi double [ %.pre.i265, %.lr.ph.preheader.i264 ], [ %i.mn, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ]
  %.014.i267.epil.init = phi i64 [ 1, %.lr.ph.preheader.i264 ], [ %i.mm, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i268.epil.init = phi i64 [ 0, %.lr.ph.preheader.i264 ], [ %spec.select.i269.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ]
  %lcmp.mod596 = trunc i32 %i.hs to i1
  call void @llvm.assume(i1 %lcmp.mod596)
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %.014.i267.epil.init
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !191
  %i.mq = fcmp olt double %i.mp, %.epil.init593
  %spec.select.i269.epil = select i1 %i.mq, i64 %.014.i267.epil.init, i64 %.01013.i268.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271:    ; preds = %.lr.ph.i266.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa, %bb.at
  %.011.i263 = phi i64 [ 0, %bb.at ], [ %spec.select.i269.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271.loopexit.unr-lcssa ], [ %spec.select.i269.epil, %.lr.ph.i266.epil.preheader ]
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %.011.i263
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !191 ; 2 uses
  %i.mt = fsub double %i.ms, %i.mb
  %i.mu = fneg double %i.mt
  %i.mv = call double @llvm.fmuladd.f64(double %i.mu, double %i.ko, double %i.ms)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit273

_ZNSt6vectorIdSaIdEED2Ev.exit273:                 ; preds = %.thread466, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253
  %.3469 = phi double [ %i.jl, %.thread466 ], [ %i.mv, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271 ], [ %i.lv, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262 ], [ %i.km, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253 ]
  %i.mw = phi ptr [ %i.jj, %.thread466 ], [ %i.lz, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit271 ], [ %i.ks, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262 ], [ %i.jn, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253 ] ; 2 uses
  %i.mx = load ptr, ptr %i.he, align 8, !tbaa !194
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mw to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %i.mw, i64 noundef %i.na) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cv

bb.au:                                            ; preds = %.loopexit478, %.loopexit.split-lp479, %bb.al, %bb.ar
  %.pn180 = phi { ptr, i32 } [ %i.lw, %bb.ar ], [ %i.jm, %bb.al ], [ %lpad.loopexit480, %.loopexit478 ], [ %lpad.loopexit.split-lp481, %.loopexit.split-lp479 ] ; 2 uses
  %i.nb = load ptr, ptr %9, align 8, !tbaa !192   ; 3 uses
  %.not.i.i.i274 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i274, label %_ZNSt6vectorIdSaIdEED2Ev.exit275, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nc = load ptr, ptr %i.he, align 8, !tbaa !194
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.nf) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit275

_ZNSt6vectorIdSaIdEED2Ev.exit275:                 ; preds = %bb.av, %bb.au, %bb.ad
  %.pn180.pn = phi { ptr, i32 } [ %i.hv, %bb.ad ], [ %.pn180, %bb.au ], [ %.pn180, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cw

bb.aw:                                            ; preds = %bb.a
  br i1 %i.ad, label %bb.ax, label %bb.bw

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ae, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !218
  %i.ni = load i32, ptr %3, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.nh, ptr %i.o, align 8, !tbaa !220
  store i32 %i.ni, ptr %i.p, align 4, !tbaa !204
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !153
  %.not.i.i276 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i276, label %bb.az, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit277

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit277:          ; preds = %bb.ay
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !242
  %i.nn = call noundef double %i.nm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cv

bb.ba:                                            ; preds = %bb.ax
  %i.no = zext nneg i32 %5 to i64                 ; 7 uses
  %i.np = shl nuw nsw i64 %i.no, 2                ; 5 uses
  %i.nq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.np) #34 ; 15 uses
  store i32 0, ptr %i.nq, align 4, !tbaa !204
  %i.nr = getelementptr i8, ptr %i.nq, i64 4
  %.idx.i.i.i.i.i.i.i279 = add nsw i64 %i.np, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.nr, i8 0, i64 %.idx.i.i.i.i.i.i.i279, i1 false), !tbaa !204
  %min.iters.check555 = icmp ult i32 %5, 8
  br i1 %min.iters.check555, label %scalar.ph554.preheader, label %vector.ph556

vector.ph556:                                     ; preds = %bb.ba
  %n.vec557 = and i64 %i.no, 2147483640           ; 3 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph556
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next562, %vector.body558 ] ; 2 uses
  %vec.ind560 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph556 ], [ %vec.ind.next563, %vector.body558 ] ; 3 uses
  %step.add561 = add <4 x i32> %vec.ind560, splat (i32 4)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index559 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  store <4 x i32> %vec.ind560, ptr %i.ns, align 4, !tbaa !204
  store <4 x i32> %step.add561, ptr %i.nt, align 4, !tbaa !204
  %index.next562 = add nuw i64 %index559, 8       ; 2 uses
  %vec.ind.next563 = add <4 x i32> %vec.ind560, splat (i32 8)
  %i.nu = icmp eq i64 %index.next562, %n.vec557
  br i1 %i.nu, label %middle.block564, label %vector.body558, !llvm.loop !512

middle.block564:                                  ; preds = %vector.body558
  %cmp.n565 = icmp eq i64 %n.vec557, %i.no
  br i1 %cmp.n565, label %.loopexit567, label %scalar.ph554.preheader

scalar.ph554.preheader:                           ; preds = %bb.ba, %middle.block564
  %indvars.iv503.ph = phi i64 [ 0, %bb.ba ], [ %n.vec557, %middle.block564 ]
  br label %scalar.ph554

.loopexit567:                                     ; preds = %scalar.ph554, %middle.block564
  %i.nv = getelementptr i8, ptr %i.nq, i64 %i.np
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %7, align 8
  %.sroa.2443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2443.0..sroa_idx, align 8
  %.sroa.3444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.y, ptr %.sroa.3444.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_T0_(ptr nonnull %i.nq, ptr %i.nv, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.69") align 8 %7)
          to label %bb.bb unwind label %bb.bc

scalar.ph554:                                     ; preds = %scalar.ph554.preheader, %scalar.ph554
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %scalar.ph554 ], [ %indvars.iv503.ph, %scalar.ph554.preheader ] ; 3 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv503
  %i.nx = trunc nuw nsw i64 %indvars.iv503 to i32
  store i32 %i.nx, ptr %i.nw, align 4, !tbaa !204
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %exitcond507.not = icmp eq i64 %indvars.iv.next504, %i.no
  br i1 %exitcond507.not, label %.loopexit567, label %scalar.ph554, !llvm.loop !513

bb.bb:                                            ; preds = %.loopexit567
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ny = shl nuw nsw i64 %i.no, 3                ; 4 uses
  %i.nz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ny) #34
          to label %.lr.ph487.preheader unwind label %bb.bd ; 12 uses

.lr.ph487.preheader:                              ; preds = %bb.bb
  %i.oa = getelementptr i8, ptr %i.nz, i64 8
  %.idx.i.i.i.i.i.i.i285 = add nsw i64 %i.ny, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.oa, i8 0, i64 %.idx.i.i.i.i.i.i.i285, i1 false), !tbaa !191
  %i.ob = load ptr, ptr %i.aa, align 8, !tbaa !221 ; 4 uses
  %i.oc = load ptr, ptr %i.y, align 8, !tbaa !240 ; 5 uses
  %i.od = load i32, ptr %i.nq, align 4, !tbaa !204
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 4, !tbaa !204
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %i.oh
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !169
  %i.ok = fpext float %i.oj to double             ; 3 uses
  store double %i.ok, ptr %i.nz, align 8, !tbaa !191
  %i.ol = add nsw i64 %i.no, -1                   ; 3 uses
  %xtraiter572 = and i64 %i.ol, 1
  %i.om = icmp eq i32 %5, 2
  br i1 %i.om, label %.lr.ph487.epil.preheader, label %.lr.ph487.preheader.new

.lr.ph487.preheader.new:                          ; preds = %.lr.ph487.preheader
  %unroll_iter575 = and i64 %i.ol, -2
  br label %.lr.ph487

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa: ; preds = %.lr.ph487
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, label %.lr.ph487.epil.preheader

.lr.ph487.epil.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph487.preheader
  %store_forwarded.epil.init = phi double [ %i.ok, %.lr.ph487.preheader ], [ %i.qm, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ]
  %indvars.iv508.epil.init = phi i64 [ 1, %.lr.ph487.preheader ], [ %indvars.iv.next509.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod574 = trunc i64 %i.ol to i1
  call void @llvm.assume(i1 %lcmp.mod574)
  %i.on = getelementptr [8 x i8], ptr %i.nz, i64 %indvars.iv508.epil.init
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv508.epil.init
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !204
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !204
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %i.ot
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !169
  %i.ow = fpext float %i.ov to double
  %i.ox = fadd double %store_forwarded.epil.init, %i.ow
  store double %i.ox, ptr %i.on, align 8, !tbaa !191
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph487.epil.preheader
  %i.oy = add nsw i32 %5, -1
  %i.oz = zext nneg i32 %i.oy to i64              ; 3 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.oz
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !191
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !147
  %i.pe = fpext float %i.pd to double
  %i.pf = fmul double %i.pb, %i.pe                ; 4 uses
  %i.pg = ptrtoint ptr %i.nz to i64
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.no, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEi:bb.a
  %i.ch = fadd double %i.bz, %i.cg                ; 3 uses
  store double %i.ch, ptr %i.ca, align 8, !tbaa !191
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge172.loopexit.unr-lcssa, label %.lr.ph171, !llvm.loop !520

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre193.a = ptrtoint ptr %.sroa.011.1.i.i to i64
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit.loopexit, %._crit_edge172
  %.pre-phi = phi i64 [ %.pre193.a, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit.loopexit ], [ %i.be, %._crit_edge172 ]
  %i.ci = sub i64 %.pre-phi, %i.be
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.aw) ; 5 uses
  %i.ck = icmp eq i64 %.sroa.speculated, 0
  %i.cl = icmp uge i64 %i.cj, %i.aw
  %or.cond = or i1 %i.cl, %i.ck
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !218
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.speculated
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !204
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.i:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.ct = add nsw i64 %.sroa.speculated, -1       ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ct ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !191
  %i.cw = fcmp ult double %i.bc, %i.cv
  br i1 %i.cw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 529)
          to label %bb.k unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit83

_ZNSt6vectorIdSaIdEED2Ev.exit83:                  ; preds = %bb.l, %bb.j
  %i.cx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.x) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit85

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.speculated ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !191 ; 2 uses
  %i.da = fcmp olt double %i.bc, %i.cz
  br i1 %i.da, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 529)
          to label %._crit_edge189 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit83

._crit_edge189:                                   ; preds = %bb.l
  %.pre = load double, ptr %i.cy, align 8, !tbaa !191
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge189, %bb.k
  %i.db = phi double [ %.pre, %._crit_edge189 ], [ %i.cz, %bb.k ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !218 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ct
  %i.df = load i32, ptr %i.de, align 4, !tbaa !204
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !169 ; 3 uses
  %i.dj = load double, ptr %i.cu, align 8, !tbaa !191 ; 2 uses
  %i.dk = fsub double %i.db, %i.dj                ; 2 uses
  %i.dl = fcmp ult double %i.dk, 1.000000e+00
  br i1 %i.dl, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.speculated
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !204
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !169
  %i.dr = fsub double %i.bc, %i.dj
  %i.ds = fdiv double %i.dr, %i.dk
  %i.dt = fsub float %i.dq, %i.di
  %i.du = fpext float %i.dt to double
  %i.dv = fpext float %i.di to double
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.du, double %i.dv)
  %i.dx = fptrunc double %i.dw to float
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.n, %bb.m, %bb.h
  %.1.in = phi float [ %i.cs, %bb.h ], [ %i.dx, %bb.n ], [ %i.di, %bb.m ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.x) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #35
  br label %bb.ag

_ZNSt6vectorIiSaIiEED2Ev.exit85:                  ; preds = %bb.g, %_ZNSt6vectorIdSaIdEED2Ev.exit83, %bb.f
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.f ], [ %i.cx, %_ZNSt6vectorIdSaIdEED2Ev.exit83 ], [ %i.br, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #35
  br label %bb.ah

bb.o:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !218
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !169
  br label %bb.ag

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.eb = zext nneg i32 %i.d to i64               ; 4 uses
  %i.ec = shl nuw nsw i64 %i.eb, 2                ; 3 uses
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #34
          to label %bb.r unwind label %bb.s       ; 24 uses

bb.r:                                             ; preds = %bb.q
  store ptr %i.ed, ptr %2, align 8, !tbaa !174
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !175
  store float 0.000000e+00, ptr %i.ed, align 4, !tbaa !169
  %i.eg = getelementptr i8, ptr %i.ed, i64 4
  %.idx.i.i.i.i.i.i.i87 = add nsw i64 %i.ec, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eg, i8 0, i64 %.idx.i.i.i.i.i.i.i87, i1 false), !tbaa !169
  %i.eh = getelementptr i8, ptr %i.ed, i64 %i.ec
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !219
  %i.ej = load i32, ptr %i.c, align 4, !tbaa !217 ; 8 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %bb.r
  %i.el = ptrtoaddr ptr %i.ed to i64
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !218 ; 7 uses
  %wide.trip.count187 = zext nneg i32 %i.ej to i64 ; 5 uses
  %min.iters.check216 = icmp ult i32 %i.ej, 8
  %i.eo = ptrtoaddr ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.el
  %diff.check = icmp ugt i64 %i.ep, -32
  %or.cond227 = select i1 %min.iters.check216, i1 true, i1 %diff.check
  br i1 %or.cond227, label %scalar.ph215.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph175
  %n.vec218 = and i64 %wide.trip.count187, 2147483640 ; 3 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next222, %vector.body219 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %index220 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load = load <4 x float>, ptr %i.eq, align 4, !tbaa !169
  %wide.load221 = load <4 x float>, ptr %i.er, align 4, !tbaa !169
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index220 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x float> %wide.load, ptr %i.es, align 4, !tbaa !169
  store <4 x float> %wide.load221, ptr %i.et, align 4, !tbaa !169
  %index.next222 = add nuw i64 %index220, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next222, %n.vec218
  br i1 %i.eu, label %middle.block223, label %vector.body219, !llvm.loop !521

middle.block223:                                  ; preds = %vector.body219
  %cmp.n224 = icmp eq i64 %n.vec218, %wide.trip.count187
  br i1 %cmp.n224, label %._crit_edge176, label %scalar.ph215.preheader

scalar.ph215.preheader:                           ; preds = %.lr.ph175, %middle.block223
  %indvars.iv184.ph = phi i64 [ 0, %.lr.ph175 ], [ %n.vec218, %middle.block223 ] ; 3 uses
  %xtraiter230 = and i64 %wide.trip.count187, 3   ; 2 uses
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %scalar.ph215.prol.loopexit, label %scalar.ph215.prol

scalar.ph215.prol:                                ; preds = %scalar.ph215.preheader, %scalar.ph215.prol
  %indvars.iv184.prol = phi i64 [ %indvars.iv.next185.prol, %scalar.ph215.prol ], [ %indvars.iv184.ph, %scalar.ph215.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph215.prol ], [ 0, %scalar.ph215.preheader ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv184.prol
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !169
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv184.prol
  store float %i.ew, ptr %i.ex, align 4, !tbaa !169
  %indvars.iv.next185.prol = add nuw nsw i64 %indvars.iv184.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter230
  br i1 %prol.iter.cmp.not, label %scalar.ph215.prol.loopexit, label %scalar.ph215.prol, !llvm.loop !522

scalar.ph215.prol.loopexit:                       ; preds = %scalar.ph215.prol, %scalar.ph215.preheader
  %indvars.iv184.unr = phi i64 [ %indvars.iv184.ph, %scalar.ph215.preheader ], [ %indvars.iv.next185.prol, %scalar.ph215.prol ]
  %i.ey = sub nsw i64 %indvars.iv184.ph, %wide.trip.count187
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge176, label %scalar.ph215

._crit_edge176:                                   ; preds = %scalar.ph215.prol.loopexit, %scalar.ph215, %middle.block223, %bb.r
  %i.fa = add nsw i32 %i.ej, -1
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !147
  %i.fe = fpext float %i.fd to double
  %i.ff = fsub double 1.000000e+00, %i.fe
  %i.fg = fmul double %i.ff, %i.fb                ; 2 uses
  %i.fh = fptosi double %i.fg to i32              ; 9 uses
  %i.fi = add nuw nsw i32 %i.fh, 1                ; 6 uses
  %i.fj = icmp slt i32 %i.fh, 0
  br i1 %i.fj, label %bb.t, label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit115

scalar.ph215:                                     ; preds = %scalar.ph215.prol.loopexit, %scalar.ph215
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.3, %scalar.ph215 ], [ %indvars.iv184.unr, %scalar.ph215.prol.loopexit ] ; 6 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv184
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !169
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv184
  store float %i.fm, ptr %i.fn, align 4, !tbaa !169
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.next185
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !169
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next185
  store float %i.fp, ptr %i.fq, align 4, !tbaa !169
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.next185.1
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !169
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next185.1
  store float %i.fs, ptr %i.ft, align 4, !tbaa !169
  %indvars.iv.next185.2 = add nuw nsw i64 %indvars.iv184, 3 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.next185.2
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !169
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next185.2
  store float %i.fv, ptr %i.fw, align 4, !tbaa !169
  %indvars.iv.next185.3 = add nuw nsw i64 %indvars.iv184, 4 ; 2 uses
  %exitcond188.not.3 = icmp eq i64 %indvars.iv.next185.3, %wide.trip.count187
  br i1 %exitcond188.not.3, label %._crit_edge176, label %scalar.ph215, !llvm.loop !523

bb.t:                                             ; preds = %._crit_edge176
  %i.fx = icmp samesign ugt i32 %i.d, 1024
  br i1 %i.fx, label %bb.u, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %.pre.i = load float, ptr %i.ed, align 4, !tbaa !169 ; 2 uses
  %i.fy = add nsw i64 %i.eb, -1                   ; 3 uses
  %xtraiter246 = and i64 %i.fy, 1
  %i.fz = icmp eq i32 %i.d, 2
  br i1 %i.fz, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter252 = and i64 %i.fy, -2
  br label %.lr.ph.i

bb.u:                                             ; preds = %bb.t
  %i.ga = invoke noundef i64 @_ZN8LightGBM9ArrayArgsIfE8ArgMaxMTERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %..thread_crit_edge unwind label %bb.v

..thread_crit_edge:                               ; preds = %bb.u
  %.pre192 = load ptr, ptr %2, align 8, !tbaa !174
  br label %.thread

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %i.gb = phi float [ %.pre.i, %.lr.ph.preheader.i.new ], [ %i.gl, %.lr.ph.i ] ; 2 uses
  %.015.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.gk, %.lr.ph.i ] ; 4 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %niter253 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter253.next.1, %.lr.ph.i ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.015.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !169 ; 2 uses
  %i.ge = fcmp ogt float %i.gd, %i.gb             ; 2 uses
  %spec.select.i = select i1 %i.ge, i64 %.015.i, i64 %.01214.i
  %i.gf = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %i.gg = select i1 %i.ge, float %i.gd, float %i.gb ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.gf
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !169 ; 2 uses
  %i.gj = fcmp ogt float %i.gi, %i.gg             ; 2 uses
  %spec.select.i.1 = select i1 %i.gj, i64 %i.gf, i64 %spec.select.i ; 3 uses
  %i.gk = add nuw nsw i64 %.015.i, 2              ; 2 uses
  %i.gl = select i1 %i.gj, float %i.gi, float %i.gg ; 2 uses
  %niter253.next.1 = add nuw i64 %niter253, 2     ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph.i
  %lcmp.mod249.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod249.not, label %.thread, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init248 = phi float [ %.pre.i, %.lr.ph.preheader.i ], [ %i.gl, %.thread.loopexit.unr-lcssa ]
  %.015.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.gk, %.thread.loopexit.unr-lcssa ] ; 2 uses
  %.01214.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i.1, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod251 = trunc i64 %i.fy to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.015.i.epil.init
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !169
  %i.go = fcmp ogt float %i.gn, %.epil.init248
  %spec.select.i.epil = select i1 %i.go, i64 %.015.i.epil.init, i64 %.01214.i.epil.init
  br label %.thread

.thread:                                          ; preds = %.lr.ph.i.epil.preheader, %.thread.loopexit.unr-lcssa, %..thread_crit_edge
  %i.gp = phi ptr [ %.pre192, %..thread_crit_edge ], [ %i.ed, %.thread.loopexit.unr-lcssa ], [ %i.ed, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.013.i = phi i64 [ %i.ga, %..thread_crit_edge ], [ %spec.select.i.1, %.thread.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.013.i
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !169
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.w:                                             ; preds = %._crit_edge176
  %.not64 = icmp slt i32 %i.fi, %i.ej
  br i1 %.not64, label %bb.x, label %.lr.ph.preheader.i93

.lr.ph.preheader.i93:                             ; preds = %bb.w
  %.pre.i94 = load float, ptr %i.ed, align 4, !tbaa !169 ; 2 uses
  %i.gt = add nsw i64 %i.eb, -1                   ; 3 uses
  %xtraiter232 = and i64 %i.gt, 1
  %i.gu = icmp eq i32 %i.d, 2
  br i1 %i.gu, label %.lr.ph.i95.epil.preheader, label %.lr.ph.preheader.i93.new

.lr.ph.preheader.i93.new:                         ; preds = %.lr.ph.preheader.i93
  %unroll_iter236 = and i64 %i.gt, -2
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95, %.lr.ph.preheader.i93.new
  %i.gv = phi float [ %.pre.i94, %.lr.ph.preheader.i93.new ], [ %i.hf, %.lr.ph.i95 ] ; 2 uses
  %.013.i96 = phi i64 [ 1, %.lr.ph.preheader.i93.new ], [ %i.he, %.lr.ph.i95 ] ; 4 uses
  %.01012.i = phi i64 [ 0, %.lr.ph.preheader.i93.new ], [ %spec.select.i97.1, %.lr.ph.i95 ]
  %niter237 = phi i64 [ 0, %.lr.ph.preheader.i93.new ], [ %niter237.next.1, %.lr.ph.i95 ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.013.i96
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !169 ; 2 uses
  %i.gy = fcmp olt float %i.gx, %i.gv             ; 2 uses
  %spec.select.i97 = select i1 %i.gy, i64 %.013.i96, i64 %.01012.i
  %i.gz = add nuw i64 %.013.i96, 1                ; 2 uses
  %i.ha = select i1 %i.gy, float %i.gx, float %i.gv ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.gz
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !169 ; 2 uses
  %i.hd = fcmp olt float %i.hc, %i.ha             ; 2 uses
  %spec.select.i97.1 = select i1 %i.hd, i64 %i.gz, i64 %spec.select.i97 ; 3 uses
  %i.he = add nuw i64 %.013.i96, 2                ; 2 uses
  %i.hf = select i1 %i.hd, float %i.hc, float %i.ha ; 2 uses
  %niter237.next.1 = add nuw i64 %niter237, 2     ; 2 uses
  %niter237.ncmp.1 = icmp eq i64 %niter237.next.1, %unroll_iter236
  br i1 %niter237.ncmp.1, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa, label %.lr.ph.i95, !llvm.loop !6

_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa: ; preds = %.lr.ph.i95
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit, label %.lr.ph.i95.epil.preheader

.lr.ph.i95.epil.preheader:                        ; preds = %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa, %.lr.ph.preheader.i93
  %.epil.init = phi float [ %.pre.i94, %.lr.ph.preheader.i93 ], [ %i.hf, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa ]
  %.013.i96.epil.init = phi i64 [ 1, %.lr.ph.preheader.i93 ], [ %i.he, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa ] ; 2 uses
  %.01012.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i93 ], [ %spec.select.i97.1, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa ]
  %lcmp.mod235 = trunc i64 %i.gt to i1
  tail call void @llvm.assume(i1 %lcmp.mod235)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.013.i96.epil.init
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !169
  %i.hi = fcmp olt float %i.hh, %.epil.init
  %spec.select.i97.epil = select i1 %i.hi, i64 %.013.i96.epil.init, i64 %.01012.i.epil.init
  br label %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit

_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit: ; preds = %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa, %.lr.ph.i95.epil.preheader
  %spec.select.i97.lcssa = phi i64 [ %spec.select.i97.1, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit.unr-lcssa ], [ %spec.select.i97.epil, %.lr.ph.i95.epil.preheader ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %spec.select.i97.lcssa
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !169
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.hl = uitofp nneg i32 %i.fh to double
  %i.hm = fsub double %i.fg, %i.hl
  %i.hn = lshr i32 %i.ej, 1
  %.not65 = icmp samesign ugt i32 %i.hn, %i.fh
  br i1 %.not65, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ho = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIfE9ArgMaxAtKEPSt6vectorIfSaIfEEiii(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.ej, i32 noundef %i.fh)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.hp = zext nneg i32 %i.fh to i64
  %i.hq = load ptr, ptr %2, align 8, !tbaa !174   ; 4 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !169 ; 2 uses
  %i.ht = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.c, align 4, !tbaa !217
  %i.hw = sub nsw i32 %i.hv, %i.fi                ; 2 uses
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp ugt i32 %i.hw, 1
  br i1 %i.hy, label %.lr.ph.preheader.i100, label %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit

.lr.ph.preheader.i100:                            ; preds = %bb.z
  %.pre.i101 = load float, ptr %i.hu, align 4, !tbaa !169
  br label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %.lr.ph.i102, %.lr.ph.preheader.i100
  %i.hz = phi float [ %i.ie, %.lr.ph.i102 ], [ %.pre.i101, %.lr.ph.preheader.i100 ] ; 2 uses
  %.014.i = phi i64 [ %i.id, %.lr.ph.i102 ], [ 1, %.lr.ph.preheader.i100 ] ; 3 uses
  %.01013.i = phi i64 [ %spec.select.i103, %.lr.ph.i102 ], [ 0, %.lr.ph.preheader.i100 ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.014.i
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !169 ; 2 uses
  %i.ic = fcmp ogt float %i.ib, %i.hz             ; 2 uses
  %spec.select.i103 = select i1 %i.ic, i64 %.014.i, i64 %.01013.i ; 2 uses
  %i.id = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.id, %i.hx
  %i.ie = select i1 %i.ic, float %i.ib, float %i.hz
  br i1 %exitcond.not.i104, label %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit, label %.lr.ph.i102, !llvm.loop !7

_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit:       ; preds = %.lr.ph.i102, %bb.z
  %.011.i99 = phi i64 [ 0, %bb.z ], [ %spec.select.i103, %.lr.ph.i102 ]
  %i.if = getelementptr [4 x i8], ptr %i.hq, i64 %.011.i99
  %i.ig = getelementptr [4 x i8], ptr %i.if, i64 %i.ht
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !169
  %i.ii = fsub float %i.hs, %i.ih
  br label %bb.ad

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.x
  %i.ik = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIfE9ArgMaxAtKEPSt6vectorIfSaIfEEiii(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.ej, i32 noundef %i.fi)
          to label %bb.ac unwind label %bb.aa     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.il = zext nneg i32 %i.fi to i64
  %i.im = load ptr, ptr %2, align 8, !tbaa !174   ; 7 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.il
  %i.io = load float, ptr %i.in, align 4, !tbaa !169
  %.not214 = icmp eq i32 %i.fh, 0
  br i1 %.not214, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit, label %.lr.ph.preheader.i106

.lr.ph.preheader.i106:                            ; preds = %bb.ac
  %.pre.i107 = load float, ptr %i.im, align 4, !tbaa !169 ; 2 uses
  %3 = zext nneg i32 %i.fh to i64                 ; 2 uses
  %xtraiter238 = and i64 %3, 1
  %i.ip = icmp eq i32 %i.fi, 2
  br i1 %i.ip, label %.lr.ph.i108.epil.preheader, label %.lr.ph.preheader.i106.new

.lr.ph.preheader.i106.new:                        ; preds = %.lr.ph.preheader.i106
  %unroll_iter244 = and i64 %3, 2147483646
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.lr.ph.i108, %.lr.ph.preheader.i106.new
  %i.iq = phi float [ %.pre.i107, %.lr.ph.preheader.i106.new ], [ %i.ja, %.lr.ph.i108 ] ; 2 uses
  %.014.i109 = phi i64 [ 1, %.lr.ph.preheader.i106.new ], [ %i.iz, %.lr.ph.i108 ] ; 4 uses
  %.01013.i110 = phi i64 [ 0, %.lr.ph.preheader.i106.new ], [ %spec.select.i111.1, %.lr.ph.i108 ]
  %niter245 = phi i64 [ 0, %.lr.ph.preheader.i106.new ], [ %niter245.next.1, %.lr.ph.i108 ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.014.i109
  %i.is = load float, ptr %i.ir, align 4, !tbaa !169 ; 2 uses
  %i.it = fcmp olt float %i.is, %i.iq             ; 2 uses
  %spec.select.i111 = select i1 %i.it, i64 %.014.i109, i64 %.01013.i110
  %i.iu = add nuw nsw i64 %.014.i109, 1           ; 2 uses
  %i.iv = select i1 %i.it, float %i.is, float %i.iq ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.iu
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !169 ; 2 uses
  %i.iy = fcmp olt float %i.ix, %i.iv             ; 2 uses
  %spec.select.i111.1 = select i1 %i.iy, i64 %i.iu, i64 %spec.select.i111 ; 3 uses
  %i.iz = add nuw nsw i64 %.014.i109, 2           ; 2 uses
  %i.ja = select i1 %i.iy, float %i.ix, float %i.iv ; 2 uses
  %niter245.next.1 = add nuw i64 %niter245, 2     ; 2 uses
  %niter245.ncmp.1 = icmp eq i64 %niter245.next.1, %unroll_iter244
  br i1 %niter245.ncmp.1, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa, label %.lr.ph.i108, !llvm.loop !8

_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i108
  %lcmp.mod241.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod241.not, label %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit, label %.lr.ph.i108.epil.preheader

.lr.ph.i108.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i106
  %.epil.init240 = phi float [ %.pre.i107, %.lr.ph.preheader.i106 ], [ %i.ja, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa ]
  %.014.i109.epil.init = phi i64 [ 1, %.lr.ph.preheader.i106 ], [ %i.iz, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i110.epil.init = phi i64 [ 0, %.lr.ph.preheader.i106 ], [ %spec.select.i111.1, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa ]
  %lcmp.mod243 = trunc i32 %i.fh to i1
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.014.i109.epil.init
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !169
  %i.jd = fcmp olt float %i.jc, %.epil.init240
  %spec.select.i111.epil = select i1 %i.jd, i64 %.014.i109.epil.init, i64 %.01013.i110.epil.init
  br label %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit

_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit:       ; preds = %.lr.ph.i108.epil.preheader, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa, %bb.ac
  %.011.i105 = phi i64 [ 0, %bb.ac ], [ %spec.select.i111.1, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit.loopexit.unr-lcssa ], [ %spec.select.i111.epil, %.lr.ph.i108.epil.preheader ]
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.011.i105
  %i.jf = load float, ptr %i.je, align 4, !tbaa !169 ; 2 uses
  %i.jg = fsub float %i.jf, %i.io
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit, %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit
  %.sink = phi float [ %i.jg, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit ], [ %i.ii, %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit ]
  %.sink212.in = phi float [ %i.jf, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit ], [ %i.hs, %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit ]
  %.pr191 = phi ptr [ %i.im, %_ZN8LightGBM9ArrayArgsIfE6ArgMinEPKfm.exit ], [ %i.hq, %_ZN8LightGBM9ArrayArgsIfE6ArgMaxEPKfm.exit ]
  %.sink212 = fpext float %.sink212.in to double
  %i.jh = fpext float %.sink to double
  %i.ji = fneg double %i.jh
  %i.jj = call double @llvm.fmuladd.f64(double %i.ji, double %i.hm, double %.sink212)
  %.2.in = fptrunc double %i.jj to float
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.thread, %bb.ad, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit
  %.3.in163 = phi float [ %i.gr, %.thread ], [ %.2.in, %bb.ad ], [ %i.hk, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit ]
  %i.jk = phi ptr [ %i.gp, %.thread ], [ %.pr191, %bb.ad ], [ %i.ed, %_ZN8LightGBM9ArrayArgsIfE6ArgMinERKSt6vectorIfSaIfEE.exit ] ; 2 uses
  %i.jl = load ptr, ptr %i.ef, align 8, !tbaa !175
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jk to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jo) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.ag

bb.ae:                                            ; preds = %bb.aa, %bb.v
  %.pn = phi { ptr, i32 } [ %i.gs, %bb.v ], [ %i.ij, %bb.aa ] ; 2 uses
  %i.jp = load ptr, ptr %2, align 8, !tbaa !174   ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIfSaIfEED2Ev.exit115, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jq = load ptr, ptr %i.ef, align 8, !tbaa !175
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.jt) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit115

_ZNSt6vectorIfSaIfEED2Ev.exit115:                 ; preds = %bb.af, %bb.ae, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.fk, %bb.s ], [ %.pn, %bb.ae ], [ %.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.p, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %.4.in = phi float [ %i.h, %bb.c ], [ %.1.in, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.ea, %bb.p ], [ %.3.in163, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %.4 = fpext float %.4.in to double
  ret double %.4

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit85, %_ZNSt6vectorIfSaIfEED2Ev.exit115
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit115 ], [ %.pn68.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit85 ]
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM22RegressionQuantileloss12GetGradientsEPKdPfS3_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !204
  %i.i = load i32, ptr %0, align 4, !tbaa !204    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !204
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  %i.l = load i32, ptr %i.a, align 4, !tbaa !204  ; 2 uses
  %.not19 = icmp sgt i32 %i.l, %i.k
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !222
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.q = load ptr, ptr %5, align 8, !tbaa !220
  %i.r = sext i32 %i.l to i64
  %i.s = add nsw i32 %i.k, 1
  %i.t = load ptr, ptr %4, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load double, ptr %i.u, align 8, !tbaa !191
  %i.w = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.x = load float, ptr %i.w, align 4, !tbaa !169
  %i.y = fpext float %i.x to double
  %i.z = fsub double %i.v, %i.y
  %i.aa = fcmp ult double %i.z, f0xB690000000000000
  %i.ab = load float, ptr %i.p, align 4, !tbaa !147 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.ad = fneg float %i.ab
  %i.ae = fsub float 1.000000e+00, %i.ab
  %.sink = select i1 %i.aa, float %i.ad, float %i.ae
  store float %.sink, ptr %i.ac, align 4, !tbaa !169
  %i.af = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.af, align 4, !tbaa !169
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM22RegressionQuantileloss12GetGradientsEPKdPfS3_.omp_outlined.34(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !204
  %i.i = load i32, ptr %0, align 4, !tbaa !204    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !204
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  %i.l = load i32, ptr %i.a, align 4, !tbaa !204  ; 2 uses
  %.not22 = icmp sgt i32 %i.l, %i.k
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !222
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !221  ; 2 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !220
  %i.t = sext i32 %i.l to i64
  %i.u = add nsw i32 %i.k, 1
  %i.v = load ptr, ptr %4, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 7 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !191
  %i.y = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4, !tbaa !169
  %i.aa = fpext float %i.z to double
  %i.ab = fsub double %i.x, %i.aa
  %i.ac = fcmp ult double %i.ab, f0xB690000000000000
  %i.ad = load float, ptr %i.p, align 4, !tbaa !147 ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.af = load float, ptr %i.ae, align 4, !tbaa !169
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.ah = fneg float %i.ad
  %i.ai = fsub float 1.000000e+00, %i.ad
end_hunk_3
