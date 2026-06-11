inline.NumInlined: 12593
inline.NumDeleted: 3318
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IffEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit89, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ak

bb.ac:                                            ; preds = %.thread
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dn = load i32, ptr %i.ci, align 8, !tbaa !49 ; 6 uses
  %i.do = load i32, ptr %i.bk, align 4, !tbaa !20 ; 5 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph, label %._crit_edge114

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.dq = load ptr, ptr %i.cj, align 8, !tbaa !917 ; 2 uses
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1509, !nonnull !83, !align !420
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !115 ; 2 uses
  %i.dt = load ptr, ptr %i.cl, align 8, !tbaa !1512, !nonnull !83, !align !420
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !52 ; 2 uses
  %i.dv = sext i32 %i.dn to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.do to i64        ; 5 uses
  %i.dw = sub nsw i64 %wide.trip.count, %i.dv     ; 3 uses
  %min.iters.check183 = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check183, label %scalar.ph182.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph
  %n.vec186 = and i64 %i.dw, -8                   ; 3 uses
  %i.dx = add nsw i64 %n.vec186, %i.dv
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph184
  %index188 = phi i64 [ 0, %vector.ph184 ], [ %index.next195, %vector.body187 ] ; 2 uses
  %i.dy = add i64 %index188, %i.dv                ; 4 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load189 = load <4 x float>, ptr %i.dz, align 4, !tbaa !54
  %wide.load190 = load <4 x float>, ptr %i.ea, align 4, !tbaa !54
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dy ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load191 = load <4 x float>, ptr %i.eb, align 4, !tbaa !54
  %wide.load192 = load <4 x float>, ptr %i.ec, align 4, !tbaa !54
  %i.ed = fsub <4 x float> %wide.load189, %wide.load191
  %i.ee = fsub <4 x float> %wide.load190, %wide.load192
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dy ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load193 = load <4 x float>, ptr %i.ef, align 4, !tbaa !54
  %wide.load194 = load <4 x float>, ptr %i.eg, align 4, !tbaa !54
  %i.eh = fmul <4 x float> %i.ed, %wide.load193
  %i.ei = fmul <4 x float> %i.ee, %wide.load194
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.dy ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <4 x float> %i.eh, ptr %i.ej, align 4, !tbaa !54
  store <4 x float> %i.ei, ptr %i.ek, align 4, !tbaa !54
  %index.next195 = add nuw i64 %index188, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.el, label %middle.block196, label %vector.body187, !llvm.loop !1513

middle.block196:                                  ; preds = %vector.body187
  %cmp.n197 = icmp eq i64 %i.dw, %n.vec186
  br i1 %cmp.n197, label %._crit_edge, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %.lr.ph, %middle.block196
  %indvars.iv.ph = phi i64 [ %i.dv, %.lr.ph ], [ %i.dx, %middle.block196 ]
  br label %scalar.ph182

._crit_edge:                                      ; preds = %scalar.ph182, %middle.block196
  %i.em = load ptr, ptr %i.cm, align 8, !tbaa !1514, !nonnull !83
  %i.en = load i8, ptr %i.em, align 1, !tbaa !99, !range !82, !noundef !83
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.lr.ph106, label %.loopexit102

.lr.ph106:                                        ; preds = %._crit_edge
  %i.ep = load ptr, ptr %i.cn, align 8, !tbaa !1515, !nonnull !83, !align !420
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !115 ; 2 uses
  %i.er = load ptr, ptr %i.co, align 8, !tbaa !1516, !nonnull !83, !align !420
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !115 ; 2 uses
  %i.et = sext i32 %i.dn to i64                   ; 3 uses
  %wide.trip.count122 = sext i32 %i.do to i64
  %i.eu = sub nsw i64 %wide.trip.count, %i.dv     ; 3 uses
  %min.iters.check170 = icmp ult i64 %i.eu, 4
  br i1 %min.iters.check170, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph106
  %n.vec173 = and i64 %i.eu, -4                   ; 3 uses
  %i.ev = add nsw i64 %n.vec173, %i.et
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph171
  %index175 = phi i64 [ 0, %vector.ph171 ], [ %index.next178, %vector.body174 ] ; 2 uses
  %i.ew = add i64 %index175, %i.et                ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ew
  %wide.load176 = load <4 x float>, ptr %i.ex, align 4, !tbaa !54 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ew
  %wide.load177 = load <4 x float>, ptr %i.ey, align 4, !tbaa !54 ; 2 uses
  %i.ez = fmul <4 x float> %wide.load176, %wide.load177
  %i.fa = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ez)
  %i.fb = fadd <4 x float> %i.fa, splat (float 1.000000e+00)
  %i.fc = fdiv <4 x float> splat (float 1.000000e+00), %i.fb ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ew
  store <4 x float> %i.fc, ptr %i.fd, align 4, !tbaa !54
  %i.fe = fadd <4 x float> %wide.load177, splat (float -1.000000e+00)
  %i.ff = fmul <4 x float> %wide.load176, %i.fe
  %i.fg = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ff)
  %i.fh = fadd <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fdiv <4 x float> splat (float 1.000000e+00), %i.fh
  %i.fj = fsub <4 x float> %i.fi, %i.fc
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ew
  store <4 x float> %i.fj, ptr %i.fk, align 4, !tbaa !54
  %index.next178 = add nuw i64 %index175, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next178, %n.vec173
  br i1 %i.fl, label %middle.block179, label %vector.body174, !llvm.loop !1517

middle.block179:                                  ; preds = %vector.body174
  %cmp.n180 = icmp eq i64 %i.eu, %n.vec173
  br i1 %cmp.n180, label %.lr.ph108, label %scalar.ph169.preheader

scalar.ph169.preheader:                           ; preds = %.lr.ph106, %middle.block179
  %indvars.iv119.ph = phi i64 [ %i.et, %.lr.ph106 ], [ %i.ev, %middle.block179 ]
  br label %scalar.ph169

scalar.ph182:                                     ; preds = %scalar.ph182.preheader, %scalar.ph182
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph182 ], [ %indvars.iv.ph, %scalar.ph182.preheader ] ; 5 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %indvars.iv
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !54
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !54
  %i.fq = fsub float %i.fn, %i.fp
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !54
  %i.ft = fmul float %i.fq, %i.fs
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv
  store float %i.ft, ptr %i.fu, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph182, !llvm.loop !1518

.lr.ph108:                                        ; preds = %scalar.ph169, %middle.block179
  %i.fv = load ptr, ptr %i.cn, align 8, !tbaa !1515, !nonnull !83, !align !420
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !115 ; 2 uses
  %i.fx = load ptr, ptr %i.co, align 8, !tbaa !1516, !nonnull !83, !align !420
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !115 ; 2 uses
  %i.fz = sext i32 %i.dn to i64                   ; 3 uses
  %wide.trip.count127 = sext i32 %i.do to i64
  %i.ga = sub nsw i64 %wide.trip.count, %i.dv     ; 3 uses
  %min.iters.check154 = icmp ult i64 %i.ga, 4
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph108
  %n.vec157 = and i64 %i.ga, -4                   ; 3 uses
  %i.gb = add nsw i64 %n.vec157, %i.fz
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next165, %vector.body158 ] ; 2 uses
  %i.gc = add i64 %index159, %i.fz                ; 5 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gc
  %wide.load160 = load <4 x float>, ptr %i.gd, align 4, !tbaa !54
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gc
  %wide.load161 = load <4 x float>, ptr %i.ge, align 4, !tbaa !54
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.gc ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.gf, align 4, !tbaa !54
  %i.gg = fsub <4 x float> %wide.load161, %wide.load162
  %i.gh = fmul <4 x float> %wide.load160, %i.gg
  %i.gi = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gh)
  %i.gj = fadd <4 x float> %i.gi, splat (float 1.000000e+00)
  %i.gk = fdiv <4 x float> splat (float 1.000000e+00), %i.gj
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.gc
  %wide.load163 = load <4 x float>, ptr %i.gl, align 4, !tbaa !54
  %i.gm = fsub <4 x float> %i.gk, %wide.load163
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.gc
  %wide.load164 = load <4 x float>, ptr %i.gn, align 4, !tbaa !54
  %i.go = fdiv <4 x float> %i.gm, %wide.load164
  store <4 x float> %i.go, ptr %i.gf, align 4, !tbaa !54
  %index.next165 = add nuw i64 %index159, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next165, %n.vec157
  br i1 %i.gp, label %middle.block166, label %vector.body158, !llvm.loop !1519

middle.block166:                                  ; preds = %vector.body158
  %cmp.n167 = icmp eq i64 %i.ga, %n.vec157
  br i1 %cmp.n167, label %.loopexit102, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.lr.ph108, %middle.block166
  %indvars.iv124.ph = phi i64 [ %i.fz, %.lr.ph108 ], [ %i.gb, %middle.block166 ]
  br label %scalar.ph153

scalar.ph169:                                     ; preds = %scalar.ph169.preheader, %scalar.ph169
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %scalar.ph169 ], [ %indvars.iv119.ph, %scalar.ph169.preheader ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv119
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !54 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv119
  %6 = load float, ptr %i.gs, align 4, !tbaa !54  ; 2 uses
  %7 = fmul float %i.gr, %6
  %8 = call float @llvm.exp.f32(float %7)
  %9 = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv119
  %10 = fadd float %6, -1.000000e+00
  %11 = fmul float %i.gr, %10
  %i.gt = call float @llvm.exp.f32(float %11)
  %i.gu = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %8, i64 1
  %i.gw = fadd <2 x float> %i.gv, splat (float 1.000000e+00)
  %i.gx = fdiv <2 x float> splat (float 1.000000e+00), %i.gw ; 2 uses
  %i.gy = extractelement <2 x float> %i.gx, i64 1 ; 2 uses
  store float %i.gy, ptr %9, align 4, !tbaa !54
  %i.gz = extractelement <2 x float> %i.gx, i64 0
  %i.ha = fsub float %i.gz, %i.gy
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv119
  store float %i.ha, ptr %i.hb, align 4, !tbaa !54
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.lr.ph108, label %scalar.ph169, !llvm.loop !1520

scalar.ph153:                                     ; preds = %scalar.ph153.preheader, %scalar.ph153
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph153 ], [ %indvars.iv124.ph, %scalar.ph153.preheader ] ; 6 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv124
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !54
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv124
  %i.hf = load float, ptr %i.he, align 4, !tbaa !54
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv124 ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !54
  %i.hi = fsub float %i.hf, %i.hh
  %i.hj = fmul float %i.hd, %i.hi
  %i.hk = call float @llvm.exp.f32(float %i.hj)
  %i.hl = fadd float %i.hk, 1.000000e+00
  %i.hm = fdiv float 1.000000e+00, %i.hl
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv124
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !54
  %i.hp = fsub float %i.hm, %i.ho
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv124
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !54
  %i.hs = fdiv float %i.hp, %i.hr
  store float %i.hs, ptr %i.hg, align 4, !tbaa !54
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.loopexit102, label %scalar.ph153, !llvm.loop !1521

.loopexit102:                                     ; preds = %scalar.ph153, %middle.block166, %._crit_edge
  %i.ht = load ptr, ptr %i.cp, align 8, !tbaa !1522, !nonnull !83
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !99, !range !82, !noundef !83
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %.lr.ph110, label %.lr.ph113.preheader

.lr.ph110:                                        ; preds = %.loopexit102
  %i.hw = load ptr, ptr %i.cq, align 8, !tbaa !1523, !nonnull !83, !align !420
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !115 ; 2 uses
  %i.hy = load ptr, ptr %i.cr, align 8, !tbaa !1524, !nonnull !83, !align !420
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !115 ; 2 uses
  %i.ia = sext i32 %i.dn to i64                   ; 3 uses
  %wide.trip.count132 = sext i32 %i.do to i64
  %i.ib = sub nsw i64 %wide.trip.count, %i.dv     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ib, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110
  %n.vec = and i64 %i.ib, -8                      ; 3 uses
  %i.ic = add nsw i64 %n.vec, %i.ia
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.id = add i64 %index, %i.ia                   ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.id ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.id ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %wide.load = load <4 x float>, ptr %i.ie, align 4, !tbaa !54
  %wide.load148 = load <4 x float>, ptr %i.ih, align 4, !tbaa !54
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %wide.load149 = load <4 x float>, ptr %i.ig, align 4, !tbaa !54 ; 2 uses
  %wide.load150 = load <4 x float>, ptr %i.ii, align 4, !tbaa !54 ; 2 uses
  %i.ij = fsub <4 x float> splat (float 1.000000e+00), %wide.load149
  %i.ik = fsub <4 x float> splat (float 1.000000e+00), %wide.load150
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load151 = load <4 x float>, ptr %i.if, align 4, !tbaa !54
  %wide.load152 = load <4 x float>, ptr %i.il, align 4, !tbaa !54
  %i.im = fmul <4 x float> %wide.load149, %wide.load151
  %i.in = fmul <4 x float> %wide.load150, %wide.load152
  %i.io = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.ij, <4 x float> %i.im)
  %i.ip = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load148, <4 x float> %i.ik, <4 x float> %i.in)
  store <4 x float> %i.io, ptr %i.ig, align 4, !tbaa !54
  store <4 x float> %i.ip, ptr %i.ii, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %middle.block, label %vector.body, !llvm.loop !1525

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ib, %n.vec
  br i1 %cmp.n, label %.lr.ph113.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph110, %middle.block
  %indvars.iv129.ph = phi i64 [ %i.ia, %.lr.ph110 ], [ %i.ic, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph ], [ %indvars.iv129.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv129
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv129
  %i.it = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv129 ; 2 uses
  %i.iu = load float, ptr %i.ir, align 4, !tbaa !54
  %i.iv = load float, ptr %i.it, align 4, !tbaa !54 ; 2 uses
  %i.iw = fsub float 1.000000e+00, %i.iv
  %i.ix = load float, ptr %i.is, align 4, !tbaa !54
  %i.iy = fmul float %i.iv, %i.ix
  %i.iz = call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.iw, float %i.iy)
  store float %i.iz, ptr %i.it, align 4, !tbaa !54
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.lr.ph113.preheader, label %scalar.ph, !llvm.loop !1526

.lr.ph113.preheader:                              ; preds = %scalar.ph, %.loopexit102, %middle.block
  %i.ja = sext i32 %i.dn to i64
  br label %.lr.ph113

._crit_edge114:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.ae
  %indvars.iv134 = phi i64 [ %i.ja, %.lr.ph113.preheader ], [ %indvars.iv.next135, %bb.ae ] ; 3 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv134
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !54
  %i.jd = load ptr, ptr %5, align 8, !tbaa !909
  %i.je = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jd)
          to label %.noexc94 unwind label %bb.af

.noexc94:                                         ; preds = %.lr.ph113
  %i.jf = icmp eq i32 %i.je, 3
  br i1 %i.jf, label %bb.ad, label %bb.ae, !prof !48

