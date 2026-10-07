Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/arap_dof?download=true
inline.NumInlined: 10962
inline.NumDeleted: 4749
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN3igl22arap_dof_recomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdEEbRKNS2_IiLin1ELi1ELi0ELin1ELi1EEERKNS1_12SparseMatrixIdLi0EiEERNS_11ArapDOFDataIT_T0_EE:bb.a
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ny
  br i1 %exitcond.not.i.1, label %._crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !482

._crit_edge.us.us.i:                              ; preds = %.preheader.us.us.i.prol.loopexit, %.preheader.us.us.i, %middle.block380
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count74.i
  br i1 %exitcond75.not.i, label %._crit_edge54.split.us.us.i, label %.preheader45.us.us.i, !llvm.loop !483

._crit_edge54.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %.loopexit, label %.preheader46.us60.i, !llvm.loop !484

bb.bg:                                            ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.bd
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bh:                                            ; preds = %.lr.ph, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit ] ; 3 uses
  %i.rr = load ptr, ptr %i.nd, align 8, !tbaa !42
  %i.rs = getelementptr inbounds nuw [24 x i8], ptr %i.rr, i64 %indvars.iv ; 3 uses
  %i.rt = getelementptr inbounds nuw [24 x i8], ptr %i.na, i64 %indvars.iv ; 4 uses
  %i.ru = load ptr, ptr %i.rs, align 8, !tbaa !72 ; 8 uses
  %i.rv = ptrtoaddr ptr %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !46 ; 6 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !73 ; 6 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !46
  %.not.i.i.i.i.i.i.i.i115 = icmp eq i64 %i.sb, %i.rx
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rt, i64 16 ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.sd, %i.rz
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i115, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.se = icmp eq i64 %i.rx, 0
  %i.sf = icmp eq i64 %i.rz, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.se, %i.sf
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sg = sdiv i64 9223372036854775807, %i.rz
  %i.sh = icmp sgt i64 %i.rx, %i.sg
  br i1 %i.sh, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.bj
  %i.si = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.si, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.si, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %i.sj = mul nsw i64 %i.rz, %i.rx
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.rt, i64 noundef %i.sj, i64 noundef %i.rx, i64 noundef %i.rz)
          to label %.noexc123 unwind label %.loopexit249

.noexc123:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.sa, align 8, !tbaa !46
  %.pre20.i.i.i.i.i.i.i = load i64, ptr %i.sc, align 8, !tbaa !73
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc123, %bb.bh
  %i.sk = phi i64 [ %.pre20.i.i.i.i.i.i.i, %.noexc123 ], [ %i.rz, %bb.bh ]
  %i.sl = phi i64 [ %.pre.i.i.i.i.i.i.i, %.noexc123 ], [ %i.rx, %bb.bh ]
  %i.sm = load ptr, ptr %i.rt, align 8, !tbaa !72 ; 8 uses
  %i.sn = ptrtoaddr ptr %i.sm to i64
  %i.so = mul nsw i64 %i.sl, %i.sk                ; 7 uses
  %i.sp = sdiv i64 %i.so, 2
  %i.sq = shl nsw i64 %i.sp, 1                    ; 6 uses
  %i.sr = icmp sgt i64 %i.so, 1
  br i1 %i.sr, label %.lr.ph.i.i.i.i.i.i.i.i120, label %._crit_edge.i.i.i.i.i.i.i.i116

._crit_edge.i.i.i.i.i.i.i.i116:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i120, %bb.bk
  %i.ss = icmp slt i64 %i.sq, %i.so
  br i1 %i.ss, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i117.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i116
  %i.st = sub i64 %i.so, %i.sq                    ; 3 uses
  %min.iters.check356 = icmp ult i64 %i.st, 4
  %i.su = sub i64 %i.rv, %i.sn
  %diff.check354 = icmp ugt i64 %i.su, -32
  %or.cond415 = select i1 %min.iters.check356, i1 true, i1 %diff.check354
  br i1 %or.cond415, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader416, label %vector.ph357

vector.ph357:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader
  %n.vec358 = and i64 %i.st, -4                   ; 3 uses
  %i.sv = add i64 %i.sq, %n.vec358
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph357
  %index360 = phi i64 [ 0, %vector.ph357 ], [ %index.next363, %vector.body359 ] ; 2 uses
  %i.sw = add i64 %i.sq, %index360                ; 2 uses
  %i.sx = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.sw ; 2 uses
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.ru, i64 %i.sw ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %wide.load361 = load <2 x double>, ptr %i.sy, align 8, !tbaa !76
  %wide.load362 = load <2 x double>, ptr %i.sz, align 8, !tbaa !76
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  store <2 x double> %wide.load361, ptr %i.sx, align 8, !tbaa !76
  store <2 x double> %wide.load362, ptr %i.ta, align 8, !tbaa !76
  %index.next363 = add nuw i64 %index360, 4       ; 2 uses
  %i.tb = icmp eq i64 %index.next363, %n.vec358
  br i1 %i.tb, label %middle.block364, label %vector.body359, !llvm.loop !485

middle.block364:                                  ; preds = %vector.body359
  %cmp.n365 = icmp eq i64 %i.st, %n.vec358
  br i1 %cmp.n365, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader416

.lr.ph.i.i.i.i.i.i.i.i.i117.preheader416:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader, %middle.block364
  %.05.i.i.i.i.i.i.i.i.i118.ph = phi i64 [ %i.sq, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader ], [ %i.sv, %middle.block364 ] ; 4 uses
  %i.tc = sub i64 %i.so, %.05.i.i.i.i.i.i.i.i.i118.ph
  %xtraiter425 = and i64 %i.tc, 3                 ; 2 uses
  %lcmp.mod426.not = icmp eq i64 %xtraiter425, 0
  br i1 %lcmp.mod426.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol

.lr.ph.i.i.i.i.i.i.i.i.i117.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader416, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol
  %.05.i.i.i.i.i.i.i.i.i118.prol = phi i64 [ %i.tg, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ %.05.i.i.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader416 ] ; 3 uses
  %prol.iter427 = phi i64 [ %prol.iter427.next, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader416 ]
  %i.td = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %.05.i.i.i.i.i.i.i.i.i118.prol
  %i.te = getelementptr inbounds [8 x i8], ptr %i.ru, i64 %.05.i.i.i.i.i.i.i.i.i118.prol
  %i.tf = load double, ptr %i.te, align 8, !tbaa !76
  store double %i.tf, ptr %i.td, align 8, !tbaa !76
  %i.tg = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118.prol, 1 ; 2 uses
  %prol.iter427.next = add i64 %prol.iter427, 1   ; 2 uses
  %prol.iter427.cmp.not = icmp eq i64 %prol.iter427.next, %xtraiter425
  br i1 %prol.iter427.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol, !llvm.loop !486

.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader416
  %.05.i.i.i.i.i.i.i.i.i118.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader416 ], [ %i.tg, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ]
  %i.th = sub i64 %.05.i.i.i.i.i.i.i.i.i118.ph, %i.so
  %i.ti = icmp ugt i64 %i.th, -4
  br i1 %i.ti, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i117

.lr.ph.i.i.i.i.i.i.i.i.i117:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i117
  %.05.i.i.i.i.i.i.i.i.i118 = phi i64 [ %i.ty, %.lr.ph.i.i.i.i.i.i.i.i.i117 ], [ %.05.i.i.i.i.i.i.i.i.i118.unr, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit ] ; 6 uses
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %.05.i.i.i.i.i.i.i.i.i118
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.ru, i64 %.05.i.i.i.i.i.i.i.i.i118
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !76
  store double %i.tl, ptr %i.tj, align 8, !tbaa !76
  %i.tm = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118, 1 ; 2 uses
  %i.tn = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.tm
  %i.to = getelementptr inbounds [8 x i8], ptr %i.ru, i64 %i.tm
  %i.tp = load double, ptr %i.to, align 8, !tbaa !76
  store double %i.tp, ptr %i.tn, align 8, !tbaa !76
  %i.tq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118, 2 ; 2 uses
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.tq
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.ru, i64 %i.tq
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !76
  store double %i.tt, ptr %i.tr, align 8, !tbaa !76
  %i.tu = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118, 3 ; 2 uses
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.tu
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.ru, i64 %i.tu
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !76
  store double %i.tx, ptr %i.tv, align 8, !tbaa !76
  %i.ty = add nsw i64 %.05.i.i.i.i.i.i.i.i.i118, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i119.3 = icmp eq i64 %i.ty, %i.so
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i119.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i117, !llvm.loop !487

