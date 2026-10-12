Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/arap_dof?download=true
inline.NumInlined: 10962
inline.NumDeleted: 4749
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN3igl22arap_dof_recomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdEEbRKNS2_IiLin1ELi1ELi0ELin1ELi1EEERKNS1_12SparseMatrixIdLi0EiEERNS_11ArapDOFDataIT_T0_EE:bb.a
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.nz
  br i1 %exitcond.not.i.1, label %._crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !482

._crit_edge.us.us.i:                              ; preds = %.preheader.us.us.i.prol.loopexit, %.preheader.us.us.i, %middle.block379
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count74.i
  br i1 %exitcond75.not.i, label %._crit_edge54.split.us.us.i, label %.preheader45.us.us.i, !llvm.loop !483

._crit_edge54.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %.loopexit, label %.preheader46.us60.i, !llvm.loop !484

bb.bg:                                            ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.bd
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bh:                                            ; preds = %.lr.ph, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit ] ; 3 uses
  %i.rs = load ptr, ptr %i.ne, align 8, !tbaa !42
  %i.rt = getelementptr inbounds nuw [24 x i8], ptr %i.rs, i64 %indvars.iv ; 3 uses
  %i.ru = getelementptr inbounds nuw [24 x i8], ptr %i.nb, i64 %indvars.iv ; 4 uses
  %i.rv = load ptr, ptr %i.rt, align 8, !tbaa !72 ; 8 uses
  %i.rw = ptrtoaddr ptr %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !46 ; 6 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !73 ; 6 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 2 uses
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !46
  %.not.i.i.i.i.i.i.i.i115 = icmp eq i64 %i.sc, %i.ry
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %i.se = load i64, ptr %i.sd, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.se, %i.sa
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i115, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.sf = icmp eq i64 %i.ry, 0
  %i.sg = icmp eq i64 %i.sa, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.sf, %i.sg
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sh = sdiv i64 9223372036854775807, %i.sa
  %i.si = icmp sgt i64 %i.ry, %i.sh
  br i1 %i.si, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.bj
  %i.sj = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.sj, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.sj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %i.sk = mul nsw i64 %i.sa, %i.ry
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.ru, i64 noundef %i.sk, i64 noundef %i.ry, i64 noundef %i.sa)
          to label %.noexc123 unwind label %.loopexit248

.noexc123:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.sb, align 8, !tbaa !46
  %.pre20.i.i.i.i.i.i.i = load i64, ptr %i.sd, align 8, !tbaa !73
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc123, %bb.bh
  %i.sl = phi i64 [ %.pre20.i.i.i.i.i.i.i, %.noexc123 ], [ %i.sa, %bb.bh ]
  %i.sm = phi i64 [ %.pre.i.i.i.i.i.i.i, %.noexc123 ], [ %i.ry, %bb.bh ]
  %i.sn = load ptr, ptr %i.ru, align 8, !tbaa !72 ; 8 uses
  %i.so = ptrtoaddr ptr %i.sn to i64
  %i.sp = mul nsw i64 %i.sm, %i.sl                ; 7 uses
  %i.sq = sdiv i64 %i.sp, 2
  %i.sr = shl nsw i64 %i.sq, 1                    ; 6 uses
  %i.ss = icmp sgt i64 %i.sp, 1
  br i1 %i.ss, label %.lr.ph.i.i.i.i.i.i.i.i120, label %._crit_edge.i.i.i.i.i.i.i.i116

._crit_edge.i.i.i.i.i.i.i.i116:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i120, %bb.bk
  %i.st = icmp slt i64 %i.sr, %i.sp
  br i1 %i.st, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i117.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i116
  %i.su = sub i64 %i.sp, %i.sr                    ; 3 uses
  %min.iters.check355 = icmp ult i64 %i.su, 4
  %i.sv = sub i64 %i.rw, %i.so
  %diff.check353 = icmp ugt i64 %i.sv, -32
  %or.cond412 = select i1 %min.iters.check355, i1 true, i1 %diff.check353
  br i1 %or.cond412, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader413, label %vector.ph356

vector.ph356:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader
  %n.vec357 = and i64 %i.su, -4                   ; 3 uses
  %i.sw = add i64 %i.sr, %n.vec357
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph356
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next362, %vector.body358 ] ; 2 uses
  %i.sx = add i64 %i.sr, %index359                ; 2 uses
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.sx ; 2 uses
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.rv, i64 %i.sx ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %wide.load360 = load <2 x double>, ptr %i.sz, align 8, !tbaa !76
  %wide.load361 = load <2 x double>, ptr %i.ta, align 8, !tbaa !76
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  store <2 x double> %wide.load360, ptr %i.sy, align 8, !tbaa !76
  store <2 x double> %wide.load361, ptr %i.tb, align 8, !tbaa !76
  %index.next362 = add nuw i64 %index359, 4       ; 2 uses
  %i.tc = icmp eq i64 %index.next362, %n.vec357
  br i1 %i.tc, label %middle.block363, label %vector.body358, !llvm.loop !485

middle.block363:                                  ; preds = %vector.body358
  %cmp.n364 = icmp eq i64 %i.su, %n.vec357
  br i1 %cmp.n364, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader413

.lr.ph.i.i.i.i.i.i.i.i.i117.preheader413:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader, %middle.block363
  %.05.i.i.i.i.i.i.i.i.i118.ph = phi i64 [ %i.sr, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader ], [ %i.sw, %middle.block363 ] ; 4 uses
  %i.td = sub i64 %i.sp, %.05.i.i.i.i.i.i.i.i.i118.ph
  %xtraiter422 = and i64 %i.td, 3                 ; 2 uses
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  br i1 %lcmp.mod423.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol

.lr.ph.i.i.i.i.i.i.i.i.i117.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader413, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol
  %.05.i.i.i.i.i.i.i.i.i118.prol = phi i64 [ %i.th, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ %.05.i.i.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader413 ] ; 3 uses
  %prol.iter424 = phi i64 [ %prol.iter424.next, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader413 ]
  %i.te = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %.05.i.i.i.i.i.i.i.i.i118.prol
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.rv, i64 %.05.i.i.i.i.i.i.i.i.i118.prol
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !76
  store double %i.tg, ptr %i.te, align 8, !tbaa !76
  %i.th = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118.prol, 1 ; 2 uses
  %prol.iter424.next = add i64 %prol.iter424, 1   ; 2 uses
  %prol.iter424.cmp.not = icmp eq i64 %prol.iter424.next, %xtraiter422
  br i1 %prol.iter424.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol, !llvm.loop !486

.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader413
  %.05.i.i.i.i.i.i.i.i.i118.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader413 ], [ %i.th, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ]
  %i.ti = sub i64 %.05.i.i.i.i.i.i.i.i.i118.ph, %i.sp
  %i.tj = icmp ugt i64 %i.ti, -4
  br i1 %i.tj, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i117

.lr.ph.i.i.i.i.i.i.i.i.i117:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i117
  %.05.i.i.i.i.i.i.i.i.i118 = phi i64 [ %i.tz, %.lr.ph.i.i.i.i.i.i.i.i.i117 ], [ %.05.i.i.i.i.i.i.i.i.i118.unr, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit ] ; 6 uses
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %.05.i.i.i.i.i.i.i.i.i118
  %i.tl = getelementptr inbounds [8 x i8], ptr %i.rv, i64 %.05.i.i.i.i.i.i.i.i.i118
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !76
  store double %i.tm, ptr %i.tk, align 8, !tbaa !76
  %i.tn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118, 1 ; 2 uses
  %i.to = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.tn
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.rv, i64 %i.tn
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !76
  store double %i.tq, ptr %i.to, align 8, !tbaa !76
  %i.tr = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118, 2 ; 2 uses
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.tr
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.rv, i64 %i.tr
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !76
  store double %i.tu, ptr %i.ts, align 8, !tbaa !76
  %i.tv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118, 3 ; 2 uses
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.tv
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.rv, i64 %i.tv
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !76
  store double %i.ty, ptr %i.tw, align 8, !tbaa !76
  %i.tz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i119.3 = icmp eq i64 %i.tz, %i.sp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i119.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i117, !llvm.loop !487