bb.ad:                                            ; preds = %.noexc94
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc94, %bb.ad
  %i.jg = load ptr, ptr %i.cs, align 8, !tbaa !917
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %indvars.iv134
  store float %i.jc, ptr %i.jh, align 4, !tbaa !54
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.ji = load i32, ptr %i.bk, align 4, !tbaa !20
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next135, %i.jj
  br i1 %i.jk, label %.lr.ph113, label %._crit_edge114, !llvm.loop !1527

bb.af:                                            ; preds = %bb.ad, %.lr.ph113
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge114
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1528

bb.ah:                                            ; preds = %bb.ag, %._crit_edge114
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.jm, %bb.ah ], [ %i.jl, %bb.af ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %5) #31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ai ], [ %i.dm, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.al

bb.ak:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit83
  ret void

bb.al:                                            ; preds = %bb.aj, %bb.q
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.q ], [ %.pn.pn, %bb.aj ]
  resume { ptr, i32 } %.pn77.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IfhEEbRNS1_8ImageBufERKS5_NS1_4spanIKfLm18446744073709551615EEESB_SB_SB_SB_SB_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !151
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L15contrast_remap_IfhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(88) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IfhEEbRNS1_8ImageBufERKS5_NS1_4spanIKfLm18446744073709551615EEESB_SB_SB_SB_SB_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IfhEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L15contrast_remap_IfhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !894
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IfhEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IfhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit89, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ak

bb.ac:                                            ; preds = %.thread
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dp = load i32, ptr %i.ck, align 8, !tbaa !49 ; 6 uses
  %i.dq = load i32, ptr %i.bm, align 4, !tbaa !20 ; 5 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %._crit_edge114

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.ds = load ptr, ptr %i.cl, align 8, !tbaa !917 ; 2 uses
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !1533, !nonnull !83, !align !420
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !115 ; 2 uses
  %i.dv = load ptr, ptr %i.cn, align 8, !tbaa !1536, !nonnull !83, !align !420
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !52 ; 2 uses
  %i.dx = sext i32 %i.dp to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.dq to i64        ; 5 uses
  %i.dy = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check183 = icmp ult i64 %i.dy, 8
  br i1 %min.iters.check183, label %scalar.ph182.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph
  %n.vec186 = and i64 %i.dy, -8                   ; 3 uses
  %i.dz = add nsw i64 %n.vec186, %i.dx
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph184
  %index188 = phi i64 [ 0, %vector.ph184 ], [ %index.next195, %vector.body187 ] ; 2 uses
  %i.ea = add i64 %index188, %i.dx                ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ds, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %wide.load189 = load <4 x i8>, ptr %i.eb, align 1, !tbaa !47
  %wide.load190 = load <4 x i8>, ptr %i.ec, align 1, !tbaa !47
  %i.ed = uitofp <4 x i8> %wide.load189 to <4 x float>
  %i.ee = uitofp <4 x i8> %wide.load190 to <4 x float>
  %i.ef = fmul nnan <4 x float> %i.ed, splat (float f0x3B808081)
  %i.eg = fmul nnan <4 x float> %i.ee, splat (float f0x3B808081)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ea ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load191 = load <4 x float>, ptr %i.eh, align 4, !tbaa !54
  %wide.load192 = load <4 x float>, ptr %i.ei, align 4, !tbaa !54
  %i.ej = fsub <4 x float> %i.ef, %wide.load191
  %i.ek = fsub <4 x float> %i.eg, %wide.load192
  %i.el = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ea ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load193 = load <4 x float>, ptr %i.el, align 4, !tbaa !54
  %wide.load194 = load <4 x float>, ptr %i.em, align 4, !tbaa !54
  %i.en = fmul <4 x float> %i.ej, %wide.load193
  %i.eo = fmul <4 x float> %i.ek, %wide.load194
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ea ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> %i.en, ptr %i.ep, align 4, !tbaa !54
  store <4 x float> %i.eo, ptr %i.eq, align 4, !tbaa !54
  %index.next195 = add nuw i64 %index188, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.er, label %middle.block196, label %vector.body187, !llvm.loop !1537

middle.block196:                                  ; preds = %vector.body187
  %cmp.n197 = icmp eq i64 %i.dy, %n.vec186
  br i1 %cmp.n197, label %._crit_edge, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %.lr.ph, %middle.block196
  %indvars.iv.ph = phi i64 [ %i.dx, %.lr.ph ], [ %i.dz, %middle.block196 ]
  br label %scalar.ph182

._crit_edge:                                      ; preds = %scalar.ph182, %middle.block196
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !1538, !nonnull !83
  %i.et = load i8, ptr %i.es, align 1, !tbaa !99, !range !82, !noundef !83
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.lr.ph106, label %.loopexit102

.lr.ph106:                                        ; preds = %._crit_edge
  %i.ev = load ptr, ptr %i.cp, align 8, !tbaa !1539, !nonnull !83, !align !420
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !115 ; 2 uses
  %i.ex = load ptr, ptr %i.cq, align 8, !tbaa !1540, !nonnull !83, !align !420
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !115 ; 2 uses
  %i.ez = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count122 = sext i32 %i.dq to i64
  %i.fa = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check170 = icmp ult i64 %i.fa, 4
  br i1 %min.iters.check170, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph106
  %n.vec173 = and i64 %i.fa, -4                   ; 3 uses
  %i.fb = add nsw i64 %n.vec173, %i.ez
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph171
  %index175 = phi i64 [ 0, %vector.ph171 ], [ %index.next178, %vector.body174 ] ; 2 uses
  %i.fc = add i64 %index175, %i.ez                ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fc
  %wide.load176 = load <4 x float>, ptr %i.fd, align 4, !tbaa !54 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fc
  %wide.load177 = load <4 x float>, ptr %i.fe, align 4, !tbaa !54 ; 2 uses
  %i.ff = fmul <4 x float> %wide.load176, %wide.load177
  %i.fg = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ff)
  %i.fh = fadd <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fdiv <4 x float> splat (float 1.000000e+00), %i.fh ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.fc
  store <4 x float> %i.fi, ptr %i.fj, align 4, !tbaa !54
  %i.fk = fadd <4 x float> %wide.load177, splat (float -1.000000e+00)
  %i.fl = fmul <4 x float> %wide.load176, %i.fk
  %i.fm = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = fdiv <4 x float> splat (float 1.000000e+00), %i.fn
  %i.fp = fsub <4 x float> %i.fo, %i.fi
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.fc
  store <4 x float> %i.fp, ptr %i.fq, align 4, !tbaa !54
  %index.next178 = add nuw i64 %index175, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next178, %n.vec173
  br i1 %i.fr, label %middle.block179, label %vector.body174, !llvm.loop !1541

middle.block179:                                  ; preds = %vector.body174
  %cmp.n180 = icmp eq i64 %i.fa, %n.vec173
  br i1 %cmp.n180, label %.lr.ph108, label %scalar.ph169.preheader

scalar.ph169.preheader:                           ; preds = %.lr.ph106, %middle.block179
  %indvars.iv119.ph = phi i64 [ %i.ez, %.lr.ph106 ], [ %i.fb, %middle.block179 ]
  br label %scalar.ph169

scalar.ph182:                                     ; preds = %scalar.ph182.preheader, %scalar.ph182
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph182 ], [ %indvars.iv.ph, %scalar.ph182.preheader ] ; 5 uses
  %i.fs = getelementptr inbounds i8, ptr %i.ds, i64 %indvars.iv
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !47
  %i.fu = uitofp i8 %i.ft to float
  %i.fv = fmul nnan float %i.fu, f0x3B808081
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !54
  %i.fy = fsub float %i.fv, %i.fx
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !54
  %i.gb = fmul float %i.fy, %i.ga
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv
  store float %i.gb, ptr %i.gc, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph182, !llvm.loop !1542

.lr.ph108:                                        ; preds = %scalar.ph169, %middle.block179
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !1539, !nonnull !83, !align !420
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !115 ; 2 uses
  %i.gf = load ptr, ptr %i.cq, align 8, !tbaa !1540, !nonnull !83, !align !420
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !115 ; 2 uses
  %i.gh = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count127 = sext i32 %i.dq to i64
  %i.gi = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check154 = icmp ult i64 %i.gi, 4
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph108
  %n.vec157 = and i64 %i.gi, -4                   ; 3 uses
  %i.gj = add nsw i64 %n.vec157, %i.gh
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next165, %vector.body158 ] ; 2 uses
  %i.gk = add i64 %index159, %i.gh                ; 5 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gk
  %wide.load160 = load <4 x float>, ptr %i.gl, align 4, !tbaa !54
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gk
  %wide.load161 = load <4 x float>, ptr %i.gm, align 4, !tbaa !54
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.gk ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.gn, align 4, !tbaa !54
  %i.go = fsub <4 x float> %wide.load161, %wide.load162
  %i.gp = fmul <4 x float> %wide.load160, %i.go
  %i.gq = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gp)
  %i.gr = fadd <4 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = fdiv <4 x float> splat (float 1.000000e+00), %i.gr
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.gk
  %wide.load163 = load <4 x float>, ptr %i.gt, align 4, !tbaa !54
  %i.gu = fsub <4 x float> %i.gs, %wide.load163
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.gk
  %wide.load164 = load <4 x float>, ptr %i.gv, align 4, !tbaa !54
  %i.gw = fdiv <4 x float> %i.gu, %wide.load164
  store <4 x float> %i.gw, ptr %i.gn, align 4, !tbaa !54
  %index.next165 = add nuw i64 %index159, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next165, %n.vec157
  br i1 %i.gx, label %middle.block166, label %vector.body158, !llvm.loop !1543

middle.block166:                                  ; preds = %vector.body158
  %cmp.n167 = icmp eq i64 %i.gi, %n.vec157
  br i1 %cmp.n167, label %.loopexit102, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.lr.ph108, %middle.block166
  %indvars.iv124.ph = phi i64 [ %i.gh, %.lr.ph108 ], [ %i.gj, %middle.block166 ]
  br label %scalar.ph153

scalar.ph169:                                     ; preds = %scalar.ph169.preheader, %scalar.ph169
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %scalar.ph169 ], [ %indvars.iv119.ph, %scalar.ph169.preheader ] ; 5 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv119
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !54 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv119
  %6 = load float, ptr %i.ha, align 4, !tbaa !54  ; 2 uses
  %7 = fmul float %i.gz, %6
  %8 = call float @llvm.exp.f32(float %7)
  %9 = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv119
  %10 = fadd float %6, -1.000000e+00
  %11 = fmul float %i.gz, %10
  %i.hb = call float @llvm.exp.f32(float %11)
  %i.hc = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hd = insertelement <2 x float> %i.hc, float %8, i64 1
  %i.he = fadd <2 x float> %i.hd, splat (float 1.000000e+00)
  %i.hf = fdiv <2 x float> splat (float 1.000000e+00), %i.he ; 2 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 1 ; 2 uses
  store float %i.hg, ptr %9, align 4, !tbaa !54
  %i.hh = extractelement <2 x float> %i.hf, i64 0
  %i.hi = fsub float %i.hh, %i.hg
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv119
  store float %i.hi, ptr %i.hj, align 4, !tbaa !54
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.lr.ph108, label %scalar.ph169, !llvm.loop !1544

scalar.ph153:                                     ; preds = %scalar.ph153.preheader, %scalar.ph153
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph153 ], [ %indvars.iv124.ph, %scalar.ph153.preheader ] ; 6 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv124
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !54
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv124
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !54
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv124 ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !54
  %i.hq = fsub float %i.hn, %i.hp
  %i.hr = fmul float %i.hl, %i.hq
  %i.hs = call float @llvm.exp.f32(float %i.hr)
  %i.ht = fadd float %i.hs, 1.000000e+00
  %i.hu = fdiv float 1.000000e+00, %i.ht
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv124
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !54
  %i.hx = fsub float %i.hu, %i.hw
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv124
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !54
  %i.ia = fdiv float %i.hx, %i.hz
  store float %i.ia, ptr %i.ho, align 4, !tbaa !54
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.loopexit102, label %scalar.ph153, !llvm.loop !1545

.loopexit102:                                     ; preds = %scalar.ph153, %middle.block166, %._crit_edge
  %i.ib = load ptr, ptr %i.cr, align 8, !tbaa !1546, !nonnull !83
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !99, !range !82, !noundef !83
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %.lr.ph110, label %.lr.ph113.preheader

.lr.ph110:                                        ; preds = %.loopexit102
  %i.ie = load ptr, ptr %i.cs, align 8, !tbaa !1547, !nonnull !83, !align !420
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !115 ; 2 uses
  %i.ig = load ptr, ptr %i.ct, align 8, !tbaa !1548, !nonnull !83, !align !420
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !115 ; 2 uses
  %i.ii = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count132 = sext i32 %i.dq to i64
  %i.ij = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ij, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110
  %n.vec = and i64 %i.ij, -8                      ; 3 uses
  %i.ik = add nsw i64 %n.vec, %i.ii
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.il = add i64 %index, %i.ii                   ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.il ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.il ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load = load <4 x float>, ptr %i.im, align 4, !tbaa !54
  %wide.load148 = load <4 x float>, ptr %i.ip, align 4, !tbaa !54
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %wide.load149 = load <4 x float>, ptr %i.io, align 4, !tbaa !54 ; 2 uses
  %wide.load150 = load <4 x float>, ptr %i.iq, align 4, !tbaa !54 ; 2 uses
  %i.ir = fsub <4 x float> splat (float 1.000000e+00), %wide.load149
  %i.is = fsub <4 x float> splat (float 1.000000e+00), %wide.load150
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %wide.load151 = load <4 x float>, ptr %i.in, align 4, !tbaa !54
  %wide.load152 = load <4 x float>, ptr %i.it, align 4, !tbaa !54
  %i.iu = fmul <4 x float> %wide.load149, %wide.load151
  %i.iv = fmul <4 x float> %wide.load150, %wide.load152
  %i.iw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.ir, <4 x float> %i.iu)
  %i.ix = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load148, <4 x float> %i.is, <4 x float> %i.iv)
  store <4 x float> %i.iw, ptr %i.io, align 4, !tbaa !54
  store <4 x float> %i.ix, ptr %i.iq, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !1549

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ij, %n.vec
  br i1 %cmp.n, label %.lr.ph113.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph110, %middle.block
  %indvars.iv129.ph = phi i64 [ %i.ii, %.lr.ph110 ], [ %i.ik, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph ], [ %indvars.iv129.ph, %scalar.ph.preheader ] ; 4 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv129
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv129
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv129 ; 2 uses
  %i.jc = load float, ptr %i.iz, align 4, !tbaa !54
  %i.jd = load float, ptr %i.jb, align 4, !tbaa !54 ; 2 uses
  %i.je = fsub float 1.000000e+00, %i.jd
  %i.jf = load float, ptr %i.ja, align 4, !tbaa !54
  %i.jg = fmul float %i.jd, %i.jf
  %i.jh = call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.je, float %i.jg)
  store float %i.jh, ptr %i.jb, align 4, !tbaa !54
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.lr.ph113.preheader, label %scalar.ph, !llvm.loop !1550

