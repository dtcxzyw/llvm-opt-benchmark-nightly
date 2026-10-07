Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/evrcdec?download=true
inline.NumInlined: 69
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 29
begin_hunk_0_@evrc_decode_frame:bb.a
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !31
  %.not187.23 = icmp eq i8 %i.tu, 0
  br i1 %.not187.23, label %.preheader274.24, label %.thread

.preheader274.24:                                 ; preds = %.preheader274.23
  %i.tv = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.tw = load i8, ptr %i.tv, align 8, !tbaa !31
  %.not187.24 = icmp eq i8 %i.tw, 0
  br i1 %.not187.24, label %.preheader274.25, label %.thread

.preheader274.25:                                 ; preds = %.preheader274.24
  %i.tx = getelementptr inbounds nuw i8, ptr %i.j, i64 73
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !31
  %.not187.25 = icmp eq i8 %i.ty, 0
  br i1 %.not187.25, label %.preheader274.26, label %.thread

.preheader274.26:                                 ; preds = %.preheader274.25
  %i.tz = getelementptr inbounds nuw i8, ptr %i.j, i64 74
  %i.ua = load i8, ptr %i.tz, align 2, !tbaa !31
  %.not187.26 = icmp eq i8 %i.ua, 0
  br i1 %.not187.26, label %.preheader274.27, label %.thread

.preheader274.27:                                 ; preds = %.preheader274.26
  %i.ub = getelementptr inbounds nuw i8, ptr %i.j, i64 75
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !31
  %.not187.27 = icmp eq i8 %i.uc, 0
  br i1 %.not187.27, label %.preheader274.28, label %.thread

.preheader274.28:                                 ; preds = %.preheader274.27
  %i.ud = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  %i.ue = load i8, ptr %i.ud, align 4, !tbaa !31
  %.not187.28 = icmp eq i8 %i.ue, 0
  br i1 %.not187.28, label %.preheader274.29, label %.thread

.preheader274.29:                                 ; preds = %.preheader274.28
  %i.uf = getelementptr inbounds nuw i8, ptr %i.j, i64 77
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !31
  %.not187.29 = icmp eq i8 %i.ug, 0
  br i1 %.not187.29, label %.preheader274.30, label %.thread

.preheader274.30:                                 ; preds = %.preheader274.29
  %i.uh = getelementptr inbounds nuw i8, ptr %i.j, i64 78
  %i.ui = load i8, ptr %i.uh, align 2, !tbaa !31
  %.not187.30 = icmp eq i8 %i.ui, 0
  br i1 %.not187.30, label %.preheader274.31, label %.thread

.preheader274.31:                                 ; preds = %.preheader274.30
  %i.uj = getelementptr inbounds nuw i8, ptr %i.j, i64 79
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !31
  %.not187.31 = icmp ne i8 %i.uk, 0
  %.not187.32 = icmp ne i8 %i.rz, 0
  %or.cond346.not349 = select i1 %.not187.31, i1 true, i1 %.not187.32
  %brmerge = select i1 %or.cond346.not349, i1 true, i1 %.not187.33
  br i1 %brmerge, label %.thread, label %.preheader274.34

.preheader274.34:                                 ; preds = %.preheader274.31
  %i.ul = getelementptr inbounds nuw i8, ptr %i.j, i64 82
  %i.um = load i8, ptr %i.ul, align 2, !tbaa !31
  %.not187.34 = icmp eq i8 %i.um, 0
  br i1 %.not187.34, label %.preheader274.35, label %.thread

.preheader274.35:                                 ; preds = %.preheader274.34
  %i.un = getelementptr inbounds nuw i8, ptr %i.j, i64 83
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !31
  %.not187.35 = icmp eq i8 %i.uo, 0
  br i1 %.not187.35, label %.preheader274.36, label %.thread

.preheader274.36:                                 ; preds = %.preheader274.35
  %i.up = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.uq = load i8, ptr %i.up, align 4, !tbaa !31
  %.not187.36 = icmp eq i8 %i.uq, 0
  br i1 %.not187.36, label %.preheader274.37, label %.thread

