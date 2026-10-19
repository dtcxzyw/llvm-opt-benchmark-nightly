Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/is_symmetric?download=true
inline.NumInlined: 841
inline.NumDeleted: 432
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3igl12is_symmetricIdiEEbRKN5Eigen12SparseMatrixIT_Li0EiEET0_:bb.a
  br i1 %prol.iter78.cmp.not, label %.lr.ph82.i.i.i.i26.prol.loopexit, label %.lr.ph82.i.i.i.i26.prol, !llvm.loop !89

.lr.ph82.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph82.i.i.i.i26.prol, %.lr.ph82.i.i.i.i26.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph82.i.i.i.i26.preheader ], [ %i.da, %.lr.ph82.i.i.i.i26.prol ]
  %.05280.i.i.i.i27.unr = phi i64 [ %i.ab, %.lr.ph82.i.i.i.i26.preheader ], [ %i.db, %.lr.ph82.i.i.i.i26.prol ]
  %.179.i.i.i.i28.unr = phi double [ %i.cv, %.lr.ph82.i.i.i.i26.preheader ], [ %i.da, %.lr.ph82.i.i.i.i26.prol ]
  %i.dc = sub i64 %i.ab, %i.x
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8minCoeffEv.exit, label %.lr.ph82.i.i.i.i26

.lr.ph82.i.i.i.i26:                               ; preds = %.lr.ph82.i.i.i.i26.prol.loopexit, %.lr.ph82.i.i.i.i26
  %.05280.i.i.i.i27 = phi i64 [ %i.dx, %.lr.ph82.i.i.i.i26 ], [ %.05280.i.i.i.i27.unr, %.lr.ph82.i.i.i.i26.prol.loopexit ] ; 5 uses
  %.179.i.i.i.i28 = phi double [ %i.dw, %.lr.ph82.i.i.i.i26 ], [ %.179.i.i.i.i28.unr, %.lr.ph82.i.i.i.i26.prol.loopexit ] ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.05280.i.i.i.i27
  %i.df = load double, ptr %i.de, align 8, !tbaa !52 ; 2 uses
  %i.dg = fcmp olt double %i.df, %.179.i.i.i.i28
  %i.dh = select i1 %i.dg, double %i.df, double %.179.i.i.i.i28 ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %.pre, i64 %.05280.i.i.i.i27
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !52 ; 2 uses
  %i.dl = fcmp olt double %i.dk, %i.dh
  %i.dm = select i1 %i.dl, double %i.dk, double %i.dh ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %.pre, i64 %.05280.i.i.i.i27
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %i.dp = load double, ptr %i.do, align 8, !tbaa !52 ; 2 uses
  %i.dq = fcmp olt double %i.dp, %i.dm
  %i.dr = select i1 %i.dq, double %i.dp, double %i.dm ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %.pre, i64 %.05280.i.i.i.i27
  %i.dt = getelementptr i8, ptr %i.ds, i64 24
  %i.du = load double, ptr %i.dt, align 8, !tbaa !52 ; 2 uses
  %i.dv = fcmp olt double %i.du, %i.dr
  %i.dw = select i1 %i.dv, double %i.du, double %i.dr ; 2 uses
  %i.dx = add nsw i64 %.05280.i.i.i.i27, 4        ; 2 uses
  %exitcond.not.i.i.i.i29.3 = icmp eq i64 %i.dx, %i.x
  br i1 %exitcond.not.i.i.i.i29.3, label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8minCoeffEv.exit, label %.lr.ph82.i.i.i.i26, !llvm.loop !3

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8minCoeffEv.exit: ; preds = %.lr.ph82.i.i.i.i26.prol.loopexit, %.lr.ph82.i.i.i.i26, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit.thread, %bb.q
  %.3.i.i.i.i25 = phi double [ %i.cv, %bb.q ], [ %i.cb, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit.thread ], [ %.lcssa.unr, %.lr.ph82.i.i.i.i26.prol.loopexit ], [ %i.dw, %.lr.ph82.i.i.i.i26 ]
  %i.dy = sub nsw i32 0, %1
  %i.dz = sitofp i32 %i.dy to double
  %i.ea = fcmp ogt double %.3.i.i.i.i25, %i.dz
  br label %bb.r