.lr.ph113.preheader:                              ; preds = %scalar.ph, %.loopexit102, %middle.block
  %i.ji = sext i32 %i.dp to i64
  br label %.lr.ph113

._crit_edge114:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.ae
  %indvars.iv134 = phi i64 [ %i.ji, %.lr.ph113.preheader ], [ %indvars.iv.next135, %bb.ae ] ; 3 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv134
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !54
  %i.jl = load ptr, ptr %5, align 8, !tbaa !909
  %i.jm = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jl)
          to label %.noexc94 unwind label %bb.af

.noexc94:                                         ; preds = %.lr.ph113
  %i.jn = icmp eq i32 %i.jm, 3
  br i1 %i.jn, label %bb.ad, label %bb.ae, !prof !48

bb.ad:                                            ; preds = %.noexc94
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc94, %bb.ad
  %i.jo = load ptr, ptr %i.cu, align 8, !tbaa !917
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %indvars.iv134
  store float %i.jk, ptr %i.jp, align 4, !tbaa !54
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.jq = load i32, ptr %i.bm, align 4, !tbaa !20
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp slt i64 %indvars.iv.next135, %i.jr
  br i1 %i.js, label %.lr.ph113, label %._crit_edge114, !llvm.loop !1551

bb.af:                                            ; preds = %bb.ad, %.lr.ph113
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge114
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1552

bb.ah:                                            ; preds = %bb.ag, %._crit_edge114
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ju, %bb.ah ], [ %i.jt, %bb.af ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %5) #31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ai ], [ %i.do, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.al

bb.ak:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit83
  ret void

bb.al:                                            ; preds = %bb.aj, %bb.q
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.q ], [ %.pn.pn, %bb.aj ]
  resume { ptr, i32 } %.pn77.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_NS1_4spanIKfLm18446744073709551615EEESD_SD_SD_SD_SD_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !151
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L15contrast_remap_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS0_3ROIEiENKUlSB_E_clESB_(ptr noundef nonnull readonly align 8 dereferenceable(88) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_NS1_4spanIKfLm18446744073709551615EEESD_SD_SD_SD_SD_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_4spanIKfLm18446744073709551615EEESC_SC_SC_SC_SC_NS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L15contrast_remap_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS0_3ROIEiEUlSB_E_, ptr %0, align 8, !tbaa !894
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_4spanIKfLm18446744073709551615EEESC_SC_SC_SC_SC_NS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS0_3ROIEiENKUlSB_E_clESB_:bb.a
  %i.ex = call range(i32 4, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %i.et, i1 true)
  %i.ey = add nsw <4 x i32> %i.ex, splat (i32 -8) ; 2 uses
  %i.ez = shl <4 x i32> %i.et, %i.ey
  %i.fa = or <4 x i32> %i.ev, %i.ez
  %i.fb = or <4 x i32> %i.fa, splat (i32 947912704)
  %i.fc = shl nuw nsw <4 x i32> %i.ey, splat (i32 23)
  %i.fd = sub nuw <4 x i32> %i.fb, %i.fc
  %i.fe = or disjoint <4 x i32> %i.et, %i.ev      ; 2 uses
  %i.ff = icmp samesign ugt <4 x i32> %i.et, splat (i32 260046847)
  %i.fg = or <4 x i32> %i.fe, splat (i32 2139095040)
  %i.fh = add nsw <4 x i32> %i.et, splat (i32 -8388608)
  %i.fi = icmp ult <4 x i32> %i.fh, splat (i32 251658240)
  %i.fj = add nuw nsw <4 x i32> %i.fe, splat (i32 939524096)
  %predphi = select <4 x i1> %i.ew, <4 x i32> %i.ev, <4 x i32> %i.fd
  %predphi198 = select <4 x i1> %i.ff, <4 x i32> %i.fg, <4 x i32> %predphi
  %predphi199 = select <4 x i1> %i.fi, <4 x i32> %i.fj, <4 x i32> %predphi198
  %i.fk = bitcast <4 x i32> %predphi199 to <4 x float>
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ep
  %wide.load200 = load <4 x float>, ptr %i.fl, align 4, !tbaa !54
  %i.fm = fsub <4 x float> %i.fk, %wide.load200
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ep
  %wide.load201 = load <4 x float>, ptr %i.fn, align 4, !tbaa !54
  %i.fo = fmul <4 x float> %i.fm, %wide.load201
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ep
  store <4 x float> %i.fo, ptr %i.fp, align 4, !tbaa !54
  %index.next202 = add nuw i64 %index196, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next202, %n.vec194
  br i1 %i.fq, label %middle.block203, label %vector.body195, !llvm.loop !1561

middle.block203:                                  ; preds = %vector.body195
  %cmp.n204 = icmp eq i64 %i.en, %n.vec194
  br i1 %cmp.n204, label %._crit_edge, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %.lr.ph, %middle.block203
  %indvars.iv.ph = phi i64 [ %i.em, %.lr.ph ], [ %i.eo, %middle.block203 ]
  br label %scalar.ph190

._crit_edge:                                      ; preds = %bb.ao, %middle.block203
  %i.fr = load ptr, ptr %i.dd, align 8, !tbaa !1562, !nonnull !83
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !99, !range !82, !noundef !83
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %.lr.ph110, label %.loopexit106

.lr.ph110:                                        ; preds = %._crit_edge
  %i.fu = load ptr, ptr %i.de, align 8, !tbaa !1563, !nonnull !83, !align !420
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !115 ; 2 uses
  %i.fw = load ptr, ptr %i.df, align 8, !tbaa !1564, !nonnull !83, !align !420
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !115 ; 2 uses
  %i.fy = sext i32 %i.ee to i64                   ; 3 uses
  %wide.trip.count126 = sext i32 %i.ef to i64
  %i.fz = sub nsw i64 %wide.trip.count, %i.em     ; 3 uses
  %min.iters.check178 = icmp ult i64 %i.fz, 4
  br i1 %min.iters.check178, label %scalar.ph177.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph110
  %n.vec181 = and i64 %i.fz, -4                   ; 3 uses
  %i.ga = add nsw i64 %n.vec181, %i.fy
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph179
  %index183 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body182 ] ; 2 uses
  %i.gb = add i64 %index183, %i.fy                ; 4 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gb
  %wide.load184 = load <4 x float>, ptr %i.gc, align 4, !tbaa !54 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.gb
  %wide.load185 = load <4 x float>, ptr %i.gd, align 4, !tbaa !54 ; 2 uses
  %i.ge = fmul <4 x float> %wide.load184, %wide.load185
  %i.gf = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ge)
  %i.gg = fadd <4 x float> %i.gf, splat (float 1.000000e+00)
  %i.gh = fdiv <4 x float> splat (float 1.000000e+00), %i.gg ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gb
  store <4 x float> %i.gh, ptr %i.gi, align 4, !tbaa !54
  %i.gj = fadd <4 x float> %wide.load185, splat (float -1.000000e+00)
  %i.gk = fmul <4 x float> %wide.load184, %i.gj
  %i.gl = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gk)
  %i.gm = fadd <4 x float> %i.gl, splat (float 1.000000e+00)
  %i.gn = fdiv <4 x float> splat (float 1.000000e+00), %i.gm
  %i.go = fsub <4 x float> %i.gn, %i.gh
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.gb
  store <4 x float> %i.go, ptr %i.gp, align 4, !tbaa !54
  %index.next186 = add nuw i64 %index183, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.gq, label %middle.block187, label %vector.body182, !llvm.loop !1565

middle.block187:                                  ; preds = %vector.body182
  %cmp.n188 = icmp eq i64 %i.fz, %n.vec181
  br i1 %cmp.n188, label %.lr.ph112, label %scalar.ph177.preheader

scalar.ph177.preheader:                           ; preds = %.lr.ph110, %middle.block187
  %indvars.iv123.ph = phi i64 [ %i.fy, %.lr.ph110 ], [ %i.ga, %middle.block187 ]
  br label %scalar.ph177

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %bb.ao
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ao ], [ %indvars.iv.ph, %scalar.ph190.preheader ] ; 5 uses
  %i.gr = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %indvars.iv
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !957 ; 2 uses
  %i.gt = zext i16 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 13
  %i.gv = and i32 %i.gu, 268427264                ; 6 uses
  %.signext.i.i.i.i.i92 = sext i16 %i.gs to i32
  %i.gw = and i32 %.signext.i.i.i.i.i92, -2147483648 ; 3 uses
  %i.gx = icmp samesign ugt i32 %i.gv, 8388607
  br i1 %i.gx, label %bb.aj, label %bb.am, !prof !22

bb.aj:                                            ; preds = %scalar.ph190
  %i.gy = or disjoint i32 %i.gv, %i.gw            ; 2 uses
  %i.gz = icmp samesign ult i32 %i.gv, 260046848
  br i1 %i.gz, label %bb.ak, label %bb.al, !prof !22

bb.ak:                                            ; preds = %bb.aj
  %i.ha = add nuw nsw i32 %i.gy, 939524096
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.hb = or i32 %i.gy, 2139095040
  br label %bb.ao

bb.am:                                            ; preds = %scalar.ph190
  %.not.i.i.i.i.i93 = icmp eq i32 %i.gv, 0
  br i1 %.not.i.i.i.i.i93, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hc = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gv, i1 true)
  %i.hd = add nsw i32 %i.hc, -8                   ; 2 uses
  %i.he = shl i32 %i.gv, %i.hd
  %i.hf = or i32 %i.gw, %i.he
  %i.hg = or i32 %i.hf, 947912704
  %i.hh = shl nuw nsw i32 %i.hd, 23
  %i.hi = sub nuw i32 %i.hg, %i.hh
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.sroa.0.0.i.i.i.i.i94 = phi i32 [ %i.ha, %bb.ak ], [ %i.hb, %bb.al ], [ %i.hi, %bb.an ], [ %i.gw, %bb.am ]
  %i.hj = bitcast i32 %.sroa.0.0.i.i.i.i.i94 to float
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !54
  %i.hm = fsub float %i.hj, %i.hl
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !54
  %i.hp = fmul float %i.hm, %i.ho
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv
  store float %i.hp, ptr %i.hq, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph190, !llvm.loop !1566

.lr.ph112:                                        ; preds = %scalar.ph177, %middle.block187
  %i.hr = load ptr, ptr %i.de, align 8, !tbaa !1563, !nonnull !83, !align !420
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !115 ; 2 uses
  %i.ht = load ptr, ptr %i.df, align 8, !tbaa !1564, !nonnull !83, !align !420
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !115 ; 2 uses
  %i.hv = sext i32 %i.ee to i64                   ; 3 uses
  %wide.trip.count131 = sext i32 %i.ef to i64
  %i.hw = sub nsw i64 %wide.trip.count, %i.em     ; 3 uses
  %min.iters.check162 = icmp ult i64 %i.hw, 4
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph112
  %n.vec165 = and i64 %i.hw, -4                   ; 3 uses
  %i.hx = add nsw i64 %n.vec165, %i.hv
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next173, %vector.body166 ] ; 2 uses
  %i.hy = add i64 %index167, %i.hv                ; 5 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hy
  %wide.load168 = load <4 x float>, ptr %i.hz, align 4, !tbaa !54
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hy
  %wide.load169 = load <4 x float>, ptr %i.ia, align 4, !tbaa !54
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.hy ; 2 uses
  %wide.load170 = load <4 x float>, ptr %i.ib, align 4, !tbaa !54
  %i.ic = fsub <4 x float> %wide.load169, %wide.load170
  %i.id = fmul <4 x float> %wide.load168, %i.ic
  %i.ie = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.id)
  %i.if = fadd <4 x float> %i.ie, splat (float 1.000000e+00)
  %i.ig = fdiv <4 x float> splat (float 1.000000e+00), %i.if
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.hy
  %wide.load171 = load <4 x float>, ptr %i.ih, align 4, !tbaa !54
  %i.ii = fsub <4 x float> %i.ig, %wide.load171
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.hy
  %wide.load172 = load <4 x float>, ptr %i.ij, align 4, !tbaa !54
  %i.ik = fdiv <4 x float> %i.ii, %wide.load172
  store <4 x float> %i.ik, ptr %i.ib, align 4, !tbaa !54
  %index.next173 = add nuw i64 %index167, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next173, %n.vec165
  br i1 %i.il, label %middle.block174, label %vector.body166, !llvm.loop !1567

middle.block174:                                  ; preds = %vector.body166
  %cmp.n175 = icmp eq i64 %i.hw, %n.vec165
  br i1 %cmp.n175, label %.loopexit106, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %.lr.ph112, %middle.block174
  %indvars.iv128.ph = phi i64 [ %i.hv, %.lr.ph112 ], [ %i.hx, %middle.block174 ]
  br label %scalar.ph161

scalar.ph177:                                     ; preds = %scalar.ph177.preheader, %scalar.ph177
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %scalar.ph177 ], [ %indvars.iv123.ph, %scalar.ph177.preheader ] ; 5 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv123
  %i.in = load float, ptr %i.im, align 4, !tbaa !54 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv123
  %6 = load float, ptr %i.io, align 4, !tbaa !54  ; 2 uses
  %7 = fmul float %i.in, %6
  %8 = call float @llvm.exp.f32(float %7)
  %9 = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv123
  %10 = fadd float %6, -1.000000e+00
  %11 = fmul float %i.in, %10
  %i.ip = call float @llvm.exp.f32(float %11)
  %i.iq = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %8, i64 1
  %i.is = fadd <2 x float> %i.ir, splat (float 1.000000e+00)
  %i.it = fdiv <2 x float> splat (float 1.000000e+00), %i.is ; 2 uses
  %i.iu = extractelement <2 x float> %i.it, i64 1 ; 2 uses
  store float %i.iu, ptr %9, align 4, !tbaa !54
  %i.iv = extractelement <2 x float> %i.it, i64 0
  %i.iw = fsub float %i.iv, %i.iu
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv123
  store float %i.iw, ptr %i.ix, align 4, !tbaa !54
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.lr.ph112, label %scalar.ph177, !llvm.loop !1568

scalar.ph161:                                     ; preds = %scalar.ph161.preheader, %scalar.ph161
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %scalar.ph161 ], [ %indvars.iv128.ph, %scalar.ph161.preheader ] ; 6 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv128
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !54
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv128
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !54
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv128 ; 2 uses
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !54
  %i.je = fsub float %i.jb, %i.jd
  %i.jf = fmul float %i.iz, %i.je
  %i.jg = call float @llvm.exp.f32(float %i.jf)
  %i.jh = fadd float %i.jg, 1.000000e+00
  %i.ji = fdiv float 1.000000e+00, %i.jh
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv128
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !54
  %i.jl = fsub float %i.ji, %i.jk
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv128
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !54
  %i.jo = fdiv float %i.jl, %i.jn
  store float %i.jo, ptr %i.jc, align 4, !tbaa !54
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit106, label %scalar.ph161, !llvm.loop !1569

.loopexit106:                                     ; preds = %scalar.ph161, %middle.block174, %._crit_edge
  %i.jp = load ptr, ptr %i.dg, align 8, !tbaa !1570, !nonnull !83
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !99, !range !82, !noundef !83
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %.lr.ph114, label %.lr.ph117.preheader

