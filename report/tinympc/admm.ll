Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/admm?download=true
inline.NumInlined: 3888
inline.NumDeleted: 1985
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 109
begin_hunk_0_@update_dual:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i132, %bb.ad
  %i.aaf = phi ptr [ %.pre222, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i132 ], [ %i.zm, %bb.ad ] ; 6 uses
  %i.aag = phi i64 [ %.pre21.i134, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i132 ], [ %i.zv, %bb.ad ]
  %i.aah = phi i64 [ %.pre.i133, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i132 ], [ %i.zt, %bb.ad ]
  %i.aai = ptrtoaddr ptr %i.aaf to i64            ; 3 uses
  %i.aaj = mul nsw i64 %i.aah, %i.aag             ; 7 uses
  %i.aak = sdiv i64 %i.aaj, 2
  %i.aal = shl nsw i64 %i.aak, 1                  ; 7 uses
  %i.aam = icmp sgt i64 %i.aaj, 1
  br i1 %i.aam, label %.lr.ph.i.i139, label %._crit_edge.i.i135

._crit_edge.i.i135:                               ; preds = %.lr.ph.i.i139, %bb.ag
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
  %1 = shl i64 %i.w, 3                            ; 2 uses
  %i.ab = add nuw i64 %i.x, 2305843009213693951
  %i.ac = mul i64 %i.j, %i.ab
  %i.ad = add i64 %i.ac, %i.w
  %i.ae = shl i64 %i.ad, 3
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.ae
  %scevgep681 = getelementptr i8, ptr %i.k, i64 %1
  %i.af = mul i64 %i.x, %i.w
  %i.ag = shl i64 %i.af, 3
  %scevgep682 = getelementptr i8, ptr %i.y, i64 %i.ag ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 8
  %bound0 = icmp ult ptr %i.y, %scevgep681
  %bound1 = icmp ult ptr %i.k, %scevgep682
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %i.ah = or i1 %found.conflict, %stride.check
  %bound0683 = icmp ult ptr %i.y, %scevgep
  %bound1684 = icmp ult ptr %i.h, %scevgep682
  %found.conflict685 = and i1 %bound0683, %bound1684
  %.mask = and i64 %i.j, 1152921504606846976
  %stride.check686 = icmp ne i64 %.mask, 0
  %i.ai = or i1 %found.conflict685, %stride.check686
  %conflict.rdx = or i1 %i.ah, %i.ai
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
  %wide.load687 = load <2 x double>, ptr %i.ao, align 8, !tbaa !46, !alias.scope !539
  %i.ap = getelementptr i8, ptr %i.am, i64 16
  %wide.load688 = load <2 x double>, ptr %i.am, align 8, !tbaa !46, !alias.scope !540
  %wide.load689 = load <2 x double>, ptr %i.ap, align 8, !tbaa !46, !alias.scope !540
  %i.aq = fneg <2 x double> %wide.load688
  %i.ar = fneg <2 x double> %wide.load689
  %i.as = fmul <2 x double> %wide.load, %i.aq
  %i.at = fmul <2 x double> %wide.load687, %i.ar
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
  %min.iters.check705 = icmp ult i64 %i.ck, 10
  br i1 %min.iters.check705, label %.lr.ph.i.i.i.i.i.i.preheader1424, label %vector.memcheck706

vector.memcheck706:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.cl = shl i64 %i.cf, 4                        ; 3 uses
  %i.cm = getelementptr i8, ptr %i.bz, i64 %i.cl  ; 2 uses
  %i.cn = mul i64 %i.cb, %i.cd
  %i.co = shl i64 %i.cn, 3                        ; 3 uses
  %i.cp = getelementptr i8, ptr %i.bz, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.cl
  %i.cr = getelementptr i8, ptr %i.bx, i64 %i.co
  %2 = getelementptr i8, ptr %i.by, i64 %i.cl
  %3 = getelementptr i8, ptr %i.by, i64 %i.co
  %bound0707 = icmp ult ptr %i.cm, %i.cr
  %bound1708 = icmp ult ptr %i.cq, %i.cp
  %found.conflict709 = and i1 %bound0707, %bound1708
  %bound0710 = icmp ult ptr %i.cm, %3
  %bound1711 = icmp ult ptr %2, %i.cp
  %found.conflict712 = and i1 %bound0710, %bound1711
  %conflict.rdx713 = or i1 %found.conflict709, %found.conflict712
  br i1 %conflict.rdx713, label %.lr.ph.i.i.i.i.i.i.preheader1424, label %vector.ph714

vector.ph714:                                     ; preds = %vector.memcheck706
  %n.vec715 = and i64 %i.ck, -4                   ; 3 uses
  %i.cs = add i64 %i.cg, %n.vec715
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body716

vector.body716:                                   ; preds = %vector.body716, %vector.ph714
  %index717 = phi i64 [ 0, %vector.ph714 ], [ %index.next724, %vector.body716 ] ; 2 uses
  %i.ct = add i64 %i.cg, %index717                ; 3 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ct ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load718 = load <2 x double>, ptr %i.cv, align 8, !tbaa !46, !alias.scope !544
  %wide.load719 = load <2 x double>, ptr %i.cx, align 8, !tbaa !46, !alias.scope !544
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load720 = load <2 x double>, ptr %i.cw, align 8, !tbaa !46, !alias.scope !545
  %wide.load721 = load <2 x double>, ptr %i.cy, align 8, !tbaa !46, !alias.scope !545
  %i.cz = fsub <2 x double> %wide.load718, %wide.load720
  %i.da = fsub <2 x double> %wide.load719, %wide.load721
  %i.db = fmul <2 x double> %broadcast.splat, %i.cz
  %i.dc = fmul <2 x double> %broadcast.splat, %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load722 = load <2 x double>, ptr %i.cu, align 8, !tbaa !46, !alias.scope !546, !noalias !547
  %wide.load723 = load <2 x double>, ptr %i.dd, align 8, !tbaa !46, !alias.scope !546, !noalias !547
  %i.de = fsub <2 x double> %wide.load722, %i.db
  %i.df = fsub <2 x double> %wide.load723, %i.dc
  store <2 x double> %i.de, ptr %i.cu, align 8, !tbaa !46, !alias.scope !546, !noalias !547
  store <2 x double> %i.df, ptr %i.dd, align 8, !tbaa !46, !alias.scope !546, !noalias !547
  %index.next724 = add nuw i64 %index717, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next724, %n.vec715
  br i1 %i.dg, label %middle.block725, label %vector.body716, !llvm.loop !371

middle.block725:                                  ; preds = %vector.body716
  %cmp.n726 = icmp eq i64 %i.ck, %n.vec715
  br i1 %cmp.n726, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader1424

.lr.ph.i.i.i.i.i.i.preheader1424:                 ; preds = %vector.memcheck706, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block725
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.cg, %vector.memcheck706 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cs, %middle.block725 ] ; 7 uses
  %i.dh = sub i64 %i.ce, %.05.i.i.i.i.i.i.ph
  %.neg1478 = add i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter1425 = and i64 %i.dh, 1
  %lcmp.mod1426.not = icmp eq i64 %xtraiter1425, 0
  br i1 %lcmp.mod1426.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader1424
  %i.di = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.05.i.i.i.i.i.i.ph
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.05.i.i.i.i.i.i.ph
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !46
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !46
  %i.dn = fsub double %i.dl, %i.dm
  %i.do = fmul double %i.bv, %i.dn
  %i.dp = load double, ptr %i.di, align 8, !tbaa !46
  %i.dq = fsub double %i.dp, %i.do
  store double %i.dq, ptr %i.di, align 8, !tbaa !46
  %i.dr = add nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader1424
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1424 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ds = icmp eq i64 %i.ce, %.neg1478
  br i1 %i.ds, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.05.i.i.i.i.i.i ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.05.i.i.i.i.i.i
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.05.i.i.i.i.i.i
  %i.dw = load double, ptr %i.du, align 8, !tbaa !46
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !46
  %i.dy = fsub double %i.dw, %i.dx
  %i.dz = fmul double %i.bv, %i.dy
  %i.ea = load double, ptr %i.dt, align 8, !tbaa !46
  %i.eb = fsub double %i.ea, %i.dz
  store double %i.eb, ptr %i.dt, align 8, !tbaa !46
  %i.ec = add nsw i64 %.05.i.i.i.i.i.i, 1         ; 3 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ec
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ec
  %i.eg = load double, ptr %i.ee, align 8, !tbaa !46
  %i.eh = load double, ptr %i.ef, align 8, !tbaa !46
  %i.ei = fsub double %i.eg, %i.eh
  %i.ej = fmul double %i.bv, %i.ei
  %i.ek = load double, ptr %i.ed, align 8, !tbaa !46
  %i.el = fsub double %i.ek, %i.ej
  store double %i.el, ptr %i.ed, align 8, !tbaa !46
  %i.em = add nsw i64 %.05.i.i.i.i.i.i, 2         ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.em, %i.ce
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !372

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.011.i.i.i.i.i ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.011.i.i.i.i.i
  %i.ep = load <2 x double>, ptr %i.eo, align 16, !tbaa !47
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.011.i.i.i.i.i
  %i.er = load <2 x double>, ptr %i.eq, align 16, !tbaa !47
  %i.es = fsub <2 x double> %i.ep, %i.er
  %i.et = fmul <2 x double> %i.ci, %i.es
  %i.eu = load <2 x double>, ptr %i.en, align 16, !tbaa !47
  %i.ev = fsub <2 x double> %i.eu, %i.et
  store <2 x double> %i.ev, ptr %i.en, align 16, !tbaa !47
  %i.ew = add nuw nsw i64 %.011.i.i.i.i.i, 2      ; 2 uses
  %i.ex = icmp slt i64 %i.ew, %i.cg
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !373

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block725, %._crit_edge.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !87
  %.not = icmp eq i32 %i.fb, 0
  br i1 %.not, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit100, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !17  ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 400
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !88
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.f, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit100

bb.f:                                             ; preds = %bb.e
  %i.fg = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 528
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 600
  %i.fj = load double, ptr %i.fg, align 8, !tbaa !46, !noalias !548 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !34 ; 7 uses
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !34 ; 7 uses
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !34 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !35 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !53 ; 2 uses
  %i.fs = mul nsw i64 %i.fr, %i.fp                ; 7 uses
  %i.ft = sdiv i64 %i.fs, 2                       ; 2 uses
  %i.fu = shl nsw i64 %i.ft, 1                    ; 7 uses
  %i.fv = icmp sgt i64 %i.fs, 1
  br i1 %i.fv, label %.lr.ph.i.preheader.i.i.i.i96, label %._crit_edge.i.i.i.i.i92

.lr.ph.i.preheader.i.i.i.i96:                     ; preds = %bb.f
  %.sroa.3.8.vec.insert.i.i.i.i97 = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fw = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i97, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i98

._crit_edge.i.i.i.i.i92:                          ; preds = %.lr.ph.i.i.i.i.i98, %bb.f
  %i.fx = icmp slt i64 %i.fu, %i.fs
  br i1 %i.fx, label %.lr.ph.i.i.i.i.i.i93.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit100

.lr.ph.i.i.i.i.i.i93.preheader:                   ; preds = %._crit_edge.i.i.i.i.i92
  %i.fy = sub i64 %i.fs, %i.fu                    ; 3 uses
  %min.iters.check743 = icmp ult i64 %i.fy, 10
  br i1 %min.iters.check743, label %.lr.ph.i.i.i.i.i.i93.preheader1423, label %vector.memcheck744

vector.memcheck744:                               ; preds = %.lr.ph.i.i.i.i.i.i93.preheader
  %i.fz = shl i64 %i.ft, 4                        ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fn, i64 %i.fz  ; 2 uses
  %i.gb = mul i64 %i.fp, %i.fr
  %i.gc = shl i64 %i.gb, 3                        ; 3 uses
  %i.gd = getelementptr i8, ptr %i.fn, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fl, i64 %i.fz
  %i.gf = getelementptr i8, ptr %i.fl, i64 %i.gc
  %4 = getelementptr i8, ptr %i.fm, i64 %i.fz
  %5 = getelementptr i8, ptr %i.fm, i64 %i.gc
  %bound0745 = icmp ult ptr %i.ga, %i.gf
  %bound1746 = icmp ult ptr %i.ge, %i.gd
  %found.conflict747 = and i1 %bound0745, %bound1746
  %bound0748 = icmp ult ptr %i.ga, %5
  %bound1749 = icmp ult ptr %4, %i.gd
  %found.conflict750 = and i1 %bound0748, %bound1749
  %conflict.rdx751 = or i1 %found.conflict747, %found.conflict750
  br i1 %conflict.rdx751, label %.lr.ph.i.i.i.i.i.i93.preheader1423, label %vector.ph752

vector.ph752:                                     ; preds = %vector.memcheck744
  %n.vec753 = and i64 %i.fy, -4                   ; 3 uses
  %i.gg = add i64 %i.fu, %n.vec753
  %broadcast.splatinsert754 = insertelement <2 x double> poison, double %i.fj, i64 0
  %broadcast.splat755 = shufflevector <2 x double> %broadcast.splatinsert754, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body756

vector.body756:                                   ; preds = %vector.body756, %vector.ph752
  %index757 = phi i64 [ 0, %vector.ph752 ], [ %index.next764, %vector.body756 ] ; 2 uses
  %i.gh = add i64 %i.fu, %index757                ; 3 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.gh ; 3 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.gh ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.gh ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %wide.load758 = load <2 x double>, ptr %i.gj, align 8, !tbaa !46, !alias.scope !549
  %wide.load759 = load <2 x double>, ptr %i.gl, align 8, !tbaa !46, !alias.scope !549
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load760 = load <2 x double>, ptr %i.gk, align 8, !tbaa !46, !alias.scope !550
  %wide.load761 = load <2 x double>, ptr %i.gm, align 8, !tbaa !46, !alias.scope !550
  %i.gn = fsub <2 x double> %wide.load758, %wide.load760
  %i.go = fsub <2 x double> %wide.load759, %wide.load761
  %i.gp = fmul <2 x double> %broadcast.splat755, %i.gn
  %i.gq = fmul <2 x double> %broadcast.splat755, %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %wide.load762 = load <2 x double>, ptr %i.gi, align 8, !tbaa !46, !alias.scope !551, !noalias !552
  %wide.load763 = load <2 x double>, ptr %i.gr, align 8, !tbaa !46, !alias.scope !551, !noalias !552
  %i.gs = fsub <2 x double> %wide.load762, %i.gp
  %i.gt = fsub <2 x double> %wide.load763, %i.gq
  store <2 x double> %i.gs, ptr %i.gi, align 8, !tbaa !46, !alias.scope !551, !noalias !552
  store <2 x double> %i.gt, ptr %i.gr, align 8, !tbaa !46, !alias.scope !551, !noalias !552
  %index.next764 = add nuw i64 %index757, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next764, %n.vec753
  br i1 %i.gu, label %middle.block765, label %vector.body756, !llvm.loop !380

middle.block765:                                  ; preds = %vector.body756
  %cmp.n766 = icmp eq i64 %i.fy, %n.vec753
  br i1 %cmp.n766, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit100, label %.lr.ph.i.i.i.i.i.i93.preheader1423

.lr.ph.i.i.i.i.i.i93.preheader1423:               ; preds = %vector.memcheck744, %.lr.ph.i.i.i.i.i.i93.preheader, %middle.block765
  %.05.i.i.i.i.i.i94.ph = phi i64 [ %i.fu, %vector.memcheck744 ], [ %i.fu, %.lr.ph.i.i.i.i.i.i93.preheader ], [ %i.gg, %middle.block765 ] ; 7 uses
  %i.gv = sub i64 %i.fs, %.05.i.i.i.i.i.i94.ph
  %.neg1479 = add i64 %.05.i.i.i.i.i.i94.ph, 1
  %xtraiter1427 = and i64 %i.gv, 1
  %lcmp.mod1428.not = icmp eq i64 %xtraiter1427, 0
  br i1 %lcmp.mod1428.not, label %.lr.ph.i.i.i.i.i.i93.prol.loopexit, label %.lr.ph.i.i.i.i.i.i93.prol

.lr.ph.i.i.i.i.i.i93.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i93.preheader1423
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %.05.i.i.i.i.i.i94.ph ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.05.i.i.i.i.i.i94.ph
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %.05.i.i.i.i.i.i94.ph
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !46
  %i.ha = load double, ptr %i.gy, align 8, !tbaa !46
  %i.hb = fsub double %i.gz, %i.ha
  %i.hc = fmul double %i.fj, %i.hb
  %i.hd = load double, ptr %i.gw, align 8, !tbaa !46
  %i.he = fsub double %i.hd, %i.hc
  store double %i.he, ptr %i.gw, align 8, !tbaa !46
  %i.hf = add nsw i64 %.05.i.i.i.i.i.i94.ph, 1
  br label %.lr.ph.i.i.i.i.i.i93.prol.loopexit

.lr.ph.i.i.i.i.i.i93.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i93.prol, %.lr.ph.i.i.i.i.i.i93.preheader1423
  %.05.i.i.i.i.i.i94.unr = phi i64 [ %.05.i.i.i.i.i.i94.ph, %.lr.ph.i.i.i.i.i.i93.preheader1423 ], [ %i.hf, %.lr.ph.i.i.i.i.i.i93.prol ]
  %i.hg = icmp eq i64 %i.fs, %.neg1479
  br i1 %i.hg, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit100, label %.lr.ph.i.i.i.i.i.i93

.lr.ph.i.i.i.i.i.i93:                             ; preds = %.lr.ph.i.i.i.i.i.i93.prol.loopexit, %.lr.ph.i.i.i.i.i.i93
  %.05.i.i.i.i.i.i94 = phi i64 [ %i.ia, %.lr.ph.i.i.i.i.i.i93 ], [ %.05.i.i.i.i.i.i94.unr, %.lr.ph.i.i.i.i.i.i93.prol.loopexit ] ; 5 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %.05.i.i.i.i.i.i94 ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.05.i.i.i.i.i.i94
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %.05.i.i.i.i.i.i94
  %i.hk = load double, ptr %i.hi, align 8, !tbaa !46
  %i.hl = load double, ptr %i.hj, align 8, !tbaa !46
  %i.hm = fsub double %i.hk, %i.hl
  %i.hn = fmul double %i.fj, %i.hm
  %i.ho = load double, ptr %i.hh, align 8, !tbaa !46
  %i.hp = fsub double %i.ho, %i.hn
  store double %i.hp, ptr %i.hh, align 8, !tbaa !46
  %i.hq = add nsw i64 %.05.i.i.i.i.i.i94, 1       ; 3 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.hq
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.hq
  %i.hu = load double, ptr %i.hs, align 8, !tbaa !46
  %i.hv = load double, ptr %i.ht, align 8, !tbaa !46
  %i.hw = fsub double %i.hu, %i.hv
  %i.hx = fmul double %i.fj, %i.hw
  %i.hy = load double, ptr %i.hr, align 8, !tbaa !46
  %i.hz = fsub double %i.hy, %i.hx
  store double %i.hz, ptr %i.hr, align 8, !tbaa !46
  %i.ia = add nsw i64 %.05.i.i.i.i.i.i94, 2       ; 2 uses
  %exitcond.not.i.i.i.i.i.i95.1 = icmp eq i64 %i.ia, %i.fs
  br i1 %exitcond.not.i.i.i.i.i.i95.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit100, label %.lr.ph.i.i.i.i.i.i93, !llvm.loop !381

.lr.ph.i.i.i.i.i98:                               ; preds = %.lr.ph.i.i.i.i.i98, %.lr.ph.i.preheader.i.i.i.i96
  %.011.i.i.i.i.i99 = phi i64 [ %i.ik, %.lr.ph.i.i.i.i.i98 ], [ 0, %.lr.ph.i.preheader.i.i.i.i96 ] ; 4 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.011.i.i.i.i.i99 ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.011.i.i.i.i.i99
  %i.id = load <2 x double>, ptr %i.ic, align 16, !tbaa !47
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.011.i.i.i.i.i99
  %i.if = load <2 x double>, ptr %i.ie, align 16, !tbaa !47
  %i.ig = fsub <2 x double> %i.id, %i.if
  %i.ih = fmul <2 x double> %i.fw, %i.ig
  %i.ii = load <2 x double>, ptr %i.ib, align 16, !tbaa !47
  %i.ij = fsub <2 x double> %i.ii, %i.ih
  store <2 x double> %i.ij, ptr %i.ib, align 16, !tbaa !47
  %i.ik = add nuw nsw i64 %.011.i.i.i.i.i99, 2    ; 2 uses
  %i.il = icmp slt i64 %i.ik, %i.fu
  br i1 %i.il, label %.lr.ph.i.i.i.i.i98, label %._crit_edge.i.i.i.i.i92, !llvm.loop !373

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit100: ; preds = %.lr.ph.i.i.i.i.i.i93.prol.loopexit, %.lr.ph.i.i.i.i.i.i93, %middle.block765, %._crit_edge.i.i.i.i.i92, %bb.e, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit
  %i.im = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  %i.io = load i32, ptr %i.in, align 8, !tbaa !91
  %.not83 = icmp eq i32 %i.io, 0
  br i1 %.not83, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit110, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit100
  %i.ip = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.iq = load ptr, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 760
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 832
  %i.it = load double, ptr %i.ip, align 8, !tbaa !46, !noalias !553 ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.iv = load ptr, ptr %i.ir, align 8, !tbaa !34 ; 7 uses
  %i.iw = load ptr, ptr %i.is, align 8, !tbaa !34 ; 7 uses
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !34 ; 7 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 72
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !35 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 80
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !53 ; 2 uses
  %i.jc = mul nsw i64 %i.jb, %i.iz                ; 7 uses
  %i.jd = sdiv i64 %i.jc, 2                       ; 2 uses
  %i.je = shl nsw i64 %i.jd, 1                    ; 7 uses
  %i.jf = icmp sgt i64 %i.jc, 1
  br i1 %i.jf, label %.lr.ph.i.preheader.i.i.i.i106, label %._crit_edge.i.i.i.i.i102

.lr.ph.i.preheader.i.i.i.i106:                    ; preds = %bb.g
  %.sroa.3.8.vec.insert.i.i.i.i107 = insertelement <2 x double> poison, double %i.it, i64 0
  %i.jg = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i107, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i108

._crit_edge.i.i.i.i.i102:                         ; preds = %.lr.ph.i.i.i.i.i108, %bb.g
  %i.jh = icmp slt i64 %i.je, %i.jc
  br i1 %i.jh, label %.lr.ph.i.i.i.i.i.i103.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit110

.lr.ph.i.i.i.i.i.i103.preheader:                  ; preds = %._crit_edge.i.i.i.i.i102
  %i.ji = sub i64 %i.jc, %i.je                    ; 3 uses
  %min.iters.check783 = icmp ult i64 %i.ji, 10
  br i1 %min.iters.check783, label %.lr.ph.i.i.i.i.i.i103.preheader1422, label %vector.memcheck784

vector.memcheck784:                               ; preds = %.lr.ph.i.i.i.i.i.i103.preheader
  %i.jj = shl i64 %i.jd, 4                        ; 3 uses
  %i.jk = getelementptr i8, ptr %i.ix, i64 %i.jj  ; 2 uses
  %i.jl = mul i64 %i.iz, %i.jb
  %i.jm = shl i64 %i.jl, 3                        ; 3 uses
  %i.jn = getelementptr i8, ptr %i.ix, i64 %i.jm  ; 2 uses
  %i.jo = getelementptr i8, ptr %i.iv, i64 %i.jj
  %i.jp = getelementptr i8, ptr %i.iv, i64 %i.jm
  %6 = getelementptr i8, ptr %i.iw, i64 %i.jj
  %7 = getelementptr i8, ptr %i.iw, i64 %i.jm
  %bound0785 = icmp ult ptr %i.jk, %i.jp
  %bound1786 = icmp ult ptr %i.jo, %i.jn
  %found.conflict787 = and i1 %bound0785, %bound1786
  %bound0788 = icmp ult ptr %i.jk, %7
  %bound1789 = icmp ult ptr %6, %i.jn
  %found.conflict790 = and i1 %bound0788, %bound1789
  %conflict.rdx791 = or i1 %found.conflict787, %found.conflict790
  br i1 %conflict.rdx791, label %.lr.ph.i.i.i.i.i.i103.preheader1422, label %vector.ph792

vector.ph792:                                     ; preds = %vector.memcheck784
  %n.vec793 = and i64 %i.ji, -4                   ; 3 uses
  %i.jq = add i64 %i.je, %n.vec793
  %broadcast.splatinsert794 = insertelement <2 x double> poison, double %i.it, i64 0
  %broadcast.splat795 = shufflevector <2 x double> %broadcast.splatinsert794, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body796

vector.body796:                                   ; preds = %vector.body796, %vector.ph792
  %index797 = phi i64 [ 0, %vector.ph792 ], [ %index.next804, %vector.body796 ] ; 2 uses
  %i.jr = add i64 %i.je, %index797                ; 3 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.jr ; 3 uses
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.jr ; 2 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.jr ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load798 = load <2 x double>, ptr %i.jt, align 8, !tbaa !46, !alias.scope !554
  %wide.load799 = load <2 x double>, ptr %i.jv, align 8, !tbaa !46, !alias.scope !554
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %wide.load800 = load <2 x double>, ptr %i.ju, align 8, !tbaa !46, !alias.scope !555
  %wide.load801 = load <2 x double>, ptr %i.jw, align 8, !tbaa !46, !alias.scope !555
  %i.jx = fsub <2 x double> %wide.load798, %wide.load800
  %i.jy = fsub <2 x double> %wide.load799, %wide.load801
  %i.jz = fmul <2 x double> %broadcast.splat795, %i.jx
  %i.ka = fmul <2 x double> %broadcast.splat795, %i.jy
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %wide.load802 = load <2 x double>, ptr %i.js, align 8, !tbaa !46, !alias.scope !556, !noalias !557
  %wide.load803 = load <2 x double>, ptr %i.kb, align 8, !tbaa !46, !alias.scope !556, !noalias !557
  %i.kc = fsub <2 x double> %wide.load802, %i.jz
  %i.kd = fsub <2 x double> %wide.load803, %i.ka
  store <2 x double> %i.kc, ptr %i.js, align 8, !tbaa !46, !alias.scope !556, !noalias !557
  store <2 x double> %i.kd, ptr %i.kb, align 8, !tbaa !46, !alias.scope !556, !noalias !557
  %index.next804 = add nuw i64 %index797, 4       ; 2 uses
  %i.ke = icmp eq i64 %index.next804, %n.vec793
  br i1 %i.ke, label %middle.block805, label %vector.body796, !llvm.loop !388

middle.block805:                                  ; preds = %vector.body796
  %cmp.n806 = icmp eq i64 %i.ji, %n.vec793
  br i1 %cmp.n806, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit110, label %.lr.ph.i.i.i.i.i.i103.preheader1422

.lr.ph.i.i.i.i.i.i103.preheader1422:              ; preds = %vector.memcheck784, %.lr.ph.i.i.i.i.i.i103.preheader, %middle.block805
  %.05.i.i.i.i.i.i104.ph = phi i64 [ %i.je, %vector.memcheck784 ], [ %i.je, %.lr.ph.i.i.i.i.i.i103.preheader ], [ %i.jq, %middle.block805 ] ; 7 uses
  %i.kf = sub i64 %i.jc, %.05.i.i.i.i.i.i104.ph
  %.neg1480 = add i64 %.05.i.i.i.i.i.i104.ph, 1
  %xtraiter1429 = and i64 %i.kf, 1
  %lcmp.mod1430.not = icmp eq i64 %xtraiter1429, 0
  br i1 %lcmp.mod1430.not, label %.lr.ph.i.i.i.i.i.i103.prol.loopexit, label %.lr.ph.i.i.i.i.i.i103.prol

.lr.ph.i.i.i.i.i.i103.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i103.preheader1422
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %.05.i.i.i.i.i.i104.ph ; 2 uses
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %.05.i.i.i.i.i.i104.ph
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %.05.i.i.i.i.i.i104.ph
  %i.kj = load double, ptr %i.kh, align 8, !tbaa !46
  %i.kk = load double, ptr %i.ki, align 8, !tbaa !46
  %i.kl = fsub double %i.kj, %i.kk
  %i.km = fmul double %i.it, %i.kl
  %i.kn = load double, ptr %i.kg, align 8, !tbaa !46
  %i.ko = fsub double %i.kn, %i.km
  store double %i.ko, ptr %i.kg, align 8, !tbaa !46
  %i.kp = add nsw i64 %.05.i.i.i.i.i.i104.ph, 1
  br label %.lr.ph.i.i.i.i.i.i103.prol.loopexit

.lr.ph.i.i.i.i.i.i103.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i103.prol, %.lr.ph.i.i.i.i.i.i103.preheader1422
  %.05.i.i.i.i.i.i104.unr = phi i64 [ %.05.i.i.i.i.i.i104.ph, %.lr.ph.i.i.i.i.i.i103.preheader1422 ], [ %i.kp, %.lr.ph.i.i.i.i.i.i103.prol ]
  %i.kq = icmp eq i64 %i.jc, %.neg1480
  br i1 %i.kq, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit110, label %.lr.ph.i.i.i.i.i.i103

.lr.ph.i.i.i.i.i.i103:                            ; preds = %.lr.ph.i.i.i.i.i.i103.prol.loopexit, %.lr.ph.i.i.i.i.i.i103
  %.05.i.i.i.i.i.i104 = phi i64 [ %i.lk, %.lr.ph.i.i.i.i.i.i103 ], [ %.05.i.i.i.i.i.i104.unr, %.lr.ph.i.i.i.i.i.i103.prol.loopexit ] ; 5 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %.05.i.i.i.i.i.i104 ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %.05.i.i.i.i.i.i104
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %.05.i.i.i.i.i.i104
  %i.ku = load double, ptr %i.ks, align 8, !tbaa !46
  %i.kv = load double, ptr %i.kt, align 8, !tbaa !46
  %i.kw = fsub double %i.ku, %i.kv
  %i.kx = fmul double %i.it, %i.kw
  %i.ky = load double, ptr %i.kr, align 8, !tbaa !46
  %i.kz = fsub double %i.ky, %i.kx
  store double %i.kz, ptr %i.kr, align 8, !tbaa !46
  %i.la = add nsw i64 %.05.i.i.i.i.i.i104, 1      ; 3 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.la
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.la
  %i.le = load double, ptr %i.lc, align 8, !tbaa !46
  %i.lf = load double, ptr %i.ld, align 8, !tbaa !46
  %i.lg = fsub double %i.le, %i.lf
  %i.lh = fmul double %i.it, %i.lg
  %i.li = load double, ptr %i.lb, align 8, !tbaa !46
  %i.lj = fsub double %i.li, %i.lh
  store double %i.lj, ptr %i.lb, align 8, !tbaa !46
  %i.lk = add nsw i64 %.05.i.i.i.i.i.i104, 2      ; 2 uses
  %exitcond.not.i.i.i.i.i.i105.1 = icmp eq i64 %i.lk, %i.jc
  br i1 %exitcond.not.i.i.i.i.i.i105.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit110, label %.lr.ph.i.i.i.i.i.i103, !llvm.loop !389

.lr.ph.i.i.i.i.i108:                              ; preds = %.lr.ph.i.i.i.i.i108, %.lr.ph.i.preheader.i.i.i.i106
  %.011.i.i.i.i.i109 = phi i64 [ %i.lu, %.lr.ph.i.i.i.i.i108 ], [ 0, %.lr.ph.i.preheader.i.i.i.i106 ] ; 4 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.011.i.i.i.i.i109 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.011.i.i.i.i.i109
  %i.ln = load <2 x double>, ptr %i.lm, align 16, !tbaa !47
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.011.i.i.i.i.i109
  %i.lp = load <2 x double>, ptr %i.lo, align 16, !tbaa !47
  %i.lq = fsub <2 x double> %i.ln, %i.lp
  %i.lr = fmul <2 x double> %i.jg, %i.lq
  %i.ls = load <2 x double>, ptr %i.ll, align 16, !tbaa !47
  %i.lt = fsub <2 x double> %i.ls, %i.lr
  store <2 x double> %i.lt, ptr %i.ll, align 16, !tbaa !47
  %i.lu = add nuw nsw i64 %.011.i.i.i.i.i109, 2   ; 2 uses
  %i.lv = icmp slt i64 %i.lu, %i.je
  br i1 %i.lv, label %.lr.ph.i.i.i.i.i108, label %._crit_edge.i.i.i.i.i102, !llvm.loop !373

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit110: ; preds = %.lr.ph.i.i.i.i.i.i103.prol.loopexit, %.lr.ph.i.i.i.i.i.i103, %middle.block805, %._crit_edge.i.i.i.i.i102, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit100
  %i.lw = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !93
  %.not84 = icmp eq i32 %i.ly, 0
  br i1 %.not84, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit110
  %i.lz = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.ma = load ptr, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1008
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 1080
  %i.md = load double, ptr %i.lz, align 8, !tbaa !46, !noalias !558 ; 5 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 64
  %i.mf = load ptr, ptr %i.mb, align 8, !tbaa !34 ; 7 uses
  %i.mg = load ptr, ptr %i.mc, align 8, !tbaa !34 ; 7 uses
  %i.mh = load ptr, ptr %i.me, align 8, !tbaa !34 ; 7 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 72
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !35 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 80
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !53 ; 2 uses
  %i.mm = mul nsw i64 %i.ml, %i.mj                ; 7 uses
  %i.mn = sdiv i64 %i.mm, 2                       ; 2 uses
  %i.mo = shl nsw i64 %i.mn, 1                    ; 7 uses
  %i.mp = icmp sgt i64 %i.mm, 1
  br i1 %i.mp, label %.lr.ph.i.preheader.i.i.i.i116, label %._crit_edge.i.i.i.i.i112

.lr.ph.i.preheader.i.i.i.i116:                    ; preds = %bb.h
  %.sroa.3.8.vec.insert.i.i.i.i117 = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mq = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i117, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i118

._crit_edge.i.i.i.i.i112:                         ; preds = %.lr.ph.i.i.i.i.i118, %bb.h
  %i.mr = icmp slt i64 %i.mo, %i.mm
  br i1 %i.mr, label %.lr.ph.i.i.i.i.i.i113.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120

.lr.ph.i.i.i.i.i.i113.preheader:                  ; preds = %._crit_edge.i.i.i.i.i112
  %i.ms = sub i64 %i.mm, %i.mo                    ; 3 uses
  %min.iters.check823 = icmp ult i64 %i.ms, 10
  br i1 %min.iters.check823, label %.lr.ph.i.i.i.i.i.i113.preheader1421, label %vector.memcheck824

vector.memcheck824:                               ; preds = %.lr.ph.i.i.i.i.i.i113.preheader
  %i.mt = shl i64 %i.mn, 4                        ; 3 uses
  %i.mu = getelementptr i8, ptr %i.mh, i64 %i.mt  ; 2 uses
  %i.mv = mul i64 %i.mj, %i.ml
  %i.mw = shl i64 %i.mv, 3                        ; 3 uses
  %i.mx = getelementptr i8, ptr %i.mh, i64 %i.mw  ; 2 uses
  %i.my = getelementptr i8, ptr %i.mf, i64 %i.mt
  %i.mz = getelementptr i8, ptr %i.mf, i64 %i.mw
  %8 = getelementptr i8, ptr %i.mg, i64 %i.mt
  %9 = getelementptr i8, ptr %i.mg, i64 %i.mw
  %bound0825 = icmp ult ptr %i.mu, %i.mz
  %bound1826 = icmp ult ptr %i.my, %i.mx
  %found.conflict827 = and i1 %bound0825, %bound1826
  %bound0828 = icmp ult ptr %i.mu, %9
  %bound1829 = icmp ult ptr %8, %i.mx
  %found.conflict830 = and i1 %bound0828, %bound1829
  %conflict.rdx831 = or i1 %found.conflict827, %found.conflict830
  br i1 %conflict.rdx831, label %.lr.ph.i.i.i.i.i.i113.preheader1421, label %vector.ph832

vector.ph832:                                     ; preds = %vector.memcheck824
  %n.vec833 = and i64 %i.ms, -4                   ; 3 uses
  %i.na = add i64 %i.mo, %n.vec833
  %broadcast.splatinsert834 = insertelement <2 x double> poison, double %i.md, i64 0
  %broadcast.splat835 = shufflevector <2 x double> %broadcast.splatinsert834, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body836

vector.body836:                                   ; preds = %vector.body836, %vector.ph832
  %index837 = phi i64 [ 0, %vector.ph832 ], [ %index.next844, %vector.body836 ] ; 2 uses
  %i.nb = add i64 %i.mo, %index837                ; 3 uses
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.nb ; 3 uses
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %i.nb ; 2 uses
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %i.nb ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %wide.load838 = load <2 x double>, ptr %i.nd, align 8, !tbaa !46, !alias.scope !559
  %wide.load839 = load <2 x double>, ptr %i.nf, align 8, !tbaa !46, !alias.scope !559
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %wide.load840 = load <2 x double>, ptr %i.ne, align 8, !tbaa !46, !alias.scope !560
  %wide.load841 = load <2 x double>, ptr %i.ng, align 8, !tbaa !46, !alias.scope !560
  %i.nh = fsub <2 x double> %wide.load838, %wide.load840
  %i.ni = fsub <2 x double> %wide.load839, %wide.load841
  %i.nj = fmul <2 x double> %broadcast.splat835, %i.nh
  %i.nk = fmul <2 x double> %broadcast.splat835, %i.ni
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %wide.load842 = load <2 x double>, ptr %i.nc, align 8, !tbaa !46, !alias.scope !561, !noalias !562
  %wide.load843 = load <2 x double>, ptr %i.nl, align 8, !tbaa !46, !alias.scope !561, !noalias !562
  %i.nm = fsub <2 x double> %wide.load842, %i.nj
  %i.nn = fsub <2 x double> %wide.load843, %i.nk
  store <2 x double> %i.nm, ptr %i.nc, align 8, !tbaa !46, !alias.scope !561, !noalias !562
  store <2 x double> %i.nn, ptr %i.nl, align 8, !tbaa !46, !alias.scope !561, !noalias !562
  %index.next844 = add nuw i64 %index837, 4       ; 2 uses
  %i.no = icmp eq i64 %index.next844, %n.vec833
  br i1 %i.no, label %middle.block845, label %vector.body836, !llvm.loop !396

middle.block845:                                  ; preds = %vector.body836
  %cmp.n846 = icmp eq i64 %i.ms, %n.vec833
  br i1 %cmp.n846, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120, label %.lr.ph.i.i.i.i.i.i113.preheader1421

.lr.ph.i.i.i.i.i.i113.preheader1421:              ; preds = %vector.memcheck824, %.lr.ph.i.i.i.i.i.i113.preheader, %middle.block845
  %.05.i.i.i.i.i.i114.ph = phi i64 [ %i.mo, %vector.memcheck824 ], [ %i.mo, %.lr.ph.i.i.i.i.i.i113.preheader ], [ %i.na, %middle.block845 ] ; 7 uses
  %i.np = sub i64 %i.mm, %.05.i.i.i.i.i.i114.ph
  %.neg1481 = add i64 %.05.i.i.i.i.i.i114.ph, 1
  %xtraiter1431 = and i64 %i.np, 1
  %lcmp.mod1432.not = icmp eq i64 %xtraiter1431, 0
  br i1 %lcmp.mod1432.not, label %.lr.ph.i.i.i.i.i.i113.prol.loopexit, label %.lr.ph.i.i.i.i.i.i113.prol

