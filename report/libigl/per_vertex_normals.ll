inline.NumInlined: 3143
inline.NumDeleted: 1837
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_:bb.a
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 12
  %i.bx = getelementptr i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !59 ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.by           ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !59 ; 2 uses
  %i.cc = fmul float %i.cb, %i.cb
  %i.cd = extractelement <2 x float> %i.bz, i64 1
  %i.ce = fadd float %i.cd, %i.cc
  %i.cf = extractelement <2 x float> %i.bz, i64 0
  %i.cg = fadd float %i.cf, %i.ce
  %i.ch = call noundef float @llvm.sqrt.f32(float %i.cg)
  store float %i.ch, ptr %i.bw, align 4, !tbaa !59
  %i.ci = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %i.cj = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %.neg
  br i1 %i.cj, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 12
  %i.cl = getelementptr i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cm = load <2 x float>, ptr %i.cl, align 4, !tbaa !59 ; 2 uses
  %i.cn = fmul <2 x float> %i.cm, %i.cm           ; 2 uses
  %i.co = getelementptr i8, ptr %i.cl, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !59 ; 2 uses
  %i.cq = fmul float %i.cp, %i.cp
  %i.cr = extractelement <2 x float> %i.cn, i64 1
  %i.cs = fadd float %i.cr, %i.cq
  %i.ct = extractelement <2 x float> %i.cn, i64 0
  %i.cu = fadd float %i.ct, %i.cs
  %i.cv = call noundef float @llvm.sqrt.f32(float %i.cu)
  store float %i.cv, ptr %i.ck, align 4, !tbaa !59
  %i.cw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.cw
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul i64 %i.cw, 12
  %i.cy = getelementptr i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !59 ; 2 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz           ; 2 uses
  %i.db = getelementptr i8, ptr %i.cy, i64 8
  %i.dc = load float, ptr %i.db, align 4, !tbaa !59 ; 2 uses
  %i.dd = fmul float %i.dc, %i.dc
  %i.de = extractelement <2 x float> %i.da, i64 1
  %i.df = fadd float %i.de, %i.dd
  %i.dg = extractelement <2 x float> %i.da, i64 0
  %i.dh = fadd float %i.dg, %i.df
  %i.di = call noundef float @llvm.sqrt.f32(float %i.dh)
  store float %i.di, ptr %i.cx, align 4, !tbaa !59
  %i.dj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dj, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %scalar.ph, !llvm.loop !444

common.resume:                                    ; preds = %bb.e, %.body.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.dk, %.body.i.i.i.i.i.i ], [ %i.hc, %bb.e ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i:                                ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %i.d, align 8, !tbaa !66
  call void @free(ptr noundef %i.dl) #14
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a, %bb.b
  %i.dm = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.b ], [ null, %bb.a ], [ %.pre.i.i.i.i.i.i.i, %middle.block ], [ %.pre.i.i.i.i.i.i.i, %scalar.ph ], [ %.pre.i.i.i.i.i.i.i, %scalar.ph.prol.loopexit ]
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !445
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !437, !nonnull !70, !align !375
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !51 ; 4 uses
  store i64 %i.dr, ptr %i.do, align 8, !tbaa !386
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !51
  %.not.i = icmp eq i64 %i.dt, %i.dr
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.dr, i64 noundef 3)
          to label %thread-pre-split unwind label %bb.e

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i64, ptr %i.ds, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit
  %i.du = phi i64 [ %.pr, %thread-pre-split ], [ %i.dr, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit ] ; 8 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !402   ; 9 uses
  %i.dw = icmp sgt i64 %i.du, 0
  br i1 %i.dw, label %.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIfEESA_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEENS0_9assign_opIffEELi0EEELi0ELi1EE3runERSV_.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !447 ; 11 uses
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !449 ; 4 uses
  %min.iters.check36 = icmp ult i64 %i.du, 8
  br i1 %min.iters.check36, label %scalar.ph35.preheader, label %vector.scevcheck17