.lr.ph114:                                        ; preds = %.loopexit106
  %i.js = load ptr, ptr %i.dh, align 8, !tbaa !1571, !nonnull !83, !align !420
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !115 ; 2 uses
  %i.ju = load ptr, ptr %i.di, align 8, !tbaa !1572, !nonnull !83, !align !420
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !115 ; 2 uses
  %i.jw = sext i32 %i.ee to i64                   ; 3 uses
  %wide.trip.count136 = sext i32 %i.ef to i64
  %i.jx = sub nsw i64 %wide.trip.count, %i.em     ; 3 uses
  %min.iters.check = icmp ult i64 %i.jx, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph114
  %n.vec = and i64 %i.jx, -8                      ; 3 uses
  %i.jy = add nsw i64 %n.vec, %i.jw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = add i64 %index, %i.jw                   ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jz ; 2 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.jz ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load = load <4 x float>, ptr %i.ka, align 4, !tbaa !54
  %wide.load156 = load <4 x float>, ptr %i.kd, align 4, !tbaa !54
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %wide.load157 = load <4 x float>, ptr %i.kc, align 4, !tbaa !54 ; 2 uses
  %wide.load158 = load <4 x float>, ptr %i.ke, align 4, !tbaa !54 ; 2 uses
  %i.kf = fsub <4 x float> splat (float 1.000000e+00), %wide.load157
  %i.kg = fsub <4 x float> splat (float 1.000000e+00), %wide.load158
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %wide.load159 = load <4 x float>, ptr %i.kb, align 4, !tbaa !54
  %wide.load160 = load <4 x float>, ptr %i.kh, align 4, !tbaa !54
  %i.ki = fmul <4 x float> %wide.load157, %wide.load159
  %i.kj = fmul <4 x float> %wide.load158, %wide.load160
  %i.kk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.kf, <4 x float> %i.ki)
  %i.kl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load156, <4 x float> %i.kg, <4 x float> %i.kj)
  store <4 x float> %i.kk, ptr %i.kc, align 4, !tbaa !54
  store <4 x float> %i.kl, ptr %i.ke, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec
  br i1 %i.km, label %middle.block, label %vector.body, !llvm.loop !1573

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jx, %n.vec
  br i1 %cmp.n, label %.lr.ph117.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph114, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.jw, %.lr.ph114 ], [ %i.jy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv133
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv133
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv133 ; 2 uses
  %i.kq = load float, ptr %i.kn, align 4, !tbaa !54
  %i.kr = load float, ptr %i.kp, align 4, !tbaa !54 ; 2 uses
  %i.ks = fsub float 1.000000e+00, %i.kr
  %i.kt = load float, ptr %i.ko, align 4, !tbaa !54
  %i.ku = fmul float %i.kr, %i.kt
  %i.kv = call noundef float @llvm.fmuladd.f32(float %i.kq, float %i.ks, float %i.ku)
  store float %i.kv, ptr %i.kp, align 4, !tbaa !54
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.lr.ph117.preheader, label %scalar.ph, !llvm.loop !1574

.lr.ph117.preheader:                              ; preds = %scalar.ph, %.loopexit106, %middle.block
  %i.kw = sext i32 %i.ee to i64
  br label %.lr.ph117

._crit_edge118:                                   ; preds = %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.as unwind label %bb.at

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.aq
  %indvars.iv138 = phi i64 [ %i.kw, %.lr.ph117.preheader ], [ %indvars.iv.next139, %bb.aq ] ; 3 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv138
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !54
  %i.kz = load ptr, ptr %5, align 8, !tbaa !909
  %i.la = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kz)
          to label %.noexc98 unwind label %bb.ar

.noexc98:                                         ; preds = %.lr.ph117
  %i.lb = icmp eq i32 %i.la, 3
  br i1 %i.lb, label %bb.ap, label %bb.aq, !prof !48

bb.ap:                                            ; preds = %.noexc98
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc98, %bb.ap
  %i.lc = load ptr, ptr %i.dj, align 8, !tbaa !917
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %indvars.iv138
  store float %i.ky, ptr %i.ld, align 4, !tbaa !54
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.le = load i32, ptr %i.cb, align 4, !tbaa !20
  %i.lf = sext i32 %i.le to i64
  %i.lg = icmp slt i64 %indvars.iv.next139, %i.lf
  br i1 %i.lg, label %.lr.ph117, label %._crit_edge118, !llvm.loop !1575

bb.ar:                                            ; preds = %bb.ap, %.lr.ph117
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %._crit_edge118
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.at, !llvm.loop !1576

bb.at:                                            ; preds = %bb.as, %._crit_edge118
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.li, %bb.at ], [ %i.lh, %bb.ar ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %5) #31
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.au ], [ %i.ed, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ax

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit83
  ret void

bb.ax:                                            ; preds = %bb.av, %bb.w
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.w ], [ %.pn.pn, %bb.av ]
  resume { ptr, i32 } %.pn77.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IftEEbRNS1_8ImageBufERKS5_NS1_4spanIKfLm18446744073709551615EEESB_SB_SB_SB_SB_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !151
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L15contrast_remap_IftEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(88) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IftEEbRNS1_8ImageBufERKS5_NS1_4spanIKfLm18446744073709551615EEESB_SB_SB_SB_SB_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IftEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L15contrast_remap_IftEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !894
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IftEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IftEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit89, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ak

bb.ac:                                            ; preds = %.thread
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dp = load i32, ptr %i.ck, align 8, !tbaa !49 ; 6 uses
  %i.dq = load i32, ptr %i.bm, align 4, !tbaa !20 ; 5 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %._crit_edge114

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.ds = load ptr, ptr %i.cl, align 8, !tbaa !917 ; 2 uses
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !1581, !nonnull !83, !align !420
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !115 ; 2 uses
  %i.dv = load ptr, ptr %i.cn, align 8, !tbaa !1584, !nonnull !83, !align !420
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !52 ; 2 uses
  %i.dx = sext i32 %i.dp to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.dq to i64        ; 5 uses
  %i.dy = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check183 = icmp ult i64 %i.dy, 8
  br i1 %min.iters.check183, label %scalar.ph182.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph
  %n.vec186 = and i64 %i.dy, -8                   ; 3 uses
  %i.dz = add nsw i64 %n.vec186, %i.dx
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph184
  %index188 = phi i64 [ 0, %vector.ph184 ], [ %index.next195, %vector.body187 ] ; 2 uses
  %i.ea = add i64 %index188, %i.dx                ; 4 uses
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %wide.load189 = load <4 x i16>, ptr %i.eb, align 2, !tbaa !964
  %wide.load190 = load <4 x i16>, ptr %i.ec, align 2, !tbaa !964
  %i.ed = uitofp <4 x i16> %wide.load189 to <4 x float>
  %i.ee = uitofp <4 x i16> %wide.load190 to <4 x float>
  %i.ef = fmul nnan <4 x float> %i.ed, splat (float f0x37800080)
  %i.eg = fmul nnan <4 x float> %i.ee, splat (float f0x37800080)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ea ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load191 = load <4 x float>, ptr %i.eh, align 4, !tbaa !54
  %wide.load192 = load <4 x float>, ptr %i.ei, align 4, !tbaa !54
  %i.ej = fsub <4 x float> %i.ef, %wide.load191
  %i.ek = fsub <4 x float> %i.eg, %wide.load192
  %i.el = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ea ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load193 = load <4 x float>, ptr %i.el, align 4, !tbaa !54
  %wide.load194 = load <4 x float>, ptr %i.em, align 4, !tbaa !54
  %i.en = fmul <4 x float> %i.ej, %wide.load193
  %i.eo = fmul <4 x float> %i.ek, %wide.load194
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ea ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> %i.en, ptr %i.ep, align 4, !tbaa !54
  store <4 x float> %i.eo, ptr %i.eq, align 4, !tbaa !54
  %index.next195 = add nuw i64 %index188, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.er, label %middle.block196, label %vector.body187, !llvm.loop !1585

middle.block196:                                  ; preds = %vector.body187
  %cmp.n197 = icmp eq i64 %i.dy, %n.vec186
  br i1 %cmp.n197, label %._crit_edge, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %.lr.ph, %middle.block196
  %indvars.iv.ph = phi i64 [ %i.dx, %.lr.ph ], [ %i.dz, %middle.block196 ]
  br label %scalar.ph182

._crit_edge:                                      ; preds = %scalar.ph182, %middle.block196
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !1586, !nonnull !83
  %i.et = load i8, ptr %i.es, align 1, !tbaa !99, !range !82, !noundef !83
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.lr.ph106, label %.loopexit102

.lr.ph106:                                        ; preds = %._crit_edge
  %i.ev = load ptr, ptr %i.cp, align 8, !tbaa !1587, !nonnull !83, !align !420
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !115 ; 2 uses
  %i.ex = load ptr, ptr %i.cq, align 8, !tbaa !1588, !nonnull !83, !align !420
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !115 ; 2 uses
  %i.ez = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count122 = sext i32 %i.dq to i64
  %i.fa = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check170 = icmp ult i64 %i.fa, 4
  br i1 %min.iters.check170, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph106
  %n.vec173 = and i64 %i.fa, -4                   ; 3 uses
  %i.fb = add nsw i64 %n.vec173, %i.ez
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph171
  %index175 = phi i64 [ 0, %vector.ph171 ], [ %index.next178, %vector.body174 ] ; 2 uses
  %i.fc = add i64 %index175, %i.ez                ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fc
  %wide.load176 = load <4 x float>, ptr %i.fd, align 4, !tbaa !54 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fc
  %wide.load177 = load <4 x float>, ptr %i.fe, align 4, !tbaa !54 ; 2 uses
  %i.ff = fmul <4 x float> %wide.load176, %wide.load177
  %i.fg = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ff)
  %i.fh = fadd <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fdiv <4 x float> splat (float 1.000000e+00), %i.fh ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.fc
  store <4 x float> %i.fi, ptr %i.fj, align 4, !tbaa !54
  %i.fk = fadd <4 x float> %wide.load177, splat (float -1.000000e+00)
  %i.fl = fmul <4 x float> %wide.load176, %i.fk
  %i.fm = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = fdiv <4 x float> splat (float 1.000000e+00), %i.fn
  %i.fp = fsub <4 x float> %i.fo, %i.fi
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.fc
  store <4 x float> %i.fp, ptr %i.fq, align 4, !tbaa !54
  %index.next178 = add nuw i64 %index175, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next178, %n.vec173
  br i1 %i.fr, label %middle.block179, label %vector.body174, !llvm.loop !1589

middle.block179:                                  ; preds = %vector.body174
  %cmp.n180 = icmp eq i64 %i.fa, %n.vec173
  br i1 %cmp.n180, label %.lr.ph108, label %scalar.ph169.preheader

scalar.ph169.preheader:                           ; preds = %.lr.ph106, %middle.block179
  %indvars.iv119.ph = phi i64 [ %i.ez, %.lr.ph106 ], [ %i.fb, %middle.block179 ]
  br label %scalar.ph169

scalar.ph182:                                     ; preds = %scalar.ph182.preheader, %scalar.ph182
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph182 ], [ %indvars.iv.ph, %scalar.ph182.preheader ] ; 5 uses
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %indvars.iv
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !964
  %i.fu = uitofp i16 %i.ft to float
  %i.fv = fmul nnan float %i.fu, f0x37800080
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !54
  %i.fy = fsub float %i.fv, %i.fx
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !54
  %i.gb = fmul float %i.fy, %i.ga
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv
  store float %i.gb, ptr %i.gc, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph182, !llvm.loop !1590

.lr.ph108:                                        ; preds = %scalar.ph169, %middle.block179
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !1587, !nonnull !83, !align !420
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !115 ; 2 uses
  %i.gf = load ptr, ptr %i.cq, align 8, !tbaa !1588, !nonnull !83, !align !420
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !115 ; 2 uses
  %i.gh = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count127 = sext i32 %i.dq to i64
  %i.gi = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check154 = icmp ult i64 %i.gi, 4
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph108
  %n.vec157 = and i64 %i.gi, -4                   ; 3 uses
  %i.gj = add nsw i64 %n.vec157, %i.gh
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next165, %vector.body158 ] ; 2 uses
  %i.gk = add i64 %index159, %i.gh                ; 5 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gk
  %wide.load160 = load <4 x float>, ptr %i.gl, align 4, !tbaa !54
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gk
  %wide.load161 = load <4 x float>, ptr %i.gm, align 4, !tbaa !54
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.gk ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.gn, align 4, !tbaa !54
  %i.go = fsub <4 x float> %wide.load161, %wide.load162
  %i.gp = fmul <4 x float> %wide.load160, %i.go
  %i.gq = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gp)
  %i.gr = fadd <4 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = fdiv <4 x float> splat (float 1.000000e+00), %i.gr
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.gk
  %wide.load163 = load <4 x float>, ptr %i.gt, align 4, !tbaa !54
  %i.gu = fsub <4 x float> %i.gs, %wide.load163
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.gk
  %wide.load164 = load <4 x float>, ptr %i.gv, align 4, !tbaa !54
  %i.gw = fdiv <4 x float> %i.gu, %wide.load164
  store <4 x float> %i.gw, ptr %i.gn, align 4, !tbaa !54
  %index.next165 = add nuw i64 %index159, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next165, %n.vec157
  br i1 %i.gx, label %middle.block166, label %vector.body158, !llvm.loop !1591

middle.block166:                                  ; preds = %vector.body158
  %cmp.n167 = icmp eq i64 %i.gi, %n.vec157
  br i1 %cmp.n167, label %.loopexit102, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.lr.ph108, %middle.block166
  %indvars.iv124.ph = phi i64 [ %i.gh, %.lr.ph108 ], [ %i.gj, %middle.block166 ]
  br label %scalar.ph153

scalar.ph169:                                     ; preds = %scalar.ph169.preheader, %scalar.ph169
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %scalar.ph169 ], [ %indvars.iv119.ph, %scalar.ph169.preheader ] ; 5 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv119
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !54 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv119
  %6 = load float, ptr %i.ha, align 4, !tbaa !54  ; 2 uses
  %7 = fmul float %i.gz, %6
  %8 = call float @llvm.exp.f32(float %7)
  %9 = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv119
  %10 = fadd float %6, -1.000000e+00
  %11 = fmul float %i.gz, %10
  %i.hb = call float @llvm.exp.f32(float %11)
  %i.hc = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hd = insertelement <2 x float> %i.hc, float %8, i64 1
  %i.he = fadd <2 x float> %i.hd, splat (float 1.000000e+00)
  %i.hf = fdiv <2 x float> splat (float 1.000000e+00), %i.he ; 2 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 1 ; 2 uses
  store float %i.hg, ptr %9, align 4, !tbaa !54
  %i.hh = extractelement <2 x float> %i.hf, i64 0
  %i.hi = fsub float %i.hh, %i.hg
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv119
  store float %i.hi, ptr %i.hj, align 4, !tbaa !54
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.lr.ph108, label %scalar.ph169, !llvm.loop !1592

