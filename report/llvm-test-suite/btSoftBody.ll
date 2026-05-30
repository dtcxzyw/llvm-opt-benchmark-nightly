inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN10btSoftBody16generateClustersEii:bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load1137 = load <2 x ptr>, ptr %i.du, align 8, !tbaa !249
  %wide.load1138 = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !249
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <2 x ptr> %wide.load1137, ptr %i.dt, align 8, !tbaa !249
  store <2 x ptr> %wide.load1138, ptr %i.dw, align 8, !tbaa !249
  %index.next1139 = add nuw i64 %index1136, 4     ; 2 uses
  %i.dx = icmp eq i64 %index.next1139, %n.vec1134
  br i1 %i.dx, label %middle.block1140, label %vector.body1135, !llvm.loop !391

middle.block1140:                                 ; preds = %vector.body1135
  %cmp.n1141 = icmp eq i64 %n.vec1134, %wide.trip.count.i.i.i186
  br i1 %cmp.n1141, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph1130.preheader

scalar.ph1130.preheader:                          ; preds = %.lr.ph.i.i.i185, %middle.block1140
  %indvars.iv.i.i.i187.ph = phi i64 [ 0, %.lr.ph.i.i.i185 ], [ %n.vec1134, %middle.block1140 ] ; 3 uses
  %xtraiter1337 = and i64 %wide.trip.count.i.i.i186, 3 ; 2 uses
  %lcmp.mod1338.not = icmp eq i64 %xtraiter1337, 0
  br i1 %lcmp.mod1338.not, label %scalar.ph1130.prol.loopexit, label %scalar.ph1130.prol