.lr.ph.i.i.i.i.i.i.i.i120:                        ; preds = %bb.bk, %.lr.ph.i.i.i.i.i.i.i.i120
  %.011.i.i.i.i.i.i.i.i121 = phi i64 [ %i.ud, %.lr.ph.i.i.i.i.i.i.i.i120 ], [ 0, %bb.bk ] ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %.011.i.i.i.i.i.i.i.i121
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %.011.i.i.i.i.i.i.i.i121
  %i.uc = load <2 x double>, ptr %i.ub, align 16, !tbaa !81
  store <2 x double> %i.uc, ptr %i.ua, align 16, !tbaa !81
  %i.ud = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i121, 2 ; 2 uses
  %i.ue = icmp slt i64 %i.ud, %i.sr
  br i1 %i.ue, label %.lr.ph.i.i.i.i.i.i.i.i120, label %._crit_edge.i.i.i.i.i.i.i.i116, !llvm.loop !0

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i117, %middle.block363, %._crit_edge.i.i.i.i.i.i.i.i116
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.uf = load i32, ptr %i.jf, align 8, !tbaa !71 ; 2 uses
  %i.ug = sext i32 %i.uf to i64
  %i.uh = icmp slt i64 %indvars.iv.next, %i.ug
  br i1 %i.uh, label %bb.bh, label %._crit_edge, !llvm.loop !488

.loopexit248:                                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit:                                        ; preds = %._crit_edge54.split.us.us.i, %.noexc114, %.preheader46.lr.ph.i
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !42
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !46
  %i.um = load i32, ptr %i.jf, align 8, !tbaa !71 ; 3 uses
  %i.un = sext i32 %i.um to i64
  %i.uo = sdiv i64 %i.ul, %i.un                   ; 4 uses
  %i.up = trunc i64 %i.uo to i32                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.uq = load i64, ptr %i.kh, align 8, !tbaa !46 ; 6 uses
  %i.ur = mul nsw i32 %i.um, %i.um
  %i.us = mul nsw i32 %i.ur, %i.up                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.ut = sext i32 %i.us to i64                   ; 4 uses
  %i.uu = load ptr, ptr %i.jo, align 8, !tbaa !72, !noalias !510
  store ptr %i.uu, ptr %29, align 8, !tbaa !117, !alias.scope !510
  %i.uv = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.uq, ptr %i.uv, align 8, !tbaa !118, !alias.scope !510
  %i.uw = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 %i.ut, ptr %i.uw, align 8, !tbaa !118, !alias.scope !510
  %i.ux = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %i.jo, ptr %i.ux, align 8, !tbaa !99, !alias.scope !510
  %i.uy = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.uz = getelementptr inbounds nuw i8, ptr %29, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uy, i8 0, i64 16, i1 false)
  store i64 %i.uq, ptr %i.uz, align 8, !tbaa !502, !alias.scope !510
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %i.va = icmp eq i64 %i.uq, 0
  %i.vb = icmp eq i32 %i.us, 0
  %or.cond.i.i.i.i = or i1 %i.vb, %i.va
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.loopexit
  %i.vc = sdiv i64 9223372036854775807, %i.ut
  %i.vd = icmp sgt i64 %i.uq, %i.vc
  br i1 %i.vd, label %.invoke315, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.bl, %.loopexit
  %i.ve = mul nsw i64 %i.uq, %i.ut                ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %28, i64 16
  %.not.i174 = icmp eq i64 %i.ve, 0
  br i1 %.not.i174, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.vh = icmp sgt i64 %i.ve, 0
  br i1 %i.vh, label %bb.bn, label %.sink.split.i175

bb.bn:                                            ; preds = %bb.bm
  %i.vi = icmp samesign ugt i64 %i.ve, 2305843009213693951
  br i1 %i.vi, label %.invoke315, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177: ; preds = %bb.bn
  %i.vj = shl nuw i64 %i.ve, 3
  %i.vk = call noalias ptr @malloc(i64 noundef %i.vj) #27 ; 2 uses
  %i.vl = icmp eq ptr %i.vk, null
  br i1 %i.vl, label %.invoke315, label %.sink.split.i175

.invoke315:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177, %bb.bn, %bb.bl
  %i.vm = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.vm, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.vm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont316 unwind label %.body124

.cont316:                                         ; preds = %.invoke315
  unreachable

.sink.split.i175:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177, %bb.bm
  %.sink.i176 = phi ptr [ %i.vk, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177 ], [ null, %bb.bm ]
  store ptr %.sink.i176, ptr %28, align 8, !tbaa !72
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i175, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.uq, ptr %i.vf, align 8, !tbaa !46
  store i64 %i.ut, ptr %i.vg, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Lin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.bo unwind label %.body124

.body124:                                         ; preds = %.invoke315, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.vn = landingpad { ptr, i32 }
          cleanup
  %i.vo = load ptr, ptr %28, align 8, !tbaa !72
  call void @free(ptr noundef %i.vo) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.bt

bb.bo:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.vp = load i32, ptr %i.jd, align 4, !tbaa !92 ; 6 uses
  %i.vq = load i32, ptr %i.jf, align 8, !tbaa !71 ; 11 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.vs = add i32 %i.vq, 1                        ; 2 uses
  %i.vt = mul nsw i32 %i.vs, %i.vp                ; 2 uses
  %i.vu = sext i32 %i.vt to i64                   ; 3 uses
  %i.vv = mul nsw i32 %i.vq, %i.up                ; 2 uses
  %i.vw = sext i32 %i.vv to i64                   ; 3 uses
  %i.vx = icmp eq i32 %i.vt, 0
  %i.vy = icmp eq i32 %i.vv, 0
  %or.cond.i.i.i126 = or i1 %i.vy, %i.vx
  br i1 %or.cond.i.i.i126, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.vz = sdiv i64 9223372036854775807, %i.vw
  %i.wa = icmp slt i64 %i.vz, %i.vu
  br i1 %i.wa, label %bb.bq, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127

bb.bq:                                            ; preds = %bb.bp
  %i.wb = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.wb, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.wb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc133 unwind label %bb.bs

.noexc133:                                        ; preds = %bb.bq
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127: ; preds = %bb.bp, %bb.bo
  %i.wc = mul nsw i64 %i.vu, %i.vw
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.vr, i64 noundef %i.wc, i64 noundef %i.vu, i64 noundef %i.vw)
          to label %.noexc134 unwind label %bb.bs

.noexc134:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127
  %.not78.i = icmp slt i32 %i.vq, 0
  br i1 %.not78.i, label %.noexc134._ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge, label %.preheader60.lr.ph.i

.noexc134._ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge: ; preds = %.noexc134
  %.pre256 = load ptr, ptr %28, align 8, !tbaa !72
  br label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit

.preheader60.lr.ph.i:                             ; preds = %.noexc134
  %i.wd = icmp slt i32 %i.vp, 1
  %i.we = icmp slt i32 %i.up, 1
  %.not92.i = icmp eq i32 %i.vq, 0
  %or.cond.i128 = or i1 %i.wd, %.not92.i
  %brmerge.i = or i1 %i.we, %or.cond.i128
  %.pre257 = load ptr, ptr %28, align 8, !tbaa !72 ; 6 uses
  br i1 %brmerge.i, label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, label %.preheader60.lr.ph.split.us.split.us.split.us.i

.preheader60.lr.ph.split.us.split.us.split.us.i:  ; preds = %.preheader60.lr.ph.i
  %i.wf = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.wg = load i64, ptr %i.vf, align 8, !tbaa !46 ; 10 uses
  %i.wh = load ptr, ptr %i.vr, align 8, !tbaa !72 ; 2 uses
  %i.wi = load i64, ptr %i.wf, align 8, !tbaa !46 ; 4 uses
  %i.wj = and i64 %i.uo, 2147483647               ; 8 uses
  %i.wk = zext nneg i32 %i.vp to i64              ; 3 uses
  %wide.trip.count113.i = zext i32 %i.vs to i64
  %wide.trip.count103.i = zext nneg i32 %i.vq to i64 ; 2 uses
  %factor.op.mul307 = mul i32 %i.vq, %i.vp
  %factor.op.mul305 = mul i32 %i.vq, %i.up
  %i.wl = add nsw i64 %i.wj, -1                   ; 3 uses
  %i.wm = shl i64 %i.wg, 3                        ; 2 uses
  %i.wn = mul i64 %i.wg, -8
  %30 = mul i32 %i.vp, %i.vq
  %i.wo = zext i32 %30 to i64
  %i.wp = shl i64 %i.wg, 3
  %31 = mul i32 %i.vq, %i.up
  %i.wq = mul nuw nsw i64 %i.wj, %wide.trip.count103.i
  %i.wr = shl nuw nsw i64 %i.wk, 3
  %i.ws = mul i32 %i.vp, %i.vq
  %i.wt = zext i32 %i.ws to i64
  %i.wu = shl i64 %i.wg, 3
  %i.wv = mul i32 %i.vq, %i.up
  %min.iters.check402 = icmp samesign ult i64 %i.wj, 24
  %ident.check383 = icmp ne i64 %i.wi, 1
  %i.ww = trunc nsw i64 %i.wl to i32
  %i.wx = icmp ugt i64 %i.wl, 4294967295
  %i.wy = icmp slt i64 %i.wm, 0                   ; 2 uses
  %i.wz = select i1 %i.wy, i64 %i.wn, i64 %i.wm
  %mul386 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.wz, i64 %i.wl) ; 2 uses
  %mul.result387 = extractvalue { i64, i1 } %mul386, 0 ; 2 uses
  %mul.overflow388 = extractvalue { i64, i1 } %mul386, 1
  %i.xa = sub i64 0, %mul.result387
  %invariant.op439 = or i1 %i.wx, %ident.check383
  %n.vec404 = and i64 %i.uo, 2147483646           ; 3 uses
  %cmp.n409 = icmp eq i64 %i.wj, %n.vec404
  %xtraiter428 = and i64 %i.uo, 1
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  br label %.preheader60.us.us.us.i