.lr.ph.i.i.i.i.i.i.i.i120:                        ; preds = %bb.bk, %.lr.ph.i.i.i.i.i.i.i.i120
  %.011.i.i.i.i.i.i.i.i121 = phi i64 [ %i.uc, %.lr.ph.i.i.i.i.i.i.i.i120 ], [ 0, %bb.bk ] ; 3 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %.011.i.i.i.i.i.i.i.i121
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %.011.i.i.i.i.i.i.i.i121
  %i.ub = load <2 x double>, ptr %i.ua, align 16, !tbaa !81
  store <2 x double> %i.ub, ptr %i.tz, align 16, !tbaa !81
  %i.uc = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i121, 2 ; 2 uses
  %i.ud = icmp slt i64 %i.uc, %i.sq
  br i1 %i.ud, label %.lr.ph.i.i.i.i.i.i.i.i120, label %._crit_edge.i.i.i.i.i.i.i.i116, !llvm.loop !0

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i117, %middle.block364, %._crit_edge.i.i.i.i.i.i.i.i116
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ue = load i32, ptr %i.jf, align 8, !tbaa !71 ; 2 uses
  %i.uf = sext i32 %i.ue to i64
  %i.ug = icmp slt i64 %indvars.iv.next, %i.uf
  br i1 %i.ug, label %bb.bh, label %._crit_edge, !llvm.loop !488

.loopexit249:                                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit:                                        ; preds = %._crit_edge54.split.us.us.i, %.noexc114, %.preheader46.lr.ph.i
  %i.uh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !42
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !46
  %i.ul = load i32, ptr %i.jf, align 8, !tbaa !71 ; 3 uses
  %i.um = sext i32 %i.ul to i64
  %i.un = sdiv i64 %i.uk, %i.um                   ; 4 uses
  %i.uo = trunc i64 %i.un to i32                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.up = load i64, ptr %i.kh, align 8, !tbaa !46 ; 6 uses
  %i.uq = mul nsw i32 %i.ul, %i.ul
  %i.ur = mul nsw i32 %i.uq, %i.uo                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.us = sext i32 %i.ur to i64                   ; 4 uses
  %i.ut = load ptr, ptr %i.jo, align 8, !tbaa !72, !noalias !510
  store ptr %i.ut, ptr %29, align 8, !tbaa !117, !alias.scope !510
  %i.uu = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.up, ptr %i.uu, align 8, !tbaa !118, !alias.scope !510
  %i.uv = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 %i.us, ptr %i.uv, align 8, !tbaa !118, !alias.scope !510
  %i.uw = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %i.jo, ptr %i.uw, align 8, !tbaa !99, !alias.scope !510
  %i.ux = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.uy = getelementptr inbounds nuw i8, ptr %29, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ux, i8 0, i64 16, i1 false)
  store i64 %i.up, ptr %i.uy, align 8, !tbaa !502, !alias.scope !510
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %i.uz = icmp eq i64 %i.up, 0
  %i.va = icmp eq i32 %i.ur, 0
  %or.cond.i.i.i.i = or i1 %i.va, %i.uz
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.loopexit
  %i.vb = sdiv i64 9223372036854775807, %i.us
  %i.vc = icmp sgt i64 %i.up, %i.vb
  br i1 %i.vc, label %.invoke316, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.bl, %.loopexit
  %i.vd = mul nsw i64 %i.up, %i.us                ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %28, i64 16
  %.not.i174 = icmp eq i64 %i.vd, 0
  br i1 %.not.i174, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.vg = icmp sgt i64 %i.vd, 0
  br i1 %i.vg, label %bb.bn, label %.sink.split.i175

bb.bn:                                            ; preds = %bb.bm
  %i.vh = icmp samesign ugt i64 %i.vd, 2305843009213693951
  br i1 %i.vh, label %.invoke316, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177: ; preds = %bb.bn
  %i.vi = shl nuw i64 %i.vd, 3
  %i.vj = call noalias ptr @malloc(i64 noundef %i.vi) #27 ; 2 uses
  %i.vk = icmp eq ptr %i.vj, null
  br i1 %i.vk, label %.invoke316, label %.sink.split.i175

.invoke316:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177, %bb.bn, %bb.bl
  %i.vl = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.vl, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.vl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont317 unwind label %.body124

.cont317:                                         ; preds = %.invoke316
  unreachable

.sink.split.i175:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177, %bb.bm
  %.sink.i176 = phi ptr [ %i.vj, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i177 ], [ null, %bb.bm ]
  store ptr %.sink.i176, ptr %28, align 8, !tbaa !72
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i175, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.up, ptr %i.ve, align 8, !tbaa !46
  store i64 %i.us, ptr %i.vf, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Lin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.bo unwind label %.body124

.body124:                                         ; preds = %.invoke316, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.vm = landingpad { ptr, i32 }
          cleanup
  %i.vn = load ptr, ptr %28, align 8, !tbaa !72
  call void @free(ptr noundef %i.vn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.bt

bb.bo:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.vo = load i32, ptr %i.jd, align 4, !tbaa !92 ; 5 uses
  %i.vp = load i32, ptr %i.jf, align 8, !tbaa !71 ; 9 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.vr = add i32 %i.vp, 1                        ; 2 uses
  %i.vs = mul nsw i32 %i.vr, %i.vo                ; 2 uses
  %i.vt = sext i32 %i.vs to i64                   ; 3 uses
  %i.vu = mul nsw i32 %i.vp, %i.uo                ; 2 uses
  %i.vv = sext i32 %i.vu to i64                   ; 3 uses
  %i.vw = icmp eq i32 %i.vs, 0
  %i.vx = icmp eq i32 %i.vu, 0
  %or.cond.i.i.i126 = or i1 %i.vx, %i.vw
  br i1 %or.cond.i.i.i126, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.vy = sdiv i64 9223372036854775807, %i.vv
  %i.vz = icmp slt i64 %i.vy, %i.vt
  br i1 %i.vz, label %bb.bq, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127

bb.bq:                                            ; preds = %bb.bp
  %i.wa = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.wa, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.wa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc133 unwind label %bb.bs

.noexc133:                                        ; preds = %bb.bq
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127: ; preds = %bb.bp, %bb.bo
  %i.wb = mul nsw i64 %i.vt, %i.vv
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, i64 noundef %i.wb, i64 noundef %i.vt, i64 noundef %i.vv)
          to label %.noexc134 unwind label %bb.bs

.noexc134:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127
  %.not78.i = icmp slt i32 %i.vp, 0
  br i1 %.not78.i, label %.noexc134._ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge, label %.preheader60.lr.ph.i

.noexc134._ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge: ; preds = %.noexc134
  %.pre257 = load ptr, ptr %28, align 8, !tbaa !72
  br label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit

.preheader60.lr.ph.i:                             ; preds = %.noexc134
  %i.wc = icmp slt i32 %i.vo, 1
  %i.wd = icmp slt i32 %i.uo, 1
  %.not92.i = icmp eq i32 %i.vp, 0
  %or.cond.i128 = or i1 %i.wc, %.not92.i
  %brmerge.i = or i1 %i.wd, %or.cond.i128
  %.pre258 = load ptr, ptr %28, align 8, !tbaa !72 ; 6 uses
  br i1 %brmerge.i, label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, label %.preheader60.lr.ph.split.us.split.us.split.us.i

.preheader60.lr.ph.split.us.split.us.split.us.i:  ; preds = %.preheader60.lr.ph.i
  %i.we = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.wf = load i64, ptr %i.ve, align 8, !tbaa !46 ; 10 uses
  %i.wg = load ptr, ptr %i.vq, align 8, !tbaa !72 ; 2 uses
  %i.wh = load i64, ptr %i.we, align 8, !tbaa !46 ; 4 uses
  %i.wi = and i64 %i.un, 2147483647               ; 8 uses
  %i.wj = zext nneg i32 %i.vo to i64              ; 3 uses
  %wide.trip.count113.i = zext i32 %i.vr to i64
  %wide.trip.count103.i = zext nneg i32 %i.vp to i64 ; 2 uses
  %factor.op.mul308 = mul i32 %i.vp, %i.vo        ; 2 uses
  %factor.op.mul306 = mul i32 %i.vp, %i.uo        ; 2 uses
  %i.wk = add nsw i64 %i.wi, -1                   ; 3 uses
  %i.wl = shl i64 %i.wf, 3                        ; 2 uses
  %i.wm = mul i64 %i.wf, -8
  %i.wn = zext i32 %factor.op.mul308 to i64
  %i.wo = shl i64 %i.wf, 3
  %i.wp = mul nuw nsw i64 %i.wi, %wide.trip.count103.i
  %i.wq = shl nuw nsw i64 %i.wj, 3
  %i.wr = mul i32 %i.vp, %i.vo
  %i.ws = zext i32 %i.wr to i64
  %i.wt = shl i64 %i.wf, 3
  %i.wu = mul i32 %i.vp, %i.uo
  %min.iters.check403 = icmp samesign ult i64 %i.wi, 24
  %ident.check384 = icmp ne i64 %i.wh, 1
  %i.wv = trunc nsw i64 %i.wk to i32
  %i.ww = icmp ugt i64 %i.wk, 4294967295
  %i.wx = icmp slt i64 %i.wl, 0                   ; 2 uses
  %i.wy = select i1 %i.wx, i64 %i.wm, i64 %i.wl
  %mul387 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.wy, i64 %i.wk) ; 2 uses
  %mul.result388 = extractvalue { i64, i1 } %mul387, 0 ; 2 uses
  %mul.overflow389 = extractvalue { i64, i1 } %mul387, 1
  %i.wz = sub i64 0, %mul.result388
  %invariant.op442 = or i1 %i.ww, %ident.check384
  %n.vec405 = and i64 %i.un, 2147483646           ; 3 uses
  %cmp.n410 = icmp eq i64 %i.wi, %n.vec405
  %xtraiter431 = and i64 %i.un, 1
  %lcmp.mod432.not = icmp eq i64 %xtraiter431, 0
  br label %.preheader60.us.us.us.i

