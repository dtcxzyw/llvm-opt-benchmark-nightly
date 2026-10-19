Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/admm?download=true
inline.NumInlined: 3888
inline.NumDeleted: 1985
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 109
begin_hunk_0_@update_dual:bb.a
  %i.aan = icmp slt i64 %i.aal, %i.aaj
  br i1 %i.aan, label %.lr.ph.i.i.i136.preheader, label %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_INS0_13scalar_sum_opIddEEKS3_S9_EES9_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit142

.lr.ph.i.i.i136.preheader:                        ; preds = %._crit_edge.i.i135
  %i.aao = sub i64 %i.aaj, %i.aal                 ; 3 uses
  %min.iters.check447 = icmp ult i64 %i.aao, 12
  br i1 %min.iters.check447, label %.lr.ph.i.i.i136.preheader468, label %vector.memcheck448

vector.memcheck448:                               ; preds = %.lr.ph.i.i.i136.preheader
  %i.aap = sub i64 %i.zn, %i.aai
  %diff.check449 = icmp ugt i64 %i.aap, -32
  %i.aaq = sub i64 %i.zp, %i.aai
  %diff.check450 = icmp ugt i64 %i.aaq, -32
  %conflict.rdx451 = or i1 %diff.check449, %diff.check450
  %i.aar = sub i64 %i.zr, %i.aai
  %diff.check452 = icmp ugt i64 %i.aar, -32
  %conflict.rdx453 = or i1 %conflict.rdx451, %diff.check452
  br i1 %conflict.rdx453, label %.lr.ph.i.i.i136.preheader468, label %vector.ph454

vector.ph454:                                     ; preds = %vector.memcheck448
  %n.vec455 = and i64 %i.aao, -4                  ; 3 uses
  %i.aas = add i64 %i.aal, %n.vec455
  br label %vector.body456

vector.body456:                                   ; preds = %vector.body456, %vector.ph454
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next464, %vector.body456 ] ; 2 uses
  %i.aat = add i64 %i.aal, %index457              ; 4 uses
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.aaf, i64 %i.aat ; 2 uses
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.zm, i64 %i.aat ; 2 uses
  %i.aaw = getelementptr inbounds [8 x i8], ptr %i.zo, i64 %i.aat ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %wide.load458 = load <2 x double>, ptr %i.aav, align 8, !tbaa !46
  %wide.load459 = load <2 x double>, ptr %i.aax, align 8, !tbaa !46
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %wide.load460 = load <2 x double>, ptr %i.aaw, align 8, !tbaa !46
  %wide.load461 = load <2 x double>, ptr %i.aay, align 8, !tbaa !46
  %i.aaz = fadd <2 x double> %wide.load458, %wide.load460
  %i.aba = fadd <2 x double> %wide.load459, %wide.load461
  %i.abb = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %i.aat ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %wide.load462 = load <2 x double>, ptr %i.abb, align 8, !tbaa !46
  %wide.load463 = load <2 x double>, ptr %i.abc, align 8, !tbaa !46
  %i.abd = fsub <2 x double> %i.aaz, %wide.load462
  %i.abe = fsub <2 x double> %i.aba, %wide.load463
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  store <2 x double> %i.abd, ptr %i.aau, align 8, !tbaa !46
  store <2 x double> %i.abe, ptr %i.abf, align 8, !tbaa !46
  %index.next464 = add nuw i64 %index457, 4       ; 2 uses
  %i.abg = icmp eq i64 %index.next464, %n.vec455
  br i1 %i.abg, label %middle.block465, label %vector.body456, !llvm.loop !352

middle.block465:                                  ; preds = %vector.body456
  %cmp.n466 = icmp eq i64 %i.aao, %n.vec455
  br i1 %cmp.n466, label %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_INS0_13scalar_sum_opIddEEKS3_S9_EES9_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit142, label %.lr.ph.i.i.i136.preheader468

.lr.ph.i.i.i136.preheader468:                     ; preds = %vector.memcheck448, %.lr.ph.i.i.i136.preheader, %middle.block465
  %.05.i.i.i137.ph = phi i64 [ %i.aal, %vector.memcheck448 ], [ %i.aal, %.lr.ph.i.i.i136.preheader ], [ %i.aas, %middle.block465 ] ; 8 uses
  %i.abh = sub i64 %i.aaj, %.05.i.i.i137.ph
  %.neg496 = add i64 %.05.i.i.i137.ph, 1
  %xtraiter488 = and i64 %i.abh, 1
  %lcmp.mod489.not = icmp eq i64 %xtraiter488, 0
  br i1 %lcmp.mod489.not, label %.lr.ph.i.i.i136.prol.loopexit, label %.lr.ph.i.i.i136.prol

.lr.ph.i.i.i136.prol:                             ; preds = %.lr.ph.i.i.i136.preheader468
  %i.abi = getelementptr inbounds [8 x i8], ptr %i.aaf, i64 %.05.i.i.i137.ph
  %i.abj = getelementptr inbounds [8 x i8], ptr %i.zm, i64 %.05.i.i.i137.ph
  %i.abk = getelementptr inbounds [8 x i8], ptr %i.zo, i64 %.05.i.i.i137.ph
  %i.abl = load double, ptr %i.abj, align 8, !tbaa !46
  %i.abm = load double, ptr %i.abk, align 8, !tbaa !46
  %i.abn = fadd double %i.abl, %i.abm
  %i.abo = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %.05.i.i.i137.ph
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !46
  %i.abq = fsub double %i.abn, %i.abp
  store double %i.abq, ptr %i.abi, align 8, !tbaa !46
  %i.abr = add nsw i64 %.05.i.i.i137.ph, 1
  br label %.lr.ph.i.i.i136.prol.loopexit