.preheader60.us.us.us.i:                          ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.preheader60.lr.ph.split.us.split.us.split.us.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %._crit_edge.split.us.split.us.us.us.us.i ], [ 0, %.preheader60.lr.ph.split.us.split.us.split.us.i ] ; 6 uses
  %i.xb = mul i64 %i.wr, %indvars.iv110.i
  %i.xc = mul i64 %indvars.iv110.i, %i.wt
  %i.xd = mul i64 %indvars.iv110.i, %i.wo
  %i.xe = trunc nuw nsw i64 %indvars.iv110.i to i32
  %.reass308 = mul i32 %factor.op.mul307, %i.xe
  %i.xf = mul nuw nsw i64 %indvars.iv110.i, %i.wk
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.wh, i64 %i.xf
  %invariant.gep441 = getelementptr i8, ptr %i.wh, i64 %i.xb
  br label %.preheader59.us.us.us.us.us.i

.preheader59.us.us.us.us.us.i:                    ; preds = %._crit_edge67.split.us.us.us.us.us.us.i, %.preheader60.us.us.us.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %._crit_edge67.split.us.us.us.us.us.us.i ], [ 0, %.preheader60.us.us.us.i ] ; 6 uses
  %i.xg = add nuw i64 %i.wq, %indvars.iv105.i
  %i.xh = shl i64 %i.xg, 3
  %gep442 = getelementptr i8, ptr %invariant.gep441, i64 %i.xh
  %i.xi = add i64 %i.xc, %indvars.iv105.i
  %i.xj = shl i64 %i.xi, 32
  %i.xk = ashr exact i64 %i.xj, 29                ; 2 uses
  %i.xl = add i64 %i.xd, %indvars.iv105.i
  %i.xm = shl i64 %i.xl, 32
  %i.xn = ashr exact i64 %i.xm, 29
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv105.i ; 5 uses
  %i.xo = trunc nuw nsw i64 %indvars.iv105.i to i32
  %i.xp = add i32 %.reass308, %i.xo
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr [8 x i8], ptr %.pre257, i64 %i.xq ; 5 uses
  %scevgep384 = getelementptr i8, ptr %.pre257, i64 %i.xn
  %scevgep391 = getelementptr i8, ptr %.pre257, i64 %i.xk
  %scevgep393 = getelementptr i8, ptr %.pre257, i64 %i.xk
  br label %.preheader58.us.us.us.us.us.us.i

.preheader58.us.us.us.us.us.us.i:                 ; preds = %._crit_edge.us.us.us.us.us.us.i, %.preheader59.us.us.us.us.us.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %._crit_edge.us.us.us.us.us.us.i ], [ 0, %.preheader59.us.us.us.us.us.i ] ; 5 uses
  %i.xs = trunc i64 %indvars.iv100.i to i32
  %i.xt = mul i32 %i.wv, %i.xs
  %i.xu = sext i32 %i.xt to i64                   ; 2 uses
  %i.xv = mul i64 %i.wu, %i.xu
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %i.xv ; 4 uses
  %i.xw = add nsw i64 %i.wj, %i.xu
  %i.xx = shl nsw i64 %i.xw, 3
  %i.xy = add nsw i64 %i.xx, -8
  %i.xz = mul i64 %i.wg, %i.xy
  %scevgep394 = getelementptr i8, ptr %scevgep393, i64 %i.xz ; 4 uses
  %i.ya = icmp ult ptr %scevgep392, %scevgep394
  %umin395 = select i1 %i.ya, ptr %scevgep392, ptr %scevgep394
  %i.yb = icmp ugt ptr %scevgep392, %scevgep394
  %umax396 = select i1 %i.yb, ptr %scevgep392, ptr %scevgep394
  %scevgep397 = getelementptr i8, ptr %umax396, i64 8
  %i.yc = trunc nuw nsw i64 %indvars.iv100.i to i32
  %.reass306 = mul i32 %factor.op.mul305, %i.yc   ; 7 uses
  %i.yd = mul nuw nsw i64 %indvars.iv100.i, %i.wj ; 4 uses
  br i1 %min.iters.check402, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.scevcheck382

vector.scevcheck382:                              ; preds = %.preheader58.us.us.us.us.us.us.i
  %i.ye = trunc i64 %indvars.iv100.i to i32
  %i.yf = mul i32 %31, %i.ye
  %i.yg = sext i32 %i.yf to i64
  %i.yh = mul i64 %i.wp, %i.yg
  %scevgep385 = getelementptr i8, ptr %scevgep384, i64 %i.yh ; 4 uses
  %i.yi = add i32 %.reass306, %i.ww
  %i.yj = icmp slt i32 %i.yi, %.reass306
  %i.yk = getelementptr i8, ptr %scevgep385, i64 %mul.result387
  %i.yl = getelementptr i8, ptr %scevgep385, i64 %i.xa
  %i.ym = icmp ult ptr %i.yk, %scevgep385
  %i.yn = icmp ugt ptr %i.yl, %scevgep385
  %i.yo = select i1 %i.wy, i1 %i.yn, i1 %i.ym
  %i.yp = or i1 %i.yo, %mul.overflow388
  %.reass440 = or i1 %i.yj, %invariant.op439
  %i.yq = or i1 %.reass440, %i.yp
  br i1 %i.yq, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.memcheck389

vector.memcheck389:                               ; preds = %vector.scevcheck382
  %bound0398 = icmp ult ptr %gep.i, %scevgep397
  %bound1399 = icmp ult ptr %umin395, %gep442
  %found.conflict400 = and i1 %bound0398, %bound1399
  br i1 %found.conflict400, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %vector.memcheck389
  %invariant.gep437 = getelementptr [8 x i8], ptr %gep.i, i64 %i.yd
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next407, %vector.body405 ] ; 3 uses
  %i.yr = trunc i64 %index406 to i32              ; 2 uses
  %i.ys = or disjoint i32 %i.yr, 1
  %i.yt = add i32 %.reass306, %i.yr
  %i.yu = add i32 %.reass306, %i.ys
  %i.yv = sext i32 %i.yt to i64
  %i.yw = sext i32 %i.yu to i64
  %i.yx = mul nsw i64 %i.wg, %i.yv
  %i.yy = mul nsw i64 %i.wg, %i.yw
  %i.yz = getelementptr [8 x i8], ptr %i.xr, i64 %i.yx
  %i.za = getelementptr [8 x i8], ptr %i.xr, i64 %i.yy
  %i.zb = load double, ptr %i.yz, align 8, !tbaa !76, !alias.scope !511
  %i.zc = load double, ptr %i.za, align 8, !tbaa !76, !alias.scope !511
  %i.zd = insertelement <2 x double> poison, double %i.zb, i64 0
  %i.ze = insertelement <2 x double> %i.zd, double %i.zc, i64 1
  %i.zf = fptrunc <2 x double> %i.ze to <2 x float>
  %i.zg = fpext <2 x float> %i.zf to <2 x double>
  %gep438 = getelementptr [8 x i8], ptr %invariant.gep437, i64 %index406
  store <2 x double> %i.zg, ptr %gep438, align 8, !tbaa !76, !alias.scope !512, !noalias !511
  %index.next407 = add nuw i64 %index406, 2       ; 2 uses
  %i.zh = icmp eq i64 %index.next407, %n.vec404
  br i1 %i.zh, label %middle.block408, label %vector.body405, !llvm.loop !494

middle.block408:                                  ; preds = %vector.body405
  br i1 %cmp.n409, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i.preheader