.lr.ph.i.i.i.i.i.i113.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i113.preheader1421
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %.05.i.i.i.i.i.i114.ph ; 2 uses
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %.05.i.i.i.i.i.i114.ph
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %.05.i.i.i.i.i.i114.ph
  %i.nt = load double, ptr %i.nr, align 8, !tbaa !46
  %i.nu = load double, ptr %i.ns, align 8, !tbaa !46
  %i.nv = fsub double %i.nt, %i.nu
  %i.nw = fmul double %i.md, %i.nv
  %i.nx = load double, ptr %i.nq, align 8, !tbaa !46
  %i.ny = fsub double %i.nx, %i.nw
  store double %i.ny, ptr %i.nq, align 8, !tbaa !46
  %i.nz = add nsw i64 %.05.i.i.i.i.i.i114.ph, 1
  br label %.lr.ph.i.i.i.i.i.i113.prol.loopexit

.lr.ph.i.i.i.i.i.i113.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i113.prol, %.lr.ph.i.i.i.i.i.i113.preheader1421
  %.05.i.i.i.i.i.i114.unr = phi i64 [ %.05.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i113.preheader1421 ], [ %i.nz, %.lr.ph.i.i.i.i.i.i113.prol ]
  %i.oa = icmp eq i64 %i.mm, %.neg1481
  br i1 %i.oa, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120, label %.lr.ph.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i113:                            ; preds = %.lr.ph.i.i.i.i.i.i113.prol.loopexit, %.lr.ph.i.i.i.i.i.i113
  %.05.i.i.i.i.i.i114 = phi i64 [ %i.ou, %.lr.ph.i.i.i.i.i.i113 ], [ %.05.i.i.i.i.i.i114.unr, %.lr.ph.i.i.i.i.i.i113.prol.loopexit ] ; 5 uses
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %.05.i.i.i.i.i.i114 ; 2 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %.05.i.i.i.i.i.i114
  %i.od = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %.05.i.i.i.i.i.i114
  %i.oe = load double, ptr %i.oc, align 8, !tbaa !46
  %i.of = load double, ptr %i.od, align 8, !tbaa !46
  %i.og = fsub double %i.oe, %i.of
  %i.oh = fmul double %i.md, %i.og
  %i.oi = load double, ptr %i.ob, align 8, !tbaa !46
  %i.oj = fsub double %i.oi, %i.oh
  store double %i.oj, ptr %i.ob, align 8, !tbaa !46
  %i.ok = add nsw i64 %.05.i.i.i.i.i.i114, 1      ; 3 uses
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.ok ; 2 uses
  %i.om = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %i.ok
  %i.on = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %i.ok
  %i.oo = load double, ptr %i.om, align 8, !tbaa !46
  %i.op = load double, ptr %i.on, align 8, !tbaa !46
  %i.oq = fsub double %i.oo, %i.op
  %i.or = fmul double %i.md, %i.oq
  %i.os = load double, ptr %i.ol, align 8, !tbaa !46
  %i.ot = fsub double %i.os, %i.or
  store double %i.ot, ptr %i.ol, align 8, !tbaa !46
  %i.ou = add nsw i64 %.05.i.i.i.i.i.i114, 2      ; 2 uses
  %exitcond.not.i.i.i.i.i.i115.1 = icmp eq i64 %i.ou, %i.mm
  br i1 %exitcond.not.i.i.i.i.i.i115.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120, label %.lr.ph.i.i.i.i.i.i113, !llvm.loop !397

.lr.ph.i.i.i.i.i118:                              ; preds = %.lr.ph.i.i.i.i.i118, %.lr.ph.i.preheader.i.i.i.i116
  %.011.i.i.i.i.i119 = phi i64 [ %i.pe, %.lr.ph.i.i.i.i.i118 ], [ 0, %.lr.ph.i.preheader.i.i.i.i116 ] ; 4 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %.011.i.i.i.i.i119 ; 2 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.011.i.i.i.i.i119
  %i.ox = load <2 x double>, ptr %i.ow, align 16, !tbaa !47
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %.011.i.i.i.i.i119
  %i.oz = load <2 x double>, ptr %i.oy, align 16, !tbaa !47
  %i.pa = fsub <2 x double> %i.ox, %i.oz
  %i.pb = fmul <2 x double> %i.mq, %i.pa
  %i.pc = load <2 x double>, ptr %i.ov, align 16, !tbaa !47
  %i.pd = fsub <2 x double> %i.pc, %i.pb
  store <2 x double> %i.pd, ptr %i.ov, align 16, !tbaa !47
  %i.pe = add nuw nsw i64 %.011.i.i.i.i.i119, 2   ; 2 uses
  %i.pf = icmp slt i64 %i.pe, %i.mo
  br i1 %i.pf, label %.lr.ph.i.i.i.i.i118, label %._crit_edge.i.i.i.i.i112, !llvm.loop !373

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120: ; preds = %.lr.ph.i.i.i.i.i.i113.prol.loopexit, %.lr.ph.i.i.i.i.i.i113, %middle.block845, %._crit_edge.i.i.i.i.i112, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit110
  %i.pg = load ptr, ptr %i.a, align 8, !tbaa !17  ; 8 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 1248
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 1144
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 1264
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !53, !noalias !563 ; 6 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 88 ; 2 uses
  %i.pm = load ptr, ptr %i.ph, align 8, !tbaa !34 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 1256
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !35 ; 3 uses
  %i.pp = load ptr, ptr %i.pi, align 8, !tbaa !63 ; 6 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pg, i64 1152
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !77 ; 5 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pg, i64 96 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !35
  %.not.i.i.i.i.i.i.i.i124 = icmp eq i64 %i.pt, %i.pr
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pg, i64 104 ; 2 uses
  %i.pv = load i64, ptr %i.pu, align 8
  %.not8.i.i.i.i.i.i.i.i125 = icmp eq i64 %i.pv, %i.pk
  %or.cond.i.i.i.i.i.i.i.i126 = select i1 %.not.i.i.i.i.i.i.i.i124, i1 %.not8.i.i.i.i.i.i.i.i125, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i126, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120
  %i.pw = icmp eq i64 %i.pk, 0
  br i1 %i.pw, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.px = sdiv i64 9223372036854775807, %i.pk
  %i.py = icmp sgt i64 %i.pr, %i.px
  br i1 %i.py, label %.noexc.i.i.i.i.i.i.i141, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127

.noexc.i.i.i.i.i.i.i141:                          ; preds = %bb.j
  %i.pz = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.pz, align 8, !tbaa !79
  tail call void @__cxa_throw(ptr nonnull %i.pz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127: ; preds = %bb.j, %bb.i
  %i.qa = mul nsw i64 %i.pr, %i.pk
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.pl, i64 noundef %i.qa, i64 noundef %i.pr, i64 noundef %i.pk)
  %.pr.i.i.i.i.i.i.i128 = load i64, ptr %i.pu, align 8, !tbaa !53
  %.pre.i.i.i.i.i.i.i129 = load i64, ptr %i.ps, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120
  %i.qb = phi i64 [ %.pre.i.i.i.i.i.i.i129, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127 ], [ %i.pr, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120 ] ; 11 uses
  %i.qc = phi i64 [ %.pr.i.i.i.i.i.i.i128, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i127 ], [ %i.pk, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit120 ] ; 4 uses
  %i.qd = load ptr, ptr %i.pl, align 8, !tbaa !34 ; 4 uses
  %i.qe = icmp sgt i64 %i.qc, 0
  %i.qf = icmp sgt i64 %i.qb, 0
  %or.cond.i.i.i.i.i.i.i130 = select i1 %i.qe, i1 %i.qf, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i130, label %.preheader.i.i.i.i.i.i.i.i131.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142

.preheader.i.i.i.i.i.i.i.i131.preheader:          ; preds = %bb.k
  %10 = shl i64 %i.qb, 3                          ; 2 uses
  %i.qg = add nuw i64 %i.qc, 2305843009213693951
  %i.qh = mul i64 %i.po, %i.qg
  %i.qi = add i64 %i.qh, %i.qb
  %i.qj = shl i64 %i.qi, 3
  %scevgep861 = getelementptr i8, ptr %i.pm, i64 %i.qj
  %scevgep862 = getelementptr i8, ptr %i.pp, i64 %10
  %i.qk = mul i64 %i.qc, %i.qb
  %i.ql = shl i64 %i.qk, 3
  %scevgep863 = getelementptr i8, ptr %i.qd, i64 %i.ql ; 2 uses
  %min.iters.check865 = icmp ult i64 %i.qb, 8
  %bound0867 = icmp ult ptr %i.qd, %scevgep862
  %bound1868 = icmp ult ptr %i.pp, %scevgep863
  %found.conflict869 = and i1 %bound0867, %bound1868
  %stride.check870 = icmp slt i64 %10, 0
  %i.qm = or i1 %found.conflict869, %stride.check870
  %bound0871 = icmp ult ptr %i.qd, %scevgep861
  %bound1872 = icmp ult ptr %i.pm, %scevgep863
  %found.conflict873 = and i1 %bound0871, %bound1872
  %.mask1399 = and i64 %i.po, 1152921504606846976
  %stride.check874 = icmp ne i64 %.mask1399, 0
  %i.qn = or i1 %found.conflict873, %stride.check874
  %conflict.rdx875 = or i1 %i.qm, %i.qn
  %n.vec877 = and i64 %i.qb, 9223372036854775804  ; 3 uses
  %cmp.n886 = icmp eq i64 %i.qb, %n.vec877
  %xtraiter1433 = and i64 %i.qb, 1
  %lcmp.mod1434.not = icmp eq i64 %xtraiter1433, 0
  br label %.preheader.i.i.i.i.i.i.i.i131

.preheader.i.i.i.i.i.i.i.i131:                    ; preds = %.preheader.i.i.i.i.i.i.i.i131.preheader, %._crit_edge.i.i.i.i.i.i.i.i139
  %.0812.i.i.i.i.i.i.i.i132 = phi i64 [ %i.ri, %._crit_edge.i.i.i.i.i.i.i.i139 ], [ 0, %.preheader.i.i.i.i.i.i.i.i131.preheader ] ; 3 uses
  %i.qo = mul nuw nsw i64 %.0812.i.i.i.i.i.i.i.i132, %i.qb
  %invariant.gep.i.i.i.i.i.i.i.i133 = getelementptr [8 x i8], ptr %i.qd, i64 %i.qo ; 4 uses
  %i.qp = mul nsw i64 %.0812.i.i.i.i.i.i.i.i132, %i.po
  %invariant.gep10.i.i.i.i.i.i.i.i134 = getelementptr [8 x i8], ptr %i.pm, i64 %i.qp ; 4 uses
  %brmerge1504 = select i1 %min.iters.check865, i1 true, i1 %conflict.rdx875
  br i1 %brmerge1504, label %scalar.ph864.preheader, label %vector.body878

vector.body878:                                   ; preds = %.preheader.i.i.i.i.i.i.i.i131, %vector.body878
  %index879 = phi i64 [ %index.next884, %vector.body878 ], [ 0, %.preheader.i.i.i.i.i.i.i.i131 ] ; 4 uses
  %i.qq = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i133, i64 %index879 ; 2 uses
  %i.qr = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i134, i64 %index879 ; 2 uses
  %i.qs = getelementptr [8 x i8], ptr %i.pp, i64 %index879 ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 16
  %wide.load880 = load <2 x double>, ptr %i.qs, align 8, !tbaa !46, !alias.scope !564
  %wide.load881 = load <2 x double>, ptr %i.qt, align 8, !tbaa !46, !alias.scope !564
  %i.qu = getelementptr i8, ptr %i.qr, i64 16
  %wide.load882 = load <2 x double>, ptr %i.qr, align 8, !tbaa !46, !alias.scope !565
  %wide.load883 = load <2 x double>, ptr %i.qu, align 8, !tbaa !46, !alias.scope !565
  %i.qv = fneg <2 x double> %wide.load882
  %i.qw = fneg <2 x double> %wide.load883
  %i.qx = fmul <2 x double> %wide.load880, %i.qv
  %i.qy = fmul <2 x double> %wide.load881, %i.qw
  %i.qz = getelementptr i8, ptr %i.qq, i64 16
  store <2 x double> %i.qx, ptr %i.qq, align 8, !tbaa !46, !alias.scope !566, !noalias !567
  store <2 x double> %i.qy, ptr %i.qz, align 8, !tbaa !46, !alias.scope !566, !noalias !567
  %index.next884 = add nuw i64 %index879, 4       ; 2 uses
  %i.ra = icmp eq i64 %index.next884, %n.vec877
  br i1 %i.ra, label %middle.block885, label %vector.body878, !llvm.loop !406

middle.block885:                                  ; preds = %vector.body878
  br i1 %cmp.n886, label %._crit_edge.i.i.i.i.i.i.i.i139, label %scalar.ph864.preheader

scalar.ph864.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i131, %middle.block885
  %.09.i.i.i.i.i.i.i.i135.ph = phi i64 [ %n.vec877, %middle.block885 ], [ 0, %.preheader.i.i.i.i.i.i.i.i131 ] ; 6 uses
  %.neg1482 = or disjoint i64 %.09.i.i.i.i.i.i.i.i135.ph, 1
  br i1 %lcmp.mod1434.not, label %scalar.ph864.prol.loopexit, label %scalar.ph864.prol

scalar.ph864.prol:                                ; preds = %scalar.ph864.preheader
  %gep.i.i.i.i.i.i.i.i136.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i133, i64 %.09.i.i.i.i.i.i.i.i135.ph
  %gep11.i.i.i.i.i.i.i.i137.prol = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i134, i64 %.09.i.i.i.i.i.i.i.i135.ph
  %i.rb = getelementptr [8 x i8], ptr %i.pp, i64 %.09.i.i.i.i.i.i.i.i135.ph
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !46
  %i.rd = load double, ptr %gep11.i.i.i.i.i.i.i.i137.prol, align 8, !tbaa !46
  %i.re = fneg double %i.rd
  %i.rf = fmul double %i.rc, %i.re
  store double %i.rf, ptr %gep.i.i.i.i.i.i.i.i136.prol, align 8, !tbaa !46
  %i.rg = or disjoint i64 %.09.i.i.i.i.i.i.i.i135.ph, 1
  br label %scalar.ph864.prol.loopexit

scalar.ph864.prol.loopexit:                       ; preds = %scalar.ph864.prol, %scalar.ph864.preheader
  %.09.i.i.i.i.i.i.i.i135.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i135.ph, %scalar.ph864.preheader ], [ %i.rg, %scalar.ph864.prol ]
  %i.rh = icmp eq i64 %i.qb, %.neg1482
  br i1 %i.rh, label %._crit_edge.i.i.i.i.i.i.i.i139, label %scalar.ph864

._crit_edge.i.i.i.i.i.i.i.i139:                   ; preds = %scalar.ph864.prol.loopexit, %scalar.ph864, %middle.block885
  %i.ri = add nuw nsw i64 %.0812.i.i.i.i.i.i.i.i132, 1 ; 2 uses
  %exitcond14.not.i.i.i.i.i.i.i.i140 = icmp eq i64 %i.ri, %i.qc
  br i1 %exitcond14.not.i.i.i.i.i.i.i.i140, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142, label %.preheader.i.i.i.i.i.i.i.i131, !llvm.loop !363

scalar.ph864:                                     ; preds = %scalar.ph864.prol.loopexit, %scalar.ph864
  %.09.i.i.i.i.i.i.i.i135 = phi i64 [ %i.ru, %scalar.ph864 ], [ %.09.i.i.i.i.i.i.i.i135.unr, %scalar.ph864.prol.loopexit ] ; 5 uses
  %gep.i.i.i.i.i.i.i.i136 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i133, i64 %.09.i.i.i.i.i.i.i.i135
  %gep11.i.i.i.i.i.i.i.i137 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i134, i64 %.09.i.i.i.i.i.i.i.i135
  %i.rj = getelementptr [8 x i8], ptr %i.pp, i64 %.09.i.i.i.i.i.i.i.i135
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !46
  %i.rl = load double, ptr %gep11.i.i.i.i.i.i.i.i137, align 8, !tbaa !46
  %i.rm = fneg double %i.rl
  %i.rn = fmul double %i.rk, %i.rm
  store double %i.rn, ptr %gep.i.i.i.i.i.i.i.i136, align 8, !tbaa !46
  %i.ro = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i135, 1 ; 3 uses
  %gep.i.i.i.i.i.i.i.i136.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i133, i64 %i.ro
  %gep11.i.i.i.i.i.i.i.i137.1 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i.i.i134, i64 %i.ro
  %i.rp = getelementptr [8 x i8], ptr %i.pp, i64 %i.ro
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !46
  %i.rr = load double, ptr %gep11.i.i.i.i.i.i.i.i137.1, align 8, !tbaa !46
  %i.rs = fneg double %i.rr
  %i.rt = fmul double %i.rq, %i.rs
  store double %i.rt, ptr %gep.i.i.i.i.i.i.i.i136.1, align 8, !tbaa !46
  %i.ru = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i135, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i138.1 = icmp eq i64 %i.ru, %i.qb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i138.1, label %._crit_edge.i.i.i.i.i.i.i.i139, label %scalar.ph864, !llvm.loop !407

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142: ; preds = %._crit_edge.i.i.i.i.i.i.i.i139, %bb.k
  %i.rv = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.rw = load ptr, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 232
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 280
  %i.rz = load double, ptr %i.rv, align 8, !tbaa !46, !noalias !568 ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 88
  %i.sb = load ptr, ptr %i.rx, align 8, !tbaa !34 ; 7 uses
  %i.sc = load ptr, ptr %i.ry, align 8, !tbaa !34 ; 7 uses
  %i.sd = load ptr, ptr %i.sa, align 8, !tbaa !34 ; 7 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.rw, i64 96
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !35 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rw, i64 104
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !53 ; 2 uses
  %i.si = mul nsw i64 %i.sh, %i.sf                ; 7 uses
  %i.sj = sdiv i64 %i.si, 2                       ; 2 uses
  %i.sk = shl nsw i64 %i.sj, 1                    ; 7 uses
  %i.sl = icmp sgt i64 %i.si, 1
  br i1 %i.sl, label %.lr.ph.i.preheader.i.i.i.i148, label %._crit_edge.i.i.i.i.i144

.lr.ph.i.preheader.i.i.i.i148:                    ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142
  %.sroa.3.8.vec.insert.i.i.i.i149 = insertelement <2 x double> poison, double %i.rz, i64 0
  %i.sm = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i149, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i150

._crit_edge.i.i.i.i.i144:                         ; preds = %.lr.ph.i.i.i.i.i150, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_13CwiseBinaryOpINS4_17scalar_product_opIddEEKNS_12ArrayWrapperIS1_EEKNS_9ReplicateINSA_INS0_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELin1EEEEEEEEERS1_RKNS_9DenseBaseIT_EE.exit142
  %i.sn = icmp slt i64 %i.sk, %i.si
  br i1 %i.sn, label %.lr.ph.i.i.i.i.i.i145.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit152

.lr.ph.i.i.i.i.i.i145.preheader:                  ; preds = %._crit_edge.i.i.i.i.i144
  %i.so = sub i64 %i.si, %i.sk                    ; 3 uses
  %min.iters.check903 = icmp ult i64 %i.so, 10
  br i1 %min.iters.check903, label %.lr.ph.i.i.i.i.i.i145.preheader1420, label %vector.memcheck904

vector.memcheck904:                               ; preds = %.lr.ph.i.i.i.i.i.i145.preheader
  %i.sp = shl i64 %i.sj, 4                        ; 3 uses
  %i.sq = getelementptr i8, ptr %i.sd, i64 %i.sp  ; 2 uses
  %i.sr = mul i64 %i.sf, %i.sh
  %i.ss = shl i64 %i.sr, 3                        ; 3 uses
  %i.st = getelementptr i8, ptr %i.sd, i64 %i.ss  ; 2 uses
  %i.su = getelementptr i8, ptr %i.sb, i64 %i.sp
  %i.sv = getelementptr i8, ptr %i.sb, i64 %i.ss
  %11 = getelementptr i8, ptr %i.sc, i64 %i.sp
  %12 = getelementptr i8, ptr %i.sc, i64 %i.ss
  %bound0905 = icmp ult ptr %i.sq, %i.sv
  %bound1906 = icmp ult ptr %i.su, %i.st
  %found.conflict907 = and i1 %bound0905, %bound1906
  %bound0908 = icmp ult ptr %i.sq, %12
  %bound1909 = icmp ult ptr %11, %i.st
  %found.conflict910 = and i1 %bound0908, %bound1909
  %conflict.rdx911 = or i1 %found.conflict907, %found.conflict910
  br i1 %conflict.rdx911, label %.lr.ph.i.i.i.i.i.i145.preheader1420, label %vector.ph912

vector.ph912:                                     ; preds = %vector.memcheck904
  %n.vec913 = and i64 %i.so, -4                   ; 3 uses
  %i.sw = add i64 %i.sk, %n.vec913
  %broadcast.splatinsert914 = insertelement <2 x double> poison, double %i.rz, i64 0
  %broadcast.splat915 = shufflevector <2 x double> %broadcast.splatinsert914, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body916

vector.body916:                                   ; preds = %vector.body916, %vector.ph912
  %index917 = phi i64 [ 0, %vector.ph912 ], [ %index.next924, %vector.body916 ] ; 2 uses
  %i.sx = add i64 %i.sk, %index917                ; 3 uses
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.sd, i64 %i.sx ; 3 uses
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %i.sx ; 2 uses
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.sx ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %wide.load918 = load <2 x double>, ptr %i.sz, align 8, !tbaa !46, !alias.scope !569
  %wide.load919 = load <2 x double>, ptr %i.tb, align 8, !tbaa !46, !alias.scope !569
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %wide.load920 = load <2 x double>, ptr %i.ta, align 8, !tbaa !46, !alias.scope !570
  %wide.load921 = load <2 x double>, ptr %i.tc, align 8, !tbaa !46, !alias.scope !570
  %i.td = fsub <2 x double> %wide.load918, %wide.load920
  %i.te = fsub <2 x double> %wide.load919, %wide.load921
  %i.tf = fmul <2 x double> %broadcast.splat915, %i.td
  %i.tg = fmul <2 x double> %broadcast.splat915, %i.te
  %i.th = getelementptr inbounds nuw i8, ptr %i.sy, i64 16 ; 2 uses
  %wide.load922 = load <2 x double>, ptr %i.sy, align 8, !tbaa !46, !alias.scope !571, !noalias !572
  %wide.load923 = load <2 x double>, ptr %i.th, align 8, !tbaa !46, !alias.scope !571, !noalias !572
  %i.ti = fsub <2 x double> %wide.load922, %i.tf
  %i.tj = fsub <2 x double> %wide.load923, %i.tg
  store <2 x double> %i.ti, ptr %i.sy, align 8, !tbaa !46, !alias.scope !571, !noalias !572
  store <2 x double> %i.tj, ptr %i.th, align 8, !tbaa !46, !alias.scope !571, !noalias !572
  %index.next924 = add nuw i64 %index917, 4       ; 2 uses
  %i.tk = icmp eq i64 %index.next924, %n.vec913
  br i1 %i.tk, label %middle.block925, label %vector.body916, !llvm.loop !414

middle.block925:                                  ; preds = %vector.body916
  %cmp.n926 = icmp eq i64 %i.so, %n.vec913
  br i1 %cmp.n926, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit152, label %.lr.ph.i.i.i.i.i.i145.preheader1420

.lr.ph.i.i.i.i.i.i145.preheader1420:              ; preds = %vector.memcheck904, %.lr.ph.i.i.i.i.i.i145.preheader, %middle.block925
  %.05.i.i.i.i.i.i146.ph = phi i64 [ %i.sk, %vector.memcheck904 ], [ %i.sk, %.lr.ph.i.i.i.i.i.i145.preheader ], [ %i.sw, %middle.block925 ] ; 7 uses
  %i.tl = sub i64 %i.si, %.05.i.i.i.i.i.i146.ph
  %.neg1483 = add i64 %.05.i.i.i.i.i.i146.ph, 1
  %xtraiter1435 = and i64 %i.tl, 1
  %lcmp.mod1436.not = icmp eq i64 %xtraiter1435, 0
  br i1 %lcmp.mod1436.not, label %.lr.ph.i.i.i.i.i.i145.prol.loopexit, label %.lr.ph.i.i.i.i.i.i145.prol

.lr.ph.i.i.i.i.i.i145.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i145.preheader1420
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.sd, i64 %.05.i.i.i.i.i.i146.ph ; 2 uses
  %i.tn = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %.05.i.i.i.i.i.i146.ph
  %i.to = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %.05.i.i.i.i.i.i146.ph
  %i.tp = load double, ptr %i.tn, align 8, !tbaa !46
  %i.tq = load double, ptr %i.to, align 8, !tbaa !46
  %i.tr = fsub double %i.tp, %i.tq
  %i.ts = fmul double %i.rz, %i.tr
  %i.tt = load double, ptr %i.tm, align 8, !tbaa !46
  %i.tu = fsub double %i.tt, %i.ts
  store double %i.tu, ptr %i.tm, align 8, !tbaa !46
  %i.tv = add nsw i64 %.05.i.i.i.i.i.i146.ph, 1
  br label %.lr.ph.i.i.i.i.i.i145.prol.loopexit

.lr.ph.i.i.i.i.i.i145.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i145.prol, %.lr.ph.i.i.i.i.i.i145.preheader1420
  %.05.i.i.i.i.i.i146.unr = phi i64 [ %.05.i.i.i.i.i.i146.ph, %.lr.ph.i.i.i.i.i.i145.preheader1420 ], [ %i.tv, %.lr.ph.i.i.i.i.i.i145.prol ]
  %i.tw = icmp eq i64 %i.si, %.neg1483
  br i1 %i.tw, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit152, label %.lr.ph.i.i.i.i.i.i145

.lr.ph.i.i.i.i.i.i145:                            ; preds = %.lr.ph.i.i.i.i.i.i145.prol.loopexit, %.lr.ph.i.i.i.i.i.i145
  %.05.i.i.i.i.i.i146 = phi i64 [ %i.uq, %.lr.ph.i.i.i.i.i.i145 ], [ %.05.i.i.i.i.i.i146.unr, %.lr.ph.i.i.i.i.i.i145.prol.loopexit ] ; 5 uses
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.sd, i64 %.05.i.i.i.i.i.i146 ; 2 uses
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %.05.i.i.i.i.i.i146
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %.05.i.i.i.i.i.i146
  %i.ua = load double, ptr %i.ty, align 8, !tbaa !46
  %i.ub = load double, ptr %i.tz, align 8, !tbaa !46
  %i.uc = fsub double %i.ua, %i.ub
  %i.ud = fmul double %i.rz, %i.uc
  %i.ue = load double, ptr %i.tx, align 8, !tbaa !46
  %i.uf = fsub double %i.ue, %i.ud
  store double %i.uf, ptr %i.tx, align 8, !tbaa !46
  %i.ug = add nsw i64 %.05.i.i.i.i.i.i146, 1      ; 3 uses
  %i.uh = getelementptr inbounds [8 x i8], ptr %i.sd, i64 %i.ug ; 2 uses
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %i.ug
  %i.uj = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.ug
  %i.uk = load double, ptr %i.ui, align 8, !tbaa !46
  %i.ul = load double, ptr %i.uj, align 8, !tbaa !46
  %i.um = fsub double %i.uk, %i.ul
  %i.un = fmul double %i.rz, %i.um
  %i.uo = load double, ptr %i.uh, align 8, !tbaa !46
  %i.up = fsub double %i.uo, %i.un
  store double %i.up, ptr %i.uh, align 8, !tbaa !46
  %i.uq = add nsw i64 %.05.i.i.i.i.i.i146, 2      ; 2 uses
  %exitcond.not.i.i.i.i.i.i147.1 = icmp eq i64 %i.uq, %i.si
  br i1 %exitcond.not.i.i.i.i.i.i147.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit152, label %.lr.ph.i.i.i.i.i.i145, !llvm.loop !415

.lr.ph.i.i.i.i.i150:                              ; preds = %.lr.ph.i.i.i.i.i150, %.lr.ph.i.preheader.i.i.i.i148
  %.011.i.i.i.i.i151 = phi i64 [ %i.va, %.lr.ph.i.i.i.i.i150 ], [ 0, %.lr.ph.i.preheader.i.i.i.i148 ] ; 4 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %.011.i.i.i.i.i151 ; 2 uses
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %.011.i.i.i.i.i151
  %i.ut = load <2 x double>, ptr %i.us, align 16, !tbaa !47
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %.011.i.i.i.i.i151
  %i.uv = load <2 x double>, ptr %i.uu, align 16, !tbaa !47
  %i.uw = fsub <2 x double> %i.ut, %i.uv
  %i.ux = fmul <2 x double> %i.sm, %i.uw
  %i.uy = load <2 x double>, ptr %i.ur, align 16, !tbaa !47
  %i.uz = fsub <2 x double> %i.uy, %i.ux
  store <2 x double> %i.uz, ptr %i.ur, align 16, !tbaa !47
  %i.va = add nuw nsw i64 %.011.i.i.i.i.i151, 2   ; 2 uses
  %i.vb = icmp slt i64 %i.va, %i.sk
  br i1 %i.vb, label %.lr.ph.i.i.i.i.i150, label %._crit_edge.i.i.i.i.i144, !llvm.loop !373

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit152: ; preds = %.lr.ph.i.i.i.i.i.i145.prol.loopexit, %.lr.ph.i.i.i.i.i.i145, %middle.block925, %._crit_edge.i.i.i.i.i144
  %i.vc = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 36
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !89
  %.not85 = icmp eq i32 %i.ve, 0
  br i1 %.not85, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit162, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit152
  %i.vf = load ptr, ptr %i.a, align 8, !tbaa !17  ; 6 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 404
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !90
  %i.vi = icmp sgt i32 %i.vh, 0
  br i1 %i.vi, label %bb.m, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit162

bb.m:                                             ; preds = %bb.l
  %i.vj = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 576
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 624
  %i.vm = load double, ptr %i.vj, align 8, !tbaa !46, !noalias !573 ; 5 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vf, i64 88
  %i.vo = load ptr, ptr %i.vk, align 8, !tbaa !34 ; 7 uses
  %i.vp = load ptr, ptr %i.vl, align 8, !tbaa !34 ; 7 uses
  %i.vq = load ptr, ptr %i.vn, align 8, !tbaa !34 ; 7 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vf, i64 96
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !35 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vf, i64 104
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !53 ; 2 uses
  %i.vv = mul nsw i64 %i.vu, %i.vs                ; 7 uses
  %i.vw = sdiv i64 %i.vv, 2                       ; 2 uses
  %i.vx = shl nsw i64 %i.vw, 1                    ; 7 uses
  %i.vy = icmp sgt i64 %i.vv, 1
  br i1 %i.vy, label %.lr.ph.i.preheader.i.i.i.i158, label %._crit_edge.i.i.i.i.i154

.lr.ph.i.preheader.i.i.i.i158:                    ; preds = %bb.m
  %.sroa.3.8.vec.insert.i.i.i.i159 = insertelement <2 x double> poison, double %i.vm, i64 0
  %i.vz = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i159, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i160

._crit_edge.i.i.i.i.i154:                         ; preds = %.lr.ph.i.i.i.i.i160, %bb.m
  %i.wa = icmp slt i64 %i.vx, %i.vv
  br i1 %i.wa, label %.lr.ph.i.i.i.i.i.i155.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit162

.lr.ph.i.i.i.i.i.i155.preheader:                  ; preds = %._crit_edge.i.i.i.i.i154
  %i.wb = sub i64 %i.vv, %i.vx                    ; 3 uses
  %min.iters.check943 = icmp ult i64 %i.wb, 10
  br i1 %min.iters.check943, label %.lr.ph.i.i.i.i.i.i155.preheader1419, label %vector.memcheck944

vector.memcheck944:                               ; preds = %.lr.ph.i.i.i.i.i.i155.preheader
  %i.wc = shl i64 %i.vw, 4                        ; 3 uses
  %i.wd = getelementptr i8, ptr %i.vq, i64 %i.wc  ; 2 uses
  %i.we = mul i64 %i.vs, %i.vu
  %i.wf = shl i64 %i.we, 3                        ; 3 uses
  %i.wg = getelementptr i8, ptr %i.vq, i64 %i.wf  ; 2 uses
  %i.wh = getelementptr i8, ptr %i.vo, i64 %i.wc
  %i.wi = getelementptr i8, ptr %i.vo, i64 %i.wf
  %13 = getelementptr i8, ptr %i.vp, i64 %i.wc
  %14 = getelementptr i8, ptr %i.vp, i64 %i.wf
  %bound0945 = icmp ult ptr %i.wd, %i.wi
  %bound1946 = icmp ult ptr %i.wh, %i.wg
  %found.conflict947 = and i1 %bound0945, %bound1946
  %bound0948 = icmp ult ptr %i.wd, %14
  %bound1949 = icmp ult ptr %13, %i.wg
  %found.conflict950 = and i1 %bound0948, %bound1949
  %conflict.rdx951 = or i1 %found.conflict947, %found.conflict950
  br i1 %conflict.rdx951, label %.lr.ph.i.i.i.i.i.i155.preheader1419, label %vector.ph952

vector.ph952:                                     ; preds = %vector.memcheck944
  %n.vec953 = and i64 %i.wb, -4                   ; 3 uses
  %i.wj = add i64 %i.vx, %n.vec953
  %broadcast.splatinsert954 = insertelement <2 x double> poison, double %i.vm, i64 0
  %broadcast.splat955 = shufflevector <2 x double> %broadcast.splatinsert954, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %vector.ph952
  %index957 = phi i64 [ 0, %vector.ph952 ], [ %index.next964, %vector.body956 ] ; 2 uses
  %i.wk = add i64 %i.vx, %index957                ; 3 uses
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %i.wk ; 3 uses
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.vo, i64 %i.wk ; 2 uses
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.vp, i64 %i.wk ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %wide.load958 = load <2 x double>, ptr %i.wm, align 8, !tbaa !46, !alias.scope !574
  %wide.load959 = load <2 x double>, ptr %i.wo, align 8, !tbaa !46, !alias.scope !574
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %wide.load960 = load <2 x double>, ptr %i.wn, align 8, !tbaa !46, !alias.scope !575
  %wide.load961 = load <2 x double>, ptr %i.wp, align 8, !tbaa !46, !alias.scope !575
  %i.wq = fsub <2 x double> %wide.load958, %wide.load960
  %i.wr = fsub <2 x double> %wide.load959, %wide.load961
  %i.ws = fmul <2 x double> %broadcast.splat955, %i.wq
  %i.wt = fmul <2 x double> %broadcast.splat955, %i.wr
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wl, i64 16 ; 2 uses
  %wide.load962 = load <2 x double>, ptr %i.wl, align 8, !tbaa !46, !alias.scope !576, !noalias !577
  %wide.load963 = load <2 x double>, ptr %i.wu, align 8, !tbaa !46, !alias.scope !576, !noalias !577
  %i.wv = fsub <2 x double> %wide.load962, %i.ws
  %i.ww = fsub <2 x double> %wide.load963, %i.wt
  store <2 x double> %i.wv, ptr %i.wl, align 8, !tbaa !46, !alias.scope !576, !noalias !577
  store <2 x double> %i.ww, ptr %i.wu, align 8, !tbaa !46, !alias.scope !576, !noalias !577
  %index.next964 = add nuw i64 %index957, 4       ; 2 uses
  %i.wx = icmp eq i64 %index.next964, %n.vec953
  br i1 %i.wx, label %middle.block965, label %vector.body956, !llvm.loop !422

middle.block965:                                  ; preds = %vector.body956
  %cmp.n966 = icmp eq i64 %i.wb, %n.vec953
  br i1 %cmp.n966, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit162, label %.lr.ph.i.i.i.i.i.i155.preheader1419

.lr.ph.i.i.i.i.i.i155.preheader1419:              ; preds = %vector.memcheck944, %.lr.ph.i.i.i.i.i.i155.preheader, %middle.block965
  %.05.i.i.i.i.i.i156.ph = phi i64 [ %i.vx, %vector.memcheck944 ], [ %i.vx, %.lr.ph.i.i.i.i.i.i155.preheader ], [ %i.wj, %middle.block965 ] ; 7 uses
  %i.wy = sub i64 %i.vv, %.05.i.i.i.i.i.i156.ph
  %.neg1484 = add i64 %.05.i.i.i.i.i.i156.ph, 1
  %xtraiter1437 = and i64 %i.wy, 1
  %lcmp.mod1438.not = icmp eq i64 %xtraiter1437, 0
  br i1 %lcmp.mod1438.not, label %.lr.ph.i.i.i.i.i.i155.prol.loopexit, label %.lr.ph.i.i.i.i.i.i155.prol

.lr.ph.i.i.i.i.i.i155.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i155.preheader1419
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %.05.i.i.i.i.i.i156.ph ; 2 uses
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.vo, i64 %.05.i.i.i.i.i.i156.ph
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.vp, i64 %.05.i.i.i.i.i.i156.ph
  %i.xc = load double, ptr %i.xa, align 8, !tbaa !46
  %i.xd = load double, ptr %i.xb, align 8, !tbaa !46
  %i.xe = fsub double %i.xc, %i.xd
  %i.xf = fmul double %i.vm, %i.xe
  %i.xg = load double, ptr %i.wz, align 8, !tbaa !46
  %i.xh = fsub double %i.xg, %i.xf
  store double %i.xh, ptr %i.wz, align 8, !tbaa !46
  %i.xi = add nsw i64 %.05.i.i.i.i.i.i156.ph, 1
  br label %.lr.ph.i.i.i.i.i.i155.prol.loopexit