.preheader274.37:                                 ; preds = %.preheader274.36
  %i.ur = getelementptr inbounds nuw i8, ptr %i.j, i64 85
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !31
  %.not187.37 = icmp eq i8 %i.us, 0
  br i1 %.not187.37, label %.preheader274.38, label %.thread

.preheader274.38:                                 ; preds = %.preheader274.37
  %i.ut = getelementptr inbounds nuw i8, ptr %i.j, i64 86
  %i.uu = load i8, ptr %i.ut, align 2, !tbaa !31
  %.not187.38 = icmp eq i8 %i.uu, 0
  br i1 %.not187.38, label %.preheader274.39, label %.thread

.preheader274.39:                                 ; preds = %.preheader274.38
  %i.uv = getelementptr inbounds nuw i8, ptr %i.j, i64 87
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !31
  %.not187.39 = icmp eq i8 %i.uw, 0
  br i1 %.not187.39, label %.preheader274.40, label %.thread

.preheader274.40:                                 ; preds = %.preheader274.39
  %i.ux = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.uy = load i8, ptr %i.ux, align 8, !tbaa !31
  %.not187.40 = icmp eq i8 %i.uy, 0
  br i1 %.not187.40, label %.preheader274.41, label %.thread

.preheader274.41:                                 ; preds = %.preheader274.40
  %i.uz = getelementptr inbounds nuw i8, ptr %i.j, i64 89
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !31
  %.not187.41 = icmp eq i8 %i.va, 0
  %.not187.42 = icmp eq i8 %i.ry, 0
  %or.cond347 = select i1 %.not187.41, i1 %.not187.42, i1 false
  br i1 %or.cond347, label %.preheader274.43, label %.thread

.preheader274.43:                                 ; preds = %.preheader274.41
  %i.vb = getelementptr inbounds nuw i8, ptr %i.j, i64 91
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !31
  %.not187.43 = icmp eq i8 %i.vc, 0
  br i1 %.not187.43, label %.preheader274.44, label %.thread

.preheader274.44:                                 ; preds = %.preheader274.43
  %i.vd = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  %i.ve = load i8, ptr %i.vd, align 4, !tbaa !31
  %.not187.44 = icmp eq i8 %i.ve, 0
  br i1 %.not187.44, label %.preheader274.45, label %.thread

.preheader274.45:                                 ; preds = %.preheader274.44
  %i.vf = getelementptr inbounds nuw i8, ptr %i.j, i64 93
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !31
  %.not187.45 = icmp eq i8 %i.vg, 0
  br i1 %.not187.45, label %decode_lspf.exit.thread, label %.thread

bb.z:                                             ; preds = %unpack_frame.exit
  %i.vh = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !98
  %i.vj = icmp eq i16 %i.vi, 15
  br i1 %i.vj, label %bb.aa, label %.lr.ph47.i

bb.aa:                                            ; preds = %bb.z
  %i.vk = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.vl = load i16, ptr %i.vk, align 4, !tbaa !98
  %i.vm = icmp eq i16 %i.vl, 15
  br i1 %i.vm, label %bb.ab, label %.lr.ph47.i

bb.ab:                                            ; preds = %bb.aa
  %i.vn = getelementptr inbounds nuw i8, ptr %i.j, i64 91
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !103
  %i.vp = icmp eq i8 %i.vo, -1
  br i1 %i.vp, label %decode_lspf.exit.thread, label %.lr.ph47.i

