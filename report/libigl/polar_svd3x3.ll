inline.NumInlined: 2329
inline.NumDeleted: 1195
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5Eigen8internal22lhs_process_one_packetILi4ELl4ELl1EfffDv4_fS2_S2_S2_NS0_11gebp_traitsIffLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIflLi0ELi1EEENS0_16blas_data_mapperIflLi0ELi0ELi1EEEEclERKS8_PKfSD_fllllllilllll:bb.a
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !295
  %i.je = getelementptr inbounds nuw i8, ptr %.0117356, i64 112
  %i.jf = load <4 x float>, ptr %i.je, align 1, !tbaa !9
  %i.jg = getelementptr inbounds nuw i8, ptr %.0116357, i64 28
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !32
  %i.ji = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = fmul <4 x float> %i.jf, %i.jj
  %i.jl = fadd <4 x float> %i.jd, %i.jk           ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !296
  %i.jm = getelementptr inbounds [4 x i8], ptr %.0116357, i64 %13 ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %.0117356, i64 %.idx131 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !297
  %i.jo = add nsw i64 %.0115358, %13              ; 2 uses
  %i.jp = icmp slt i64 %i.jo, %12
  br i1 %i.jp, label %.lr.ph360, label %.preheader, !llvm.loop !298

._crit_edge369:                                   ; preds = %.lr.ph368, %.preheader
  %.1312.lcssa = phi <4 x float> [ %.0311.lcssa, %.preheader ], [ %i.jz, %.lr.ph368 ]
  %i.jq = load <4 x float>, ptr %i.ha, align 1, !tbaa !9
  %i.jr = fmul <4 x float> %i.i, %.1312.lcssa
  %i.js = fadd <4 x float> %i.jr, %i.jq
  store <4 x float> %i.js, ptr %i.ha, align 1, !tbaa !9
  %i.jt = add i64 %.0119373, 1                    ; 2 uses
  %exitcond400.not = icmp eq i64 %i.jt, %14
  br i1 %exitcond400.not, label %._crit_edge375, label %bb.c, !llvm.loop !299