.lr.ph.i.i.i136.prol.loopexit:                    ; preds = %.lr.ph.i.i.i136.prol, %.lr.ph.i.i.i136.preheader468
  %.05.i.i.i137.unr = phi i64 [ %.05.i.i.i137.ph, %.lr.ph.i.i.i136.preheader468 ], [ %i.abr, %.lr.ph.i.i.i136.prol ]
  %i.abs = icmp eq i64 %i.aaj, %.neg496
  br i1 %i.abs, label %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_INS0_13scalar_sum_opIddEEKS3_S9_EES9_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit142, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %.lr.ph.i.i.i136.prol.loopexit, %.lr.ph.i.i.i136
  %.05.i.i.i137 = phi i64 [ %i.acm, %.lr.ph.i.i.i136 ], [ %.05.i.i.i137.unr, %.lr.ph.i.i.i136.prol.loopexit ] ; 6 uses
  %i.abt = getelementptr inbounds [8 x i8], ptr %i.aaf, i64 %.05.i.i.i137
  %i.abu = getelementptr inbounds [8 x i8], ptr %i.zm, i64 %.05.i.i.i137
  %i.abv = getelementptr inbounds [8 x i8], ptr %i.zo, i64 %.05.i.i.i137
  %i.abw = load double, ptr %i.abu, align 8, !tbaa !46
  %i.abx = load double, ptr %i.abv, align 8, !tbaa !46
  %i.aby = fadd double %i.abw, %i.abx
  %i.abz = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %.05.i.i.i137
  %i.aca = load double, ptr %i.abz, align 8, !tbaa !46
  %i.acb = fsub double %i.aby, %i.aca
  store double %i.acb, ptr %i.abt, align 8, !tbaa !46
  %i.acc = add nsw i64 %.05.i.i.i137, 1           ; 4 uses
  %i.acd = getelementptr inbounds [8 x i8], ptr %i.aaf, i64 %i.acc
  %i.ace = getelementptr inbounds [8 x i8], ptr %i.zm, i64 %i.acc
  %i.acf = getelementptr inbounds [8 x i8], ptr %i.zo, i64 %i.acc
  %i.acg = load double, ptr %i.ace, align 8, !tbaa !46
  %i.ach = load double, ptr %i.acf, align 8, !tbaa !46
  %i.aci = fadd double %i.acg, %i.ach
  %i.acj = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %i.acc
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !46
  %i.acl = fsub double %i.aci, %i.ack
  store double %i.acl, ptr %i.acd, align 8, !tbaa !46
  %i.acm = add nsw i64 %.05.i.i.i137, 2           ; 2 uses
  %exitcond.not.i.i.i138.1 = icmp eq i64 %i.acm, %i.aaj
  br i1 %exitcond.not.i.i.i138.1, label %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_INS0_13scalar_sum_opIddEEKS3_S9_EES9_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit142, label %.lr.ph.i.i.i136, !llvm.loop !353

.lr.ph.i.i139:                                    ; preds = %bb.ag, %.lr.ph.i.i139
  %.011.i.i140 = phi i64 [ %i.acw, %.lr.ph.i.i139 ], [ 0, %bb.ag ] ; 5 uses
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %.011.i.i140
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %.011.i.i140
  %i.acp = load <2 x double>, ptr %i.aco, align 16, !tbaa !47
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %.011.i.i140
  %i.acr = load <2 x double>, ptr %i.acq, align 16, !tbaa !47
  %i.acs = fadd <2 x double> %i.acp, %i.acr
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %.011.i.i140
  %i.acu = load <2 x double>, ptr %i.act, align 16, !tbaa !47
  %i.acv = fsub <2 x double> %i.acs, %i.acu
  store <2 x double> %i.acv, ptr %i.acn, align 16, !tbaa !47
  %i.acw = add nuw nsw i64 %.011.i.i140, 2        ; 2 uses
  %i.acx = icmp slt i64 %i.acw, %i.aal
  br i1 %i.acx, label %.lr.ph.i.i139, label %._crit_edge.i.i135, !llvm.loop !339

_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_INS0_13scalar_sum_opIddEEKS3_S9_EES9_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit142: ; preds = %.lr.ph.i.i.i136.prol.loopexit, %.lr.ph.i.i.i136, %middle.block465, %._crit_edge.i.i135, %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS4_INS0_13scalar_sum_opIddEEKS3_S9_EES9_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit128
  ret void
}

