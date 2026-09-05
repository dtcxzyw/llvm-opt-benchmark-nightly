Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLimMemQuasiNewtonUpdater?download=true
inline.NumInlined: 2195
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5Ipopt24LimMemQuasiNewtonUpdater16SplitEigenvaluesERNS_14DenseGenMatrixERKNS_11DenseVectorERNS_8SmartPtrIS1_EES8_:bb.a
scalar.ph255:                                     ; preds = %scalar.ph255, %scalar.ph255.preheader.new
  %indvars.iv208 = phi i64 [ %indvars.iv208.unr, %scalar.ph255.preheader.new ], [ %indvars.iv.next209.3, %scalar.ph255 ] ; 5 uses
  %i.is = add nuw nsw i64 %indvars.iv208, %i.ie   ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !147
  %i.iv = fdiv double %i.iu, %i.id
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.is
  store double %i.iv, ptr %i.iw, align 8, !tbaa !147
  %.reass = add nuw nsw i64 %indvars.iv208, %invariant.op ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.reass
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !147
  %i.iz = fdiv double %i.iy, %i.id
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.reass
  store double %i.iz, ptr %i.ja, align 8, !tbaa !147
  %.reass300 = add nuw nsw i64 %indvars.iv208, %invariant.op299 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.reass300
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !147
  %i.jd = fdiv double %i.jc, %i.id
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.reass300
  store double %i.jd, ptr %i.je, align 8, !tbaa !147
  %.reass302 = add nuw nsw i64 %indvars.iv208, %invariant.op301 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.reass302
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !147
  %i.jh = fdiv double %i.jg, %i.id
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.reass302
  store double %i.jh, ptr %i.ji, align 8, !tbaa !147
  %indvars.iv.next209.3 = add nuw nsw i64 %indvars.iv208, 4 ; 2 uses
  %exitcond212.not.3 = icmp eq i64 %indvars.iv.next209.3, %i.hy
  br i1 %exitcond212.not.3, label %._crit_edge191.us, label %scalar.ph255, !llvm.loop !467

._crit_edge191.us:                                ; preds = %scalar.ph255.prol.loopexit, %scalar.ph255, %middle.block263
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count217
  br i1 %exitcond218.not, label %.split.us, label %.lr.ph190.us, !llvm.loop !468

.split.us.loopexit283.unr-lcssa:                  ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader: ; preds = %.split.us.loopexit283.unr-lcssa, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader
  %indvars.iv203.epil.init = phi i64 [ 0, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader ], [ %indvars.iv.next204.3, %.split.us.loopexit283.unr-lcssa ]
  %lcmp.mod286 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod286)
  br label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil: ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader
  %indvars.iv203.epil = phi i64 [ %indvars.iv203.epil.init, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader ], [ %indvars.iv.next204.epil, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader ], [ %epil.iter.next, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil ]
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203.epil
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !147
  %i.jl = fneg double %i.jk
  %i.jm = tail call double @sqrt(double noundef %i.jl) #20 ; 0 uses
  %indvars.iv.next204.epil = add nuw nsw i64 %indvars.iv203.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split.us, label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil, !llvm.loop !469

.split.us:                                        ; preds = %.split.us.loopexit283.unr-lcssa, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil, %._crit_edge191.us
  %i.jn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.ba unwind label %bb.bh     ; 8 uses

bb.ax:                                            ; preds = %bb.ar
  %i.jo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef 24) #21
  br label %common.resume

bb.ay:                                            ; preds = %bb.as
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %bb.aw
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split:    ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader.new
  %indvars.iv203 = phi i64 [ 0, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader.new ], [ %indvars.iv.next204.3, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader.new ], [ %niter.next.3, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split ]
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203
  %i.js = load double, ptr %i.jr, align 8, !tbaa !147
  %i.jt = fneg double %i.js
  %i.ju = tail call double @sqrt(double noundef %i.jt) #20 ; 0 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !147
  %i.jy = fneg double %i.jx
  %i.jz = tail call double @sqrt(double noundef %i.jy) #20 ; 0 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !147
  %i.kd = fneg double %i.kc
  %i.ke = tail call double @sqrt(double noundef %i.kd) #20 ; 0 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !147
  %i.ki = fneg double %i.kh
  %i.kj = tail call double @sqrt(double noundef %i.ki) #20 ; 0 uses
  %indvars.iv.next204.3 = add nuw nsw i64 %indvars.iv203, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split.us.loopexit283.unr-lcssa, label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split, !llvm.loop !468