.lr.ph368:                                        ; preds = %.preheader, %.lr.ph368
  %.0367 = phi i64 [ %i.kc, %.lr.ph368 ], [ %12, %.preheader ]
  %.1366 = phi ptr [ %i.ka, %.lr.ph368 ], [ %.0116.lcssa, %.preheader ] ; 2 uses
  %.1118365 = phi ptr [ %i.kb, %.lr.ph368 ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1312364 = phi <4 x float> [ %i.jz, %.lr.ph368 ], [ %.0311.lcssa, %.preheader ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !300
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !301
  %i.ju = load <4 x float>, ptr %.1118365, align 1, !tbaa !9
  %i.jv = load float, ptr %.1366, align 4, !tbaa !32
  %i.jw = insertelement <4 x float> poison, float %i.jv, i64 0
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jy = fmul <4 x float> %i.ju, %i.jx
  %i.jz = fadd <4 x float> %.1312364, %i.jy       ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !302
  %i.ka = getelementptr inbounds nuw i8, ptr %.1366, i64 4
  %i.kb = getelementptr inbounds nuw i8, ptr %.1118365, i64 16
  %i.kc = add i64 %.0367, 1                       ; 2 uses
  %exitcond399.not = icmp eq i64 %i.kc, %15
  br i1 %exitcond399.not, label %._crit_edge369, label %.lr.ph368, !llvm.loop !303
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEENS3_INS5_IfLin1ELin1ELi0ELi12ELi12EEEEENS0_9assign_opIffEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304, !nonnull !65, !align !66 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEENS3_INS5_IfLin1ELin1ELi0ELi12ELi12EEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSD_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEENS3_INS5_IfLin1ELin1ELi0ELi12ELi12EEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSD_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !65, !align !66 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %0, align 8, !nonnull !65, !align !66
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53   ; 3 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !132  ; 3 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !52   ; 3 uses
  %i.s = mul i64 %i.g, 48
  %i.t = shl i64 %i.j, 2
  %i.u = getelementptr i8, ptr %i.p, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.v, i64 -48
  %i.w = add nuw i64 %i.g, 4611686018427387903
  %i.x = mul i64 %i.r, %i.w
  %i.y = add i64 %i.x, %i.j
  %i.z = shl i64 %i.y, 2
  %scevgep69 = getelementptr i8, ptr %i.q, i64 %i.z
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.p, %scevgep69
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.r, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %i.aa = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.an, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = mul i64 %.0810.i, 48
  %i.ab = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 6 uses
  %i.ac = mul nsw i64 %.0810.i, %i.r
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.q, i64 %i.ac ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.aa
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %wide.load = load <4 x float>, ptr %i.ae, align 4, !tbaa !32, !alias.scope !306
  %wide.load70 = load <4 x float>, ptr %i.af, align 4, !tbaa !32, !alias.scope !306
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  store <4 x float> %wide.load, ptr %i.ad, align 4, !tbaa !32, !alias.scope !309, !noalias !306
  store <4 x float> %wide.load70, ptr %i.ag, align 4, !tbaa !32, !alias.scope !309, !noalias !306
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.ak, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ai = getelementptr [4 x i8], ptr %i.ab, i64 %.09.i.prol
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.09.i.prol
  %i.aj = load float, ptr %gep.i.prol, align 4, !tbaa !32
  store float %i.aj, ptr %i.ai, align 4, !tbaa !32
  %i.ak = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !312

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ak, %scalar.ph.prol ]
  %i.al = sub nsw i64 %.09.i.ph, %i.j
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.an = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond13.not.i = icmp eq i64 %i.an, %i.g
  br i1 %exitcond13.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEENS3_INS5_IfLin1ELin1ELi0ELi12ELi12EEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSD_.exit, label %.preheader.i, !llvm.loop !313

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.az, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr [4 x i8], ptr %i.ab, i64 %.09.i
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.09.i
  %i.ap = load float, ptr %gep.i, align 4, !tbaa !32
  store float %i.ap, ptr %i.ao, align 4, !tbaa !32
  %i.aq = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.ab, i64 %i.aq
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aq
  %i.as = load float, ptr %gep.i.1, align 4, !tbaa !32
  store float %i.as, ptr %i.ar, align 4, !tbaa !32
  %i.at = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.ab, i64 %i.at
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.at
  %i.av = load float, ptr %gep.i.2, align 4, !tbaa !32
  store float %i.av, ptr %i.au, align 4, !tbaa !32
  %i.aw = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.ab, i64 %i.aw
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aw
  %i.ay = load float, ptr %gep.i.3, align 4, !tbaa !32
  store float %i.ay, ptr %i.ax, align 4, !tbaa !32
  %i.az = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.az, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !314

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !40 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !40 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph56, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEENS3_INS5_IfLin1ELin1ELi0ELi12ELi12EEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSD_.exit

.lr.ph56:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit
  %i.bf = lshr exact i64 %i.d, 2
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = and i64 %i.bg, 3
  %i.bi = tail call i64 @llvm.smin.i64(i64 %i.bh, i64 %i.bb)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph56, %._crit_edge
  %.03455 = phi i64 [ 0, %.lr.ph56 ], [ %i.ep, %._crit_edge ] ; 9 uses
  %.03554 = phi i64 [ %i.bi, %.lr.ph56 ], [ %.sroa.speculated, %._crit_edge ] ; 12 uses
  %i.bk = shl i64 %.03455, 2
  %i.bl = shl i64 %.03455, 2
  %i.bm = sub i64 %i.bb, %.03554                  ; 3 uses
  %i.bn = and i64 %i.bm, -4
  %i.bo = add nsw i64 %i.bn, %.03554              ; 6 uses
  %i.bp = icmp sgt i64 %.03554, 0
  br i1 %i.bp, label %.lr.ph, label %.preheader45

.lr.ph:                                           ; preds = %bb.c
  %i.bq = load ptr, ptr %0, align 8, !tbaa !315, !nonnull !65, !align !66
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !53 ; 2 uses
  %.idx.i.i.i = mul i64 %.03455, 48               ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 %.idx.i.i.i ; 6 uses
  %i.bt = load ptr, ptr %i.bj, align 8, !tbaa !316, !nonnull !65, !align !66 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !132 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !52 ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %.03455
  %invariant.gep = getelementptr [4 x i8], ptr %i.bu, i64 %i.bx ; 6 uses
  %min.iters.check87 = icmp ult i64 %.03554, 8
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck84

vector.memcheck84:                                ; preds = %.lr.ph
  %i.by = ptrtoaddr ptr %i.bu to i64
  %i.bz = ptrtoaddr ptr %i.br to i64
  %i.ca = add i64 %.idx.i.i.i, %i.bz
  %i.cb = mul i64 %i.bw, %i.bk
  %i.cc = add i64 %i.cb, %i.by
  %i.cd = sub i64 %i.cc, %i.ca
  %diff.check85 = icmp ugt i64 %i.cd, -32
  br i1 %diff.check85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck84
  %n.vec89 = and i64 %.03554, 9223372036854775800 ; 3 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next94, %vector.body90 ] ; 3 uses
  %i.ce = getelementptr [4 x i8], ptr %i.bs, i64 %index91 ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %invariant.gep, i64 %index91 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  %wide.load92.a = load <4 x float>, ptr %i.cf, align 4, !tbaa !32
  %wide.load93 = load <4 x float>, ptr %i.cg, align 4, !tbaa !32
  %i.ch = getelementptr i8, ptr %i.ce, i64 16
  store <4 x float> %wide.load92.a, ptr %i.ce, align 4, !tbaa !32
  store <4 x float> %wide.load93, ptr %i.ch, align 4, !tbaa !32
  %index.next94 = add nuw i64 %index91, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.ci, label %middle.block95, label %vector.body90, !llvm.loop !317