bb.r:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit.thread, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8minCoeffEv.exit, %bb.g
  %.014 = phi i1 [ true, %bb.g ], [ false, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit ], [ %i.ea, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8minCoeffEv.exit ], [ false, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit.thread ]
  call void @free(ptr noundef %.pre) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.eb = load ptr, ptr %7, align 8, !tbaa !48
  call void @free(ptr noundef %i.eb) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ec = load ptr, ptr %6, align 8, !tbaa !48
  call void @free(ptr noundef %i.ec) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !36
  call void @free(ptr noundef %i.ee) #18
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !35
  call void @free(ptr noundef %i.eg) #18
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !42 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.ei) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.el) #19
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !36
  call void @free(ptr noundef %i.eo) #18
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !35
  call void @free(ptr noundef %i.eq) #18
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !42 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.es) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !43 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit39, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ev) #19
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit39

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit39:       ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.z

bb.y:                                             ; preds = %bb.h, %.body
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.n, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %common.resume

bb.z:                                             ; preds = %bb.b, %bb.a, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit39
  %.115 = phi i1 [ %.014, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit39 ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.115
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS_9TransposeIS7_EEEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !nonnull !56, !align !57 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !56, !align !57 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.i, 0        ; 2 uses
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init1INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9TransposeIS9_EEEESD_EEvRKNS_9DenseBaseIT0_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i.i.i.i.i.i.i.i = or i1 %.not8.i.i.i.i.i.i, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv i64 9223372036854775807, %i.i
  %i.o = icmp sgt i64 %i.k, %i.n
  br i1 %i.o, label %.noexc.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.q = mul nsw i64 %i.k, %i.i
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.k, i64 noundef %i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !19 ; 5 uses
  %.pre.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !18 ; 12 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !21    ; 4 uses
  %i.r = icmp sgt i64 %.pr.i.i.i.i.i, 0
  %i.s = icmp sgt i64 %.pre.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init1INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9TransposeIS9_EEEESD_EEvRKNS_9DenseBaseIT0_EE.exit

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.t = mul i64 %.pr.i.i.i.i.i, %.pre.i.i.i.i.i
  %i.u = shl i64 %i.t, 3
  %scevgep = getelementptr i8, ptr %.pre, i64 %i.u ; 2 uses
  %i.v = add nuw i64 %.pr.i.i.i.i.i, %.pre.i.i.i.i.i
  %i.w = shl i64 %i.v, 3
  %i.x = getelementptr i8, ptr %i.g, i64 %i.w
  %scevgep9 = getelementptr i8, ptr %i.x, i64 -8
  %i.y = add nuw i64 %.pr.i.i.i.i.i, 2305843009213693951
  %i.z = mul i64 %i.d, %i.y
  %i.aa = add i64 %i.z, %.pre.i.i.i.i.i
  %i.ab = shl i64 %i.aa, 3
  %scevgep10 = getelementptr i8, ptr %i.b, i64 %i.ab
  %min.iters.check = icmp ugt i64 %.pre.i.i.i.i.i, 9
  %ident.check.not = icmp eq i64 %i.i, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %.pre, %scevgep9
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound011 = icmp ult ptr %.pre, %scevgep10
  %bound112.a = icmp ult ptr %i.b, %scevgep
  %found.conflict13 = and i1 %bound011, %bound112.a
  %2 = or i64 %i.d, %.pre.i.i.i.i.i
  %i.ac = and i64 %2, 1152921504606846976
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %found.conflict13, %i.ad
  %conflict.rdx = or i1 %found.conflict, %i.ae
  %n.vec = and i64 %.pre.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %cmp.n = icmp eq i64 %.pre.i.i.i.i.i, %n.vec
  %xtraiter = and i64 %.pre.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i
  %.0812.i.i.i.i.i.i = phi i64 [ %i.ay, %._crit_edge.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.af = mul nuw nsw i64 %.0812.i.i.i.i.i.i, %.pre.i.i.i.i.i
  %invariant.gep.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.pre, i64 %i.af ; 4 uses
  %i.ag = mul nsw i64 %.0812.i.i.i.i.i.i, %i.d
  %invariant.gep10.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.b, i64 %i.ag ; 4 uses
  %i.ah = getelementptr [8 x i8], ptr %i.g, i64 %.0812.i.i.i.i.i.i ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !52, !alias.scope !102
  %wide.load16.a = load <2 x double>, ptr %i.al, align 8, !tbaa !52, !alias.scope !102
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  %wide.load17.a = load <2 x double>, ptr %i.aj, align 8, !tbaa !52, !alias.scope !103
  %wide.load18 = load <2 x double>, ptr %i.am, align 8, !tbaa !52, !alias.scope !103
  %i.an = fsub <2 x double> %wide.load17.a, %wide.load
  %i.ao = fsub <2 x double> %wide.load18, %wide.load16.a
  %i.ap = getelementptr i8, ptr %i.ai, i64 16
  store <2 x double> %i.an, ptr %i.ai, align 8, !tbaa !52, !alias.scope !104, !noalias !105
  store <2 x double> %i.ao, ptr %i.ap, align 8, !tbaa !52, !alias.scope !104, !noalias !105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i.i.i ] ; 6 uses
  %.neg = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.ph
  %gep11.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.ph
  %i.ar = mul nsw i64 %.09.i.i.i.i.i.i.ph, %i.i
  %i.as = getelementptr [8 x i8], ptr %i.ah, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !52
  %i.au = load double, ptr %gep11.i.i.i.i.i.i.prol, align 8, !tbaa !52
  %i.av = fsub double %i.au, %i.at
  store double %i.av, ptr %gep.i.i.i.i.i.i.prol, align 8, !tbaa !52
  %i.aw = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %i.ax = icmp eq i64 %.pre.i.i.i.i.i, %.neg
  br i1 %i.ax, label %._crit_edge.i.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i.i:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ay = add nuw nsw i64 %.0812.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond14.not.i.i.i.i.i.i = icmp eq i64 %i.ay, %.pr.i.i.i.i.i
  br i1 %exitcond14.not.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init1INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9TransposeIS9_EEEESD_EEvRKNS_9DenseBaseIT0_EE.exit, label %.preheader.i.i.i.i.i.i, !llvm.loop !96

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i = phi i64 [ %i.bk, %scalar.ph ], [ %.09.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i
  %gep11.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i
  %i.az = mul nsw i64 %.09.i.i.i.i.i.i, %i.i
  %i.ba = getelementptr [8 x i8], ptr %i.ah, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !52
  %i.bc = load double, ptr %gep11.i.i.i.i.i.i, align 8, !tbaa !52
  %i.bd = fsub double %i.bc, %i.bb
  store double %i.bd, ptr %gep.i.i.i.i.i.i, align 8, !tbaa !52
  %i.be = add nuw nsw i64 %.09.i.i.i.i.i.i, 1     ; 3 uses
  %gep.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %i.be
  %gep11.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i.i, i64 %i.be
  %i.bf = mul nsw i64 %i.be, %i.i
  %i.bg = getelementptr [8 x i8], ptr %i.ah, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !52
  %i.bi = load double, ptr %gep11.i.i.i.i.i.i.1, align 8, !tbaa !52
  %i.bj = fsub double %i.bi, %i.bh
  store double %i.bj, ptr %gep.i.i.i.i.i.i.1, align 8, !tbaa !52
  %i.bk = add nuw nsw i64 %.09.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.bk, %.pre.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !97

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init1INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9TransposeIS9_EEEESD_EEvRKNS_9DenseBaseIT0_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.a, %bb.d
  ret void

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.bm) #18
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.f) #18
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #22 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !18
  store i64 %3, ptr %i.c, align 8, !tbaa !19
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIKS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 15 uses
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 13 uses
  store i8 0, ptr %2, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.b, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = shl i64 %i.d, 2                          ; 2 uses
  %i.j = add i64 %i.i, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.j) ; 16 uses
  store ptr %calloc, ptr %i.h, align 8, !tbaa !36
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #18
end_hunk_0