scalar.ph153:                                     ; preds = %scalar.ph153.preheader, %scalar.ph153
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph153 ], [ %indvars.iv124.ph, %scalar.ph153.preheader ] ; 6 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv124
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !54
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv124
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !54
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv124 ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !54
  %i.hq = fsub float %i.hn, %i.hp
  %i.hr = fmul float %i.hl, %i.hq
  %i.hs = call float @llvm.exp.f32(float %i.hr)
  %i.ht = fadd float %i.hs, 1.000000e+00
  %i.hu = fdiv float 1.000000e+00, %i.ht
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv124
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !54
  %i.hx = fsub float %i.hu, %i.hw
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv124
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !54
  %i.ia = fdiv float %i.hx, %i.hz
  store float %i.ia, ptr %i.ho, align 4, !tbaa !54
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.loopexit102, label %scalar.ph153, !llvm.loop !1593

.loopexit102:                                     ; preds = %scalar.ph153, %middle.block166, %._crit_edge
  %i.ib = load ptr, ptr %i.cr, align 8, !tbaa !1594, !nonnull !83
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !99, !range !82, !noundef !83
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %.lr.ph110, label %.lr.ph113.preheader

.lr.ph110:                                        ; preds = %.loopexit102
  %i.ie = load ptr, ptr %i.cs, align 8, !tbaa !1595, !nonnull !83, !align !420
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !115 ; 2 uses
  %i.ig = load ptr, ptr %i.ct, align 8, !tbaa !1596, !nonnull !83, !align !420
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !115 ; 2 uses
  %i.ii = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count132 = sext i32 %i.dq to i64
  %i.ij = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ij, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110
  %n.vec = and i64 %i.ij, -8                      ; 3 uses
  %i.ik = add nsw i64 %n.vec, %i.ii
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.il = add i64 %index, %i.ii                   ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.il ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.il ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load = load <4 x float>, ptr %i.im, align 4, !tbaa !54
  %wide.load148 = load <4 x float>, ptr %i.ip, align 4, !tbaa !54
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %wide.load149 = load <4 x float>, ptr %i.io, align 4, !tbaa !54 ; 2 uses
  %wide.load150 = load <4 x float>, ptr %i.iq, align 4, !tbaa !54 ; 2 uses
  %i.ir = fsub <4 x float> splat (float 1.000000e+00), %wide.load149
  %i.is = fsub <4 x float> splat (float 1.000000e+00), %wide.load150
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %wide.load151 = load <4 x float>, ptr %i.in, align 4, !tbaa !54
  %wide.load152 = load <4 x float>, ptr %i.it, align 4, !tbaa !54
  %i.iu = fmul <4 x float> %wide.load149, %wide.load151
  %i.iv = fmul <4 x float> %wide.load150, %wide.load152
  %i.iw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.ir, <4 x float> %i.iu)
  %i.ix = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load148, <4 x float> %i.is, <4 x float> %i.iv)
  store <4 x float> %i.iw, ptr %i.io, align 4, !tbaa !54
  store <4 x float> %i.ix, ptr %i.iq, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !1597

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ij, %n.vec
  br i1 %cmp.n, label %.lr.ph113.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph110, %middle.block
  %indvars.iv129.ph = phi i64 [ %i.ii, %.lr.ph110 ], [ %i.ik, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph ], [ %indvars.iv129.ph, %scalar.ph.preheader ] ; 4 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv129
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv129
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv129 ; 2 uses
  %i.jc = load float, ptr %i.iz, align 4, !tbaa !54
  %i.jd = load float, ptr %i.jb, align 4, !tbaa !54 ; 2 uses
  %i.je = fsub float 1.000000e+00, %i.jd
  %i.jf = load float, ptr %i.ja, align 4, !tbaa !54
  %i.jg = fmul float %i.jd, %i.jf
  %i.jh = call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.je, float %i.jg)
  store float %i.jh, ptr %i.jb, align 4, !tbaa !54
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.lr.ph113.preheader, label %scalar.ph, !llvm.loop !1598

.lr.ph113.preheader:                              ; preds = %scalar.ph, %.loopexit102, %middle.block
  %i.ji = sext i32 %i.dp to i64
  br label %.lr.ph113

._crit_edge114:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.ae
  %indvars.iv134 = phi i64 [ %i.ji, %.lr.ph113.preheader ], [ %indvars.iv.next135, %bb.ae ] ; 3 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv134
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !54
  %i.jl = load ptr, ptr %5, align 8, !tbaa !909
  %i.jm = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jl)
          to label %.noexc94 unwind label %bb.af

.noexc94:                                         ; preds = %.lr.ph113
  %i.jn = icmp eq i32 %i.jm, 3
  br i1 %i.jn, label %bb.ad, label %bb.ae, !prof !48

bb.ad:                                            ; preds = %.noexc94
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc94, %bb.ad
  %i.jo = load ptr, ptr %i.cu, align 8, !tbaa !917
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %indvars.iv134
  store float %i.jk, ptr %i.jp, align 4, !tbaa !54
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.jq = load i32, ptr %i.bm, align 4, !tbaa !20
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp slt i64 %indvars.iv.next135, %i.jr
  br i1 %i.js, label %.lr.ph113, label %._crit_edge114, !llvm.loop !1599

bb.af:                                            ; preds = %bb.ad, %.lr.ph113
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge114
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1600

bb.ah:                                            ; preds = %bb.ag, %._crit_edge114
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ju, %bb.ah ], [ %i.jt, %bb.af ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %5) #31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ai ], [ %i.do, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.al

bb.ak:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit83
  ret void

bb.al:                                            ; preds = %bb.aj, %bb.q
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.q ], [ %.pn.pn, %bb.aj ]
  resume { ptr, i32 } %.pn77.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IhhEEbRNS1_8ImageBufERKS5_NS1_4spanIKfLm18446744073709551615EEESB_SB_SB_SB_SB_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !151
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L15contrast_remap_IhhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(88) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IhhEEbRNS1_8ImageBufERKS5_NS1_4spanIKfLm18446744073709551615EEESB_SB_SB_SB_SB_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IhhEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L15contrast_remap_IhhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !894
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IhhEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IhhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit89, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ak

bb.ac:                                            ; preds = %.thread
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dv = load i32, ptr %i.cq, align 8, !tbaa !49 ; 6 uses
  %i.dw = load i32, ptr %i.bs, align 4, !tbaa !20 ; 5 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph, label %._crit_edge117

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.dy = load ptr, ptr %i.cr, align 8, !tbaa !917 ; 2 uses
  %i.dz = load ptr, ptr %i.cs, align 8, !tbaa !1605, !nonnull !83, !align !420
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !115 ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1608, !nonnull !83, !align !420
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !52 ; 2 uses
  %i.ed = sext i32 %i.dv to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.dw to i64        ; 5 uses
  %i.ee = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check186 = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph
  %n.vec189 = and i64 %i.ee, -8                   ; 3 uses
  %i.ef = add nsw i64 %n.vec189, %i.ed
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph187
  %index191 = phi i64 [ 0, %vector.ph187 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.eg = add i64 %index191, %i.ed                ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.dy, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %wide.load192 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !47
  %wide.load193 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !47
  %i.ej = uitofp <4 x i8> %wide.load192 to <4 x float>
  %i.ek = uitofp <4 x i8> %wide.load193 to <4 x float>
  %i.el = fmul nnan <4 x float> %i.ej, splat (float f0x3B808081)
  %i.em = fmul nnan <4 x float> %i.ek, splat (float f0x3B808081)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eg ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load194 = load <4 x float>, ptr %i.en, align 4, !tbaa !54
  %wide.load195 = load <4 x float>, ptr %i.eo, align 4, !tbaa !54
  %i.ep = fsub <4 x float> %i.el, %wide.load194
  %i.eq = fsub <4 x float> %i.em, %wide.load195
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eg ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load196 = load <4 x float>, ptr %i.er, align 4, !tbaa !54
  %wide.load197 = load <4 x float>, ptr %i.es, align 4, !tbaa !54
  %i.et = fmul <4 x float> %i.ep, %wide.load196
  %i.eu = fmul <4 x float> %i.eq, %wide.load197
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.eg ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <4 x float> %i.et, ptr %i.ev, align 4, !tbaa !54
  store <4 x float> %i.eu, ptr %i.ew, align 4, !tbaa !54
  %index.next198 = add nuw i64 %index191, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.ex, label %middle.block199, label %vector.body190, !llvm.loop !1609

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %i.ee, %n.vec189
  br i1 %cmp.n200, label %._crit_edge, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %.lr.ph, %middle.block199
  %indvars.iv.ph = phi i64 [ %i.ed, %.lr.ph ], [ %i.ef, %middle.block199 ]
  br label %scalar.ph185

._crit_edge:                                      ; preds = %scalar.ph185, %middle.block199
  %i.ey = load ptr, ptr %i.cu, align 8, !tbaa !1610, !nonnull !83
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !99, !range !82, !noundef !83
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %.lr.ph109, label %.loopexit105

.lr.ph109:                                        ; preds = %._crit_edge
  %i.fb = load ptr, ptr %i.cv, align 8, !tbaa !1611, !nonnull !83, !align !420
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !115 ; 2 uses
  %i.fd = load ptr, ptr %i.cw, align 8, !tbaa !1612, !nonnull !83, !align !420
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !115 ; 2 uses
  %i.ff = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count125 = sext i32 %i.dw to i64
  %i.fg = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.fg, 4
  br i1 %min.iters.check173, label %scalar.ph172.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %.lr.ph109
  %n.vec176 = and i64 %i.fg, -4                   ; 3 uses
  %i.fh = add nsw i64 %n.vec176, %i.ff
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph174
  %index178 = phi i64 [ 0, %vector.ph174 ], [ %index.next181, %vector.body177 ] ; 2 uses
  %i.fi = add i64 %index178, %i.ff                ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fi
  %wide.load179 = load <4 x float>, ptr %i.fj, align 4, !tbaa !54 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fi
  %wide.load180 = load <4 x float>, ptr %i.fk, align 4, !tbaa !54 ; 2 uses
  %i.fl = fmul <4 x float> %wide.load179, %wide.load180
  %i.fm = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = fdiv <4 x float> splat (float 1.000000e+00), %i.fn ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.fi
  store <4 x float> %i.fo, ptr %i.fp, align 4, !tbaa !54
  %i.fq = fadd <4 x float> %wide.load180, splat (float -1.000000e+00)
  %i.fr = fmul <4 x float> %wide.load179, %i.fq
  %i.fs = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fr)
  %i.ft = fadd <4 x float> %i.fs, splat (float 1.000000e+00)
  %i.fu = fdiv <4 x float> splat (float 1.000000e+00), %i.ft
  %i.fv = fsub <4 x float> %i.fu, %i.fo
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.fi
  store <4 x float> %i.fv, ptr %i.fw, align 4, !tbaa !54
  %index.next181 = add nuw i64 %index178, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.fx, label %middle.block182, label %vector.body177, !llvm.loop !1613

middle.block182:                                  ; preds = %vector.body177
  %cmp.n183 = icmp eq i64 %i.fg, %n.vec176
  br i1 %cmp.n183, label %.lr.ph111, label %scalar.ph172.preheader

scalar.ph172.preheader:                           ; preds = %.lr.ph109, %middle.block182
  %indvars.iv122.ph = phi i64 [ %i.ff, %.lr.ph109 ], [ %i.fh, %middle.block182 ]
  br label %scalar.ph172

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph185 ], [ %indvars.iv.ph, %scalar.ph185.preheader ] ; 5 uses
  %i.fy = getelementptr inbounds i8, ptr %i.dy, i64 %indvars.iv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !47
  %i.ga = uitofp i8 %i.fz to float
  %i.gb = fmul nnan float %i.ga, f0x3B808081
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !54
  %i.ge = fsub float %i.gb, %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !54
  %i.gh = fmul float %i.ge, %i.gg
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  store float %i.gh, ptr %i.gi, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph185, !llvm.loop !1614

.lr.ph111:                                        ; preds = %scalar.ph172, %middle.block182
  %i.gj = load ptr, ptr %i.cv, align 8, !tbaa !1611, !nonnull !83, !align !420
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !115 ; 2 uses
  %i.gl = load ptr, ptr %i.cw, align 8, !tbaa !1612, !nonnull !83, !align !420
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !115 ; 2 uses
  %i.gn = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count130 = sext i32 %i.dw to i64
  %i.go = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check157 = icmp ult i64 %i.go, 4
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.lr.ph111
  %n.vec160 = and i64 %i.go, -4                   ; 3 uses
  %i.gp = add nsw i64 %n.vec160, %i.gn
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph158
  %index162 = phi i64 [ 0, %vector.ph158 ], [ %index.next168, %vector.body161 ] ; 2 uses
  %i.gq = add i64 %index162, %i.gn                ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gq
  %wide.load163 = load <4 x float>, ptr %i.gr, align 4, !tbaa !54
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gq
  %wide.load164 = load <4 x float>, ptr %i.gs, align 4, !tbaa !54
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.gq ; 2 uses
  %wide.load165 = load <4 x float>, ptr %i.gt, align 4, !tbaa !54
  %i.gu = fsub <4 x float> %wide.load164, %wide.load165
  %i.gv = fmul <4 x float> %wide.load163, %i.gu
  %i.gw = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gv)
  %i.gx = fadd <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fdiv <4 x float> splat (float 1.000000e+00), %i.gx
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.gq
  %wide.load166 = load <4 x float>, ptr %i.gz, align 4, !tbaa !54
  %i.ha = fsub <4 x float> %i.gy, %wide.load166
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.gq
  %wide.load167 = load <4 x float>, ptr %i.hb, align 4, !tbaa !54
  %i.hc = fdiv <4 x float> %i.ha, %wide.load167
  store <4 x float> %i.hc, ptr %i.gt, align 4, !tbaa !54
  %index.next168 = add nuw i64 %index162, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next168, %n.vec160
  br i1 %i.hd, label %middle.block169, label %vector.body161, !llvm.loop !1615

middle.block169:                                  ; preds = %vector.body161
  %cmp.n170 = icmp eq i64 %i.go, %n.vec160
  br i1 %cmp.n170, label %.loopexit105, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.lr.ph111, %middle.block169
  %indvars.iv127.ph = phi i64 [ %i.gn, %.lr.ph111 ], [ %i.gp, %middle.block169 ]
  br label %scalar.ph156