; Function Attrs: mustprogress uwtable
define void @update_linear_cost(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1224
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53, !noalias !538 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1232
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !63   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, %i.f
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.f, 0
  br i1 %i.r, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = sdiv i64 9223372036854775807, %i.f
  %i.t = icmp sgt i64 %i.m, %i.s
  br i1 %i.t, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !79
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.v = mul nsw i64 %i.m, %i.f
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.v, i64 noundef %i.m, i64 noundef %i.f)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !53
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.w = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.a ] ; 11 uses
  %i.x = phi i64 [ %.pr.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.f, %bb.a ] ; 4 uses
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !34   ; 4 uses
  %i.z = icmp sgt i64 %i.x, 0
  %i.aa = icmp sgt i64 %i.w, 0
  %or.cond.i.i.i.i.i.i.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.d
  %i.ab = mul i64 %i.x, %i.w
  %i.ac = shl i64 %i.ab, 3
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ac ; 2 uses
  %i.ad = shl i64 %i.w, 3                         ; 2 uses
  %scevgep675 = getelementptr i8, ptr %i.k, i64 %i.ad
  %i.ae = add nuw i64 %i.x, 2305843009213693951
  %i.af = mul i64 %i.j, %i.ae
  %i.ag = add i64 %i.af, %i.w
  %i.ah = shl i64 %i.ag, 3
  %scevgep676 = getelementptr i8, ptr %i.h, i64 %i.ah
  %min.iters.check = icmp ult i64 %i.w, 8
  %bound0 = icmp ult ptr %i.y, %scevgep675
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0677 = icmp ult ptr %i.y, %scevgep676
  %bound1678 = icmp ult ptr %i.h, %scevgep
  %found.conflict679 = and i1 %bound0677, %bound1678
  %stride.check680 = icmp slt i64 %i.ad, 0
  %1 = or i1 %found.conflict679, %stride.check680
  %.mask = and i64 %i.j, 1152921504606846976
  %stride.check681 = icmp ne i64 %.mask, 0
  %i.ai = or i1 %1, %stride.check681
  %conflict.rdx = or i1 %found.conflict, %i.ai
  %n.vec = and i64 %i.w, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i
  %.0812.i.i.i.i.i.i.i.i = phi i64 [ %i.bd, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = mul nuw nsw i64 %.0812.i.i.i.i.i.i.i.i, %i.w
  %invariant.gep.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.y, i64 %i.aj ; 4 uses
  %i.ak = mul nsw i64 %.0812.i.i.i.i.i.i.i.i, %i.j
  %invariant.gep10.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.ak ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.al = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !46, !alias.scope !539
  %wide.load682.a = load <2 x double>, ptr %i.ao, align 8, !tbaa !46, !alias.scope !539
  %i.ap = getelementptr i8, ptr %i.am, i64 16
  %wide.load683.a = load <2 x double>, ptr %i.am, align 8, !tbaa !46, !alias.scope !540
  %wide.load684 = load <2 x double>, ptr %i.ap, align 8, !tbaa !46, !alias.scope !540
  %i.aq = fneg <2 x double> %wide.load683.a
  %i.ar = fneg <2 x double> %wide.load684
  %i.as = fmul <2 x double> %wide.load, %i.aq
  %i.at = fmul <2 x double> %wide.load682.a, %i.ar
  %i.au = getelementptr i8, ptr %i.al, i64 16
  store <2 x double> %i.as, ptr %i.al, align 8, !tbaa !46, !alias.scope !541, !noalias !542
  store <2 x double> %i.at, ptr %i.au, align 8, !tbaa !46, !alias.scope !541, !noalias !542
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 6 uses
  %.neg = or disjoint i64 %.09.i.i.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.ph
  %gep11.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.ph
  %i.aw = getelementptr [8 x i8], ptr %i.k, i64 %.09.i.i.i.i.i.i.i.i.ph
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !46
  %i.ay = load double, ptr %gep11.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !46
  %i.az = fneg double %i.ay
  %i.ba = fmul double %i.ax, %i.az
  store double %i.ba, ptr %gep.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !46
  %i.bb = or disjoint i64 %.09.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %i.w, %.neg
  br i1 %i.bc, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bd = add nuw nsw i64 %.0812.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond14.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bd, %i.x
  br i1 %exitcond14.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !363

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i
  %gep11.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i
  %i.be = getelementptr [8 x i8], ptr %i.k, i64 %.09.i.i.i.i.i.i.i.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !46
  %i.bg = load double, ptr %gep11.i.i.i.i.i.i.i.i, align 8, !tbaa !46
  %i.bh = fneg double %i.bg
  %i.bi = fmul double %i.bf, %i.bh
  store double %i.bi, ptr %gep.i.i.i.i.i.i.i.i, align 8, !tbaa !46
  %i.bj = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %gep.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i, i64 %i.bj
  %gep11.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i, i64 %i.bj
  %i.bk = getelementptr [8 x i8], ptr %i.k, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !46
  %i.bm = load double, ptr %gep11.i.i.i.i.i.i.i.i.1, align 8, !tbaa !46
  %i.bn = fneg double %i.bm
  %i.bo = fmul double %i.bl, %i.bn
  store double %i.bo, ptr %gep.i.i.i.i.i.i.i.i.1, align 8, !tbaa !46
  %i.bp = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bp, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !364

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 184
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 256
  %i.bv = load double, ptr %i.br, align 8, !tbaa !46, !noalias !543 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !34 ; 7 uses
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 7 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !34 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !35 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !53 ; 2 uses
  %i.ce = mul nsw i64 %i.cd, %i.cb                ; 7 uses
  %i.cf = sdiv i64 %i.ce, 2                       ; 2 uses
  %i.cg = shl nsw i64 %i.cf, 1                    ; 7 uses
  %i.ch = icmp sgt i64 %i.ce, 1
  br i1 %i.ch, label %.lr.ph.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %.sroa.3.8.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ci = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.cj = icmp slt i64 %i.cg, %i.ce
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i.i.i.i.i
  %i.ck = sub i64 %i.ce, %i.cg                    ; 3 uses
  %min.iters.check700 = icmp ult i64 %i.ck, 10
  br i1 %min.iters.check700, label %.lr.ph.i.i.i.i.i.i.preheader1407, label %vector.memcheck701

vector.memcheck701:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.cl = shl i64 %i.cf, 4                        ; 3 uses
  %i.cm = getelementptr i8, ptr %i.bz, i64 %i.cl  ; 2 uses
  %i.cn = mul i64 %i.cb, %i.cd
  %i.co = shl i64 %i.cn, 3                        ; 3 uses
  %i.cp = getelementptr i8, ptr %i.bz, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.cl
  %i.cr = getelementptr i8, ptr %i.bx, i64 %i.co
  %i.cs = getelementptr i8, ptr %i.by, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.by, i64 %i.co
  %bound0702 = icmp ult ptr %i.cm, %i.cr
  %bound1703 = icmp ult ptr %i.cq, %i.cp
  %found.conflict704 = and i1 %bound0702, %bound1703
  %bound0705 = icmp ult ptr %i.cm, %i.ct
  %bound1706 = icmp ult ptr %i.cs, %i.cp
  %found.conflict707 = and i1 %bound0705, %bound1706
  %conflict.rdx708 = or i1 %found.conflict704, %found.conflict707
  br i1 %conflict.rdx708, label %.lr.ph.i.i.i.i.i.i.preheader1407, label %vector.ph709

vector.ph709:                                     ; preds = %vector.memcheck701
  %n.vec710 = and i64 %i.ck, -4                   ; 3 uses
  %i.cu = add i64 %i.cg, %n.vec710
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body711

vector.body711:                                   ; preds = %vector.body711, %vector.ph709
  %index712 = phi i64 [ 0, %vector.ph709 ], [ %index.next719, %vector.body711 ] ; 2 uses
  %i.cv = add i64 %i.cg, %index712                ; 3 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cv ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load713.a = load <2 x double>, ptr %i.cx, align 8, !tbaa !46, !alias.scope !544
  %wide.load714.a = load <2 x double>, ptr %i.cz, align 8, !tbaa !46, !alias.scope !544
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load715.a = load <2 x double>, ptr %i.cy, align 8, !tbaa !46, !alias.scope !545
  %wide.load716.a = load <2 x double>, ptr %i.da, align 8, !tbaa !46, !alias.scope !545
  %i.db = fsub <2 x double> %wide.load713.a, %wide.load715.a
  %i.dc = fsub <2 x double> %wide.load714.a, %wide.load716.a
  %i.dd = fmul <2 x double> %broadcast.splat, %i.db
  %i.de = fmul <2 x double> %broadcast.splat, %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %wide.load717.a = load <2 x double>, ptr %i.cw, align 8, !tbaa !46, !alias.scope !546, !noalias !547
  %wide.load718 = load <2 x double>, ptr %i.df, align 8, !tbaa !46, !alias.scope !546, !noalias !547
  %i.dg = fsub <2 x double> %wide.load717.a, %i.dd
  %i.dh = fsub <2 x double> %wide.load718, %i.de
  store <2 x double> %i.dg, ptr %i.cw, align 8, !tbaa !46, !alias.scope !546, !noalias !547
  store <2 x double> %i.dh, ptr %i.df, align 8, !tbaa !46, !alias.scope !546, !noalias !547
  %index.next719 = add nuw i64 %index712, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next719, %n.vec710
  br i1 %i.di, label %middle.block720, label %vector.body711, !llvm.loop !371

middle.block720:                                  ; preds = %vector.body711
  %cmp.n721 = icmp eq i64 %i.ck, %n.vec710
  br i1 %cmp.n721, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader1407

.lr.ph.i.i.i.i.i.i.preheader1407:                 ; preds = %vector.memcheck701, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block720
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.cg, %vector.memcheck701 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cu, %middle.block720 ] ; 7 uses
  %i.dj = sub i64 %i.ce, %.05.i.i.i.i.i.i.ph
  %.neg1461.a = add i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter1408.a = and i64 %i.dj, 1
  %lcmp.mod1409.not.a = icmp eq i64 %xtraiter1408.a, 0
  br i1 %lcmp.mod1409.not.a, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader1407
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.05.i.i.i.i.i.i.ph
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.05.i.i.i.i.i.i.ph
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !46
  %i.do = load double, ptr %i.dm, align 8, !tbaa !46
  %i.dp = fsub double %i.dn, %i.do
  %i.dq = fmul double %i.bv, %i.dp
  %i.dr = load double, ptr %i.dk, align 8, !tbaa !46
  %i.ds = fsub double %i.dr, %i.dq