.lr.ph.i.i.i.i.i.i155.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i155.prol, %.lr.ph.i.i.i.i.i.i155.preheader1419
  %.05.i.i.i.i.i.i156.unr = phi i64 [ %.05.i.i.i.i.i.i156.ph, %.lr.ph.i.i.i.i.i.i155.preheader1419 ], [ %i.xi, %.lr.ph.i.i.i.i.i.i155.prol ]
  %i.xj = icmp eq i64 %i.vv, %.neg1484
  br i1 %i.xj, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit162, label %.lr.ph.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i155:                            ; preds = %.lr.ph.i.i.i.i.i.i155.prol.loopexit, %.lr.ph.i.i.i.i.i.i155
  %.05.i.i.i.i.i.i156 = phi i64 [ %i.yd, %.lr.ph.i.i.i.i.i.i155 ], [ %.05.i.i.i.i.i.i156.unr, %.lr.ph.i.i.i.i.i.i155.prol.loopexit ] ; 5 uses
  %i.xk = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %.05.i.i.i.i.i.i156 ; 2 uses
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.vo, i64 %.05.i.i.i.i.i.i156
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.vp, i64 %.05.i.i.i.i.i.i156
  %i.xn = load double, ptr %i.xl, align 8, !tbaa !46
  %i.xo = load double, ptr %i.xm, align 8, !tbaa !46
  %i.xp = fsub double %i.xn, %i.xo
  %i.xq = fmul double %i.vm, %i.xp
  %i.xr = load double, ptr %i.xk, align 8, !tbaa !46
  %i.xs = fsub double %i.xr, %i.xq
  store double %i.xs, ptr %i.xk, align 8, !tbaa !46
  %i.xt = add nsw i64 %.05.i.i.i.i.i.i156, 1      ; 3 uses
  %i.xu = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %i.xt ; 2 uses
  %i.xv = getelementptr inbounds [8 x i8], ptr %i.vo, i64 %i.xt
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.vp, i64 %i.xt
  %i.xx = load double, ptr %i.xv, align 8, !tbaa !46
  %i.xy = load double, ptr %i.xw, align 8, !tbaa !46
  %i.xz = fsub double %i.xx, %i.xy
  %i.ya = fmul double %i.vm, %i.xz
  %i.yb = load double, ptr %i.xu, align 8, !tbaa !46
  %i.yc = fsub double %i.yb, %i.ya
  store double %i.yc, ptr %i.xu, align 8, !tbaa !46
  %i.yd = add nsw i64 %.05.i.i.i.i.i.i156, 2      ; 2 uses
  %exitcond.not.i.i.i.i.i.i157.1 = icmp eq i64 %i.yd, %i.vv
  br i1 %exitcond.not.i.i.i.i.i.i157.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit162, label %.lr.ph.i.i.i.i.i.i155, !llvm.loop !423

.lr.ph.i.i.i.i.i160:                              ; preds = %.lr.ph.i.i.i.i.i160, %.lr.ph.i.preheader.i.i.i.i158
  %.011.i.i.i.i.i161 = phi i64 [ %i.yn, %.lr.ph.i.i.i.i.i160 ], [ 0, %.lr.ph.i.preheader.i.i.i.i158 ] ; 4 uses
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %.011.i.i.i.i.i161 ; 2 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %.011.i.i.i.i.i161
  %i.yg = load <2 x double>, ptr %i.yf, align 16, !tbaa !47
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %.011.i.i.i.i.i161
  %i.yi = load <2 x double>, ptr %i.yh, align 16, !tbaa !47
  %i.yj = fsub <2 x double> %i.yg, %i.yi
  %i.yk = fmul <2 x double> %i.vz, %i.yj
  %i.yl = load <2 x double>, ptr %i.ye, align 16, !tbaa !47
  %i.ym = fsub <2 x double> %i.yl, %i.yk
  store <2 x double> %i.ym, ptr %i.ye, align 16, !tbaa !47
  %i.yn = add nuw nsw i64 %.011.i.i.i.i.i161, 2   ; 2 uses
  %i.yo = icmp slt i64 %i.yn, %i.vx
  br i1 %i.yo, label %.lr.ph.i.i.i.i.i160, label %._crit_edge.i.i.i.i.i154, !llvm.loop !373

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit162: ; preds = %.lr.ph.i.i.i.i.i.i155.prol.loopexit, %.lr.ph.i.i.i.i.i.i155, %middle.block965, %._crit_edge.i.i.i.i.i154, %bb.l, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit152
  %i.yp = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 44
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !92
  %.not86 = icmp eq i32 %i.yr, 0
  br i1 %.not86, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit172, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit162
  %i.ys = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.yt = load ptr, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 808
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yt, i64 856
  %i.yw = load double, ptr %i.ys, align 8, !tbaa !46, !noalias !578 ; 5 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yt, i64 88
  %i.yy = load ptr, ptr %i.yu, align 8, !tbaa !34 ; 7 uses
  %i.yz = load ptr, ptr %i.yv, align 8, !tbaa !34 ; 7 uses
  %i.za = load ptr, ptr %i.yx, align 8, !tbaa !34 ; 7 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yt, i64 96
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !35 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yt, i64 104
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !53 ; 2 uses
  %i.zf = mul nsw i64 %i.ze, %i.zc                ; 7 uses
  %i.zg = sdiv i64 %i.zf, 2                       ; 2 uses
  %i.zh = shl nsw i64 %i.zg, 1                    ; 7 uses
  %i.zi = icmp sgt i64 %i.zf, 1
  br i1 %i.zi, label %.lr.ph.i.preheader.i.i.i.i168, label %._crit_edge.i.i.i.i.i164

.lr.ph.i.preheader.i.i.i.i168:                    ; preds = %bb.n
  %.sroa.3.8.vec.insert.i.i.i.i169 = insertelement <2 x double> poison, double %i.yw, i64 0
  %i.zj = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i169, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i170

._crit_edge.i.i.i.i.i164:                         ; preds = %.lr.ph.i.i.i.i.i170, %bb.n
  %i.zk = icmp slt i64 %i.zh, %i.zf
  br i1 %i.zk, label %.lr.ph.i.i.i.i.i.i165.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit172

.lr.ph.i.i.i.i.i.i165.preheader:                  ; preds = %._crit_edge.i.i.i.i.i164
  %i.zl = sub i64 %i.zf, %i.zh                    ; 3 uses
  %min.iters.check983 = icmp ult i64 %i.zl, 10
  br i1 %min.iters.check983, label %.lr.ph.i.i.i.i.i.i165.preheader1418, label %vector.memcheck984

vector.memcheck984:                               ; preds = %.lr.ph.i.i.i.i.i.i165.preheader
  %i.zm = shl i64 %i.zg, 4                        ; 3 uses
  %i.zn = getelementptr i8, ptr %i.za, i64 %i.zm  ; 2 uses
  %i.zo = mul i64 %i.zc, %i.ze
  %i.zp = shl i64 %i.zo, 3                        ; 3 uses
  %i.zq = getelementptr i8, ptr %i.za, i64 %i.zp  ; 2 uses
  %i.zr = getelementptr i8, ptr %i.yy, i64 %i.zm
  %i.zs = getelementptr i8, ptr %i.yy, i64 %i.zp
  %15 = getelementptr i8, ptr %i.yz, i64 %i.zm
  %16 = getelementptr i8, ptr %i.yz, i64 %i.zp
  %bound0985 = icmp ult ptr %i.zn, %i.zs
  %bound1986 = icmp ult ptr %i.zr, %i.zq
  %found.conflict987 = and i1 %bound0985, %bound1986
  %bound0988 = icmp ult ptr %i.zn, %16
  %bound1989 = icmp ult ptr %15, %i.zq
  %found.conflict990 = and i1 %bound0988, %bound1989
  %conflict.rdx991 = or i1 %found.conflict987, %found.conflict990
  br i1 %conflict.rdx991, label %.lr.ph.i.i.i.i.i.i165.preheader1418, label %vector.ph992

vector.ph992:                                     ; preds = %vector.memcheck984
  %n.vec993 = and i64 %i.zl, -4                   ; 3 uses
  %i.zt = add i64 %i.zh, %n.vec993
  %broadcast.splatinsert994 = insertelement <2 x double> poison, double %i.yw, i64 0
  %broadcast.splat995 = shufflevector <2 x double> %broadcast.splatinsert994, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %vector.ph992
  %index997 = phi i64 [ 0, %vector.ph992 ], [ %index.next1004, %vector.body996 ] ; 2 uses
  %i.zu = add i64 %i.zh, %index997                ; 3 uses
  %i.zv = getelementptr inbounds [8 x i8], ptr %i.za, i64 %i.zu ; 3 uses
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.yy, i64 %i.zu ; 2 uses
  %i.zx = getelementptr inbounds [8 x i8], ptr %i.yz, i64 %i.zu ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %wide.load998 = load <2 x double>, ptr %i.zw, align 8, !tbaa !46, !alias.scope !579
  %wide.load999 = load <2 x double>, ptr %i.zy, align 8, !tbaa !46, !alias.scope !579
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %wide.load1000 = load <2 x double>, ptr %i.zx, align 8, !tbaa !46, !alias.scope !580
  %wide.load1001 = load <2 x double>, ptr %i.zz, align 8, !tbaa !46, !alias.scope !580
  %i.aaa = fsub <2 x double> %wide.load998, %wide.load1000
  %i.aab = fsub <2 x double> %wide.load999, %wide.load1001
  %i.aac = fmul <2 x double> %broadcast.splat995, %i.aaa
  %i.aad = fmul <2 x double> %broadcast.splat995, %i.aab
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zv, i64 16 ; 2 uses
  %wide.load1002 = load <2 x double>, ptr %i.zv, align 8, !tbaa !46, !alias.scope !581, !noalias !582
  %wide.load1003 = load <2 x double>, ptr %i.aae, align 8, !tbaa !46, !alias.scope !581, !noalias !582
  %i.aaf = fsub <2 x double> %wide.load1002, %i.aac
  %i.aag = fsub <2 x double> %wide.load1003, %i.aad
  store <2 x double> %i.aaf, ptr %i.zv, align 8, !tbaa !46, !alias.scope !581, !noalias !582
  store <2 x double> %i.aag, ptr %i.aae, align 8, !tbaa !46, !alias.scope !581, !noalias !582
  %index.next1004 = add nuw i64 %index997, 4      ; 2 uses
  %i.aah = icmp eq i64 %index.next1004, %n.vec993
  br i1 %i.aah, label %middle.block1005, label %vector.body996, !llvm.loop !430

middle.block1005:                                 ; preds = %vector.body996
  %cmp.n1006 = icmp eq i64 %i.zl, %n.vec993
  br i1 %cmp.n1006, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit172, label %.lr.ph.i.i.i.i.i.i165.preheader1418

.lr.ph.i.i.i.i.i.i165.preheader1418:              ; preds = %vector.memcheck984, %.lr.ph.i.i.i.i.i.i165.preheader, %middle.block1005
  %.05.i.i.i.i.i.i166.ph = phi i64 [ %i.zh, %vector.memcheck984 ], [ %i.zh, %.lr.ph.i.i.i.i.i.i165.preheader ], [ %i.zt, %middle.block1005 ] ; 7 uses
  %i.aai = sub i64 %i.zf, %.05.i.i.i.i.i.i166.ph
  %.neg1485 = add i64 %.05.i.i.i.i.i.i166.ph, 1
  %xtraiter1439 = and i64 %i.aai, 1
  %lcmp.mod1440.not = icmp eq i64 %xtraiter1439, 0
  br i1 %lcmp.mod1440.not, label %.lr.ph.i.i.i.i.i.i165.prol.loopexit, label %.lr.ph.i.i.i.i.i.i165.prol

.lr.ph.i.i.i.i.i.i165.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i165.preheader1418
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.za, i64 %.05.i.i.i.i.i.i166.ph ; 2 uses
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.yy, i64 %.05.i.i.i.i.i.i166.ph
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.yz, i64 %.05.i.i.i.i.i.i166.ph
  %i.aam = load double, ptr %i.aak, align 8, !tbaa !46
  %i.aan = load double, ptr %i.aal, align 8, !tbaa !46
  %i.aao = fsub double %i.aam, %i.aan
  %i.aap = fmul double %i.yw, %i.aao
  %i.aaq = load double, ptr %i.aaj, align 8, !tbaa !46
  %i.aar = fsub double %i.aaq, %i.aap
  store double %i.aar, ptr %i.aaj, align 8, !tbaa !46
  %i.aas = add nsw i64 %.05.i.i.i.i.i.i166.ph, 1
  br label %.lr.ph.i.i.i.i.i.i165.prol.loopexit

.lr.ph.i.i.i.i.i.i165.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i165.prol, %.lr.ph.i.i.i.i.i.i165.preheader1418
  %.05.i.i.i.i.i.i166.unr = phi i64 [ %.05.i.i.i.i.i.i166.ph, %.lr.ph.i.i.i.i.i.i165.preheader1418 ], [ %i.aas, %.lr.ph.i.i.i.i.i.i165.prol ]
  %i.aat = icmp eq i64 %i.zf, %.neg1485
  br i1 %i.aat, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit172, label %.lr.ph.i.i.i.i.i.i165

.lr.ph.i.i.i.i.i.i165:                            ; preds = %.lr.ph.i.i.i.i.i.i165.prol.loopexit, %.lr.ph.i.i.i.i.i.i165
  %.05.i.i.i.i.i.i166 = phi i64 [ %i.abn, %.lr.ph.i.i.i.i.i.i165 ], [ %.05.i.i.i.i.i.i166.unr, %.lr.ph.i.i.i.i.i.i165.prol.loopexit ] ; 5 uses
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.za, i64 %.05.i.i.i.i.i.i166 ; 2 uses
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.yy, i64 %.05.i.i.i.i.i.i166
  %i.aaw = getelementptr inbounds [8 x i8], ptr %i.yz, i64 %.05.i.i.i.i.i.i166
  %i.aax = load double, ptr %i.aav, align 8, !tbaa !46
  %i.aay = load double, ptr %i.aaw, align 8, !tbaa !46
  %i.aaz = fsub double %i.aax, %i.aay
  %i.aba = fmul double %i.yw, %i.aaz
  %i.abb = load double, ptr %i.aau, align 8, !tbaa !46
  %i.abc = fsub double %i.abb, %i.aba
  store double %i.abc, ptr %i.aau, align 8, !tbaa !46
  %i.abd = add nsw i64 %.05.i.i.i.i.i.i166, 1     ; 3 uses
  %i.abe = getelementptr inbounds [8 x i8], ptr %i.za, i64 %i.abd ; 2 uses
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.yy, i64 %i.abd
  %i.abg = getelementptr inbounds [8 x i8], ptr %i.yz, i64 %i.abd
  %i.abh = load double, ptr %i.abf, align 8, !tbaa !46
  %i.abi = load double, ptr %i.abg, align 8, !tbaa !46
  %i.abj = fsub double %i.abh, %i.abi
  %i.abk = fmul double %i.yw, %i.abj
  %i.abl = load double, ptr %i.abe, align 8, !tbaa !46
  %i.abm = fsub double %i.abl, %i.abk
  store double %i.abm, ptr %i.abe, align 8, !tbaa !46
  %i.abn = add nsw i64 %.05.i.i.i.i.i.i166, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i167.1 = icmp eq i64 %i.abn, %i.zf
  br i1 %exitcond.not.i.i.i.i.i.i167.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit172, label %.lr.ph.i.i.i.i.i.i165, !llvm.loop !431

.lr.ph.i.i.i.i.i170:                              ; preds = %.lr.ph.i.i.i.i.i170, %.lr.ph.i.preheader.i.i.i.i168
  %.011.i.i.i.i.i171 = phi i64 [ %i.abx, %.lr.ph.i.i.i.i.i170 ], [ 0, %.lr.ph.i.preheader.i.i.i.i168 ] ; 4 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %.011.i.i.i.i.i171 ; 2 uses
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %.011.i.i.i.i.i171
  %i.abq = load <2 x double>, ptr %i.abp, align 16, !tbaa !47
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %.011.i.i.i.i.i171
  %i.abs = load <2 x double>, ptr %i.abr, align 16, !tbaa !47
  %i.abt = fsub <2 x double> %i.abq, %i.abs
  %i.abu = fmul <2 x double> %i.zj, %i.abt
  %i.abv = load <2 x double>, ptr %i.abo, align 16, !tbaa !47
  %i.abw = fsub <2 x double> %i.abv, %i.abu
  store <2 x double> %i.abw, ptr %i.abo, align 16, !tbaa !47
  %i.abx = add nuw nsw i64 %.011.i.i.i.i.i171, 2  ; 2 uses
  %i.aby = icmp slt i64 %i.abx, %i.zh
  br i1 %i.aby, label %.lr.ph.i.i.i.i.i170, label %._crit_edge.i.i.i.i.i164, !llvm.loop !373

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit172: ; preds = %.lr.ph.i.i.i.i.i.i165.prol.loopexit, %.lr.ph.i.i.i.i.i.i165, %middle.block1005, %._crit_edge.i.i.i.i.i164, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit162
  %i.abz = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 52
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !94
  %.not87 = icmp eq i32 %i.acb, 0
  br i1 %.not87, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit182, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit172
  %i.acc = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.acd = load ptr, ptr %i.a, align 8, !tbaa !17 ; 5 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 1056
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 1104
  %i.acg = load double, ptr %i.acc, align 8, !tbaa !46, !noalias !583 ; 5 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acd, i64 88
  %i.aci = load ptr, ptr %i.ace, align 8, !tbaa !34 ; 7 uses
  %i.acj = load ptr, ptr %i.acf, align 8, !tbaa !34 ; 7 uses
  %i.ack = load ptr, ptr %i.ach, align 8, !tbaa !34 ; 7 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acd, i64 96
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !35 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acd, i64 104
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !53 ; 2 uses
  %i.acp = mul nsw i64 %i.aco, %i.acm             ; 7 uses
  %i.acq = sdiv i64 %i.acp, 2                     ; 2 uses
  %i.acr = shl nsw i64 %i.acq, 1                  ; 7 uses
  %i.acs = icmp sgt i64 %i.acp, 1
  br i1 %i.acs, label %.lr.ph.i.preheader.i.i.i.i178, label %._crit_edge.i.i.i.i.i174

.lr.ph.i.preheader.i.i.i.i178:                    ; preds = %bb.o
  %.sroa.3.8.vec.insert.i.i.i.i179 = insertelement <2 x double> poison, double %i.acg, i64 0
  %i.act = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i179, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i180

._crit_edge.i.i.i.i.i174:                         ; preds = %.lr.ph.i.i.i.i.i180, %bb.o
  %i.acu = icmp slt i64 %i.acr, %i.acp
  br i1 %i.acu, label %.lr.ph.i.i.i.i.i.i175.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit182

.lr.ph.i.i.i.i.i.i175.preheader:                  ; preds = %._crit_edge.i.i.i.i.i174
  %i.acv = sub i64 %i.acp, %i.acr                 ; 3 uses
  %min.iters.check1023 = icmp ult i64 %i.acv, 10
  br i1 %min.iters.check1023, label %.lr.ph.i.i.i.i.i.i175.preheader1417, label %vector.memcheck1024

vector.memcheck1024:                              ; preds = %.lr.ph.i.i.i.i.i.i175.preheader
  %i.acw = shl i64 %i.acq, 4                      ; 3 uses
  %i.acx = getelementptr i8, ptr %i.ack, i64 %i.acw ; 2 uses
  %i.acy = mul i64 %i.acm, %i.aco
  %i.acz = shl i64 %i.acy, 3                      ; 3 uses
  %i.ada = getelementptr i8, ptr %i.ack, i64 %i.acz ; 2 uses
  %i.adb = getelementptr i8, ptr %i.aci, i64 %i.acw
  %i.adc = getelementptr i8, ptr %i.aci, i64 %i.acz
  %17 = getelementptr i8, ptr %i.acj, i64 %i.acw
  %18 = getelementptr i8, ptr %i.acj, i64 %i.acz
  %bound01025 = icmp ult ptr %i.acx, %i.adc
  %bound11026 = icmp ult ptr %i.adb, %i.ada
  %found.conflict1027 = and i1 %bound01025, %bound11026
  %bound01028 = icmp ult ptr %i.acx, %18
  %bound11029 = icmp ult ptr %17, %i.ada
  %found.conflict1030 = and i1 %bound01028, %bound11029
  %conflict.rdx1031 = or i1 %found.conflict1027, %found.conflict1030
  br i1 %conflict.rdx1031, label %.lr.ph.i.i.i.i.i.i175.preheader1417, label %vector.ph1032

vector.ph1032:                                    ; preds = %vector.memcheck1024
  %n.vec1033 = and i64 %i.acv, -4                 ; 3 uses
  %i.add = add i64 %i.acr, %n.vec1033
  %broadcast.splatinsert1034 = insertelement <2 x double> poison, double %i.acg, i64 0
  %broadcast.splat1035 = shufflevector <2 x double> %broadcast.splatinsert1034, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1032
  %index1037 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1044, %vector.body1036 ] ; 2 uses
  %i.ade = add i64 %i.acr, %index1037             ; 3 uses
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %i.ade ; 3 uses
  %i.adg = getelementptr inbounds [8 x i8], ptr %i.aci, i64 %i.ade ; 2 uses
  %i.adh = getelementptr inbounds [8 x i8], ptr %i.acj, i64 %i.ade ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %wide.load1038 = load <2 x double>, ptr %i.adg, align 8, !tbaa !46, !alias.scope !584
  %wide.load1039 = load <2 x double>, ptr %i.adi, align 8, !tbaa !46, !alias.scope !584
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %wide.load1040 = load <2 x double>, ptr %i.adh, align 8, !tbaa !46, !alias.scope !585
  %wide.load1041 = load <2 x double>, ptr %i.adj, align 8, !tbaa !46, !alias.scope !585
  %i.adk = fsub <2 x double> %wide.load1038, %wide.load1040
  %i.adl = fsub <2 x double> %wide.load1039, %wide.load1041
  %i.adm = fmul <2 x double> %broadcast.splat1035, %i.adk
  %i.adn = fmul <2 x double> %broadcast.splat1035, %i.adl
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adf, i64 16 ; 2 uses
  %wide.load1042 = load <2 x double>, ptr %i.adf, align 8, !tbaa !46, !alias.scope !586, !noalias !587
  %wide.load1043 = load <2 x double>, ptr %i.ado, align 8, !tbaa !46, !alias.scope !586, !noalias !587
  %i.adp = fsub <2 x double> %wide.load1042, %i.adm
  %i.adq = fsub <2 x double> %wide.load1043, %i.adn
  store <2 x double> %i.adp, ptr %i.adf, align 8, !tbaa !46, !alias.scope !586, !noalias !587
  store <2 x double> %i.adq, ptr %i.ado, align 8, !tbaa !46, !alias.scope !586, !noalias !587
  %index.next1044 = add nuw i64 %index1037, 4     ; 2 uses
  %i.adr = icmp eq i64 %index.next1044, %n.vec1033
  br i1 %i.adr, label %middle.block1045, label %vector.body1036, !llvm.loop !438

middle.block1045:                                 ; preds = %vector.body1036
  %cmp.n1046 = icmp eq i64 %i.acv, %n.vec1033
  br i1 %cmp.n1046, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit182, label %.lr.ph.i.i.i.i.i.i175.preheader1417

.lr.ph.i.i.i.i.i.i175.preheader1417:              ; preds = %vector.memcheck1024, %.lr.ph.i.i.i.i.i.i175.preheader, %middle.block1045
  %.05.i.i.i.i.i.i176.ph = phi i64 [ %i.acr, %vector.memcheck1024 ], [ %i.acr, %.lr.ph.i.i.i.i.i.i175.preheader ], [ %i.add, %middle.block1045 ] ; 7 uses
  %i.ads = sub i64 %i.acp, %.05.i.i.i.i.i.i176.ph
  %.neg1486 = add i64 %.05.i.i.i.i.i.i176.ph, 1
  %xtraiter1441 = and i64 %i.ads, 1
  %lcmp.mod1442.not = icmp eq i64 %xtraiter1441, 0
  br i1 %lcmp.mod1442.not, label %.lr.ph.i.i.i.i.i.i175.prol.loopexit, label %.lr.ph.i.i.i.i.i.i175.prol

.lr.ph.i.i.i.i.i.i175.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i175.preheader1417
  %i.adt = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %.05.i.i.i.i.i.i176.ph ; 2 uses
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.aci, i64 %.05.i.i.i.i.i.i176.ph
  %i.adv = getelementptr inbounds [8 x i8], ptr %i.acj, i64 %.05.i.i.i.i.i.i176.ph
  %i.adw = load double, ptr %i.adu, align 8, !tbaa !46
  %i.adx = load double, ptr %i.adv, align 8, !tbaa !46
  %i.ady = fsub double %i.adw, %i.adx
  %i.adz = fmul double %i.acg, %i.ady
  %i.aea = load double, ptr %i.adt, align 8, !tbaa !46
  %i.aeb = fsub double %i.aea, %i.adz
  store double %i.aeb, ptr %i.adt, align 8, !tbaa !46
  %i.aec = add nsw i64 %.05.i.i.i.i.i.i176.ph, 1
  br label %.lr.ph.i.i.i.i.i.i175.prol.loopexit

.lr.ph.i.i.i.i.i.i175.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i175.prol, %.lr.ph.i.i.i.i.i.i175.preheader1417
  %.05.i.i.i.i.i.i176.unr = phi i64 [ %.05.i.i.i.i.i.i176.ph, %.lr.ph.i.i.i.i.i.i175.preheader1417 ], [ %i.aec, %.lr.ph.i.i.i.i.i.i175.prol ]
  %i.aed = icmp eq i64 %i.acp, %.neg1486
  br i1 %i.aed, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit182, label %.lr.ph.i.i.i.i.i.i175

.lr.ph.i.i.i.i.i.i175:                            ; preds = %.lr.ph.i.i.i.i.i.i175.prol.loopexit, %.lr.ph.i.i.i.i.i.i175
  %.05.i.i.i.i.i.i176 = phi i64 [ %i.aex, %.lr.ph.i.i.i.i.i.i175 ], [ %.05.i.i.i.i.i.i176.unr, %.lr.ph.i.i.i.i.i.i175.prol.loopexit ] ; 5 uses
  %i.aee = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %.05.i.i.i.i.i.i176 ; 2 uses
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.aci, i64 %.05.i.i.i.i.i.i176
  %i.aeg = getelementptr inbounds [8 x i8], ptr %i.acj, i64 %.05.i.i.i.i.i.i176
  %i.aeh = load double, ptr %i.aef, align 8, !tbaa !46
  %i.aei = load double, ptr %i.aeg, align 8, !tbaa !46
  %i.aej = fsub double %i.aeh, %i.aei
  %i.aek = fmul double %i.acg, %i.aej
  %i.ael = load double, ptr %i.aee, align 8, !tbaa !46
  %i.aem = fsub double %i.ael, %i.aek
  store double %i.aem, ptr %i.aee, align 8, !tbaa !46
  %i.aen = add nsw i64 %.05.i.i.i.i.i.i176, 1     ; 3 uses
  %i.aeo = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %i.aen ; 2 uses
  %i.aep = getelementptr inbounds [8 x i8], ptr %i.aci, i64 %i.aen
  %i.aeq = getelementptr inbounds [8 x i8], ptr %i.acj, i64 %i.aen
  %i.aer = load double, ptr %i.aep, align 8, !tbaa !46
  %i.aes = load double, ptr %i.aeq, align 8, !tbaa !46
  %i.aet = fsub double %i.aer, %i.aes
  %i.aeu = fmul double %i.acg, %i.aet
  %i.aev = load double, ptr %i.aeo, align 8, !tbaa !46
  %i.aew = fsub double %i.aev, %i.aeu
  store double %i.aew, ptr %i.aeo, align 8, !tbaa !46
  %i.aex = add nsw i64 %.05.i.i.i.i.i.i176, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i177.1 = icmp eq i64 %i.aex, %i.acp
  br i1 %exitcond.not.i.i.i.i.i.i177.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit182, label %.lr.ph.i.i.i.i.i.i175, !llvm.loop !439

.lr.ph.i.i.i.i.i180:                              ; preds = %.lr.ph.i.i.i.i.i180, %.lr.ph.i.preheader.i.i.i.i178
  %.011.i.i.i.i.i181 = phi i64 [ %i.afh, %.lr.ph.i.i.i.i.i180 ], [ 0, %.lr.ph.i.preheader.i.i.i.i178 ] ; 4 uses
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.ack, i64 %.011.i.i.i.i.i181 ; 2 uses
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %.011.i.i.i.i.i181
  %i.afa = load <2 x double>, ptr %i.aez, align 16, !tbaa !47
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %.011.i.i.i.i.i181
  %i.afc = load <2 x double>, ptr %i.afb, align 16, !tbaa !47
  %i.afd = fsub <2 x double> %i.afa, %i.afc
  %i.afe = fmul <2 x double> %i.act, %i.afd
  %i.aff = load <2 x double>, ptr %i.aey, align 16, !tbaa !47
  %i.afg = fsub <2 x double> %i.aff, %i.afe
  store <2 x double> %i.afg, ptr %i.aey, align 16, !tbaa !47
  %i.afh = add nuw nsw i64 %.011.i.i.i.i.i181, 2  ; 2 uses
  %i.afi = icmp slt i64 %i.afh, %i.acr
  br i1 %i.afi, label %.lr.ph.i.i.i.i.i180, label %._crit_edge.i.i.i.i.i174, !llvm.loop !373

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit182: ; preds = %.lr.ph.i.i.i.i.i.i175.prol.loopexit, %.lr.ph.i.i.i.i.i.i175, %middle.block1045, %._crit_edge.i.i.i.i.i174, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit172
  %i.afj = load ptr, ptr %i.a, align 8, !tbaa !17 ; 9 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 1224
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afm = load i32, ptr %i.afl, align 8, !tbaa !32
  %i.afn = add i32 %i.afm, -1
  %i.afo = sext i32 %i.afn to i64                 ; 10 uses
  %i.afp = load ptr, ptr %i.afk, align 8, !tbaa !34, !noalias !588 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afj, i64 1232
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !35, !noalias !588 ; 2 uses
  %i.afs = mul i64 %i.afr, %i.afo
  %i.aft = getelementptr [8 x i8], ptr %i.afp, i64 %i.afs ; 24 uses
  %i.afu = load ptr, ptr %i.bq, align 8, !tbaa !33 ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afj, i64 112
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !34, !noalias !589 ; 3 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afj, i64 120
  %i.afy = load i64, ptr %i.afx, align 8, !tbaa !35, !noalias !589 ; 31 uses
  %i.afz = mul i64 %i.afy, %i.afo
  %.not.i.i.i.i.i183 = icmp eq ptr %i.afw, null
  %i.aga = getelementptr [8 x i8], ptr %i.afw, i64 %i.afz ; 14 uses
  %i.agb = select i1 %.not.i.i.i.i.i183, ptr null, ptr %i.aga ; 15 uses
  %i.agc = icmp sgt i64 %i.afy, 0
  br i1 %i.agc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit182
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afu, i64 32
  %i.age = getelementptr inbounds nuw i8, ptr %i.afu, i64 40
  %i.agf = load ptr, ptr %i.agd, align 8, !tbaa !34, !noalias !590 ; 11 uses
  %i.agg = load i64, ptr %i.age, align 8, !tbaa !35, !noalias !590 ; 22 uses
  %i.agh = icmp eq i64 %i.agg, 0
  %i.agi = sdiv i64 %i.agg, 4
  %i.agj = shl nsw i64 %i.agi, 2                  ; 4 uses
  %i.agk = sdiv i64 %i.agg, 2
  %i.agl = shl nsw i64 %i.agk, 1                  ; 10 uses
  %i.agm = icmp sgt i64 %i.agg, 3
  %i.agn = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  %i.ago = icmp samesign ugt i64 %i.agg, 7
  %i.agp = icmp sgt i64 %i.agl, %i.agj
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %i.agj
  %i.agr = icmp slt i64 %i.agl, %i.agg            ; 2 uses
  br i1 %i.agh, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %min.iters.check1082 = icmp ult i64 %i.afy, 4
  br i1 %min.iters.check1082, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader1408, label %vector.ph1083

vector.ph1083:                                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec1084 = and i64 %i.afy, 9223372036854775804 ; 3 uses
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %vector.ph1083
  %index1086 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1087, %vector.body1085 ] ; 2 uses
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %index1086 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 16
  store <2 x double> splat (double -0.000000e+00), ptr %i.ags, align 8, !tbaa !46
  store <2 x double> splat (double -0.000000e+00), ptr %i.agt, align 8, !tbaa !46
  %index.next1087 = add nuw i64 %index1086, 4     ; 2 uses
  %i.agu = icmp eq i64 %index.next1087, %n.vec1084
  br i1 %i.agu, label %middle.block1088, label %vector.body1085, !llvm.loop !446

middle.block1088:                                 ; preds = %vector.body1085
  %cmp.n1089 = icmp eq i64 %i.afy, %n.vec1084
  br i1 %cmp.n1089, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader1408

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader1408: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block1088
  %.07.us.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec1084, %middle.block1088 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader1408, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i
  %.07.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i ], [ %.07.us.i.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i.preheader1408 ] ; 2 uses
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %.07.us.i.i.i.i.i.i.i.i.i.i
  store double -0.000000e+00, ptr %i.agv, align 8, !tbaa !46
  %i.agw = add nuw nsw i64 %.07.us.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.agw, %i.afy
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i, !llvm.loop !447

.lr.ph.split.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.agg, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %min.iters.check1060 = icmp ugt i64 %i.afy, 21
  %ident.check.not = icmp eq i64 %i.agg, 1
  %or.cond = and i1 %min.iters.check1060, %ident.check.not
  br i1 %or.cond, label %vector.memcheck1061, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader1409

vector.memcheck1061:                              ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader
  %i.agx = shl nsw i64 %i.afo, 3
  %i.agy = add nsw i64 %i.agx, 8
  %i.agz = mul i64 %i.afy, %i.agy
  %i.aha = getelementptr i8, ptr %i.afw, i64 %i.agz ; 2 uses
  %i.ahb = mul i64 %i.afr, %i.afo
  %i.ahc = shl i64 %i.ahb, 3
  %i.ahd = getelementptr i8, ptr %i.afp, i64 %i.ahc
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 8
  %19 = shl i64 %i.afy, 3
  %20 = getelementptr i8, ptr %i.agf, i64 %19
  %bound01062 = icmp ult ptr %i.aga, %i.ahe
  %bound11063 = icmp ult ptr %i.aft, %i.aha
  %found.conflict1064 = and i1 %bound01062, %bound11063
  %bound01065 = icmp ult ptr %i.aga, %20
  %bound11066 = icmp ult ptr %i.agf, %i.aha
  %found.conflict1067 = and i1 %bound01065, %bound11066
  %conflict.rdx1068 = or i1 %found.conflict1064, %found.conflict1067
  br i1 %conflict.rdx1068, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader1409, label %vector.ph1069

vector.ph1069:                                    ; preds = %vector.memcheck1061
  %n.vec1070 = and i64 %i.afy, 9223372036854775804 ; 3 uses
  %i.ahf = load double, ptr %i.aft, align 8, !tbaa !46, !alias.scope !591
  %broadcast.splatinsert1075 = insertelement <2 x double> poison, double %i.ahf, i64 0
  %broadcast.splat1076 = shufflevector <2 x double> %broadcast.splatinsert1075, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %vector.ph1069
  %index1072 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1077, %vector.body1071 ] ; 3 uses
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %index1072 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  %wide.load1073 = load <2 x double>, ptr %i.ahg, align 8, !tbaa !46, !alias.scope !592
  %wide.load1074 = load <2 x double>, ptr %i.ahh, align 8, !tbaa !46, !alias.scope !592
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %index1072 ; 2 uses
  %i.ahj = fneg <2 x double> %wide.load1073
  %i.ahk = fneg <2 x double> %wide.load1074
  %i.ahl = fmul <2 x double> %broadcast.splat1076, %i.ahj
  %i.ahm = fmul <2 x double> %broadcast.splat1076, %i.ahk
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16
  store <2 x double> %i.ahl, ptr %i.ahi, align 8, !tbaa !46, !alias.scope !593, !noalias !594
  store <2 x double> %i.ahm, ptr %i.ahn, align 8, !tbaa !46, !alias.scope !593, !noalias !594
  %index.next1077 = add nuw i64 %index1072, 4     ; 2 uses
  %i.aho = icmp eq i64 %index.next1077, %n.vec1070
  br i1 %i.aho, label %middle.block1078, label %vector.body1071, !llvm.loop !452

middle.block1078:                                 ; preds = %vector.body1071
  %cmp.n1079 = icmp eq i64 %i.afy, %n.vec1070
  br i1 %cmp.n1079, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader1409

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader1409: ; preds = %vector.memcheck1061, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block1078
  %.07.us8.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck1061 ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec1070, %middle.block1078 ] ; 5 uses
  %.neg1487 = or disjoint i64 %.07.us8.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter1451 = and i64 %i.afy, 1
  %lcmp.mod1452.not = icmp eq i64 %xtraiter1451, 0
  br i1 %lcmp.mod1452.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader1409
  %i.ahp = mul nsw i64 %.07.us8.i.i.i.i.i.i.i.i.i.i.ph, %i.agg
  %i.ahq = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.ahp
  %i.ahr = load double, ptr %i.aft, align 8, !tbaa !46
  %i.ahs = load double, ptr %i.ahq, align 8, !tbaa !46
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %.07.us8.i.i.i.i.i.i.i.i.i.i.ph
  %i.ahu = fneg double %i.ahs
  %i.ahv = fmul double %i.ahr, %i.ahu
  store double %i.ahv, ptr %i.aht, align 8, !tbaa !46
  %i.ahw = or disjoint i64 %.07.us8.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader1409
  %.07.us8.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.07.us8.i.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.preheader1409 ], [ %i.ahw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ahx = icmp eq i64 %i.afy, %.neg1487
  br i1 %i.ahx, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i
  %.07.us8.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ain, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i ], [ %.07.us8.i.i.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ahy = mul nsw i64 %.07.us8.i.i.i.i.i.i.i.i.i.i, %i.agg
  %i.ahz = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.ahy
  %i.aia = load double, ptr %i.aft, align 8, !tbaa !46
  %i.aib = load double, ptr %i.ahz, align 8, !tbaa !46
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %.07.us8.i.i.i.i.i.i.i.i.i.i
  %i.aid = fneg double %i.aib
  %i.aie = fmul double %i.aia, %i.aid
  store double %i.aie, ptr %i.aic, align 8, !tbaa !46
  %i.aif = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aig = mul nsw i64 %i.aif, %i.agg
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.aig
  %i.aii = load double, ptr %i.aft, align 8, !tbaa !46
  %i.aij = load double, ptr %i.aih, align 8, !tbaa !46
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %i.aif
  %i.ail = fneg double %i.aij
  %i.aim = fmul double %i.aii, %i.ail
  store double %i.aim, ptr %i.aik, align 8, !tbaa !46
  %i.ain = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond33.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ain, %i.afy
  br i1 %exitcond33.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i, !llvm.loop !453

.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  br i1 %i.agm, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i
  %i.aio = sub nsw i64 %i.agg, %i.agl
  %xtraiter1448 = and i64 %i.aio, 3               ; 2 uses
  %lcmp.mod1449.not = icmp eq i64 %xtraiter1448, 0
  %i.aip = sub nsw i64 %i.agl, %i.agg
  %i.aiq = icmp ugt i64 %i.aip, -4
  br label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us12.i.i.i.i.i.i.i.i.i.i
  %.07.us11.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.alg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us12.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.air = mul nuw nsw i64 %.07.us11.i.i.i.i.i.i.i.i.i.i, %i.agg
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.agf, i64 %i.air ; 10 uses
  %i.ait = load <2 x double>, ptr %i.aft, align 1, !tbaa !47
  %i.aiu = load <2 x double>, ptr %i.ais, align 1, !tbaa !47
  %i.aiv = fmul <2 x double> %i.ait, %i.aiu       ; 2 uses
  %i.aiw = load <2 x double>, ptr %i.agn, align 1, !tbaa !47
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %i.aiy = load <2 x double>, ptr %i.aix, align 1, !tbaa !47
  %i.aiz = fmul <2 x double> %i.aiw, %i.aiy       ; 2 uses
  br i1 %i.ago, label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i ]
  %.07278.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ajf, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ], [ %i.aiv, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i ]
  %.07577.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ajm, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ], [ %i.aiz, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i ]
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %.05480.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.ajb = load <2 x double>, ptr %i.aja, align 1, !tbaa !47
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %.05480.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.ajd = load <2 x double>, ptr %i.ajc, align 1, !tbaa !47
  %i.aje = fmul <2 x double> %i.ajb, %i.ajd
  %i.ajf = fadd <2 x double> %.07278.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %i.aje ; 2 uses
  %i.ajg = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.ajh = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %i.ajg
  %i.aji = load <2 x double>, ptr %i.ajh, align 1, !tbaa !47
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %i.ajg
  %i.ajk = load <2 x double>, ptr %i.ajj, align 1, !tbaa !47
  %i.ajl = fmul <2 x double> %i.aji, %i.ajk
  %i.ajm = fadd <2 x double> %.07577.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %i.ajl ; 2 uses
  %.054.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ajn = icmp slt i64 %.054.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %i.agj
  br i1 %i.ajn, label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, !llvm.loop !454