scalar.ph172:                                     ; preds = %scalar.ph172.preheader, %scalar.ph172
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %scalar.ph172 ], [ %indvars.iv122.ph, %scalar.ph172.preheader ] ; 5 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv122
  %i.hf = load float, ptr %i.he, align 4, !tbaa !54 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv122
  %6 = load float, ptr %i.hg, align 4, !tbaa !54  ; 2 uses
  %7 = fmul float %i.hf, %6
  %8 = call float @llvm.exp.f32(float %7)
  %9 = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv122
  %10 = fadd float %6, -1.000000e+00
  %11 = fmul float %i.hf, %10
  %i.hh = call float @llvm.exp.f32(float %11)
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %8, i64 1
  %i.hk = fadd <2 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = fdiv <2 x float> splat (float 1.000000e+00), %i.hk ; 2 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 1 ; 2 uses
  store float %i.hm, ptr %9, align 4, !tbaa !54
  %i.hn = extractelement <2 x float> %i.hl, i64 0
  %i.ho = fsub float %i.hn, %i.hm
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv122
  store float %i.ho, ptr %i.hp, align 4, !tbaa !54
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.lr.ph111, label %scalar.ph172, !llvm.loop !1616

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %scalar.ph156 ], [ %indvars.iv127.ph, %scalar.ph156.preheader ] ; 6 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv127
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !54
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv127
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !54
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv127 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !54
  %i.hw = fsub float %i.ht, %i.hv
  %i.hx = fmul float %i.hr, %i.hw
  %i.hy = call float @llvm.exp.f32(float %i.hx)
  %i.hz = fadd float %i.hy, 1.000000e+00
  %i.ia = fdiv float 1.000000e+00, %i.hz
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv127
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !54
  %i.id = fsub float %i.ia, %i.ic
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv127
  %i.if = load float, ptr %i.ie, align 4, !tbaa !54
  %i.ig = fdiv float %i.id, %i.if
  store float %i.ig, ptr %i.hu, align 4, !tbaa !54
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %.loopexit105, label %scalar.ph156, !llvm.loop !1617

.loopexit105:                                     ; preds = %scalar.ph156, %middle.block169, %._crit_edge
  %i.ih = load ptr, ptr %i.cx, align 8, !tbaa !1618, !nonnull !83
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !99, !range !82, !noundef !83
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %.lr.ph113, label %.lr.ph116.preheader

.lr.ph113:                                        ; preds = %.loopexit105
  %i.ik = load ptr, ptr %i.cy, align 8, !tbaa !1619, !nonnull !83, !align !420
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !115 ; 2 uses
  %i.im = load ptr, ptr %i.cz, align 8, !tbaa !1620, !nonnull !83, !align !420
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !115 ; 2 uses
  %i.io = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count135 = sext i32 %i.dw to i64
  %i.ip = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ip, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph113
  %n.vec = and i64 %i.ip, -8                      ; 3 uses
  %i.iq = add nsw i64 %n.vec, %i.io
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ir = add i64 %index, %i.io                   ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.ir ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ir ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load = load <4 x float>, ptr %i.is, align 4, !tbaa !54
  %wide.load151 = load <4 x float>, ptr %i.iv, align 4, !tbaa !54
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %wide.load152 = load <4 x float>, ptr %i.iu, align 4, !tbaa !54 ; 2 uses
  %wide.load153 = load <4 x float>, ptr %i.iw, align 4, !tbaa !54 ; 2 uses
  %i.ix = fsub <4 x float> splat (float 1.000000e+00), %wide.load152
  %i.iy = fsub <4 x float> splat (float 1.000000e+00), %wide.load153
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load154 = load <4 x float>, ptr %i.it, align 4, !tbaa !54
  %wide.load155 = load <4 x float>, ptr %i.iz, align 4, !tbaa !54
  %i.ja = fmul <4 x float> %wide.load152, %wide.load154
  %i.jb = fmul <4 x float> %wide.load153, %wide.load155
  %i.jc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.ix, <4 x float> %i.ja)
  %i.jd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load151, <4 x float> %i.iy, <4 x float> %i.jb)
  store <4 x float> %i.jc, ptr %i.iu, align 4, !tbaa !54
  store <4 x float> %i.jd, ptr %i.iw, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.je = icmp eq i64 %index.next, %n.vec
  br i1 %i.je, label %middle.block, label %vector.body, !llvm.loop !1621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ip, %n.vec
  br i1 %cmp.n, label %.lr.ph116.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph113, %middle.block
  %indvars.iv132.ph = phi i64 [ %i.io, %.lr.ph113 ], [ %i.iq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %scalar.ph ], [ %indvars.iv132.ph, %scalar.ph.preheader ] ; 4 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv132
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv132
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv132 ; 2 uses
  %i.ji = load float, ptr %i.jf, align 4, !tbaa !54
  %i.jj = load float, ptr %i.jh, align 4, !tbaa !54 ; 2 uses
  %i.jk = fsub float 1.000000e+00, %i.jj
  %i.jl = load float, ptr %i.jg, align 4, !tbaa !54
  %i.jm = fmul float %i.jj, %i.jl
  %i.jn = call noundef float @llvm.fmuladd.f32(float %i.ji, float %i.jk, float %i.jm)
  store float %i.jn, ptr %i.jh, align 4, !tbaa !54
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %.lr.ph116.preheader, label %scalar.ph, !llvm.loop !1622

.lr.ph116.preheader:                              ; preds = %scalar.ph, %.loopexit105, %middle.block
  %i.jo = sext i32 %i.dv to i64
  br label %.lr.ph116

._crit_edge117:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.ae
  %indvars.iv137 = phi i64 [ %i.jo, %.lr.ph116.preheader ], [ %indvars.iv.next138, %bb.ae ] ; 3 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv137
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !54
  %i.jr = load ptr, ptr %5, align 8, !tbaa !909
  %i.js = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr)
          to label %.noexc97 unwind label %bb.af

.noexc97:                                         ; preds = %.lr.ph116
  %i.jt = icmp eq i32 %i.js, 3
  br i1 %i.jt, label %bb.ad, label %bb.ae, !prof !48

bb.ad:                                            ; preds = %.noexc97
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc97, %bb.ad
  %i.ju = load ptr, ptr %i.da, align 8, !tbaa !917
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 %indvars.iv137
  %i.jw = fmul float %i.jq, 2.550000e+02          ; 2 uses
  %i.jx = fcmp olt float %i.jw, 0.000000e+00
  %i.jy = select i1 %i.jx, float -5.000000e-01, float 5.000000e-01
  %i.jz = fadd float %i.jw, %i.jy                 ; 2 uses
  %.inv.i.i.i.i.i94 = fcmp oge float %i.jz, 0.000000e+00
  %.0.i.i.i.i.i.i95 = select i1 %.inv.i.i.i.i.i94, float %i.jz, float 0.000000e+00 ; 2 uses
  %i.ka = fcmp ogt float %.0.i.i.i.i.i.i95, 2.550000e+02
  %.1.i.i.i.i.i.i96 = select i1 %i.ka, float 2.550000e+02, float %.0.i.i.i.i.i.i95
  %i.kb = fptoui float %.1.i.i.i.i.i.i96 to i8
  store i8 %i.kb, ptr %i.jv, align 1, !tbaa !47
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.kc = load i32, ptr %i.bs, align 4, !tbaa !20
  %i.kd = sext i32 %i.kc to i64
  %i.ke = icmp slt i64 %indvars.iv.next138, %i.kd
  br i1 %i.ke, label %.lr.ph116, label %._crit_edge117, !llvm.loop !1623

bb.af:                                            ; preds = %bb.ad, %.lr.ph116
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge117
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1624

bb.ah:                                            ; preds = %bb.ag, %._crit_edge117
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.kg, %bb.ah ], [ %i.kf, %bb.af ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %5) #31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ai ], [ %i.du, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.al

bb.ak:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit83
  ret void

bb.al:                                            ; preds = %bb.aj, %bb.q
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.q ], [ %.pn.pn, %bb.aj ]
  resume { ptr, i32 } %.pn77.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_NS1_4spanIKfLm18446744073709551615EEESD_SD_SD_SD_SD_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !151
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L15contrast_remap_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS0_3ROIEiENKUlSB_E_clESB_(ptr noundef nonnull readonly align 8 dereferenceable(88) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15contrast_remap_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_NS1_4spanIKfLm18446744073709551615EEESD_SD_SD_SD_SD_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_4spanIKfLm18446744073709551615EEESC_SC_SC_SC_SC_NS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
end_hunk_4
begin_hunk_5_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS0_3ROIEiENKUlSB_E_clESB_:bb.a
  %i.gn = call range(i32 4, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %i.gj, i1 true)
  %i.go = add nsw <4 x i32> %i.gn, splat (i32 -8) ; 2 uses
  %i.gp = shl <4 x i32> %i.gj, %i.go
  %i.gq = or <4 x i32> %i.gl, %i.gp
  %i.gr = or <4 x i32> %i.gq, splat (i32 947912704)
  %i.gs = shl nuw nsw <4 x i32> %i.go, splat (i32 23)
  %i.gt = sub nuw <4 x i32> %i.gr, %i.gs
  %i.gu = or disjoint <4 x i32> %i.gj, %i.gl      ; 2 uses
  %i.gv = icmp samesign ugt <4 x i32> %i.gj, splat (i32 260046847)
  %i.gw = or <4 x i32> %i.gu, splat (i32 2139095040)
  %i.gx = add nsw <4 x i32> %i.gj, splat (i32 -8388608)
  %i.gy = icmp ult <4 x i32> %i.gx, splat (i32 251658240)
  %i.gz = add nuw nsw <4 x i32> %i.gu, splat (i32 939524096)
  %predphi = select <4 x i1> %i.gm, <4 x i32> %i.gl, <4 x i32> %i.gt
  %predphi208 = select <4 x i1> %i.gv, <4 x i32> %i.gw, <4 x i32> %predphi
  %predphi209 = select <4 x i1> %i.gy, <4 x i32> %i.gz, <4 x i32> %predphi208
  %i.ha = bitcast <4 x i32> %predphi209 to <4 x float>
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.gf
  %wide.load210 = load <4 x float>, ptr %i.hb, align 4, !tbaa !54
  %i.hc = fsub <4 x float> %i.ha, %wide.load210
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gf
  %wide.load211 = load <4 x float>, ptr %i.hd, align 4, !tbaa !54
  %i.he = fmul <4 x float> %i.hc, %wide.load211
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.gf
  store <4 x float> %i.he, ptr %i.hf, align 4, !tbaa !54
  %index.next212 = add nuw i64 %index206, 4       ; 2 uses
  %i.hg = icmp eq i64 %index.next212, %n.vec204
  br i1 %i.hg, label %middle.block213, label %vector.body205, !llvm.loop !1633

middle.block213:                                  ; preds = %vector.body205
  %cmp.n214 = icmp eq i64 %i.gd, %n.vec204
  br i1 %cmp.n214, label %._crit_edge, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %.lr.ph, %middle.block213
  %indvars.iv.ph = phi i64 [ %i.gc, %.lr.ph ], [ %i.ge, %middle.block213 ]
  br label %scalar.ph200

._crit_edge:                                      ; preds = %bb.ay, %middle.block213
  %i.hh = load ptr, ptr %i.et, align 8, !tbaa !1634, !nonnull !83
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !99, !range !82, !noundef !83
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %.lr.ph115, label %.loopexit111

.lr.ph115:                                        ; preds = %._crit_edge
  %i.hk = load ptr, ptr %i.eu, align 8, !tbaa !1635, !nonnull !83, !align !420
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !115 ; 2 uses
  %i.hm = load ptr, ptr %i.ev, align 8, !tbaa !1636, !nonnull !83, !align !420
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !115 ; 2 uses
  %i.ho = sext i32 %i.fu to i64                   ; 3 uses
  %wide.trip.count131 = sext i32 %i.fv to i64
  %i.hp = sub nsw i64 %wide.trip.count, %i.gc     ; 3 uses
  %min.iters.check188 = icmp ult i64 %i.hp, 4
  br i1 %min.iters.check188, label %scalar.ph187.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph115
  %n.vec191 = and i64 %i.hp, -4                   ; 3 uses
  %i.hq = add nsw i64 %n.vec191, %i.ho
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph189
  %index193 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body192 ] ; 2 uses
  %i.hr = add i64 %index193, %i.ho                ; 4 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hr
  %wide.load194 = load <4 x float>, ptr %i.hs, align 4, !tbaa !54 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hr
  %wide.load195 = load <4 x float>, ptr %i.ht, align 4, !tbaa !54 ; 2 uses
  %i.hu = fmul <4 x float> %wide.load194, %wide.load195
  %i.hv = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.hu)
  %i.hw = fadd <4 x float> %i.hv, splat (float 1.000000e+00)
  %i.hx = fdiv <4 x float> splat (float 1.000000e+00), %i.hw ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.hr
  store <4 x float> %i.hx, ptr %i.hy, align 4, !tbaa !54
  %i.hz = fadd <4 x float> %wide.load195, splat (float -1.000000e+00)
  %i.ia = fmul <4 x float> %wide.load194, %i.hz
  %i.ib = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ia)
  %i.ic = fadd <4 x float> %i.ib, splat (float 1.000000e+00)
  %i.id = fdiv <4 x float> splat (float 1.000000e+00), %i.ic
  %i.ie = fsub <4 x float> %i.id, %i.hx
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hr
  store <4 x float> %i.ie, ptr %i.if, align 4, !tbaa !54
  %index.next196 = add nuw i64 %index193, 4       ; 2 uses
  %i.ig = icmp eq i64 %index.next196, %n.vec191
  br i1 %i.ig, label %middle.block197, label %vector.body192, !llvm.loop !1637

middle.block197:                                  ; preds = %vector.body192
  %cmp.n198 = icmp eq i64 %i.hp, %n.vec191
  br i1 %cmp.n198, label %.lr.ph117, label %scalar.ph187.preheader

scalar.ph187.preheader:                           ; preds = %.lr.ph115, %middle.block197
  %indvars.iv128.ph = phi i64 [ %i.ho, %.lr.ph115 ], [ %i.hq, %middle.block197 ]
  br label %scalar.ph187

scalar.ph200:                                     ; preds = %scalar.ph200.preheader, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ %indvars.iv.ph, %scalar.ph200.preheader ] ; 5 uses
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %indvars.iv
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !957 ; 2 uses
  %i.ij = zext i16 %i.ii to i32
  %i.ik = shl nuw nsw i32 %i.ij, 13
  %i.il = and i32 %i.ik, 268427264                ; 6 uses
  %.signext.i.i.i.i.i90 = sext i16 %i.ii to i32
  %i.im = and i32 %.signext.i.i.i.i.i90, -2147483648 ; 3 uses
  %i.in = icmp samesign ugt i32 %i.il, 8388607
  br i1 %i.in, label %bb.at, label %bb.aw, !prof !22

bb.at:                                            ; preds = %scalar.ph200
  %i.io = or disjoint i32 %i.il, %i.im            ; 2 uses
  %i.ip = icmp samesign ult i32 %i.il, 260046848
  br i1 %i.ip, label %bb.au, label %bb.av, !prof !22

bb.au:                                            ; preds = %bb.at
  %i.iq = add nuw nsw i32 %i.io, 939524096
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.ir = or i32 %i.io, 2139095040
  br label %bb.ay