scalar.ph1130.prol:                               ; preds = %scalar.ph1130.preheader, %scalar.ph1130.prol
  %indvars.iv.i.i.i187.prol = phi i64 [ %indvars.iv.next.i.i.i188.prol, %scalar.ph1130.prol ], [ %indvars.iv.i.i.i187.ph, %scalar.ph1130.preheader ] ; 3 uses
  %prol.iter1339 = phi i64 [ %prol.iter1339.next, %scalar.ph1130.prol ], [ 0, %scalar.ph1130.preheader ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.i.i.i187.prol
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i187.prol
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !249
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !249
  %indvars.iv.next.i.i.i188.prol = add nuw nsw i64 %indvars.iv.i.i.i187.prol, 1 ; 2 uses
  %prol.iter1339.next = add i64 %prol.iter1339, 1 ; 2 uses
  %prol.iter1339.cmp.not = icmp eq i64 %prol.iter1339.next, %xtraiter1337
  br i1 %prol.iter1339.cmp.not, label %scalar.ph1130.prol.loopexit, label %scalar.ph1130.prol, !llvm.loop !392

scalar.ph1130.prol.loopexit:                      ; preds = %scalar.ph1130.prol, %scalar.ph1130.preheader
  %indvars.iv.i.i.i187.unr = phi i64 [ %indvars.iv.i.i.i187.ph, %scalar.ph1130.preheader ], [ %indvars.iv.next.i.i.i188.prol, %scalar.ph1130.prol ]
  %i.eb = sub nsw i64 %indvars.iv.i.i.i187.ph, %wide.trip.count.i.i.i186
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph1130

scalar.ph1130:                                    ; preds = %scalar.ph1130.prol.loopexit, %scalar.ph1130
  %indvars.iv.i.i.i187 = phi i64 [ %indvars.iv.next.i.i.i188.3, %scalar.ph1130 ], [ %indvars.iv.i.i.i187.unr, %scalar.ph1130.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.i.i.i187
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i187
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !249
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !249
  %indvars.iv.next.i.i.i188 = add nuw nsw i64 %indvars.iv.i.i.i187, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.next.i.i.i188
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i188
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !249
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !249
  %indvars.iv.next.i.i.i188.1 = add nuw nsw i64 %indvars.iv.i.i.i187, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.next.i.i.i188.1
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i188.1
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !249
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !249
  %indvars.iv.next.i.i.i188.2 = add nuw nsw i64 %indvars.iv.i.i.i187, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.next.i.i.i188.2
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i188.2
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !249
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !249
  %indvars.iv.next.i.i.i188.3 = add nuw nsw i64 %indvars.iv.i.i.i187, 4 ; 2 uses
  %exitcond.not.i.i.i189.3 = icmp eq i64 %indvars.iv.next.i.i.i188.3, %wide.trip.count.i.i.i186
  br i1 %exitcond.not.i.i.i189.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph1130, !llvm.loop !393

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i
  %.not.i5.i.i184 = icmp ne ptr %i.dq, null
  %i.ep = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.eq = load i8, ptr %i.ep, align 8, !range !179
  %i.er = trunc nuw i8 %i.eq to i1
  %or.cond.i = select i1 %.not.i5.i.i184, i1 %i.er, i1 false
  br i1 %or.cond.i, label %.noexc191, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph1130.prol.loopexit, %scalar.ph1130, %middle.block1140
  %.old.i190 = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %.old8.i = load i8, ptr %.old.i190, align 8, !tbaa !387, !range !179, !noundef !216
  %.old9.i = trunc nuw i8 %.old8.i to i1
  br i1 %.old9.i, label %.noexc191, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i

.noexc191:                                        ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dq)
  %.pre2.pre.pre.i = load i32, ptr %i.dc, align 4, !tbaa !356
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i: ; preds = %.noexc191, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i
  %.pre2.i = phi i32 [ %i.dn, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i ], [ %.pre2.pre.pre.i, %.noexc191 ], [ %i.dn, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i8 1, ptr %i.es, align 8, !tbaa !387
  store ptr %.0.i.i.i183, ptr %i.dp, align 8, !tbaa !360
  store i32 %i.di, ptr %i.de, align 8, !tbaa !388
  %.pre826 = load i32, ptr %i.h, align 4, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i, %bb.g, %bb.f
  %i.et = phi i32 [ %.pre826, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i ], [ %i.ck, %bb.g ], [ %i.ck, %bb.f ] ; 3 uses
  %i.eu = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i ], [ %i.dd, %bb.g ], [ %i.dd, %bb.f ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !360
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex
  store ptr %i.cn, ptr %i.ey, align 8, !tbaa !249
  %i.ez = add nsw i32 %i.eu, 1
  store i32 %i.ez, ptr %i.dc, align 4, !tbaa !356
  %indvars.iv.next737 = add nuw nsw i64 %indvars.iv736, 1 ; 2 uses
  %i.fa = sext i32 %i.et to i64
  %i.fb = icmp slt i64 %indvars.iv.next737, %i.fa
  br i1 %i.fb, label %bb.f, label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %bb.i, %.preheader623
  %.sroa.0561.0.lcssa = phi float [ 0.000000e+00, %.preheader623 ], [ %i.cq, %bb.i ]
  %.lcssa635 = phi i32 [ %i.cg, %.preheader623 ], [ %i.et, %bb.i ]
  %i.fc = phi <2 x float> [ zeroinitializer, %.preheader623 ], [ %i.ct, %bb.i ] ; 2 uses
  %i.fd = sitofp i32 %.lcssa635 to float
  %i.fe = fdiv float 1.000000e+00, %i.fd          ; 3 uses
  %i.ff = extractelement <2 x float> %i.fc, i64 1
  %i.fg = fmul float %i.ff, %i.fe
  %i.fh = extractelement <2 x float> %i.fc, i64 0
  %i.fi = fmul float %i.fh, %i.fe
  %i.fj = fmul float %.sroa.0561.0.lcssa, %i.fe
  %i.fk = zext nneg i32 %.pr to i64               ; 3 uses
  %i.fl = shl nuw nsw i64 %i.fk, 4
  %i.fm = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fl, i32 noundef 16) ; 14 uses
  %i.fn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fj, i64 0
  %i.fo = insertelement <4 x float> %i.fn, float %i.fi, i64 1
  %i.fp = insertelement <4 x float> %i.fo, float %i.fg, i64 2 ; 5 uses
  %xtraiter1340 = and i64 %i.fk, 3                ; 3 uses
  %i.fq = icmp ult i32 %.pr, 4
  br i1 %i.fq, label %.epil.preheader, label %.lr.ph.i192.new

.lr.ph.i192.new:                                  ; preds = %.lr.ph.i192
  %unroll_iter = and i64 %i.fk, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i192.new
  %indvars.iv.i194 = phi i64 [ 0, %.lr.ph.i192.new ], [ %indvars.iv.next.i195.3, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i192.new ], [ %niter.next.3, %bb.j ]
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.i194
  store <4 x float> %i.fp, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.i194
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <4 x float> %i.fp, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.i194
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store <4 x float> %i.fp, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.i194
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store <4 x float> %i.fp, ptr %i.fx, align 4
  %indvars.iv.next.i195.3 = add nuw nsw i64 %indvars.iv.i194, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa, label %bb.j

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa: ; preds = %bb.j
  %lcmp.mod1341.not = icmp eq i64 %xtraiter1340, 0
  br i1 %lcmp.mod1341.not, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa, %.lr.ph.i192
  %indvars.iv.i194.epil.init = phi i64 [ 0, %.lr.ph.i192 ], [ %indvars.iv.next.i195.3, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa ]
  %lcmp.mod1342 = icmp ne i64 %xtraiter1340, 0
  tail call void @llvm.assume(i1 %lcmp.mod1342)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i194.epil = phi i64 [ %indvars.iv.i194.epil.init, %.epil.preheader ], [ %indvars.iv.next.i195.epil, %bb.k ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.i194.epil
  store <4 x float> %i.fp, ptr %i.fy, align 4
  %indvars.iv.next.i195.epil = add nuw nsw i64 %indvars.iv.i194.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1340
  br i1 %epil.iter.cmp.not, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader, label %bb.k, !llvm.loop !394

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader: ; preds = %bb.k, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 10 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.not708 = icmp eq i32 %.pr, 1
  %smax750 = tail call i32 @llvm.smax.i32(i32 %.pr, i32 2)
  %wide.trip.count745 = zext nneg i32 %.pr to i64
  %wide.trip.count751 = zext nneg i32 %smax750 to i64
  br label %.preheader621.preheader

.preheader621.preheader:                          ; preds = %._crit_edge676, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader
  %.0158 = phi i32 [ %i.gh, %._crit_edge676 ], [ 0, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader ] ; 2 uses
  %i.gd = uitofp nneg i32 %.0158 to float
  %i.ge = fmul nnan float %i.gd, 6.250000e-02     ; 2 uses
  %i.gf = fcmp ogt float %i.ge, 1.000000e+00
  %.sroa.speculated = select i1 %i.gf, float 1.000000e+00, float %i.ge
  %i.gg = fsub float 2.000000e+00, %.sroa.speculated ; 2 uses
  %i.gh = add nuw nsw i32 %.0158, 1               ; 2 uses
  %i.gi = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader621

.preheader622:                                    ; preds = %bb.p
  %i.gk = load i32, ptr %i.h, align 4, !tbaa !110 ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph675, label %._crit_edge676

.preheader621:                                    ; preds = %.preheader621.preheader, %bb.p
  %indvars.iv743 = phi i64 [ 0, %.preheader621.preheader ], [ %indvars.iv.next744, %bb.p ] ; 4 uses
  %.0151665 = phi i8 [ 0, %.preheader621.preheader ], [ %.1152, %bb.p ] ; 2 uses
  %i.gm = load ptr, ptr %i.fz, align 8, !tbaa !145
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv743
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !285 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !356 ; 6 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph658, label %._crit_edge659

.lr.ph658:                                        ; preds = %.preheader621
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !360 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.gq to i64   ; 2 uses
  %xtraiter1344 = and i64 %wide.trip.count, 1
  %i.gu = icmp eq i32 %i.gq, 1
  br i1 %i.gu, label %.epil.preheader1343, label %.lr.ph658.new

.lr.ph658.new:                                    ; preds = %.lr.ph658
  %unroll_iter1350 = and i64 %wide.trip.count, 2147483646
  br label %bb.l

._crit_edge659:                                   ; preds = %.preheader621
  %.not173 = icmp eq i32 %i.gq, 0
  br i1 %.not173, label %bb.p, label %._crit_edge659.thread

bb.l:                                             ; preds = %bb.l, %.lr.ph658.new
  %indvars.iv739 = phi i64 [ 0, %.lr.ph658.new ], [ %indvars.iv.next740.1, %bb.l ] ; 3 uses
  %.sroa.19541.2656 = phi <2 x float> [ zeroinitializer, %.lr.ph658.new ], [ %.sroa.19541.8.vec.insert544.1, %bb.l ] ; 2 uses
  %.sroa.0518.2655 = phi <2 x float> [ zeroinitializer, %.lr.ph658.new ], [ %i.hi, %bb.l ]
  %niter1351 = phi i64 [ 0, %.lr.ph658.new ], [ %niter1351.next.1, %bb.l ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv739
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !249 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load <2 x float>, ptr %i.gx, align 4, !tbaa !159
  %i.gz = fadd <2 x float> %.sroa.0518.2655, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !159
  %.sroa.19541.8.vec.extract = extractelement <2 x float> %.sroa.19541.2656, i64 0
  %i.hc = fadd float %.sroa.19541.8.vec.extract, %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv739
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !249 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load <2 x float>, ptr %i.hg, align 4, !tbaa !159
  %i.hi = fadd <2 x float> %i.gz, %i.hh           ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !159
  %i.hl = fadd float %i.hc, %i.hk
  %.sroa.19541.8.vec.insert544.1 = insertelement <2 x float> %.sroa.19541.2656, float %i.hl, i64 0 ; 3 uses
  %indvars.iv.next740.1 = add nuw nsw i64 %indvars.iv739, 2 ; 2 uses
  %niter1351.next.1 = add i64 %niter1351, 2       ; 2 uses
  %niter1351.ncmp.1 = icmp eq i64 %niter1351.next.1, %unroll_iter1350
  br i1 %niter1351.ncmp.1, label %._crit_edge659.thread.loopexit.unr-lcssa, label %bb.l

._crit_edge659.thread.loopexit.unr-lcssa:         ; preds = %bb.l
  %lcmp.mod1346.not = icmp eq i64 %xtraiter1344, 0
  br i1 %lcmp.mod1346.not, label %._crit_edge659.thread, label %.epil.preheader1343

.epil.preheader1343:                              ; preds = %._crit_edge659.thread.loopexit.unr-lcssa, %.lr.ph658
  %indvars.iv739.epil.init = phi i64 [ 0, %.lr.ph658 ], [ %indvars.iv.next740.1, %._crit_edge659.thread.loopexit.unr-lcssa ]
  %.sroa.19541.2656.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph658 ], [ %.sroa.19541.8.vec.insert544.1, %._crit_edge659.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0518.2655.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph658 ], [ %i.hi, %._crit_edge659.thread.loopexit.unr-lcssa ]
  %lcmp.mod1349 = trunc i32 %i.gq to i1
  tail call void @llvm.assume(i1 %lcmp.mod1349)
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv739.epil.init
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !249 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load <2 x float>, ptr %i.ho, align 4, !tbaa !159
  %i.hq = fadd <2 x float> %.sroa.0518.2655.epil.init, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !159
  %.sroa.19541.8.vec.extract.epil = extractelement <2 x float> %.sroa.19541.2656.epil.init, i64 0
  %i.ht = fadd float %.sroa.19541.8.vec.extract.epil, %i.hs
  %.sroa.19541.8.vec.insert544.epil = insertelement <2 x float> %.sroa.19541.2656.epil.init, float %i.ht, i64 0
  br label %._crit_edge659.thread

._crit_edge659.thread:                            ; preds = %.epil.preheader1343, %._crit_edge659.thread.loopexit.unr-lcssa, %._crit_edge659
  %.sroa.19541.2.lcssa957 = phi <2 x float> [ zeroinitializer, %._crit_edge659 ], [ %.sroa.19541.8.vec.insert544.1, %._crit_edge659.thread.loopexit.unr-lcssa ], [ %.sroa.19541.8.vec.insert544.epil, %.epil.preheader1343 ]
  %.sroa.0518.2.lcssa956 = phi <2 x float> [ zeroinitializer, %._crit_edge659 ], [ %i.hi, %._crit_edge659.thread.loopexit.unr-lcssa ], [ %i.hq, %.epil.preheader1343 ]
  %i.hu = sitofp i32 %i.gq to float
  %i.hv = fdiv float 1.000000e+00, %i.hu          ; 2 uses
  %.sroa.19541.8.vec.extract546 = extractelement <2 x float> %.sroa.19541.2.lcssa957, i64 0
  %i.hw = fmul float %.sroa.19541.8.vec.extract546, %i.hv
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv743 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !159 ; 3 uses
  %i.ia = fsub float %i.hw, %i.hz
  %i.ib = fmul float %i.gg, %i.ia
  %i.ic = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x float> %.sroa.0518.2.lcssa956, %i.id
  %i.if = load <2 x float>, ptr %i.hx, align 4, !tbaa !159 ; 4 uses
  %i.ig = fsub <2 x float> %i.ie, %i.if
  %i.ih = fmul <2 x float> %i.gj, %i.ig
  %i.ii = fadd <2 x float> %i.if, %i.ih           ; 3 uses
  %i.ij = fadd float %i.hz, %i.ib                 ; 2 uses
  %.sroa.3.12.vec.insert.i215 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ij, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.ii, %i.if
  %i.ik = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop1279 = fsub <2 x float> %i.ii, %i.if ; 2 uses
  %i.il = fsub float %i.ij, %i.hz                 ; 2 uses
  %foldExtExtBinop1281 = fmul <2 x float> %foldExtExtBinop1279, %foldExtExtBinop1279
  %i.im = extractelement <2 x float> %foldExtExtBinop1281, i64 1
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.ik, float %i.im)
  %i.io = tail call noundef float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.in)
  store <2 x float> %i.ii, ptr %i.hx, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i215, ptr %i.hy, align 4, !tbaa !184
  %i.ip = load ptr, ptr %i.fz, align 8, !tbaa !145
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv743
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !285 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !356 ; 2 uses
  %i.iu = icmp slt i32 %i.it, 0
  br i1 %i.iu, label %bb.m, label %.loopexit620