.preheader.us.us.us.us.us.us.i.preheader:         ; preds = %vector.memcheck389, %vector.scevcheck382, %.preheader58.us.us.us.us.us.us.i, %middle.block408
  %indvars.iv.i130.ph = phi i64 [ 0, %vector.memcheck389 ], [ 0, %vector.scevcheck382 ], [ 0, %.preheader58.us.us.us.us.us.us.i ], [ %n.vec404, %middle.block408 ] ; 5 uses
  %.neg432 = or disjoint i64 %indvars.iv.i130.ph, 1
  br i1 %lcmp.mod429.not, label %.preheader.us.us.us.us.us.us.i.prol.loopexit, label %.preheader.us.us.us.us.us.us.i.prol

.preheader.us.us.us.us.us.us.i.prol:              ; preds = %.preheader.us.us.us.us.us.us.i.preheader
  %i.zi = trunc nuw nsw i64 %indvars.iv.i130.ph to i32
  %i.zj = add i32 %.reass306, %i.zi
  %i.zk = sext i32 %i.zj to i64
  %i.zl = mul nsw i64 %i.wg, %i.zk
  %i.zm = getelementptr [8 x i8], ptr %i.xr, i64 %i.zl
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !76
  %i.zo = fptrunc double %i.zn to float
  %i.zp = fpext float %i.zo to double
  %i.zq = add nuw nsw i64 %indvars.iv.i130.ph, %i.yd
  %i.zr = mul nsw i64 %i.zq, %i.wi
  %i.zs = getelementptr [8 x i8], ptr %gep.i, i64 %i.zr
  store double %i.zp, ptr %i.zs, align 8, !tbaa !76
  %indvars.iv.next.i131.prol = or disjoint i64 %indvars.iv.i130.ph, 1
  br label %.preheader.us.us.us.us.us.us.i.prol.loopexit

.preheader.us.us.us.us.us.us.i.prol.loopexit:     ; preds = %.preheader.us.us.us.us.us.us.i.prol, %.preheader.us.us.us.us.us.us.i.preheader
  %indvars.iv.i130.unr = phi i64 [ %indvars.iv.i130.ph, %.preheader.us.us.us.us.us.us.i.preheader ], [ %indvars.iv.next.i131.prol, %.preheader.us.us.us.us.us.us.i.prol ]
  %i.zt = icmp eq i64 %i.wj, %.neg432
  br i1 %i.zt, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.i:                   ; preds = %.preheader.us.us.us.us.us.us.i.prol.loopexit, %.preheader.us.us.us.us.us.us.i
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i131.1, %.preheader.us.us.us.us.us.us.i ], [ %indvars.iv.i130.unr, %.preheader.us.us.us.us.us.us.i.prol.loopexit ] ; 4 uses
  %i.zu = trunc nuw nsw i64 %indvars.iv.i130 to i32
  %i.zv = add i32 %.reass306, %i.zu
  %i.zw = sext i32 %i.zv to i64
  %i.zx = mul nsw i64 %i.wg, %i.zw
  %i.zy = getelementptr [8 x i8], ptr %i.xr, i64 %i.zx
  %i.zz = load double, ptr %i.zy, align 8, !tbaa !76
  %i.aaa = fptrunc double %i.zz to float
  %i.aab = fpext float %i.aaa to double
  %i.aac = add nuw nsw i64 %indvars.iv.i130, %i.yd
  %i.aad = mul nsw i64 %i.aac, %i.wi
  %i.aae = getelementptr [8 x i8], ptr %gep.i, i64 %i.aad
  store double %i.aab, ptr %i.aae, align 8, !tbaa !76
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %i.aaf = trunc nuw nsw i64 %indvars.iv.next.i131 to i32
  %i.aag = add i32 %.reass306, %i.aaf
  %i.aah = sext i32 %i.aag to i64
  %i.aai = mul nsw i64 %i.wg, %i.aah
  %i.aaj = getelementptr [8 x i8], ptr %i.xr, i64 %i.aai
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !76
  %i.aal = fptrunc double %i.aak to float
  %i.aam = fpext float %i.aal to double
  %i.aan = add nuw nsw i64 %indvars.iv.next.i131, %i.yd
  %i.aao = mul nsw i64 %i.aan, %i.wi
  %i.aap = getelementptr [8 x i8], ptr %gep.i, i64 %i.aao
  store double %i.aam, ptr %i.aap, align 8, !tbaa !76
  %indvars.iv.next.i131.1 = add nuw nsw i64 %indvars.iv.i130, 2 ; 2 uses
  %exitcond.not.i132.1 = icmp eq i64 %indvars.iv.next.i131.1, %i.wj
  br i1 %exitcond.not.i132.1, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i, !llvm.loop !495

._crit_edge.us.us.us.us.us.us.i:                  ; preds = %.preheader.us.us.us.us.us.us.i.prol.loopexit, %.preheader.us.us.us.us.us.us.i, %middle.block408
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond104.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count103.i
  br i1 %exitcond104.not.i, label %._crit_edge67.split.us.us.us.us.us.us.i, label %.preheader58.us.us.us.us.us.us.i, !llvm.loop !496

._crit_edge67.split.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us.us.us.us.us.us.i
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %i.wk
  br i1 %exitcond109.not.i, label %._crit_edge.split.us.split.us.us.us.us.i, label %.preheader59.us.us.us.us.us.i, !llvm.loop !497

._crit_edge.split.us.split.us.us.us.us.i:         ; preds = %._crit_edge67.split.us.us.us.us.us.us.i
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %wide.trip.count113.i
  br i1 %exitcond114.not.i, label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, label %.preheader60.us.us.us.i, !llvm.loop !498

_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit: ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.noexc134._ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge, %.preheader60.lr.ph.i
  %i.aaq = phi ptr [ %.pre256, %.noexc134._ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge ], [ %.pre257, %.preheader60.lr.ph.i ], [ %.pre257, %._crit_edge.split.us.split.us.us.us.us.i ]
  call void @free(ptr noundef %i.aaq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aas, %.lr.ph.i.i.i ], [ %i.nb, %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit ] ; 2 uses
  %i.aar = load ptr, ptr %.05.i.i.i, align 8, !tbaa !72
  call void @free(ptr noundef %i.aar) #25
  %i.aas = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aas, %i.nc
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %.idx) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.aat = load ptr, ptr %24, align 8, !tbaa !72
  call void @free(ptr noundef %i.aat) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.aau = load ptr, ptr %23, align 8, !tbaa !72
  call void @free(ptr noundef %i.aau) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.aav = load ptr, ptr %22, align 8, !tbaa !72
  call void @free(ptr noundef %i.aav) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.aaw = load ptr, ptr %18, align 8, !tbaa !72
  call void @free(ptr noundef %i.aaw) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  ret i1 true

bb.br:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.bf
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bs:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127, %bb.bq
  %i.aay = landingpad { ptr, i32 }
          cleanup
  %i.aaz = load ptr, ptr %28, align 8, !tbaa !72
  call void @free(ptr noundef %i.aaz) #25
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.body124
  %.pn88 = phi { ptr, i32 } [ %i.aay, %bb.bs ], [ %i.vn, %.body124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit248, %.loopexit.split-lp, %bb.br, %bb.bt, %bb.bg
  %.pn91 = phi { ptr, i32 } [ %i.aax, %bb.br ], [ %i.rr, %bb.bg ], [ %.pn88, %bb.bt ], [ %lpad.loopexit, %.loopexit248 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.bv

bb.bv:                                            ; preds = %bb.ax, %bb.az, %.body167, %bb.bb, %bb.bu, %bb.ay, %bb.aw
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mp, %bb.aw ], [ %i.mq, %bb.ax ], [ %i.mr, %bb.ay ], [ %.pn91, %bb.bu ], [ %i.mu, %bb.bb ], [ %.pn86, %.body167 ], [ %i.ms, %bb.az ]
  %i.aba = load ptr, ptr %24, align 8, !tbaa !72
  call void @free(ptr noundef %i.aba) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.bv
  %.pn91.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn, %bb.bv ], [ %i.ix, %bb.ai ]
  %i.abb = load ptr, ptr %23, align 8, !tbaa !72
  call void @free(ptr noundef %i.abb) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.abc = load ptr, ptr %22, align 8, !tbaa !72
  call void @free(ptr noundef %i.abc) #25
  br label %bb.bw