._crit_edge.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i
  %.075.lcssa.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aiz, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i ], [ %i.ajm, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aiv, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i ], [ %i.ajf, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ]
  %i.ajo = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.agp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.ajp = load <2 x double>, ptr %i.agq, align 1, !tbaa !47
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %i.agj
  %i.ajr = load <2 x double>, ptr %i.ajq, align 1, !tbaa !47
  %i.ajs = fmul <2 x double> %i.ajp, %i.ajr
  %i.ajt = fadd <2 x double> %i.ajo, %i.ajs
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %.274.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ajo, %._crit_edge.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ], [ %i.ajt, %bb.p ]
  %i.aju = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i) ; 3 uses
  br i1 %i.agr, label %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us12.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.q
  br i1 %lcmp.mod1449.not, label %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.akb, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.agl, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.aka, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.aju, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter1450 = phi i64 [ %prol.iter1450.next, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol
  %i.ajw = load double, ptr %i.ajv, align 8, !tbaa !46
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol
  %i.ajy = load double, ptr %i.ajx, align 8, !tbaa !46
  %i.ajz = fmul double %i.ajw, %i.ajy
  %i.aka = fadd double %.182.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol, %i.ajz ; 3 uses
  %i.akb = add nuw nsw i64 %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1450.next = add i64 %prol.iter1450, 1 ; 2 uses
  %prol.iter1450.cmp.not = icmp eq i64 %prol.iter1450.next, %xtraiter1448
  br i1 %prol.iter1450.cmp.not, label %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !455

.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa1413.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aka, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.agl, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.akb, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.unr = phi double [ %i.aju, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aka, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.aiq, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us12.i.i.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ald, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi double [ %i.alc, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !46
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !46
  %i.akg = fmul double %i.akd, %i.akf
  %i.akh = fadd double %.182.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %i.akg
  %i.aki = add nuw nsw i64 %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %i.aki
  %i.akk = load double, ptr %i.akj, align 8, !tbaa !46
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %i.aki
  %i.akm = load double, ptr %i.akl, align 8, !tbaa !46
  %i.akn = fmul double %i.akk, %i.akm
  %i.ako = fadd double %i.akh, %i.akn
  %i.akp = add nuw nsw i64 %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %i.akp
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !46
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %i.akp
  %i.akt = load double, ptr %i.aks, align 8, !tbaa !46
  %i.aku = fmul double %i.akr, %i.akt
  %i.akv = fadd double %i.ako, %i.aku
  %i.akw = add nuw nsw i64 %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %i.akw
  %i.aky = load double, ptr %i.akx, align 8, !tbaa !46
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %i.akw
  %i.ala = load double, ptr %i.akz, align 8, !tbaa !46
  %i.alb = fmul double %i.aky, %i.ala
  %i.alc = fadd double %i.akv, %i.alb             ; 2 uses
  %i.ald = add nuw nsw i64 %.05283.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ald, %i.agg
  br i1 %exitcond.not.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us12.i.i.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, !llvm.loop !456

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us12.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %bb.q
  %.0.i.i.i.i.us13.i.i.i.i.i.i.i.i.i.i = phi double [ %i.aju, %bb.q ], [ %.lcssa1413.unr, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.alc, %.lr.ph85.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ]
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %.07.us11.i.i.i.i.i.i.i.i.i.i
  %i.alf = fneg double %.0.i.i.i.i.us13.i.i.i.i.i.i.i.i.i.i
  store double %i.alf, ptr %i.ale, align 8, !tbaa !46
  %i.alg = add nuw nsw i64 %.07.us11.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond32.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.alg, %i.afy
  br i1 %exitcond32.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i.i, !llvm.loop !457

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i:     ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i
  br i1 %i.agr, label %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i
  %xtraiter1443 = and i64 %i.afy, 1
  %i.alh = icmp eq i64 %i.afy, 1
  br i1 %i.alh, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader.new

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.afy, 9223372036854775806
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i
  %i.ali = sub i64 %i.agg, %i.agl
  %xtraiter1446 = and i64 %i.ali, 3               ; 2 uses
  %lcmp.mod1447.not = icmp eq i64 %xtraiter1446, 0
  %i.alj = sub i64 %i.agl, %i.agg
  %i.alk = icmp ugt i64 %i.alj, -4
  br label %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us20.i.i.i.i.i.i.i.i.i.i
  %.07.us14.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.anc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us20.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.all = mul nsw i64 %.07.us14.i.i.i.i.i.i.i.i.i.i, %i.agg
  %i.alm = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.all ; 6 uses
  %i.aln = load <2 x double>, ptr %i.aft, align 1, !tbaa !47
  %i.alo = load <2 x double>, ptr %i.alm, align 1, !tbaa !47
  %i.alp = fmul <2 x double> %i.aln, %i.alo
  %i.alq = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.alp) ; 2 uses
  br i1 %lcmp.mod1447.not, label %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.alx, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.agl, %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.182.i.i.i.i.i.i.us18.i.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.alw, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.alq, %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i ]
  %i.alr = getelementptr inbounds [8 x i8], ptr %i.aft, i64 %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i.prol
  %i.als = load double, ptr %i.alr, align 8, !tbaa !46
  %i.alt = getelementptr inbounds [8 x i8], ptr %i.alm, i64 %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i.prol
  %i.alu = load double, ptr %i.alt, align 8, !tbaa !46
  %i.alv = fmul double %i.als, %i.alu
  %i.alw = fadd double %.182.i.i.i.i.i.i.us18.i.i.i.i.i.i.i.i.i.i.prol, %i.alv ; 3 uses
  %i.alx = add nsw i64 %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1446
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !458

.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i
  %.lcssa1415.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i ], [ %i.alw, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.agl, %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i ], [ %i.alx, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.us18.i.i.i.i.i.i.i.i.i.i.unr = phi double [ %i.alq, %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i ], [ %i.alw, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.alk, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us20.i.i.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.amz, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.us18.i.i.i.i.i.i.i.i.i.i = phi double [ %i.amy, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.us18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.aly = getelementptr inbounds [8 x i8], ptr %i.aft, i64 %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i
  %i.alz = load double, ptr %i.aly, align 8, !tbaa !46
  %i.ama = getelementptr inbounds [8 x i8], ptr %i.alm, i64 %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i
  %i.amb = load double, ptr %i.ama, align 8, !tbaa !46
  %i.amc = fmul double %i.alz, %i.amb
  %i.amd = fadd double %.182.i.i.i.i.i.i.us18.i.i.i.i.i.i.i.i.i.i, %i.amc
  %i.ame = add nsw i64 %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.amf = getelementptr inbounds [8 x i8], ptr %i.aft, i64 %i.ame
  %i.amg = load double, ptr %i.amf, align 8, !tbaa !46
  %i.amh = getelementptr inbounds [8 x i8], ptr %i.alm, i64 %i.ame
  %i.ami = load double, ptr %i.amh, align 8, !tbaa !46
  %i.amj = fmul double %i.amg, %i.ami
  %i.amk = fadd double %i.amd, %i.amj
  %i.aml = add nsw i64 %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.amm = getelementptr inbounds [8 x i8], ptr %i.aft, i64 %i.aml
  %i.amn = load double, ptr %i.amm, align 8, !tbaa !46
  %i.amo = getelementptr inbounds [8 x i8], ptr %i.alm, i64 %i.aml
  %i.amp = load double, ptr %i.amo, align 8, !tbaa !46
  %i.amq = fmul double %i.amn, %i.amp
  %i.amr = fadd double %i.amk, %i.amq
  %i.ams = add nsw i64 %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.amt = getelementptr inbounds [8 x i8], ptr %i.aft, i64 %i.ams
  %i.amu = load double, ptr %i.amt, align 8, !tbaa !46
  %i.amv = getelementptr inbounds [8 x i8], ptr %i.alm, i64 %i.ams
  %i.amw = load double, ptr %i.amv, align 8, !tbaa !46
  %i.amx = fmul double %i.amu, %i.amw
  %i.amy = fadd double %i.amr, %i.amx             ; 2 uses
  %i.amz = add nsw i64 %.05283.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.amz, %i.agg
  br i1 %exitcond.not.i.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us20.i.i.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i, !llvm.loop !456

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us20.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa1415 = phi double [ %.lcssa1415.unr, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.amy, %.lr.ph85.i.i.i.i.i.i.us16.i.i.i.i.i.i.i.i.i.i ]
  %i.ana = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %.07.us14.i.i.i.i.i.i.i.i.i.i
  %i.anb = fneg double %.lcssa1415
  store double %i.anb, ptr %i.ana, align 8, !tbaa !46
  %i.anc = add nuw nsw i64 %.07.us14.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.anc, %i.afy
  br i1 %exitcond31.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph85.i.i.i.i.i.i.preheader.us15.i.i.i.i.i.i.i.i.i.i, !llvm.loop !457

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.07.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.anu, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.and = mul nsw i64 %.07.i.i.i.i.i.i.i.i.i.i, %i.agg
  %i.ane = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.and
  %i.anf = load <2 x double>, ptr %i.aft, align 1, !tbaa !47
  %i.ang = load <2 x double>, ptr %i.ane, align 1, !tbaa !47
  %i.anh = fmul <2 x double> %i.anf, %i.ang
  %i.ani = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.anh)
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %.07.i.i.i.i.i.i.i.i.i.i
  %i.ank = fneg double %i.ani
  store double %i.ank, ptr %i.anj, align 8, !tbaa !46
  %i.anl = or disjoint i64 %.07.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.anm = mul nsw i64 %i.anl, %i.agg
  %i.ann = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.anm
  %i.ano = load <2 x double>, ptr %i.aft, align 1, !tbaa !47
  %i.anp = load <2 x double>, ptr %i.ann, align 1, !tbaa !47
  %i.anq = fmul <2 x double> %i.ano, %i.anp
  %i.anr = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.anq)
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %i.anl
  %i.ant = fneg double %i.anr
  store double %i.ant, ptr %i.ans, align 8, !tbaa !46
  %i.anu = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit1416.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !457

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit1416.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod1444.not = icmp eq i64 %xtraiter1443, 0
  br i1 %lcmp.mod1444.not, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit1416.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.anu, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit1416.unr-lcssa ] ; 2 uses
  %lcmp.mod1445 = trunc i64 %i.afy to i1
  tail call void @llvm.assume(i1 %lcmp.mod1445)
  %i.anv = mul nsw i64 %.07.i.i.i.i.i.i.i.i.i.i.epil.init, %i.agg
  %i.anw = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.anv
  %i.anx = load <2 x double>, ptr %i.aft, align 1, !tbaa !47
  %i.any = load <2 x double>, ptr %i.anw, align 1, !tbaa !47
  %i.anz = fmul <2 x double> %i.anx, %i.any
  %i.aoa = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.anz)
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %.07.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.aoc = fneg double %i.aoa
  store double %i.aoc, ptr %i.aob, align 8, !tbaa !46
  br label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit1416.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us20.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us12.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us9.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS2_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S6_Li1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i, %middle.block1078, %middle.block1088, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS6_INS7_20scalar_difference_opIddEESD_SD_EEEEEERS2_RKNS3_IT_EE.exit182
  %i.aod = getelementptr inbounds nuw i8, ptr %i.afj, i64 184
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !34, !noalias !595 ; 4 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.afj, i64 192
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !35, !noalias !595 ; 3 uses
  %i.aoh = mul i64 %i.aog, %i.afo                 ; 2 uses
  %i.aoi = getelementptr [8 x i8], ptr %i.aoe, i64 %i.aoh ; 10 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.afj, i64 256
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !34, !noalias !596 ; 4 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.afj, i64 264
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !35, !noalias !596 ; 3 uses
  %i.aon = mul i64 %i.aom, %i.afo                 ; 2 uses
  %i.aoo = getelementptr [8 x i8], ptr %i.aok, i64 %i.aon ; 10 uses
  %i.aop = load double, ptr %i.afu, align 8, !tbaa !46, !noalias !597 ; 9 uses
  %.sroa.3.8.vec.insert.i.i.i.i187 = insertelement <2 x double> poison, double %i.aop, i64 0
  %i.aoq = ptrtoint ptr %i.agb to i64             ; 2 uses
  %i.aor = and i64 %i.aoq, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aor, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

bb.r:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.aos = lshr exact i64 %i.aoq, 3
  %i.aot = and i64 %i.aos, 1
  %i.aou = tail call i64 @llvm.smin.i64(i64 %i.aot, i64 %i.afy)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i: ; preds = %bb.r, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.0.i.i.i.i.i.i = phi i64 [ %i.aou, %bb.r ], [ %i.afy, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7ProductINS_9TransposeIS3_EES2_Li1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 15 uses
  %i.aov = sub nsw i64 %i.afy, %.0.i.i.i.i.i.i    ; 2 uses
  %i.aow = sdiv i64 %i.aov, 2                     ; 2 uses
  %i.aox = shl nsw i64 %i.aow, 1                  ; 2 uses
  %i.aoy = add nsw i64 %i.aox, %.0.i.i.i.i.i.i    ; 6 uses
  %i.aoz = icmp sgt i64 %.0.i.i.i.i.i.i, 0
  br i1 %i.aoz, label %.lr.ph.i.i.i.i.i.i191.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i191.preheader:                  ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %min.iters.check1103 = icmp ult i64 %.0.i.i.i.i.i.i, 14
  br i1 %min.iters.check1103, label %.lr.ph.i.i.i.i.i.i191.preheader1407, label %vector.memcheck1104

vector.memcheck1104:                              ; preds = %.lr.ph.i.i.i.i.i.i191.preheader
  %i.apa = shl i64 %.0.i.i.i.i.i.i, 3
  %i.apb = getelementptr i8, ptr %i.agb, i64 %i.apa ; 2 uses
  %i.apc = mul i64 %i.aog, %i.afo
  %i.apd = add i64 %i.apc, %.0.i.i.i.i.i.i
  %i.ape = shl i64 %i.apd, 3
  %i.apf = getelementptr i8, ptr %i.aoe, i64 %i.ape
  %21 = mul i64 %i.aom, %i.afo
  %22 = add i64 %21, %.0.i.i.i.i.i.i
  %23 = shl i64 %22, 3
  %24 = getelementptr i8, ptr %i.aok, i64 %23
  %bound01105 = icmp ult ptr %i.agb, %i.apf
  %bound11106 = icmp ult ptr %i.aoi, %i.apb
  %found.conflict1107 = and i1 %bound01105, %bound11106
  %bound01108 = icmp ult ptr %i.agb, %24
  %bound11109 = icmp ult ptr %i.aoo, %i.apb
  %found.conflict1110 = and i1 %bound01108, %bound11109
  %conflict.rdx1111 = or i1 %found.conflict1107, %found.conflict1110
  br i1 %conflict.rdx1111, label %.lr.ph.i.i.i.i.i.i191.preheader1407, label %vector.ph1112

vector.ph1112:                                    ; preds = %vector.memcheck1104
  %n.vec1113 = and i64 %.0.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert1114 = insertelement <2 x double> poison, double %i.aop, i64 0
  %broadcast.splat1115 = shufflevector <2 x double> %broadcast.splatinsert1114, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1112
  %index1117 = phi i64 [ 0, %vector.ph1112 ], [ %index.next1124, %vector.body1116 ] ; 4 uses
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %index1117 ; 3 uses
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %index1117 ; 2 uses
  %i.api = getelementptr inbounds nuw [8 x i8], ptr %i.aoo, i64 %index1117 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %wide.load1118 = load <2 x double>, ptr %i.aph, align 8, !tbaa !46, !alias.scope !598
  %wide.load1119 = load <2 x double>, ptr %i.apj, align 8, !tbaa !46, !alias.scope !598
  %i.apk = getelementptr inbounds nuw i8, ptr %i.api, i64 16
  %wide.load1120 = load <2 x double>, ptr %i.api, align 8, !tbaa !46, !alias.scope !599
  %wide.load1121 = load <2 x double>, ptr %i.apk, align 8, !tbaa !46, !alias.scope !599
  %i.apl = fsub <2 x double> %wide.load1118, %wide.load1120
  %i.apm = fsub <2 x double> %wide.load1119, %wide.load1121
  %i.apn = fmul <2 x double> %broadcast.splat1115, %i.apl
  %i.apo = fmul <2 x double> %broadcast.splat1115, %i.apm
  %i.app = getelementptr inbounds nuw i8, ptr %i.apg, i64 16 ; 2 uses
  %wide.load1122 = load <2 x double>, ptr %i.apg, align 8, !tbaa !46, !alias.scope !600, !noalias !601
  %wide.load1123 = load <2 x double>, ptr %i.app, align 8, !tbaa !46, !alias.scope !600, !noalias !601
  %i.apq = fsub <2 x double> %wide.load1122, %i.apn
  %i.apr = fsub <2 x double> %wide.load1123, %i.apo
  store <2 x double> %i.apq, ptr %i.apg, align 8, !tbaa !46, !alias.scope !600, !noalias !601
  store <2 x double> %i.apr, ptr %i.app, align 8, !tbaa !46, !alias.scope !600, !noalias !601
  %index.next1124 = add nuw i64 %index1117, 4     ; 2 uses
  %i.aps = icmp eq i64 %index.next1124, %n.vec1113
  br i1 %i.aps, label %middle.block1125, label %vector.body1116, !llvm.loop !469

middle.block1125:                                 ; preds = %vector.body1116
  %cmp.n1126 = icmp eq i64 %.0.i.i.i.i.i.i, %n.vec1113
  br i1 %cmp.n1126, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i191.preheader1407

.lr.ph.i.i.i.i.i.i191.preheader1407:              ; preds = %vector.memcheck1104, %.lr.ph.i.i.i.i.i.i191.preheader, %middle.block1125
  %.05.i.i.i.i.i.i192.ph = phi i64 [ 0, %vector.memcheck1104 ], [ 0, %.lr.ph.i.i.i.i.i.i191.preheader ], [ %n.vec1113, %middle.block1125 ] ; 6 uses
  %.neg1488 = or disjoint i64 %.05.i.i.i.i.i.i192.ph, 1
  %xtraiter1454 = and i64 %.0.i.i.i.i.i.i, 1
  %lcmp.mod1455.not = icmp eq i64 %xtraiter1454, 0
  br i1 %lcmp.mod1455.not, label %.lr.ph.i.i.i.i.i.i191.prol.loopexit, label %.lr.ph.i.i.i.i.i.i191.prol

.lr.ph.i.i.i.i.i.i191.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i191.preheader1407
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %.05.i.i.i.i.i.i192.ph ; 2 uses
  %i.apu = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %.05.i.i.i.i.i.i192.ph
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %i.aoo, i64 %.05.i.i.i.i.i.i192.ph
  %i.apw = load double, ptr %i.apu, align 8, !tbaa !46
  %i.apx = load double, ptr %i.apv, align 8, !tbaa !46
  %i.apy = fsub double %i.apw, %i.apx
  %i.apz = fmul double %i.aop, %i.apy
  %i.aqa = load double, ptr %i.apt, align 8, !tbaa !46
  %i.aqb = fsub double %i.aqa, %i.apz
  store double %i.aqb, ptr %i.apt, align 8, !tbaa !46
  %i.aqc = or disjoint i64 %.05.i.i.i.i.i.i192.ph, 1
  br label %.lr.ph.i.i.i.i.i.i191.prol.loopexit

.lr.ph.i.i.i.i.i.i191.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i191.prol, %.lr.ph.i.i.i.i.i.i191.preheader1407
  %.05.i.i.i.i.i.i192.unr = phi i64 [ %.05.i.i.i.i.i.i192.ph, %.lr.ph.i.i.i.i.i.i191.preheader1407 ], [ %i.aqc, %.lr.ph.i.i.i.i.i.i191.prol ]
  %i.aqd = icmp eq i64 %.0.i.i.i.i.i.i, %.neg1488
  br i1 %i.aqd, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i191

.lr.ph.i.i.i.i.i.i191:                            ; preds = %.lr.ph.i.i.i.i.i.i191.prol.loopexit, %.lr.ph.i.i.i.i.i.i191
  %.05.i.i.i.i.i.i192 = phi i64 [ %i.aqx, %.lr.ph.i.i.i.i.i.i191 ], [ %.05.i.i.i.i.i.i192.unr, %.lr.ph.i.i.i.i.i.i191.prol.loopexit ] ; 5 uses
  %i.aqe = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %.05.i.i.i.i.i.i192 ; 2 uses
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %.05.i.i.i.i.i.i192
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %i.aoo, i64 %.05.i.i.i.i.i.i192
  %i.aqh = load double, ptr %i.aqf, align 8, !tbaa !46
  %i.aqi = load double, ptr %i.aqg, align 8, !tbaa !46
  %i.aqj = fsub double %i.aqh, %i.aqi
  %i.aqk = fmul double %i.aop, %i.aqj
  %i.aql = load double, ptr %i.aqe, align 8, !tbaa !46
  %i.aqm = fsub double %i.aql, %i.aqk
  store double %i.aqm, ptr %i.aqe, align 8, !tbaa !46
  %i.aqn = add nuw nsw i64 %.05.i.i.i.i.i.i192, 1 ; 3 uses
  %i.aqo = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %i.aqn ; 2 uses
  %i.aqp = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %i.aqn
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %i.aoo, i64 %i.aqn
  %i.aqr = load double, ptr %i.aqp, align 8, !tbaa !46
  %i.aqs = load double, ptr %i.aqq, align 8, !tbaa !46
  %i.aqt = fsub double %i.aqr, %i.aqs
  %i.aqu = fmul double %i.aop, %i.aqt
  %i.aqv = load double, ptr %i.aqo, align 8, !tbaa !46
  %i.aqw = fsub double %i.aqv, %i.aqu
  store double %i.aqw, ptr %i.aqo, align 8, !tbaa !46
  %i.aqx = add nuw nsw i64 %.05.i.i.i.i.i.i192, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i193.1 = icmp eq i64 %i.aqx, %.0.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i193.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i191, !llvm.loop !470

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i191.prol.loopexit, %.lr.ph.i.i.i.i.i.i191, %middle.block1125, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %i.aqy = icmp sgt i64 %i.aov, 1
  br i1 %i.aqy, label %.lr.ph.i.preheader.i.i.i.i189, label %._crit_edge.i.i.i.i.i188

.lr.ph.i.preheader.i.i.i.i189:                    ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i
  %i.aqz = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i187, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i190

._crit_edge.i.i.i.i.i188:                         ; preds = %.lr.ph.i.i.i.i.i190, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i
  %i.ara = icmp slt i64 %i.aoy, %i.afy
  br i1 %i.ara, label %.lr.ph.i17.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_INS9_20scalar_difference_opIddEEKS4_SL_EEEEEERS4_RKNS5_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i188
  %i.arb = add i64 %.0.i.i.i.i.i.i, %i.aox
  %i.arc = sub i64 %i.afy, %i.arb                 ; 3 uses
  %min.iters.check1143 = icmp ult i64 %i.arc, 22
  br i1 %min.iters.check1143, label %.lr.ph.i17.i.i.i.i.i.preheader1406, label %vector.memcheck1144

vector.memcheck1144:                              ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.ard = shl i64 %i.aow, 4                      ; 3 uses
  %i.are = shl i64 %.0.i.i.i.i.i.i, 3             ; 3 uses
  %i.arf = getelementptr i8, ptr %i.agb, i64 %i.ard
  %i.arg = getelementptr i8, ptr %i.arf, i64 %i.are ; 2 uses
  %i.arh = shl i64 %i.afy, 3
  %i.ari = getelementptr i8, ptr %i.agb, i64 %i.arh ; 2 uses
  %i.arj = mul i64 %i.aog, %i.afo
  %i.ark = shl i64 %i.arj, 3
  %i.arl = getelementptr i8, ptr %i.aoe, i64 %i.ark
  %i.arm = getelementptr i8, ptr %i.arl, i64 %i.ard
  %i.arn = getelementptr i8, ptr %i.arm, i64 %i.are
  %i.aro = add i64 %i.afy, %i.aoh
  %i.arp = shl i64 %i.aro, 3
  %i.arq = getelementptr i8, ptr %i.aoe, i64 %i.arp
  %i.arr = mul i64 %i.aom, %i.afo
  %i.ars = shl i64 %i.arr, 3
  %i.art = getelementptr i8, ptr %i.aok, i64 %i.ars
  %i.aru = getelementptr i8, ptr %i.art, i64 %i.ard
  %i.arv = getelementptr i8, ptr %i.aru, i64 %i.are
  %i.arw = add i64 %i.afy, %i.aon
  %i.arx = shl i64 %i.arw, 3
  %i.ary = getelementptr i8, ptr %i.aok, i64 %i.arx
  %bound01145 = icmp ult ptr %i.arg, %i.arq
  %bound11146 = icmp ult ptr %i.arn, %i.ari
  %found.conflict1147 = and i1 %bound01145, %bound11146
  %bound01148 = icmp ult ptr %i.arg, %i.ary
  %bound11149 = icmp ult ptr %i.arv, %i.ari
  %found.conflict1150 = and i1 %bound01148, %bound11149
  %conflict.rdx1151 = or i1 %found.conflict1147, %found.conflict1150
  br i1 %conflict.rdx1151, label %.lr.ph.i17.i.i.i.i.i.preheader1406, label %vector.ph1152

vector.ph1152:                                    ; preds = %vector.memcheck1144
  %n.vec1153 = and i64 %i.arc, -4                 ; 3 uses
  %i.arz = add i64 %i.aoy, %n.vec1153
  %broadcast.splatinsert1154 = insertelement <2 x double> poison, double %i.aop, i64 0
  %broadcast.splat1155 = shufflevector <2 x double> %broadcast.splatinsert1154, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %vector.ph1152
  %index1157 = phi i64 [ 0, %vector.ph1152 ], [ %index.next1164, %vector.body1156 ] ; 2 uses
  %i.asa = add i64 %i.aoy, %index1157             ; 3 uses
  %i.asb = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.asa ; 3 uses
  %i.asc = getelementptr inbounds [8 x i8], ptr %i.aoi, i64 %i.asa ; 2 uses
  %i.asd = getelementptr inbounds [8 x i8], ptr %i.aoo, i64 %i.asa ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asc, i64 16
  %wide.load1158 = load <2 x double>, ptr %i.asc, align 8, !tbaa !46, !alias.scope !602
  %wide.load1159 = load <2 x double>, ptr %i.ase, align 8, !tbaa !46, !alias.scope !602
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asd, i64 16
  %wide.load1160 = load <2 x double>, ptr %i.asd, align 8, !tbaa !46, !alias.scope !603
  %wide.load1161 = load <2 x double>, ptr %i.asf, align 8, !tbaa !46, !alias.scope !603
  %i.asg = fsub <2 x double> %wide.load1158, %wide.load1160
  %i.ash = fsub <2 x double> %wide.load1159, %wide.load1161
  %i.asi = fmul <2 x double> %broadcast.splat1155, %i.asg
  %i.asj = fmul <2 x double> %broadcast.splat1155, %i.ash
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asb, i64 16 ; 2 uses
  %wide.load1162 = load <2 x double>, ptr %i.asb, align 8, !tbaa !46, !alias.scope !604, !noalias !605
  %wide.load1163 = load <2 x double>, ptr %i.ask, align 8, !tbaa !46, !alias.scope !604, !noalias !605
  %i.asl = fsub <2 x double> %wide.load1162, %i.asi
  %i.asm = fsub <2 x double> %wide.load1163, %i.asj
  store <2 x double> %i.asl, ptr %i.asb, align 8, !tbaa !46, !alias.scope !604, !noalias !605
  store <2 x double> %i.asm, ptr %i.ask, align 8, !tbaa !46, !alias.scope !604, !noalias !605
  %index.next1164 = add nuw i64 %index1157, 4     ; 2 uses
  %i.asn = icmp eq i64 %index.next1164, %n.vec1153
  br i1 %i.asn, label %middle.block1165, label %vector.body1156, !llvm.loop !475

middle.block1165:                                 ; preds = %vector.body1156
  %cmp.n1166 = icmp eq i64 %i.arc, %n.vec1153
  br i1 %cmp.n1166, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_INS9_20scalar_difference_opIddEEKS4_SL_EEEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.preheader1406

.lr.ph.i17.i.i.i.i.i.preheader1406:               ; preds = %vector.memcheck1144, %.lr.ph.i17.i.i.i.i.i.preheader, %middle.block1165
  %.05.i18.i.i.i.i.i.ph = phi i64 [ %i.aoy, %vector.memcheck1144 ], [ %i.aoy, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %i.arz, %middle.block1165 ] ; 7 uses
  %i.aso = sub i64 %i.afy, %.05.i18.i.i.i.i.i.ph
  %.neg1489 = add i64 %.05.i18.i.i.i.i.i.ph, 1
  %xtraiter1457 = and i64 %i.aso, 1
  %lcmp.mod1458.not = icmp eq i64 %xtraiter1457, 0
  br i1 %lcmp.mod1458.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader1406
  %i.asp = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %.05.i18.i.i.i.i.i.ph ; 2 uses
  %i.asq = getelementptr inbounds [8 x i8], ptr %i.aoi, i64 %.05.i18.i.i.i.i.i.ph
  %i.asr = getelementptr inbounds [8 x i8], ptr %i.aoo, i64 %.05.i18.i.i.i.i.i.ph
  %i.ass = load double, ptr %i.asq, align 8, !tbaa !46
  %i.ast = load double, ptr %i.asr, align 8, !tbaa !46
  %i.asu = fsub double %i.ass, %i.ast
  %i.asv = fmul double %i.aop, %i.asu
  %i.asw = load double, ptr %i.asp, align 8, !tbaa !46
  %i.asx = fsub double %i.asw, %i.asv
  store double %i.asx, ptr %i.asp, align 8, !tbaa !46
  %i.asy = add nsw i64 %.05.i18.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader1406
  %.05.i18.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader1406 ], [ %i.asy, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.asz = icmp eq i64 %i.afy, %.neg1489
  br i1 %i.asz, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_INS9_20scalar_difference_opIddEEKS4_SL_EEEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %.05.i18.i.i.i.i.i = phi i64 [ %i.att, %.lr.ph.i17.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %.05.i18.i.i.i.i.i ; 2 uses
  %i.atb = getelementptr inbounds [8 x i8], ptr %i.aoi, i64 %.05.i18.i.i.i.i.i
  %i.atc = getelementptr inbounds [8 x i8], ptr %i.aoo, i64 %.05.i18.i.i.i.i.i
  %i.atd = load double, ptr %i.atb, align 8, !tbaa !46
  %i.ate = load double, ptr %i.atc, align 8, !tbaa !46
  %i.atf = fsub double %i.atd, %i.ate
  %i.atg = fmul double %i.aop, %i.atf
  %i.ath = load double, ptr %i.ata, align 8, !tbaa !46
  %i.ati = fsub double %i.ath, %i.atg
  store double %i.ati, ptr %i.ata, align 8, !tbaa !46
  %i.atj = add nsw i64 %.05.i18.i.i.i.i.i, 1      ; 3 uses
  %i.atk = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.atj ; 2 uses
  %i.atl = getelementptr inbounds [8 x i8], ptr %i.aoi, i64 %i.atj
  %i.atm = getelementptr inbounds [8 x i8], ptr %i.aoo, i64 %i.atj
  %i.atn = load double, ptr %i.atl, align 8, !tbaa !46
  %i.ato = load double, ptr %i.atm, align 8, !tbaa !46
  %i.atp = fsub double %i.atn, %i.ato
  %i.atq = fmul double %i.aop, %i.atp
  %i.atr = load double, ptr %i.atk, align 8, !tbaa !46
  %i.ats = fsub double %i.atr, %i.atq
  store double %i.ats, ptr %i.atk, align 8, !tbaa !46
  %i.att = add nsw i64 %.05.i18.i.i.i.i.i, 2      ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.1 = icmp eq i64 %i.att, %i.afy
  br i1 %exitcond.not.i19.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_INS9_20scalar_difference_opIddEEKS4_SL_EEEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !476

.lr.ph.i.i.i.i.i190:                              ; preds = %.lr.ph.i.i.i.i.i190, %.lr.ph.i.preheader.i.i.i.i189
  %.021.i.i.i.i.i = phi i64 [ %i.aud, %.lr.ph.i.i.i.i.i190 ], [ %.0.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i189 ] ; 4 uses
  %i.atu = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %.021.i.i.i.i.i ; 2 uses
  %i.atv = getelementptr inbounds [8 x i8], ptr %i.aoi, i64 %.021.i.i.i.i.i
  %i.atw = load <2 x double>, ptr %i.atv, align 1, !tbaa !47
  %i.atx = getelementptr inbounds [8 x i8], ptr %i.aoo, i64 %.021.i.i.i.i.i
  %i.aty = load <2 x double>, ptr %i.atx, align 1, !tbaa !47
  %i.atz = fsub <2 x double> %i.atw, %i.aty
  %i.aua = fmul <2 x double> %i.aqz, %i.atz
  %i.aub = load <2 x double>, ptr %i.atu, align 16, !tbaa !47
  %i.auc = fsub <2 x double> %i.aub, %i.aua
  store <2 x double> %i.auc, ptr %i.atu, align 16, !tbaa !47
  %i.aud = add nsw i64 %.021.i.i.i.i.i, 2         ; 2 uses
  %i.aue = icmp slt i64 %i.aud, %i.aoy
  br i1 %i.aue, label %.lr.ph.i.i.i.i.i190, label %._crit_edge.i.i.i.i.i188, !llvm.loop !477

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_INS9_20scalar_difference_opIddEEKS4_SL_EEEEEERS4_RKNS5_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block1165, %._crit_edge.i.i.i.i.i188
  %i.auf = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 32
  %i.auh = load i32, ptr %i.aug, align 8, !tbaa !87
  %.not88 = icmp eq i32 %i.auh, 0
  br i1 %.not88, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_INS9_20scalar_difference_opIddEEKS4_SL_EEEEEERS4_RKNS5_IT_EE.exit
  %i.aui = load ptr, ptr %i.a, align 8, !tbaa !17 ; 8 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 400
  %i.auk = load i32, ptr %i.auj, align 8, !tbaa !88
  %i.aul = icmp sgt i32 %i.auk, 0
  br i1 %i.aul, label %bb.t, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit

bb.t:                                             ; preds = %bb.s
  %i.aum = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aui, i64 528
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  %i.aup = load i32, ptr %i.auo, align 8, !tbaa !32
  %i.auq = add i32 %i.aup, -1
  %i.aur = sext i32 %i.auq to i64                 ; 7 uses
  %i.aus = load ptr, ptr %i.aun, align 8, !tbaa !34, !noalias !606 ; 4 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aui, i64 536
  %i.auu = load i64, ptr %i.aut, align 8, !tbaa !35, !noalias !606 ; 3 uses
  %i.auv = mul i64 %i.auu, %i.aur                 ; 2 uses
  %i.auw = getelementptr [8 x i8], ptr %i.aus, i64 %i.auv ; 10 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aui, i64 600
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !34, !noalias !607 ; 4 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aui, i64 608
  %i.ava = load i64, ptr %i.auz, align 8, !tbaa !35, !noalias !607 ; 3 uses
  %i.avb = mul i64 %i.ava, %i.aur                 ; 2 uses
  %i.avc = getelementptr [8 x i8], ptr %i.auy, i64 %i.avb ; 10 uses
  %i.avd = load double, ptr %i.aum, align 8, !tbaa !46, !noalias !608 ; 9 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.aui, i64 112
  %i.avf = load ptr, ptr %i.ave, align 8, !tbaa !34, !noalias !609 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aui, i64 120
  %i.avh = load i64, ptr %i.avg, align 8, !tbaa !35, !noalias !609 ; 12 uses
  %i.avi = mul nsw i64 %i.avh, %i.aur
  %.not.i.i.i.i.i196 = icmp eq ptr %i.avf, null
  %i.avj = getelementptr inbounds [8 x i8], ptr %i.avf, i64 %i.avi
  %i.avk = select i1 %.not.i.i.i.i.i196, ptr null, ptr %i.avj ; 15 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.avd, i64 0
  %i.avl = ptrtoint ptr %i.avk to i64             ; 2 uses
  %i.avm = and i64 %i.avl, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.avm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.avn = lshr exact i64 %i.avl, 3
  %i.avo = and i64 %i.avn, 1
  %i.avp = tail call i64 @llvm.smin.i64(i64 %i.avo, i64 %i.avh)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.avp, %bb.u ], [ %i.avh, %bb.t ] ; 15 uses
  %i.avq = sub nsw i64 %i.avh, %.0.i.i.i.i.i.i.i  ; 2 uses
  %i.avr = sdiv i64 %i.avq, 2                     ; 2 uses
  %i.avs = shl nsw i64 %i.avr, 1                  ; 2 uses
  %i.avt = add nsw i64 %i.avs, %.0.i.i.i.i.i.i.i  ; 6 uses
  %i.avu = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.avu, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check1180 = icmp ult i64 %.0.i.i.i.i.i.i.i, 14
  br i1 %min.iters.check1180, label %.lr.ph.i.i.i.i.i.i.i.preheader1405, label %vector.memcheck1181

vector.memcheck1181:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.avv = shl i64 %.0.i.i.i.i.i.i.i, 3
  %i.avw = getelementptr i8, ptr %i.avk, i64 %i.avv ; 2 uses
  %i.avx = mul i64 %i.auu, %i.aur
  %i.avy = add i64 %i.avx, %.0.i.i.i.i.i.i.i
  %i.avz = shl i64 %i.avy, 3
  %i.awa = getelementptr i8, ptr %i.aus, i64 %i.avz
  %25 = mul i64 %i.ava, %i.aur
  %26 = add i64 %25, %.0.i.i.i.i.i.i.i
  %27 = shl i64 %26, 3
  %28 = getelementptr i8, ptr %i.auy, i64 %27
  %bound01182 = icmp ult ptr %i.avk, %i.awa
  %bound11183 = icmp ult ptr %i.auw, %i.avw
  %found.conflict1184 = and i1 %bound01182, %bound11183
  %bound01185 = icmp ult ptr %i.avk, %28
  %bound11186 = icmp ult ptr %i.avc, %i.avw
  %found.conflict1187 = and i1 %bound01185, %bound11186
  %conflict.rdx1188 = or i1 %found.conflict1184, %found.conflict1187
  br i1 %conflict.rdx1188, label %.lr.ph.i.i.i.i.i.i.i.preheader1405, label %vector.ph1189

vector.ph1189:                                    ; preds = %vector.memcheck1181
  %n.vec1190 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert1191 = insertelement <2 x double> poison, double %i.avd, i64 0
  %broadcast.splat1192 = shufflevector <2 x double> %broadcast.splatinsert1191, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %vector.ph1189
  %index1194 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1201, %vector.body1193 ] ; 4 uses
  %i.awb = getelementptr inbounds nuw [8 x i8], ptr %i.avk, i64 %index1194 ; 3 uses
  %i.awc = getelementptr inbounds nuw [8 x i8], ptr %i.auw, i64 %index1194 ; 2 uses
  %i.awd = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %index1194 ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awc, i64 16
  %wide.load1195 = load <2 x double>, ptr %i.awc, align 8, !tbaa !46, !alias.scope !610
  %wide.load1196 = load <2 x double>, ptr %i.awe, align 8, !tbaa !46, !alias.scope !610
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awd, i64 16
  %wide.load1197 = load <2 x double>, ptr %i.awd, align 8, !tbaa !46, !alias.scope !611
  %wide.load1198 = load <2 x double>, ptr %i.awf, align 8, !tbaa !46, !alias.scope !611
  %i.awg = fsub <2 x double> %wide.load1195, %wide.load1197
  %i.awh = fsub <2 x double> %wide.load1196, %wide.load1198
  %i.awi = fmul <2 x double> %broadcast.splat1192, %i.awg
  %i.awj = fmul <2 x double> %broadcast.splat1192, %i.awh
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awb, i64 16 ; 2 uses
  %wide.load1199 = load <2 x double>, ptr %i.awb, align 8, !tbaa !46, !alias.scope !612, !noalias !613
  %wide.load1200 = load <2 x double>, ptr %i.awk, align 8, !tbaa !46, !alias.scope !612, !noalias !613
  %i.awl = fsub <2 x double> %wide.load1199, %i.awi
  %i.awm = fsub <2 x double> %wide.load1200, %i.awj
  store <2 x double> %i.awl, ptr %i.awb, align 8, !tbaa !46, !alias.scope !612, !noalias !613
  store <2 x double> %i.awm, ptr %i.awk, align 8, !tbaa !46, !alias.scope !612, !noalias !613
  %index.next1201 = add nuw i64 %index1194, 4     ; 2 uses
  %i.awn = icmp eq i64 %index.next1201, %n.vec1190
  br i1 %i.awn, label %middle.block1202, label %vector.body1193, !llvm.loop !490