bb.ba:                                            ; preds = %.split.us
  %i.kk = sub nsw i32 %i.d, %.0105.lcssa          ; 4 uses
  invoke void @_ZN5Ipopt19DenseGenMatrixSpaceC1Eii(ptr noundef nonnull align 8 dereferenceable(20) %i.jn, i32 noundef %i.d, i32 noundef %i.kk)
          to label %bb.bb unwind label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 6 uses
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !42
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 8, !tbaa !42
  %i.ko = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23
          to label %.noexc153 unwind label %bb.bj ; 7 uses

.noexc153:                                        ; preds = %bb.bb
  invoke void @_ZN5Ipopt14DenseGenMatrixC1EPKNS_19DenseGenMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(104) %i.ko, ptr noundef nonnull align 8 dereferenceable(20) %i.jn)
          to label %_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit156 unwind label %bb.bc

bb.bc:                                            ; preds = %.noexc153
  %i.kp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef 104) #21
  br label %.body154

_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit156: ; preds = %.noexc153
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !42
  %i.ks = add nsw i32 %i.kr, 1
  store i32 %i.ks, ptr %i.kq, align 8, !tbaa !42
  %i.kt = load ptr, ptr %4, align 8, !tbaa !94    ; 4 uses
  %.not.i.i.i158 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i158, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit156
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !42
  %i.kw = add nsw i32 %i.kv, -1                   ; 2 uses
  store i32 %i.kw, ptr %i.ku, align 8, !tbaa !42
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ky = load ptr, ptr %i.kt, align 8, !tbaa !44
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  tail call void %i.la(ptr noundef nonnull align 8 dereferenceable(104) %i.kt) #20, !inline_history !3
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit156
  store ptr %i.ko, ptr %4, align 8, !tbaa !94
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ko, i64 88
  store i8 1, ptr %i.lb, align 8, !tbaa !190
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ko)
          to label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit161 unwind label %bb.bk

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit161:       ; preds = %bb.bf
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ko, i64 80
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !191 ; 2 uses
  %i.le = ptrtoaddr ptr %i.ld to i64
  %i.lf = icmp sgt i32 %i.kk, 0
  br i1 %i.lf, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit161
  %wide.trip.count232 = zext nneg i32 %i.kk to i64 ; 3 uses
  br i1 %i.k, label %.lr.ph195.us.preheader, label %.lr.ph198.split.preheader

.lr.ph198.split.preheader:                        ; preds = %.lr.ph198
  %i.lg = zext i32 %.0105.lcssa to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.lg ; 9 uses
  %xtraiter289 = and i64 %wide.trip.count232, 7   ; 3 uses
  %i.lh = icmp ult i32 %i.kk, 8
  br i1 %i.lh, label %.lr.ph198.split.epil.preheader, label %.lr.ph198.split.preheader.new

.lr.ph198.split.preheader.new:                    ; preds = %.lr.ph198.split.preheader
  %unroll_iter293 = and i64 %wide.trip.count232, 2147483640
  br label %.lr.ph198.split

.lr.ph195.us.preheader:                           ; preds = %.lr.ph198
  %i.li = sext i32 %.0105.lcssa to i64            ; 2 uses
  %wide.trip.count227 = zext nneg i32 %i.d to i64 ; 5 uses
  %i.lj = mul nsw i64 %i.li, %i.x
  %i.lk = shl i64 %i.lj, 3
  %i.ll = add i64 %i.lk, %i.j
  %min.iters.check269 = icmp eq i32 %i.d, 1
  %i.lm = sub i64 %i.ll, %i.le
  %diff.check267 = icmp ugt i64 %i.lm, -16
  %or.cond281 = select i1 %min.iters.check269, i1 true, i1 %diff.check267
  %n.vec271 = and i64 %wide.trip.count227, 2147483646 ; 3 uses
  %cmp.n279 = icmp eq i64 %n.vec271, %wide.trip.count227
  br label %.lr.ph195.us