bb.bw:                                            ; preds = %.body, %bb.av
  %.pn91.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn, %.body ], [ %i.mo, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ae, %bb.aa
end_hunk_0
begin_hunk_1_@_ZN3igl22arap_dof_recomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEfEEbRKNS2_IiLin1ELi1ELi0ELin1ELi1EEERKNS1_12SparseMatrixIdLi0EiEERNS_11ArapDOFDataIT_T0_EE:bb.a
  %i.sb = insertelement <4 x float> %i.sa, float %i.rx, i64 3
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index462
  store <4 x float> %i.sb, ptr %gep, align 4, !tbaa !172, !alias.scope !727, !noalias !726
  %index.next463 = add nuw i64 %index462, 4       ; 2 uses
  %i.sc = icmp eq i64 %index.next463, %n.vec460
  br i1 %i.sc, label %middle.block464, label %vector.body461, !llvm.loop !702

middle.block464:                                  ; preds = %vector.body461
  br i1 %cmp.n465, label %._crit_edge.us.us.i, label %.preheader.us.us.i.preheader

.preheader.us.us.i.preheader:                     ; preds = %vector.memcheck452, %vector.scevcheck, %.preheader45.us.us.i, %middle.block464
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck452 ], [ 0, %vector.scevcheck ], [ 0, %.preheader45.us.us.i ], [ %n.vec460, %middle.block464 ] ; 5 uses
  br i1 %lcmp.mod507.not, label %.preheader.us.us.i.prol.loopexit, label %.preheader.us.us.i.prol

.preheader.us.us.i.prol:                          ; preds = %.preheader.us.us.i.preheader
  %i.sd = trunc nuw nsw i64 %indvars.iv.i.ph to i32
  %i.se = add i32 %.reass, %i.sd
  %i.sf = sext i32 %i.se to i64
  %i.sg = mul nsw i64 %i.pj, %i.sf
  %i.sh = getelementptr [4 x i8], ptr %i.qa, i64 %i.sg
  %i.si = load float, ptr %i.sh, align 4, !tbaa !172
  %i.sj = add nuw nsw i64 %indvars.iv.i.ph, %i.qm
  %i.sk = mul nsw i64 %i.sj, %i.pg
  %i.sl = getelementptr [4 x i8], ptr %i.pz, i64 %i.sk
  store float %i.si, ptr %i.sl, align 4, !tbaa !172
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.us.i.prol.loopexit

.preheader.us.us.i.prol.loopexit:                 ; preds = %.preheader.us.us.i.prol, %.preheader.us.us.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.us.i.preheader ], [ %indvars.iv.next.i.prol, %.preheader.us.us.i.prol ]
  %i.sm = icmp eq i64 %indvars.iv.i.ph, %i.pw
  br i1 %i.sm, label %._crit_edge.us.us.i, label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.prol.loopexit, %.preheader.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.us.i ], [ %indvars.iv.i.unr, %.preheader.us.us.i.prol.loopexit ] ; 4 uses
  %i.sn = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.so = add i32 %.reass, %i.sn
  %i.sp = sext i32 %i.so to i64
  %i.sq = mul nsw i64 %i.pj, %i.sp
  %i.sr = getelementptr [4 x i8], ptr %i.qa, i64 %i.sq
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !172
  %i.st = add nuw nsw i64 %indvars.iv.i, %i.qm
  %i.su = mul nsw i64 %i.st, %i.pg
  %i.sv = getelementptr [4 x i8], ptr %i.pz, i64 %i.su
  store float %i.ss, ptr %i.sv, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.sw = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.sx = add i32 %.reass, %i.sw
  %i.sy = sext i32 %i.sx to i64
  %i.sz = mul nsw i64 %i.pj, %i.sy
  %i.ta = getelementptr [4 x i8], ptr %i.qa, i64 %i.sz
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !172
  %i.tc = add nuw nsw i64 %indvars.iv.next.i, %i.qm
  %i.td = mul nsw i64 %i.tc, %i.pg
  %i.te = getelementptr [4 x i8], ptr %i.pz, i64 %i.td
  store float %i.tb, ptr %i.te, align 4, !tbaa !172
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ph
  br i1 %exitcond.not.i.1, label %._crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !703

._crit_edge.us.us.i:                              ; preds = %.preheader.us.us.i.prol.loopexit, %.preheader.us.us.i, %middle.block464
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count74.i
  br i1 %exitcond75.not.i, label %._crit_edge54.split.us.us.i, label %.preheader45.us.us.i, !llvm.loop !704

._crit_edge54.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %.loopexit, label %.preheader46.us60.i, !llvm.loop !705

bb.bf:                                            ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.bc
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bg:                                            ; preds = %.lr.ph, %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.tg = load ptr, ptr %i.om, align 8, !tbaa !42
  %i.th = getelementptr inbounds nuw [24 x i8], ptr %i.tg, i64 %indvars.iv ; 3 uses
  %i.ti = getelementptr inbounds nuw [24 x i8], ptr %i.oj, i64 %indvars.iv ; 4 uses
  %i.tj = load ptr, ptr %i.th, align 8, !tbaa !72 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !46 ; 6 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !73 ; 6 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !166
  %.not.i.i.i.i.i.i.i.i121 = icmp eq i64 %i.tp, %i.tl
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ti, i64 16 ; 2 uses
  %i.tr = load i64, ptr %i.tq, align 8
  %.not8.i.i.i.i.i.i.i.i122 = icmp eq i64 %i.tr, %i.tn
  %or.cond.i.i.i.i.i.i.i.i123 = select i1 %.not.i.i.i.i.i.i.i.i121, i1 %.not8.i.i.i.i.i.i.i.i122, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i123, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ts = icmp eq i64 %i.tl, 0
  %i.tt = icmp eq i64 %i.tn, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i124 = or i1 %i.ts, %i.tt
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i124, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.tu = sdiv i64 9223372036854775807, %i.tn
  %i.tv = icmp sgt i64 %i.tl, %i.tu
  br i1 %i.tv, label %.noexc.i.i.i.i.i.i.i129, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125

.noexc.i.i.i.i.i.i.i129:                          ; preds = %bb.bi
  %i.tw = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.tw, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.tw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc130 unwind label %.loopexit.split-lp

.noexc130:                                        ; preds = %.noexc.i.i.i.i.i.i.i129
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125: ; preds = %bb.bi, %bb.bh
  %i.tx = mul nsw i64 %i.tn, %i.tl
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.ti, i64 noundef %i.tx, i64 noundef %i.tl, i64 noundef %i.tn)
          to label %.noexc131 unwind label %.loopexit292

.noexc131:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125
  %.pre.i.i.i.i.i.i.i126 = load i64, ptr %i.to, align 8, !tbaa !166
  %.pre15.i.i.i.i.i.i.i = load i64, ptr %i.tq, align 8, !tbaa !167
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc131, %bb.bg
  %i.ty = phi i64 [ %.pre15.i.i.i.i.i.i.i, %.noexc131 ], [ %i.tn, %bb.bg ]
  %i.tz = phi i64 [ %.pre.i.i.i.i.i.i.i126, %.noexc131 ], [ %i.tl, %bb.bg ]
  %i.ua = load ptr, ptr %i.ti, align 8, !tbaa !165 ; 2 uses
  %i.ub = mul nsw i64 %i.tz, %i.ty                ; 5 uses
  %i.uc = icmp sgt i64 %i.ub, 0
  br i1 %i.uc, label %.lr.ph.i.i.i.i.i.i.i.i127.preheader, label %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i127.preheader:              ; preds = %bb.bj
  %min.iters.check440 = icmp ult i64 %i.ub, 4
  br i1 %min.iters.check440, label %.lr.ph.i.i.i.i.i.i.i.i127.preheader497, label %vector.ph441

vector.ph441:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i127.preheader
  %n.vec442 = and i64 %i.ub, 9223372036854775804  ; 3 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.body443, %vector.ph441
  %index444 = phi i64 [ 0, %vector.ph441 ], [ %index.next447, %vector.body443 ] ; 3 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %index444 ; 2 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %index444 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %wide.load445 = load <2 x double>, ptr %i.ue, align 8, !tbaa !76
  %wide.load446 = load <2 x double>, ptr %i.uf, align 8, !tbaa !76
  %i.ug = fptrunc <2 x double> %wide.load445 to <2 x float>
  %i.uh = fptrunc <2 x double> %wide.load446 to <2 x float>
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  store <2 x float> %i.ug, ptr %i.ud, align 4, !tbaa !172
  store <2 x float> %i.uh, ptr %i.ui, align 4, !tbaa !172
  %index.next447 = add nuw i64 %index444, 4       ; 2 uses
  %i.uj = icmp eq i64 %index.next447, %n.vec442
  br i1 %i.uj, label %middle.block448, label %vector.body443, !llvm.loop !706

middle.block448:                                  ; preds = %vector.body443
  %cmp.n449 = icmp eq i64 %i.ub, %n.vec442
  br i1 %cmp.n449, label %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i127.preheader497