bb.m:                                             ; preds = %._crit_edge659.thread
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !388
  %i.ix = icmp slt i32 %i.iw, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !360 ; 3 uses
  br i1 %i.ix, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i230, label %.lr.ph.i223

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i230: ; preds = %bb.m
  %.not.i5.i.i231 = icmp ne ptr %i.iz, null
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 24 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 8, !range !179
  %i.jc = trunc nuw i8 %i.jb to i1
  %or.cond28.i232 = select i1 %.not.i5.i.i231, i1 %i.jc, i1 false
  br i1 %or.cond28.i232, label %bb.n, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i233

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i230
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.iz)
          to label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i233 unwind label %bb.o

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i233: ; preds = %bb.n, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i230
  store i8 1, ptr %i.ja, align 8, !tbaa !387
  store ptr null, ptr %i.iy, align 8, !tbaa !360
  store i32 0, ptr %i.iv, align 8, !tbaa !388
  br label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %bb.m, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i233
  %i.jd = phi ptr [ null, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i233 ], [ %i.iz, %bb.m ]
  %i.je = sext i32 %i.it to i64                   ; 2 uses
  %i.jf = shl nsw i64 %i.je, 3
  %scevgep742 = getelementptr i8, ptr %i.jd, i64 %i.jf
  %i.jg = mul nsw i64 %i.je, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep742, i8 0, i64 %i.jg, i1 false), !tbaa !249
  br label %.loopexit620