.preheader60.us.us.us.i:                          ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.preheader60.lr.ph.split.us.split.us.split.us.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %._crit_edge.split.us.split.us.us.us.us.i ], [ 0, %.preheader60.lr.ph.split.us.split.us.split.us.i ] ; 6 uses
  %i.xa = mul i64 %i.wq, %indvars.iv110.i
  %i.xb = mul i64 %indvars.iv110.i, %i.ws
  %i.xc = mul i64 %indvars.iv110.i, %i.wn
  %i.xd = trunc nuw nsw i64 %indvars.iv110.i to i32
  %.reass309 = mul i32 %factor.op.mul308, %i.xd
  %i.xe = mul nuw nsw i64 %indvars.iv110.i, %i.wj
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.wg, i64 %i.xe
  %invariant.gep444 = getelementptr i8, ptr %i.wg, i64 %i.xa
  br label %.preheader59.us.us.us.us.us.i

.preheader59.us.us.us.us.us.i:                    ; preds = %._crit_edge67.split.us.us.us.us.us.us.i, %.preheader60.us.us.us.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %._crit_edge67.split.us.us.us.us.us.us.i ], [ 0, %.preheader60.us.us.us.i ] ; 6 uses
  %i.xf = add nuw i64 %i.wp, %indvars.iv105.i
  %i.xg = shl i64 %i.xf, 3
  %gep445 = getelementptr i8, ptr %invariant.gep444, i64 %i.xg
  %i.xh = add i64 %i.xb, %indvars.iv105.i
  %sext412 = shl i64 %i.xh, 32
  %i.xi = ashr exact i64 %sext412, 29             ; 2 uses
  %i.xj = add i64 %i.xc, %indvars.iv105.i
  %sext413 = shl i64 %i.xj, 32
  %i.xk = ashr exact i64 %sext413, 29
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv105.i ; 5 uses
  %i.xl = trunc nuw nsw i64 %indvars.iv105.i to i32
  %i.xm = add i32 %.reass309, %i.xl
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr [8 x i8], ptr %.pre258, i64 %i.xn ; 5 uses
  %scevgep385 = getelementptr i8, ptr %.pre258, i64 %i.xk
  %scevgep392 = getelementptr i8, ptr %.pre258, i64 %i.xi
  %scevgep394 = getelementptr i8, ptr %.pre258, i64 %i.xi
  br label %.preheader58.us.us.us.us.us.us.i

.preheader58.us.us.us.us.us.us.i:                 ; preds = %._crit_edge.us.us.us.us.us.us.i, %.preheader59.us.us.us.us.us.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %._crit_edge.us.us.us.us.us.us.i ], [ 0, %.preheader59.us.us.us.us.us.i ] ; 5 uses
  %i.xp = trunc i64 %indvars.iv100.i to i32
  %i.xq = mul i32 %i.wu, %i.xp
  %i.xr = sext i32 %i.xq to i64                   ; 2 uses
  %i.xs = mul i64 %i.wt, %i.xr
  %scevgep393 = getelementptr i8, ptr %scevgep392, i64 %i.xs ; 4 uses
  %i.xt = add nsw i64 %i.wi, %i.xr
  %i.xu = shl nsw i64 %i.xt, 3
  %i.xv = add nsw i64 %i.xu, -8
  %i.xw = mul i64 %i.wf, %i.xv
  %scevgep395 = getelementptr i8, ptr %scevgep394, i64 %i.xw ; 4 uses
  %i.xx = icmp ult ptr %scevgep393, %scevgep395
  %umin396 = select i1 %i.xx, ptr %scevgep393, ptr %scevgep395
  %i.xy = icmp ugt ptr %scevgep393, %scevgep395
  %umax397 = select i1 %i.xy, ptr %scevgep393, ptr %scevgep395
  %scevgep398 = getelementptr i8, ptr %umax397, i64 8
  %i.xz = trunc nuw nsw i64 %indvars.iv100.i to i32
  %.reass307 = mul i32 %factor.op.mul306, %i.xz   ; 7 uses
  %i.ya = mul nuw nsw i64 %indvars.iv100.i, %i.wi ; 4 uses
  br i1 %min.iters.check403, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.scevcheck383

vector.scevcheck383:                              ; preds = %.preheader58.us.us.us.us.us.us.i
  %i.yb = trunc i64 %indvars.iv100.i to i32
  %i.yc = mul i32 %factor.op.mul306, %i.yb
  %i.yd = sext i32 %i.yc to i64
  %i.ye = mul i64 %i.wo, %i.yd
  %scevgep386 = getelementptr i8, ptr %scevgep385, i64 %i.ye ; 4 uses
  %i.yf = add i32 %.reass307, %i.wv
  %i.yg = icmp slt i32 %i.yf, %.reass307
  %i.yh = getelementptr i8, ptr %scevgep386, i64 %mul.result388
  %i.yi = getelementptr i8, ptr %scevgep386, i64 %i.wz
  %i.yj = icmp ult ptr %i.yh, %scevgep386
  %i.yk = icmp ugt ptr %i.yi, %scevgep386
  %i.yl = select i1 %i.wx, i1 %i.yk, i1 %i.yj
  %i.ym = or i1 %i.yl, %mul.overflow389
  %.reass443 = or i1 %i.yg, %invariant.op442
  %i.yn = or i1 %.reass443, %i.ym
  br i1 %i.yn, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.memcheck390

vector.memcheck390:                               ; preds = %vector.scevcheck383
  %bound0399 = icmp ult ptr %gep.i, %scevgep398
  %bound1400 = icmp ult ptr %umin396, %gep445
  %found.conflict401 = and i1 %bound0399, %bound1400
  br i1 %found.conflict401, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %vector.memcheck390
  %invariant.gep440 = getelementptr [8 x i8], ptr %gep.i, i64 %i.ya
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph404
  %index407 = phi i64 [ 0, %vector.ph404 ], [ %index.next408, %vector.body406 ] ; 3 uses
  %i.yo = trunc i64 %index407 to i32              ; 2 uses
  %i.yp = or disjoint i32 %i.yo, 1
  %i.yq = add i32 %.reass307, %i.yo
  %i.yr = add i32 %.reass307, %i.yp
  %i.ys = sext i32 %i.yq to i64
  %i.yt = sext i32 %i.yr to i64
  %i.yu = mul nsw i64 %i.wf, %i.ys
  %i.yv = mul nsw i64 %i.wf, %i.yt
  %i.yw = getelementptr [8 x i8], ptr %i.xo, i64 %i.yu
  %i.yx = getelementptr [8 x i8], ptr %i.xo, i64 %i.yv
  %i.yy = load double, ptr %i.yw, align 8, !tbaa !76, !alias.scope !511
  %i.yz = load double, ptr %i.yx, align 8, !tbaa !76, !alias.scope !511
  %i.za = insertelement <2 x double> poison, double %i.yy, i64 0
  %i.zb = insertelement <2 x double> %i.za, double %i.yz, i64 1
  %i.zc = fptrunc <2 x double> %i.zb to <2 x float>
  %i.zd = fpext <2 x float> %i.zc to <2 x double>
  %gep441 = getelementptr [8 x i8], ptr %invariant.gep440, i64 %index407
  store <2 x double> %i.zd, ptr %gep441, align 8, !tbaa !76, !alias.scope !512, !noalias !511
  %index.next408 = add nuw i64 %index407, 2       ; 2 uses
  %i.ze = icmp eq i64 %index.next408, %n.vec405
  br i1 %i.ze, label %middle.block409, label %vector.body406, !llvm.loop !494