end_hunk_0
begin_hunk_1_@update_linear_cost:bb.a
.lr.ph.i.i.i.i.i.i113.preheader:                  ; preds = %._crit_edge.i.i.i.i.i112
  %i.my = sub i64 %i.ms, %i.mu                    ; 3 uses
  %min.iters.check818 = icmp ult i64 %i.my, 10
  br i1 %min.iters.check818, label %.lr.ph.i.i.i.i.i.i113.preheader1404, label %vector.memcheck819

vector.memcheck819:                               ; preds = %.lr.ph.i.i.i.i.i.i113.preheader
  %i.mz = shl i64 %i.mt, 4                        ; 3 uses
  %i.na = getelementptr i8, ptr %i.mn, i64 %i.mz  ; 2 uses
  %i.nb = mul i64 %i.mp, %i.mr
  %i.nc = shl i64 %i.nb, 3                        ; 3 uses
  %i.nd = getelementptr i8, ptr %i.mn, i64 %i.nc  ; 2 uses
  %i.ne = getelementptr i8, ptr %i.ml, i64 %i.mz
  %i.nf = getelementptr i8, ptr %i.ml, i64 %i.nc
  %i.ng = getelementptr i8, ptr %i.mm, i64 %i.mz
  %i.nh = getelementptr i8, ptr %i.mm, i64 %i.nc
  %bound0820 = icmp ult ptr %i.na, %i.nf
  %bound1821 = icmp ult ptr %i.ne, %i.nd
  %found.conflict822 = and i1 %bound0820, %bound1821
  %bound0823 = icmp ult ptr %i.na, %i.nh
  %bound1824 = icmp ult ptr %i.ng, %i.nd
  %found.conflict825 = and i1 %bound0823, %bound1824
  %conflict.rdx826 = or i1 %found.conflict822, %found.conflict825
  br i1 %conflict.rdx826, label %.lr.ph.i.i.i.i.i.i113.preheader1404, label %vector.ph827

vector.ph827:                                     ; preds = %vector.memcheck819
  %n.vec828 = and i64 %i.my, -4                   ; 3 uses
  %i.ni = add i64 %i.mu, %n.vec828
  %broadcast.splatinsert829 = insertelement <2 x double> poison, double %i.mj, i64 0
  %broadcast.splat830 = shufflevector <2 x double> %broadcast.splatinsert829, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph827
  %index832 = phi i64 [ 0, %vector.ph827 ], [ %index.next839, %vector.body831 ] ; 2 uses
  %i.nj = add i64 %i.mu, %index832                ; 3 uses
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.nj ; 3 uses
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.ml, i64 %i.nj ; 2 uses
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.nj ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %wide.load833.a = load <2 x double>, ptr %i.nl, align 8, !tbaa !46, !alias.scope !559
  %wide.load834.a = load <2 x double>, ptr %i.nn, align 8, !tbaa !46, !alias.scope !559
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %wide.load835.a = load <2 x double>, ptr %i.nm, align 8, !tbaa !46, !alias.scope !560
  %wide.load836.a = load <2 x double>, ptr %i.no, align 8, !tbaa !46, !alias.scope !560
  %i.np = fsub <2 x double> %wide.load833.a, %wide.load835.a
  %i.nq = fsub <2 x double> %wide.load834.a, %wide.load836.a
  %i.nr = fmul <2 x double> %broadcast.splat830, %i.np
  %i.ns = fmul <2 x double> %broadcast.splat830, %i.nq
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nk, i64 16 ; 2 uses
  %wide.load837.a = load <2 x double>, ptr %i.nk, align 8, !tbaa !46, !alias.scope !561, !noalias !562
  %wide.load838 = load <2 x double>, ptr %i.nt, align 8, !tbaa !46, !alias.scope !561, !noalias !562
  %i.nu = fsub <2 x double> %wide.load837.a, %i.nr
  %i.nv = fsub <2 x double> %wide.load838, %i.ns
  store <2 x double> %i.nu, ptr %i.nk, align 8, !tbaa !46, !alias.scope !561, !noalias !562
  store <2 x double> %i.nv, ptr %i.nt, align 8, !tbaa !46, !alias.scope !561, !noalias !562
  %index.next839 = add nuw i64 %index832, 4       ; 2 uses
  %i.nw = icmp eq i64 %index.next839, %n.vec828
  br i1 %i.nw, label %middle.block840, label %vector.body831, !llvm.loop !396

middle.block840:                                  ; preds = %vector.body831
  %cmp.n841 = icmp eq i64 %i.my, %n.vec828
  br i1 %cmp.n841, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120, label %.lr.ph.i.i.i.i.i.i113.preheader1404

.lr.ph.i.i.i.i.i.i113.preheader1404:              ; preds = %vector.memcheck819, %.lr.ph.i.i.i.i.i.i113.preheader, %middle.block840
  %.05.i.i.i.i.i.i114.ph = phi i64 [ %i.mu, %vector.memcheck819 ], [ %i.mu, %.lr.ph.i.i.i.i.i.i113.preheader ], [ %i.ni, %middle.block840 ] ; 7 uses
  %i.nx = sub i64 %i.ms, %.05.i.i.i.i.i.i114.ph
  %.neg1464.a = add i64 %.05.i.i.i.i.i.i114.ph, 1
  %xtraiter1414.a = and i64 %i.nx, 1
  %lcmp.mod1415.not.a = icmp eq i64 %xtraiter1414.a, 0
  br i1 %lcmp.mod1415.not.a, label %.lr.ph.i.i.i.i.i.i113.prol.loopexit, label %.lr.ph.i.i.i.i.i.i113.prol