.thread:                                          ; preds = %.preheader274.31, %.preheader274.preheader, %.preheader274.1, %.preheader274.2, %.preheader274.3, %.preheader274.4, %.preheader274.5, %.preheader274.6, %.preheader274.7, %.preheader274.8, %.preheader274.9, %.preheader274.10, %.preheader274.11, %.preheader274.12, %.preheader274.13, %.preheader274.15, %.preheader274.16, %.preheader274.17, %.preheader274.18, %.preheader274.19, %.preheader274.20, %.preheader274.21, %.preheader274.22, %.preheader274.23, %.preheader274.24, %.preheader274.25, %.preheader274.26, %.preheader274.27, %.preheader274.28, %.preheader274.29, %.preheader274.30, %.preheader274.34, %.preheader274.35, %.preheader274.36, %.preheader274.37, %.preheader274.38, %.preheader274.39, %.preheader274.40, %.preheader274.41, %.preheader274.43, %.preheader274.44, %.preheader274.45
  %i.vq = sext i32 %i.sb to i64                   ; 3 uses
  %i.vr = getelementptr inbounds i8, ptr @evrc_lspq_nb_codebooks, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !31
  %i.vt = zext i8 %i.vs to i32                    ; 2 uses
  %i.vu = and i32 %i.sb, -3
  %.not.i200 = icmp eq i32 %i.vu, 0
  br i1 %.not.i200, label %.preheader40.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.ab, %bb.aa, %bb.z, %.thread
  %i.vv = phi i32 [ %i.vt, %.thread ], [ 2, %bb.z ], [ 2, %bb.aa ], [ 2, %bb.ab ] ; 2 uses
  %.pn = phi i64 [ %i.vq, %.thread ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ] ; 3 uses
  %.in = getelementptr inbounds [8 x i8], ptr @evrc_lspq_codebooks, i64 %.pn
  %i.vw = load ptr, ptr %.in, align 8, !tbaa !105
  %i.vx = getelementptr inbounds [8 x i8], ptr @evrc_lspq_codebooks_row_sizes, i64 %.pn
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !89
  %i.vz = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  %i.wa = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 6 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.vv, i32 1)
  %wide.trip.count69.i = zext nneg i32 %umax.i to i64
  %i.wb = add i64 %i.k, 96
  br label %bb.ac

.preheader40.i:                                   ; preds = %._crit_edge.i, %.thread
  %.not.i200265 = phi i1 [ true, %.thread ], [ false, %._crit_edge.i ]
  %i.wc = phi i32 [ %i.vt, %.thread ], [ %i.vv, %._crit_edge.i ]
  %i.wd = phi i64 [ %i.vq, %.thread ], [ %.pn, %._crit_edge.i ]
  %i.we = getelementptr i8, ptr %i.j, i64 96      ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.j, i64 100
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !32 ; 2 uses
  %i.wh = load float, ptr %i.we, align 8, !tbaa !32
  %i.wi = fcmp nsz ugt float %i.wg, %i.wh
  br i1 %i.wi, label %bb.ad, label %decode_lspf.exit.thread