middle.block409:                                  ; preds = %vector.body406
  br i1 %cmp.n410, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i.preheader

.preheader.us.us.us.us.us.us.i.preheader:         ; preds = %vector.memcheck390, %vector.scevcheck383, %.preheader58.us.us.us.us.us.us.i, %middle.block409
  %indvars.iv.i130.ph = phi i64 [ 0, %vector.memcheck390 ], [ 0, %vector.scevcheck383 ], [ 0, %.preheader58.us.us.us.us.us.us.i ], [ %n.vec405, %middle.block409 ] ; 5 uses
  %.neg435 = or disjoint i64 %indvars.iv.i130.ph, 1
  br i1 %lcmp.mod432.not, label %.preheader.us.us.us.us.us.us.i.prol.loopexit, label %.preheader.us.us.us.us.us.us.i.prol

.preheader.us.us.us.us.us.us.i.prol:              ; preds = %.preheader.us.us.us.us.us.us.i.preheader
  %i.zf = trunc nuw nsw i64 %indvars.iv.i130.ph to i32
  %i.zg = add i32 %.reass307, %i.zf
  %i.zh = sext i32 %i.zg to i64
  %i.zi = mul nsw i64 %i.wf, %i.zh
  %i.zj = getelementptr [8 x i8], ptr %i.xo, i64 %i.zi
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !76
  %i.zl = fptrunc double %i.zk to float
  %i.zm = fpext float %i.zl to double
  %i.zn = add nuw nsw i64 %indvars.iv.i130.ph, %i.ya
  %i.zo = mul nsw i64 %i.zn, %i.wh
  %i.zp = getelementptr [8 x i8], ptr %gep.i, i64 %i.zo
  store double %i.zm, ptr %i.zp, align 8, !tbaa !76
  %indvars.iv.next.i131.prol = or disjoint i64 %indvars.iv.i130.ph, 1
  br label %.preheader.us.us.us.us.us.us.i.prol.loopexit

.preheader.us.us.us.us.us.us.i.prol.loopexit:     ; preds = %.preheader.us.us.us.us.us.us.i.prol, %.preheader.us.us.us.us.us.us.i.preheader
  %indvars.iv.i130.unr = phi i64 [ %indvars.iv.i130.ph, %.preheader.us.us.us.us.us.us.i.preheader ], [ %indvars.iv.next.i131.prol, %.preheader.us.us.us.us.us.us.i.prol ]
  %i.zq = icmp eq i64 %i.wi, %.neg435
  br i1 %i.zq, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.i:                   ; preds = %.preheader.us.us.us.us.us.us.i.prol.loopexit, %.preheader.us.us.us.us.us.us.i
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i131.1, %.preheader.us.us.us.us.us.us.i ], [ %indvars.iv.i130.unr, %.preheader.us.us.us.us.us.us.i.prol.loopexit ] ; 4 uses
  %i.zr = trunc nuw nsw i64 %indvars.iv.i130 to i32
  %i.zs = add i32 %.reass307, %i.zr
  %i.zt = sext i32 %i.zs to i64
  %i.zu = mul nsw i64 %i.wf, %i.zt
  %i.zv = getelementptr [8 x i8], ptr %i.xo, i64 %i.zu
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !76
  %i.zx = fptrunc double %i.zw to float
  %i.zy = fpext float %i.zx to double
  %i.zz = add nuw nsw i64 %indvars.iv.i130, %i.ya
  %i.aaa = mul nsw i64 %i.zz, %i.wh
  %i.aab = getelementptr [8 x i8], ptr %gep.i, i64 %i.aaa
  store double %i.zy, ptr %i.aab, align 8, !tbaa !76
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %i.aac = trunc nuw nsw i64 %indvars.iv.next.i131 to i32
  %i.aad = add i32 %.reass307, %i.aac
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = mul nsw i64 %i.wf, %i.aae
  %i.aag = getelementptr [8 x i8], ptr %i.xo, i64 %i.aaf
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !76
  %i.aai = fptrunc double %i.aah to float
  %i.aaj = fpext float %i.aai to double
  %i.aak = add nuw nsw i64 %indvars.iv.next.i131, %i.ya
  %i.aal = mul nsw i64 %i.aak, %i.wh
  %i.aam = getelementptr [8 x i8], ptr %gep.i, i64 %i.aal
  store double %i.aaj, ptr %i.aam, align 8, !tbaa !76
  %indvars.iv.next.i131.1 = add nuw nsw i64 %indvars.iv.i130, 2 ; 2 uses
  %exitcond.not.i132.1 = icmp eq i64 %indvars.iv.next.i131.1, %i.wi
  br i1 %exitcond.not.i132.1, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i, !llvm.loop !495

._crit_edge.us.us.us.us.us.us.i:                  ; preds = %.preheader.us.us.us.us.us.us.i.prol.loopexit, %.preheader.us.us.us.us.us.us.i, %middle.block409
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond104.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count103.i
  br i1 %exitcond104.not.i, label %._crit_edge67.split.us.us.us.us.us.us.i, label %.preheader58.us.us.us.us.us.us.i, !llvm.loop !496

._crit_edge67.split.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us.us.us.us.us.us.i
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %i.wj
  br i1 %exitcond109.not.i, label %._crit_edge.split.us.split.us.us.us.us.i, label %.preheader59.us.us.us.us.us.i, !llvm.loop !497

._crit_edge.split.us.split.us.us.us.us.i:         ; preds = %._crit_edge67.split.us.us.us.us.us.us.i
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %wide.trip.count113.i
  br i1 %exitcond114.not.i, label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, label %.preheader60.us.us.us.i, !llvm.loop !498

_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit: ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.noexc134._ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge, %.preheader60.lr.ph.i
  %i.aan = phi ptr [ %.pre257, %.noexc134._ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge ], [ %.pre258, %.preheader60.lr.ph.i ], [ %.pre258, %._crit_edge.split.us.split.us.us.us.us.i ]
  call void @free(ptr noundef %i.aan) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aap, %.lr.ph.i.i.i ], [ %i.na, %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit ] ; 2 uses
  %i.aao = load ptr, ptr %.05.i.i.i, align 8, !tbaa !72
  call void @free(ptr noundef %i.aao) #25
  %i.aap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aap, %i.nb
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %.idx) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.aaq = load ptr, ptr %24, align 8, !tbaa !72
  call void @free(ptr noundef %i.aaq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.aar = load ptr, ptr %23, align 8, !tbaa !72
  call void @free(ptr noundef %i.aar) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.aas = load ptr, ptr %22, align 8, !tbaa !72
  call void @free(ptr noundef %i.aas) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.aat = load ptr, ptr %18, align 8, !tbaa !72
  call void @free(ptr noundef %i.aat) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  ret i1 true

bb.br:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.bf
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bs:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i127, %bb.bq
  %i.aav = landingpad { ptr, i32 }
          cleanup
  %i.aaw = load ptr, ptr %28, align 8, !tbaa !72
  call void @free(ptr noundef %i.aaw) #25
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.body124
  %.pn88 = phi { ptr, i32 } [ %i.aav, %bb.bs ], [ %i.vm, %.body124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit249, %.loopexit.split-lp, %bb.br, %bb.bt, %bb.bg
  %.pn91 = phi { ptr, i32 } [ %i.aau, %bb.br ], [ %i.rq, %bb.bg ], [ %.pn88, %bb.bt ], [ %lpad.loopexit, %.loopexit249 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.bv

bb.bv:                                            ; preds = %bb.ax, %bb.az, %.body167, %bb.bb, %bb.bu, %bb.ay, %bb.aw
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mo, %bb.aw ], [ %i.mp, %bb.ax ], [ %i.mq, %bb.ay ], [ %.pn91, %bb.bu ], [ %i.mt, %bb.bb ], [ %.pn86, %.body167 ], [ %i.mr, %bb.az ]
  %i.aax = load ptr, ptr %24, align 8, !tbaa !72
  call void @free(ptr noundef %i.aax) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.bv
  %.pn91.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn, %bb.bv ], [ %i.ix, %bb.ai ]
  %i.aay = load ptr, ptr %23, align 8, !tbaa !72
  call void @free(ptr noundef %i.aay) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.aaz = load ptr, ptr %22, align 8, !tbaa !72
  call void @free(ptr noundef %i.aaz) #25
  br label %bb.bw

bb.bw:                                            ; preds = %.body, %bb.av
  %.pn91.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn, %.body ], [ %i.mn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ae, %bb.aa
end_hunk_0
begin_hunk_1_@_ZN3igl22arap_dof_recomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEfEEbRKNS2_IiLin1ELi1ELi0ELin1ELi1EEERKNS1_12SparseMatrixIdLi0EiEERNS_11ArapDOFDataIT_T0_EE:bb.a
  %i.sa = insertelement <4 x float> %i.rz, float %i.rw, i64 3
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index463
  store <4 x float> %i.sa, ptr %gep, align 4, !tbaa !172, !alias.scope !727, !noalias !726
  %index.next464 = add nuw i64 %index463, 4       ; 2 uses
  %i.sb = icmp eq i64 %index.next464, %n.vec461
  br i1 %i.sb, label %middle.block465, label %vector.body462, !llvm.loop !702

middle.block465:                                  ; preds = %vector.body462
  br i1 %cmp.n466, label %._crit_edge.us.us.i, label %.preheader.us.us.i.preheader

.preheader.us.us.i.preheader:                     ; preds = %vector.memcheck453, %vector.scevcheck, %.preheader45.us.us.i, %middle.block465
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck453 ], [ 0, %vector.scevcheck ], [ 0, %.preheader45.us.us.i ], [ %n.vec461, %middle.block465 ] ; 5 uses
  br i1 %lcmp.mod510.not, label %.preheader.us.us.i.prol.loopexit, label %.preheader.us.us.i.prol