.lr.ph.i.i.i.i.i.i113.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i113.preheader1404
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %.05.i.i.i.i.i.i114.ph ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.ml, i64 %.05.i.i.i.i.i.i114.ph
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %.05.i.i.i.i.i.i114.ph
  %i.ob = load double, ptr %i.nz, align 8, !tbaa !46
  %i.oc = load double, ptr %i.oa, align 8, !tbaa !46
  %i.od = fsub double %i.ob, %i.oc
  %i.oe = fmul double %i.mj, %i.od
  %i.of = load double, ptr %i.ny, align 8, !tbaa !46
  %i.og = fsub double %i.of, %i.oe
  store double %i.og, ptr %i.ny, align 8, !tbaa !46
  %i.oh = add nsw i64 %.05.i.i.i.i.i.i114.ph, 1
  br label %.lr.ph.i.i.i.i.i.i113.prol.loopexit

.lr.ph.i.i.i.i.i.i113.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i113.prol, %.lr.ph.i.i.i.i.i.i113.preheader1404
  %.05.i.i.i.i.i.i114.unr = phi i64 [ %.05.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i113.preheader1404 ], [ %i.oh, %.lr.ph.i.i.i.i.i.i113.prol ]
  %i.oi = icmp eq i64 %i.ms, %.neg1464.a
  br i1 %i.oi, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120, label %.lr.ph.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i113:                            ; preds = %.lr.ph.i.i.i.i.i.i113.prol.loopexit, %.lr.ph.i.i.i.i.i.i113
  %.05.i.i.i.i.i.i114 = phi i64 [ %i.pc, %.lr.ph.i.i.i.i.i.i113 ], [ %.05.i.i.i.i.i.i114.unr, %.lr.ph.i.i.i.i.i.i113.prol.loopexit ] ; 5 uses
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %.05.i.i.i.i.i.i114 ; 2 uses
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.ml, i64 %.05.i.i.i.i.i.i114
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %.05.i.i.i.i.i.i114
  %i.om = load double, ptr %i.ok, align 8, !tbaa !46
  %i.on = load double, ptr %i.ol, align 8, !tbaa !46
  %i.oo = fsub double %i.om, %i.on
  %i.op = fmul double %i.mj, %i.oo
  %i.oq = load double, ptr %i.oj, align 8, !tbaa !46
  %i.or = fsub double %i.oq, %i.op
  store double %i.or, ptr %i.oj, align 8, !tbaa !46
  %i.os = add nsw i64 %.05.i.i.i.i.i.i114, 1      ; 3 uses
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.os ; 2 uses
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.ml, i64 %i.os
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.os
  %i.ow = load double, ptr %i.ou, align 8, !tbaa !46
  %i.ox = load double, ptr %i.ov, align 8, !tbaa !46
  %i.oy = fsub double %i.ow, %i.ox
  %i.oz = fmul double %i.mj, %i.oy
  %i.pa = load double, ptr %i.ot, align 8, !tbaa !46
  %i.pb = fsub double %i.pa, %i.oz
  store double %i.pb, ptr %i.ot, align 8, !tbaa !46
  %i.pc = add nsw i64 %.05.i.i.i.i.i.i114, 2      ; 2 uses
  %exitcond.not.i.i.i.i.i.i115.1 = icmp eq i64 %i.pc, %i.ms
  br i1 %exitcond.not.i.i.i.i.i.i115.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120, label %.lr.ph.i.i.i.i.i.i113, !llvm.loop !397

.lr.ph.i.i.i.i.i118:                              ; preds = %.lr.ph.i.i.i.i.i118, %.lr.ph.i.preheader.i.i.i.i116
  %.011.i.i.i.i.i119 = phi i64 [ %i.pm, %.lr.ph.i.i.i.i.i118 ], [ 0, %.lr.ph.i.preheader.i.i.i.i116 ] ; 4 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %.011.i.i.i.i.i119 ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %.011.i.i.i.i.i119
  %i.pf = load <2 x double>, ptr %i.pe, align 16, !tbaa !47
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %.011.i.i.i.i.i119
  %i.ph = load <2 x double>, ptr %i.pg, align 16, !tbaa !47
  %i.pi = fsub <2 x double> %i.pf, %i.ph
  %i.pj = fmul <2 x double> %i.mw, %i.pi
  %i.pk = load <2 x double>, ptr %i.pd, align 16, !tbaa !47
  %i.pl = fsub <2 x double> %i.pk, %i.pj
  store <2 x double> %i.pl, ptr %i.pd, align 16, !tbaa !47
  %i.pm = add nuw nsw i64 %.011.i.i.i.i.i119, 2   ; 2 uses
  %i.pn = icmp slt i64 %i.pm, %i.mu
  br i1 %i.pn, label %.lr.ph.i.i.i.i.i118, label %._crit_edge.i.i.i.i.i112, !llvm.loop !373

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120: ; preds = %.lr.ph.i.i.i.i.i.i113.prol.loopexit, %.lr.ph.i.i.i.i.i.i113, %middle.block840, %._crit_edge.i.i.i.i.i112, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit110
  %i.po = load ptr, ptr %i.a, align 8, !tbaa !17  ; 8 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 1248
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 1144
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 1264
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !53, !noalias !563 ; 6 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 88 ; 2 uses
  %i.pu = load ptr, ptr %i.pp, align 8, !tbaa !34 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 1256
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !35 ; 3 uses
  %i.px = load ptr, ptr %i.pq, align 8, !tbaa !63 ; 6 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 1152
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !77 ; 5 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.po, i64 96 ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !35
  %.not.i.i.i.i.i.i.i.i124 = icmp eq i64 %i.qb, %i.pz
  %i.qc = getelementptr inbounds nuw i8, ptr %i.po, i64 104 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8
  %.not8.i.i.i.i.i.i.i.i125 = icmp eq i64 %i.qd, %i.ps
  %or.cond.i.i.i.i.i.i.i.i126 = select i1 %.not.i.i.i.i.i.i.i.i124, i1 %.not8.i.i.i.i.i.i.i.i125, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i126, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120
  %i.qe = icmp eq i64 %i.ps, 0
  br i1 %i.qe, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.qf = sdiv i64 9223372036854775807, %i.ps
  %i.qg = icmp sgt i64 %i.pz, %i.qf
  br i1 %i.qg, label %.noexc.i.i.i.i.i.i.i141, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127