.lr.ph.i.i.i.i.i.i.i.i127.preheader497:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i127.preheader, %middle.block448
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i127.preheader ], [ %n.vec442, %middle.block448 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i127

.lr.ph.i.i.i.i.i.i.i.i127:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i127.preheader497, %.lr.ph.i.i.i.i.i.i.i.i127
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.uo, %.lr.ph.i.i.i.i.i.i.i.i127 ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i127.preheader497 ] ; 3 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %.05.i.i.i.i.i.i.i.i
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %.05.i.i.i.i.i.i.i.i
  %i.um = load double, ptr %i.ul, align 8, !tbaa !76
  %i.un = fptrunc double %i.um to float
  store float %i.un, ptr %i.uk, align 4, !tbaa !172
  %i.uo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i128 = icmp eq i64 %i.uo, %i.ub
  br i1 %exitcond.not.i.i.i.i.i.i.i.i128, label %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i127, !llvm.loop !707

_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i127, %middle.block448, %bb.bj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.up = load i32, ptr %i.jf, align 8, !tbaa !164 ; 2 uses
  %i.uq = sext i32 %i.up to i64
  %i.ur = icmp slt i64 %indvars.iv.next, %i.uq
  br i1 %i.ur, label %bb.bg, label %._crit_edge, !llvm.loop !708

.loopexit292:                                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i.i.i129
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit:                                        ; preds = %._crit_edge54.split.us.us.i, %.noexc120, %.preheader46.lr.ph.i
  %i.us = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !42
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !46
  %i.uw = load i32, ptr %i.jf, align 8, !tbaa !164 ; 3 uses
  %i.ux = sext i32 %i.uw to i64
  %i.uy = sdiv i64 %i.uv, %i.ux                   ; 4 uses
  %i.uz = trunc i64 %i.uy to i32                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.va = load i64, ptr %i.kh, align 8, !tbaa !166 ; 6 uses
  %i.vb = mul nsw i32 %i.uw, %i.uw
  %i.vc = mul nsw i32 %i.vb, %i.uz                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.vd = sext i32 %i.vc to i64                   ; 4 uses
  %i.ve = load ptr, ptr %i.jo, align 8, !tbaa !165, !noalias !728
  store ptr %i.ve, ptr %16, align 8, !tbaa !193, !alias.scope !728
  %i.vf = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.va, ptr %i.vf, align 8, !tbaa !118, !alias.scope !728
  %i.vg = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.vd, ptr %i.vg, align 8, !tbaa !118, !alias.scope !728
  %i.vh = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.jo, ptr %i.vh, align 8, !tbaa !182, !alias.scope !728
  %i.vi = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.vj = getelementptr inbounds nuw i8, ptr %16, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vi, i8 0, i64 16, i1 false)
  store i64 %i.va, ptr %i.vj, align 8, !tbaa !729, !alias.scope !728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.vk = icmp eq i64 %i.va, 0
  %i.vl = icmp eq i32 %i.vc, 0
  %or.cond.i.i.i.i = or i1 %i.vl, %i.vk
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  %i.vm = sdiv i64 9223372036854775807, %i.vd
  %i.vn = icmp sgt i64 %i.va, %i.vm
  br i1 %i.vn, label %.invoke366, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.bk, %.loopexit
  %i.vo = mul nsw i64 %i.va, %i.vd                ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.not.i180 = icmp eq i64 %i.vo, 0
  br i1 %.not.i180, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.vr = icmp sgt i64 %i.vo, 0
  br i1 %i.vr, label %bb.bm, label %.sink.split.i181

bb.bm:                                            ; preds = %bb.bl
  %i.vs = icmp samesign ugt i64 %i.vo, 4611686018427387903
  br i1 %i.vs, label %.invoke366, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.bm
  %i.vt = shl nuw i64 %i.vo, 2
  %i.vu = call noalias ptr @malloc(i64 noundef %i.vt) #27 ; 2 uses
  %i.vv = icmp eq ptr %i.vu, null
  br i1 %i.vv, label %.invoke366, label %.sink.split.i181

.invoke366:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.bm, %bb.bk
  %i.vw = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.vw, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.vw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont367 unwind label %.body132

.cont367:                                         ; preds = %.invoke366
  unreachable

.sink.split.i181:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.bl
  %.sink.i182 = phi ptr [ %i.vu, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.bl ]
  store ptr %.sink.i182, ptr %15, align 8, !tbaa !165
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i181, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.va, ptr %i.vp, align 8, !tbaa !166
  store i64 %i.vd, ptr %i.vq, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Lin1ELin1ELb0EEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.bn unwind label %.body132

.body132:                                         ; preds = %.invoke366, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.vx = landingpad { ptr, i32 }
          cleanup
  %i.vy = load ptr, ptr %15, align 8, !tbaa !165
  call void @free(ptr noundef %i.vy) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.bs

bb.bn:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.vz = load i32, ptr %i.jd, align 4, !tbaa !174 ; 6 uses
  %i.wa = load i32, ptr %i.jf, align 8, !tbaa !164 ; 11 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.wc = add i32 %i.wa, 1                        ; 2 uses
  %i.wd = mul nsw i32 %i.wc, %i.vz                ; 2 uses
  %i.we = sext i32 %i.wd to i64                   ; 3 uses
  %i.wf = mul nsw i32 %i.wa, %i.uz                ; 2 uses
  %i.wg = sext i32 %i.wf to i64                   ; 3 uses
  %i.wh = icmp eq i32 %i.wd, 0
  %i.wi = icmp eq i32 %i.wf, 0
  %or.cond.i.i.i134 = or i1 %i.wi, %i.wh
  br i1 %or.cond.i.i.i134, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.wj = sdiv i64 9223372036854775807, %i.wg
  %i.wk = icmp slt i64 %i.wj, %i.we
  br i1 %i.wk, label %bb.bp, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135

bb.bp:                                            ; preds = %bb.bo
  %i.wl = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.wl, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.wl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc141 unwind label %bb.br

.noexc141:                                        ; preds = %bb.bp
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135: ; preds = %bb.bo, %bb.bn
  %i.wm = mul nsw i64 %i.we, %i.wg
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.wb, i64 noundef %i.wm, i64 noundef %i.we, i64 noundef %i.wg)
          to label %.noexc142 unwind label %bb.br

.noexc142:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135
  %.not78.i = icmp slt i32 %i.wa, 0
  br i1 %.not78.i, label %.noexc142._ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge, label %.preheader60.lr.ph.i

.noexc142._ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge: ; preds = %.noexc142
  %.pre300 = load ptr, ptr %15, align 8, !tbaa !165
  br label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit

.preheader60.lr.ph.i:                             ; preds = %.noexc142
  %i.wn = icmp slt i32 %i.vz, 1
  %i.wo = icmp slt i32 %i.uz, 1
  %.not92.i = icmp eq i32 %i.wa, 0
  %or.cond.i136 = or i1 %i.wn, %.not92.i
  %brmerge.i = or i1 %i.wo, %or.cond.i136
  %.pre301 = load ptr, ptr %15, align 8, !tbaa !165 ; 6 uses
  br i1 %brmerge.i, label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, label %.preheader60.lr.ph.split.us.split.us.split.us.i

.preheader60.lr.ph.split.us.split.us.split.us.i:  ; preds = %.preheader60.lr.ph.i
  %i.wp = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.wq = load i64, ptr %i.vp, align 8, !tbaa !166 ; 12 uses
  %i.wr = load ptr, ptr %i.wb, align 8, !tbaa !165 ; 2 uses
  %i.ws = load i64, ptr %i.wp, align 8, !tbaa !166 ; 4 uses
  %i.wt = and i64 %i.uy, 2147483647               ; 8 uses
  %i.wu = zext nneg i32 %i.vz to i64              ; 3 uses
  %wide.trip.count113.i = zext i32 %i.wc to i64
  %wide.trip.count103.i = zext nneg i32 %i.wa to i64 ; 2 uses
  %factor.op.mul358 = mul i32 %i.wa, %i.vz
  %factor.op.mul356 = mul i32 %i.wa, %i.uz
  %i.wv = add nsw i64 %i.wt, -1                   ; 3 uses
  %i.ww = shl i64 %i.wq, 2                        ; 2 uses
  %i.wx = mul i64 %i.wq, -4
  %17 = mul i32 %i.vz, %i.wa
  %i.wy = zext i32 %17 to i64
  %i.wz = shl i64 %i.wq, 2
  %18 = mul i32 %i.wa, %i.uz
  %i.xa = mul nuw nsw i64 %i.wt, %wide.trip.count103.i
  %i.xb = shl nuw nsw i64 %i.wu, 2
  %i.xc = mul i32 %i.vz, %i.wa
  %i.xd = zext i32 %i.xc to i64
  %i.xe = shl i64 %i.wq, 2
  %i.xf = mul i32 %i.wa, %i.uz
  %min.iters.check487 = icmp samesign ult i64 %i.wt, 28
  %ident.check468 = icmp ne i64 %i.ws, 1
  %i.xg = trunc nsw i64 %i.wv to i32
  %i.xh = icmp ugt i64 %i.wv, 4294967295
  %i.xi = icmp slt i64 %i.ww, 0                   ; 2 uses
  %i.xj = select i1 %i.xi, i64 %i.wx, i64 %i.ww
  %mul471 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.xj, i64 %i.wv) ; 2 uses
  %mul.result472 = extractvalue { i64, i1 } %mul471, 0 ; 2 uses
  %mul.overflow473 = extractvalue { i64, i1 } %mul471, 1
  %i.xk = sub i64 0, %mul.result472
  %invariant.op519 = or i1 %i.xh, %ident.check468
  %n.vec489 = and i64 %i.uy, 2147483644           ; 3 uses
  %cmp.n494 = icmp eq i64 %i.wt, %n.vec489
  %xtraiter509 = and i64 %i.uy, 1
  %lcmp.mod510.not = icmp eq i64 %xtraiter509, 0
  br label %.preheader60.us.us.us.i