.loopexit620:                                     ; preds = %.lr.ph.i223, %._crit_edge659.thread
  store i32 0, ptr %i.is, align 4, !tbaa !356
  %i.jh = fcmp ogt float %i.io, f0x34000000
  %3 = trunc nuw i8 %.0151665 to i1
  %i.ji = or i1 %i.jh, %3
  %4 = zext i1 %i.ji to i8
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit372.thread610

bb.p:                                             ; preds = %.loopexit620, %._crit_edge659
  %.1152 = phi i8 [ %4, %.loopexit620 ], [ %.0151665, %._crit_edge659 ] ; 2 uses
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond746.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count745
  br i1 %exitcond746.not, label %.preheader622, label %.preheader621

.lr.ph675:                                        ; preds = %.preheader622, %bb.u
  %i.jk = phi i32 [ %i.mj, %bb.u ], [ %i.gk, %.preheader622 ] ; 2 uses
  %indvars.iv753 = phi i64 [ %indvars.iv.next754, %bb.u ], [ 0, %.preheader622 ] ; 2 uses
  %i.jl = load ptr, ptr %i.ga, align 8, !tbaa !109
  %i.jm = getelementptr inbounds nuw [120 x i8], ptr %i.jl, i64 %indvars.iv753 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load <2 x float>, ptr %i.jn, align 8    ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not708, label %._crit_edge672, label %.lr.ph671.preheader

.lr.ph671.preheader:                              ; preds = %.lr.ph675
  %i.jp = load float, ptr %i.fm, align 4, !tbaa !159
  %i.jq = extractelement <2 x float> %i.jo, i64 0
  %i.jr = fsub float %i.jp, %i.jq
  %i.js = tail call noundef float @llvm.fabs.f32(float %i.jr)
  %i.jt = load float, ptr %i.gb, align 4, !tbaa !159
  %i.ju = extractelement <2 x float> %i.jo, i64 1
  %i.jv = fsub float %i.jt, %i.ju
  %i.jw = tail call noundef float @llvm.fabs.f32(float %i.jv)
  %i.jx = fadd float %i.js, %i.jw
  %i.jy = load float, ptr %i.gc, align 4, !tbaa !159
  %i.jz = fsub float %i.jy, %.sroa.8.0.copyload
  %i.ka = tail call noundef float @llvm.fabs.f32(float %i.jz)
  %i.kb = fadd float %i.jx, %i.ka
  br label %.lr.ph671