vector.scevcheck17:                               ; preds = %.lr.ph.i
  %i.dz = add nsw i64 %i.du, -1
  %mul18 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dz, i64 12) ; 2 uses
  %mul.result19 = extractvalue { i64, i1 } %mul18, 0 ; 6 uses
  %mul.overflow20 = extractvalue { i64, i1 } %mul18, 1
  %i.ea = getelementptr i8, ptr %i.dv, i64 %mul.result19
  %i.eb = icmp ult ptr %i.ea, %i.dv
  %scevgep21 = getelementptr i8, ptr %i.dv, i64 4 ; 2 uses
  %i.ec = getelementptr i8, ptr %scevgep21, i64 %mul.result19
  %i.ed = icmp ult ptr %i.ec, %scevgep21
  %scevgep22 = getelementptr i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ee = getelementptr i8, ptr %scevgep22, i64 %mul.result19
  %i.ef = icmp ult ptr %i.ee, %scevgep22
  %i.eg = getelementptr i8, ptr %i.dx, i64 %mul.result19
  %i.eh = icmp ult ptr %i.eg, %i.dx
  %scevgep23 = getelementptr i8, ptr %i.dx, i64 4 ; 2 uses
  %i.ei = getelementptr i8, ptr %scevgep23, i64 %mul.result19
  %i.ej = icmp ult ptr %i.ei, %scevgep23
  %scevgep24 = getelementptr i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ek = getelementptr i8, ptr %scevgep24, i64 %mul.result19
  %i.el = icmp ult ptr %i.ek, %scevgep24
  %op.rdx = or i1 %mul.overflow20, %i.ed
  %op.rdx48.a = or i1 %i.eb, %i.ef
  %op.rdx49.a = or i1 %i.eh, %i.ej
  %op.rdx50.a = or i1 %op.rdx, %op.rdx48.a
  %op.rdx51.a = or i1 %op.rdx49.a, %i.el
  %op.rdx52 = or i1 %op.rdx50.a, %op.rdx51.a
  br i1 %op.rdx52, label %scalar.ph35.preheader, label %vector.memcheck25

vector.memcheck25:                                ; preds = %vector.scevcheck17
  %i.em = shl i64 %i.du, 2
  %scevgep26 = getelementptr i8, ptr %i.dy, i64 %i.em
  %i.en = mul i64 %i.du, 12                       ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.dv, i64 %i.en ; 2 uses
  %scevgep28 = getelementptr i8, ptr %i.dx, i64 %i.en
  %bound029 = icmp ult ptr %i.dy, %scevgep27
  %bound130 = icmp ult ptr %i.dv, %scevgep26
  %found.conflict31 = and i1 %bound029, %bound130
  %bound032 = icmp ult ptr %i.dv, %scevgep28
  %bound133 = icmp ult ptr %i.dx, %scevgep27
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict31, %found.conflict34
  br i1 %conflict.rdx, label %scalar.ph35.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck25
  %n.vec39 = and i64 %i.du, 9223372036854775804   ; 3 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph37
  %index41 = phi i64 [ 0, %vector.ph37 ], [ %index.next44, %vector.body40 ] ; 6 uses
  %i.eo = mul i64 %index41, 12                    ; 2 uses
  %i.ep = mul i64 %index41, 12
  %i.eq = mul i64 %index41, 12
  %i.er = mul i64 %index41, 12
  %i.es = getelementptr i8, ptr %i.dv, i64 %i.eo
  %i.et = getelementptr i8, ptr %i.dx, i64 %i.eo  ; 3 uses
  %i.eu = getelementptr i8, ptr %i.dx, i64 %i.ep  ; 3 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 12
  %i.ew = getelementptr i8, ptr %i.dx, i64 %i.eq  ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 24
  %i.ey = getelementptr i8, ptr %i.dx, i64 %i.er  ; 3 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 36
  %i.fa = getelementptr [4 x i8], ptr %i.dy, i64 %index41 ; 3 uses
  %wide.load = load <4 x float>, ptr %i.fa, align 4, !tbaa !59, !alias.scope !451, !noalias !454
  %i.fb = load float, ptr %i.et, align 4, !tbaa !59, !alias.scope !456
  %i.fc = load float, ptr %i.ev, align 4, !tbaa !59, !alias.scope !456
  %i.fd = load float, ptr %i.ex, align 4, !tbaa !59, !alias.scope !456
  %i.fe = load float, ptr %i.ez, align 4, !tbaa !59, !alias.scope !456
  %i.ff = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 1
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 2
  %i.fi = insertelement <4 x float> %i.fh, float %i.fe, i64 3
  %i.fj = getelementptr i8, ptr %i.et, i64 4
  %i.fk = getelementptr i8, ptr %i.eu, i64 16
  %i.fl = getelementptr i8, ptr %i.ew, i64 28
  %i.fm = getelementptr i8, ptr %i.ey, i64 40
  %wide.load42.a = load <4 x float>, ptr %i.fa, align 4, !tbaa !59, !alias.scope !451, !noalias !454
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !59, !alias.scope !456
  %i.fo = load float, ptr %i.fk, align 4, !tbaa !59, !alias.scope !456
  %i.fp = load float, ptr %i.fl, align 4, !tbaa !59, !alias.scope !456
  %i.fq = load float, ptr %i.fm, align 4, !tbaa !59, !alias.scope !456
  %i.fr = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 1
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 2
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 3
  %i.fv = getelementptr i8, ptr %i.et, i64 8
  %i.fw = getelementptr i8, ptr %i.eu, i64 20
  %i.fx = getelementptr i8, ptr %i.ew, i64 32
  %i.fy = getelementptr i8, ptr %i.ey, i64 44
  %wide.load43 = load <4 x float>, ptr %i.fa, align 4, !tbaa !59, !alias.scope !451, !noalias !454
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !59, !alias.scope !456
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !59, !alias.scope !456
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !59, !alias.scope !456
  %i.gc = load float, ptr %i.fy, align 4, !tbaa !59, !alias.scope !456
  %i.gd = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 1
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 2
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 3
  %i.gh = fdiv <4 x float> %i.gg, %wide.load43
  %4 = shufflevector <4 x float> %i.fi, <4 x float> %i.fu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x float> %wide.load, <4 x float> %wide.load42.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = fdiv <8 x float> %4, %5
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %6, <8 x float> %i.gi, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.es, align 4, !tbaa !59, !alias.scope !454, !noalias !456
  %index.next44 = add nuw i64 %index41, 4         ; 2 uses
  %i.gj = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.gj, label %middle.block45, label %vector.body40, !llvm.loop !458