.preheader60.us.us.us.i:                          ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.preheader60.lr.ph.split.us.split.us.split.us.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %._crit_edge.split.us.split.us.us.us.us.i ], [ 0, %.preheader60.lr.ph.split.us.split.us.split.us.i ] ; 6 uses
  %i.xl = mul i64 %i.xb, %indvars.iv110.i
  %i.xm = mul i64 %indvars.iv110.i, %i.xd
  %i.xn = mul i64 %indvars.iv110.i, %i.wy
  %i.xo = trunc nuw nsw i64 %indvars.iv110.i to i32
  %.reass359 = mul i32 %factor.op.mul358, %i.xo
  %i.xp = mul nuw nsw i64 %indvars.iv110.i, %i.wu
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.wr, i64 %i.xp
  %invariant.gep521 = getelementptr i8, ptr %i.wr, i64 %i.xl
  br label %.preheader59.us.us.us.us.us.i

.preheader59.us.us.us.us.us.i:                    ; preds = %._crit_edge67.split.us.us.us.us.us.us.i, %.preheader60.us.us.us.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %._crit_edge67.split.us.us.us.us.us.us.i ], [ 0, %.preheader60.us.us.us.i ] ; 6 uses
  %i.xq = add nuw i64 %i.xa, %indvars.iv105.i
  %i.xr = shl i64 %i.xq, 2
  %gep522 = getelementptr i8, ptr %invariant.gep521, i64 %i.xr
  %i.xs = add i64 %i.xm, %indvars.iv105.i
  %i.xt = shl i64 %i.xs, 32
  %i.xu = ashr exact i64 %i.xt, 30                ; 2 uses
  %i.xv = add i64 %i.xn, %indvars.iv105.i
  %i.xw = shl i64 %i.xv, 32
  %i.xx = ashr exact i64 %i.xw, 30
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv105.i ; 5 uses
  %i.xy = trunc nuw nsw i64 %indvars.iv105.i to i32
  %i.xz = add i32 %.reass359, %i.xy
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr [4 x i8], ptr %.pre301, i64 %i.ya ; 7 uses
  %scevgep469 = getelementptr i8, ptr %.pre301, i64 %i.xx
  %scevgep476 = getelementptr i8, ptr %.pre301, i64 %i.xu
  %scevgep478 = getelementptr i8, ptr %.pre301, i64 %i.xu
  br label %.preheader58.us.us.us.us.us.us.i

.preheader58.us.us.us.us.us.us.i:                 ; preds = %._crit_edge.us.us.us.us.us.us.i, %.preheader59.us.us.us.us.us.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %._crit_edge.us.us.us.us.us.us.i ], [ 0, %.preheader59.us.us.us.us.us.i ] ; 5 uses
  %i.yc = trunc i64 %indvars.iv100.i to i32
  %i.yd = mul i32 %i.xf, %i.yc
  %i.ye = sext i32 %i.yd to i64                   ; 2 uses
  %i.yf = mul i64 %i.xe, %i.ye
  %scevgep477 = getelementptr i8, ptr %scevgep476, i64 %i.yf ; 4 uses
  %i.yg = add nsw i64 %i.wt, %i.ye
  %i.yh = shl nsw i64 %i.yg, 2
  %i.yi = add nsw i64 %i.yh, -4
  %i.yj = mul i64 %i.wq, %i.yi
  %scevgep479 = getelementptr i8, ptr %scevgep478, i64 %i.yj ; 4 uses
  %i.yk = icmp ult ptr %scevgep477, %scevgep479
  %umin480 = select i1 %i.yk, ptr %scevgep477, ptr %scevgep479
  %i.yl = icmp ugt ptr %scevgep477, %scevgep479
  %umax481 = select i1 %i.yl, ptr %scevgep477, ptr %scevgep479
  %scevgep482 = getelementptr i8, ptr %umax481, i64 4
  %i.ym = trunc nuw nsw i64 %indvars.iv100.i to i32
  %.reass357 = mul i32 %factor.op.mul356, %i.ym   ; 9 uses
  %i.yn = mul nuw nsw i64 %indvars.iv100.i, %i.wt ; 4 uses
  br i1 %min.iters.check487, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.scevcheck467

vector.scevcheck467:                              ; preds = %.preheader58.us.us.us.us.us.us.i
  %i.yo = trunc i64 %indvars.iv100.i to i32
  %i.yp = mul i32 %18, %i.yo
  %i.yq = sext i32 %i.yp to i64
  %i.yr = mul i64 %i.wz, %i.yq
  %scevgep470 = getelementptr i8, ptr %scevgep469, i64 %i.yr ; 4 uses
  %i.ys = add i32 %.reass357, %i.xg
  %i.yt = icmp slt i32 %i.ys, %.reass357
  %i.yu = getelementptr i8, ptr %scevgep470, i64 %mul.result472
  %i.yv = getelementptr i8, ptr %scevgep470, i64 %i.xk
  %i.yw = icmp ult ptr %i.yu, %scevgep470
  %i.yx = icmp ugt ptr %i.yv, %scevgep470
  %i.yy = select i1 %i.xi, i1 %i.yx, i1 %i.yw
  %i.yz = or i1 %i.yy, %mul.overflow473
  %.reass520 = or i1 %i.yt, %invariant.op519
  %i.za = or i1 %.reass520, %i.yz
  br i1 %i.za, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.memcheck474

vector.memcheck474:                               ; preds = %vector.scevcheck467
  %bound0483 = icmp ult ptr %gep.i, %scevgep482
  %bound1484 = icmp ult ptr %umin480, %gep522
  %found.conflict485 = and i1 %bound0483, %bound1484
  br i1 %found.conflict485, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.ph488

vector.ph488:                                     ; preds = %vector.memcheck474
  %invariant.gep517 = getelementptr [4 x i8], ptr %gep.i, i64 %i.yn
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph488
  %index491 = phi i64 [ 0, %vector.ph488 ], [ %index.next492, %vector.body490 ] ; 3 uses
  %i.zb = trunc i64 %index491 to i32              ; 4 uses
  %i.zc = or disjoint i32 %i.zb, 1
  %i.zd = or disjoint i32 %i.zb, 2
  %i.ze = or disjoint i32 %i.zb, 3
  %i.zf = add i32 %.reass357, %i.zb
  %i.zg = add i32 %.reass357, %i.zc
  %i.zh = add i32 %.reass357, %i.zd
  %i.zi = add i32 %.reass357, %i.ze
  %i.zj = sext i32 %i.zf to i64
  %i.zk = sext i32 %i.zg to i64
  %i.zl = sext i32 %i.zh to i64
  %i.zm = sext i32 %i.zi to i64
  %i.zn = mul nsw i64 %i.wq, %i.zj
  %i.zo = mul nsw i64 %i.wq, %i.zk
  %i.zp = mul nsw i64 %i.wq, %i.zl
  %i.zq = mul nsw i64 %i.wq, %i.zm
  %i.zr = getelementptr [4 x i8], ptr %i.yb, i64 %i.zn
  %i.zs = getelementptr [4 x i8], ptr %i.yb, i64 %i.zo
  %i.zt = getelementptr [4 x i8], ptr %i.yb, i64 %i.zp
  %i.zu = getelementptr [4 x i8], ptr %i.yb, i64 %i.zq
  %i.zv = load float, ptr %i.zr, align 4, !tbaa !172, !alias.scope !730
  %i.zw = load float, ptr %i.zs, align 4, !tbaa !172, !alias.scope !730
  %i.zx = load float, ptr %i.zt, align 4, !tbaa !172, !alias.scope !730
  %i.zy = load float, ptr %i.zu, align 4, !tbaa !172, !alias.scope !730
  %i.zz = insertelement <4 x float> poison, float %i.zv, i64 0
  %i.aaa = insertelement <4 x float> %i.zz, float %i.zw, i64 1
  %i.aab = insertelement <4 x float> %i.aaa, float %i.zx, i64 2
  %i.aac = insertelement <4 x float> %i.aab, float %i.zy, i64 3
  %gep518 = getelementptr [4 x i8], ptr %invariant.gep517, i64 %index491
  store <4 x float> %i.aac, ptr %gep518, align 4, !tbaa !172, !alias.scope !731, !noalias !730
  %index.next492 = add nuw i64 %index491, 4       ; 2 uses
  %i.aad = icmp eq i64 %index.next492, %n.vec489
  br i1 %i.aad, label %middle.block493, label %vector.body490, !llvm.loop !714