middle.block1202:                                 ; preds = %vector.body1193
  %cmp.n1203 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec1190
  br i1 %cmp.n1203, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1405

.lr.ph.i.i.i.i.i.i.i.preheader1405:               ; preds = %vector.memcheck1181, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block1202
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck1181 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec1190, %middle.block1202 ] ; 6 uses
  %.neg1490 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter1460 = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod1461.not = icmp eq i64 %xtraiter1460, 0
  br i1 %lcmp.mod1461.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1405
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.avk, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %i.auw, i64 %.05.i.i.i.i.i.i.i.ph
  %i.awq = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %.05.i.i.i.i.i.i.i.ph
  %i.awr = load double, ptr %i.awp, align 8, !tbaa !46
  %i.aws = load double, ptr %i.awq, align 8, !tbaa !46
  %i.awt = fsub double %i.awr, %i.aws
  %i.awu = fmul double %i.avd, %i.awt
  %i.awv = load double, ptr %i.awo, align 8, !tbaa !46
  %i.aww = fsub double %i.awv, %i.awu
  store double %i.aww, ptr %i.awo, align 8, !tbaa !46
  %i.awx = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader1405
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1405 ], [ %i.awx, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.awy = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg1490
  br i1 %i.awy, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.axs, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.awz = getelementptr inbounds nuw [8 x i8], ptr %i.avk, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.auw, i64 %.05.i.i.i.i.i.i.i
  %i.axb = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %.05.i.i.i.i.i.i.i
  %i.axc = load double, ptr %i.axa, align 8, !tbaa !46
  %i.axd = load double, ptr %i.axb, align 8, !tbaa !46
  %i.axe = fsub double %i.axc, %i.axd
  %i.axf = fmul double %i.avd, %i.axe
  %i.axg = load double, ptr %i.awz, align 8, !tbaa !46
  %i.axh = fsub double %i.axg, %i.axf
  store double %i.axh, ptr %i.awz, align 8, !tbaa !46
  %i.axi = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1  ; 3 uses
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.avk, i64 %i.axi ; 2 uses
  %i.axk = getelementptr inbounds nuw [8 x i8], ptr %i.auw, i64 %i.axi
  %i.axl = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %i.axi
  %i.axm = load double, ptr %i.axk, align 8, !tbaa !46
  %i.axn = load double, ptr %i.axl, align 8, !tbaa !46
  %i.axo = fsub double %i.axm, %i.axn
  %i.axp = fmul double %i.avd, %i.axo
  %i.axq = load double, ptr %i.axj, align 8, !tbaa !46
  %i.axr = fsub double %i.axq, %i.axp
  store double %i.axr, ptr %i.axj, align 8, !tbaa !46
  %i.axs = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.axs, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !491

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block1202, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.axt = icmp sgt i64 %i.avq, 1
  br i1 %i.axt, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.axu = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i197

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i197, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.axv = icmp slt i64 %i.avt, %i.avh
  br i1 %i.axv, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.axw = add i64 %.0.i.i.i.i.i.i.i, %i.avs
  %i.axx = sub i64 %i.avh, %i.axw                 ; 3 uses
  %min.iters.check1220 = icmp ult i64 %i.axx, 22
  br i1 %min.iters.check1220, label %.lr.ph.i17.i.i.i.i.i.i.preheader1404, label %vector.memcheck1221

vector.memcheck1221:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.axy = shl i64 %i.avr, 4                      ; 3 uses
  %i.axz = shl i64 %.0.i.i.i.i.i.i.i, 3           ; 3 uses
  %i.aya = getelementptr i8, ptr %i.avk, i64 %i.axy
  %i.ayb = getelementptr i8, ptr %i.aya, i64 %i.axz ; 2 uses
  %i.ayc = shl i64 %i.avh, 3
  %i.ayd = getelementptr i8, ptr %i.avk, i64 %i.ayc ; 2 uses
  %i.aye = mul i64 %i.auu, %i.aur
  %i.ayf = shl i64 %i.aye, 3
  %i.ayg = getelementptr i8, ptr %i.aus, i64 %i.ayf
  %i.ayh = getelementptr i8, ptr %i.ayg, i64 %i.axy
  %i.ayi = getelementptr i8, ptr %i.ayh, i64 %i.axz
  %i.ayj = add i64 %i.avh, %i.auv
  %i.ayk = shl i64 %i.ayj, 3
  %i.ayl = getelementptr i8, ptr %i.aus, i64 %i.ayk
  %i.aym = mul i64 %i.ava, %i.aur
  %i.ayn = shl i64 %i.aym, 3
  %i.ayo = getelementptr i8, ptr %i.auy, i64 %i.ayn
  %i.ayp = getelementptr i8, ptr %i.ayo, i64 %i.axy
  %i.ayq = getelementptr i8, ptr %i.ayp, i64 %i.axz
  %i.ayr = add i64 %i.avh, %i.avb
  %i.ays = shl i64 %i.ayr, 3
  %i.ayt = getelementptr i8, ptr %i.auy, i64 %i.ays
  %bound01222 = icmp ult ptr %i.ayb, %i.ayl
  %bound11223 = icmp ult ptr %i.ayi, %i.ayd
  %found.conflict1224 = and i1 %bound01222, %bound11223
  %bound01225 = icmp ult ptr %i.ayb, %i.ayt
  %bound11226 = icmp ult ptr %i.ayq, %i.ayd
  %found.conflict1227 = and i1 %bound01225, %bound11226
  %conflict.rdx1228 = or i1 %found.conflict1224, %found.conflict1227
  br i1 %conflict.rdx1228, label %.lr.ph.i17.i.i.i.i.i.i.preheader1404, label %vector.ph1229

vector.ph1229:                                    ; preds = %vector.memcheck1221
  %n.vec1230 = and i64 %i.axx, -4                 ; 3 uses
  %i.ayu = add i64 %i.avt, %n.vec1230
  %broadcast.splatinsert1231 = insertelement <2 x double> poison, double %i.avd, i64 0
  %broadcast.splat1232 = shufflevector <2 x double> %broadcast.splatinsert1231, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1229
  %index1234 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1241, %vector.body1233 ] ; 2 uses
  %i.ayv = add i64 %i.avt, %index1234             ; 3 uses
  %i.ayw = getelementptr inbounds [8 x i8], ptr %i.avk, i64 %i.ayv ; 3 uses
  %i.ayx = getelementptr inbounds [8 x i8], ptr %i.auw, i64 %i.ayv ; 2 uses
  %i.ayy = getelementptr inbounds [8 x i8], ptr %i.avc, i64 %i.ayv ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayx, i64 16
  %wide.load1235 = load <2 x double>, ptr %i.ayx, align 8, !tbaa !46, !alias.scope !614
  %wide.load1236 = load <2 x double>, ptr %i.ayz, align 8, !tbaa !46, !alias.scope !614
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayy, i64 16
  %wide.load1237 = load <2 x double>, ptr %i.ayy, align 8, !tbaa !46, !alias.scope !615
  %wide.load1238 = load <2 x double>, ptr %i.aza, align 8, !tbaa !46, !alias.scope !615
  %i.azb = fsub <2 x double> %wide.load1235, %wide.load1237
  %i.azc = fsub <2 x double> %wide.load1236, %wide.load1238
  %i.azd = fmul <2 x double> %broadcast.splat1232, %i.azb
  %i.aze = fmul <2 x double> %broadcast.splat1232, %i.azc
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ayw, i64 16 ; 2 uses
  %wide.load1239 = load <2 x double>, ptr %i.ayw, align 8, !tbaa !46, !alias.scope !616, !noalias !617
  %wide.load1240 = load <2 x double>, ptr %i.azf, align 8, !tbaa !46, !alias.scope !616, !noalias !617
  %i.azg = fsub <2 x double> %wide.load1239, %i.azd
  %i.azh = fsub <2 x double> %wide.load1240, %i.aze
  store <2 x double> %i.azg, ptr %i.ayw, align 8, !tbaa !46, !alias.scope !616, !noalias !617
  store <2 x double> %i.azh, ptr %i.azf, align 8, !tbaa !46, !alias.scope !616, !noalias !617
  %index.next1241 = add nuw i64 %index1234, 4     ; 2 uses
  %i.azi = icmp eq i64 %index.next1241, %n.vec1230
  br i1 %i.azi, label %middle.block1242, label %vector.body1233, !llvm.loop !496

middle.block1242:                                 ; preds = %vector.body1233
  %cmp.n1243 = icmp eq i64 %i.axx, %n.vec1230
  br i1 %cmp.n1243, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader1404

.lr.ph.i17.i.i.i.i.i.i.preheader1404:             ; preds = %vector.memcheck1221, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block1242
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.avt, %vector.memcheck1221 ], [ %i.avt, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ayu, %middle.block1242 ] ; 7 uses
  %i.azj = sub i64 %i.avh, %.05.i18.i.i.i.i.i.i.ph
  %.neg1491 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter1463 = and i64 %i.azj, 1
  %lcmp.mod1464.not = icmp eq i64 %xtraiter1463, 0
  br i1 %lcmp.mod1464.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader1404
  %i.azk = getelementptr inbounds [8 x i8], ptr %i.avk, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.azl = getelementptr inbounds [8 x i8], ptr %i.auw, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.azm = getelementptr inbounds [8 x i8], ptr %i.avc, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.azn = load double, ptr %i.azl, align 8, !tbaa !46
  %i.azo = load double, ptr %i.azm, align 8, !tbaa !46
  %i.azp = fsub double %i.azn, %i.azo
  %i.azq = fmul double %i.avd, %i.azp
  %i.azr = load double, ptr %i.azk, align 8, !tbaa !46
  %i.azs = fsub double %i.azr, %i.azq
  store double %i.azs, ptr %i.azk, align 8, !tbaa !46
  %i.azt = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader1404
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader1404 ], [ %i.azt, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.azu = icmp eq i64 %i.avh, %.neg1491
  br i1 %i.azu, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.bao, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.azv = getelementptr inbounds [8 x i8], ptr %i.avk, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.azw = getelementptr inbounds [8 x i8], ptr %i.auw, i64 %.05.i18.i.i.i.i.i.i
  %i.azx = getelementptr inbounds [8 x i8], ptr %i.avc, i64 %.05.i18.i.i.i.i.i.i
  %i.azy = load double, ptr %i.azw, align 8, !tbaa !46
  %i.azz = load double, ptr %i.azx, align 8, !tbaa !46
  %i.baa = fsub double %i.azy, %i.azz
  %i.bab = fmul double %i.avd, %i.baa
  %i.bac = load double, ptr %i.azv, align 8, !tbaa !46
  %i.bad = fsub double %i.bac, %i.bab
  store double %i.bad, ptr %i.azv, align 8, !tbaa !46
  %i.bae = add nsw i64 %.05.i18.i.i.i.i.i.i, 1    ; 3 uses
  %i.baf = getelementptr inbounds [8 x i8], ptr %i.avk, i64 %i.bae ; 2 uses
  %i.bag = getelementptr inbounds [8 x i8], ptr %i.auw, i64 %i.bae
  %i.bah = getelementptr inbounds [8 x i8], ptr %i.avc, i64 %i.bae
  %i.bai = load double, ptr %i.bag, align 8, !tbaa !46
  %i.baj = load double, ptr %i.bah, align 8, !tbaa !46
  %i.bak = fsub double %i.bai, %i.baj
  %i.bal = fmul double %i.avd, %i.bak
  %i.bam = load double, ptr %i.baf, align 8, !tbaa !46
  %i.ban = fsub double %i.bam, %i.bal
  store double %i.ban, ptr %i.baf, align 8, !tbaa !46
  %i.bao = add nsw i64 %.05.i18.i.i.i.i.i.i, 2    ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.bao, %i.avh
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !497

.lr.ph.i.i.i.i.i.i197:                            ; preds = %.lr.ph.i.i.i.i.i.i197, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.bay, %.lr.ph.i.i.i.i.i.i197 ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.bap = getelementptr inbounds [8 x i8], ptr %i.avk, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.baq = getelementptr inbounds [8 x i8], ptr %i.auw, i64 %.021.i.i.i.i.i.i
  %i.bar = load <2 x double>, ptr %i.baq, align 1, !tbaa !47
  %i.bas = getelementptr inbounds [8 x i8], ptr %i.avc, i64 %.021.i.i.i.i.i.i
  %i.bat = load <2 x double>, ptr %i.bas, align 1, !tbaa !47
  %i.bau = fsub <2 x double> %i.bar, %i.bat
  %i.bav = fmul <2 x double> %i.axu, %i.bau
  %i.baw = load <2 x double>, ptr %i.bap, align 16, !tbaa !47
  %i.bax = fsub <2 x double> %i.baw, %i.bav
  store <2 x double> %i.bax, ptr %i.bap, align 16, !tbaa !47
  %i.bay = add nsw i64 %.021.i.i.i.i.i.i, 2       ; 2 uses
  %i.baz = icmp slt i64 %i.bay, %i.avt
  br i1 %i.baz, label %.lr.ph.i.i.i.i.i.i197, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !477

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block1242, %._crit_edge.i.i.i.i.i.i, %bb.s, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_INS9_20scalar_difference_opIddEEKS4_SL_EEEEEERS4_RKNS5_IT_EE.exit
  %i.bba = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 40
  %i.bbc = load i32, ptr %i.bbb, align 8, !tbaa !91
  %.not89 = icmp eq i32 %i.bbc, 0
  br i1 %.not89, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit216, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit
  %i.bbd = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.bbe = load ptr, ptr %i.a, align 8, !tbaa !17 ; 7 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 760
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbe, i64 8
  %i.bbh = load i32, ptr %i.bbg, align 8, !tbaa !32
  %i.bbi = add i32 %i.bbh, -1
  %i.bbj = sext i32 %i.bbi to i64                 ; 7 uses
  %i.bbk = load ptr, ptr %i.bbf, align 8, !tbaa !34, !noalias !618 ; 4 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbe, i64 768
  %i.bbm = load i64, ptr %i.bbl, align 8, !tbaa !35, !noalias !618 ; 3 uses
  %i.bbn = mul i64 %i.bbm, %i.bbj                 ; 2 uses
  %i.bbo = getelementptr [8 x i8], ptr %i.bbk, i64 %i.bbn ; 10 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbe, i64 832
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !34, !noalias !619 ; 4 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbe, i64 840
  %i.bbs = load i64, ptr %i.bbr, align 8, !tbaa !35, !noalias !619 ; 3 uses
  %i.bbt = mul i64 %i.bbs, %i.bbj                 ; 2 uses
  %i.bbu = getelementptr [8 x i8], ptr %i.bbq, i64 %i.bbt ; 10 uses
  %i.bbv = load double, ptr %i.bbd, align 8, !tbaa !46, !noalias !620 ; 9 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbe, i64 112
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !34, !noalias !621 ; 2 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbe, i64 120
  %i.bbz = load i64, ptr %i.bby, align 8, !tbaa !35, !noalias !621 ; 12 uses
  %i.bca = mul nsw i64 %i.bbz, %i.bbj
  %.not.i.i.i.i.i200 = icmp eq ptr %i.bbx, null
  %i.bcb = getelementptr inbounds [8 x i8], ptr %i.bbx, i64 %i.bca
  %i.bcc = select i1 %.not.i.i.i.i.i200, ptr null, ptr %i.bcb ; 15 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i201 = insertelement <2 x double> poison, double %i.bbv, i64 0
  %i.bcd = ptrtoint ptr %i.bcc to i64             ; 2 uses
  %i.bce = and i64 %i.bcd, 7
  %.not.i.i.i.i.i.i.i202 = icmp eq i64 %i.bce, 0
  br i1 %.not.i.i.i.i.i.i.i202, label %bb.w, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i203

bb.w:                                             ; preds = %bb.v
  %i.bcf = lshr exact i64 %i.bcd, 3
  %i.bcg = and i64 %i.bcf, 1
  %i.bch = tail call i64 @llvm.smin.i64(i64 %i.bcg, i64 %i.bbz)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i203

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i203: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i204 = phi i64 [ %i.bch, %bb.w ], [ %i.bbz, %bb.v ] ; 15 uses
  %i.bci = sub nsw i64 %i.bbz, %.0.i.i.i.i.i.i.i204 ; 2 uses
  %i.bcj = sdiv i64 %i.bci, 2                     ; 2 uses
  %i.bck = shl nsw i64 %i.bcj, 1                  ; 2 uses
  %i.bcl = add nsw i64 %i.bck, %.0.i.i.i.i.i.i.i204 ; 6 uses
  %i.bcm = icmp sgt i64 %.0.i.i.i.i.i.i.i204, 0
  br i1 %i.bcm, label %.lr.ph.i.i.i.i.i.i.i213.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i205

.lr.ph.i.i.i.i.i.i.i213.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i203
  %min.iters.check1257 = icmp ult i64 %.0.i.i.i.i.i.i.i204, 14
  br i1 %min.iters.check1257, label %.lr.ph.i.i.i.i.i.i.i213.preheader1403, label %vector.memcheck1258

vector.memcheck1258:                              ; preds = %.lr.ph.i.i.i.i.i.i.i213.preheader
  %i.bcn = shl i64 %.0.i.i.i.i.i.i.i204, 3
  %i.bco = getelementptr i8, ptr %i.bcc, i64 %i.bcn ; 2 uses
  %i.bcp = mul i64 %i.bbm, %i.bbj
  %i.bcq = add i64 %i.bcp, %.0.i.i.i.i.i.i.i204
  %i.bcr = shl i64 %i.bcq, 3
  %i.bcs = getelementptr i8, ptr %i.bbk, i64 %i.bcr
  %29 = mul i64 %i.bbs, %i.bbj
  %30 = add i64 %29, %.0.i.i.i.i.i.i.i204
  %31 = shl i64 %30, 3
  %32 = getelementptr i8, ptr %i.bbq, i64 %31
  %bound01259 = icmp ult ptr %i.bcc, %i.bcs
  %bound11260 = icmp ult ptr %i.bbo, %i.bco
  %found.conflict1261 = and i1 %bound01259, %bound11260
  %bound01262 = icmp ult ptr %i.bcc, %32
  %bound11263 = icmp ult ptr %i.bbu, %i.bco
  %found.conflict1264 = and i1 %bound01262, %bound11263
  %conflict.rdx1265 = or i1 %found.conflict1261, %found.conflict1264
  br i1 %conflict.rdx1265, label %.lr.ph.i.i.i.i.i.i.i213.preheader1403, label %vector.ph1266

vector.ph1266:                                    ; preds = %vector.memcheck1258
  %n.vec1267 = and i64 %.0.i.i.i.i.i.i.i204, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert1268 = insertelement <2 x double> poison, double %i.bbv, i64 0
  %broadcast.splat1269 = shufflevector <2 x double> %broadcast.splatinsert1268, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.body1270, %vector.ph1266
  %index1271 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1278, %vector.body1270 ] ; 4 uses
  %i.bct = getelementptr inbounds nuw [8 x i8], ptr %i.bcc, i64 %index1271 ; 3 uses
  %i.bcu = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %index1271 ; 2 uses
  %i.bcv = getelementptr inbounds nuw [8 x i8], ptr %i.bbu, i64 %index1271 ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcu, i64 16
  %wide.load1272 = load <2 x double>, ptr %i.bcu, align 8, !tbaa !46, !alias.scope !622
  %wide.load1273 = load <2 x double>, ptr %i.bcw, align 8, !tbaa !46, !alias.scope !622
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcv, i64 16
  %wide.load1274 = load <2 x double>, ptr %i.bcv, align 8, !tbaa !46, !alias.scope !623
  %wide.load1275 = load <2 x double>, ptr %i.bcx, align 8, !tbaa !46, !alias.scope !623
  %i.bcy = fsub <2 x double> %wide.load1272, %wide.load1274
  %i.bcz = fsub <2 x double> %wide.load1273, %wide.load1275
  %i.bda = fmul <2 x double> %broadcast.splat1269, %i.bcy
  %i.bdb = fmul <2 x double> %broadcast.splat1269, %i.bcz
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bct, i64 16 ; 2 uses
  %wide.load1276 = load <2 x double>, ptr %i.bct, align 8, !tbaa !46, !alias.scope !624, !noalias !625
  %wide.load1277 = load <2 x double>, ptr %i.bdc, align 8, !tbaa !46, !alias.scope !624, !noalias !625
  %i.bdd = fsub <2 x double> %wide.load1276, %i.bda
  %i.bde = fsub <2 x double> %wide.load1277, %i.bdb
  store <2 x double> %i.bdd, ptr %i.bct, align 8, !tbaa !46, !alias.scope !624, !noalias !625
  store <2 x double> %i.bde, ptr %i.bdc, align 8, !tbaa !46, !alias.scope !624, !noalias !625
  %index.next1278 = add nuw i64 %index1271, 4     ; 2 uses
  %i.bdf = icmp eq i64 %index.next1278, %n.vec1267
  br i1 %i.bdf, label %middle.block1279, label %vector.body1270, !llvm.loop !510

middle.block1279:                                 ; preds = %vector.body1270
  %cmp.n1280 = icmp eq i64 %.0.i.i.i.i.i.i.i204, %n.vec1267
  br i1 %cmp.n1280, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i205, label %.lr.ph.i.i.i.i.i.i.i213.preheader1403

.lr.ph.i.i.i.i.i.i.i213.preheader1403:            ; preds = %vector.memcheck1258, %.lr.ph.i.i.i.i.i.i.i213.preheader, %middle.block1279
  %.05.i.i.i.i.i.i.i214.ph = phi i64 [ 0, %vector.memcheck1258 ], [ 0, %.lr.ph.i.i.i.i.i.i.i213.preheader ], [ %n.vec1267, %middle.block1279 ] ; 6 uses
  %.neg1492 = or disjoint i64 %.05.i.i.i.i.i.i.i214.ph, 1
  %xtraiter1466 = and i64 %.0.i.i.i.i.i.i.i204, 1
  %lcmp.mod1467.not = icmp eq i64 %xtraiter1466, 0
  br i1 %lcmp.mod1467.not, label %.lr.ph.i.i.i.i.i.i.i213.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i213.prol

.lr.ph.i.i.i.i.i.i.i213.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i213.preheader1403
  %i.bdg = getelementptr inbounds nuw [8 x i8], ptr %i.bcc, i64 %.05.i.i.i.i.i.i.i214.ph ; 2 uses
  %i.bdh = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %.05.i.i.i.i.i.i.i214.ph
  %i.bdi = getelementptr inbounds nuw [8 x i8], ptr %i.bbu, i64 %.05.i.i.i.i.i.i.i214.ph
  %i.bdj = load double, ptr %i.bdh, align 8, !tbaa !46
  %i.bdk = load double, ptr %i.bdi, align 8, !tbaa !46
  %i.bdl = fsub double %i.bdj, %i.bdk
  %i.bdm = fmul double %i.bbv, %i.bdl
  %i.bdn = load double, ptr %i.bdg, align 8, !tbaa !46
  %i.bdo = fsub double %i.bdn, %i.bdm
  store double %i.bdo, ptr %i.bdg, align 8, !tbaa !46
  %i.bdp = or disjoint i64 %.05.i.i.i.i.i.i.i214.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i213.prol.loopexit

.lr.ph.i.i.i.i.i.i.i213.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i213.prol, %.lr.ph.i.i.i.i.i.i.i213.preheader1403
  %.05.i.i.i.i.i.i.i214.unr = phi i64 [ %.05.i.i.i.i.i.i.i214.ph, %.lr.ph.i.i.i.i.i.i.i213.preheader1403 ], [ %i.bdp, %.lr.ph.i.i.i.i.i.i.i213.prol ]
  %i.bdq = icmp eq i64 %.0.i.i.i.i.i.i.i204, %.neg1492
  br i1 %i.bdq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i205, label %.lr.ph.i.i.i.i.i.i.i213

.lr.ph.i.i.i.i.i.i.i213:                          ; preds = %.lr.ph.i.i.i.i.i.i.i213.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i213
  %.05.i.i.i.i.i.i.i214 = phi i64 [ %i.bek, %.lr.ph.i.i.i.i.i.i.i213 ], [ %.05.i.i.i.i.i.i.i214.unr, %.lr.ph.i.i.i.i.i.i.i213.prol.loopexit ] ; 5 uses
  %i.bdr = getelementptr inbounds nuw [8 x i8], ptr %i.bcc, i64 %.05.i.i.i.i.i.i.i214 ; 2 uses
  %i.bds = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %.05.i.i.i.i.i.i.i214
  %i.bdt = getelementptr inbounds nuw [8 x i8], ptr %i.bbu, i64 %.05.i.i.i.i.i.i.i214
  %i.bdu = load double, ptr %i.bds, align 8, !tbaa !46
  %i.bdv = load double, ptr %i.bdt, align 8, !tbaa !46
  %i.bdw = fsub double %i.bdu, %i.bdv
  %i.bdx = fmul double %i.bbv, %i.bdw
  %i.bdy = load double, ptr %i.bdr, align 8, !tbaa !46
  %i.bdz = fsub double %i.bdy, %i.bdx
  store double %i.bdz, ptr %i.bdr, align 8, !tbaa !46
  %i.bea = add nuw nsw i64 %.05.i.i.i.i.i.i.i214, 1 ; 3 uses
  %i.beb = getelementptr inbounds nuw [8 x i8], ptr %i.bcc, i64 %i.bea ; 2 uses
  %i.bec = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %i.bea
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %i.bbu, i64 %i.bea
  %i.bee = load double, ptr %i.bec, align 8, !tbaa !46
  %i.bef = load double, ptr %i.bed, align 8, !tbaa !46
  %i.beg = fsub double %i.bee, %i.bef
  %i.beh = fmul double %i.bbv, %i.beg
  %i.bei = load double, ptr %i.beb, align 8, !tbaa !46
  %i.bej = fsub double %i.bei, %i.beh
  store double %i.bej, ptr %i.beb, align 8, !tbaa !46
  %i.bek = add nuw nsw i64 %.05.i.i.i.i.i.i.i214, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i215.1 = icmp eq i64 %i.bek, %.0.i.i.i.i.i.i.i204
  br i1 %exitcond.not.i.i.i.i.i.i.i215.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i205, label %.lr.ph.i.i.i.i.i.i.i213, !llvm.loop !511

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i205: ; preds = %.lr.ph.i.i.i.i.i.i.i213.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i213, %middle.block1279, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i203
  %i.bel = icmp sgt i64 %i.bci, 1
  br i1 %i.bel, label %.lr.ph.i.preheader.i.i.i.i.i210, label %._crit_edge.i.i.i.i.i.i206

.lr.ph.i.preheader.i.i.i.i.i210:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i205
  %i.bem = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i201, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i211

._crit_edge.i.i.i.i.i.i206:                       ; preds = %.lr.ph.i.i.i.i.i.i211, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i205
  %i.ben = icmp slt i64 %i.bcl, %i.bbz
  br i1 %i.ben, label %.lr.ph.i17.i.i.i.i.i.i207.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit216

.lr.ph.i17.i.i.i.i.i.i207.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i206
  %i.beo = add i64 %.0.i.i.i.i.i.i.i204, %i.bck
  %i.bep = sub i64 %i.bbz, %i.beo                 ; 3 uses
  %min.iters.check1297 = icmp ult i64 %i.bep, 22
  br i1 %min.iters.check1297, label %.lr.ph.i17.i.i.i.i.i.i207.preheader1402, label %vector.memcheck1298

vector.memcheck1298:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i207.preheader
  %i.beq = shl i64 %i.bcj, 4                      ; 3 uses
  %i.ber = shl i64 %.0.i.i.i.i.i.i.i204, 3        ; 3 uses
  %i.bes = getelementptr i8, ptr %i.bcc, i64 %i.beq
  %i.bet = getelementptr i8, ptr %i.bes, i64 %i.ber ; 2 uses
  %i.beu = shl i64 %i.bbz, 3
  %i.bev = getelementptr i8, ptr %i.bcc, i64 %i.beu ; 2 uses
  %i.bew = mul i64 %i.bbm, %i.bbj
  %i.bex = shl i64 %i.bew, 3
  %i.bey = getelementptr i8, ptr %i.bbk, i64 %i.bex
  %i.bez = getelementptr i8, ptr %i.bey, i64 %i.beq
  %i.bfa = getelementptr i8, ptr %i.bez, i64 %i.ber
  %i.bfb = add i64 %i.bbz, %i.bbn
  %i.bfc = shl i64 %i.bfb, 3
  %i.bfd = getelementptr i8, ptr %i.bbk, i64 %i.bfc
  %i.bfe = mul i64 %i.bbs, %i.bbj
  %i.bff = shl i64 %i.bfe, 3
  %i.bfg = getelementptr i8, ptr %i.bbq, i64 %i.bff
  %i.bfh = getelementptr i8, ptr %i.bfg, i64 %i.beq
  %i.bfi = getelementptr i8, ptr %i.bfh, i64 %i.ber
  %i.bfj = add i64 %i.bbz, %i.bbt
  %i.bfk = shl i64 %i.bfj, 3
  %i.bfl = getelementptr i8, ptr %i.bbq, i64 %i.bfk
  %bound01299 = icmp ult ptr %i.bet, %i.bfd
  %bound11300 = icmp ult ptr %i.bfa, %i.bev
  %found.conflict1301 = and i1 %bound01299, %bound11300
  %bound01302 = icmp ult ptr %i.bet, %i.bfl
  %bound11303 = icmp ult ptr %i.bfi, %i.bev
  %found.conflict1304 = and i1 %bound01302, %bound11303
  %conflict.rdx1305 = or i1 %found.conflict1301, %found.conflict1304
  br i1 %conflict.rdx1305, label %.lr.ph.i17.i.i.i.i.i.i207.preheader1402, label %vector.ph1306

vector.ph1306:                                    ; preds = %vector.memcheck1298
  %n.vec1307 = and i64 %i.bep, -4                 ; 3 uses
  %i.bfm = add i64 %i.bcl, %n.vec1307
  %broadcast.splatinsert1308 = insertelement <2 x double> poison, double %i.bbv, i64 0
  %broadcast.splat1309 = shufflevector <2 x double> %broadcast.splatinsert1308, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1306
  %index1311 = phi i64 [ 0, %vector.ph1306 ], [ %index.next1318, %vector.body1310 ] ; 2 uses
  %i.bfn = add i64 %i.bcl, %index1311             ; 3 uses
  %i.bfo = getelementptr inbounds [8 x i8], ptr %i.bcc, i64 %i.bfn ; 3 uses
  %i.bfp = getelementptr inbounds [8 x i8], ptr %i.bbo, i64 %i.bfn ; 2 uses
  %i.bfq = getelementptr inbounds [8 x i8], ptr %i.bbu, i64 %i.bfn ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfp, i64 16
  %wide.load1312 = load <2 x double>, ptr %i.bfp, align 8, !tbaa !46, !alias.scope !626
  %wide.load1313 = load <2 x double>, ptr %i.bfr, align 8, !tbaa !46, !alias.scope !626
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfq, i64 16
  %wide.load1314 = load <2 x double>, ptr %i.bfq, align 8, !tbaa !46, !alias.scope !627
  %wide.load1315 = load <2 x double>, ptr %i.bfs, align 8, !tbaa !46, !alias.scope !627
  %i.bft = fsub <2 x double> %wide.load1312, %wide.load1314
  %i.bfu = fsub <2 x double> %wide.load1313, %wide.load1315
  %i.bfv = fmul <2 x double> %broadcast.splat1309, %i.bft
  %i.bfw = fmul <2 x double> %broadcast.splat1309, %i.bfu
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfo, i64 16 ; 2 uses
  %wide.load1316 = load <2 x double>, ptr %i.bfo, align 8, !tbaa !46, !alias.scope !628, !noalias !629
  %wide.load1317 = load <2 x double>, ptr %i.bfx, align 8, !tbaa !46, !alias.scope !628, !noalias !629
  %i.bfy = fsub <2 x double> %wide.load1316, %i.bfv
  %i.bfz = fsub <2 x double> %wide.load1317, %i.bfw
  store <2 x double> %i.bfy, ptr %i.bfo, align 8, !tbaa !46, !alias.scope !628, !noalias !629
  store <2 x double> %i.bfz, ptr %i.bfx, align 8, !tbaa !46, !alias.scope !628, !noalias !629
  %index.next1318 = add nuw i64 %index1311, 4     ; 2 uses
  %i.bga = icmp eq i64 %index.next1318, %n.vec1307
  br i1 %i.bga, label %middle.block1319, label %vector.body1310, !llvm.loop !516

middle.block1319:                                 ; preds = %vector.body1310
  %cmp.n1320 = icmp eq i64 %i.bep, %n.vec1307
  br i1 %cmp.n1320, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit216, label %.lr.ph.i17.i.i.i.i.i.i207.preheader1402

.lr.ph.i17.i.i.i.i.i.i207.preheader1402:          ; preds = %vector.memcheck1298, %.lr.ph.i17.i.i.i.i.i.i207.preheader, %middle.block1319
  %.05.i18.i.i.i.i.i.i208.ph = phi i64 [ %i.bcl, %vector.memcheck1298 ], [ %i.bcl, %.lr.ph.i17.i.i.i.i.i.i207.preheader ], [ %i.bfm, %middle.block1319 ] ; 7 uses
  %i.bgb = sub i64 %i.bbz, %.05.i18.i.i.i.i.i.i208.ph
  %.neg1493 = add i64 %.05.i18.i.i.i.i.i.i208.ph, 1
  %xtraiter1469 = and i64 %i.bgb, 1
  %lcmp.mod1470.not = icmp eq i64 %xtraiter1469, 0
  br i1 %lcmp.mod1470.not, label %.lr.ph.i17.i.i.i.i.i.i207.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i207.prol

.lr.ph.i17.i.i.i.i.i.i207.prol:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i207.preheader1402
  %i.bgc = getelementptr inbounds [8 x i8], ptr %i.bcc, i64 %.05.i18.i.i.i.i.i.i208.ph ; 2 uses
  %i.bgd = getelementptr inbounds [8 x i8], ptr %i.bbo, i64 %.05.i18.i.i.i.i.i.i208.ph
  %i.bge = getelementptr inbounds [8 x i8], ptr %i.bbu, i64 %.05.i18.i.i.i.i.i.i208.ph
  %i.bgf = load double, ptr %i.bgd, align 8, !tbaa !46
  %i.bgg = load double, ptr %i.bge, align 8, !tbaa !46
  %i.bgh = fsub double %i.bgf, %i.bgg
  %i.bgi = fmul double %i.bbv, %i.bgh
  %i.bgj = load double, ptr %i.bgc, align 8, !tbaa !46
  %i.bgk = fsub double %i.bgj, %i.bgi
  store double %i.bgk, ptr %i.bgc, align 8, !tbaa !46
  %i.bgl = add nsw i64 %.05.i18.i.i.i.i.i.i208.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i207.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i207.prol.loopexit:          ; preds = %.lr.ph.i17.i.i.i.i.i.i207.prol, %.lr.ph.i17.i.i.i.i.i.i207.preheader1402
  %.05.i18.i.i.i.i.i.i208.unr = phi i64 [ %.05.i18.i.i.i.i.i.i208.ph, %.lr.ph.i17.i.i.i.i.i.i207.preheader1402 ], [ %i.bgl, %.lr.ph.i17.i.i.i.i.i.i207.prol ]
  %i.bgm = icmp eq i64 %i.bbz, %.neg1493
  br i1 %i.bgm, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit216, label %.lr.ph.i17.i.i.i.i.i.i207