.preheader.us.us.i.prol:                          ; preds = %.preheader.us.us.i.preheader
  %i.sc = trunc nuw nsw i64 %indvars.iv.i.ph to i32
  %i.sd = add i32 %.reass, %i.sc
  %i.se = sext i32 %i.sd to i64
  %i.sf = mul nsw i64 %i.pi, %i.se
  %i.sg = getelementptr [4 x i8], ptr %i.pz, i64 %i.sf
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !172
  %i.si = add nuw nsw i64 %indvars.iv.i.ph, %i.ql
  %i.sj = mul nsw i64 %i.si, %i.pf
  %i.sk = getelementptr [4 x i8], ptr %i.py, i64 %i.sj
  store float %i.sh, ptr %i.sk, align 4, !tbaa !172
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.us.i.prol.loopexit

.preheader.us.us.i.prol.loopexit:                 ; preds = %.preheader.us.us.i.prol, %.preheader.us.us.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.us.i.preheader ], [ %indvars.iv.next.i.prol, %.preheader.us.us.i.prol ]
  %i.sl = icmp eq i64 %indvars.iv.i.ph, %i.pv
  br i1 %i.sl, label %._crit_edge.us.us.i, label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.prol.loopexit, %.preheader.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.us.i ], [ %indvars.iv.i.unr, %.preheader.us.us.i.prol.loopexit ] ; 4 uses
  %i.sm = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.sn = add i32 %.reass, %i.sm
  %i.so = sext i32 %i.sn to i64
  %i.sp = mul nsw i64 %i.pi, %i.so
  %i.sq = getelementptr [4 x i8], ptr %i.pz, i64 %i.sp
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !172
  %i.ss = add nuw nsw i64 %indvars.iv.i, %i.ql
  %i.st = mul nsw i64 %i.ss, %i.pf
  %i.su = getelementptr [4 x i8], ptr %i.py, i64 %i.st
  store float %i.sr, ptr %i.su, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.sv = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.sw = add i32 %.reass, %i.sv
  %i.sx = sext i32 %i.sw to i64
  %i.sy = mul nsw i64 %i.pi, %i.sx
  %i.sz = getelementptr [4 x i8], ptr %i.pz, i64 %i.sy
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !172
  %i.tb = add nuw nsw i64 %indvars.iv.next.i, %i.ql
  %i.tc = mul nsw i64 %i.tb, %i.pf
  %i.td = getelementptr [4 x i8], ptr %i.py, i64 %i.tc
  store float %i.ta, ptr %i.td, align 4, !tbaa !172
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.pg
  br i1 %exitcond.not.i.1, label %._crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !703

._crit_edge.us.us.i:                              ; preds = %.preheader.us.us.i.prol.loopexit, %.preheader.us.us.i, %middle.block465
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count74.i
  br i1 %exitcond75.not.i, label %._crit_edge54.split.us.us.i, label %.preheader45.us.us.i, !llvm.loop !704

._crit_edge54.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %.loopexit, label %.preheader46.us60.i, !llvm.loop !705

bb.bf:                                            ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.bc
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bg:                                            ; preds = %.lr.ph, %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.tf = load ptr, ptr %i.ol, align 8, !tbaa !42
  %i.tg = getelementptr inbounds nuw [24 x i8], ptr %i.tf, i64 %indvars.iv ; 3 uses
  %i.th = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %indvars.iv ; 4 uses
  %i.ti = load ptr, ptr %i.tg, align 8, !tbaa !72 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !46 ; 6 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !73 ; 6 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.th, i64 8 ; 2 uses
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !166
  %.not.i.i.i.i.i.i.i.i121 = icmp eq i64 %i.to, %i.tk
  %i.tp = getelementptr inbounds nuw i8, ptr %i.th, i64 16 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8
  %.not8.i.i.i.i.i.i.i.i122 = icmp eq i64 %i.tq, %i.tm
  %or.cond.i.i.i.i.i.i.i.i123 = select i1 %.not.i.i.i.i.i.i.i.i121, i1 %.not8.i.i.i.i.i.i.i.i122, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i123, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tr = icmp eq i64 %i.tk, 0
  %i.ts = icmp eq i64 %i.tm, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i124 = or i1 %i.tr, %i.ts
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i124, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.tt = sdiv i64 9223372036854775807, %i.tm
  %i.tu = icmp sgt i64 %i.tk, %i.tt
  br i1 %i.tu, label %.noexc.i.i.i.i.i.i.i129, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125

.noexc.i.i.i.i.i.i.i129:                          ; preds = %bb.bi
  %i.tv = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.tv, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.tv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc130 unwind label %.loopexit.split-lp

.noexc130:                                        ; preds = %.noexc.i.i.i.i.i.i.i129
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125: ; preds = %bb.bi, %bb.bh
  %i.tw = mul nsw i64 %i.tm, %i.tk
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.th, i64 noundef %i.tw, i64 noundef %i.tk, i64 noundef %i.tm)
          to label %.noexc131 unwind label %.loopexit293

.noexc131:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125
  %.pre.i.i.i.i.i.i.i126 = load i64, ptr %i.tn, align 8, !tbaa !166
  %.pre15.i.i.i.i.i.i.i = load i64, ptr %i.tp, align 8, !tbaa !167
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc131, %bb.bg
  %i.tx = phi i64 [ %.pre15.i.i.i.i.i.i.i, %.noexc131 ], [ %i.tm, %bb.bg ]
  %i.ty = phi i64 [ %.pre.i.i.i.i.i.i.i126, %.noexc131 ], [ %i.tk, %bb.bg ]
  %i.tz = load ptr, ptr %i.th, align 8, !tbaa !165 ; 2 uses
  %i.ua = mul nsw i64 %i.ty, %i.tx                ; 5 uses
  %i.ub = icmp sgt i64 %i.ua, 0
  br i1 %i.ub, label %.lr.ph.i.i.i.i.i.i.i.i127.preheader, label %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i127.preheader:              ; preds = %bb.bj
  %min.iters.check441 = icmp ult i64 %i.ua, 4
  br i1 %min.iters.check441, label %.lr.ph.i.i.i.i.i.i.i.i127.preheader500, label %vector.ph442

vector.ph442:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i127.preheader
  %n.vec443 = and i64 %i.ua, 9223372036854775804  ; 3 uses
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph442
  %index445 = phi i64 [ 0, %vector.ph442 ], [ %index.next448, %vector.body444 ] ; 3 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %index445 ; 2 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %index445 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %wide.load446 = load <2 x double>, ptr %i.ud, align 8, !tbaa !76
  %wide.load447 = load <2 x double>, ptr %i.ue, align 8, !tbaa !76
  %i.uf = fptrunc <2 x double> %wide.load446 to <2 x float>
  %i.ug = fptrunc <2 x double> %wide.load447 to <2 x float>
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store <2 x float> %i.uf, ptr %i.uc, align 4, !tbaa !172
  store <2 x float> %i.ug, ptr %i.uh, align 4, !tbaa !172
  %index.next448 = add nuw i64 %index445, 4       ; 2 uses
  %i.ui = icmp eq i64 %index.next448, %n.vec443
  br i1 %i.ui, label %middle.block449, label %vector.body444, !llvm.loop !706

middle.block449:                                  ; preds = %vector.body444
  %cmp.n450 = icmp eq i64 %i.ua, %n.vec443
  br i1 %cmp.n450, label %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i127.preheader500