middle.block493:                                  ; preds = %vector.body490
  br i1 %cmp.n494, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i.preheader

.preheader.us.us.us.us.us.us.i.preheader:         ; preds = %vector.memcheck474, %vector.scevcheck467, %.preheader58.us.us.us.us.us.us.i, %middle.block493
  %indvars.iv.i138.ph = phi i64 [ 0, %vector.memcheck474 ], [ 0, %vector.scevcheck467 ], [ 0, %.preheader58.us.us.us.us.us.us.i ], [ %n.vec489, %middle.block493 ] ; 5 uses
  %.neg513 = or disjoint i64 %indvars.iv.i138.ph, 1
  br i1 %lcmp.mod510.not, label %.preheader.us.us.us.us.us.us.i.prol.loopexit, label %.preheader.us.us.us.us.us.us.i.prol

.preheader.us.us.us.us.us.us.i.prol:              ; preds = %.preheader.us.us.us.us.us.us.i.preheader
  %i.aae = trunc nuw nsw i64 %indvars.iv.i138.ph to i32
  %i.aaf = add i32 %.reass357, %i.aae
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = mul nsw i64 %i.wq, %i.aag
  %i.aai = getelementptr [4 x i8], ptr %i.yb, i64 %i.aah
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !172
  %i.aak = add nuw nsw i64 %indvars.iv.i138.ph, %i.yn
  %i.aal = mul nsw i64 %i.aak, %i.ws
  %i.aam = getelementptr [4 x i8], ptr %gep.i, i64 %i.aal
  store float %i.aaj, ptr %i.aam, align 4, !tbaa !172
  %indvars.iv.next.i139.prol = or disjoint i64 %indvars.iv.i138.ph, 1
  br label %.preheader.us.us.us.us.us.us.i.prol.loopexit

.preheader.us.us.us.us.us.us.i.prol.loopexit:     ; preds = %.preheader.us.us.us.us.us.us.i.prol, %.preheader.us.us.us.us.us.us.i.preheader
  %indvars.iv.i138.unr = phi i64 [ %indvars.iv.i138.ph, %.preheader.us.us.us.us.us.us.i.preheader ], [ %indvars.iv.next.i139.prol, %.preheader.us.us.us.us.us.us.i.prol ]
  %i.aan = icmp eq i64 %i.wt, %.neg513
  br i1 %i.aan, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.i:                   ; preds = %.preheader.us.us.us.us.us.us.i.prol.loopexit, %.preheader.us.us.us.us.us.us.i
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139.1, %.preheader.us.us.us.us.us.us.i ], [ %indvars.iv.i138.unr, %.preheader.us.us.us.us.us.us.i.prol.loopexit ] ; 4 uses
  %i.aao = trunc nuw nsw i64 %indvars.iv.i138 to i32
  %i.aap = add i32 %.reass357, %i.aao
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = mul nsw i64 %i.wq, %i.aaq
  %i.aas = getelementptr [4 x i8], ptr %i.yb, i64 %i.aar
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !172
  %i.aau = add nuw nsw i64 %indvars.iv.i138, %i.yn
  %i.aav = mul nsw i64 %i.aau, %i.ws
  %i.aaw = getelementptr [4 x i8], ptr %gep.i, i64 %i.aav
  store float %i.aat, ptr %i.aaw, align 4, !tbaa !172
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i138, 1 ; 2 uses
  %i.aax = trunc nuw nsw i64 %indvars.iv.next.i139 to i32
  %i.aay = add i32 %.reass357, %i.aax
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = mul nsw i64 %i.wq, %i.aaz
  %i.abb = getelementptr [4 x i8], ptr %i.yb, i64 %i.aba
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !172
  %i.abd = add nuw nsw i64 %indvars.iv.next.i139, %i.yn
  %i.abe = mul nsw i64 %i.abd, %i.ws
  %i.abf = getelementptr [4 x i8], ptr %gep.i, i64 %i.abe
  store float %i.abc, ptr %i.abf, align 4, !tbaa !172
  %indvars.iv.next.i139.1 = add nuw nsw i64 %indvars.iv.i138, 2 ; 2 uses
  %exitcond.not.i140.1 = icmp eq i64 %indvars.iv.next.i139.1, %i.wt
  br i1 %exitcond.not.i140.1, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i, !llvm.loop !715

._crit_edge.us.us.us.us.us.us.i:                  ; preds = %.preheader.us.us.us.us.us.us.i.prol.loopexit, %.preheader.us.us.us.us.us.us.i, %middle.block493
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond104.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count103.i
  br i1 %exitcond104.not.i, label %._crit_edge67.split.us.us.us.us.us.us.i, label %.preheader58.us.us.us.us.us.us.i, !llvm.loop !716

._crit_edge67.split.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us.us.us.us.us.us.i
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %i.wu
  br i1 %exitcond109.not.i, label %._crit_edge.split.us.split.us.us.us.us.i, label %.preheader59.us.us.us.us.us.i, !llvm.loop !717

._crit_edge.split.us.split.us.us.us.us.i:         ; preds = %._crit_edge67.split.us.us.us.us.us.us.i
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %wide.trip.count113.i
  br i1 %exitcond114.not.i, label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, label %.preheader60.us.us.us.i, !llvm.loop !718

_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit: ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.noexc142._ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge, %.preheader60.lr.ph.i
  %i.abg = phi ptr [ %.pre300, %.noexc142._ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge ], [ %.pre301, %.preheader60.lr.ph.i ], [ %.pre301, %._crit_edge.split.us.split.us.us.us.us.i ]
  call void @free(ptr noundef %i.abg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.abi, %.lr.ph.i.i.i ], [ %i.oj, %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit ] ; 2 uses
  %i.abh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !165
  call void @free(ptr noundef %i.abh) #25
  %i.abi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.abi, %i.ok
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !23

_ZSt8_DestroyIPN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.oj, i64 noundef %.idx) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.abj = load ptr, ptr %12, align 8, !tbaa !72
  call void @free(ptr noundef %i.abj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.abk = load ptr, ptr %11, align 8, !tbaa !72
  call void @free(ptr noundef %i.abk) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.abl = load ptr, ptr %10, align 8, !tbaa !72
  call void @free(ptr noundef %i.abl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.abm = load ptr, ptr %6, align 8, !tbaa !72
  call void @free(ptr noundef %i.abm) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i1 true

bb.bq:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.be
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.br:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135, %bb.bp
  %i.abo = landingpad { ptr, i32 }
          cleanup
  %i.abp = load ptr, ptr %15, align 8, !tbaa !165
  call void @free(ptr noundef %i.abp) #25
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.body132
  %.pn88 = phi { ptr, i32 } [ %i.abo, %bb.br ], [ %i.vx, %.body132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit292, %.loopexit.split-lp, %bb.bq, %bb.bs, %bb.bf
  %.pn91 = phi { ptr, i32 } [ %i.abn, %bb.bq ], [ %i.tf, %bb.bf ], [ %.pn88, %bb.bs ], [ %lpad.loopexit, %.loopexit292 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ax, %bb.az, %bb.ba, %bb.bb, %bb.bt, %bb.ay, %bb.aw
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nx, %bb.aw ], [ %i.ny, %bb.ax ], [ %i.nz, %bb.ay ], [ %.pn91, %bb.bt ], [ %i.oc, %bb.bb ], [ %i.ob, %bb.ba ], [ %i.oa, %bb.az ]
  %i.abq = load ptr, ptr %12, align 8, !tbaa !72
  call void @free(ptr noundef %i.abq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.bu
  %.pn91.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn, %bb.bu ], [ %i.ix, %bb.ai ]
  %i.abr = load ptr, ptr %11, align 8, !tbaa !72
  call void @free(ptr noundef %i.abr) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.abs = load ptr, ptr %10, align 8, !tbaa !72
  call void @free(ptr noundef %i.abs) #25
  br label %bb.bv

end_hunk_1