bb.ac:                                            ; preds = %._crit_edge.i, %.lr.ph47.i
  %indvars.iv66.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next67.i, %._crit_edge.i ] ; 4 uses
  %.045.i = phi i32 [ 0, %.lr.ph47.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vy, i64 %indvars.iv66.i
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !31  ; 3 uses
  %.not56.i = icmp eq i8 %i.wk, 0
  br i1 %.not56.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv66.i
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !107 ; 2 uses
  %i.wn = zext i8 %i.wk to i64                    ; 7 uses
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.vz, i64 %indvars.iv66.i
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !98
  %i.wq = zext i16 %i.wp to i64                   ; 2 uses
  %i.wr = mul nuw nsw i64 %i.wq, %i.wn
  %i.ws = sext i32 %.045.i to i64                 ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %i.wr ; 6 uses
  %min.iters.check = icmp ult i8 %i.wk, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.wt = ptrtoaddr ptr %i.wm to i64
  %i.wu = shl nsw i64 %i.ws, 2
  %i.wv = add i64 %i.wb, %i.wu
  %i.ww = shl nuw nsw i64 %i.wq, 2
  %i.wx = mul nuw nsw i64 %i.ww, %i.wn
  %i.wy = add i64 %i.wx, %i.wt
  %i.wz = sub i64 %i.wy, %i.wv
  %diff.check = icmp ugt i64 %i.wz, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.wn, 248                     ; 4 uses
  %i.xa = add nsw i64 %n.vec, %i.ws               ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.wa, i64 %i.ws
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %wide.load = load <4 x float>, ptr %i.xb, align 4, !tbaa !32
  %wide.load351 = load <4 x float>, ptr %i.xc, align 4, !tbaa !32
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> %wide.load, ptr %gep, align 4, !tbaa !32
  store <4 x float> %wide.load351, ptr %i.xd, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xe = icmp eq i64 %index.next, %n.vec
  br i1 %i.xe, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.wn
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %indvars.iv.i.ph = phi i64 [ %i.ws, %vector.memcheck ], [ %i.ws, %.lr.ph.i ], [ %i.xa, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.wn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv61.i.prol = phi i64 [ %indvars.iv.next62.i.prol, %scalar.ph.prol ], [ %indvars.iv61.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv61.i.prol
  %i.xf = load float, ptr %gep.i.prol, align 4, !tbaa !32
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 3 uses
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %indvars.iv.i.prol
  store float %i.xf, ptr %i.xg, align 4, !tbaa !32
  %indvars.iv.next62.i.prol = add nuw nsw i64 %indvars.iv61.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !52

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.i.lcssa474.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %indvars.iv61.i.unr = phi i64 [ %indvars.iv61.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next62.i.prol, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.xh = sub nsw i64 %indvars.iv61.i.ph, %i.wn
  %i.xi = icmp ugt i64 %i.xh, -4
  br i1 %i.xi, label %._crit_edge.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i.3, %scalar.ph ], [ %indvars.iv61.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv61.i
  %i.xj = load float, ptr %gep.i, align 4, !tbaa !32
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %indvars.iv.i
  store float %i.xj, ptr %i.xk, align 4, !tbaa !32
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv61.i
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xm = load float, ptr %gep.i.1, align 4, !tbaa !32
  %i.xn = getelementptr [4 x i8], ptr %i.wa, i64 %indvars.iv.i
  %i.xo = getelementptr i8, ptr %i.xn, i64 4
  store float %i.xm, ptr %i.xo, align 4, !tbaa !32
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv61.i
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xq = load float, ptr %gep.i.2, align 4, !tbaa !32
  %i.xr = getelementptr [4 x i8], ptr %i.wa, i64 %indvars.iv.i
  %i.xs = getelementptr i8, ptr %i.xr, i64 8
  store float %i.xq, ptr %i.xs, align 4, !tbaa !32
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv61.i
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.xt, i64 12
  %i.xu = load float, ptr %gep.i.3, align 4, !tbaa !32
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.xv = getelementptr [4 x i8], ptr %i.wa, i64 %indvars.iv.i
  %i.xw = getelementptr i8, ptr %i.xv, i64 12
  store float %i.xu, ptr %i.xw, align 4, !tbaa !32
  %indvars.iv.next62.i.3 = add nuw nsw i64 %indvars.iv61.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next62.i.3, %i.wn
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %scalar.ph, !llvm.loop !53

._crit_edge.loopexit.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.i.lcssa = phi i64 [ %i.xa, %middle.block ], [ %indvars.iv.next.i.lcssa474.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.3, %scalar.ph ]
  %i.xx = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ac
  %.1.lcssa.i = phi i32 [ %.045.i, %bb.ac ], [ %i.xx, %._crit_edge.loopexit.i ]
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %.preheader40.i, label %bb.ac, !llvm.loop !54

bb.ad:                                            ; preds = %.preheader40.i
  %i.xy = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.xz = load float, ptr %i.xy, align 8, !tbaa !32 ; 2 uses
  %i.ya = fcmp nsz ugt float %i.xz, %i.wg
  br i1 %i.ya, label %bb.ae, label %decode_lspf.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.yb = getelementptr inbounds nuw i8, ptr %i.j, i64 108
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !32 ; 2 uses
  %i.yd = fcmp nsz ugt float %i.yc, %i.xz
  br i1 %i.yd, label %bb.af, label %decode_lspf.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ye = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.yf = load float, ptr %i.ye, align 8, !tbaa !32 ; 2 uses
  %i.yg = fcmp nsz ugt float %i.yf, %i.yc
  br i1 %i.yg, label %bb.ag, label %decode_lspf.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.yh = getelementptr inbounds nuw i8, ptr %i.j, i64 116
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !32 ; 2 uses
  %i.yj = fcmp nsz ugt float %i.yi, %i.yf
  br i1 %i.yj, label %bb.ah, label %decode_lspf.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.yk = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !32 ; 2 uses
  %i.ym = fcmp nsz ugt float %i.yl, %i.yi
  br i1 %i.ym, label %bb.ai, label %decode_lspf.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.yn = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !32 ; 2 uses
  %i.yp = fcmp nsz ugt float %i.yo, %i.yl
  br i1 %i.yp, label %bb.aj, label %decode_lspf.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.yq = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.yr = load float, ptr %i.yq, align 8, !tbaa !32 ; 2 uses
  %i.ys = fcmp nsz ugt float %i.yr, %i.yo
  br i1 %i.ys, label %bb.ak, label %decode_lspf.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.yt = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !32
  %i.yv = fcmp nsz ole float %i.yu, %i.yr         ; 2 uses
  %brmerge.i = or i1 %.not.i200265, %i.yv
  br i1 %brmerge.i, label %decode_lspf.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.ak
  %i.yw = getelementptr inbounds [8 x i8], ptr @evrc_lspq_codebooks_row_sizes, i64 %i.wd
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !89
  %i.yy = tail call i32 @llvm.smax.i32(i32 %i.wc, i32 2)
  %smax.i = add nsw i32 %i.yy, -1
  %wide.trip.count78.i = zext nneg i32 %smax.i to i64
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next76.i, %wide.trip.count78.i
  br i1 %exitcond79.not.i, label %decode_lspf.exit.thread267, label %bb.am, !llvm.loop !55

bb.am:                                            ; preds = %bb.al, %.lr.ph52.i
  %indvars.iv75.i = phi i64 [ 0, %.lr.ph52.i ], [ %indvars.iv.next76.i, %bb.al ] ; 2 uses
  %.251.i = phi i32 [ 0, %.lr.ph52.i ], [ %i.zc, %bb.al ]
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 %indvars.iv75.i
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !31
  %i.zb = zext i8 %i.za to i32
  %i.zc = add nuw nsw i32 %.251.i, %i.zb          ; 2 uses
  %i.zd = zext nneg i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.zd ; 2 uses
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !32
  %i.zg = getelementptr i8, ptr %i.ze, i64 -4
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !32
  %i.zi = fsub nsz float %i.zf, %i.zh
  %i.zj = fpext nsz float %i.zi to double
  %i.zk = fcmp nsz ugt double %i.zj, f0x3F804C26BE3B06CF
  br i1 %i.zk, label %bb.al, label %decode_lspf.exit.thread

decode_lspf.exit:                                 ; preds = %bb.ak
  br i1 %i.yv, label %decode_lspf.exit.thread, label %decode_lspf.exit.thread267

decode_lspf.exit.thread267:                       ; preds = %bb.al, %decode_lspf.exit
  %.off = add i32 %i.sb, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.an, label %.preheader273

.preheader273:                                    ; preds = %decode_lspf.exit.thread267
  %i.zl = getelementptr inbounds nuw i8, ptr %i.j, i64 91
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !103 ; 2 uses
  %i.zn = zext i8 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [12 x i8], ptr @evrc_energy_quant, i64 %i.zn ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.j, i64 2864
  %i.zq = load <2 x float>, ptr %i.zo, align 4, !tbaa !32
  %i.zr = fpext <2 x float> %i.zq to <2 x double>
  %i.zs = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> splat (double 1.000000e+01), <2 x double> %i.zr)
  %i.zt = fptrunc <2 x double> %i.zs to <2 x float>
  store <2 x float> %i.zt, ptr %i.zp, align 8, !tbaa !32
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !32
  %i.zw = fpext nsz float %i.zv to double
end_hunk_0