.lr.ph195.us:                                     ; preds = %.lr.ph195.us.preheader, %._crit_edge196.us
  %indvars.iv229 = phi i64 [ 0, %.lr.ph195.us.preheader ], [ %indvars.iv.next230, %._crit_edge196.us ] ; 3 uses
  %i.ln = add nuw nsw i64 %indvars.iv229, %i.li   ; 2 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ln
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !147
  %i.lq = tail call double @sqrt(double noundef %i.lp) #20 ; 6 uses
  %i.lr = mul nuw nsw i64 %i.ln, %i.x
  %i.ls = mul nuw nsw i64 %indvars.iv229, %i.x
  %invariant.gep243 = getelementptr [8 x i8], ptr %i.i, i64 %i.lr ; 6 uses
  %invariant.gep245 = getelementptr [8 x i8], ptr %i.ld, i64 %i.ls ; 6 uses
  br i1 %or.cond281, label %scalar.ph268.preheader, label %vector.ph270

vector.ph270:                                     ; preds = %.lr.ph195.us
  %broadcast.splatinsert272 = insertelement <2 x double> poison, double %i.lq, i64 0
  %broadcast.splat273 = shufflevector <2 x double> %broadcast.splatinsert272, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph270
  %index275 = phi i64 [ 0, %vector.ph270 ], [ %index.next277, %vector.body274 ] ; 3 uses
  %i.lt = getelementptr [8 x i8], ptr %invariant.gep243, i64 %index275
  %wide.load276 = load <2 x double>, ptr %i.lt, align 8, !tbaa !147
  %i.lu = fdiv <2 x double> %wide.load276, %broadcast.splat273
  %i.lv = getelementptr [8 x i8], ptr %invariant.gep245, i64 %index275
  store <2 x double> %i.lu, ptr %i.lv, align 8, !tbaa !147
  %index.next277 = add nuw i64 %index275, 2       ; 2 uses
  %i.lw = icmp eq i64 %index.next277, %n.vec271
  br i1 %i.lw, label %middle.block278, label %vector.body274, !llvm.loop !470

middle.block278:                                  ; preds = %vector.body274
  br i1 %cmp.n279, label %._crit_edge196.us, label %scalar.ph268.preheader

scalar.ph268.preheader:                           ; preds = %.lr.ph195.us, %middle.block278
  %indvars.iv224.ph = phi i64 [ 0, %.lr.ph195.us ], [ %n.vec271, %middle.block278 ] ; 4 uses
  %i.lx = sub nsw i64 %wide.trip.count227, %indvars.iv224.ph
  %xtraiter295 = and i64 %i.lx, 3                 ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %scalar.ph268.prol.loopexit, label %scalar.ph268.prol

scalar.ph268.prol:                                ; preds = %scalar.ph268.preheader, %scalar.ph268.prol
  %indvars.iv224.prol = phi i64 [ %indvars.iv.next225.prol, %scalar.ph268.prol ], [ %indvars.iv224.ph, %scalar.ph268.preheader ] ; 3 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %scalar.ph268.prol ], [ 0, %scalar.ph268.preheader ]
  %gep244.prol = getelementptr [8 x i8], ptr %invariant.gep243, i64 %indvars.iv224.prol
  %i.ly = load double, ptr %gep244.prol, align 8, !tbaa !147
  %i.lz = fdiv double %i.ly, %i.lq
  %gep246.prol = getelementptr [8 x i8], ptr %invariant.gep245, i64 %indvars.iv224.prol
  store double %i.lz, ptr %gep246.prol, align 8, !tbaa !147
  %indvars.iv.next225.prol = add nuw nsw i64 %indvars.iv224.prol, 1 ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %scalar.ph268.prol.loopexit, label %scalar.ph268.prol, !llvm.loop !471

scalar.ph268.prol.loopexit:                       ; preds = %scalar.ph268.prol, %scalar.ph268.preheader
  %indvars.iv224.unr = phi i64 [ %indvars.iv224.ph, %scalar.ph268.preheader ], [ %indvars.iv.next225.prol, %scalar.ph268.prol ]
  %i.ma = sub nsw i64 %indvars.iv224.ph, %wide.trip.count227
  %i.mb = icmp ugt i64 %i.ma, -4
  br i1 %i.mb, label %._crit_edge196.us, label %scalar.ph268