._crit_edge672.loopexit:                          ; preds = %.lr.ph671
  %i.kc = zext nneg i32 %.1157 to i64
  br label %._crit_edge672

._crit_edge672:                                   ; preds = %._crit_edge672.loopexit, %.lr.ph675
  %.0156.lcssa = phi i64 [ 0, %.lr.ph675 ], [ %i.kc, %._crit_edge672.loopexit ]
  %i.kd = load ptr, ptr %i.fz, align 8, !tbaa !145
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.0156.lcssa
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !285 ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4 ; 4 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !356 ; 7 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !388
  %i.kk = icmp eq i32 %i.kh, %i.kj
  br i1 %i.kk, label %bb.q, label %bb.u

bb.q:                                             ; preds = %._crit_edge672
  %.not.i.i244 = icmp eq i32 %i.kh, 0
  %i.kl = shl nsw i32 %i.kh, 1
  %i.km = select i1 %.not.i.i244, i32 1, i32 %i.kl ; 4 uses
  %i.kn = icmp slt i32 %i.kh, %i.km
  br i1 %i.kn, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i245 = icmp eq i32 %i.km, 0
  br i1 %.not.i.i.i245, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i247, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ko = sext i32 %i.km to i64
  %i.kp = shl nsw i64 %i.ko, 3
  %i.kq = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.kp, i32 noundef 16)
          to label %.noexc264 unwind label %bb.v

.noexc264:                                        ; preds = %bb.s
  %.pre.i246 = load i32, ptr %i.kg, align 4, !tbaa !356
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i247

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i247: ; preds = %.noexc264, %bb.r
  %i.kr = phi i32 [ %.pre.i246, %.noexc264 ], [ %i.kh, %bb.r ] ; 5 uses
  %.0.i.i.i248 = phi ptr [ %i.kq, %.noexc264 ], [ null, %bb.r ] ; 8 uses
  %i.ks = icmp sgt i32 %i.kr, 0
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !360 ; 9 uses
  br i1 %i.ks, label %.lr.ph.i.i.i255, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i249

.lr.ph.i.i.i255:                                  ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i247
  %i.kv = ptrtoaddr ptr %i.ku to i64
  %.0.i.i.i2481144 = ptrtoaddr ptr %.0.i.i.i248 to i64
  %wide.trip.count.i.i.i256 = zext nneg i32 %i.kr to i64 ; 5 uses
  %min.iters.check1147 = icmp ult i32 %i.kr, 4
  %i.kw = sub i64 %.0.i.i.i2481144, %i.kv
  %diff.check1145 = icmp ult i64 %i.kw, 32
  %or.cond1262 = select i1 %min.iters.check1147, i1 true, i1 %diff.check1145
  br i1 %or.cond1262, label %scalar.ph1146.preheader, label %vector.ph1148

vector.ph1148:                                    ; preds = %.lr.ph.i.i.i255
  %n.vec1150 = and i64 %wide.trip.count.i.i.i256, 2147483644 ; 3 uses
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %vector.ph1148
  %index1152 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1155, %vector.body1151 ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i248, i64 %index1152 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %index1152 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %wide.load1153 = load <2 x ptr>, ptr %i.ky, align 8, !tbaa !249
  %wide.load1154 = load <2 x ptr>, ptr %i.kz, align 8, !tbaa !249
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store <2 x ptr> %wide.load1153, ptr %i.kx, align 8, !tbaa !249
  store <2 x ptr> %wide.load1154, ptr %i.la, align 8, !tbaa !249
  %index.next1155 = add nuw i64 %index1152, 4     ; 2 uses
  %i.lb = icmp eq i64 %index.next1155, %n.vec1150
  br i1 %i.lb, label %middle.block1156, label %vector.body1151, !llvm.loop !395

middle.block1156:                                 ; preds = %vector.body1151
  %cmp.n1157 = icmp eq i64 %n.vec1150, %wide.trip.count.i.i.i256
  br i1 %cmp.n1157, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i260, label %scalar.ph1146.preheader

scalar.ph1146.preheader:                          ; preds = %.lr.ph.i.i.i255, %middle.block1156
  %indvars.iv.i.i.i257.ph = phi i64 [ 0, %.lr.ph.i.i.i255 ], [ %n.vec1150, %middle.block1156 ] ; 3 uses
  %xtraiter1352 = and i64 %wide.trip.count.i.i.i256, 3 ; 2 uses
  %lcmp.mod1353.not = icmp eq i64 %xtraiter1352, 0
  br i1 %lcmp.mod1353.not, label %scalar.ph1146.prol.loopexit, label %scalar.ph1146.prol