middle.block95:                                   ; preds = %vector.body90
  %cmp.n96 = icmp eq i64 %.03554, %n.vec89
  br i1 %cmp.n96, label %.preheader45, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck84, %.lr.ph, %middle.block95
  %.03347.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.lr.ph ], [ %n.vec89, %middle.block95 ] ; 3 uses
  %xtraiter99 = and i64 %.03554, 3                ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %scalar.ph86.prol.loopexit, label %scalar.ph86.prol

scalar.ph86.prol:                                 ; preds = %scalar.ph86.preheader, %scalar.ph86.prol
  %.03347.prol = phi i64 [ %i.cl, %scalar.ph86.prol ], [ %.03347.ph, %scalar.ph86.preheader ] ; 3 uses
  %prol.iter101 = phi i64 [ %prol.iter101.next, %scalar.ph86.prol ], [ 0, %scalar.ph86.preheader ]
  %i.cj = getelementptr [4 x i8], ptr %i.bs, i64 %.03347.prol
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %.03347.prol
  %i.ck = load float, ptr %gep.prol, align 4, !tbaa !32
  store float %i.ck, ptr %i.cj, align 4, !tbaa !32
  %i.cl = add nuw nsw i64 %.03347.prol, 1         ; 2 uses
  %prol.iter101.next = add i64 %prol.iter101, 1   ; 2 uses
  %prol.iter101.cmp.not = icmp eq i64 %prol.iter101.next, %xtraiter99
  br i1 %prol.iter101.cmp.not, label %scalar.ph86.prol.loopexit, label %scalar.ph86.prol, !llvm.loop !318

scalar.ph86.prol.loopexit:                        ; preds = %scalar.ph86.prol, %scalar.ph86.preheader
  %.03347.unr = phi i64 [ %.03347.ph, %scalar.ph86.preheader ], [ %i.cl, %scalar.ph86.prol ]
  %i.cm = sub nsw i64 %.03347.ph, %.03554
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %.preheader45, label %scalar.ph86

.preheader45:                                     ; preds = %scalar.ph86.prol.loopexit, %scalar.ph86, %middle.block95, %bb.c
  %i.co = icmp sgt i64 %i.bm, 3
  br i1 %i.co, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = mul i64 %.03455, 48
  br label %bb.d