scalar.ph268:                                     ; preds = %scalar.ph268.prol.loopexit, %scalar.ph268
  %indvars.iv224 = phi i64 [ %indvars.iv.next225.3, %scalar.ph268 ], [ %indvars.iv224.unr, %scalar.ph268.prol.loopexit ] ; 6 uses
  %gep244 = getelementptr [8 x i8], ptr %invariant.gep243, i64 %indvars.iv224
  %i.mc = load double, ptr %gep244, align 8, !tbaa !147
  %i.md = fdiv double %i.mc, %i.lq
  %gep246 = getelementptr [8 x i8], ptr %invariant.gep245, i64 %indvars.iv224
  store double %i.md, ptr %gep246, align 8, !tbaa !147
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %gep244.1 = getelementptr [8 x i8], ptr %invariant.gep243, i64 %indvars.iv.next225
  %i.me = load double, ptr %gep244.1, align 8, !tbaa !147
  %i.mf = fdiv double %i.me, %i.lq
  %gep246.1 = getelementptr [8 x i8], ptr %invariant.gep245, i64 %indvars.iv.next225
  store double %i.mf, ptr %gep246.1, align 8, !tbaa !147
  %indvars.iv.next225.1 = add nuw nsw i64 %indvars.iv224, 2 ; 2 uses
  %gep244.2 = getelementptr [8 x i8], ptr %invariant.gep243, i64 %indvars.iv.next225.1
  %i.mg = load double, ptr %gep244.2, align 8, !tbaa !147
  %i.mh = fdiv double %i.mg, %i.lq
  %gep246.2 = getelementptr [8 x i8], ptr %invariant.gep245, i64 %indvars.iv.next225.1
  store double %i.mh, ptr %gep246.2, align 8, !tbaa !147
  %indvars.iv.next225.2 = add nuw nsw i64 %indvars.iv224, 3 ; 2 uses
  %gep244.3 = getelementptr [8 x i8], ptr %invariant.gep243, i64 %indvars.iv.next225.2
  %i.mi = load double, ptr %gep244.3, align 8, !tbaa !147
  %i.mj = fdiv double %i.mi, %i.lq
  %gep246.3 = getelementptr [8 x i8], ptr %invariant.gep245, i64 %indvars.iv.next225.2
  store double %i.mj, ptr %gep246.3, align 8, !tbaa !147
  %indvars.iv.next225.3 = add nuw nsw i64 %indvars.iv224, 4 ; 2 uses
  %exitcond228.not.3 = icmp eq i64 %indvars.iv.next225.3, %wide.trip.count227
  br i1 %exitcond228.not.3, label %._crit_edge196.us, label %scalar.ph268, !llvm.loop !472

._crit_edge196.us:                                ; preds = %scalar.ph268.prol.loopexit, %scalar.ph268, %middle.block278
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count232
  br i1 %exitcond233.not, label %._crit_edge199, label %.lr.ph195.us, !llvm.loop !473

._crit_edge199.loopexit282.unr-lcssa:             ; preds = %.lr.ph198.split
  %lcmp.mod291.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod291.not, label %._crit_edge199, label %.lr.ph198.split.epil.preheader

.lr.ph198.split.epil.preheader:                   ; preds = %._crit_edge199.loopexit282.unr-lcssa, %.lr.ph198.split.preheader
  %indvars.iv219.epil.init = phi i64 [ 0, %.lr.ph198.split.preheader ], [ %indvars.iv.next220.7, %._crit_edge199.loopexit282.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter289, 0
  tail call void @llvm.assume(i1 %lcmp.mod292)
  br label %.lr.ph198.split.epil

.lr.ph198.split.epil:                             ; preds = %.lr.ph198.split.epil, %.lr.ph198.split.epil.preheader
  %indvars.iv219.epil = phi i64 [ %indvars.iv219.epil.init, %.lr.ph198.split.epil.preheader ], [ %indvars.iv.next220.epil, %.lr.ph198.split.epil ] ; 2 uses
  %epil.iter290 = phi i64 [ 0, %.lr.ph198.split.epil.preheader ], [ %epil.iter290.next, %.lr.ph198.split.epil ]
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv219.epil
  %i.mk = load double, ptr %gep.epil, align 8, !tbaa !147
  %i.ml = tail call double @sqrt(double noundef %i.mk) #20 ; 0 uses
  %indvars.iv.next220.epil = add nuw nsw i64 %indvars.iv219.epil, 1
  %epil.iter290.next = add i64 %epil.iter290, 1   ; 2 uses
  %epil.iter290.cmp.not = icmp eq i64 %epil.iter290.next, %xtraiter289
  br i1 %epil.iter290.cmp.not, label %._crit_edge199, label %.lr.ph198.split.epil, !llvm.loop !474

._crit_edge199:                                   ; preds = %._crit_edge199.loopexit282.unr-lcssa, %.lr.ph198.split.epil, %._crit_edge196.us, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit161
  %i.mm = load i32, ptr %i.kl, align 8, !tbaa !42
  %i.mn = add nsw i32 %i.mm, -1                   ; 2 uses
  store i32 %i.mn, ptr %i.kl, align 8, !tbaa !42
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.bg, label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit

bb.bg:                                            ; preds = %._crit_edge199
  %i.mp = load ptr, ptr %i.jn, align 8, !tbaa !44
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8
  tail call void %i.mr(ptr noundef nonnull align 8 dereferenceable(20) %i.jn) #20, !inline_history !28
  br label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit: ; preds = %bb.bg, %._crit_edge199
  %i.ms = load i32, ptr %i.hd, align 8, !tbaa !42
  %i.mt = add nsw i32 %i.ms, -1                   ; 2 uses
  store i32 %i.mt, ptr %i.hd, align 8, !tbaa !42
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.sink.split, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

bb.bh:                                            ; preds = %.split.us
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %bb.ba
  %i.mw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 24) #21
  br label %.body