scalar.ph1146.prol:                               ; preds = %scalar.ph1146.preheader, %scalar.ph1146.prol
  %indvars.iv.i.i.i257.prol = phi i64 [ %indvars.iv.next.i.i.i258.prol, %scalar.ph1146.prol ], [ %indvars.iv.i.i.i257.ph, %scalar.ph1146.preheader ] ; 3 uses
  %prol.iter1354 = phi i64 [ %prol.iter1354.next, %scalar.ph1146.prol ], [ 0, %scalar.ph1146.preheader ]
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i248, i64 %indvars.iv.i.i.i257.prol
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.i.i.i257.prol
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !249
  store ptr %i.le, ptr %i.lc, align 8, !tbaa !249
  %indvars.iv.next.i.i.i258.prol = add nuw nsw i64 %indvars.iv.i.i.i257.prol, 1 ; 2 uses
  %prol.iter1354.next = add i64 %prol.iter1354, 1 ; 2 uses
  %prol.iter1354.cmp.not = icmp eq i64 %prol.iter1354.next, %xtraiter1352
  br i1 %prol.iter1354.cmp.not, label %scalar.ph1146.prol.loopexit, label %scalar.ph1146.prol, !llvm.loop !396

scalar.ph1146.prol.loopexit:                      ; preds = %scalar.ph1146.prol, %scalar.ph1146.preheader
  %indvars.iv.i.i.i257.unr = phi i64 [ %indvars.iv.i.i.i257.ph, %scalar.ph1146.preheader ], [ %indvars.iv.next.i.i.i258.prol, %scalar.ph1146.prol ]
  %i.lf = sub nsw i64 %indvars.iv.i.i.i257.ph, %wide.trip.count.i.i.i256
  %i.lg = icmp ugt i64 %i.lf, -4
  br i1 %i.lg, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i260, label %scalar.ph1146

scalar.ph1146:                                    ; preds = %scalar.ph1146.prol.loopexit, %scalar.ph1146
  %indvars.iv.i.i.i257 = phi i64 [ %indvars.iv.next.i.i.i258.3, %scalar.ph1146 ], [ %indvars.iv.i.i.i257.unr, %scalar.ph1146.prol.loopexit ] ; 6 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i248, i64 %indvars.iv.i.i.i257
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.i.i.i257
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !249
  store ptr %i.lj, ptr %i.lh, align 8, !tbaa !249
  %indvars.iv.next.i.i.i258 = add nuw nsw i64 %indvars.iv.i.i.i257, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i248, i64 %indvars.iv.next.i.i.i258
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.next.i.i.i258
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !249
  store ptr %i.lm, ptr %i.lk, align 8, !tbaa !249
  %indvars.iv.next.i.i.i258.1 = add nuw nsw i64 %indvars.iv.i.i.i257, 2 ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i248, i64 %indvars.iv.next.i.i.i258.1
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.next.i.i.i258.1
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !249
  store ptr %i.lp, ptr %i.ln, align 8, !tbaa !249
  %indvars.iv.next.i.i.i258.2 = add nuw nsw i64 %indvars.iv.i.i.i257, 3 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i248, i64 %indvars.iv.next.i.i.i258.2
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.next.i.i.i258.2
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !249
  store ptr %i.ls, ptr %i.lq, align 8, !tbaa !249
  %indvars.iv.next.i.i.i258.3 = add nuw nsw i64 %indvars.iv.i.i.i257, 4 ; 2 uses
  %exitcond.not.i.i.i259.3 = icmp eq i64 %indvars.iv.next.i.i.i258.3, %wide.trip.count.i.i.i256
  br i1 %exitcond.not.i.i.i259.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i260, label %scalar.ph1146, !llvm.loop !397

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i249: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i247
  %.not.i5.i.i250 = icmp ne ptr %i.ku, null
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.lu = load i8, ptr %i.lt, align 8, !range !179
  %i.lv = trunc nuw i8 %i.lu to i1
  %or.cond.i251 = select i1 %.not.i5.i.i250, i1 %i.lv, i1 false
  br i1 %or.cond.i251, label %bb.t, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i252

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i260: ; preds = %scalar.ph1146.prol.loopexit, %scalar.ph1146, %middle.block1156
  %.old.i261 = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %.old8.i262 = load i8, ptr %.old.i261, align 8, !tbaa !387, !range !179, !noundef !216
  %.old9.i263 = trunc nuw i8 %.old8.i262 to i1
  br i1 %.old9.i263, label %bb.t, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i252

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i260, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i249
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ku)
          to label %.noexc265 unwind label %bb.v

.noexc265:                                        ; preds = %bb.t
  %.pre2.pre.pre.i254 = load i32, ptr %i.kg, align 4, !tbaa !356
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i252

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i252: ; preds = %.noexc265, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i260, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i249
  %.pre2.i253 = phi i32 [ %i.kr, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i249 ], [ %.pre2.pre.pre.i254, %.noexc265 ], [ %i.kr, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i260 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  store i8 1, ptr %i.lw, align 8, !tbaa !387
  store ptr %.0.i.i.i248, ptr %i.kt, align 8, !tbaa !360
  store i32 %i.km, ptr %i.ki, align 8, !tbaa !388
  %.pre829 = load i32, ptr %i.h, align 4, !tbaa !110
  br label %bb.u

.lr.ph671:                                        ; preds = %.lr.ph671.preheader, %.lr.ph671
  %indvars.iv747 = phi i64 [ 1, %.lr.ph671.preheader ], [ %indvars.iv.next748, %.lr.ph671 ] ; 3 uses
  %.0154668 = phi float [ %i.kb, %.lr.ph671.preheader ], [ %.1155, %.lr.ph671 ] ; 2 uses
  %.0156667 = phi i32 [ 0, %.lr.ph671.preheader ], [ %.1157, %.lr.ph671 ]
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv747 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !159
  %i.ma = fsub float %i.lz, %.sroa.8.0.copyload
  %i.mb = load <2 x float>, ptr %i.lx, align 4, !tbaa !159
  %i.mc = fsub <2 x float> %i.mb, %i.jo
  %i.md = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mc) ; 2 uses
  %shift = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1283 = fadd <2 x float> %i.md, %shift
  %i.me = extractelement <2 x float> %foldExtExtBinop1283, i64 0
  %i.mf = tail call noundef float @llvm.fabs.f32(float %i.ma)
  %i.mg = fadd float %i.me, %i.mf                 ; 2 uses
  %i.mh = fcmp olt float %i.mg, %.0154668         ; 2 uses
  %i.mi = trunc nuw nsw i64 %indvars.iv747 to i32
  %.1157 = select i1 %i.mh, i32 %i.mi, i32 %.0156667 ; 2 uses
  %.1155 = select i1 %i.mh, float %i.mg, float %.0154668
  %indvars.iv.next748 = add nuw nsw i64 %indvars.iv747, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next748, %wide.trip.count751
  br i1 %exitcond752.not, label %._crit_edge672.loopexit, label %.lr.ph671