bb.aw:                                            ; preds = %scalar.ph200
  %.not.i.i.i.i.i91 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i.i.i.i91, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.is = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.il, i1 true)
  %i.it = add nsw i32 %i.is, -8                   ; 2 uses
  %i.iu = shl i32 %i.il, %i.it
  %i.iv = or i32 %i.im, %i.iu
  %i.iw = or i32 %i.iv, 947912704
  %i.ix = shl nuw nsw i32 %i.it, 23
  %i.iy = sub nuw i32 %i.iw, %i.ix
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %.sroa.0.0.i.i.i.i.i92 = phi i32 [ %i.iq, %bb.au ], [ %i.ir, %bb.av ], [ %i.iy, %bb.ax ], [ %i.im, %bb.aw ]
  %i.iz = bitcast i32 %.sroa.0.0.i.i.i.i.i92 to float
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !54
  %i.jc = fsub float %i.iz, %i.jb
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %indvars.iv
  %i.je = load float, ptr %i.jd, align 4, !tbaa !54
  %i.jf = fmul float %i.jc, %i.je
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv
  store float %i.jf, ptr %i.jg, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph200, !llvm.loop !1638

.lr.ph117:                                        ; preds = %scalar.ph187, %middle.block197
  %i.jh = load ptr, ptr %i.eu, align 8, !tbaa !1635, !nonnull !83, !align !420
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !115 ; 2 uses
  %i.jj = load ptr, ptr %i.ev, align 8, !tbaa !1636, !nonnull !83, !align !420
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !115 ; 2 uses
  %i.jl = sext i32 %i.fu to i64                   ; 3 uses
  %wide.trip.count136 = sext i32 %i.fv to i64
  %i.jm = sub nsw i64 %wide.trip.count, %i.gc     ; 3 uses
  %min.iters.check172 = icmp ult i64 %i.jm, 4
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph117
  %n.vec175 = and i64 %i.jm, -4                   ; 3 uses
  %i.jn = add nsw i64 %n.vec175, %i.jl
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next183, %vector.body176 ] ; 2 uses
  %i.jo = add i64 %index177, %i.jl                ; 5 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jo
  %wide.load178 = load <4 x float>, ptr %i.jp, align 4, !tbaa !54
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jo
  %wide.load179 = load <4 x float>, ptr %i.jq, align 4, !tbaa !54
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.jo ; 2 uses
  %wide.load180 = load <4 x float>, ptr %i.jr, align 4, !tbaa !54
  %i.js = fsub <4 x float> %wide.load179, %wide.load180
  %i.jt = fmul <4 x float> %wide.load178, %i.js
  %i.ju = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.jt)
  %i.jv = fadd <4 x float> %i.ju, splat (float 1.000000e+00)
  %i.jw = fdiv <4 x float> splat (float 1.000000e+00), %i.jv
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.jo
  %wide.load181 = load <4 x float>, ptr %i.jx, align 4, !tbaa !54
  %i.jy = fsub <4 x float> %i.jw, %wide.load181
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.jo
  %wide.load182 = load <4 x float>, ptr %i.jz, align 4, !tbaa !54
  %i.ka = fdiv <4 x float> %i.jy, %wide.load182
  store <4 x float> %i.ka, ptr %i.jr, align 4, !tbaa !54
  %index.next183 = add nuw i64 %index177, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next183, %n.vec175
  br i1 %i.kb, label %middle.block184, label %vector.body176, !llvm.loop !1639

middle.block184:                                  ; preds = %vector.body176
  %cmp.n185 = icmp eq i64 %i.jm, %n.vec175
  br i1 %cmp.n185, label %.loopexit111, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %.lr.ph117, %middle.block184
  %indvars.iv133.ph = phi i64 [ %i.jl, %.lr.ph117 ], [ %i.jn, %middle.block184 ]
  br label %scalar.ph171

scalar.ph187:                                     ; preds = %scalar.ph187.preheader, %scalar.ph187
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %scalar.ph187 ], [ %indvars.iv128.ph, %scalar.ph187.preheader ] ; 5 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv128
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !54 ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv128
  %6 = load float, ptr %i.ke, align 4, !tbaa !54  ; 2 uses
  %7 = fmul float %i.kd, %6
  %8 = call float @llvm.exp.f32(float %7)
  %9 = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %indvars.iv128
  %10 = fadd float %6, -1.000000e+00
  %11 = fmul float %i.kd, %10
  %i.kf = call float @llvm.exp.f32(float %11)
  %i.kg = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kh = insertelement <2 x float> %i.kg, float %8, i64 1
  %i.ki = fadd <2 x float> %i.kh, splat (float 1.000000e+00)
  %i.kj = fdiv <2 x float> splat (float 1.000000e+00), %i.ki ; 2 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 1 ; 2 uses
  store float %i.kk, ptr %9, align 4, !tbaa !54
  %i.kl = extractelement <2 x float> %i.kj, i64 0
  %i.km = fsub float %i.kl, %i.kk
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv128
  store float %i.km, ptr %i.kn, align 4, !tbaa !54
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.lr.ph117, label %scalar.ph187, !llvm.loop !1640

scalar.ph171:                                     ; preds = %scalar.ph171.preheader, %scalar.ph171
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph171 ], [ %indvars.iv133.ph, %scalar.ph171.preheader ] ; 6 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv133
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !54
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv133
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !54
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv133 ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !54
  %i.ku = fsub float %i.kr, %i.kt
  %i.kv = fmul float %i.kp, %i.ku
  %i.kw = call float @llvm.exp.f32(float %i.kv)
  %i.kx = fadd float %i.kw, 1.000000e+00
  %i.ky = fdiv float 1.000000e+00, %i.kx
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %indvars.iv133
  %i.la = load float, ptr %i.kz, align 4, !tbaa !54
  %i.lb = fsub float %i.ky, %i.la
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv133
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !54
  %i.le = fdiv float %i.lb, %i.ld
  store float %i.le, ptr %i.ks, align 4, !tbaa !54
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.loopexit111, label %scalar.ph171, !llvm.loop !1641

.loopexit111:                                     ; preds = %scalar.ph171, %middle.block184, %._crit_edge
  %i.lf = load ptr, ptr %i.ew, align 8, !tbaa !1642, !nonnull !83
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !99, !range !82, !noundef !83
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %.lr.ph119, label %.lr.ph122.preheader

.lr.ph119:                                        ; preds = %.loopexit111
  %i.li = load ptr, ptr %i.ex, align 8, !tbaa !1643, !nonnull !83, !align !420
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !115 ; 2 uses
  %i.lk = load ptr, ptr %i.ey, align 8, !tbaa !1644, !nonnull !83, !align !420
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !115 ; 2 uses
  %i.lm = sext i32 %i.fu to i64                   ; 3 uses
  %wide.trip.count141 = sext i32 %i.fv to i64
  %i.ln = sub nsw i64 %wide.trip.count, %i.gc     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ln, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph119
  %n.vec = and i64 %i.ln, -8                      ; 3 uses
  %i.lo = add nsw i64 %n.vec, %i.lm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lp = add i64 %index, %i.lm                   ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lp ; 2 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.lp ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load = load <4 x float>, ptr %i.lq, align 4, !tbaa !54
  %wide.load166 = load <4 x float>, ptr %i.lt, align 4, !tbaa !54
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %wide.load167 = load <4 x float>, ptr %i.ls, align 4, !tbaa !54 ; 2 uses
  %wide.load168 = load <4 x float>, ptr %i.lu, align 4, !tbaa !54 ; 2 uses
  %i.lv = fsub <4 x float> splat (float 1.000000e+00), %wide.load167
  %i.lw = fsub <4 x float> splat (float 1.000000e+00), %wide.load168
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %wide.load169 = load <4 x float>, ptr %i.lr, align 4, !tbaa !54
  %wide.load170 = load <4 x float>, ptr %i.lx, align 4, !tbaa !54
  %i.ly = fmul <4 x float> %wide.load167, %wide.load169
  %i.lz = fmul <4 x float> %wide.load168, %wide.load170
  %i.ma = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.lv, <4 x float> %i.ly)
  %i.mb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load166, <4 x float> %i.lw, <4 x float> %i.lz)
  store <4 x float> %i.ma, ptr %i.ls, align 4, !tbaa !54
  store <4 x float> %i.mb, ptr %i.lu, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mc = icmp eq i64 %index.next, %n.vec
  br i1 %i.mc, label %middle.block, label %vector.body, !llvm.loop !1645

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ln, %n.vec
  br i1 %cmp.n, label %.lr.ph122.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph119, %middle.block
  %indvars.iv138.ph = phi i64 [ %i.lm, %.lr.ph119 ], [ %i.lo, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %scalar.ph ], [ %indvars.iv138.ph, %scalar.ph.preheader ] ; 4 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv138
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv138
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv138 ; 2 uses
  %i.mg = load float, ptr %i.md, align 4, !tbaa !54
  %i.mh = load float, ptr %i.mf, align 4, !tbaa !54 ; 2 uses
  %i.mi = fsub float 1.000000e+00, %i.mh
  %i.mj = load float, ptr %i.me, align 4, !tbaa !54
  %i.mk = fmul float %i.mh, %i.mj
  %i.ml = call noundef float @llvm.fmuladd.f32(float %i.mg, float %i.mi, float %i.mk)
  store float %i.ml, ptr %i.mf, align 4, !tbaa !54
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %.lr.ph122.preheader, label %scalar.ph, !llvm.loop !1646

.lr.ph122.preheader:                              ; preds = %scalar.ph, %.loopexit111, %middle.block
  %i.mm = sext i32 %i.fu to i64
  br label %.lr.ph122

._crit_edge123:                                   ; preds = %bb.bk, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.bm unwind label %bb.bn

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.bk
  %indvars.iv143 = phi i64 [ %i.mm, %.lr.ph122.preheader ], [ %indvars.iv.next144, %bb.bk ] ; 3 uses
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv143
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !54 ; 2 uses
  %i.mp = load ptr, ptr %5, align 8, !tbaa !909
  %i.mq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mp)
          to label %.noexc103 unwind label %bb.bl

.noexc103:                                        ; preds = %.lr.ph122
  %i.mr = icmp eq i32 %i.mq, 3
  br i1 %i.mr, label %bb.az, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99, !prof !48

bb.az:                                            ; preds = %.noexc103
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99 unwind label %bb.bl

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99: ; preds = %bb.az, %.noexc103
  %i.ms = load ptr, ptr %i.ez, align 8, !tbaa !917
  %i.mt = bitcast float %i.mo to i32
  %i.mu = call float @llvm.fabs.f32(float %i.mo)
  %i.mv = bitcast float %i.mu to i32              ; 10 uses
  %i.mw = lshr i32 %i.mt, 16                      ; 3 uses
  %i.mx = trunc nuw i32 %i.mw to i16
  %i.my = and i16 %i.mx, -32768                   ; 3 uses
  %i.mz = icmp samesign ugt i32 %i.mv, 947912703
  br i1 %i.mz, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99
  %i.na = icmp samesign ugt i32 %i.mv, 2139095039
  br i1 %i.na, label %bb.bb, label %bb.bd, !prof !48

bb.bb:                                            ; preds = %bb.ba
  %i.nb = or disjoint i16 %i.my, 31744            ; 2 uses
  %i.nc = icmp eq i32 %i.mv, 2139095040
  br i1 %i.nc, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nd = lshr i32 %i.mv, 13
  %i.ne = and i32 %i.nd, 1023                     ; 2 uses
  %i.nf = icmp eq i32 %i.ne, 0
  %i.ng = zext i1 %i.nf to i16
  %i.nh = trunc nuw nsw i32 %i.ne to i16
  %i.ni = or i16 %i.nh, %i.ng
  %i.nj = or disjoint i16 %i.ni, %i.nb
  br label %bb.bk

bb.bd:                                            ; preds = %bb.ba
  %i.nk = icmp samesign ugt i32 %i.mv, 1199566847
  br i1 %i.nk, label %bb.be, label %bb.bf, !prof !48

bb.be:                                            ; preds = %bb.bd
  %i.nl = or disjoint i16 %i.my, 31744
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.nm = add nuw nsw i32 %i.mv, 134221823
  %i.nn = lshr i32 %i.mv, 13
  %i.no = and i32 %i.nn, 1
  %i.np = add nuw nsw i32 %i.nm, %i.no
  %i.nq = lshr i32 %i.np, 13
  %i.nr = and i32 %i.mw, 32768
  %i.ns = or i32 %i.nq, %i.nr
  %i.nt = trunc i32 %i.ns to i16
  br label %bb.bk

bb.bg:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99
  %i.nu = icmp samesign ult i32 %i.mv, 855638017
  br i1 %i.nu, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nv = lshr i32 %i.mv, 23                      ; 2 uses
  %i.nw = sub nuw nsw i32 126, %i.nv
  %i.nx = and i32 %i.mv, 8388607
  %i.ny = or disjoint i32 %i.nx, 8388608          ; 2 uses
  %i.nz = add nsw i32 %i.nv, -94
  %i.oa = shl i32 %i.ny, %i.nz                    ; 2 uses
  %i.ob = lshr i32 %i.ny, %i.nw                   ; 2 uses
  %i.oc = and i32 %i.mw, 32768
  %i.od = or i32 %i.ob, %i.oc
  %i.oe = trunc nuw i32 %i.od to i16              ; 2 uses
  %i.of = icmp ugt i32 %i.oa, -2147483648
  br i1 %i.of, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.og = icmp ne i32 %i.oa, -2147483648
  %i.oh = and i32 %i.ob, 1
  %.not.i.i.i.i.i100 = icmp eq i32 %i.oh, 0
end_hunk_5
begin_hunk_6_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IttEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit89, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ak