.lr.ph.i17.i.i.i.i.i.i207:                        ; preds = %.lr.ph.i17.i.i.i.i.i.i207.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i207
  %.05.i18.i.i.i.i.i.i208 = phi i64 [ %i.bhg, %.lr.ph.i17.i.i.i.i.i.i207 ], [ %.05.i18.i.i.i.i.i.i208.unr, %.lr.ph.i17.i.i.i.i.i.i207.prol.loopexit ] ; 5 uses
  %i.bgn = getelementptr inbounds [8 x i8], ptr %i.bcc, i64 %.05.i18.i.i.i.i.i.i208 ; 2 uses
  %i.bgo = getelementptr inbounds [8 x i8], ptr %i.bbo, i64 %.05.i18.i.i.i.i.i.i208
  %i.bgp = getelementptr inbounds [8 x i8], ptr %i.bbu, i64 %.05.i18.i.i.i.i.i.i208
  %i.bgq = load double, ptr %i.bgo, align 8, !tbaa !46
  %i.bgr = load double, ptr %i.bgp, align 8, !tbaa !46
  %i.bgs = fsub double %i.bgq, %i.bgr
  %i.bgt = fmul double %i.bbv, %i.bgs
  %i.bgu = load double, ptr %i.bgn, align 8, !tbaa !46
  %i.bgv = fsub double %i.bgu, %i.bgt
  store double %i.bgv, ptr %i.bgn, align 8, !tbaa !46
  %i.bgw = add nsw i64 %.05.i18.i.i.i.i.i.i208, 1 ; 3 uses
  %i.bgx = getelementptr inbounds [8 x i8], ptr %i.bcc, i64 %i.bgw ; 2 uses
  %i.bgy = getelementptr inbounds [8 x i8], ptr %i.bbo, i64 %i.bgw
  %i.bgz = getelementptr inbounds [8 x i8], ptr %i.bbu, i64 %i.bgw
  %i.bha = load double, ptr %i.bgy, align 8, !tbaa !46
  %i.bhb = load double, ptr %i.bgz, align 8, !tbaa !46
  %i.bhc = fsub double %i.bha, %i.bhb
  %i.bhd = fmul double %i.bbv, %i.bhc
  %i.bhe = load double, ptr %i.bgx, align 8, !tbaa !46
  %i.bhf = fsub double %i.bhe, %i.bhd
  store double %i.bhf, ptr %i.bgx, align 8, !tbaa !46
  %i.bhg = add nsw i64 %.05.i18.i.i.i.i.i.i208, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i209.1 = icmp eq i64 %i.bhg, %i.bbz
  br i1 %exitcond.not.i19.i.i.i.i.i.i209.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit216, label %.lr.ph.i17.i.i.i.i.i.i207, !llvm.loop !517

.lr.ph.i.i.i.i.i.i211:                            ; preds = %.lr.ph.i.i.i.i.i.i211, %.lr.ph.i.preheader.i.i.i.i.i210
  %.021.i.i.i.i.i.i212 = phi i64 [ %i.bhq, %.lr.ph.i.i.i.i.i.i211 ], [ %.0.i.i.i.i.i.i.i204, %.lr.ph.i.preheader.i.i.i.i.i210 ] ; 4 uses
  %i.bhh = getelementptr inbounds [8 x i8], ptr %i.bcc, i64 %.021.i.i.i.i.i.i212 ; 2 uses
  %i.bhi = getelementptr inbounds [8 x i8], ptr %i.bbo, i64 %.021.i.i.i.i.i.i212
  %i.bhj = load <2 x double>, ptr %i.bhi, align 1, !tbaa !47
  %i.bhk = getelementptr inbounds [8 x i8], ptr %i.bbu, i64 %.021.i.i.i.i.i.i212
  %i.bhl = load <2 x double>, ptr %i.bhk, align 1, !tbaa !47
  %i.bhm = fsub <2 x double> %i.bhj, %i.bhl
  %i.bhn = fmul <2 x double> %i.bem, %i.bhm
  %i.bho = load <2 x double>, ptr %i.bhh, align 16, !tbaa !47
  %i.bhp = fsub <2 x double> %i.bho, %i.bhn
  store <2 x double> %i.bhp, ptr %i.bhh, align 16, !tbaa !47
  %i.bhq = add nsw i64 %.021.i.i.i.i.i.i212, 2    ; 2 uses
  %i.bhr = icmp slt i64 %i.bhq, %i.bcl
  br i1 %i.bhr, label %.lr.ph.i.i.i.i.i.i211, label %._crit_edge.i.i.i.i.i.i206, !llvm.loop !477

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit216: ; preds = %.lr.ph.i17.i.i.i.i.i.i207.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i207, %middle.block1319, %._crit_edge.i.i.i.i.i.i206, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit
  %i.bhs = load ptr, ptr %i.ey, align 8, !tbaa !85
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 48
  %i.bhu = load i32, ptr %i.bht, align 8, !tbaa !93
  %.not90 = icmp eq i32 %i.bhu, 0
  br i1 %.not90, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit235, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit216
  %i.bhv = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.bhw = load ptr, ptr %i.a, align 8, !tbaa !17 ; 7 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 1008
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhw, i64 8
  %i.bhz = load i32, ptr %i.bhy, align 8, !tbaa !32
  %i.bia = add i32 %i.bhz, -1
  %i.bib = sext i32 %i.bia to i64                 ; 7 uses
  %i.bic = load ptr, ptr %i.bhx, align 8, !tbaa !34, !noalias !630 ; 4 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bhw, i64 1016
  %i.bie = load i64, ptr %i.bid, align 8, !tbaa !35, !noalias !630 ; 3 uses
  %i.bif = mul i64 %i.bie, %i.bib                 ; 2 uses
  %i.big = getelementptr [8 x i8], ptr %i.bic, i64 %i.bif ; 10 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bhw, i64 1080
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !34, !noalias !631 ; 4 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bhw, i64 1088
  %i.bik = load i64, ptr %i.bij, align 8, !tbaa !35, !noalias !631 ; 3 uses
  %i.bil = mul i64 %i.bik, %i.bib                 ; 2 uses
  %i.bim = getelementptr [8 x i8], ptr %i.bii, i64 %i.bil ; 10 uses
  %i.bin = load double, ptr %i.bhv, align 8, !tbaa !46, !noalias !632 ; 9 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bhw, i64 112
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !34, !noalias !633 ; 2 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bhw, i64 120
  %i.bir = load i64, ptr %i.biq, align 8, !tbaa !35, !noalias !633 ; 12 uses
  %i.bis = mul nsw i64 %i.bir, %i.bib
  %.not.i.i.i.i.i219 = icmp eq ptr %i.bip, null
  %i.bit = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %i.bis
  %i.biu = select i1 %.not.i.i.i.i.i219, ptr null, ptr %i.bit ; 15 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i220 = insertelement <2 x double> poison, double %i.bin, i64 0
  %i.biv = ptrtoint ptr %i.biu to i64             ; 2 uses
  %i.biw = and i64 %i.biv, 7
  %.not.i.i.i.i.i.i.i221 = icmp eq i64 %i.biw, 0
  br i1 %.not.i.i.i.i.i.i.i221, label %bb.y, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i222

bb.y:                                             ; preds = %bb.x
  %i.bix = lshr exact i64 %i.biv, 3
  %i.biy = and i64 %i.bix, 1
  %i.biz = tail call i64 @llvm.smin.i64(i64 %i.biy, i64 %i.bir)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i222

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i222: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i223 = phi i64 [ %i.biz, %bb.y ], [ %i.bir, %bb.x ] ; 15 uses
  %i.bja = sub nsw i64 %i.bir, %.0.i.i.i.i.i.i.i223 ; 2 uses
  %i.bjb = sdiv i64 %i.bja, 2                     ; 2 uses
  %i.bjc = shl nsw i64 %i.bjb, 1                  ; 2 uses
  %i.bjd = add nsw i64 %i.bjc, %.0.i.i.i.i.i.i.i223 ; 6 uses
  %i.bje = icmp sgt i64 %.0.i.i.i.i.i.i.i223, 0
  br i1 %i.bje, label %.lr.ph.i.i.i.i.i.i.i232.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i224

.lr.ph.i.i.i.i.i.i.i232.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i222
  %min.iters.check1334 = icmp ult i64 %.0.i.i.i.i.i.i.i223, 14
  br i1 %min.iters.check1334, label %.lr.ph.i.i.i.i.i.i.i232.preheader1401, label %vector.memcheck1335

vector.memcheck1335:                              ; preds = %.lr.ph.i.i.i.i.i.i.i232.preheader
  %i.bjf = shl i64 %.0.i.i.i.i.i.i.i223, 3
  %i.bjg = getelementptr i8, ptr %i.biu, i64 %i.bjf ; 2 uses
  %i.bjh = mul i64 %i.bie, %i.bib
  %i.bji = add i64 %i.bjh, %.0.i.i.i.i.i.i.i223
  %i.bjj = shl i64 %i.bji, 3
  %i.bjk = getelementptr i8, ptr %i.bic, i64 %i.bjj
  %33 = mul i64 %i.bik, %i.bib
  %34 = add i64 %33, %.0.i.i.i.i.i.i.i223
  %35 = shl i64 %34, 3
  %36 = getelementptr i8, ptr %i.bii, i64 %35
  %bound01336 = icmp ult ptr %i.biu, %i.bjk
  %bound11337 = icmp ult ptr %i.big, %i.bjg
  %found.conflict1338 = and i1 %bound01336, %bound11337
  %bound01339 = icmp ult ptr %i.biu, %36
  %bound11340 = icmp ult ptr %i.bim, %i.bjg
  %found.conflict1341 = and i1 %bound01339, %bound11340
  %conflict.rdx1342 = or i1 %found.conflict1338, %found.conflict1341
  br i1 %conflict.rdx1342, label %.lr.ph.i.i.i.i.i.i.i232.preheader1401, label %vector.ph1343

vector.ph1343:                                    ; preds = %vector.memcheck1335
  %n.vec1344 = and i64 %.0.i.i.i.i.i.i.i223, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert1345 = insertelement <2 x double> poison, double %i.bin, i64 0
  %broadcast.splat1346 = shufflevector <2 x double> %broadcast.splatinsert1345, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %vector.ph1343
  %index1348 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1355, %vector.body1347 ] ; 4 uses
  %i.bjl = getelementptr inbounds nuw [8 x i8], ptr %i.biu, i64 %index1348 ; 3 uses
  %i.bjm = getelementptr inbounds nuw [8 x i8], ptr %i.big, i64 %index1348 ; 2 uses
  %i.bjn = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %index1348 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjm, i64 16
  %wide.load1349 = load <2 x double>, ptr %i.bjm, align 8, !tbaa !46, !alias.scope !634
  %wide.load1350 = load <2 x double>, ptr %i.bjo, align 8, !tbaa !46, !alias.scope !634
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjn, i64 16
  %wide.load1351 = load <2 x double>, ptr %i.bjn, align 8, !tbaa !46, !alias.scope !635
  %wide.load1352 = load <2 x double>, ptr %i.bjp, align 8, !tbaa !46, !alias.scope !635
  %i.bjq = fsub <2 x double> %wide.load1349, %wide.load1351
  %i.bjr = fsub <2 x double> %wide.load1350, %wide.load1352
  %i.bjs = fmul <2 x double> %broadcast.splat1346, %i.bjq
  %i.bjt = fmul <2 x double> %broadcast.splat1346, %i.bjr
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjl, i64 16 ; 2 uses
  %wide.load1353 = load <2 x double>, ptr %i.bjl, align 8, !tbaa !46, !alias.scope !636, !noalias !637
  %wide.load1354 = load <2 x double>, ptr %i.bju, align 8, !tbaa !46, !alias.scope !636, !noalias !637
  %i.bjv = fsub <2 x double> %wide.load1353, %i.bjs
  %i.bjw = fsub <2 x double> %wide.load1354, %i.bjt
  store <2 x double> %i.bjv, ptr %i.bjl, align 8, !tbaa !46, !alias.scope !636, !noalias !637
  store <2 x double> %i.bjw, ptr %i.bju, align 8, !tbaa !46, !alias.scope !636, !noalias !637
  %index.next1355 = add nuw i64 %index1348, 4     ; 2 uses
  %i.bjx = icmp eq i64 %index.next1355, %n.vec1344
  br i1 %i.bjx, label %middle.block1356, label %vector.body1347, !llvm.loop !530

middle.block1356:                                 ; preds = %vector.body1347
  %cmp.n1357 = icmp eq i64 %.0.i.i.i.i.i.i.i223, %n.vec1344
  br i1 %cmp.n1357, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i224, label %.lr.ph.i.i.i.i.i.i.i232.preheader1401

.lr.ph.i.i.i.i.i.i.i232.preheader1401:            ; preds = %vector.memcheck1335, %.lr.ph.i.i.i.i.i.i.i232.preheader, %middle.block1356
  %.05.i.i.i.i.i.i.i233.ph = phi i64 [ 0, %vector.memcheck1335 ], [ 0, %.lr.ph.i.i.i.i.i.i.i232.preheader ], [ %n.vec1344, %middle.block1356 ] ; 6 uses
  %.neg1494 = or disjoint i64 %.05.i.i.i.i.i.i.i233.ph, 1
  %xtraiter1472 = and i64 %.0.i.i.i.i.i.i.i223, 1
  %lcmp.mod1473.not = icmp eq i64 %xtraiter1472, 0
  br i1 %lcmp.mod1473.not, label %.lr.ph.i.i.i.i.i.i.i232.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i232.prol

.lr.ph.i.i.i.i.i.i.i232.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i232.preheader1401
  %i.bjy = getelementptr inbounds nuw [8 x i8], ptr %i.biu, i64 %.05.i.i.i.i.i.i.i233.ph ; 2 uses
  %i.bjz = getelementptr inbounds nuw [8 x i8], ptr %i.big, i64 %.05.i.i.i.i.i.i.i233.ph
  %i.bka = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %.05.i.i.i.i.i.i.i233.ph
  %i.bkb = load double, ptr %i.bjz, align 8, !tbaa !46
  %i.bkc = load double, ptr %i.bka, align 8, !tbaa !46
  %i.bkd = fsub double %i.bkb, %i.bkc
  %i.bke = fmul double %i.bin, %i.bkd
  %i.bkf = load double, ptr %i.bjy, align 8, !tbaa !46
  %i.bkg = fsub double %i.bkf, %i.bke
  store double %i.bkg, ptr %i.bjy, align 8, !tbaa !46
  %i.bkh = or disjoint i64 %.05.i.i.i.i.i.i.i233.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i232.prol.loopexit

.lr.ph.i.i.i.i.i.i.i232.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i232.prol, %.lr.ph.i.i.i.i.i.i.i232.preheader1401
  %.05.i.i.i.i.i.i.i233.unr = phi i64 [ %.05.i.i.i.i.i.i.i233.ph, %.lr.ph.i.i.i.i.i.i.i232.preheader1401 ], [ %i.bkh, %.lr.ph.i.i.i.i.i.i.i232.prol ]
  %i.bki = icmp eq i64 %.0.i.i.i.i.i.i.i223, %.neg1494
  br i1 %i.bki, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i224, label %.lr.ph.i.i.i.i.i.i.i232

.lr.ph.i.i.i.i.i.i.i232:                          ; preds = %.lr.ph.i.i.i.i.i.i.i232.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i232
  %.05.i.i.i.i.i.i.i233 = phi i64 [ %i.blc, %.lr.ph.i.i.i.i.i.i.i232 ], [ %.05.i.i.i.i.i.i.i233.unr, %.lr.ph.i.i.i.i.i.i.i232.prol.loopexit ] ; 5 uses
  %i.bkj = getelementptr inbounds nuw [8 x i8], ptr %i.biu, i64 %.05.i.i.i.i.i.i.i233 ; 2 uses
  %i.bkk = getelementptr inbounds nuw [8 x i8], ptr %i.big, i64 %.05.i.i.i.i.i.i.i233
  %i.bkl = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %.05.i.i.i.i.i.i.i233
  %i.bkm = load double, ptr %i.bkk, align 8, !tbaa !46
  %i.bkn = load double, ptr %i.bkl, align 8, !tbaa !46
  %i.bko = fsub double %i.bkm, %i.bkn
  %i.bkp = fmul double %i.bin, %i.bko
  %i.bkq = load double, ptr %i.bkj, align 8, !tbaa !46
  %i.bkr = fsub double %i.bkq, %i.bkp
  store double %i.bkr, ptr %i.bkj, align 8, !tbaa !46
  %i.bks = add nuw nsw i64 %.05.i.i.i.i.i.i.i233, 1 ; 3 uses
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr %i.biu, i64 %i.bks ; 2 uses
  %i.bku = getelementptr inbounds nuw [8 x i8], ptr %i.big, i64 %i.bks
  %i.bkv = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %i.bks
  %i.bkw = load double, ptr %i.bku, align 8, !tbaa !46
  %i.bkx = load double, ptr %i.bkv, align 8, !tbaa !46
  %i.bky = fsub double %i.bkw, %i.bkx
  %i.bkz = fmul double %i.bin, %i.bky
  %i.bla = load double, ptr %i.bkt, align 8, !tbaa !46
  %i.blb = fsub double %i.bla, %i.bkz
  store double %i.blb, ptr %i.bkt, align 8, !tbaa !46
  %i.blc = add nuw nsw i64 %.05.i.i.i.i.i.i.i233, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i234.1 = icmp eq i64 %i.blc, %.0.i.i.i.i.i.i.i223
  br i1 %exitcond.not.i.i.i.i.i.i.i234.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i224, label %.lr.ph.i.i.i.i.i.i.i232, !llvm.loop !531

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i224: ; preds = %.lr.ph.i.i.i.i.i.i.i232.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i232, %middle.block1356, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i222
  %i.bld = icmp sgt i64 %i.bja, 1
  br i1 %i.bld, label %.lr.ph.i.preheader.i.i.i.i.i229, label %._crit_edge.i.i.i.i.i.i225

.lr.ph.i.preheader.i.i.i.i.i229:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i224
  %i.ble = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i220, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i230

._crit_edge.i.i.i.i.i.i225:                       ; preds = %.lr.ph.i.i.i.i.i.i230, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_INS0_20scalar_difference_opIddEEKS9_SN_EEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i224
  %i.blf = icmp slt i64 %i.bjd, %i.bir
  br i1 %i.blf, label %.lr.ph.i17.i.i.i.i.i.i226.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit235

.lr.ph.i17.i.i.i.i.i.i226.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i225
  %i.blg = add i64 %.0.i.i.i.i.i.i.i223, %i.bjc
  %i.blh = sub i64 %i.bir, %i.blg                 ; 3 uses
  %min.iters.check1374 = icmp ult i64 %i.blh, 22
  br i1 %min.iters.check1374, label %.lr.ph.i17.i.i.i.i.i.i226.preheader1400, label %vector.memcheck1375

vector.memcheck1375:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i226.preheader
  %i.bli = shl i64 %i.bjb, 4                      ; 3 uses
  %i.blj = shl i64 %.0.i.i.i.i.i.i.i223, 3        ; 3 uses
  %i.blk = getelementptr i8, ptr %i.biu, i64 %i.bli
  %i.bll = getelementptr i8, ptr %i.blk, i64 %i.blj ; 2 uses
  %i.blm = shl i64 %i.bir, 3
  %i.bln = getelementptr i8, ptr %i.biu, i64 %i.blm ; 2 uses
  %i.blo = mul i64 %i.bie, %i.bib
  %i.blp = shl i64 %i.blo, 3
  %i.blq = getelementptr i8, ptr %i.bic, i64 %i.blp
  %i.blr = getelementptr i8, ptr %i.blq, i64 %i.bli
  %i.bls = getelementptr i8, ptr %i.blr, i64 %i.blj
  %i.blt = add i64 %i.bir, %i.bif
  %i.blu = shl i64 %i.blt, 3
  %i.blv = getelementptr i8, ptr %i.bic, i64 %i.blu
  %i.blw = mul i64 %i.bik, %i.bib
  %i.blx = shl i64 %i.blw, 3
  %i.bly = getelementptr i8, ptr %i.bii, i64 %i.blx
  %i.blz = getelementptr i8, ptr %i.bly, i64 %i.bli
  %i.bma = getelementptr i8, ptr %i.blz, i64 %i.blj
  %i.bmb = add i64 %i.bir, %i.bil
  %i.bmc = shl i64 %i.bmb, 3
  %i.bmd = getelementptr i8, ptr %i.bii, i64 %i.bmc
  %bound01376 = icmp ult ptr %i.bll, %i.blv
  %bound11377 = icmp ult ptr %i.bls, %i.bln
  %found.conflict1378 = and i1 %bound01376, %bound11377
  %bound01379 = icmp ult ptr %i.bll, %i.bmd
  %bound11380 = icmp ult ptr %i.bma, %i.bln
  %found.conflict1381 = and i1 %bound01379, %bound11380
  %conflict.rdx1382 = or i1 %found.conflict1378, %found.conflict1381
  br i1 %conflict.rdx1382, label %.lr.ph.i17.i.i.i.i.i.i226.preheader1400, label %vector.ph1383

vector.ph1383:                                    ; preds = %vector.memcheck1375
  %n.vec1384 = and i64 %i.blh, -4                 ; 3 uses
  %i.bme = add i64 %i.bjd, %n.vec1384
  %broadcast.splatinsert1385 = insertelement <2 x double> poison, double %i.bin, i64 0
  %broadcast.splat1386 = shufflevector <2 x double> %broadcast.splatinsert1385, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1383
  %index1388 = phi i64 [ 0, %vector.ph1383 ], [ %index.next1395, %vector.body1387 ] ; 2 uses
  %i.bmf = add i64 %i.bjd, %index1388             ; 3 uses
  %i.bmg = getelementptr inbounds [8 x i8], ptr %i.biu, i64 %i.bmf ; 3 uses
  %i.bmh = getelementptr inbounds [8 x i8], ptr %i.big, i64 %i.bmf ; 2 uses
  %i.bmi = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %i.bmf ; 2 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmh, i64 16
  %wide.load1389 = load <2 x double>, ptr %i.bmh, align 8, !tbaa !46, !alias.scope !638
  %wide.load1390 = load <2 x double>, ptr %i.bmj, align 8, !tbaa !46, !alias.scope !638
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmi, i64 16
  %wide.load1391 = load <2 x double>, ptr %i.bmi, align 8, !tbaa !46, !alias.scope !639
  %wide.load1392 = load <2 x double>, ptr %i.bmk, align 8, !tbaa !46, !alias.scope !639
  %i.bml = fsub <2 x double> %wide.load1389, %wide.load1391
  %i.bmm = fsub <2 x double> %wide.load1390, %wide.load1392
  %i.bmn = fmul <2 x double> %broadcast.splat1386, %i.bml
  %i.bmo = fmul <2 x double> %broadcast.splat1386, %i.bmm
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmg, i64 16 ; 2 uses
  %wide.load1393 = load <2 x double>, ptr %i.bmg, align 8, !tbaa !46, !alias.scope !640, !noalias !641
  %wide.load1394 = load <2 x double>, ptr %i.bmp, align 8, !tbaa !46, !alias.scope !640, !noalias !641
  %i.bmq = fsub <2 x double> %wide.load1393, %i.bmn
  %i.bmr = fsub <2 x double> %wide.load1394, %i.bmo
  store <2 x double> %i.bmq, ptr %i.bmg, align 8, !tbaa !46, !alias.scope !640, !noalias !641
  store <2 x double> %i.bmr, ptr %i.bmp, align 8, !tbaa !46, !alias.scope !640, !noalias !641
  %index.next1395 = add nuw i64 %index1388, 4     ; 2 uses
  %i.bms = icmp eq i64 %index.next1395, %n.vec1384
  br i1 %i.bms, label %middle.block1396, label %vector.body1387, !llvm.loop !536

middle.block1396:                                 ; preds = %vector.body1387
  %cmp.n1397 = icmp eq i64 %i.blh, %n.vec1384
  br i1 %cmp.n1397, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit235, label %.lr.ph.i17.i.i.i.i.i.i226.preheader1400

.lr.ph.i17.i.i.i.i.i.i226.preheader1400:          ; preds = %vector.memcheck1375, %.lr.ph.i17.i.i.i.i.i.i226.preheader, %middle.block1396
  %.05.i18.i.i.i.i.i.i227.ph = phi i64 [ %i.bjd, %vector.memcheck1375 ], [ %i.bjd, %.lr.ph.i17.i.i.i.i.i.i226.preheader ], [ %i.bme, %middle.block1396 ] ; 7 uses
  %i.bmt = sub i64 %i.bir, %.05.i18.i.i.i.i.i.i227.ph
  %.neg1495 = add i64 %.05.i18.i.i.i.i.i.i227.ph, 1
  %xtraiter1475 = and i64 %i.bmt, 1
  %lcmp.mod1476.not = icmp eq i64 %xtraiter1475, 0
  br i1 %lcmp.mod1476.not, label %.lr.ph.i17.i.i.i.i.i.i226.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i226.prol

.lr.ph.i17.i.i.i.i.i.i226.prol:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i226.preheader1400
  %i.bmu = getelementptr inbounds [8 x i8], ptr %i.biu, i64 %.05.i18.i.i.i.i.i.i227.ph ; 2 uses
  %i.bmv = getelementptr inbounds [8 x i8], ptr %i.big, i64 %.05.i18.i.i.i.i.i.i227.ph
  %i.bmw = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %.05.i18.i.i.i.i.i.i227.ph
  %i.bmx = load double, ptr %i.bmv, align 8, !tbaa !46
  %i.bmy = load double, ptr %i.bmw, align 8, !tbaa !46
  %i.bmz = fsub double %i.bmx, %i.bmy
  %i.bna = fmul double %i.bin, %i.bmz
  %i.bnb = load double, ptr %i.bmu, align 8, !tbaa !46
  %i.bnc = fsub double %i.bnb, %i.bna
  store double %i.bnc, ptr %i.bmu, align 8, !tbaa !46
  %i.bnd = add nsw i64 %.05.i18.i.i.i.i.i.i227.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i226.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i226.prol.loopexit:          ; preds = %.lr.ph.i17.i.i.i.i.i.i226.prol, %.lr.ph.i17.i.i.i.i.i.i226.preheader1400
  %.05.i18.i.i.i.i.i.i227.unr = phi i64 [ %.05.i18.i.i.i.i.i.i227.ph, %.lr.ph.i17.i.i.i.i.i.i226.preheader1400 ], [ %i.bnd, %.lr.ph.i17.i.i.i.i.i.i226.prol ]
  %i.bne = icmp eq i64 %i.bir, %.neg1495
  br i1 %i.bne, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit235, label %.lr.ph.i17.i.i.i.i.i.i226

.lr.ph.i17.i.i.i.i.i.i226:                        ; preds = %.lr.ph.i17.i.i.i.i.i.i226.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i226
  %.05.i18.i.i.i.i.i.i227 = phi i64 [ %i.bny, %.lr.ph.i17.i.i.i.i.i.i226 ], [ %.05.i18.i.i.i.i.i.i227.unr, %.lr.ph.i17.i.i.i.i.i.i226.prol.loopexit ] ; 5 uses
  %i.bnf = getelementptr inbounds [8 x i8], ptr %i.biu, i64 %.05.i18.i.i.i.i.i.i227 ; 2 uses
  %i.bng = getelementptr inbounds [8 x i8], ptr %i.big, i64 %.05.i18.i.i.i.i.i.i227
  %i.bnh = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %.05.i18.i.i.i.i.i.i227
  %i.bni = load double, ptr %i.bng, align 8, !tbaa !46
  %i.bnj = load double, ptr %i.bnh, align 8, !tbaa !46
  %i.bnk = fsub double %i.bni, %i.bnj
  %i.bnl = fmul double %i.bin, %i.bnk
  %i.bnm = load double, ptr %i.bnf, align 8, !tbaa !46
  %i.bnn = fsub double %i.bnm, %i.bnl
  store double %i.bnn, ptr %i.bnf, align 8, !tbaa !46
  %i.bno = add nsw i64 %.05.i18.i.i.i.i.i.i227, 1 ; 3 uses
  %i.bnp = getelementptr inbounds [8 x i8], ptr %i.biu, i64 %i.bno ; 2 uses
  %i.bnq = getelementptr inbounds [8 x i8], ptr %i.big, i64 %i.bno
  %i.bnr = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %i.bno
  %i.bns = load double, ptr %i.bnq, align 8, !tbaa !46
  %i.bnt = load double, ptr %i.bnr, align 8, !tbaa !46
  %i.bnu = fsub double %i.bns, %i.bnt
  %i.bnv = fmul double %i.bin, %i.bnu
  %i.bnw = load double, ptr %i.bnp, align 8, !tbaa !46
  %i.bnx = fsub double %i.bnw, %i.bnv
  store double %i.bnx, ptr %i.bnp, align 8, !tbaa !46
  %i.bny = add nsw i64 %.05.i18.i.i.i.i.i.i227, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i228.1 = icmp eq i64 %i.bny, %i.bir
  br i1 %exitcond.not.i19.i.i.i.i.i.i228.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit235, label %.lr.ph.i17.i.i.i.i.i.i226, !llvm.loop !537

.lr.ph.i.i.i.i.i.i230:                            ; preds = %.lr.ph.i.i.i.i.i.i230, %.lr.ph.i.preheader.i.i.i.i.i229
  %.021.i.i.i.i.i.i231 = phi i64 [ %i.boi, %.lr.ph.i.i.i.i.i.i230 ], [ %.0.i.i.i.i.i.i.i223, %.lr.ph.i.preheader.i.i.i.i.i229 ] ; 4 uses
  %i.bnz = getelementptr inbounds [8 x i8], ptr %i.biu, i64 %.021.i.i.i.i.i.i231 ; 2 uses
  %i.boa = getelementptr inbounds [8 x i8], ptr %i.big, i64 %.021.i.i.i.i.i.i231
  %i.bob = load <2 x double>, ptr %i.boa, align 1, !tbaa !47
  %i.boc = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %.021.i.i.i.i.i.i231
  %i.bod = load <2 x double>, ptr %i.boc, align 1, !tbaa !47
  %i.boe = fsub <2 x double> %i.bob, %i.bod
  %i.bof = fmul <2 x double> %i.ble, %i.boe
  %i.bog = load <2 x double>, ptr %i.bnz, align 16, !tbaa !47
  %i.boh = fsub <2 x double> %i.bog, %i.bof
  store <2 x double> %i.boh, ptr %i.bnz, align 16, !tbaa !47
  %i.boi = add nsw i64 %.021.i.i.i.i.i.i231, 2    ; 2 uses
  %i.boj = icmp slt i64 %i.boi, %i.bjd
  br i1 %i.boj, label %.lr.ph.i.i.i.i.i.i230, label %._crit_edge.i.i.i.i.i.i225, !llvm.loop !477

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit235: ; preds = %.lr.ph.i17.i.i.i.i.i.i226.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i226, %middle.block1396, %._crit_edge.i.i.i.i.i.i225, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_INS8_20scalar_difference_opIddEEKS4_SK_EEEEEERS4_RKNS0_IT_EE.exit216
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @termination_condition(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1324
  %i.d = load i32, ptr %i.c, align 4, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !644
  %i.i = srem i32 %i.d, %i.h
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !34   ; 9 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !34   ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.r = load i64, ptr %i.q, align 8, !tbaa !53
  %i.s = mul nsw i64 %i.r, %i.p                   ; 13 uses
  %i.t = sdiv i64 %i.s, 4
  %i.u = shl nsw i64 %i.t, 2                      ; 8 uses
  %i.v = sdiv i64 %i.s, 2
  %i.w = shl nsw i64 %i.v, 1                      ; 13 uses
  %.off.i.i.i.i = add i64 %i.s, 1
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 3
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load <2 x double>, ptr %i.m, align 16, !tbaa !47
  %i.y = load <2 x double>, ptr %i.n, align 16, !tbaa !47
  %i.z = fsub <2 x double> %i.x, %i.y
  %i.aa = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.z) ; 3 uses
  %i.ab = icmp sgt i64 %i.s, 3                    ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ad = load <2 x double>, ptr %i.ac, align 16, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.af = load <2 x double>, ptr %i.ae, align 16, !tbaa !47
  %i.ag = fsub <2 x double> %i.ad, %i.af
  %i.ah = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ag) ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.s, 7
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.ah, %bb.d ], [ %i.az, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.aa, %bb.d ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %i.aj = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %.075.lcssa.i.i.i.i, <2 x double> %.072.lcssa.i.i.i.i) ; 2 uses
  %i.ak = icmp sgt i64 %i.w, %i.u
  br i1 %i.ak, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.d ] ; 4 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.aa, %bb.d ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.az, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.d ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.05480.i.i.i.i
  %i.am = load <2 x double>, ptr %i.al, align 16, !tbaa !47
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05480.i.i.i.i
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !47
  %i.ap = fsub <2 x double> %i.am, %i.ao
  %i.aq = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ap)
  %i.ar = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.aq, <2 x double> %.07278.i.i.i.i) ; 2 uses
  %i.as = add nuw nsw i64 %.054.in79.i.i.i.i, 6   ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.as
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !47
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.as
  %i.aw = load <2 x double>, ptr %i.av, align 16, !tbaa !47
  %i.ax = fsub <2 x double> %i.au, %i.aw
  %i.ay = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ax)
  %i.az = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ay, <2 x double> %.07577.i.i.i.i) ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ba = icmp slt i64 %.054.i.i.i.i, %i.u
  br i1 %i.ba, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !642

end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS9_INS0_20scalar_difference_opIddEEKNS9_ISB_KS7_KNS_7ProductIS6_S7_Li1EEEEEKNSF_INS_9TransposeIS6_EES7_Li1EEEEEKNS5_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSW_:bb.a
  %.182.i.i.i.i.i.i.i = phi double [ %i.tw, %.lr.ph85.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ]
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %.05283.i.i.i.i.i.i.i
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !46
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05283.i.i.i.i.i.i.i
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !46
  %i.ta = fmul double %i.sx, %i.sz
  %i.tb = fadd double %.182.i.i.i.i.i.i.i, %i.ta
  %i.tc = add nsw i64 %.05283.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.td = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.tc
  %i.te = load double, ptr %i.td, align 8, !tbaa !46
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.tc
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !46
  %i.th = fmul double %i.te, %i.tg
  %i.ti = fadd double %i.tb, %i.th
  %i.tj = add nsw i64 %.05283.i.i.i.i.i.i.i, 2    ; 2 uses
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.tj
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !46
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.tj
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !46
  %i.to = fmul double %i.tl, %i.tn
  %i.tp = fadd double %i.ti, %i.to
  %i.tq = add nsw i64 %.05283.i.i.i.i.i.i.i, 3    ; 2 uses
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.tq
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !46
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.tq
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !46
  %i.tv = fmul double %i.ts, %i.tu
  %i.tw = fadd double %i.tp, %i.tv                ; 2 uses
  %i.tx = add nsw i64 %.05283.i.i.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.tx, %i.ab
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_INS0_20scalar_difference_opIddEEKNS8_ISA_KS6_KNS_7ProductIS5_S6_Li1EEEEEKNSE_INS_9TransposeIS5_EES6_Li1EEEEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit, label %.lr.ph85.i.i.i.i.i.i.i, !llvm.loop !798

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_INS0_20scalar_difference_opIddEEKNS8_ISA_KS6_KNS_7ProductIS5_S6_Li1EEEEEKNSE_INS_9TransposeIS5_EES6_Li1EEEEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i, %_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_7ProductIS7_S8_Li1EEEEENS0_10IndexBasedESE_ddE5coeffEl.exit.i.i.i
  %.0.i.i.i.i.i = phi double [ %i.so, %_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_7ProductIS7_S8_Li1EEEEENS0_10IndexBasedESE_ddE5coeffEl.exit.i.i.i ], [ %.lcssa162.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ], [ %i.tw, %.lr.ph85.i.i.i.i.i.i.i ]
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.08
  %i.tz = fadd double %.0.i.i.i.i.i.i, %i.se
  %i.ua = fsub double %i.tz, %.0.i.i.i.i.i
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.08
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !46
  %i.ud = fadd double %i.ua, %i.uc
  store double %i.ud, ptr %i.ty, align 8, !tbaa !46
  %i.ue = add nuw nsw i64 %.08, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ue, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !790
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS6_S7_Li1EEEEEKS7_EEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSP_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !848, !nonnull !101, !align !102 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42   ; 14 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 7
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 3
  %i.i = and i64 %i.h, 1
  %i.j = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 21 uses
  %i.k = sub nsw i64 %i.d, %.0.i                  ; 2 uses
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = shl nsw i64 %i.l, 1                      ; 3 uses
  %i.n = add nsw i64 %i.m, %.0.i                  ; 10 uses
  %i.o = icmp sgt i64 %.0.i, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !849, !nonnull !101, !align !102
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49   ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !850, !nonnull !101, !align !102 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113, !nonnull !101, !align !102 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34, !noalias !851 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41, !noalias !852 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42, !noalias !852 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 14 uses
  br i1 %i.aa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader, label %.lr.ph.split.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader: ; preds = %.lr.ph.i
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = ptrtoaddr ptr %i.q to i64
  %min.iters.check88 = icmp ult i64 %.0.i, 6
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = select i1 %min.iters.check88, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader169, label %vector.ph90