.lr.ph.i.i.i.i.i.i.i.i127.preheader500:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i127.preheader, %middle.block449
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i127.preheader ], [ %n.vec443, %middle.block449 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i127

.lr.ph.i.i.i.i.i.i.i.i127:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i127.preheader500, %.lr.ph.i.i.i.i.i.i.i.i127
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.un, %.lr.ph.i.i.i.i.i.i.i.i127 ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i127.preheader500 ] ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %.05.i.i.i.i.i.i.i.i
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %.05.i.i.i.i.i.i.i.i
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !76
  %i.um = fptrunc double %i.ul to float
  store float %i.um, ptr %i.uj, align 4, !tbaa !172
  %i.un = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i128 = icmp eq i64 %i.un, %i.ua
  br i1 %exitcond.not.i.i.i.i.i.i.i.i128, label %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i127, !llvm.loop !707

_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i127, %middle.block449, %bb.bj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.uo = load i32, ptr %i.jf, align 8, !tbaa !164 ; 2 uses
  %i.up = sext i32 %i.uo to i64
  %i.uq = icmp slt i64 %indvars.iv.next, %i.up
  br i1 %i.uq, label %bb.bg, label %._crit_edge, !llvm.loop !708

.loopexit293:                                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i125
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i.i.i129
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit:                                        ; preds = %._crit_edge54.split.us.us.i, %.noexc120, %.preheader46.lr.ph.i
  %i.ur = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !42
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !46
  %i.uv = load i32, ptr %i.jf, align 8, !tbaa !164 ; 3 uses
  %i.uw = sext i32 %i.uv to i64
  %i.ux = sdiv i64 %i.uu, %i.uw                   ; 4 uses
  %i.uy = trunc i64 %i.ux to i32                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.uz = load i64, ptr %i.kh, align 8, !tbaa !166 ; 6 uses
  %i.va = mul nsw i32 %i.uv, %i.uv
  %i.vb = mul nsw i32 %i.va, %i.uy                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.vc = sext i32 %i.vb to i64                   ; 4 uses
  %i.vd = load ptr, ptr %i.jo, align 8, !tbaa !165, !noalias !728
  store ptr %i.vd, ptr %16, align 8, !tbaa !193, !alias.scope !728
  %i.ve = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.uz, ptr %i.ve, align 8, !tbaa !118, !alias.scope !728
  %i.vf = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.vc, ptr %i.vf, align 8, !tbaa !118, !alias.scope !728
  %i.vg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.jo, ptr %i.vg, align 8, !tbaa !182, !alias.scope !728
  %i.vh = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.vi = getelementptr inbounds nuw i8, ptr %16, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vh, i8 0, i64 16, i1 false)
  store i64 %i.uz, ptr %i.vi, align 8, !tbaa !729, !alias.scope !728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.vj = icmp eq i64 %i.uz, 0
  %i.vk = icmp eq i32 %i.vb, 0
  %or.cond.i.i.i.i = or i1 %i.vk, %i.vj
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  %i.vl = sdiv i64 9223372036854775807, %i.vc
  %i.vm = icmp sgt i64 %i.uz, %i.vl
  br i1 %i.vm, label %.invoke367, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.bk, %.loopexit
  %i.vn = mul nsw i64 %i.uz, %i.vc                ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.not.i180 = icmp eq i64 %i.vn, 0
  br i1 %.not.i180, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.vq = icmp sgt i64 %i.vn, 0
  br i1 %i.vq, label %bb.bm, label %.sink.split.i181

bb.bm:                                            ; preds = %bb.bl
  %i.vr = icmp samesign ugt i64 %i.vn, 4611686018427387903
  br i1 %i.vr, label %.invoke367, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.bm
  %i.vs = shl nuw i64 %i.vn, 2
  %i.vt = call noalias ptr @malloc(i64 noundef %i.vs) #27 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, null
  br i1 %i.vu, label %.invoke367, label %.sink.split.i181

.invoke367:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.bm, %bb.bk
  %i.vv = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.vv, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.vv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont368 unwind label %.body132

.cont368:                                         ; preds = %.invoke367
  unreachable

.sink.split.i181:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.bl
  %.sink.i182 = phi ptr [ %i.vt, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.bl ]
  store ptr %.sink.i182, ptr %15, align 8, !tbaa !165
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i181, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.uz, ptr %i.vo, align 8, !tbaa !166
  store i64 %i.vc, ptr %i.vp, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Lin1ELin1ELb0EEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.bn unwind label %.body132

.body132:                                         ; preds = %.invoke367, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.vw = landingpad { ptr, i32 }
          cleanup
  %i.vx = load ptr, ptr %15, align 8, !tbaa !165
  call void @free(ptr noundef %i.vx) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.bs

bb.bn:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Lin1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.vy = load i32, ptr %i.jd, align 4, !tbaa !174 ; 5 uses
  %i.vz = load i32, ptr %i.jf, align 8, !tbaa !164 ; 9 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.wb = add i32 %i.vz, 1                        ; 2 uses
  %i.wc = mul nsw i32 %i.wb, %i.vy                ; 2 uses
  %i.wd = sext i32 %i.wc to i64                   ; 3 uses
  %i.we = mul nsw i32 %i.vz, %i.uy                ; 2 uses
  %i.wf = sext i32 %i.we to i64                   ; 3 uses
  %i.wg = icmp eq i32 %i.wc, 0
  %i.wh = icmp eq i32 %i.we, 0
  %or.cond.i.i.i134 = or i1 %i.wh, %i.wg
  br i1 %or.cond.i.i.i134, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.wi = sdiv i64 9223372036854775807, %i.wf
  %i.wj = icmp slt i64 %i.wi, %i.wd
  br i1 %i.wj, label %bb.bp, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135

bb.bp:                                            ; preds = %bb.bo
  %i.wk = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.wk, align 8, !tbaa !75
  invoke void @__cxa_throw(ptr nonnull %i.wk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc141 unwind label %bb.br

.noexc141:                                        ; preds = %bb.bp
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135: ; preds = %bb.bo, %bb.bn
  %i.wl = mul nsw i64 %i.wd, %i.wf
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.wa, i64 noundef %i.wl, i64 noundef %i.wd, i64 noundef %i.wf)
          to label %.noexc142 unwind label %bb.br

.noexc142:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135
  %.not78.i = icmp slt i32 %i.vz, 0
  br i1 %.not78.i, label %.noexc142._ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge, label %.preheader60.lr.ph.i

.noexc142._ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge: ; preds = %.noexc142
  %.pre301 = load ptr, ptr %15, align 8, !tbaa !165
  br label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit

.preheader60.lr.ph.i:                             ; preds = %.noexc142
  %i.wm = icmp slt i32 %i.vy, 1
  %i.wn = icmp slt i32 %i.uy, 1
  %.not92.i = icmp eq i32 %i.vz, 0
  %or.cond.i136 = or i1 %i.wm, %.not92.i
  %brmerge.i = or i1 %i.wn, %or.cond.i136
  %.pre302 = load ptr, ptr %15, align 8, !tbaa !165 ; 6 uses
  br i1 %brmerge.i, label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, label %.preheader60.lr.ph.split.us.split.us.split.us.i

.preheader60.lr.ph.split.us.split.us.split.us.i:  ; preds = %.preheader60.lr.ph.i
  %i.wo = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.wp = load i64, ptr %i.vo, align 8, !tbaa !166 ; 12 uses
  %i.wq = load ptr, ptr %i.wa, align 8, !tbaa !165 ; 2 uses
  %i.wr = load i64, ptr %i.wo, align 8, !tbaa !166 ; 4 uses
  %i.ws = and i64 %i.ux, 2147483647               ; 8 uses
  %i.wt = zext nneg i32 %i.vy to i64              ; 3 uses
  %wide.trip.count113.i = zext i32 %i.wb to i64
  %wide.trip.count103.i = zext nneg i32 %i.vz to i64 ; 2 uses
  %factor.op.mul359 = mul i32 %i.vz, %i.vy        ; 2 uses
  %factor.op.mul357 = mul i32 %i.vz, %i.uy        ; 2 uses
  %i.wu = add nsw i64 %i.ws, -1                   ; 3 uses
  %i.wv = shl i64 %i.wp, 2                        ; 2 uses
  %i.ww = mul i64 %i.wp, -4
  %i.wx = zext i32 %factor.op.mul359 to i64
  %i.wy = shl i64 %i.wp, 2
  %i.wz = mul nuw nsw i64 %i.ws, %wide.trip.count103.i
  %i.xa = shl nuw nsw i64 %i.wt, 2
  %i.xb = mul i32 %i.vz, %i.vy
  %i.xc = zext i32 %i.xb to i64
  %i.xd = shl i64 %i.wp, 2
  %i.xe = mul i32 %i.vz, %i.uy
  %min.iters.check488 = icmp samesign ult i64 %i.ws, 28
  %ident.check469 = icmp ne i64 %i.wr, 1
  %i.xf = trunc nsw i64 %i.wu to i32
  %i.xg = icmp ugt i64 %i.wu, 4294967295
  %i.xh = icmp slt i64 %i.wv, 0                   ; 2 uses
  %i.xi = select i1 %i.xh, i64 %i.ww, i64 %i.wv
  %mul472 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.xi, i64 %i.wu) ; 2 uses
  %mul.result473 = extractvalue { i64, i1 } %mul472, 0 ; 2 uses
  %mul.overflow474 = extractvalue { i64, i1 } %mul472, 1
  %i.xj = sub i64 0, %mul.result473
  %invariant.op522 = or i1 %i.xg, %ident.check469
  %n.vec490 = and i64 %i.ux, 2147483644           ; 3 uses
  %cmp.n495 = icmp eq i64 %i.ws, %n.vec490
  %xtraiter512 = and i64 %i.ux, 1
  %lcmp.mod513.not = icmp eq i64 %xtraiter512, 0
  br label %.preheader60.us.us.us.i