bb.ac:                                            ; preds = %.thread
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dv = load i32, ptr %i.cq, align 8, !tbaa !49 ; 6 uses
  %i.dw = load i32, ptr %i.bs, align 4, !tbaa !20 ; 5 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph, label %._crit_edge117

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.dy = load ptr, ptr %i.cr, align 8, !tbaa !917 ; 2 uses
  %i.dz = load ptr, ptr %i.cs, align 8, !tbaa !1653, !nonnull !83, !align !420
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !115 ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1656, !nonnull !83, !align !420
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !52 ; 2 uses
  %i.ed = sext i32 %i.dv to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.dw to i64        ; 5 uses
  %i.ee = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check186 = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph
  %n.vec189 = and i64 %i.ee, -8                   ; 3 uses
  %i.ef = add nsw i64 %n.vec189, %i.ed
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph187
  %index191 = phi i64 [ 0, %vector.ph187 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.eg = add i64 %index191, %i.ed                ; 4 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %wide.load192 = load <4 x i16>, ptr %i.eh, align 2, !tbaa !964
  %wide.load193 = load <4 x i16>, ptr %i.ei, align 2, !tbaa !964
  %i.ej = uitofp <4 x i16> %wide.load192 to <4 x float>
  %i.ek = uitofp <4 x i16> %wide.load193 to <4 x float>
  %i.el = fmul nnan <4 x float> %i.ej, splat (float f0x37800080)
  %i.em = fmul nnan <4 x float> %i.ek, splat (float f0x37800080)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eg ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load194 = load <4 x float>, ptr %i.en, align 4, !tbaa !54
  %wide.load195 = load <4 x float>, ptr %i.eo, align 4, !tbaa !54
  %i.ep = fsub <4 x float> %i.el, %wide.load194
  %i.eq = fsub <4 x float> %i.em, %wide.load195
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eg ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load196 = load <4 x float>, ptr %i.er, align 4, !tbaa !54
  %wide.load197 = load <4 x float>, ptr %i.es, align 4, !tbaa !54
  %i.et = fmul <4 x float> %i.ep, %wide.load196
  %i.eu = fmul <4 x float> %i.eq, %wide.load197
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.eg ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <4 x float> %i.et, ptr %i.ev, align 4, !tbaa !54
  store <4 x float> %i.eu, ptr %i.ew, align 4, !tbaa !54
  %index.next198 = add nuw i64 %index191, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.ex, label %middle.block199, label %vector.body190, !llvm.loop !1657

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %i.ee, %n.vec189
  br i1 %cmp.n200, label %._crit_edge, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %.lr.ph, %middle.block199
  %indvars.iv.ph = phi i64 [ %i.ed, %.lr.ph ], [ %i.ef, %middle.block199 ]
  br label %scalar.ph185

._crit_edge:                                      ; preds = %scalar.ph185, %middle.block199
  %i.ey = load ptr, ptr %i.cu, align 8, !tbaa !1658, !nonnull !83
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !99, !range !82, !noundef !83
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %.lr.ph109, label %.loopexit105

.lr.ph109:                                        ; preds = %._crit_edge
  %i.fb = load ptr, ptr %i.cv, align 8, !tbaa !1659, !nonnull !83, !align !420
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !115 ; 2 uses
  %i.fd = load ptr, ptr %i.cw, align 8, !tbaa !1660, !nonnull !83, !align !420
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !115 ; 2 uses
  %i.ff = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count125 = sext i32 %i.dw to i64
  %i.fg = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.fg, 4
  br i1 %min.iters.check173, label %scalar.ph172.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %.lr.ph109
  %n.vec176 = and i64 %i.fg, -4                   ; 3 uses
  %i.fh = add nsw i64 %n.vec176, %i.ff
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph174
  %index178 = phi i64 [ 0, %vector.ph174 ], [ %index.next181, %vector.body177 ] ; 2 uses
  %i.fi = add i64 %index178, %i.ff                ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fi
  %wide.load179 = load <4 x float>, ptr %i.fj, align 4, !tbaa !54 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fi
  %wide.load180 = load <4 x float>, ptr %i.fk, align 4, !tbaa !54 ; 2 uses
  %i.fl = fmul <4 x float> %wide.load179, %wide.load180
  %i.fm = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = fdiv <4 x float> splat (float 1.000000e+00), %i.fn ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.fi
  store <4 x float> %i.fo, ptr %i.fp, align 4, !tbaa !54
  %i.fq = fadd <4 x float> %wide.load180, splat (float -1.000000e+00)
  %i.fr = fmul <4 x float> %wide.load179, %i.fq
  %i.fs = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fr)
  %i.ft = fadd <4 x float> %i.fs, splat (float 1.000000e+00)
  %i.fu = fdiv <4 x float> splat (float 1.000000e+00), %i.ft
  %i.fv = fsub <4 x float> %i.fu, %i.fo
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.fi
  store <4 x float> %i.fv, ptr %i.fw, align 4, !tbaa !54
  %index.next181 = add nuw i64 %index178, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.fx, label %middle.block182, label %vector.body177, !llvm.loop !1661

middle.block182:                                  ; preds = %vector.body177
  %cmp.n183 = icmp eq i64 %i.fg, %n.vec176
  br i1 %cmp.n183, label %.lr.ph111, label %scalar.ph172.preheader

scalar.ph172.preheader:                           ; preds = %.lr.ph109, %middle.block182
  %indvars.iv122.ph = phi i64 [ %i.ff, %.lr.ph109 ], [ %i.fh, %middle.block182 ]
  br label %scalar.ph172

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph185 ], [ %indvars.iv.ph, %scalar.ph185.preheader ] ; 5 uses
  %i.fy = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %indvars.iv
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !964
  %i.ga = uitofp i16 %i.fz to float
  %i.gb = fmul nnan float %i.ga, f0x37800080
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !54
  %i.ge = fsub float %i.gb, %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !54
  %i.gh = fmul float %i.ge, %i.gg
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  store float %i.gh, ptr %i.gi, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph185, !llvm.loop !1662

.lr.ph111:                                        ; preds = %scalar.ph172, %middle.block182
  %i.gj = load ptr, ptr %i.cv, align 8, !tbaa !1659, !nonnull !83, !align !420
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !115 ; 2 uses
  %i.gl = load ptr, ptr %i.cw, align 8, !tbaa !1660, !nonnull !83, !align !420
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !115 ; 2 uses
  %i.gn = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count130 = sext i32 %i.dw to i64
  %i.go = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check157 = icmp ult i64 %i.go, 4
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.lr.ph111
  %n.vec160 = and i64 %i.go, -4                   ; 3 uses
  %i.gp = add nsw i64 %n.vec160, %i.gn
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph158
  %index162 = phi i64 [ 0, %vector.ph158 ], [ %index.next168, %vector.body161 ] ; 2 uses
  %i.gq = add i64 %index162, %i.gn                ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gq
  %wide.load163 = load <4 x float>, ptr %i.gr, align 4, !tbaa !54
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gq
  %wide.load164 = load <4 x float>, ptr %i.gs, align 4, !tbaa !54
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.gq ; 2 uses
  %wide.load165 = load <4 x float>, ptr %i.gt, align 4, !tbaa !54
  %i.gu = fsub <4 x float> %wide.load164, %wide.load165
  %i.gv = fmul <4 x float> %wide.load163, %i.gu
  %i.gw = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gv)
  %i.gx = fadd <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fdiv <4 x float> splat (float 1.000000e+00), %i.gx
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.gq
  %wide.load166 = load <4 x float>, ptr %i.gz, align 4, !tbaa !54
  %i.ha = fsub <4 x float> %i.gy, %wide.load166
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.gq
  %wide.load167 = load <4 x float>, ptr %i.hb, align 4, !tbaa !54
  %i.hc = fdiv <4 x float> %i.ha, %wide.load167
  store <4 x float> %i.hc, ptr %i.gt, align 4, !tbaa !54
  %index.next168 = add nuw i64 %index162, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next168, %n.vec160
  br i1 %i.hd, label %middle.block169, label %vector.body161, !llvm.loop !1663

middle.block169:                                  ; preds = %vector.body161
  %cmp.n170 = icmp eq i64 %i.go, %n.vec160
  br i1 %cmp.n170, label %.loopexit105, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.lr.ph111, %middle.block169
  %indvars.iv127.ph = phi i64 [ %i.gn, %.lr.ph111 ], [ %i.gp, %middle.block169 ]
  br label %scalar.ph156

scalar.ph172:                                     ; preds = %scalar.ph172.preheader, %scalar.ph172
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %scalar.ph172 ], [ %indvars.iv122.ph, %scalar.ph172.preheader ] ; 5 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv122
  %i.hf = load float, ptr %i.he, align 4, !tbaa !54 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv122
  %6 = load float, ptr %i.hg, align 4, !tbaa !54  ; 2 uses
  %7 = fmul float %i.hf, %6
  %8 = call float @llvm.exp.f32(float %7)
  %9 = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv122
  %10 = fadd float %6, -1.000000e+00
  %11 = fmul float %i.hf, %10
  %i.hh = call float @llvm.exp.f32(float %11)
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %8, i64 1
  %i.hk = fadd <2 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = fdiv <2 x float> splat (float 1.000000e+00), %i.hk ; 2 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 1 ; 2 uses
  store float %i.hm, ptr %9, align 4, !tbaa !54
  %i.hn = extractelement <2 x float> %i.hl, i64 0
  %i.ho = fsub float %i.hn, %i.hm
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv122
  store float %i.ho, ptr %i.hp, align 4, !tbaa !54
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.lr.ph111, label %scalar.ph172, !llvm.loop !1664

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %scalar.ph156 ], [ %indvars.iv127.ph, %scalar.ph156.preheader ] ; 6 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv127
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !54
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv127
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !54
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv127 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !54
  %i.hw = fsub float %i.ht, %i.hv
  %i.hx = fmul float %i.hr, %i.hw
  %i.hy = call float @llvm.exp.f32(float %i.hx)
  %i.hz = fadd float %i.hy, 1.000000e+00
  %i.ia = fdiv float 1.000000e+00, %i.hz
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv127
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !54
  %i.id = fsub float %i.ia, %i.ic
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv127
  %i.if = load float, ptr %i.ie, align 4, !tbaa !54
  %i.ig = fdiv float %i.id, %i.if
  store float %i.ig, ptr %i.hu, align 4, !tbaa !54
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %.loopexit105, label %scalar.ph156, !llvm.loop !1665

.loopexit105:                                     ; preds = %scalar.ph156, %middle.block169, %._crit_edge
  %i.ih = load ptr, ptr %i.cx, align 8, !tbaa !1666, !nonnull !83
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !99, !range !82, !noundef !83
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %.lr.ph113, label %.lr.ph116.preheader

.lr.ph113:                                        ; preds = %.loopexit105
  %i.ik = load ptr, ptr %i.cy, align 8, !tbaa !1667, !nonnull !83, !align !420
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !115 ; 2 uses
  %i.im = load ptr, ptr %i.cz, align 8, !tbaa !1668, !nonnull !83, !align !420
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !115 ; 2 uses
  %i.io = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count135 = sext i32 %i.dw to i64
  %i.ip = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ip, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph113
  %n.vec = and i64 %i.ip, -8                      ; 3 uses
  %i.iq = add nsw i64 %n.vec, %i.io
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ir = add i64 %index, %i.io                   ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.ir ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ir ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load = load <4 x float>, ptr %i.is, align 4, !tbaa !54
  %wide.load151 = load <4 x float>, ptr %i.iv, align 4, !tbaa !54
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %wide.load152 = load <4 x float>, ptr %i.iu, align 4, !tbaa !54 ; 2 uses
  %wide.load153 = load <4 x float>, ptr %i.iw, align 4, !tbaa !54 ; 2 uses
  %i.ix = fsub <4 x float> splat (float 1.000000e+00), %wide.load152
  %i.iy = fsub <4 x float> splat (float 1.000000e+00), %wide.load153
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load154 = load <4 x float>, ptr %i.it, align 4, !tbaa !54
  %wide.load155 = load <4 x float>, ptr %i.iz, align 4, !tbaa !54
  %i.ja = fmul <4 x float> %wide.load152, %wide.load154
  %i.jb = fmul <4 x float> %wide.load153, %wide.load155
  %i.jc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.ix, <4 x float> %i.ja)
  %i.jd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load151, <4 x float> %i.iy, <4 x float> %i.jb)
  store <4 x float> %i.jc, ptr %i.iu, align 4, !tbaa !54
  store <4 x float> %i.jd, ptr %i.iw, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.je = icmp eq i64 %index.next, %n.vec
  br i1 %i.je, label %middle.block, label %vector.body, !llvm.loop !1669

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ip, %n.vec
  br i1 %cmp.n, label %.lr.ph116.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph113, %middle.block
  %indvars.iv132.ph = phi i64 [ %i.io, %.lr.ph113 ], [ %i.iq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %scalar.ph ], [ %indvars.iv132.ph, %scalar.ph.preheader ] ; 4 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv132
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv132
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv132 ; 2 uses
  %i.ji = load float, ptr %i.jf, align 4, !tbaa !54
  %i.jj = load float, ptr %i.jh, align 4, !tbaa !54 ; 2 uses
  %i.jk = fsub float 1.000000e+00, %i.jj
  %i.jl = load float, ptr %i.jg, align 4, !tbaa !54
  %i.jm = fmul float %i.jj, %i.jl
  %i.jn = call noundef float @llvm.fmuladd.f32(float %i.ji, float %i.jk, float %i.jm)
  store float %i.jn, ptr %i.jh, align 4, !tbaa !54
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %.lr.ph116.preheader, label %scalar.ph, !llvm.loop !1670

.lr.ph116.preheader:                              ; preds = %scalar.ph, %.loopexit105, %middle.block
  %i.jo = sext i32 %i.dv to i64
  br label %.lr.ph116

._crit_edge117:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.ae
  %indvars.iv137 = phi i64 [ %i.jo, %.lr.ph116.preheader ], [ %indvars.iv.next138, %bb.ae ] ; 3 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv137
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !54
  %i.jr = load ptr, ptr %5, align 8, !tbaa !909
  %i.js = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr)
          to label %.noexc97 unwind label %bb.af

.noexc97:                                         ; preds = %.lr.ph116
  %i.jt = icmp eq i32 %i.js, 3
  br i1 %i.jt, label %bb.ad, label %bb.ae, !prof !48

bb.ad:                                            ; preds = %.noexc97
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc97, %bb.ad
  %i.ju = load ptr, ptr %i.da, align 8, !tbaa !917
  %i.jv = getelementptr inbounds [2 x i8], ptr %i.ju, i64 %indvars.iv137
  %i.jw = fmul float %i.jq, 6.553500e+04          ; 2 uses
  %i.jx = fcmp olt float %i.jw, 0.000000e+00
  %i.jy = select i1 %i.jx, float -5.000000e-01, float 5.000000e-01
  %i.jz = fadd float %i.jw, %i.jy                 ; 2 uses
  %.inv.i.i.i.i.i94 = fcmp oge float %i.jz, 0.000000e+00
  %.0.i.i.i.i.i.i95 = select i1 %.inv.i.i.i.i.i94, float %i.jz, float 0.000000e+00 ; 2 uses
  %i.ka = fcmp ogt float %.0.i.i.i.i.i.i95, 6.553500e+04
  %.1.i.i.i.i.i.i96 = select i1 %i.ka, float 6.553500e+04, float %.0.i.i.i.i.i.i95
  %i.kb = fptoui float %.1.i.i.i.i.i.i96 to i16
  store i16 %i.kb, ptr %i.jv, align 2, !tbaa !964
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.kc = load i32, ptr %i.bs, align 4, !tbaa !20
  %i.kd = sext i32 %i.kc to i64
  %i.ke = icmp slt i64 %indvars.iv.next138, %i.kd
  br i1 %i.ke, label %.lr.ph116, label %._crit_edge117, !llvm.loop !1671

bb.af:                                            ; preds = %bb.ad, %.lr.ph116
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge117
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1672

bb.ah:                                            ; preds = %bb.ag, %._crit_edge117
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.kg, %bb.ah ], [ %i.kf, %bb.af ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %5) #31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ai ], [ %i.du, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.al

bb.ak:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit83
  ret void

bb.al:                                            ; preds = %bb.aj, %bb.q
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.q ], [ %.pn.pn, %bb.aj ]
  resume { ptr, i32 } %.pn77.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9saturate_IffEEbRNS1_8ImageBufERKS5_fiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4207.i.i.i = alloca double, align 8      ; 5 uses
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 41 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1673, !nonnull !83, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1675, !nonnull !83, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i
end_hunk_6