bb.u:                                             ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i252, %bb.q, %._crit_edge672
  %i.mj = phi i32 [ %.pre829, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i252 ], [ %i.jk, %bb.q ], [ %i.jk, %._crit_edge672 ] ; 3 uses
  %i.mk = phi i32 [ %.pre2.i253, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i252 ], [ %i.kh, %bb.q ], [ %i.kh, %._crit_edge672 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !360
  %i.mn = sext i32 %i.mk to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.mn
  store ptr %i.jm, ptr %i.mo, align 8, !tbaa !249
  %i.mp = add nsw i32 %i.mk, 1
  store i32 %i.mp, ptr %i.kg, align 4, !tbaa !356
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 1 ; 2 uses
  %i.mq = sext i32 %i.mj to i64
  %i.mr = icmp slt i64 %indvars.iv.next754, %i.mq
  br i1 %i.mr, label %.lr.ph675, label %._crit_edge676

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit372.thread610

._crit_edge676:                                   ; preds = %bb.u, %.preheader622
  %.lcssa633 = phi i32 [ %i.gk, %.preheader622 ], [ %i.mj, %bb.u ] ; 2 uses
  %5 = trunc nuw i8 %.1152 to i1
  %i.mt = icmp slt i32 %i.gh, %2
  %i.mu = select i1 %5, i1 %i.mt, i1 false
  br i1 %i.mu, label %.preheader621.preheader, label %bb.w

bb.w:                                             ; preds = %._crit_edge676
  %i.mv = icmp sgt i32 %.lcssa633, 0
  br i1 %i.mv, label %bb.x, label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit

bb.x:                                             ; preds = %bb.w
  %i.mw = zext nneg i32 %.lcssa633 to i64
  %i.mx = shl nuw nsw i64 %i.mw, 2                ; 2 uses
  %i.my = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.mx, i32 noundef 16)
          to label %.lr.ph.i267 unwind label %.thread ; 2 uses

.lr.ph.i267:                                      ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.my, i8 -1, i64 %i.mx, i1 false), !tbaa !4
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit:    ; preds = %.lr.ph.i267, %bb.w
  %.sroa.10492.2 = phi ptr [ null, %bb.w ], [ %i.my, %.lr.ph.i267 ] ; 8 uses
  %i.mz = load i32, ptr %i.b, align 4, !tbaa !146 ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 0
  br i1 %i.na, label %.preheader619.lr.ph, label %.preheader618

.preheader619.lr.ph:                              ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit
  %i.nb = load ptr, ptr %i.fz, align 8, !tbaa !145
  %i.nc = load ptr, ptr %i.ga, align 8
  %i.nd = ptrtoint ptr %i.nc to i64
  br label %.preheader619

.preheader619:                                    ; preds = %.preheader619.lr.ph, %._crit_edge680
  %i.ne = phi i32 [ %i.mz, %.preheader619.lr.ph ], [ %i.nu, %._crit_edge680 ]
  %indvars.iv759 = phi i64 [ 0, %.preheader619.lr.ph ], [ %indvars.iv.next760, %._crit_edge680 ] ; 3 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv759
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !285 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !356
  %i.nj = icmp sgt i32 %i.ni, 0
  br i1 %i.nj, label %.lr.ph679, label %._crit_edge680

.lr.ph679:                                        ; preds = %.preheader619
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !360
  %i.nm = trunc nuw nsw i64 %indvars.iv759 to i32
  br label %bb.aa

.preheader618:                                    ; preds = %._crit_edge680, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit
  %i.nn = phi i32 [ %i.mz, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit ], [ %i.nu, %._crit_edge680 ]
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !118
  %i.nq = icmp sgt i32 %i.np, 0
  br i1 %i.nq, label %.lr.ph685, label %._crit_edge686

.lr.ph685:                                        ; preds = %.preheader618
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ab

._crit_edge680.loopexit:                          ; preds = %bb.aa
  %.pre830 = load i32, ptr %i.b, align 4, !tbaa !146
  br label %._crit_edge680

._crit_edge680:                                   ; preds = %._crit_edge680.loopexit, %.preheader619
  %i.nu = phi i32 [ %.pre830, %._crit_edge680.loopexit ], [ %i.ne, %.preheader619 ] ; 3 uses
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %i.nv = sext i32 %i.nu to i64
  %i.nw = icmp slt i64 %indvars.iv.next760, %i.nv
  br i1 %i.nw, label %.preheader619, label %.preheader618