scalar.ph86:                                      ; preds = %scalar.ph86.prol.loopexit, %scalar.ph86
  %.03347 = phi i64 [ %i.da, %scalar.ph86 ], [ %.03347.unr, %scalar.ph86.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bs, i64 %.03347
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.03347
  %i.cq = load float, ptr %gep, align 4, !tbaa !32
  store float %i.cq, ptr %i.cp, align 4, !tbaa !32
  %i.cr = add nuw nsw i64 %.03347, 1              ; 2 uses
  %i.cs = getelementptr [4 x i8], ptr %i.bs, i64 %i.cr
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cr
  %i.ct = load float, ptr %gep.1, align 4, !tbaa !32
  store float %i.ct, ptr %i.cs, align 4, !tbaa !32
  %i.cu = add nuw nsw i64 %.03347, 2              ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.bs, i64 %i.cu
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cu
  %i.cw = load float, ptr %gep.2, align 4, !tbaa !32
  store float %i.cw, ptr %i.cv, align 4, !tbaa !32
  %i.cx = add nuw nsw i64 %.03347, 3              ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %i.bs, i64 %i.cx
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cx
  %i.cz = load float, ptr %gep.3, align 4, !tbaa !32
  store float %i.cz, ptr %i.cy, align 4, !tbaa !32
  %i.da = add nuw nsw i64 %.03347, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.da, %.03554
  br i1 %exitcond.not.3, label %.preheader45, label %scalar.ph86, !llvm.loop !319

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.db = icmp slt i64 %i.bo, %i.bb
  br i1 %i.db, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.dc = load ptr, ptr %0, align 8, !tbaa !315, !nonnull !65, !align !66
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !53 ; 2 uses
  %.idx.i.i.i38 = mul i64 %.03455, 48             ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 %.idx.i.i.i38 ; 2 uses
  %i.df = load ptr, ptr %i.bj, align 8, !tbaa !316, !nonnull !65, !align !66 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !132 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !52 ; 2 uses
  %i.dj = mul nsw i64 %i.di, %.03455
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.dg, i64 %i.dj ; 2 uses
  %i.dk = and i64 %i.bm, -4
  %i.dl = add i64 %.03554, %i.dk
  %i.dm = sub i64 %i.bb, %i.dl                    ; 3 uses
  %min.iters.check73 = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.memcheck71

vector.memcheck71:                                ; preds = %.lr.ph51
  %i.dn = ptrtoaddr ptr %i.dg to i64
  %i.do = ptrtoaddr ptr %i.dd to i64
  %i.dp = add i64 %.idx.i.i.i38, %i.do
  %i.dq = mul i64 %i.di, %i.bl
  %i.dr = add i64 %i.dq, %i.dn
  %i.ds = sub i64 %i.dr, %i.dp
  %diff.check = icmp ugt i64 %i.ds, -32
  br i1 %diff.check, label %scalar.ph72.preheader, label %vector.ph74

vector.ph74:                                      ; preds = %vector.memcheck71
  %n.vec75 = and i64 %i.dm, -8                    ; 3 uses
  %i.dt = add i64 %i.bo, %n.vec75
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next80, %vector.body76 ] ; 2 uses
  %i.du = add i64 %i.bo, %index77                 ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.de, i64 %i.du ; 2 uses
  %i.dw = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.du ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %wide.load78.a = load <4 x float>, ptr %i.dw, align 4, !tbaa !32
  %wide.load79 = load <4 x float>, ptr %i.dx, align 4, !tbaa !32
  %i.dy = getelementptr i8, ptr %i.dv, i64 16
  store <4 x float> %wide.load78.a, ptr %i.dv, align 4, !tbaa !32
  store <4 x float> %wide.load79, ptr %i.dy, align 4, !tbaa !32
  %index.next80 = add nuw i64 %index77, 8         ; 2 uses
  %i.dz = icmp eq i64 %index.next80, %n.vec75
  br i1 %i.dz, label %middle.block81, label %vector.body76, !llvm.loop !320

middle.block81:                                   ; preds = %vector.body76
  %cmp.n82 = icmp eq i64 %i.dm, %n.vec75
  br i1 %cmp.n82, label %._crit_edge, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %vector.memcheck71, %.lr.ph51, %middle.block81
  %.050.ph = phi i64 [ %i.bo, %vector.memcheck71 ], [ %i.bo, %.lr.ph51 ], [ %i.dt, %middle.block81 ]
  br label %scalar.ph72

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03554, %.lr.ph49 ], [ %i.em, %bb.d ] ; 3 uses
  %i.ea = load ptr, ptr %0, align 8, !tbaa !315, !nonnull !65, !align !66
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !53
  %i.ec = getelementptr i8, ptr %i.eb, i64 %.idx.i.i.i37
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %.03248
  %i.ee = load ptr, ptr %i.bj, align 8, !tbaa !316, !nonnull !65, !align !66 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !132
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.03248
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !52
  %i.ej = mul nsw i64 %i.ei, %.03455
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ej
  %i.el = load <4 x float>, ptr %i.ek, align 1, !tbaa !9
  store <4 x float> %i.el, ptr %i.ed, align 16, !tbaa !9
  %i.em = add nsw i64 %.03248, 4                  ; 2 uses
  %i.en = icmp slt i64 %i.em, %i.bo
  br i1 %i.en, label %bb.d, label %.preheader, !llvm.loop !321