.preheader60.us.us.us.i:                          ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.preheader60.lr.ph.split.us.split.us.split.us.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %._crit_edge.split.us.split.us.us.us.us.i ], [ 0, %.preheader60.lr.ph.split.us.split.us.split.us.i ] ; 6 uses
  %i.xk = mul i64 %i.xa, %indvars.iv110.i
  %i.xl = mul i64 %indvars.iv110.i, %i.xc
  %i.xm = mul i64 %indvars.iv110.i, %i.wx
  %i.xn = trunc nuw nsw i64 %indvars.iv110.i to i32
  %.reass360 = mul i32 %factor.op.mul359, %i.xn
  %i.xo = mul nuw nsw i64 %indvars.iv110.i, %i.wt
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.wq, i64 %i.xo
  %invariant.gep524 = getelementptr i8, ptr %i.wq, i64 %i.xk
  br label %.preheader59.us.us.us.us.us.i

.preheader59.us.us.us.us.us.i:                    ; preds = %._crit_edge67.split.us.us.us.us.us.us.i, %.preheader60.us.us.us.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %._crit_edge67.split.us.us.us.us.us.us.i ], [ 0, %.preheader60.us.us.us.i ] ; 6 uses
  %i.xp = add nuw i64 %i.wz, %indvars.iv105.i
  %i.xq = shl i64 %i.xp, 2
  %gep525 = getelementptr i8, ptr %invariant.gep524, i64 %i.xq
  %i.xr = add i64 %i.xl, %indvars.iv105.i
  %sext497 = shl i64 %i.xr, 32
  %i.xs = ashr exact i64 %sext497, 30             ; 2 uses
  %i.xt = add i64 %i.xm, %indvars.iv105.i
  %sext498 = shl i64 %i.xt, 32
  %i.xu = ashr exact i64 %sext498, 30
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv105.i ; 5 uses
  %i.xv = trunc nuw nsw i64 %indvars.iv105.i to i32
  %i.xw = add i32 %.reass360, %i.xv
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr [4 x i8], ptr %.pre302, i64 %i.xx ; 7 uses
  %scevgep470 = getelementptr i8, ptr %.pre302, i64 %i.xu
  %scevgep477 = getelementptr i8, ptr %.pre302, i64 %i.xs
  %scevgep479 = getelementptr i8, ptr %.pre302, i64 %i.xs
  br label %.preheader58.us.us.us.us.us.us.i

.preheader58.us.us.us.us.us.us.i:                 ; preds = %._crit_edge.us.us.us.us.us.us.i, %.preheader59.us.us.us.us.us.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %._crit_edge.us.us.us.us.us.us.i ], [ 0, %.preheader59.us.us.us.us.us.i ] ; 5 uses
  %i.xz = trunc i64 %indvars.iv100.i to i32
  %i.ya = mul i32 %i.xe, %i.xz
  %i.yb = sext i32 %i.ya to i64                   ; 2 uses
  %i.yc = mul i64 %i.xd, %i.yb
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.yc ; 4 uses
  %i.yd = add nsw i64 %i.ws, %i.yb
  %i.ye = shl nsw i64 %i.yd, 2
  %i.yf = add nsw i64 %i.ye, -4
  %i.yg = mul i64 %i.wp, %i.yf
  %scevgep480 = getelementptr i8, ptr %scevgep479, i64 %i.yg ; 4 uses
  %i.yh = icmp ult ptr %scevgep478, %scevgep480
  %umin481 = select i1 %i.yh, ptr %scevgep478, ptr %scevgep480
  %i.yi = icmp ugt ptr %scevgep478, %scevgep480
  %umax482 = select i1 %i.yi, ptr %scevgep478, ptr %scevgep480
  %scevgep483 = getelementptr i8, ptr %umax482, i64 4
  %i.yj = trunc nuw nsw i64 %indvars.iv100.i to i32
  %.reass358 = mul i32 %factor.op.mul357, %i.yj   ; 9 uses
  %i.yk = mul nuw nsw i64 %indvars.iv100.i, %i.ws ; 4 uses
  br i1 %min.iters.check488, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.scevcheck468

vector.scevcheck468:                              ; preds = %.preheader58.us.us.us.us.us.us.i
  %i.yl = trunc i64 %indvars.iv100.i to i32
  %i.ym = mul i32 %factor.op.mul357, %i.yl
  %i.yn = sext i32 %i.ym to i64
  %i.yo = mul i64 %i.wy, %i.yn
  %scevgep471 = getelementptr i8, ptr %scevgep470, i64 %i.yo ; 4 uses
  %i.yp = add i32 %.reass358, %i.xf
  %i.yq = icmp slt i32 %i.yp, %.reass358
  %i.yr = getelementptr i8, ptr %scevgep471, i64 %mul.result473
  %i.ys = getelementptr i8, ptr %scevgep471, i64 %i.xj
  %i.yt = icmp ult ptr %i.yr, %scevgep471
  %i.yu = icmp ugt ptr %i.ys, %scevgep471
  %i.yv = select i1 %i.xh, i1 %i.yu, i1 %i.yt
  %i.yw = or i1 %i.yv, %mul.overflow474
  %.reass523 = or i1 %i.yq, %invariant.op522
  %i.yx = or i1 %.reass523, %i.yw
  br i1 %i.yx, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.memcheck475

vector.memcheck475:                               ; preds = %vector.scevcheck468
  %bound0484 = icmp ult ptr %gep.i, %scevgep483
  %bound1485 = icmp ult ptr %umin481, %gep525
  %found.conflict486 = and i1 %bound0484, %bound1485
  br i1 %found.conflict486, label %.preheader.us.us.us.us.us.us.i.preheader, label %vector.ph489

vector.ph489:                                     ; preds = %vector.memcheck475
  %invariant.gep520 = getelementptr [4 x i8], ptr %gep.i, i64 %i.yk
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next493, %vector.body491 ] ; 3 uses
  %i.yy = trunc i64 %index492 to i32              ; 4 uses
  %i.yz = or disjoint i32 %i.yy, 1
  %i.za = or disjoint i32 %i.yy, 2
  %i.zb = or disjoint i32 %i.yy, 3
  %i.zc = add i32 %.reass358, %i.yy
  %i.zd = add i32 %.reass358, %i.yz
  %i.ze = add i32 %.reass358, %i.za
  %i.zf = add i32 %.reass358, %i.zb
  %i.zg = sext i32 %i.zc to i64
  %i.zh = sext i32 %i.zd to i64
  %i.zi = sext i32 %i.ze to i64
  %i.zj = sext i32 %i.zf to i64
  %i.zk = mul nsw i64 %i.wp, %i.zg
  %i.zl = mul nsw i64 %i.wp, %i.zh
  %i.zm = mul nsw i64 %i.wp, %i.zi
  %i.zn = mul nsw i64 %i.wp, %i.zj
  %i.zo = getelementptr [4 x i8], ptr %i.xy, i64 %i.zk
  %i.zp = getelementptr [4 x i8], ptr %i.xy, i64 %i.zl
  %i.zq = getelementptr [4 x i8], ptr %i.xy, i64 %i.zm
  %i.zr = getelementptr [4 x i8], ptr %i.xy, i64 %i.zn
  %i.zs = load float, ptr %i.zo, align 4, !tbaa !172, !alias.scope !730
  %i.zt = load float, ptr %i.zp, align 4, !tbaa !172, !alias.scope !730
  %i.zu = load float, ptr %i.zq, align 4, !tbaa !172, !alias.scope !730
  %i.zv = load float, ptr %i.zr, align 4, !tbaa !172, !alias.scope !730
  %i.zw = insertelement <4 x float> poison, float %i.zs, i64 0
  %i.zx = insertelement <4 x float> %i.zw, float %i.zt, i64 1
  %i.zy = insertelement <4 x float> %i.zx, float %i.zu, i64 2
  %i.zz = insertelement <4 x float> %i.zy, float %i.zv, i64 3
  %gep521 = getelementptr [4 x i8], ptr %invariant.gep520, i64 %index492
  store <4 x float> %i.zz, ptr %gep521, align 4, !tbaa !172, !alias.scope !731, !noalias !730
  %index.next493 = add nuw i64 %index492, 4       ; 2 uses
  %i.aaa = icmp eq i64 %index.next493, %n.vec490
  br i1 %i.aaa, label %middle.block494, label %vector.body491, !llvm.loop !714