middle.block45:                                   ; preds = %vector.body40
  %cmp.n46 = icmp eq i64 %i.du, %n.vec39
  br i1 %cmp.n46, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIfEESA_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEENS0_9assign_opIffEELi0EEELi0ELi1EE3runERSV_.exit, label %scalar.ph35.preheader

scalar.ph35.preheader:                            ; preds = %vector.memcheck25, %vector.scevcheck17, %.lr.ph.i, %middle.block45
  %.05.i.ph = phi i64 [ 0, %vector.memcheck25 ], [ 0, %vector.scevcheck17 ], [ 0, %.lr.ph.i ], [ %n.vec39, %middle.block45 ]
  br label %scalar.ph35

scalar.ph35:                                      ; preds = %scalar.ph35.preheader, %scalar.ph35
  %.05.i = phi i64 [ %i.ha, %scalar.ph35 ], [ %.05.i.ph, %scalar.ph35.preheader ] ; 3 uses
  %.idx.i.i.i.i.i = mul i64 %.05.i, 12            ; 2 uses
  %i.gk = getelementptr i8, ptr %i.dv, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.gl = getelementptr i8, ptr %i.dx, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.gm = getelementptr [4 x i8], ptr %i.dy, i64 %.05.i ; 3 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !59
  %i.go = load float, ptr %i.gl, align 4, !tbaa !59
  %i.gp = fdiv float %i.go, %i.gn
  store float %i.gp, ptr %i.gk, align 4, !tbaa !59
  %i.gq = getelementptr i8, ptr %i.gk, i64 4
  %i.gr = getelementptr i8, ptr %i.gl, i64 4
  %i.gs = load float, ptr %i.gm, align 4, !tbaa !59
  %i.gt = load float, ptr %i.gr, align 4, !tbaa !59
  %i.gu = fdiv float %i.gt, %i.gs
  store float %i.gu, ptr %i.gq, align 4, !tbaa !59
  %i.gv = getelementptr i8, ptr %i.gk, i64 8
  %i.gw = getelementptr i8, ptr %i.gl, i64 8
  %i.gx = load float, ptr %i.gm, align 4, !tbaa !59
  %i.gy = load float, ptr %i.gw, align 4, !tbaa !59
  %i.gz = fdiv float %i.gy, %i.gx
  store float %i.gz, ptr %i.gv, align 4, !tbaa !59
  %i.ha = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ha, %i.du
  br i1 %exitcond.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIfEESA_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEENS0_9assign_opIffEELi0EEELi0ELi1EE3runERSV_.exit, label %scalar.ph35, !llvm.loop !459

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIfEESA_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEENS0_9assign_opIffEELi0EEELi0ELi1EE3runERSV_.exit: ; preds = %scalar.ph35, %middle.block45, %bb.d
  %i.hb = load ptr, ptr %i.d, align 8, !tbaa !66
  call void @free(ptr noundef %i.hb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

bb.e:                                             ; preds = %bb.c
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = load ptr, ptr %i.d, align 8, !tbaa !66
  call void @free(ptr noundef %i.hd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.i) #14
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #16 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !66
  br label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !68
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.f) #14
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !55
  store i64 %3, ptr %i.c, align 8, !tbaa !57
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

end_hunk_0