._crit_edge:                                      ; preds = %scalar.ph72, %middle.block81, %.preheader
  %i.eo = srem i64 %.03554, 4
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bb, i64 %i.eo)
  %i.ep = add nuw nsw i64 %.03455, 1              ; 2 uses
  %exitcond60.not = icmp eq i64 %i.ep, %i.bd
  br i1 %exitcond60.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEENS3_INS5_IfLin1ELin1ELi0ELi12ELi12EEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSD_.exit, label %bb.c, !llvm.loop !322

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %.050 = phi i64 [ %i.es, %scalar.ph72 ], [ %.050.ph, %scalar.ph72.preheader ] ; 3 uses
  %i.eq = getelementptr [4 x i8], ptr %i.de, i64 %.050
  %gep53 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.050
  %i.er = load float, ptr %gep53, align 4, !tbaa !32
  store float %i.er, ptr %i.eq, align 4, !tbaa !32
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bb
  br i1 %i.et, label %scalar.ph72, label %._crit_edge, !llvm.loop !323

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEENS3_INS5_IfLin1ELin1ELi0ELi12ELi12EEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSD_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTSN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEE", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIfLi3EEE", !17, i64 0}
!17 = !{!"p1 float", !14, i64 0}
!18 = !{!19, !25, i64 32}
!19 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi1EEELi3ENS_10DenseShapeES8_ffEE", !13, i64 0, !20, i64 8, !21, i64 16, !23, i64 24, !25, i64 32}
!20 = !{!"_ZTSN5Eigen9TransposeINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEE", !13, i64 0}
!21 = !{!"_ZTSN5Eigen8internal9evaluatorINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEE", !22, i64 0}
!22 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEEE", !16, i64 0}
!23 = !{!"_ZTSN5Eigen8internal9evaluatorINS_9TransposeINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEEE", !24, i64 0}
!24 = !{!"_ZTSN5Eigen8internal15unary_evaluatorINS_9TransposeINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEENS0_10IndexBasedEfEE", !21, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEE", !14, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi1EEEEE", !14, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSN5Eigen8internal9assign_opIffEE", !14, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !7, i64 0}
!34 = !{!35, !17, i64 0}
!35 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEELi0EEE", !17, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !25, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN5Eigen9DenseBaseINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!39 = distinct !{!39, !"_ZN5Eigen9DenseBaseINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!40 = !{!36, !25, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTSN5Eigen6MatrixIfLi12ELi3ELi0ELi12ELi3EEE", !14, i64 0}
!43 = !{!44, !25, i64 48}
!44 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0ELb1EEE", !45, i64 0, !42, i64 24, !36, i64 32, !36, i64 40, !25, i64 48}
!45 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEELi1EEE", !35, i64 0}
!46 = !{!47, !25, i64 576}
!47 = !{!"_ZTSN5Eigen12DenseStorageIfLi144ELin1ELin1ELi0EEE", !48, i64 0, !25, i64 576, !25, i64 584}
!48 = !{!"_ZTSN5Eigen8internal11plain_arrayIfLi144ELi0ELi16EEE", !7, i64 0}
!49 = !{!47, !25, i64 584}
!50 = !{!51, !17, i64 0}
!51 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIfLin1EEE", !17, i64 0, !25, i64 8}
!52 = !{!51, !25, i64 8}
!53 = !{!54, !17, i64 0}
!54 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEENS3_IfLin1ELin1ELi0ELi12ELi3EEEEE", !17, i64 0, !55, i64 8, !56, i64 9}
!55 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!56 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi12EEE"}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEE", !14, i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi12ELi12EEEEE", !14, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEE", !14, i64 0}
!63 = !{!64, !27, i64 0}
!64 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductIS4_NS_9TransposeIS4_EELi1EEEEENS0_9assign_opIffEELi0EEE", !27, i64 0, !29, i64 8, !31, i64 16, !13, i64 24}
!65 = !{}
!66 = !{i64 8}
!67 = !{!22, !17, i64 0}
!68 = !{!64, !29, i64 8}
!69 = !{!19, !13, i64 0}
!70 = !{i64 4}
!71 = !{!20, !13, i64 0}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEE3colEl: argument 0"}
!74 = distinct !{!74, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEE3colEl"}
!75 = !{!76, !25, i64 144}
!76 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEENS_9TransposeIKS6_EELi1EEELi8ENS_10DenseShapeESB_ffEE", !77, i64 0, !79, i64 56, !80, i64 112, !82, i64 128, !25, i64 144}
!77 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEE", !78, i64 0}
!78 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0ENS_5DenseEEE", !44, i64 0}
!79 = !{!"_ZTSN5Eigen9TransposeIKNS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEE", !77, i64 0}
!80 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEE", !81, i64 0}
!81 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0ELb1EEE", !54, i64 0}
!82 = !{!"_ZTSN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEEEE", !83, i64 0}
!83 = !{!"_ZTSN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEENS0_10IndexBasedEfEE", !84, i64 0}
!84 = !{!"_ZTSN5Eigen8internal9evaluatorIKNS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEEEE", !80, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_5BlockINS_6MatrixIfLi12ELi3ELi0ELi12ELi3EEELin1ELin1ELb0EEENS_9TransposeIKS6_EELi1EEEEE", !14, i64 0}
!87 = !{!88, !88, i64 0}
end_hunk_0