bb.y:                                             ; preds = %bb.bq
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit372

bb.z:                                             ; preds = %bb.bo
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.thread:                                          ; preds = %bb.x
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit372

bb.aa:                                            ; preds = %.lr.ph679, %bb.aa
  %indvars.iv756 = phi i64 [ 0, %.lr.ph679 ], [ %indvars.iv.next757, %bb.aa ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv756
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !249
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = sub i64 %i.oc, %i.nd
  %i.oe = sdiv exact i64 %i.od, 120
  %sext = shl i64 %i.oe, 32
  %i.of = ashr exact i64 %sext, 30
  %i.og = getelementptr inbounds i8, ptr %.sroa.10492.2, i64 %i.of
  store i32 %i.nm, ptr %i.og, align 4, !tbaa !4
  %indvars.iv.next757 = add nuw nsw i64 %indvars.iv756, 1 ; 2 uses
  %i.oh = load i32, ptr %i.nh, align 4, !tbaa !356
  %i.oi = sext i32 %i.oh to i64
  %i.oj = icmp slt i64 %indvars.iv.next757, %i.oi
  br i1 %i.oj, label %bb.aa, label %._crit_edge680.loopexit

bb.ab:                                            ; preds = %.lr.ph685, %bb.ac
  %indvars.iv767 = phi i64 [ 0, %.lr.ph685 ], [ %indvars.iv.next768, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ok = load ptr, ptr %i.nr, align 8, !tbaa !117
  %i.ol = getelementptr inbounds nuw [72 x i8], ptr %i.ok, i64 %indvars.iv767 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !249
  %i.oo = load ptr, ptr %i.ga, align 8, !tbaa !109
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = ptrtoint ptr %i.oo to i64               ; 3 uses
  %i.or = sub i64 %i.op, %i.oq
  %i.os = sdiv exact i64 %i.or, 120
  %i.ot = trunc i64 %i.os to i32
  store i32 %i.ot, ptr %i.a, align 4, !tbaa !4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !249
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = sub i64 %i.ow, %i.oq
  %i.oy = sdiv exact i64 %i.ox, 120
  %i.oz = trunc i64 %i.oy to i32
  store i32 %i.oz, ptr %i.ns, align 4, !tbaa !4
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ol, i64 32
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !249
  %i.pc = ptrtoint ptr %i.pb to i64
  %i.pd = sub i64 %i.pc, %i.oq
  %i.pe = sdiv exact i64 %i.pd, 120
  %i.pf = trunc i64 %i.pe to i32
  store i32 %i.pf, ptr %i.nt, align 4, !tbaa !4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %i.pg = load i32, ptr %i.no, align 4, !tbaa !118
  %i.ph = sext i32 %i.pg to i64
  %i.pi = icmp slt i64 %indvars.iv.next768, %i.ph
  br i1 %i.pi, label %bb.ab, label %._crit_edge686.loopexit

bb.ad:                                            ; preds = %bb.ab, %bb.aw
  %indvars.iv763 = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next764, %bb.aw ] ; 3 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv763
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !4
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [4 x i8], ptr %.sroa.10492.2, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !4  ; 3 uses
  %i.po = sext i32 %i.pn to i64                   ; 2 uses
  %indvars.iv.next764 = add nuw nsw i64 %indvars.iv763, 1 ; 4 uses
  %i.pp = icmp eq i64 %indvars.iv.next764, 3
  %i.pq = and i64 %indvars.iv.next764, 4294967295
  %i.pr = select i1 %i.pp, i64 0, i64 %i.pq
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !4
  %i.pu = sext i32 %i.pt to i64                   ; 2 uses
  %i.pv = getelementptr inbounds [4 x i8], ptr %.sroa.10492.2, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !4
  %.not167 = icmp eq i32 %i.pw, %i.pn
  br i1 %.not167, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.px = load ptr, ptr %i.fz, align 8, !tbaa !145
  %i.py = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.po
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !285 ; 8 uses
  %i.qa = load ptr, ptr %i.ga, align 8, !tbaa !109
  %i.qb = getelementptr inbounds [120 x i8], ptr %i.qa, i64 %i.pu ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 4 ; 4 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !356 ; 10 uses
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %.lr.ph.i288, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread

.lr.ph.i288:                                      ; preds = %bb.ae
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !360
  %wide.trip.count.i289 = zext nneg i32 %i.qd to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i288
  %indvars.iv.i290 = phi i64 [ 0, %.lr.ph.i288 ], [ %indvars.iv.next.i291, %bb.ag ] ; 3 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv.i290
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !249
  %i.qj = icmp eq ptr %i.qi, %i.qb
  br i1 %i.qj, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next.i291 = add nuw nsw i64 %indvars.iv.i290, 1 ; 2 uses
  %exitcond.not.i292 = icmp eq i64 %indvars.iv.next.i291, %wide.trip.count.i289
  br i1 %exitcond.not.i292, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread, label %bb.af

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit: ; preds = %bb.af
  %i.qk = trunc nuw nsw i64 %indvars.iv.i290 to i32
  %i.ql = icmp eq i32 %i.qd, %i.qk
  br i1 %i.ql, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread, label %bb.an

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread: ; preds = %bb.ag, %bb.ae, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !388
  %i.qo = icmp eq i32 %i.qd, %i.qn
  br i1 %i.qo, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread
  %.not.i.i293 = icmp eq i32 %i.qd, 0
end_hunk_0