vector.ph90:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader
  %n.vec91 = and i64 %.0.i, 9223372036854775804   ; 3 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index93 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index93 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load94 = load <2 x double>, ptr %i.ah, align 8, !tbaa !46
  %wide.load95 = load <2 x double>, ptr %i.ai, align 8, !tbaa !46
  %i.aj = fneg <2 x double> %wide.load94
  %i.ak = fneg <2 x double> %wide.load95
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x double> %i.aj, ptr %i.ag, align 8, !tbaa !46
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !46
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.am, label %middle.block97, label %vector.body92, !llvm.loop !819

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %.0.i, %n.vec91
  br i1 %cmp.n98, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader169

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader169: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader, %middle.block97
  %.05.us.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader ], [ %n.vec91, %middle.block97 ] ; 3 uses
  %xtraiter178 = and i64 %.0.i, 3                 ; 2 uses
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader169, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol
  %.05.us.i.prol = phi i64 [ %i.ar, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol ], [ %.05.us.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader169 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader169 ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.us.i.prol
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.05.us.i.prol
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46
  %i.aq = fneg double %i.ap
  store double %i.aq, ptr %i.an, align 8, !tbaa !46
  %i.ar = add nuw nsw i64 %.05.us.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter178
  br i1 %prol.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol, !llvm.loop !820

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader169
  %.05.us.i.unr = phi i64 [ %.05.us.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader169 ], [ %i.ar, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol ]
  %i.as = sub nsw i64 %.05.us.i.ph, %.0.i
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i
  %.05.us.i = phi i64 [ %i.bn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i ], [ %.05.us.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.us.i
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.05.us.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !46
  %i.ax = fneg double %i.aw
  store double %i.ax, ptr %i.au, align 8, !tbaa !46
  %i.ay = add nuw nsw i64 %.05.us.i, 1            ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46
  %i.bc = fneg double %i.bb
  store double %i.bc, ptr %i.az, align 8, !tbaa !46
  %i.bd = add nuw nsw i64 %.05.us.i, 2            ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bd
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !46
  %i.bh = fneg double %i.bg
  store double %i.bh, ptr %i.be, align 8, !tbaa !46
  %i.bi = add nuw nsw i64 %.05.us.i, 3            ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bi
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !46
  %i.bm = fneg double %i.bl
  store double %i.bm, ptr %i.bj, align 8, !tbaa !46
  %i.bn = add nuw nsw i64 %.05.us.i, 4            ; 2 uses
  %exitcond12.not.i.3 = icmp eq i64 %i.bn, %.0.i
  br i1 %exitcond12.not.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i, !llvm.loop !821

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bo = icmp sgt i64 %i.z, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !35 ; 5 uses
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.preheader:    ; preds = %.lr.ph.split.i
  %i.br = add nsw i64 %i.z, -1                    ; 2 uses
  %i.bs = add nsw i64 %i.z, -2
  %xtraiter174 = and i64 %i.br, 3                 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 3
  %unroll_iter = and i64 %i.br, -4
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  %lcmp.mod177 = icmp ne i64 %xtraiter174, 0
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 12
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader172, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader
  %i.bu = shl i64 %.0.i, 3                        ; 3 uses
  %1 = getelementptr i8, ptr %i.q, i64 %i.bu      ; 3 uses
  %i.bv = getelementptr i8, ptr %i.v, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.x, i64 8
  %2 = getelementptr i8, ptr %i.ac, i64 %i.bu
  %bound0.a = icmp ult ptr %i.q, %i.bv
  %bound1 = icmp ult ptr %i.v, %1
  %found.conflict = and i1 %bound0.a, %bound1
  %bound076 = icmp ult ptr %i.q, %i.bw
  %bound177 = icmp ult ptr %i.x, %1
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx = or i1 %found.conflict, %found.conflict78
  %bound079 = icmp ult ptr %i.q, %2
  %bound180 = icmp ult ptr %i.ac, %1
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx, %found.conflict81
  br i1 %conflict.rdx82, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader172, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775804     ; 3 uses
  %i.bx = load double, ptr %i.x, align 8, !tbaa !46, !alias.scope !853
  %.scalar = fneg double %i.bx
  %i.by = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load = load <2 x double>, ptr %i.ca, align 8, !tbaa !46, !alias.scope !854
  %wide.load83 = load <2 x double>, ptr %i.cb, align 8, !tbaa !46, !alias.scope !854
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.cd = fmul <2 x double> %wide.load, %i.bz
  %i.ce = fmul <2 x double> %wide.load83, %i.bz
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load84 = load <2 x double>, ptr %i.cf, align 8, !tbaa !46, !alias.scope !855
  %wide.load85 = load <2 x double>, ptr %i.cg, align 8, !tbaa !46, !alias.scope !855
  %i.ch = fsub <2 x double> %i.cd, %wide.load84
  %i.ci = fsub <2 x double> %i.ce, %wide.load85
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x double> %i.ch, ptr %i.cc, align 8, !tbaa !46, !alias.scope !856, !noalias !857
  store <2 x double> %i.ci, ptr %i.cj, align 8, !tbaa !46, !alias.scope !856, !noalias !857
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !827

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader172

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader172: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.ph, 1
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader172
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.05.i.ph
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !46
  %i.cn = load double, ptr %i.x, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.ph
  %i.cp = fneg double %i.cn
  %i.cq = fmul double %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.05.i.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !46
  %i.ct = fsub double %i.cq, %i.cs
  store double %i.ct, ptr %i.co, align 8, !tbaa !46
  %i.cu = or disjoint i64 %.05.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader172
  %.05.i.unr = phi i64 [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader172 ], [ %i.cu, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol ]
  %i.cv = icmp eq i64 %.0.i, %.neg
  br i1 %i.cv, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.i.i.preheader.us.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.05.us6.i = phi i64 [ %i.et, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.preheader ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.05.us6.i ; 6 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !46
  %i.cy = load double, ptr %i.x, align 8, !tbaa !46
  %i.cz = fmul double %i.cx, %i.cy                ; 2 uses
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.i.i.us.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.i.i.i.us.i
  %.010.i.i.i.i.i.i.i.us.i = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i ] ; 6 uses
  %.089.i.i.i.i.i.i.i.us.i = phi double [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.us.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i ]
  %i.da = mul nsw i64 %.010.i.i.i.i.i.i.i.us.i, %i.bq
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.010.i.i.i.i.i.i.i.us.i
  %i.de = load double, ptr %i.dd, align 8, !tbaa !46
  %i.df = fmul double %i.dc, %i.de
  %i.dg = fadd double %.089.i.i.i.i.i.i.i.us.i, %i.df
  %i.dh = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i, 1 ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.bq
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !46
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.dh
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !46
  %i.dn = fmul double %i.dk, %i.dm
  %i.do = fadd double %i.dg, %i.dn
  %i.dp = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i, 2 ; 2 uses
  %i.dq = mul nsw i64 %i.dp, %i.bq
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !46
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.dp
  %i.du = load double, ptr %i.dt, align 8, !tbaa !46
  %i.dv = fmul double %i.ds, %i.du
  %i.dw = fadd double %i.do, %i.dv
  %i.dx = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i, 3 ; 2 uses
  %i.dy = mul nsw i64 %i.dx, %i.bq
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !46
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.dx
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !46
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = fadd double %i.dw, %i.ed                ; 3 uses
  %i.ef = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.i, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i
  br i1 %lcmp.mod175.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.i.epil.preheader:         ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i
  %.010.i.i.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i ], [ %i.ef, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.089.i.i.i.i.i.i.i.us.i.epil.init = phi double [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i ], [ %i.ee, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.i.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.i.i.us.i.epil:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.i.i.us.i.epil.preheader
  %.010.i.i.i.i.i.i.i.us.i.epil = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i.us.i.epil ], [ %.010.i.i.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.i.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i.i.us.i.epil = phi double [ %i.em, %.lr.ph.i.i.i.i.i.i.i.us.i.epil ], [ %.089.i.i.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us.i.epil.preheader ]
  %i.eg = mul nsw i64 %.010.i.i.i.i.i.i.i.us.i.epil, %i.bq
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !46
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.010.i.i.i.i.i.i.i.us.i.epil
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !46
  %i.el = fmul double %i.ei, %i.ek
  %i.em = fadd double %.089.i.i.i.i.i.i.i.us.i.epil, %i.el ; 2 uses
  %i.en = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter174
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.i.i.us.i.epil, !llvm.loop !828

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa
  %.lcssa171 = phi double [ %i.ee, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i.us.i.epil ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.us6.i
  %i.ep = fneg double %.lcssa171
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.05.us6.i
  %i.er = load double, ptr %i.eq, align 8, !tbaa !46
  %i.es = fsub double %i.ep, %i.er
  store double %i.es, ptr %i.eo, align 8, !tbaa !46
  %i.et = add nuw nsw i64 %.05.us6.i, 1           ; 2 uses
  %exitcond11.not.i = icmp eq i64 %i.et, %.0.i
  br i1 %exitcond11.not.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i, !llvm.loop !829

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i
  %.05.i = phi i64 [ %i.fn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i ], [ %.05.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.05.i
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !46
  %i.ew = load double, ptr %i.x, align 8, !tbaa !46
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i
  %i.ey = fneg double %i.ew
  %i.ez = fmul double %i.ev, %i.ey
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.05.i
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !46
  %i.fc = fsub double %i.ez, %i.fb
  store double %i.fc, ptr %i.ex, align 8, !tbaa !46
  %i.fd = add nuw nsw i64 %.05.i, 1               ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !46
  %i.fg = load double, ptr %i.x, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.fd
  %i.fi = fneg double %i.fg
  %i.fj = fmul double %i.ff, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.fd
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !46
  %i.fm = fsub double %i.fj, %i.fl
  store double %i.fm, ptr %i.fh, align 8, !tbaa !46
  %i.fn = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.fn, %.0.i
  br i1 %exitcond.not.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i, !llvm.loop !830

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i, %middle.block, %middle.block97, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.fo = icmp sgt i64 %i.k, 1
  br i1 %i.fo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit
  %i.fq = icmp slt i64 %i.n, %i.d
  br i1 %i.fq, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit33

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.fr = load ptr, ptr %0, align 8, !tbaa !849, !nonnull !101, !align !102
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !49 ; 14 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !850, !nonnull !101, !align !102 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !113, !nonnull !101, !align !102 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !34, !noalias !858 ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !41, !noalias !859 ; 12 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !42, !noalias !859 ; 4 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !49 ; 14 uses
  br i1 %i.gc, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader, label %.lr.ph.split.i18

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader: ; preds = %.lr.ph.i17
  %i.gf = ptrtoaddr ptr %i.ge to i64
  %i.gg = ptrtoaddr ptr %i.fs to i64
  %i.gh = add i64 %.0.i, %i.m
  %i.gi = sub i64 %i.d, %i.gh                     ; 3 uses
  %min.iters.check149 = icmp ult i64 %i.gi, 6
  %i.gj = sub i64 %i.gf, %i.gg
  %diff.check151 = icmp ugt i64 %i.gj, -32
  %or.cond162 = select i1 %min.iters.check149, i1 true, i1 %diff.check151
  br i1 %or.cond162, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader164, label %vector.ph152

vector.ph152:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader
  %n.vec153 = and i64 %i.gi, -4                   ; 3 uses
  %i.gk = add i64 %i.n, %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next158, %vector.body154 ] ; 2 uses
  %i.gl = add i64 %i.n, %index155                 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gl ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load156 = load <2 x double>, ptr %i.gn, align 8, !tbaa !46
  %wide.load157 = load <2 x double>, ptr %i.go, align 8, !tbaa !46
  %i.gp = fneg <2 x double> %wide.load156
  %i.gq = fneg <2 x double> %wide.load157
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <2 x double> %i.gp, ptr %i.gm, align 8, !tbaa !46
  store <2 x double> %i.gq, ptr %i.gr, align 8, !tbaa !46
  %index.next158 = add nuw i64 %index155, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.gs, label %middle.block159, label %vector.body154, !llvm.loop !835

middle.block159:                                  ; preds = %vector.body154
  %cmp.n160 = icmp eq i64 %i.gi, %n.vec153
  br i1 %cmp.n160, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit33, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader164

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader164: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader, %middle.block159
  %.05.us.i31.ph = phi i64 [ %i.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader ], [ %i.gk, %middle.block159 ] ; 4 uses
  %i.gt = sub i64 %i.d, %.05.us.i31.ph
  %xtraiter197 = and i64 %i.gt, 3                 ; 2 uses
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader164, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol
  %.05.us.i31.prol = phi i64 [ %i.gy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol ], [ %.05.us.i31.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader164 ] ; 3 uses
  %prol.iter199 = phi i64 [ %prol.iter199.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader164 ]
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %.05.us.i31.prol
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %.05.us.i31.prol
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !46
  %i.gx = fneg double %i.gw
  store double %i.gx, ptr %i.gu, align 8, !tbaa !46
  %i.gy = add nsw i64 %.05.us.i31.prol, 1         ; 2 uses
  %prol.iter199.next = add i64 %prol.iter199, 1   ; 2 uses
  %prol.iter199.cmp.not = icmp eq i64 %prol.iter199.next, %xtraiter197
  br i1 %prol.iter199.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol, !llvm.loop !836

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader164
  %.05.us.i31.unr = phi i64 [ %.05.us.i31.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.preheader164 ], [ %i.gy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol ]
  %i.gz = sub i64 %.05.us.i31.ph, %i.d
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit33, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30
  %.05.us.i31 = phi i64 [ %i.hu, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30 ], [ %.05.us.i31.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol.loopexit ] ; 6 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %.05.us.i31
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %.05.us.i31
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !46
  %i.he = fneg double %i.hd
  store double %i.he, ptr %i.hb, align 8, !tbaa !46
  %i.hf = add nsw i64 %.05.us.i31, 1              ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.hf
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.hf
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !46
  %i.hj = fneg double %i.hi
  store double %i.hj, ptr %i.hg, align 8, !tbaa !46
  %i.hk = add nsw i64 %.05.us.i31, 2              ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.hk
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.hk
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !46
  %i.ho = fneg double %i.hn
  store double %i.ho, ptr %i.hl, align 8, !tbaa !46
  %i.hp = add nsw i64 %.05.us.i31, 3              ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.hp
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.hp
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !46
  %i.ht = fneg double %i.hs
  store double %i.ht, ptr %i.hq, align 8, !tbaa !46
  %i.hu = add nsw i64 %.05.us.i31, 4              ; 2 uses
  %exitcond12.not.i32.3 = icmp eq i64 %i.hu, %i.d
  br i1 %exitcond12.not.i32.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit33, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30, !llvm.loop !837

.lr.ph.split.i18:                                 ; preds = %.lr.ph.i17
  %i.hv = icmp sgt i64 %i.gb, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !35 ; 5 uses
  br i1 %i.hv, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader

.lr.ph.i.i.i.i.i.i.i.preheader.us.i22.preheader:  ; preds = %.lr.ph.split.i18
  %i.hy = add nsw i64 %i.gb, -1                   ; 2 uses
  %i.hz = add nsw i64 %i.gb, -2
  %xtraiter190 = and i64 %i.hy, 3                 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 3
  %unroll_iter195 = and i64 %i.hy, -4
  %lcmp.mod192.not = icmp eq i64 %xtraiter190, 0
  %lcmp.mod194 = icmp ne i64 %xtraiter190, 0
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader: ; preds = %.lr.ph.split.i18
  %i.ib = add i64 %.0.i, %i.m
  %i.ic = sub i64 %i.d, %i.ib                     ; 3 uses
  %min.iters.check119 = icmp ult i64 %i.ic, 14
  br i1 %min.iters.check119, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader166, label %vector.memcheck120

vector.memcheck120:                               ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader
  %i.id = shl i64 %i.l, 4
  %i.ie = shl i64 %.0.i, 3
  %i.if = add i64 %i.id, %i.ie                    ; 3 uses
  %i.ig = getelementptr i8, ptr %i.fs, i64 %i.if  ; 3 uses
  %i.ih = shl i64 %i.d, 3                         ; 3 uses
  %i.ii = getelementptr i8, ptr %i.fs, i64 %i.ih  ; 3 uses
  %i.ij = getelementptr i8, ptr %i.fx, i64 %i.if
  %i.ik = getelementptr i8, ptr %i.fx, i64 %i.ih
  %3 = getelementptr i8, ptr %i.fz, i64 8
  %4 = getelementptr i8, ptr %i.ge, i64 %i.if
  %i.il = getelementptr i8, ptr %i.ge, i64 %i.ih
  %bound0121.a = icmp ult ptr %i.ig, %i.ik
  %bound1122.a = icmp ult ptr %i.ij, %i.ii
  %found.conflict123.a = and i1 %bound0121.a, %bound1122.a
  %bound0124 = icmp ult ptr %i.ig, %3
  %bound1125 = icmp ult ptr %i.fz, %i.ii
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %found.conflict123.a, %found.conflict126
  %bound0128 = icmp ult ptr %i.ig, %i.il
  %bound1129 = icmp ult ptr %4, %i.ii
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  br i1 %conflict.rdx131, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader166, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck120
  %n.vec133 = and i64 %i.ic, -4                   ; 3 uses
  %i.im = add i64 %i.n, %n.vec133
  %i.in = load double, ptr %i.fz, align 8, !tbaa !46, !alias.scope !860
  %.scalar163 = fneg double %i.in
  %i.io = insertelement <2 x double> poison, double %.scalar163, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next142, %vector.body136 ] ; 2 uses
  %i.iq = add i64 %i.n, %index137                 ; 3 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.iq ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load138 = load <2 x double>, ptr %i.ir, align 8, !tbaa !46, !alias.scope !861
  %wide.load139 = load <2 x double>, ptr %i.is, align 8, !tbaa !46, !alias.scope !861
  %i.it = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.iq ; 2 uses
  %i.iu = fmul <2 x double> %wide.load138, %i.ip
  %i.iv = fmul <2 x double> %wide.load139, %i.ip
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.iq ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load140 = load <2 x double>, ptr %i.iw, align 8, !tbaa !46, !alias.scope !862
  %wide.load141 = load <2 x double>, ptr %i.ix, align 8, !tbaa !46, !alias.scope !862
  %i.iy = fsub <2 x double> %i.iu, %wide.load140
  %i.iz = fsub <2 x double> %i.iv, %wide.load141
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store <2 x double> %i.iy, ptr %i.it, align 8, !tbaa !46, !alias.scope !863, !noalias !864
  store <2 x double> %i.iz, ptr %i.ja, align 8, !tbaa !46, !alias.scope !863, !noalias !864
  %index.next142 = add nuw i64 %index137, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next142, %n.vec133
  br i1 %i.jb, label %middle.block143, label %vector.body136, !llvm.loop !843

middle.block143:                                  ; preds = %vector.body136
  %cmp.n144 = icmp eq i64 %i.ic, %n.vec133
  br i1 %cmp.n144, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit33, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader166

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader166: ; preds = %vector.memcheck120, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader, %middle.block143
  %.05.i20.ph = phi i64 [ %i.n, %vector.memcheck120 ], [ %i.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader ], [ %i.im, %middle.block143 ] ; 7 uses
  %i.jc = sub i64 %i.d, %.05.i20.ph
  %.neg200 = add i64 %.05.i20.ph, 1
  %xtraiter187 = and i64 %i.jc, 1
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader166
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %.05.i20.ph
  %i.je = load double, ptr %i.jd, align 8, !tbaa !46
  %i.jf = load double, ptr %i.fz, align 8, !tbaa !46
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %.05.i20.ph
  %i.jh = fneg double %i.jf
  %i.ji = fmul double %i.je, %i.jh
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %.05.i20.ph
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !46
  %i.jl = fsub double %i.ji, %i.jk
  store double %i.jl, ptr %i.jg, align 8, !tbaa !46
  %i.jm = add nsw i64 %.05.i20.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader166
  %.05.i20.unr = phi i64 [ %.05.i20.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader166 ], [ %i.jm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol ]
  %i.jn = icmp eq i64 %i.d, %.neg200
  br i1 %i.jn, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit33, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19

.lr.ph.i.i.i.i.i.i.i.preheader.us.i22:            ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28
  %.05.us6.i23 = phi i64 [ %i.ll, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28 ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22.preheader ] ; 4 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %.05.us6.i23 ; 6 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !46
  %i.jq = load double, ptr %i.fz, align 8, !tbaa !46
  %i.jr = fmul double %i.jp, %i.jq                ; 2 uses
  br i1 %i.ia, label %.lr.ph.i.i.i.i.i.i.i.us.i24.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.i24

.lr.ph.i.i.i.i.i.i.i.us.i24:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22, %.lr.ph.i.i.i.i.i.i.i.us.i24
  %.010.i.i.i.i.i.i.i.us.i25 = phi i64 [ %i.kx, %.lr.ph.i.i.i.i.i.i.i.us.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22 ] ; 6 uses
  %.089.i.i.i.i.i.i.i.us.i26 = phi double [ %i.kw, %.lr.ph.i.i.i.i.i.i.i.us.i24 ], [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22 ]
  %niter196 = phi i64 [ %niter196.next.3, %.lr.ph.i.i.i.i.i.i.i.us.i24 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22 ]
  %i.js = mul nsw i64 %.010.i.i.i.i.i.i.i.us.i25, %i.hx
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.js
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !46
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.010.i.i.i.i.i.i.i.us.i25
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !46
  %i.jx = fmul double %i.ju, %i.jw
  %i.jy = fadd double %.089.i.i.i.i.i.i.i.us.i26, %i.jx
  %i.jz = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i25, 1 ; 2 uses
  %i.ka = mul nsw i64 %i.jz, %i.hx
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.ka
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !46
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.jz
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !46
  %i.kf = fmul double %i.kc, %i.ke
  %i.kg = fadd double %i.jy, %i.kf
  %i.kh = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i25, 2 ; 2 uses
  %i.ki = mul nsw i64 %i.kh, %i.hx
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.ki
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !46
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.kh
  %i.km = load double, ptr %i.kl, align 8, !tbaa !46
  %i.kn = fmul double %i.kk, %i.km
  %i.ko = fadd double %i.kg, %i.kn
  %i.kp = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i25, 3 ; 2 uses
  %i.kq = mul nsw i64 %i.kp, %i.hx
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.kq
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !46
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.kp
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !46
  %i.kv = fmul double %i.ks, %i.ku
  %i.kw = fadd double %i.ko, %i.kv                ; 3 uses
  %i.kx = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter196.next.3 = add i64 %niter196, 4         ; 2 uses
  %niter196.ncmp.3 = icmp eq i64 %niter196.next.3, %unroll_iter195
  br i1 %niter196.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.i24, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i24
  br i1 %lcmp.mod192.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28, label %.lr.ph.i.i.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.i24.epil.preheader:       ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22
  %.010.i.i.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22 ], [ %i.kx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28.unr-lcssa ]
  %.089.i.i.i.i.i.i.i.us.i26.epil.init = phi double [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22 ], [ %i.kw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph.i.i.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.i.i.us.i24.epil:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.i.i.us.i24.epil.preheader
  %.010.i.i.i.i.i.i.i.us.i25.epil = phi i64 [ %i.lf, %.lr.ph.i.i.i.i.i.i.i.us.i24.epil ], [ %.010.i.i.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.i24.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i.i.us.i26.epil = phi double [ %i.le, %.lr.ph.i.i.i.i.i.i.i.us.i24.epil ], [ %.089.i.i.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter191 = phi i64 [ %epil.iter191.next, %.lr.ph.i.i.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us.i24.epil.preheader ]
  %i.ky = mul nsw i64 %.010.i.i.i.i.i.i.i.us.i25.epil, %i.hx
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !46
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.010.i.i.i.i.i.i.i.us.i25.epil
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !46
  %i.ld = fmul double %i.la, %i.lc
  %i.le = fadd double %.089.i.i.i.i.i.i.i.us.i26.epil, %i.ld ; 2 uses
  %i.lf = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.i25.epil, 1
  %epil.iter191.next = add i64 %epil.iter191, 1   ; 2 uses
  %epil.iter191.cmp.not = icmp eq i64 %epil.iter191.next, %xtraiter190
  br i1 %epil.iter191.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28, label %.lr.ph.i.i.i.i.i.i.i.us.i24.epil, !llvm.loop !844

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28.unr-lcssa
  %.lcssa = phi double [ %i.kw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28.unr-lcssa ], [ %i.le, %.lr.ph.i.i.i.i.i.i.i.us.i24.epil ]
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %.05.us6.i23
  %i.lh = fneg double %.lcssa
  %i.li = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %.05.us6.i23
  %i.lj = load double, ptr %i.li, align 8, !tbaa !46
  %i.lk = fsub double %i.lh, %i.lj
  store double %i.lk, ptr %i.lg, align 8, !tbaa !46
  %i.ll = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i29 = icmp eq i64 %i.ll, %i.d
  br i1 %exitcond11.not.i29, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit33, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i22, !llvm.loop !829

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.mf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 5 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %.05.i20
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !46
  %i.lo = load double, ptr %i.fz, align 8, !tbaa !46
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %.05.i20
  %i.lq = fneg double %i.lo
  %i.lr = fmul double %i.ln, %i.lq
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %.05.i20
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !46
  %i.lu = fsub double %i.lr, %i.lt
  store double %i.lu, ptr %i.lp, align 8, !tbaa !46
  %i.lv = add nsw i64 %.05.i20, 1                 ; 3 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.lv
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !46
  %i.ly = load double, ptr %i.fz, align 8, !tbaa !46
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.lv
  %i.ma = fneg double %i.ly
  %i.mb = fmul double %i.lx, %i.ma
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.lv
  %i.md = load double, ptr %i.mc, align 8, !tbaa !46
  %i.me = fsub double %i.mb, %i.md
  store double %i.me, ptr %i.lz, align 8, !tbaa !46
  %i.mf = add nsw i64 %.05.i20, 2                 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %i.mf, %i.d
  br i1 %exitcond.not.i21.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit33, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !845

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS8_S9_Li1EEEEEKS9_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit33: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i28, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i30, %middle.block143, %middle.block159, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %.040 = phi i64 [ %.0.i, %.lr.ph ], [ %i.of, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit ] ; 4 uses
  %i.mg = load ptr, ptr %0, align 8, !tbaa !849, !nonnull !101, !align !102
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !49
  %i.mi = load ptr, ptr %i.fp, align 8, !tbaa !850, !nonnull !101, !align !102 ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 120
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !61 ; 5 uses
  %i.ml = icmp sgt i64 %i.mk, 0
  br i1 %i.ml, label %.lr.ph.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS5_S6_Li1EEEEEKS6_EEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 96
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 80
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 88
  %i.mp = load ptr, ptr %i.mn, align 8, !tbaa !114
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mp, i64 %.040 ; 3 uses
  %i.mr = load i64, ptr %i.mo, align 8, !tbaa !52 ; 3 uses
  %i.ms = load ptr, ptr %i.mm, align 8, !tbaa !49 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal26call_dense_assignment_loopINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS6_IS8_KNS_7ProductIS4_S5_Li1EEESB_EEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %i.ee = getelementptr [8 x i8], ptr %i.do, i64 %i.ea
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !46
  %i.eg = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %i.ed, %i.eh
  %i.ej = fadd <2 x double> %i.dz, %i.ei          ; 3 uses
  %i.ek = add nuw nsw i64 %.012.i.i.i4.i.i.i.i, 2 ; 2 uses
  %niter28.next.1 = add nuw nsw i64 %niter28, 2   ; 2 uses
  %niter28.ncmp.1 = icmp eq i64 %niter28.next.1, %unroll_iter27
  br i1 %niter28.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !6

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod24.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod24.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i, label %.epil.preheader20

.epil.preheader20:                                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i3.i.i.i.i
  %.epil.init23 = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i3.i.i.i.i ], [ %i.ej, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.loopexit.unr-lcssa ]
  %.012.i.i.i4.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i3.i.i.i.i ], [ %i.ek, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod26 = trunc i64 %i.dg to i1
  call void @llvm.assume(i1 %lcmp.mod26)
  %i.el = mul nsw i64 %.012.i.i.i4.i.i.i.i.epil.init, %i.dn
  %i.em = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.el
  %i.en = load <2 x double>, ptr %i.em, align 1, !tbaa !47
  %i.eo = getelementptr [8 x i8], ptr %i.do, i64 %.012.i.i.i4.i.i.i.i.epil.init
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !46
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x double> %i.en, %i.er
  %i.et = fadd <2 x double> %.epil.init23, %i.es
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i: ; preds = %.epil.preheader20, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.loopexit.unr-lcssa, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE6packetILi0EDv2_dEEKT0_l.exit.i.i.i.i
  %.0.i.i2.i.i.i.i = phi <2 x double> [ zeroinitializer, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE6packetILi0EDv2_dEEKT0_l.exit.i.i.i.i ], [ %i.ej, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.loopexit.unr-lcssa ], [ %i.et, %.epil.preheader20 ]
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %.018.i
  %i.ev = fadd <2 x double> %.0.i.i.i.i.i.i, %.0.i.i2.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !105
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.018.i
  %i.ez = load <2 x double>, ptr %i.ey, align 1, !tbaa !47
  %i.fa = fadd <2 x double> %i.ev, %i.ez
  store <2 x double> %i.fa, ptr %i.eu, align 16, !tbaa !47
  %i.fb = add nsw i64 %.018.i, 2                  ; 2 uses
  %i.fc = icmp slt i64 %i.fb, %i.bl
  br i1 %i.fc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !865
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_ISD_KNS_7ProductIS8_S9_Li1EEESG_EEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !117, !nonnull !101, !align !102
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 29 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !nonnull !101, !align !102 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113, !nonnull !101, !align !102 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34, !noalias !912 ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41, !noalias !913 ; 25 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !42, !noalias !913 ; 6 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = icmp sgt i64 %i.m, 1                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113, !nonnull !101, !align !102 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34, !noalias !914 ; 15 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41, !noalias !915 ; 30 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.v = load i64, ptr %i.u, align 8, !tbaa !42, !noalias !915 ; 8 uses
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.y = icmp sgt i64 %i.v, 1                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105 ; 29 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  br i1 %i.n, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.w, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader, label %.lr.ph.split.us.split

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.ac = sub i64 %2, %1                          ; 3 uses
  %min.iters.check233 = icmp ult i64 %i.ac, 6
  %i.ad = sub i64 %i.ab, %i.d
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check233, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader245, label %vector.ph235

vector.ph235:                                     ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader
  %n.vec236 = and i64 %i.ac, -4                   ; 3 uses
  %i.ae = add i64 %1, %n.vec236
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph235
  %index238 = phi i64 [ 0, %vector.ph235 ], [ %index.next241, %vector.body237 ] ; 2 uses
  %i.af = add i64 %1, %index238                   ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load239 = load <2 x double>, ptr %i.ah, align 8, !tbaa !46
  %wide.load240 = load <2 x double>, ptr %i.ai, align 8, !tbaa !46
  %i.aj = fadd <2 x double> %wide.load239, zeroinitializer
  %i.ak = fadd <2 x double> %wide.load240, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x double> %i.aj, ptr %i.ag, align 8, !tbaa !46
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !46
  %index.next241 = add nuw i64 %index238, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.am, label %middle.block242, label %vector.body237, !llvm.loop !880

middle.block242:                                  ; preds = %vector.body237
  %cmp.n243 = icmp eq i64 %i.ac, %n.vec236
  br i1 %cmp.n243, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader245

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader245: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader, %middle.block242
  %.06.us.us.ph = phi i64 [ %1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader ], [ %i.ae, %middle.block242 ] ; 4 uses
  %i.an = sub i64 %2, %.06.us.us.ph
  %xtraiter296 = and i64 %i.an, 3                 ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol.loopexit, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader245, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol
  %.06.us.us.prol = phi i64 [ %i.as, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol ], [ %.06.us.us.ph, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader245 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol ], [ 0, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader245 ]
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us.us.prol
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us.us.prol
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !46
  %i.ar = fadd double %i.aq, 0.000000e+00
  store double %i.ar, ptr %i.ao, align 8, !tbaa !46
  %i.as = add nsw i64 %.06.us.us.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter296
  br i1 %prol.iter.cmp.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol.loopexit, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol, !llvm.loop !881

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol.loopexit: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader245
  %.06.us.us.unr = phi i64 [ %.06.us.us.ph, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.preheader245 ], [ %i.as, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol ]
  %i.at = sub i64 %.06.us.us.ph, %2
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol.loopexit, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us
  %.06.us.us = phi i64 [ %i.bo, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us ], [ %.06.us.us.unr, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us.us
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us.us
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !46
  %i.ay = fadd double %i.ax, 0.000000e+00
  store double %i.ay, ptr %i.av, align 8, !tbaa !46
  %i.az = add nsw i64 %.06.us.us, 1               ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !46
  %i.bd = fadd double %i.bc, 0.000000e+00
  store double %i.bd, ptr %i.ba, align 8, !tbaa !46
  %i.be = add nsw i64 %.06.us.us, 2               ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.be
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !46
  %i.bi = fadd double %i.bh, 0.000000e+00
  store double %i.bi, ptr %i.bf, align 8, !tbaa !46
  %i.bj = add nsw i64 %.06.us.us, 3               ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bj
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !46
  %i.bn = fadd double %i.bm, 0.000000e+00
  store double %i.bn, ptr %i.bk, align 8, !tbaa !46
  %i.bo = add nsw i64 %.06.us.us, 4               ; 2 uses
  %exitcond63.not.3 = icmp eq i64 %i.bo, %2
  br i1 %exitcond63.not.3, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us, !llvm.loop !882

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.bp = load i64, ptr %i.x, align 8, !tbaa !35  ; 5 uses
  br i1 %i.y, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42.preheader, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42.preheader: ; preds = %.lr.ph.split.us.split
  %i.bq = add nsw i64 %i.v, -1                    ; 2 uses
  %i.br = add nsw i64 %i.v, -2
  %xtraiter289 = and i64 %i.bq, 3                 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 3
  %unroll_iter294 = and i64 %i.bq, -4
  %lcmp.mod291.not = icmp eq i64 %xtraiter289, 0
  %lcmp.mod293 = icmp ne i64 %xtraiter289, 0
  br label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader: ; preds = %.lr.ph.split.us.split
  %i.bt = sub i64 %2, %1                          ; 3 uses
  %min.iters.check204 = icmp ult i64 %i.bt, 12
  br i1 %min.iters.check204, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader247, label %vector.memcheck205

vector.memcheck205:                               ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader
  %i.bu = shl i64 %1, 3                           ; 3 uses
  %i.bv = getelementptr i8, ptr %i.c, i64 %i.bu   ; 3 uses
  %i.bw = shl i64 %2, 3                           ; 3 uses
  %i.bx = getelementptr i8, ptr %i.c, i64 %i.bw   ; 3 uses
  %i.by = getelementptr i8, ptr %i.r, i64 %i.bu
  %i.bz = getelementptr i8, ptr %i.r, i64 %i.bw
  %3 = getelementptr i8, ptr %i.t, i64 8
  %4 = getelementptr i8, ptr %i.aa, i64 %i.bu
  %i.ca = getelementptr i8, ptr %i.aa, i64 %i.bw
  %bound0206.a = icmp ult ptr %i.bv, %i.bz
  %bound1207.a = icmp ult ptr %i.by, %i.bx
  %found.conflict208.a = and i1 %bound0206.a, %bound1207.a
  %bound0209 = icmp ult ptr %i.bv, %3
  %bound1210 = icmp ult ptr %i.t, %i.bx
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %found.conflict208.a, %found.conflict211
  %bound0213 = icmp ult ptr %i.bv, %i.ca
  %bound1214 = icmp ult ptr %4, %i.bx
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  br i1 %conflict.rdx216, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader247, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck205
  %n.vec218 = and i64 %i.bt, -4                   ; 3 uses
  %i.cb = add i64 %1, %n.vec218
  %i.cc = load double, ptr %i.t, align 8, !tbaa !46, !alias.scope !916
  %broadcast.splatinsert223 = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat224 = shufflevector <2 x double> %broadcast.splatinsert223, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next227, %vector.body219 ] ; 2 uses
  %i.cd = add i64 %1, %index220                   ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load221 = load <2 x double>, ptr %i.ce, align 8, !tbaa !46, !alias.scope !917
  %wide.load222 = load <2 x double>, ptr %i.cf, align 8, !tbaa !46, !alias.scope !917
  %i.cg = fmul <2 x double> %wide.load221, %broadcast.splat224
  %i.ch = fmul <2 x double> %wide.load222, %broadcast.splat224
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cd ; 2 uses
  %i.cj = fadd <2 x double> %i.cg, zeroinitializer
  %i.ck = fadd <2 x double> %i.ch, zeroinitializer
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cd ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load225 = load <2 x double>, ptr %i.cl, align 8, !tbaa !46, !alias.scope !918
  %wide.load226 = load <2 x double>, ptr %i.cm, align 8, !tbaa !46, !alias.scope !918
  %i.cn = fadd <2 x double> %i.cj, %wide.load225
  %i.co = fadd <2 x double> %i.ck, %wide.load226
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x double> %i.cn, ptr %i.ci, align 8, !tbaa !46, !alias.scope !919, !noalias !920
  store <2 x double> %i.co, ptr %i.cp, align 8, !tbaa !46, !alias.scope !919, !noalias !920
  %index.next227 = add nuw i64 %index220, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next227, %n.vec218
  br i1 %i.cq, label %middle.block228, label %vector.body219, !llvm.loop !888

middle.block228:                                  ; preds = %vector.body219
  %cmp.n229 = icmp eq i64 %i.bt, %n.vec218
  br i1 %cmp.n229, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader247

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader247: ; preds = %vector.memcheck205, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader, %middle.block228
  %.06.us.ph = phi i64 [ %1, %vector.memcheck205 ], [ %1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader ], [ %i.cb, %middle.block228 ] ; 7 uses
  %i.cr = sub i64 %2, %.06.us.ph
  %.neg299 = add i64 %.06.us.ph, 1
  %xtraiter287 = and i64 %i.cr, 1
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol.loopexit, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader247
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06.us.ph
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !46
  %i.cu = load double, ptr %i.t, align 8, !tbaa !46
  %i.cv = fmul double %i.ct, %i.cu
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us.ph
  %i.cx = fadd double %i.cv, 0.000000e+00
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us.ph
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !46
  %i.da = fadd double %i.cx, %i.cz
  store double %i.da, ptr %i.cw, align 8, !tbaa !46
  %i.db = add nsw i64 %.06.us.ph, 1
  br label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol.loopexit

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol.loopexit: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader247
  %.06.us.unr = phi i64 [ %.06.us.ph, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.preheader247 ], [ %i.db, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol ]
  %i.dc = icmp eq i64 %2, %.neg299
  br i1 %i.dc, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us
  %.06.us.us43 = phi i64 [ %i.fa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us ], [ %1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42.preheader ] ; 4 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06.us.us43 ; 6 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !46
  %i.df = load double, ptr %i.t, align 8, !tbaa !46
  %i.dg = fmul double %i.de, %i.df                ; 2 uses
  br i1 %i.bs, label %.lr.ph.i.i.i.i3.i.i.i.us.us.epil.preheader, label %.lr.ph.i.i.i.i3.i.i.i.us.us

.lr.ph.i.i.i.i3.i.i.i.us.us:                      ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42, %.lr.ph.i.i.i.i3.i.i.i.us.us
  %.010.i.i.i.i4.i.i.i.us.us = phi i64 [ %i.em, %.lr.ph.i.i.i.i3.i.i.i.us.us ], [ 1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42 ] ; 6 uses
  %.089.i.i.i.i5.i.i.i.us.us = phi double [ %i.el, %.lr.ph.i.i.i.i3.i.i.i.us.us ], [ %i.dg, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42 ]
  %niter295 = phi i64 [ %niter295.next.3, %.lr.ph.i.i.i.i3.i.i.i.us.us ], [ 0, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42 ]
  %i.dh = mul nsw i64 %.010.i.i.i.i4.i.i.i.us.us, %i.bp
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !46
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us.us
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !46
  %i.dm = fmul double %i.dj, %i.dl
  %i.dn = fadd double %.089.i.i.i.i5.i.i.i.us.us, %i.dm
  %i.do = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us.us, 1 ; 2 uses
  %i.dp = mul nsw i64 %i.do, %i.bp
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !46
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.do
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !46
  %i.du = fmul double %i.dr, %i.dt
  %i.dv = fadd double %i.dn, %i.du
  %i.dw = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us.us, 2 ; 2 uses
  %i.dx = mul nsw i64 %i.dw, %i.bp
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dx
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !46
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.dw
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !46
  %i.ec = fmul double %i.dz, %i.eb
  %i.ed = fadd double %i.dv, %i.ec
  %i.ee = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us.us, 3 ; 2 uses
  %i.ef = mul nsw i64 %i.ee, %i.bp
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !46
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ee
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !46
  %i.ek = fmul double %i.eh, %i.ej
  %i.el = fadd double %i.ed, %i.ek                ; 3 uses
  %i.em = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us.us, 4 ; 2 uses
  %niter295.next.3 = add i64 %niter295, 4         ; 2 uses
  %niter295.ncmp.3 = icmp eq i64 %niter295.next.3, %unroll_iter294
  br i1 %niter295.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us.unr-lcssa, label %.lr.ph.i.i.i.i3.i.i.i.us.us, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i3.i.i.i.us.us
  br i1 %lcmp.mod291.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us, label %.lr.ph.i.i.i.i3.i.i.i.us.us.epil.preheader

.lr.ph.i.i.i.i3.i.i.i.us.us.epil.preheader:       ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us.unr-lcssa, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42
  %.010.i.i.i.i4.i.i.i.us.us.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42 ], [ %i.em, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us.unr-lcssa ]
  %.089.i.i.i.i5.i.i.i.us.us.epil.init = phi double [ %i.dg, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42 ], [ %i.el, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod293)
  br label %.lr.ph.i.i.i.i3.i.i.i.us.us.epil

.lr.ph.i.i.i.i3.i.i.i.us.us.epil:                 ; preds = %.lr.ph.i.i.i.i3.i.i.i.us.us.epil, %.lr.ph.i.i.i.i3.i.i.i.us.us.epil.preheader
  %.010.i.i.i.i4.i.i.i.us.us.epil = phi i64 [ %i.eu, %.lr.ph.i.i.i.i3.i.i.i.us.us.epil ], [ %.010.i.i.i.i4.i.i.i.us.us.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us.us.epil.preheader ] ; 3 uses
  %.089.i.i.i.i5.i.i.i.us.us.epil = phi double [ %i.et, %.lr.ph.i.i.i.i3.i.i.i.us.us.epil ], [ %.089.i.i.i.i5.i.i.i.us.us.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us.us.epil.preheader ]
  %epil.iter290 = phi i64 [ %epil.iter290.next, %.lr.ph.i.i.i.i3.i.i.i.us.us.epil ], [ 0, %.lr.ph.i.i.i.i3.i.i.i.us.us.epil.preheader ]
  %i.en = mul nsw i64 %.010.i.i.i.i4.i.i.i.us.us.epil, %i.bp
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us.us.epil
  %i.er = load double, ptr %i.eq, align 8, !tbaa !46
  %i.es = fmul double %i.ep, %i.er
  %i.et = fadd double %.089.i.i.i.i5.i.i.i.us.us.epil, %i.es ; 2 uses
  %i.eu = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us.us.epil, 1
  %epil.iter290.next = add i64 %epil.iter290, 1   ; 2 uses
  %epil.iter290.cmp.not = icmp eq i64 %epil.iter290.next, %xtraiter289
  br i1 %epil.iter290.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us, label %.lr.ph.i.i.i.i3.i.i.i.us.us.epil, !llvm.loop !889

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us: ; preds = %.lr.ph.i.i.i.i3.i.i.i.us.us.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us.unr-lcssa
  %.lcssa = phi double [ %i.el, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us.unr-lcssa ], [ %i.et, %.lr.ph.i.i.i.i3.i.i.i.us.us.epil ]
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us.us43
  %i.ew = fadd double %.lcssa, 0.000000e+00
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us.us43
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !46
  %i.ez = fadd double %i.ew, %i.ey
  store double %i.ez, ptr %i.ev, align 8, !tbaa !46
  %i.fa = add nsw i64 %.06.us.us43, 1             ; 2 uses
  %exitcond62.not = icmp eq i64 %i.fa, %2
  br i1 %exitcond62.not, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us42, !llvm.loop !890

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol.loopexit, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us
  %.06.us = phi i64 [ %i.fu, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us ], [ %.06.us.unr, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06.us
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !46
  %i.fd = load double, ptr %i.t, align 8, !tbaa !46
  %i.fe = fmul double %i.fc, %i.fd
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us
  %i.fg = fadd double %i.fe, 0.000000e+00
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !46
  %i.fj = fadd double %i.fg, %i.fi
  store double %i.fj, ptr %i.ff, align 8, !tbaa !46
  %i.fk = add nsw i64 %.06.us, 1                  ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !46
  %i.fn = load double, ptr %i.t, align 8, !tbaa !46
  %i.fo = fmul double %i.fm, %i.fn
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fk
  %i.fq = fadd double %i.fo, 0.000000e+00
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.fk
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !46
  %i.ft = fadd double %i.fq, %i.fs
  store double %i.ft, ptr %i.fp, align 8, !tbaa !46
  %i.fu = add nsw i64 %.06.us, 2                  ; 2 uses
  %exitcond61.not.1 = icmp eq i64 %i.fu, %2
  br i1 %exitcond61.not.1, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us, !llvm.loop !891

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !35 ; 10 uses
  br i1 %i.w, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.preheader, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.preheader:   ; preds = %.lr.ph.split.split.us
  %i.fx = add nsw i64 %i.m, -1                    ; 2 uses
  %i.fy = add nsw i64 %i.m, -2
  %xtraiter280 = and i64 %i.fx, 3                 ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 3
  %unroll_iter285 = and i64 %i.fx, -4
  %lcmp.mod282.not = icmp eq i64 %xtraiter280, 0
  %lcmp.mod284 = icmp ne i64 %xtraiter280, 0
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader: ; preds = %.lr.ph.split.split.us
  %i.ga = sub i64 %2, %1                          ; 3 uses
  %min.iters.check158 = icmp ult i64 %i.ga, 12
  br i1 %min.iters.check158, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader251, label %vector.memcheck159

vector.memcheck159:                               ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader
  %i.gb = shl i64 %1, 3                           ; 3 uses
  %i.gc = getelementptr i8, ptr %i.c, i64 %i.gb   ; 3 uses
  %i.gd = shl i64 %2, 3                           ; 3 uses
  %i.ge = getelementptr i8, ptr %i.c, i64 %i.gd   ; 3 uses
  %i.gf = getelementptr i8, ptr %i.i, i64 %i.gb
  %i.gg = getelementptr i8, ptr %i.i, i64 %i.gd
  %5 = getelementptr i8, ptr %i.k, i64 8
  %6 = getelementptr i8, ptr %i.aa, i64 %i.gb
  %i.gh = getelementptr i8, ptr %i.aa, i64 %i.gd
  %bound0160.a = icmp ult ptr %i.gc, %i.gg
  %bound1161.a = icmp ult ptr %i.gf, %i.ge
  %found.conflict162.a = and i1 %bound0160.a, %bound1161.a
  %bound0163 = icmp ult ptr %i.gc, %5
  %bound1164 = icmp ult ptr %i.k, %i.ge
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx166 = or i1 %found.conflict162.a, %found.conflict165
  %bound0167 = icmp ult ptr %i.gc, %i.gh
  %bound1168 = icmp ult ptr %6, %i.ge
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx166, %found.conflict169
  br i1 %conflict.rdx170, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader251, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck159
  %n.vec172 = and i64 %i.ga, -4                   ; 3 uses
  %i.gi = add i64 %1, %n.vec172
  %i.gj = load double, ptr %i.k, align 8, !tbaa !46, !alias.scope !921
  %broadcast.splatinsert177 = insertelement <2 x double> poison, double %i.gj, i64 0
  %broadcast.splat178 = shufflevector <2 x double> %broadcast.splatinsert177, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next181, %vector.body173 ] ; 2 uses
  %i.gk = add i64 %1, %index174                   ; 3 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load175 = load <2 x double>, ptr %i.gl, align 8, !tbaa !46, !alias.scope !922
  %wide.load176 = load <2 x double>, ptr %i.gm, align 8, !tbaa !46, !alias.scope !922
  %i.gn = fmul <2 x double> %wide.load175, %broadcast.splat178
  %i.go = fmul <2 x double> %wide.load176, %broadcast.splat178
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.gk ; 2 uses
  %i.gq = fadd <2 x double> %i.gn, zeroinitializer
  %i.gr = fadd <2 x double> %i.go, zeroinitializer
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.gk ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load179 = load <2 x double>, ptr %i.gs, align 8, !tbaa !46, !alias.scope !923
  %wide.load180 = load <2 x double>, ptr %i.gt, align 8, !tbaa !46, !alias.scope !923
  %i.gu = fadd <2 x double> %i.gq, %wide.load179
  %i.gv = fadd <2 x double> %i.gr, %wide.load180
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <2 x double> %i.gu, ptr %i.gp, align 8, !tbaa !46, !alias.scope !924, !noalias !925
  store <2 x double> %i.gv, ptr %i.gw, align 8, !tbaa !46, !alias.scope !924, !noalias !925
  %index.next181 = add nuw i64 %index174, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next181, %n.vec172
  br i1 %i.gx, label %middle.block182, label %vector.body173, !llvm.loop !897

middle.block182:                                  ; preds = %vector.body173
  %cmp.n183 = icmp eq i64 %i.ga, %n.vec172
  br i1 %cmp.n183, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader251

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader251: ; preds = %vector.memcheck159, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader, %middle.block182
  %.06.us7.ph = phi i64 [ %1, %vector.memcheck159 ], [ %1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader ], [ %i.gi, %middle.block182 ] ; 7 uses
  %i.gy = sub i64 %2, %.06.us7.ph
  %.neg298 = add i64 %.06.us7.ph, 1
  %xtraiter278 = and i64 %i.gy, 1
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader251
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us7.ph
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !46
  %i.hb = load double, ptr %i.k, align 8, !tbaa !46
  %i.hc = fmul double %i.ha, %i.hb
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us7.ph
  %i.he = fadd double %i.hc, 0.000000e+00
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us7.ph
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !46
  %i.hh = fadd double %i.he, %i.hg
  store double %i.hh, ptr %i.hd, align 8, !tbaa !46
  %i.hi = add nsw i64 %.06.us7.ph, 1
  br label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader251
  %.06.us7.unr = phi i64 [ %.06.us7.ph, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader251 ], [ %i.hi, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol ]
  %i.hj = icmp eq i64 %2, %.neg298
  br i1 %i.hj, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8

.lr.ph.i.i.i.i.i.i.i.preheader.us.us:             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.preheader, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us
  %.06.us7.us = phi i64 [ %i.jh, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us ], [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.preheader ] ; 4 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us7.us ; 6 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !46
  %i.hm = load double, ptr %i.k, align 8, !tbaa !46
  %i.hn = fmul double %i.hl, %i.hm                ; 2 uses
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.us

.lr.ph.i.i.i.i.i.i.i.us.us:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us
  %.010.i.i.i.i.i.i.i.us.us = phi i64 [ %i.it, %.lr.ph.i.i.i.i.i.i.i.us.us ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ] ; 6 uses
  %.089.i.i.i.i.i.i.i.us.us = phi double [ %i.is, %.lr.ph.i.i.i.i.i.i.i.us.us ], [ %i.hn, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ]
  %niter286 = phi i64 [ %niter286.next.3, %.lr.ph.i.i.i.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ]
  %i.ho = mul nsw i64 %.010.i.i.i.i.i.i.i.us.us, %i.fw
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !46
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.010.i.i.i.i.i.i.i.us.us
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !46
  %i.ht = fmul double %i.hq, %i.hs
  %i.hu = fadd double %.089.i.i.i.i.i.i.i.us.us, %i.ht
  %i.hv = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us, 1 ; 2 uses
  %i.hw = mul nsw i64 %i.hv, %i.fw
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !46
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hv
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !46
  %i.ib = fmul double %i.hy, %i.ia
  %i.ic = fadd double %i.hu, %i.ib
  %i.id = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us, 2 ; 2 uses
  %i.ie = mul nsw i64 %i.id, %i.fw
  %i.if = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.ie
  %i.ig = load double, ptr %i.if, align 8, !tbaa !46
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.id
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !46
  %i.ij = fmul double %i.ig, %i.ii
  %i.ik = fadd double %i.ic, %i.ij
  %i.il = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us, 3 ; 2 uses
  %i.im = mul nsw i64 %i.il, %i.fw
  %i.in = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.im
  %i.io = load double, ptr %i.in, align 8, !tbaa !46
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.il
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !46
  %i.ir = fmul double %i.io, %i.iq
  %i.is = fadd double %i.ik, %i.ir                ; 3 uses
  %i.it = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us, 4 ; 2 uses
  %niter286.next.3 = add i64 %niter286, 4         ; 2 uses
  %niter286.ncmp.3 = icmp eq i64 %niter286.next.3, %unroll_iter285
  br i1 %niter286.ncmp.3, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.us, !llvm.loop !5

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us
  br i1 %lcmp.mod282.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader:        ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us
  %.010.i.i.i.i.i.i.i.us.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ], [ %i.it, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa ]
  %.089.i.i.i.i.i.i.i.us.us.epil.init = phi double [ %i.hn, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ], [ %i.is, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod284)
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.epil

.lr.ph.i.i.i.i.i.i.i.us.us.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.epil, %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader
  %.010.i.i.i.i.i.i.i.us.us.epil = phi i64 [ %i.jb, %.lr.ph.i.i.i.i.i.i.i.us.us.epil ], [ %.010.i.i.i.i.i.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i.i.us.us.epil = phi double [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.us.us.epil ], [ %.089.i.i.i.i.i.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader ]
  %epil.iter281 = phi i64 [ %epil.iter281.next, %.lr.ph.i.i.i.i.i.i.i.us.us.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader ]
  %i.iu = mul nsw i64 %.010.i.i.i.i.i.i.i.us.us.epil, %i.fw
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.iu
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !46
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.010.i.i.i.i.i.i.i.us.us.epil
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !46
  %i.iz = fmul double %i.iw, %i.iy
  %i.ja = fadd double %.089.i.i.i.i.i.i.i.us.us.epil, %i.iz ; 2 uses
  %i.jb = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us.epil, 1
  %epil.iter281.next = add i64 %epil.iter281, 1   ; 2 uses
  %epil.iter281.cmp.not = icmp eq i64 %epil.iter281.next, %xtraiter280
  br i1 %epil.iter281.cmp.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.us.us.epil, !llvm.loop !898

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.epil, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa
  %.lcssa250 = phi double [ %i.is, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa ], [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.us.us.epil ]
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us7.us
  %i.jd = fadd double %.lcssa250, 0.000000e+00
  %i.je = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us7.us
  %i.jf = load double, ptr %i.je, align 8, !tbaa !46
  %i.jg = fadd double %i.jd, %i.jf
  store double %i.jg, ptr %i.jc, align 8, !tbaa !46
  %i.jh = add nsw i64 %.06.us7.us, 1              ; 2 uses
  %exitcond60.not = icmp eq i64 %i.jh, %2
  br i1 %exitcond60.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us, !llvm.loop !890

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8
  %.06.us7 = phi i64 [ %i.kb, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8 ], [ %.06.us7.unr, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit ] ; 5 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us7
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !46
  %i.jk = load double, ptr %i.k, align 8, !tbaa !46
  %i.jl = fmul double %i.jj, %i.jk
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us7
  %i.jn = fadd double %i.jl, 0.000000e+00
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us7
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !46
  %i.jq = fadd double %i.jn, %i.jp
  store double %i.jq, ptr %i.jm, align 8, !tbaa !46
  %i.jr = add nsw i64 %.06.us7, 1                 ; 3 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jr
  %i.jt = load double, ptr %i.js, align 8, !tbaa !46
  %i.ju = load double, ptr %i.k, align 8, !tbaa !46
  %i.jv = fmul double %i.jt, %i.ju
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jr
  %i.jx = fadd double %i.jv, 0.000000e+00
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.jr
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !46
  %i.ka = fadd double %i.jx, %i.jz
  store double %i.ka, ptr %i.jw, align 8, !tbaa !46
  %i.kb = add nsw i64 %.06.us7, 2                 ; 2 uses
  %exitcond59.not.1 = icmp eq i64 %i.kb, %2
  br i1 %exitcond59.not.1, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8, !llvm.loop !899

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.kc = load i64, ptr %i.x, align 8, !tbaa !35  ; 10 uses
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.preheader.us13.preheader, label %.lr.ph.split.split.split

.lr.ph.i.i.i.i.i.i.i.preheader.us13.preheader:    ; preds = %.lr.ph.split.split
  %i.kd = add nsw i64 %i.m, -1                    ; 2 uses
  %i.ke = add nsw i64 %i.m, -2
  %i.kf = add i64 %i.v, -1                        ; 2 uses
  %i.kg = add i64 %i.v, -2
  %xtraiter264 = and i64 %i.kd, 3                 ; 3 uses
  %i.kh = icmp ult i64 %i.ke, 3
  %unroll_iter269 = and i64 %i.kd, -4
  %lcmp.mod266.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod268 = icmp ne i64 %xtraiter264, 0
  %xtraiter271 = and i64 %i.kf, 3                 ; 3 uses
  %i.ki = icmp ult i64 %i.kg, 3
  %unroll_iter276 = and i64 %i.kf, -4
  %lcmp.mod273.not = icmp eq i64 %xtraiter271, 0
  %lcmp.mod275 = icmp ne i64 %xtraiter271, 0
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us13

.lr.ph.i.i.i.i.i.i.i.preheader.us13:              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us13.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29
  %.06.us12 = phi i64 [ %i.ny, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29 ], [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader.us13.preheader ] ; 5 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us12 ; 6 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !46
  %i.kl = load double, ptr %i.k, align 8, !tbaa !46
  %i.km = fmul double %i.kk, %i.kl                ; 2 uses
  br i1 %i.kh, label %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us14

.lr.ph.i.i.i.i.i.i.i.us14:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us13, %.lr.ph.i.i.i.i.i.i.i.us14
  %.010.i.i.i.i.i.i.i.us15 = phi i64 [ %i.ls, %.lr.ph.i.i.i.i.i.i.i.us14 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us13 ] ; 6 uses
  %.089.i.i.i.i.i.i.i.us16 = phi double [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.us14 ], [ %i.km, %.lr.ph.i.i.i.i.i.i.i.preheader.us13 ]
  %niter270 = phi i64 [ %niter270.next.3, %.lr.ph.i.i.i.i.i.i.i.us14 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us13 ]
  %i.kn = mul nsw i64 %.010.i.i.i.i.i.i.i.us15, %i.fw
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kn
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !46
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.010.i.i.i.i.i.i.i.us15
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !46
  %i.ks = fmul double %i.kp, %i.kr
  %i.kt = fadd double %.089.i.i.i.i.i.i.i.us16, %i.ks
  %i.ku = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us15, 1 ; 2 uses
  %i.kv = mul nsw i64 %i.ku, %i.fw
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kv
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !46
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ku
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !46
  %i.la = fmul double %i.kx, %i.kz
  %i.lb = fadd double %i.kt, %i.la
  %i.lc = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us15, 2 ; 2 uses
  %i.ld = mul nsw i64 %i.lc, %i.fw
  %i.le = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.ld
  %i.lf = load double, ptr %i.le, align 8, !tbaa !46
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.lc
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !46
  %i.li = fmul double %i.lf, %i.lh
  %i.lj = fadd double %i.lb, %i.li
  %i.lk = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us15, 3 ; 2 uses
  %i.ll = mul nsw i64 %i.lk, %i.fw
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !46
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.lk
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !46
  %i.lq = fmul double %i.ln, %i.lp
  %i.lr = fadd double %i.lj, %i.lq                ; 3 uses
  %i.ls = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us15, 4 ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us14, !llvm.loop !5

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us14
  br i1 %lcmp.mod266.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18, label %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader:         ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us13
  %.010.i.i.i.i.i.i.i.us15.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us13 ], [ %i.ls, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa ]
  %.089.i.i.i.i.i.i.i.us16.epil.init = phi double [ %i.km, %.lr.ph.i.i.i.i.i.i.i.preheader.us13 ], [ %i.lr, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod268)
  br label %.lr.ph.i.i.i.i.i.i.i.us14.epil

.lr.ph.i.i.i.i.i.i.i.us14.epil:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.us14.epil, %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader
  %.010.i.i.i.i.i.i.i.us15.epil = phi i64 [ %i.ma, %.lr.ph.i.i.i.i.i.i.i.us14.epil ], [ %.010.i.i.i.i.i.i.i.us15.epil.init, %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i.i.us16.epil = phi double [ %i.lz, %.lr.ph.i.i.i.i.i.i.i.us14.epil ], [ %.089.i.i.i.i.i.i.i.us16.epil.init, %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader ]
  %epil.iter265 = phi i64 [ %epil.iter265.next, %.lr.ph.i.i.i.i.i.i.i.us14.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader ]
  %i.lt = mul nsw i64 %.010.i.i.i.i.i.i.i.us15.epil, %i.fw
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.lt
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !46
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.010.i.i.i.i.i.i.i.us15.epil
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !46
  %i.ly = fmul double %i.lv, %i.lx
  %i.lz = fadd double %.089.i.i.i.i.i.i.i.us16.epil, %i.ly ; 2 uses
  %i.ma = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us15.epil, 1
  %epil.iter265.next = add i64 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i64 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18, label %.lr.ph.i.i.i.i.i.i.i.us14.epil, !llvm.loop !900

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18: ; preds = %.lr.ph.i.i.i.i.i.i.i.us14.epil, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa
  %.lcssa254 = phi double [ %i.lr, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa ], [ %i.lz, %.lr.ph.i.i.i.i.i.i.i.us14.epil ]
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06.us12 ; 6 uses
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !46
  %i.md = load double, ptr %i.t, align 8, !tbaa !46
  %i.me = fmul double %i.mc, %i.md                ; 3 uses
  br i1 %i.y, label %.lr.ph.i.i.i.i3.i.i.i.us23.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29

.lr.ph.i.i.i.i3.i.i.i.us23.preheader:             ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18
  br i1 %i.ki, label %.lr.ph.i.i.i.i3.i.i.i.us23.epil.preheader, label %.lr.ph.i.i.i.i3.i.i.i.us23

.lr.ph.i.i.i.i3.i.i.i.us23:                       ; preds = %.lr.ph.i.i.i.i3.i.i.i.us23.preheader, %.lr.ph.i.i.i.i3.i.i.i.us23
  %.010.i.i.i.i4.i.i.i.us24 = phi i64 [ %i.nk, %.lr.ph.i.i.i.i3.i.i.i.us23 ], [ 1, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ] ; 6 uses
  %.089.i.i.i.i5.i.i.i.us25 = phi double [ %i.nj, %.lr.ph.i.i.i.i3.i.i.i.us23 ], [ %i.me, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ]
  %niter277 = phi i64 [ %niter277.next.3, %.lr.ph.i.i.i.i3.i.i.i.us23 ], [ 0, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ]
  %i.mf = mul nsw i64 %.010.i.i.i.i4.i.i.i.us24, %i.kc
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !46
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us24
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !46
  %i.mk = fmul double %i.mh, %i.mj
  %i.ml = fadd double %.089.i.i.i.i5.i.i.i.us25, %i.mk
  %i.mm = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us24, 1 ; 2 uses
  %i.mn = mul nsw i64 %i.mm, %i.kc
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mn
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !46
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.mm
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !46
  %i.ms = fmul double %i.mp, %i.mr
  %i.mt = fadd double %i.ml, %i.ms
  %i.mu = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us24, 2 ; 2 uses
  %i.mv = mul nsw i64 %i.mu, %i.kc
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mv
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !46
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.mu
  %i.mz = load double, ptr %i.my, align 8, !tbaa !46
  %i.na = fmul double %i.mx, %i.mz
  %i.nb = fadd double %i.mt, %i.na
  %i.nc = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us24, 3 ; 2 uses
  %i.nd = mul nsw i64 %i.nc, %i.kc
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.nd
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !46
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.nc
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !46
  %i.ni = fmul double %i.nf, %i.nh
  %i.nj = fadd double %i.nb, %i.ni                ; 3 uses
  %i.nk = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us24, 4 ; 2 uses
  %niter277.next.3 = add i64 %niter277, 4         ; 2 uses
  %niter277.ncmp.3 = icmp eq i64 %niter277.next.3, %unroll_iter276
  br i1 %niter277.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i3.i.i.i.us23, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i3.i.i.i.us23
  br i1 %lcmp.mod273.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29, label %.lr.ph.i.i.i.i3.i.i.i.us23.epil.preheader

.lr.ph.i.i.i.i3.i.i.i.us23.epil.preheader:        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29.loopexit.unr-lcssa, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader
  %.010.i.i.i.i4.i.i.i.us24.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ], [ %i.nk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29.loopexit.unr-lcssa ]
  %.089.i.i.i.i5.i.i.i.us25.epil.init = phi double [ %i.me, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ], [ %i.nj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod275)
  br label %.lr.ph.i.i.i.i3.i.i.i.us23.epil

.lr.ph.i.i.i.i3.i.i.i.us23.epil:                  ; preds = %.lr.ph.i.i.i.i3.i.i.i.us23.epil, %.lr.ph.i.i.i.i3.i.i.i.us23.epil.preheader
  %.010.i.i.i.i4.i.i.i.us24.epil = phi i64 [ %i.ns, %.lr.ph.i.i.i.i3.i.i.i.us23.epil ], [ %.010.i.i.i.i4.i.i.i.us24.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us23.epil.preheader ] ; 3 uses
  %.089.i.i.i.i5.i.i.i.us25.epil = phi double [ %i.nr, %.lr.ph.i.i.i.i3.i.i.i.us23.epil ], [ %.089.i.i.i.i5.i.i.i.us25.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us23.epil.preheader ]
  %epil.iter272 = phi i64 [ %epil.iter272.next, %.lr.ph.i.i.i.i3.i.i.i.us23.epil ], [ 0, %.lr.ph.i.i.i.i3.i.i.i.us23.epil.preheader ]
  %i.nl = mul nsw i64 %.010.i.i.i.i4.i.i.i.us24.epil, %i.kc
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.nl
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !46
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us24.epil
  %i.np = load double, ptr %i.no, align 8, !tbaa !46
  %i.nq = fmul double %i.nn, %i.np
  %i.nr = fadd double %.089.i.i.i.i5.i.i.i.us25.epil, %i.nq ; 2 uses
  %i.ns = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us24.epil, 1
  %epil.iter272.next = add i64 %epil.iter272, 1   ; 2 uses
  %epil.iter272.cmp.not = icmp eq i64 %epil.iter272.next, %xtraiter271
  br i1 %epil.iter272.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29, label %.lr.ph.i.i.i.i3.i.i.i.us23.epil, !llvm.loop !901

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29.loopexit.unr-lcssa, %.lr.ph.i.i.i.i3.i.i.i.us23.epil, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18
  %.0.i.i2.i.i.i.us30 = phi double [ %i.me, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18 ], [ %i.nj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29.loopexit.unr-lcssa ], [ %i.nr, %.lr.ph.i.i.i.i3.i.i.i.us23.epil ]
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us12
  %i.nu = fadd double %.lcssa254, %.0.i.i2.i.i.i.us30
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us12
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !46
  %i.nx = fadd double %i.nu, %i.nw
  store double %i.nx, ptr %i.nt, align 8, !tbaa !46
  %i.ny = add nsw i64 %.06.us12, 1                ; 2 uses
  %exitcond58.not = icmp eq i64 %i.ny, %2
  br i1 %exitcond58.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.i.preheader.us13, !llvm.loop !890

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %i.y, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31.preheader, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31.preheader: ; preds = %.lr.ph.split.split.split
  %i.nz = add nsw i64 %i.v, -1                    ; 2 uses
  %i.oa = add nsw i64 %i.v, -2
  %xtraiter260 = and i64 %i.nz, 3                 ; 3 uses
  %i.ob = icmp ult i64 %i.oa, 3
  %unroll_iter = and i64 %i.nz, -4
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  %lcmp.mod263 = icmp ne i64 %xtraiter260, 0
  br label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader: ; preds = %.lr.ph.split.split.split
  %i.oc = sub i64 %2, %1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.oc, 14
  br i1 %min.iters.check, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader258, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader
  %i.od = shl i64 %1, 3                           ; 4 uses
  %i.oe = getelementptr i8, ptr %i.c, i64 %i.od   ; 5 uses
  %i.of = shl i64 %2, 3                           ; 4 uses
  %7 = getelementptr i8, ptr %i.c, i64 %i.of      ; 5 uses
  %8 = getelementptr i8, ptr %i.i, i64 %i.od
  %i.og = getelementptr i8, ptr %i.i, i64 %i.of
  %i.oh = getelementptr i8, ptr %i.k, i64 8
  %i.oi = getelementptr i8, ptr %i.r, i64 %i.od
  %9 = getelementptr i8, ptr %i.r, i64 %i.of
  %10 = getelementptr i8, ptr %i.t, i64 8
  %11 = getelementptr i8, ptr %i.aa, i64 %i.od
  %i.oj = getelementptr i8, ptr %i.aa, i64 %i.of
  %bound0.a = icmp ult ptr %i.oe, %i.og
  %bound1.a = icmp ult ptr %8, %7
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0117 = icmp ult ptr %i.oe, %i.oh
  %bound1118 = icmp ult ptr %i.k, %7
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict119
  %bound0120 = icmp ult ptr %i.oe, %9
  %bound1121 = icmp ult ptr %i.oi, %7
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx, %found.conflict122
  %bound0124 = icmp ult ptr %i.oe, %10
  %bound1125 = icmp ult ptr %i.t, %7
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  %bound0128 = icmp ult ptr %i.oe, %i.oj
  %bound1129 = icmp ult ptr %11, %7
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  br i1 %conflict.rdx131, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.oc, -4                      ; 3 uses
  %i.ok = add i64 %1, %n.vec
  %i.ol = load double, ptr %i.k, align 8, !tbaa !46, !alias.scope !926
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ol, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.om = load double, ptr %i.t, align 8, !tbaa !46, !alias.scope !927
  %broadcast.splatinsert135 = insertelement <2 x double> poison, double %i.om, i64 0
  %broadcast.splat136 = shufflevector <2 x double> %broadcast.splatinsert135, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.on = add i64 %1, %index                      ; 4 uses
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.on ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %wide.load = load <2 x double>, ptr %i.oo, align 8, !tbaa !46, !alias.scope !928
  %wide.load132 = load <2 x double>, ptr %i.op, align 8, !tbaa !46, !alias.scope !928
  %i.oq = fmul <2 x double> %wide.load, %broadcast.splat
  %i.or = fmul <2 x double> %wide.load132, %broadcast.splat
  %i.os = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.on ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load133 = load <2 x double>, ptr %i.os, align 8, !tbaa !46, !alias.scope !929
  %wide.load134 = load <2 x double>, ptr %i.ot, align 8, !tbaa !46, !alias.scope !929
  %i.ou = fmul <2 x double> %wide.load133, %broadcast.splat136
  %i.ov = fmul <2 x double> %wide.load134, %broadcast.splat136
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.on ; 2 uses
  %i.ox = fadd <2 x double> %i.oq, %i.ou
  %i.oy = fadd <2 x double> %i.or, %i.ov
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.on ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %wide.load137 = load <2 x double>, ptr %i.oz, align 8, !tbaa !46, !alias.scope !930
  %wide.load138 = load <2 x double>, ptr %i.pa, align 8, !tbaa !46, !alias.scope !930
  %i.pb = fadd <2 x double> %i.ox, %wide.load137
  %i.pc = fadd <2 x double> %i.oy, %wide.load138
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store <2 x double> %i.pb, ptr %i.ow, align 8, !tbaa !46, !alias.scope !931, !noalias !932
  store <2 x double> %i.pc, ptr %i.pd, align 8, !tbaa !46, !alias.scope !931, !noalias !932
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pe = icmp eq i64 %index.next, %n.vec
  br i1 %i.pe, label %middle.block, label %vector.body, !llvm.loop !909

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader258

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader258: ; preds = %vector.memcheck, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader, %middle.block
  %.06.ph = phi i64 [ %1, %vector.memcheck ], [ %1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader ], [ %i.ok, %middle.block ] ; 8 uses
  %i.pf = sub i64 %2, %.06.ph
  %.neg = add i64 %.06.ph, 1
  %xtraiter = and i64 %i.pf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol.loopexit, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader258
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.ph
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !46
  %i.pi = load double, ptr %i.k, align 8, !tbaa !46
  %i.pj = fmul double %i.ph, %i.pi
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06.ph
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !46
  %i.pm = load double, ptr %i.t, align 8, !tbaa !46
  %i.pn = fmul double %i.pl, %i.pm
  %i.po = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.ph
  %i.pp = fadd double %i.pj, %i.pn
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.ph
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !46
  %i.ps = fadd double %i.pp, %i.pr
  store double %i.ps, ptr %i.po, align 8, !tbaa !46
  %i.pt = add nsw i64 %.06.ph, 1
  br label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol.loopexit

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol.loopexit: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader258
  %.06.unr = phi i64 [ %.06.ph, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader258 ], [ %i.pt, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol ]
  %i.pu = icmp eq i64 %2, %.neg
  br i1 %i.pu, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38
  %.06.us32 = phi i64 [ %i.rw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38 ], [ %1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31.preheader ] ; 5 uses
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us32
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !46
  %i.px = load double, ptr %i.k, align 8, !tbaa !46
  %i.py = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06.us32 ; 6 uses
  %i.pz = load double, ptr %i.py, align 8, !tbaa !46
  %i.qa = load double, ptr %i.t, align 8, !tbaa !46
  %i.qb = fmul double %i.pz, %i.qa                ; 2 uses
  br i1 %i.ob, label %.lr.ph.i.i.i.i3.i.i.i.us34.epil.preheader, label %.lr.ph.i.i.i.i3.i.i.i.us34

.lr.ph.i.i.i.i3.i.i.i.us34:                       ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31, %.lr.ph.i.i.i.i3.i.i.i.us34
  %.010.i.i.i.i4.i.i.i.us35 = phi i64 [ %i.rh, %.lr.ph.i.i.i.i3.i.i.i.us34 ], [ 1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ] ; 6 uses
  %.089.i.i.i.i5.i.i.i.us36 = phi double [ %i.rg, %.lr.ph.i.i.i.i3.i.i.i.us34 ], [ %i.qb, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i3.i.i.i.us34 ], [ 0, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ]
  %i.qc = mul nsw i64 %.010.i.i.i.i4.i.i.i.us35, %i.kc
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.qc
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !46
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us35
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !46
  %i.qh = fmul double %i.qe, %i.qg
  %i.qi = fadd double %.089.i.i.i.i5.i.i.i.us36, %i.qh
  %i.qj = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us35, 1 ; 2 uses
  %i.qk = mul nsw i64 %i.qj, %i.kc
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.qk
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !46
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.qj
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !46
  %i.qp = fmul double %i.qm, %i.qo
  %i.qq = fadd double %i.qi, %i.qp
  %i.qr = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us35, 2 ; 2 uses
  %i.qs = mul nsw i64 %i.qr, %i.kc
  %i.qt = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.qs
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !46
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.qr
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !46
  %i.qx = fmul double %i.qu, %i.qw
  %i.qy = fadd double %i.qq, %i.qx
  %i.qz = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us35, 3 ; 2 uses
  %i.ra = mul nsw i64 %i.qz, %i.kc
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.ra
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !46
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.qz
  %i.re = load double, ptr %i.rd, align 8, !tbaa !46
  %i.rf = fmul double %i.rc, %i.re
  %i.rg = fadd double %i.qy, %i.rf                ; 3 uses
  %i.rh = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us35, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38.unr-lcssa, label %.lr.ph.i.i.i.i3.i.i.i.us34, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38.unr-lcssa: ; preds = %.lr.ph.i.i.i.i3.i.i.i.us34
  br i1 %lcmp.mod261.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38, label %.lr.ph.i.i.i.i3.i.i.i.us34.epil.preheader

.lr.ph.i.i.i.i3.i.i.i.us34.epil.preheader:        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38.unr-lcssa, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31
  %.010.i.i.i.i4.i.i.i.us35.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ], [ %i.rh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38.unr-lcssa ]
  %.089.i.i.i.i5.i.i.i.us36.epil.init = phi double [ %i.qb, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ], [ %i.rg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod263)
  br label %.lr.ph.i.i.i.i3.i.i.i.us34.epil

.lr.ph.i.i.i.i3.i.i.i.us34.epil:                  ; preds = %.lr.ph.i.i.i.i3.i.i.i.us34.epil, %.lr.ph.i.i.i.i3.i.i.i.us34.epil.preheader
  %.010.i.i.i.i4.i.i.i.us35.epil = phi i64 [ %i.rp, %.lr.ph.i.i.i.i3.i.i.i.us34.epil ], [ %.010.i.i.i.i4.i.i.i.us35.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us34.epil.preheader ] ; 3 uses
  %.089.i.i.i.i5.i.i.i.us36.epil = phi double [ %i.ro, %.lr.ph.i.i.i.i3.i.i.i.us34.epil ], [ %.089.i.i.i.i5.i.i.i.us36.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us34.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i3.i.i.i.us34.epil ], [ 0, %.lr.ph.i.i.i.i3.i.i.i.us34.epil.preheader ]
  %i.ri = mul nsw i64 %.010.i.i.i.i4.i.i.i.us35.epil, %i.kc
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.ri
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !46
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us35.epil
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !46
  %i.rn = fmul double %i.rk, %i.rm
  %i.ro = fadd double %.089.i.i.i.i5.i.i.i.us36.epil, %i.rn ; 2 uses
  %i.rp = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us35.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter260
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38, label %.lr.ph.i.i.i.i3.i.i.i.us34.epil, !llvm.loop !910

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38: ; preds = %.lr.ph.i.i.i.i3.i.i.i.us34.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38.unr-lcssa
  %.lcssa257 = phi double [ %i.rg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38.unr-lcssa ], [ %i.ro, %.lr.ph.i.i.i.i3.i.i.i.us34.epil ]
  %i.rq = fmul double %i.pw, %i.px
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us32
  %i.rs = fadd double %i.rq, %.lcssa257
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us32
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !46
  %i.rv = fadd double %i.rs, %i.ru
  store double %i.rv, ptr %i.rr, align 8, !tbaa !46
  %i.rw = add nsw i64 %.06.us32, 1                ; 2 uses
  %exitcond57.not = icmp eq i64 %i.rw, %2
  br i1 %exitcond57.not, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31, !llvm.loop !890

._crit_edge:                                      ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol.loopexit, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us38, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us29, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.prol.loopexit, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.us, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us.prol.loopexit, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us.us, %middle.block, %middle.block182, %middle.block228, %middle.block242, %bb.a
  ret void

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol.loopexit, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i
  %.06 = phi i64 [ %i.sy, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i ], [ %.06.unr, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !46
  %i.rz = load double, ptr %i.k, align 8, !tbaa !46
  %i.sa = fmul double %i.ry, %i.rz
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !46
  %i.sd = load double, ptr %i.t, align 8, !tbaa !46
  %i.se = fmul double %i.sc, %i.sd
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06
  %i.sg = fadd double %i.sa, %i.se
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06
  %i.si = load double, ptr %i.sh, align 8, !tbaa !46
  %i.sj = fadd double %i.sg, %i.si
  store double %i.sj, ptr %i.sf, align 8, !tbaa !46
  %i.sk = add nsw i64 %.06, 1                     ; 4 uses
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.sk
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !46
  %i.sn = load double, ptr %i.k, align 8, !tbaa !46
  %i.so = fmul double %i.sm, %i.sn
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.sk
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !46
  %i.sr = load double, ptr %i.t, align 8, !tbaa !46
  %i.ss = fmul double %i.sq, %i.sr
  %i.st = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.sk
  %i.su = fadd double %i.so, %i.ss
end_hunk_2