.noexc.i.i.i.i.i.i.i141:                          ; preds = %bb.j
  %i.qh = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.qh, align 8, !tbaa !79
  tail call void @__cxa_throw(ptr nonnull %i.qh, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127: ; preds = %bb.j, %bb.i
  %i.qi = mul nsw i64 %i.pz, %i.ps
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.pt, i64 noundef %i.qi, i64 noundef %i.pz, i64 noundef %i.ps)
  %.pr.i.i.i.i.i.i.i128 = load i64, ptr %i.qc, align 8, !tbaa !53
  %.pre.i.i.i.i.i.i.i129 = load i64, ptr %i.qa, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120
  %i.qj = phi i64 [ %.pre.i.i.i.i.i.i.i129, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127 ], [ %i.pz, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120 ] ; 11 uses
  %i.qk = phi i64 [ %.pr.i.i.i.i.i.i.i128, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127 ], [ %i.ps, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120 ] ; 4 uses
  %i.ql = load ptr, ptr %i.pt, align 8, !tbaa !34 ; 4 uses
  %i.qm = icmp sgt i64 %i.qk, 0
  %i.qn = icmp sgt i64 %i.qj, 0
  %or.cond.i.i.i.i.i.i.i130 = select i1 %i.qm, i1 %i.qn, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i130, label %.preheader.i.i.i.i.i.i.i.i131.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142

.preheader.i.i.i.i.i.i.i.i131.preheader:          ; preds = %bb.k
  %i.qo = mul i64 %i.qk, %i.qj
  %i.qp = shl i64 %i.qo, 3
  %scevgep844.a = getelementptr i8, ptr %i.ql, i64 %i.qp ; 2 uses
  %i.qq = shl i64 %i.qj, 3                        ; 2 uses
  %scevgep845.a = getelementptr i8, ptr %i.px, i64 %i.qq
  %i.qr = add nuw i64 %i.qk, 2305843009213693951
  %i.qs = mul i64 %i.pw, %i.qr
  %i.qt = add i64 %i.qs, %i.qj
  %i.qu = shl i64 %i.qt, 3
  %scevgep846 = getelementptr i8, ptr %i.pu, i64 %i.qu
  %min.iters.check858 = icmp ult i64 %i.qj, 8
  %bound0847 = icmp ult ptr %i.ql, %scevgep845.a
  %bound1848 = icmp ult ptr %i.px, %scevgep844.a
  %found.conflict849 = and i1 %bound0847, %bound1848
  %bound0851 = icmp ult ptr %i.ql, %scevgep846
  %bound1852 = icmp ult ptr %i.pu, %scevgep844.a
  %found.conflict853 = and i1 %bound0851, %bound1852
  %stride.check854 = icmp slt i64 %i.qq, 0
  %2 = or i1 %found.conflict853, %stride.check854
  %.mask1382 = and i64 %i.pw, 1152921504606846976
  %stride.check855 = icmp ne i64 %.mask1382, 0
  %i.qv = or i1 %2, %stride.check855
  %conflict.rdx856 = or i1 %found.conflict849, %i.qv
  %n.vec860 = and i64 %i.qj, 9223372036854775804  ; 3 uses
  %cmp.n869 = icmp eq i64 %i.qj, %n.vec860
  %xtraiter1416.a = and i64 %i.qj, 1
  %lcmp.mod1417.not.a = icmp eq i64 %xtraiter1416.a, 0
  br label %.preheader.i.i.i.i.i.i.i.i131

.preheader.i.i.i.i.i.i.i.i131:                    ; preds = %.preheader.i.i.i.i.i.i.i.i131.preheader, %._crit_edge.i.i.i.i.i.i.i.i139
  %.0812.i.i.i.i.i.i.i.i132 = phi i64 [ %i.rq, %._crit_edge.i.i.i.i.i.i.i.i139 ], [ 0, %.preheader.i.i.i.i.i.i.i.i131.preheader ] ; 3 uses
  %i.qw = mul nuw nsw i64 %.0812.i.i.i.i.i.i.i.i132, %i.qj
  %invariant.gep.i.i.i.i.i.i.i.i133 = getelementptr [8 x i8], ptr %i.ql, i64 %i.qw ; 4 uses
  %i.qx = mul nsw i64 %.0812.i.i.i.i.i.i.i.i132, %i.pw
  %invariant.gep10.i.i.i.i.i.i.i.i134 = getelementptr [8 x i8], ptr %i.pu, i64 %i.qx ; 4 uses
  %brmerge1487 = select i1 %min.iters.check858, i1 true, i1 %conflict.rdx856
  br i1 %brmerge1487, label %scalar.ph857.preheader, label %vector.body861

vector.body861:                                   ; preds = %.preheader.i.i.i.i.i.i.i.i131, %vector.body861
  %index862 = phi i64 [ %index.next867, %vector.body861 ], [ 0, %.preheader.i.i.i.i.i.i.i.i131 ] ; 4 uses
  %i.qy = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i133, i64 %index862 ; 2 uses
  %i.qz = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i134, i64 %index862 ; 2 uses
  %i.ra = getelementptr [8 x i8], ptr %i.px, i64 %index862 ; 2 uses
  %i.rb = getelementptr i8, ptr %i.ra, i64 16
  %wide.load863.a = load <2 x double>, ptr %i.ra, align 8, !tbaa !46, !alias.scope !564
  %wide.load864.a = load <2 x double>, ptr %i.rb, align 8, !tbaa !46, !alias.scope !564
  %i.rc = getelementptr i8, ptr %i.qz, i64 16
  %wide.load865 = load <2 x double>, ptr %i.qz, align 8, !tbaa !46, !alias.scope !565
  %wide.load866 = load <2 x double>, ptr %i.rc, align 8, !tbaa !46, !alias.scope !565
  %i.rd = fneg <2 x double> %wide.load865
  %i.re = fneg <2 x double> %wide.load866
  %i.rf = fmul <2 x double> %wide.load863.a, %i.rd
  %i.rg = fmul <2 x double> %wide.load864.a, %i.re
  %i.rh = getelementptr i8, ptr %i.qy, i64 16
  store <2 x double> %i.rf, ptr %i.qy, align 8, !tbaa !46, !alias.scope !566, !noalias !567
  store <2 x double> %i.rg, ptr %i.rh, align 8, !tbaa !46, !alias.scope !566, !noalias !567
  %index.next867 = add nuw i64 %index862, 4       ; 2 uses
  %i.ri = icmp eq i64 %index.next867, %n.vec860
  br i1 %i.ri, label %middle.block868, label %vector.body861, !llvm.loop !406