bb.bj:                                            ; preds = %bb.bb
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.bk:                                            ; preds = %bb.bf
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.lr.ph198.split:                                  ; preds = %.lr.ph198.split, %.lr.ph198.split.preheader.new
  %indvars.iv219 = phi i64 [ 0, %.lr.ph198.split.preheader.new ], [ %indvars.iv.next220.7, %.lr.ph198.split ] ; 9 uses
  %niter294 = phi i64 [ 0, %.lr.ph198.split.preheader.new ], [ %niter294.next.7, %.lr.ph198.split ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv219
  %i.mz = load double, ptr %gep, align 8, !tbaa !147
  %i.na = tail call double @sqrt(double noundef %i.mz) #20 ; 0 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv219
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nc = load double, ptr %gep.1, align 8, !tbaa !147
  %i.nd = tail call double @sqrt(double noundef %i.nc) #20 ; 0 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv219
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.nf = load double, ptr %gep.2, align 8, !tbaa !147
  %i.ng = tail call double @sqrt(double noundef %i.nf) #20 ; 0 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv219
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.ni = load double, ptr %gep.3, align 8, !tbaa !147
  %i.nj = tail call double @sqrt(double noundef %i.ni) #20 ; 0 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv219
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nl = load double, ptr %gep.4, align 8, !tbaa !147
  %i.nm = tail call double @sqrt(double noundef %i.nl) #20 ; 0 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv219
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.no = load double, ptr %gep.5, align 8, !tbaa !147
  %i.np = tail call double @sqrt(double noundef %i.no) #20 ; 0 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv219
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nq, i64 48
  %i.nr = load double, ptr %gep.6, align 8, !tbaa !147
  %i.ns = tail call double @sqrt(double noundef %i.nr) #20 ; 0 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv219
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nt, i64 56
  %i.nu = load double, ptr %gep.7, align 8, !tbaa !147
  %i.nv = tail call double @sqrt(double noundef %i.nu) #20 ; 0 uses
  %indvars.iv.next220.7 = add nuw nsw i64 %indvars.iv219, 8 ; 2 uses
  %niter294.next.7 = add i64 %niter294, 8         ; 2 uses
  %niter294.ncmp.7 = icmp eq i64 %niter294.next.7, %unroll_iter293
  br i1 %niter294.ncmp.7, label %._crit_edge199.loopexit282.unr-lcssa, label %.lr.ph198.split, !llvm.loop !473

.body154:                                         ; preds = %bb.bk, %bb.bc, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.my, %bb.bk ], [ %i.mx, %bb.bj ], [ %i.kp, %bb.bc ] ; 2 uses
  %i.nw = load i32, ptr %i.kl, align 8, !tbaa !42
  %i.nx = add nsw i32 %i.nw, -1                   ; 2 uses
  store i32 %i.nx, ptr %i.kl, align 8, !tbaa !42
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %bb.bl, label %.body

bb.bl:                                            ; preds = %.body154
  %i.nz = load ptr, ptr %i.jn, align 8, !tbaa !44
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8
  tail call void %i.ob(ptr noundef nonnull align 8 dereferenceable(20) %i.jn) #20, !inline_history !28
  br label %.body
end_hunk_0