middle.block494:                                  ; preds = %vector.body491
  br i1 %cmp.n495, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i.preheader

.preheader.us.us.us.us.us.us.i.preheader:         ; preds = %vector.memcheck475, %vector.scevcheck468, %.preheader58.us.us.us.us.us.us.i, %middle.block494
  %indvars.iv.i138.ph = phi i64 [ 0, %vector.memcheck475 ], [ 0, %vector.scevcheck468 ], [ 0, %.preheader58.us.us.us.us.us.us.i ], [ %n.vec490, %middle.block494 ] ; 5 uses
  %.neg516 = or disjoint i64 %indvars.iv.i138.ph, 1
  br i1 %lcmp.mod513.not, label %.preheader.us.us.us.us.us.us.i.prol.loopexit, label %.preheader.us.us.us.us.us.us.i.prol

.preheader.us.us.us.us.us.us.i.prol:              ; preds = %.preheader.us.us.us.us.us.us.i.preheader
  %i.aab = trunc nuw nsw i64 %indvars.iv.i138.ph to i32
  %i.aac = add i32 %.reass358, %i.aab
  %i.aad = sext i32 %i.aac to i64
  %i.aae = mul nsw i64 %i.wp, %i.aad
  %i.aaf = getelementptr [4 x i8], ptr %i.xy, i64 %i.aae
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !172
  %i.aah = add nuw nsw i64 %indvars.iv.i138.ph, %i.yk
  %i.aai = mul nsw i64 %i.aah, %i.wr
  %i.aaj = getelementptr [4 x i8], ptr %gep.i, i64 %i.aai
  store float %i.aag, ptr %i.aaj, align 4, !tbaa !172
  %indvars.iv.next.i139.prol = or disjoint i64 %indvars.iv.i138.ph, 1
  br label %.preheader.us.us.us.us.us.us.i.prol.loopexit

.preheader.us.us.us.us.us.us.i.prol.loopexit:     ; preds = %.preheader.us.us.us.us.us.us.i.prol, %.preheader.us.us.us.us.us.us.i.preheader
  %indvars.iv.i138.unr = phi i64 [ %indvars.iv.i138.ph, %.preheader.us.us.us.us.us.us.i.preheader ], [ %indvars.iv.next.i139.prol, %.preheader.us.us.us.us.us.us.i.prol ]
  %i.aak = icmp eq i64 %i.ws, %.neg516
  br i1 %i.aak, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.i:                   ; preds = %.preheader.us.us.us.us.us.us.i.prol.loopexit, %.preheader.us.us.us.us.us.us.i
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139.1, %.preheader.us.us.us.us.us.us.i ], [ %indvars.iv.i138.unr, %.preheader.us.us.us.us.us.us.i.prol.loopexit ] ; 4 uses
  %i.aal = trunc nuw nsw i64 %indvars.iv.i138 to i32
  %i.aam = add i32 %.reass358, %i.aal
  %i.aan = sext i32 %i.aam to i64
  %i.aao = mul nsw i64 %i.wp, %i.aan
  %i.aap = getelementptr [4 x i8], ptr %i.xy, i64 %i.aao
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !172
  %i.aar = add nuw nsw i64 %indvars.iv.i138, %i.yk
  %i.aas = mul nsw i64 %i.aar, %i.wr
  %i.aat = getelementptr [4 x i8], ptr %gep.i, i64 %i.aas
  store float %i.aaq, ptr %i.aat, align 4, !tbaa !172
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i138, 1 ; 2 uses
  %i.aau = trunc nuw nsw i64 %indvars.iv.next.i139 to i32
  %i.aav = add i32 %.reass358, %i.aau
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = mul nsw i64 %i.wp, %i.aaw
  %i.aay = getelementptr [4 x i8], ptr %i.xy, i64 %i.aax
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !172
  %i.aba = add nuw nsw i64 %indvars.iv.next.i139, %i.yk
  %i.abb = mul nsw i64 %i.aba, %i.wr
  %i.abc = getelementptr [4 x i8], ptr %gep.i, i64 %i.abb
  store float %i.aaz, ptr %i.abc, align 4, !tbaa !172
  %indvars.iv.next.i139.1 = add nuw nsw i64 %indvars.iv.i138, 2 ; 2 uses
  %exitcond.not.i140.1 = icmp eq i64 %indvars.iv.next.i139.1, %i.ws
  br i1 %exitcond.not.i140.1, label %._crit_edge.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.i, !llvm.loop !715

._crit_edge.us.us.us.us.us.us.i:                  ; preds = %.preheader.us.us.us.us.us.us.i.prol.loopexit, %.preheader.us.us.us.us.us.us.i, %middle.block494
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond104.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count103.i
  br i1 %exitcond104.not.i, label %._crit_edge67.split.us.us.us.us.us.us.i, label %.preheader58.us.us.us.us.us.us.i, !llvm.loop !716

._crit_edge67.split.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us.us.us.us.us.us.i
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %i.wt
  br i1 %exitcond109.not.i, label %._crit_edge.split.us.split.us.us.us.us.i, label %.preheader59.us.us.us.us.us.i, !llvm.loop !717

._crit_edge.split.us.split.us.us.us.us.i:         ; preds = %._crit_edge67.split.us.us.us.us.us.us.i
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %wide.trip.count113.i
  br i1 %exitcond114.not.i, label %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, label %.preheader60.us.us.us.i, !llvm.loop !718

_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit: ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.noexc142._ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge, %.preheader60.lr.ph.i
  %i.abd = phi ptr [ %.pre301, %.noexc142._ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit_crit_edge ], [ %.pre302, %.preheader60.lr.ph.i ], [ %.pre302, %._crit_edge.split.us.split.us.us.us.us.i ]
  call void @free(ptr noundef %i.abd) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.abf, %.lr.ph.i.i.i ], [ %i.oi, %_ZN3iglL15condense_Solve1IN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENT_6ScalarERS4_iiiS6_.exit ] ; 2 uses
  %i.abe = load ptr, ptr %.05.i.i.i, align 8, !tbaa !165
  call void @free(ptr noundef %i.abe) #25
  %i.abf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.abf, %i.oj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !23

_ZSt8_DestroyIPN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.oi, i64 noundef %.idx) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.abg = load ptr, ptr %12, align 8, !tbaa !72
  call void @free(ptr noundef %i.abg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.abh = load ptr, ptr %11, align 8, !tbaa !72
  call void @free(ptr noundef %i.abh) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.abi = load ptr, ptr %10, align 8, !tbaa !72
  call void @free(ptr noundef %i.abi) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.abj = load ptr, ptr %6, align 8, !tbaa !72
  call void @free(ptr noundef %i.abj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i1 true

bb.bq:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.be
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.br:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i135, %bb.bp
  %i.abl = landingpad { ptr, i32 }
          cleanup
  %i.abm = load ptr, ptr %15, align 8, !tbaa !165
  call void @free(ptr noundef %i.abm) #25
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.body132
  %.pn88 = phi { ptr, i32 } [ %i.abl, %bb.br ], [ %i.vw, %.body132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit293, %.loopexit.split-lp, %bb.bq, %bb.bs, %bb.bf
  %.pn91 = phi { ptr, i32 } [ %i.abk, %bb.bq ], [ %i.te, %bb.bf ], [ %.pn88, %bb.bs ], [ %lpad.loopexit, %.loopexit293 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ax, %bb.az, %bb.ba, %bb.bb, %bb.bt, %bb.ay, %bb.aw
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nw, %bb.aw ], [ %i.nx, %bb.ax ], [ %i.ny, %bb.ay ], [ %.pn91, %bb.bt ], [ %i.ob, %bb.bb ], [ %i.oa, %bb.ba ], [ %i.nz, %bb.az ]
  %i.abn = load ptr, ptr %12, align 8, !tbaa !72
  call void @free(ptr noundef %i.abn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.bu
  %.pn91.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn, %bb.bu ], [ %i.ix, %bb.ai ]
  %i.abo = load ptr, ptr %11, align 8, !tbaa !72
  call void @free(ptr noundef %i.abo) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.abp = load ptr, ptr %10, align 8, !tbaa !72
  call void @free(ptr noundef %i.abp) #25
  br label %bb.bv

end_hunk_1