middle.block868:                                  ; preds = %vector.body861
  br i1 %cmp.n869, label %._crit_edge.i.i.i.i.i.i.i.i139, label %scalar.ph857.preheader

scalar.ph857.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i131, %middle.block868
  %.09.i.i.i.i.i.i.i.i135.ph = phi i64 [ %n.vec860, %middle.block868 ], [ 0, %.preheader.i.i.i.i.i.i.i.i131 ] ; 6 uses
  %.neg1465.a = or disjoint i64 %.09.i.i.i.i.i.i.i.i135.ph, 1
  br i1 %lcmp.mod1417.not.a, label %scalar.ph857.prol.loopexit, label %scalar.ph857.prol

scalar.ph857.prol:                                ; preds = %scalar.ph857.preheader
  %gep.i.i.i.i.i.i.i.i136.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i133, i64 %.09.i.i.i.i.i.i.i.i135.ph
  %gep11.i.i.i.i.i.i.i.i137.prol = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i134, i64 %.09.i.i.i.i.i.i.i.i135.ph
  %i.rj = getelementptr [8 x i8], ptr %i.px, i64 %.09.i.i.i.i.i.i.i.i135.ph
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !46
  %i.rl = load double, ptr %gep11.i.i.i.i.i.i.i.i137.prol, align 8, !tbaa !46
  %i.rm = fneg double %i.rl
  %i.rn = fmul double %i.rk, %i.rm
  store double %i.rn, ptr %gep.i.i.i.i.i.i.i.i136.prol, align 8, !tbaa !46
  %i.ro = or disjoint i64 %.09.i.i.i.i.i.i.i.i135.ph, 1
  br label %scalar.ph857.prol.loopexit

scalar.ph857.prol.loopexit:                       ; preds = %scalar.ph857.prol, %scalar.ph857.preheader
  %.09.i.i.i.i.i.i.i.i135.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i135.ph, %scalar.ph857.preheader ], [ %i.ro, %scalar.ph857.prol ]
  %i.rp = icmp eq i64 %i.qj, %.neg1465.a
  br i1 %i.rp, label %._crit_edge.i.i.i.i.i.i.i.i139, label %scalar.ph857

._crit_edge.i.i.i.i.i.i.i.i139:                   ; preds = %scalar.ph857.prol.loopexit, %scalar.ph857, %middle.block868
  %i.rq = add nuw nsw i64 %.0812.i.i.i.i.i.i.i.i132, 1 ; 2 uses
  %exitcond14.not.i.i.i.i.i.i.i.i140 = icmp eq i64 %i.rq, %i.qk
  br i1 %exitcond14.not.i.i.i.i.i.i.i.i140, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142, label %.preheader.i.i.i.i.i.i.i.i131, !llvm.loop !363

scalar.ph857:                                     ; preds = %scalar.ph857.prol.loopexit, %scalar.ph857
  %.09.i.i.i.i.i.i.i.i135 = phi i64 [ %i.sc, %scalar.ph857 ], [ %.09.i.i.i.i.i.i.i.i135.unr, %scalar.ph857.prol.loopexit ] ; 5 uses
  %gep.i.i.i.i.i.i.i.i136 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i133, i64 %.09.i.i.i.i.i.i.i.i135
  %gep11.i.i.i.i.i.i.i.i137 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i134, i64 %.09.i.i.i.i.i.i.i.i135
  %i.rr = getelementptr [8 x i8], ptr %i.px, i64 %.09.i.i.i.i.i.i.i.i135
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !46
  %i.rt = load double, ptr %gep11.i.i.i.i.i.i.i.i137, align 8, !tbaa !46
  %i.ru = fneg double %i.rt
  %i.rv = fmul double %i.rs, %i.ru
  store double %i.rv, ptr %gep.i.i.i.i.i.i.i.i136, align 8, !tbaa !46
  %i.rw = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i135, 1 ; 3 uses
  %gep.i.i.i.i.i.i.i.i136.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i133, i64 %i.rw
  %gep11.i.i.i.i.i.i.i.i137.1 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i134, i64 %i.rw
  %i.rx = getelementptr [8 x i8], ptr %i.px, i64 %i.rw
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !46
  %i.rz = load double, ptr %gep11.i.i.i.i.i.i.i.i137.1, align 8, !tbaa !46
  %i.sa = fneg double %i.rz
  %i.sb = fmul double %i.ry, %i.sa
  store double %i.sb, ptr %gep.i.i.i.i.i.i.i.i136.1, align 8, !tbaa !46
  %i.sc = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i135, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i138.1 = icmp eq i64 %i.sc, %i.qj
  br i1 %exitcond.not.i.i.i.i.i.i.i.i138.1, label %._crit_edge.i.i.i.i.i.i.i.i139, label %scalar.ph857, !llvm.loop !407

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142: ; preds = %._crit_edge.i.i.i.i.i.i.i.i139, %bb.k
  %i.sd = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.se = load ptr, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 232
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 280
  %i.sh = load double, ptr %i.sd, align 8, !tbaa !46, !noalias !568 ; 5 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 88
  %i.sj = load ptr, ptr %i.sf, align 8, !tbaa !34 ; 7 uses
  %i.sk = load ptr, ptr %i.sg, align 8, !tbaa !34 ; 7 uses
  %i.sl = load ptr, ptr %i.si, align 8, !tbaa !34 ; 7 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.se, i64 96
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !35 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.se, i64 104
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !53 ; 2 uses
  %i.sq = mul nsw i64 %i.sp, %i.sn                ; 7 uses
  %i.sr = sdiv i64 %i.sq, 2                       ; 2 uses
  %i.ss = shl nsw i64 %i.sr, 1                    ; 7 uses
  %i.st = icmp sgt i64 %i.sq, 1
  br i1 %i.st, label %.lr.ph.i.preheader.i.i.i.i148, label %._crit_edge.i.i.i.i.i144

.lr.ph.i.preheader.i.i.i.i148:                    ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142
  %.sroa.3.8.vec.insert.i.i.i.i149 = insertelement <2 x double> poison, double %i.sh, i64 0
  %i.su = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i149, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i150

._crit_edge.i.i.i.i.i144:                         ; preds = %.lr.ph.i.i.i.i.i150, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142
  %i.sv = icmp slt i64 %i.ss, %i.sq
  br i1 %i.sv, label %.lr.ph.i.i.i.i.i.i145.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit152

.lr.ph.i.i.i.i.i.i145.preheader:                  ; preds = %._crit_edge.i.i.i.i.i144
  %i.sw = sub i64 %i.sq, %i.ss                    ; 3 uses
  %min.iters.check886 = icmp ult i64 %i.sw, 10
  br i1 %min.iters.check886, label %.lr.ph.i.i.i.i.i.i145.preheader1403, label %vector.memcheck887

vector.memcheck887:                               ; preds = %.lr.ph.i.i.i.i.i.i145.preheader
  %i.sx = shl i64 %i.sr, 4                        ; 3 uses
  %i.sy = getelementptr i8, ptr %i.sl, i64 %i.sx  ; 2 uses
  %i.sz = mul i64 %i.sn, %i.sp
  %i.ta = shl i64 %i.sz, 3                        ; 3 uses
  %i.tb = getelementptr i8, ptr %i.sl, i64 %i.ta  ; 2 uses
  %i.tc = getelementptr i8, ptr %i.sj, i64 %i.sx
  %i.td = getelementptr i8, ptr %i.sj, i64 %i.ta
  %i.te = getelementptr i8, ptr %i.sk, i64 %i.sx
  %i.tf = getelementptr i8, ptr %i.sk, i64 %i.ta
  %bound0888 = icmp ult ptr %i.sy, %i.td
  %bound1889 = icmp ult ptr %i.tc, %i.tb
  %found.conflict890 = and i1 %bound0888, %bound1889
  %bound0891 = icmp ult ptr %i.sy, %i.tf
  %bound1892 = icmp ult ptr %i.te, %i.tb
  %found.conflict893 = and i1 %bound0891, %bound1892
  %conflict.rdx894 = or i1 %found.conflict890, %found.conflict893
  br i1 %conflict.rdx894, label %.lr.ph.i.i.i.i.i.i145.preheader1403, label %vector.ph895

vector.ph895:                                     ; preds = %vector.memcheck887
  %n.vec896 = and i64 %i.sw, -4                   ; 3 uses
  %i.tg = add i64 %i.ss, %n.vec896
  %broadcast.splatinsert897 = insertelement <2 x double> poison, double %i.sh, i64 0
  %broadcast.splat898 = shufflevector <2 x double> %broadcast.splatinsert897, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body899

vector.body899:                                   ; preds = %vector.body899, %vector.ph895
  %index900 = phi i64 [ 0, %vector.ph895 ], [ %index.next907, %vector.body899 ] ; 2 uses
  %i.th = add i64 %i.ss, %index900                ; 3 uses
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.th ; 3 uses
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.sj, i64 %i.th ; 2 uses
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.th ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %wide.load901.a = load <2 x double>, ptr %i.tj, align 8, !tbaa !46, !alias.scope !569
  %wide.load902.a = load <2 x double>, ptr %i.tl, align 8, !tbaa !46, !alias.scope !569
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %wide.load903.a = load <2 x double>, ptr %i.tk, align 8, !tbaa !46, !alias.scope !570
  %wide.load904.a = load <2 x double>, ptr %i.tm, align 8, !tbaa !46, !alias.scope !570
  %i.tn = fsub <2 x double> %wide.load901.a, %wide.load903.a
  %i.to = fsub <2 x double> %wide.load902.a, %wide.load904.a
  %i.tp = fmul <2 x double> %broadcast.splat898, %i.tn
  %i.tq = fmul <2 x double> %broadcast.splat898, %i.to
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ti, i64 16 ; 2 uses
  %wide.load905 = load <2 x double>, ptr %i.ti, align 8, !tbaa !46, !alias.scope !571, !noalias !572
  %wide.load906 = load <2 x double>, ptr %i.tr, align 8, !tbaa !46, !alias.scope !571, !noalias !572
  %i.ts = fsub <2 x double> %wide.load905, %i.tp
  %i.tt = fsub <2 x double> %wide.load906, %i.tq
  store <2 x double> %i.ts, ptr %i.ti, align 8, !tbaa !46, !alias.scope !571, !noalias !572
  store <2 x double> %i.tt, ptr %i.tr, align 8, !tbaa !46, !alias.scope !571, !noalias !572
  %index.next907 = add nuw i64 %index900, 4       ; 2 uses
  %i.tu = icmp eq i64 %index.next907, %n.vec896
  br i1 %i.tu, label %middle.block908, label %vector.body899, !llvm.loop !414

middle.block908:                                  ; preds = %vector.body899
  %cmp.n909 = icmp eq i64 %i.sw, %n.vec896
  br i1 %cmp.n909, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit152, label %.lr.ph.i.i.i.i.i.i145.preheader1403

.lr.ph.i.i.i.i.i.i145.preheader1403:              ; preds = %vector.memcheck887, %.lr.ph.i.i.i.i.i.i145.preheader, %middle.block908
  %.05.i.i.i.i.i.i146.ph = phi i64 [ %i.ss, %vector.memcheck887 ], [ %i.ss, %.lr.ph.i.i.i.i.i.i145.preheader ], [ %i.tg, %middle.block908 ] ; 7 uses
  %i.tv = sub i64 %i.sq, %.05.i.i.i.i.i.i146.ph
  %.neg1466.a = add i64 %.05.i.i.i.i.i.i146.ph, 1
  %xtraiter1418.a = and i64 %i.tv, 1
  %lcmp.mod1419.not.a = icmp eq i64 %xtraiter1418.a, 0
  br i1 %lcmp.mod1419.not.a, label %.lr.ph.i.i.i.i.i.i145.prol.loopexit, label %.lr.ph.i.i.i.i.i.i145.prol

.lr.ph.i.i.i.i.i.i145.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i145.preheader1403
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %.05.i.i.i.i.i.i146.ph ; 2 uses
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.sj, i64 %.05.i.i.i.i.i.i146.ph
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %.05.i.i.i.i.i.i146.ph
  %i.tz = load double, ptr %i.tx, align 8, !tbaa !46
  %i.ua = load double, ptr %i.ty, align 8, !tbaa !46
  %i.ub = fsub double %i.tz, %i.ua
  %i.uc = fmul double %i.sh, %i.ub
  %i.ud = load double, ptr %i.tw, align 8, !tbaa !46
  %i.ue = fsub double %i.ud, %i.uc
  store double %i.ue, ptr %i.tw, align 8, !tbaa !46
end_hunk_1
