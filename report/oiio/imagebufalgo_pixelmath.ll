Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_pixelmath?download=true
inline.NumInlined: 12592
inline.NumDeleted: 3317
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IffEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit91: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit89, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ak

bb.ac:                                            ; preds = %.thread
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dn = load i32, ptr %i.ci, align 8, !tbaa !86 ; 6 uses
  %i.do = load i32, ptr %i.bk, align 4, !tbaa !58 ; 5 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph, label %._crit_edge114

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.dq = load ptr, ptr %i.cj, align 8, !tbaa !338 ; 2 uses
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !1523, !nonnull !110, !align !230
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !121 ; 2 uses
  %i.dt = load ptr, ptr %i.cl, align 8, !tbaa !1524, !nonnull !110, !align !230
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !88 ; 2 uses
  %i.dv = sext i32 %i.dn to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.do to i64        ; 5 uses
  %i.dw = sub nsw i64 %wide.trip.count, %i.dv     ; 3 uses
  %min.iters.check181 = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %.lr.ph
  %n.vec183 = and i64 %i.dw, -8                   ; 3 uses
  %i.dx = add nsw i64 %n.vec183, %i.dv
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next192, %vector.body184 ] ; 2 uses
  %i.dy = add i64 %index185, %i.dv                ; 4 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load186 = load <4 x float>, ptr %i.dz, align 4, !tbaa !92
  %wide.load187 = load <4 x float>, ptr %i.ea, align 4, !tbaa !92
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dy ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load188 = load <4 x float>, ptr %i.eb, align 4, !tbaa !92
  %wide.load189 = load <4 x float>, ptr %i.ec, align 4, !tbaa !92
  %i.ed = fsub <4 x float> %wide.load186, %wide.load188
  %i.ee = fsub <4 x float> %wide.load187, %wide.load189
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dy ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load190 = load <4 x float>, ptr %i.ef, align 4, !tbaa !92
  %wide.load191 = load <4 x float>, ptr %i.eg, align 4, !tbaa !92
  %i.eh = fmul <4 x float> %i.ed, %wide.load190
  %i.ei = fmul <4 x float> %i.ee, %wide.load191
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.dy ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <4 x float> %i.eh, ptr %i.ej, align 4, !tbaa !92
  store <4 x float> %i.ei, ptr %i.ek, align 4, !tbaa !92
  %index.next192 = add nuw i64 %index185, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next192, %n.vec183
  br i1 %i.el, label %middle.block193, label %vector.body184, !llvm.loop !1509

middle.block193:                                  ; preds = %vector.body184
  %cmp.n194 = icmp eq i64 %i.dw, %n.vec183
  br i1 %cmp.n194, label %._crit_edge, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %.lr.ph, %middle.block193
  %indvars.iv.ph = phi i64 [ %i.dv, %.lr.ph ], [ %i.dx, %middle.block193 ]
  br label %scalar.ph180

._crit_edge:                                      ; preds = %scalar.ph180, %middle.block193
  %i.em = load ptr, ptr %i.cm, align 8, !tbaa !1525, !nonnull !110
  %i.en = load i8, ptr %i.em, align 1, !tbaa !115, !range !109, !noundef !110
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.lr.ph106, label %.loopexit102

.lr.ph106:                                        ; preds = %._crit_edge
  %i.ep = load ptr, ptr %i.cn, align 8, !tbaa !1526, !nonnull !110, !align !230
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !121 ; 2 uses
  %i.er = load ptr, ptr %i.co, align 8, !tbaa !1527, !nonnull !110, !align !230
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !121 ; 2 uses
  %i.et = sext i32 %i.dn to i64                   ; 3 uses
  %wide.trip.count122 = sext i32 %i.do to i64
  %i.eu = sub nsw i64 %wide.trip.count, %i.dv     ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.eu, 4
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph106
  %n.vec171 = and i64 %i.eu, -4                   ; 3 uses
  %i.ev = add nsw i64 %n.vec171, %i.et
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body172 ] ; 2 uses
  %i.ew = add i64 %index173, %i.et                ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ew
  %wide.load174 = load <4 x float>, ptr %i.ex, align 4, !tbaa !92 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ew
  %wide.load175 = load <4 x float>, ptr %i.ey, align 4, !tbaa !92 ; 2 uses
  %i.ez = fmul <4 x float> %wide.load174, %wide.load175
  %i.fa = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ez)
  %i.fb = fadd <4 x float> %i.fa, splat (float 1.000000e+00)
  %i.fc = fdiv <4 x float> splat (float 1.000000e+00), %i.fb ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ew
  store <4 x float> %i.fc, ptr %i.fd, align 4, !tbaa !92
  %i.fe = fadd <4 x float> %wide.load175, splat (float -1.000000e+00)
  %i.ff = fmul <4 x float> %wide.load174, %i.fe
  %i.fg = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ff)
  %i.fh = fadd <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fdiv <4 x float> splat (float 1.000000e+00), %i.fh
  %i.fj = fsub <4 x float> %i.fi, %i.fc
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ew
  store <4 x float> %i.fj, ptr %i.fk, align 4, !tbaa !92
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.fl, label %middle.block177, label %vector.body172, !llvm.loop !1510

middle.block177:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %i.eu, %n.vec171
  br i1 %cmp.n178, label %.lr.ph108, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %.lr.ph106, %middle.block177
  %indvars.iv119.ph = phi i64 [ %i.et, %.lr.ph106 ], [ %i.ev, %middle.block177 ]
  br label %scalar.ph168

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph180 ], [ %indvars.iv.ph, %scalar.ph180.preheader ] ; 5 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %indvars.iv
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !92
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !92
  %i.fq = fsub float %i.fn, %i.fp
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !92
  %i.ft = fmul float %i.fq, %i.fs
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv
  store float %i.ft, ptr %i.fu, align 4, !tbaa !92
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph180, !llvm.loop !1511

.lr.ph108:                                        ; preds = %scalar.ph168, %middle.block177
  %i.fv = load ptr, ptr %i.cn, align 8, !tbaa !1526, !nonnull !110, !align !230
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !121 ; 2 uses
  %i.fx = load ptr, ptr %i.co, align 8, !tbaa !1527, !nonnull !110, !align !230
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !121 ; 2 uses
  %i.fz = sext i32 %i.dn to i64                   ; 3 uses
  %wide.trip.count127 = sext i32 %i.do to i64
  %i.ga = sub nsw i64 %wide.trip.count, %i.dv     ; 3 uses
  %min.iters.check154 = icmp ult i64 %i.ga, 4
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph108
  %n.vec156 = and i64 %i.ga, -4                   ; 3 uses
  %i.gb = add nsw i64 %n.vec156, %i.fz
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body157 ] ; 2 uses
  %i.gc = add i64 %index158, %i.fz                ; 5 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gc
  %wide.load159 = load <4 x float>, ptr %i.gd, align 4, !tbaa !92
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gc
  %wide.load160 = load <4 x float>, ptr %i.ge, align 4, !tbaa !92
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.gc ; 2 uses
  %wide.load161 = load <4 x float>, ptr %i.gf, align 4, !tbaa !92
  %i.gg = fsub <4 x float> %wide.load160, %wide.load161
  %i.gh = fmul <4 x float> %wide.load159, %i.gg
  %i.gi = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gh)
  %i.gj = fadd <4 x float> %i.gi, splat (float 1.000000e+00)
  %i.gk = fdiv <4 x float> splat (float 1.000000e+00), %i.gj
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.gc
  %wide.load162 = load <4 x float>, ptr %i.gl, align 4, !tbaa !92
  %i.gm = fsub <4 x float> %i.gk, %wide.load162
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.gc
  %wide.load163 = load <4 x float>, ptr %i.gn, align 4, !tbaa !92
  %i.go = fdiv <4 x float> %i.gm, %wide.load163
  store <4 x float> %i.go, ptr %i.gf, align 4, !tbaa !92
  %index.next164 = add nuw i64 %index158, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next164, %n.vec156
  br i1 %i.gp, label %middle.block165, label %vector.body157, !llvm.loop !1512

middle.block165:                                  ; preds = %vector.body157
  %cmp.n166 = icmp eq i64 %i.ga, %n.vec156
  br i1 %cmp.n166, label %.loopexit102, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.lr.ph108, %middle.block165
  %indvars.iv124.ph = phi i64 [ %i.fz, %.lr.ph108 ], [ %i.gb, %middle.block165 ]
  br label %scalar.ph153

scalar.ph168:                                     ; preds = %scalar.ph168.preheader, %scalar.ph168
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %scalar.ph168 ], [ %indvars.iv119.ph, %scalar.ph168.preheader ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv119
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !92 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv119
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv119
  %i.gu = load float, ptr %i.gs, align 4, !tbaa !92 ; 2 uses
  %i.gv = fmul float %i.gr, %i.gu
  %i.gw = call float @llvm.exp.f32(float %i.gv)
  %i.gx = fadd float %i.gu, -1.000000e+00
  %i.gy = fmul float %i.gr, %i.gx
  %i.gz = call float @llvm.exp.f32(float %i.gy)
  %i.ha = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.hb = insertelement <2 x float> %i.ha, float %i.gz, i64 1
  %i.hc = fadd <2 x float> %i.hb, splat (float 1.000000e+00)
  %i.hd = fdiv <2 x float> splat (float 1.000000e+00), %i.hc ; 3 uses
  %i.he = extractelement <2 x float> %i.hd, i64 0
  store float %i.he, ptr %i.gt, align 4, !tbaa !92
  %shift = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.hd
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv119
  store float %6, ptr %i.hf, align 4, !tbaa !92
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.lr.ph108, label %scalar.ph168, !llvm.loop !1513

scalar.ph153:                                     ; preds = %scalar.ph153.preheader, %scalar.ph153
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph153 ], [ %indvars.iv124.ph, %scalar.ph153.preheader ] ; 6 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv124
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !92
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv124
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !92
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv124 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !92
  %i.hm = fsub float %i.hj, %i.hl
  %i.hn = fmul float %i.hh, %i.hm
  %i.ho = call float @llvm.exp.f32(float %i.hn)
  %i.hp = fadd float %i.ho, 1.000000e+00
  %i.hq = fdiv float 1.000000e+00, %i.hp
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv124
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !92
  %i.ht = fsub float %i.hq, %i.hs
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv124
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !92
  %i.hw = fdiv float %i.ht, %i.hv
  store float %i.hw, ptr %i.hk, align 4, !tbaa !92
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.loopexit102, label %scalar.ph153, !llvm.loop !1514

.loopexit102:                                     ; preds = %scalar.ph153, %middle.block165, %._crit_edge
  %i.hx = load ptr, ptr %i.cp, align 8, !tbaa !1528, !nonnull !110
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !115, !range !109, !noundef !110
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %.lr.ph110, label %.lr.ph113.preheader

.lr.ph110:                                        ; preds = %.loopexit102
  %i.ia = load ptr, ptr %i.cq, align 8, !tbaa !1529, !nonnull !110, !align !230
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !121 ; 2 uses
  %i.ic = load ptr, ptr %i.cr, align 8, !tbaa !1530, !nonnull !110, !align !230
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !121 ; 2 uses
  %i.ie = sext i32 %i.dn to i64                   ; 3 uses
  %wide.trip.count132 = sext i32 %i.do to i64
  %i.if = sub nsw i64 %wide.trip.count, %i.dv     ; 3 uses
  %min.iters.check = icmp ult i64 %i.if, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110
  %n.vec = and i64 %i.if, -8                      ; 3 uses
  %i.ig = add nsw i64 %n.vec, %i.ie
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ih = add i64 %index, %i.ie                   ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ih ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ih ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %wide.load = load <4 x float>, ptr %i.ii, align 4, !tbaa !92
  %wide.load148 = load <4 x float>, ptr %i.il, align 4, !tbaa !92
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %wide.load149 = load <4 x float>, ptr %i.ik, align 4, !tbaa !92 ; 2 uses
  %wide.load150 = load <4 x float>, ptr %i.im, align 4, !tbaa !92 ; 2 uses
  %i.in = fsub <4 x float> splat (float 1.000000e+00), %wide.load149
  %i.io = fsub <4 x float> splat (float 1.000000e+00), %wide.load150
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load151 = load <4 x float>, ptr %i.ij, align 4, !tbaa !92
  %wide.load152 = load <4 x float>, ptr %i.ip, align 4, !tbaa !92
  %i.iq = fmul <4 x float> %wide.load149, %wide.load151
  %i.ir = fmul <4 x float> %wide.load150, %wide.load152
  %i.is = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.in, <4 x float> %i.iq)
  %i.it = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load148, <4 x float> %i.io, <4 x float> %i.ir)
  store <4 x float> %i.is, ptr %i.ik, align 4, !tbaa !92
  store <4 x float> %i.it, ptr %i.im, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !1515

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.if, %n.vec
  br i1 %cmp.n, label %.lr.ph113.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph110, %middle.block
  %indvars.iv129.ph = phi i64 [ %i.ie, %.lr.ph110 ], [ %i.ig, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph ], [ %indvars.iv129.ph, %scalar.ph.preheader ] ; 4 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv129
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv129
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv129 ; 2 uses
  %i.iy = load float, ptr %i.iv, align 4, !tbaa !92
  %i.iz = load float, ptr %i.ix, align 4, !tbaa !92 ; 2 uses
  %i.ja = fsub float 1.000000e+00, %i.iz
  %i.jb = load float, ptr %i.iw, align 4, !tbaa !92
  %i.jc = fmul float %i.iz, %i.jb
  %i.jd = call noundef float @llvm.fmuladd.f32(float %i.iy, float %i.ja, float %i.jc)
  store float %i.jd, ptr %i.ix, align 4, !tbaa !92
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.lr.ph113.preheader, label %scalar.ph, !llvm.loop !1516

.lr.ph113.preheader:                              ; preds = %scalar.ph, %.loopexit102, %middle.block
  %i.je = sext i32 %i.dn to i64
  br label %.lr.ph113

._crit_edge114:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.ae
  %indvars.iv134 = phi i64 [ %i.je, %.lr.ph113.preheader ], [ %indvars.iv.next135, %bb.ae ] ; 3 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv134
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !92
  %i.jh = load ptr, ptr %5, align 8, !tbaa !333
  %i.ji = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jh)
          to label %.noexc94 unwind label %bb.af

.noexc94:                                         ; preds = %.lr.ph113
  %i.jj = icmp eq i32 %i.ji, 3
  br i1 %i.jj, label %bb.ad, label %bb.ae, !prof !85

bb.ad:                                            ; preds = %.noexc94
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc94, %bb.ad
  %i.jk = load ptr, ptr %i.cs, align 8, !tbaa !338
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %indvars.iv134
  store float %i.jg, ptr %i.jl, align 4, !tbaa !92
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.jm = load i32, ptr %i.bk, align 4, !tbaa !58
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next135, %i.jn
  br i1 %i.jo, label %.lr.ph113, label %._crit_edge114, !llvm.loop !1517

bb.af:                                            ; preds = %bb.ad, %.lr.ph113
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge114
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1518

bb.ah:                                            ; preds = %bb.ag, %._crit_edge114
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.jq, %bb.ah ], [ %i.jp, %bb.af ]
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
  %.val = load ptr, ptr %0, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !144
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
  store ptr @_ZTIZN11OpenImageIO4v3_1L15contrast_remap_IfhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IfhEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IfhEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IfhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dp = load i32, ptr %i.ck, align 8, !tbaa !86 ; 6 uses
  %i.dq = load i32, ptr %i.bm, align 4, !tbaa !58 ; 5 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %._crit_edge114

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.ds = load ptr, ptr %i.cl, align 8, !tbaa !338 ; 2 uses
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !1547, !nonnull !110, !align !230
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !121 ; 2 uses
  %i.dv = load ptr, ptr %i.cn, align 8, !tbaa !1548, !nonnull !110, !align !230
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !88 ; 2 uses
  %i.dx = sext i32 %i.dp to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.dq to i64        ; 5 uses
  %i.dy = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check181 = icmp ult i64 %i.dy, 8
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %.lr.ph
  %n.vec183 = and i64 %i.dy, -8                   ; 3 uses
  %i.dz = add nsw i64 %n.vec183, %i.dx
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next192, %vector.body184 ] ; 2 uses
  %i.ea = add i64 %index185, %i.dx                ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ds, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %wide.load186 = load <4 x i8>, ptr %i.eb, align 1, !tbaa !84
  %wide.load187 = load <4 x i8>, ptr %i.ec, align 1, !tbaa !84
  %i.ed = uitofp <4 x i8> %wide.load186 to <4 x float>
  %i.ee = uitofp <4 x i8> %wide.load187 to <4 x float>
  %i.ef = fmul nnan <4 x float> %i.ed, splat (float f0x3B808081)
  %i.eg = fmul nnan <4 x float> %i.ee, splat (float f0x3B808081)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ea ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load188 = load <4 x float>, ptr %i.eh, align 4, !tbaa !92
  %wide.load189 = load <4 x float>, ptr %i.ei, align 4, !tbaa !92
  %i.ej = fsub <4 x float> %i.ef, %wide.load188
  %i.ek = fsub <4 x float> %i.eg, %wide.load189
  %i.el = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ea ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load190 = load <4 x float>, ptr %i.el, align 4, !tbaa !92
  %wide.load191 = load <4 x float>, ptr %i.em, align 4, !tbaa !92
  %i.en = fmul <4 x float> %i.ej, %wide.load190
  %i.eo = fmul <4 x float> %i.ek, %wide.load191
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ea ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> %i.en, ptr %i.ep, align 4, !tbaa !92
  store <4 x float> %i.eo, ptr %i.eq, align 4, !tbaa !92
  %index.next192 = add nuw i64 %index185, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next192, %n.vec183
  br i1 %i.er, label %middle.block193, label %vector.body184, !llvm.loop !1533

middle.block193:                                  ; preds = %vector.body184
  %cmp.n194 = icmp eq i64 %i.dy, %n.vec183
  br i1 %cmp.n194, label %._crit_edge, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %.lr.ph, %middle.block193
  %indvars.iv.ph = phi i64 [ %i.dx, %.lr.ph ], [ %i.dz, %middle.block193 ]
  br label %scalar.ph180

._crit_edge:                                      ; preds = %scalar.ph180, %middle.block193
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !1549, !nonnull !110
  %i.et = load i8, ptr %i.es, align 1, !tbaa !115, !range !109, !noundef !110
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.lr.ph106, label %.loopexit102

.lr.ph106:                                        ; preds = %._crit_edge
  %i.ev = load ptr, ptr %i.cp, align 8, !tbaa !1550, !nonnull !110, !align !230
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !121 ; 2 uses
  %i.ex = load ptr, ptr %i.cq, align 8, !tbaa !1551, !nonnull !110, !align !230
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !121 ; 2 uses
  %i.ez = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count122 = sext i32 %i.dq to i64
  %i.fa = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.fa, 4
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph106
  %n.vec171 = and i64 %i.fa, -4                   ; 3 uses
  %i.fb = add nsw i64 %n.vec171, %i.ez
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body172 ] ; 2 uses
  %i.fc = add i64 %index173, %i.ez                ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fc
  %wide.load174 = load <4 x float>, ptr %i.fd, align 4, !tbaa !92 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fc
  %wide.load175 = load <4 x float>, ptr %i.fe, align 4, !tbaa !92 ; 2 uses
  %i.ff = fmul <4 x float> %wide.load174, %wide.load175
  %i.fg = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ff)
  %i.fh = fadd <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fdiv <4 x float> splat (float 1.000000e+00), %i.fh ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.fc
  store <4 x float> %i.fi, ptr %i.fj, align 4, !tbaa !92
  %i.fk = fadd <4 x float> %wide.load175, splat (float -1.000000e+00)
  %i.fl = fmul <4 x float> %wide.load174, %i.fk
  %i.fm = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = fdiv <4 x float> splat (float 1.000000e+00), %i.fn
  %i.fp = fsub <4 x float> %i.fo, %i.fi
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.fc
  store <4 x float> %i.fp, ptr %i.fq, align 4, !tbaa !92
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.fr, label %middle.block177, label %vector.body172, !llvm.loop !1534

middle.block177:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %i.fa, %n.vec171
  br i1 %cmp.n178, label %.lr.ph108, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %.lr.ph106, %middle.block177
  %indvars.iv119.ph = phi i64 [ %i.ez, %.lr.ph106 ], [ %i.fb, %middle.block177 ]
  br label %scalar.ph168

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph180 ], [ %indvars.iv.ph, %scalar.ph180.preheader ] ; 5 uses
  %i.fs = getelementptr inbounds i8, ptr %i.ds, i64 %indvars.iv
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !84
  %i.fu = uitofp i8 %i.ft to float
  %i.fv = fmul nnan float %i.fu, f0x3B808081
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !92
  %i.fy = fsub float %i.fv, %i.fx
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !92
  %i.gb = fmul float %i.fy, %i.ga
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv
  store float %i.gb, ptr %i.gc, align 4, !tbaa !92
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph180, !llvm.loop !1535

.lr.ph108:                                        ; preds = %scalar.ph168, %middle.block177
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !1550, !nonnull !110, !align !230
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !121 ; 2 uses
  %i.gf = load ptr, ptr %i.cq, align 8, !tbaa !1551, !nonnull !110, !align !230
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !121 ; 2 uses
  %i.gh = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count127 = sext i32 %i.dq to i64
  %i.gi = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check154 = icmp ult i64 %i.gi, 4
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph108
  %n.vec156 = and i64 %i.gi, -4                   ; 3 uses
  %i.gj = add nsw i64 %n.vec156, %i.gh
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body157 ] ; 2 uses
  %i.gk = add i64 %index158, %i.gh                ; 5 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gk
  %wide.load159 = load <4 x float>, ptr %i.gl, align 4, !tbaa !92
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gk
  %wide.load160 = load <4 x float>, ptr %i.gm, align 4, !tbaa !92
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.gk ; 2 uses
  %wide.load161 = load <4 x float>, ptr %i.gn, align 4, !tbaa !92
  %i.go = fsub <4 x float> %wide.load160, %wide.load161
  %i.gp = fmul <4 x float> %wide.load159, %i.go
  %i.gq = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gp)
  %i.gr = fadd <4 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = fdiv <4 x float> splat (float 1.000000e+00), %i.gr
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.gk
  %wide.load162 = load <4 x float>, ptr %i.gt, align 4, !tbaa !92
  %i.gu = fsub <4 x float> %i.gs, %wide.load162
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.gk
  %wide.load163 = load <4 x float>, ptr %i.gv, align 4, !tbaa !92
  %i.gw = fdiv <4 x float> %i.gu, %wide.load163
  store <4 x float> %i.gw, ptr %i.gn, align 4, !tbaa !92
  %index.next164 = add nuw i64 %index158, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next164, %n.vec156
  br i1 %i.gx, label %middle.block165, label %vector.body157, !llvm.loop !1536

middle.block165:                                  ; preds = %vector.body157
  %cmp.n166 = icmp eq i64 %i.gi, %n.vec156
  br i1 %cmp.n166, label %.loopexit102, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.lr.ph108, %middle.block165
  %indvars.iv124.ph = phi i64 [ %i.gh, %.lr.ph108 ], [ %i.gj, %middle.block165 ]
  br label %scalar.ph153

scalar.ph168:                                     ; preds = %scalar.ph168.preheader, %scalar.ph168
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %scalar.ph168 ], [ %indvars.iv119.ph, %scalar.ph168.preheader ] ; 5 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv119
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !92 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv119
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv119
  %i.hc = load float, ptr %i.ha, align 4, !tbaa !92 ; 2 uses
  %i.hd = fmul float %i.gz, %i.hc
  %i.he = call float @llvm.exp.f32(float %i.hd)
  %i.hf = fadd float %i.hc, -1.000000e+00
  %i.hg = fmul float %i.gz, %i.hf
  %i.hh = call float @llvm.exp.f32(float %i.hg)
  %i.hi = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.hh, i64 1
  %i.hk = fadd <2 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = fdiv <2 x float> splat (float 1.000000e+00), %i.hk ; 3 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 0
  store float %i.hm, ptr %i.hb, align 4, !tbaa !92
  %shift = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.hl
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv119
  store float %6, ptr %i.hn, align 4, !tbaa !92
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.lr.ph108, label %scalar.ph168, !llvm.loop !1537

scalar.ph153:                                     ; preds = %scalar.ph153.preheader, %scalar.ph153
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph153 ], [ %indvars.iv124.ph, %scalar.ph153.preheader ] ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv124
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !92
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv124
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !92
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv124 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !92
  %i.hu = fsub float %i.hr, %i.ht
  %i.hv = fmul float %i.hp, %i.hu
  %i.hw = call float @llvm.exp.f32(float %i.hv)
  %i.hx = fadd float %i.hw, 1.000000e+00
  %i.hy = fdiv float 1.000000e+00, %i.hx
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv124
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !92
  %i.ib = fsub float %i.hy, %i.ia
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv124
  %i.id = load float, ptr %i.ic, align 4, !tbaa !92
  %i.ie = fdiv float %i.ib, %i.id
  store float %i.ie, ptr %i.hs, align 4, !tbaa !92
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.loopexit102, label %scalar.ph153, !llvm.loop !1538

.loopexit102:                                     ; preds = %scalar.ph153, %middle.block165, %._crit_edge
  %i.if = load ptr, ptr %i.cr, align 8, !tbaa !1552, !nonnull !110
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !115, !range !109, !noundef !110
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %.lr.ph110, label %.lr.ph113.preheader

.lr.ph110:                                        ; preds = %.loopexit102
  %i.ii = load ptr, ptr %i.cs, align 8, !tbaa !1553, !nonnull !110, !align !230
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !121 ; 2 uses
  %i.ik = load ptr, ptr %i.ct, align 8, !tbaa !1554, !nonnull !110, !align !230
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !121 ; 2 uses
  %i.im = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count132 = sext i32 %i.dq to i64
  %i.in = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check = icmp ult i64 %i.in, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110
  %n.vec = and i64 %i.in, -8                      ; 3 uses
  %i.io = add nsw i64 %n.vec, %i.im
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ip = add i64 %index, %i.im                   ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ip ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ip ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load = load <4 x float>, ptr %i.iq, align 4, !tbaa !92
  %wide.load148 = load <4 x float>, ptr %i.it, align 4, !tbaa !92
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %wide.load149 = load <4 x float>, ptr %i.is, align 4, !tbaa !92 ; 2 uses
  %wide.load150 = load <4 x float>, ptr %i.iu, align 4, !tbaa !92 ; 2 uses
  %i.iv = fsub <4 x float> splat (float 1.000000e+00), %wide.load149
  %i.iw = fsub <4 x float> splat (float 1.000000e+00), %wide.load150
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load151 = load <4 x float>, ptr %i.ir, align 4, !tbaa !92
  %wide.load152 = load <4 x float>, ptr %i.ix, align 4, !tbaa !92
  %i.iy = fmul <4 x float> %wide.load149, %wide.load151
  %i.iz = fmul <4 x float> %wide.load150, %wide.load152
  %i.ja = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.iv, <4 x float> %i.iy)
  %i.jb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load148, <4 x float> %i.iw, <4 x float> %i.iz)
  store <4 x float> %i.ja, ptr %i.is, align 4, !tbaa !92
  store <4 x float> %i.jb, ptr %i.iu, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !1539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.in, %n.vec
  br i1 %cmp.n, label %.lr.ph113.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph110, %middle.block
  %indvars.iv129.ph = phi i64 [ %i.im, %.lr.ph110 ], [ %i.io, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph ], [ %indvars.iv129.ph, %scalar.ph.preheader ] ; 4 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv129
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv129
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv129 ; 2 uses
  %i.jg = load float, ptr %i.jd, align 4, !tbaa !92
  %i.jh = load float, ptr %i.jf, align 4, !tbaa !92 ; 2 uses
  %i.ji = fsub float 1.000000e+00, %i.jh
  %i.jj = load float, ptr %i.je, align 4, !tbaa !92
  %i.jk = fmul float %i.jh, %i.jj
  %i.jl = call noundef float @llvm.fmuladd.f32(float %i.jg, float %i.ji, float %i.jk)
  store float %i.jl, ptr %i.jf, align 4, !tbaa !92
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.lr.ph113.preheader, label %scalar.ph, !llvm.loop !1540

.lr.ph113.preheader:                              ; preds = %scalar.ph, %.loopexit102, %middle.block
  %i.jm = sext i32 %i.dp to i64
  br label %.lr.ph113

._crit_edge114:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.ae
  %indvars.iv134 = phi i64 [ %i.jm, %.lr.ph113.preheader ], [ %indvars.iv.next135, %bb.ae ] ; 3 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv134
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !92
  %i.jp = load ptr, ptr %5, align 8, !tbaa !333
  %i.jq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp)
          to label %.noexc94 unwind label %bb.af

.noexc94:                                         ; preds = %.lr.ph113
  %i.jr = icmp eq i32 %i.jq, 3
  br i1 %i.jr, label %bb.ad, label %bb.ae, !prof !85

bb.ad:                                            ; preds = %.noexc94
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc94, %bb.ad
  %i.js = load ptr, ptr %i.cu, align 8, !tbaa !338
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.js, i64 %indvars.iv134
  store float %i.jo, ptr %i.jt, align 4, !tbaa !92
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.ju = load i32, ptr %i.bm, align 4, !tbaa !58
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next135, %i.jv
  br i1 %i.jw, label %.lr.ph113, label %._crit_edge114, !llvm.loop !1541

bb.af:                                            ; preds = %bb.ad, %.lr.ph113
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge114
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1542

bb.ah:                                            ; preds = %bb.ag, %._crit_edge114
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.jy, %bb.ah ], [ %i.jx, %bb.af ]
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
  %.val = load ptr, ptr %0, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !144
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
  store ptr @_ZTIZN11OpenImageIO4v3_1L15contrast_remap_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS0_3ROIEiEUlSB_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_4spanIKfLm18446744073709551615EEESC_SC_SC_SC_SC_NS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_4spanIKfLm18446744073709551615EEESC_SC_SC_SC_SC_NS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS0_3ROIEiENKUlSB_E_clESB_:bb.a
  %i.fe = or disjoint <4 x i32> %i.et, %i.ev      ; 2 uses
  %i.ff = icmp samesign ugt <4 x i32> %i.et, splat (i32 260046847)
  %i.fg = or <4 x i32> %i.fe, splat (i32 2139095040)
  %i.fh = add nsw <4 x i32> %i.et, splat (i32 -8388608)
  %i.fi = icmp ult <4 x i32> %i.fh, splat (i32 251658240)
  %i.fj = add nuw nsw <4 x i32> %i.fe, splat (i32 939524096)
  %predphi = select <4 x i1> %i.ew, <4 x i32> %i.ev, <4 x i32> %i.fd
  %predphi195 = select <4 x i1> %i.ff, <4 x i32> %i.fg, <4 x i32> %predphi
  %predphi196 = select <4 x i1> %i.fi, <4 x i32> %i.fj, <4 x i32> %predphi195
  %i.fk = bitcast <4 x i32> %predphi196 to <4 x float>
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ep
  %wide.load197 = load <4 x float>, ptr %i.fl, align 4, !tbaa !92
  %i.fm = fsub <4 x float> %i.fk, %wide.load197
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ep
  %wide.load198 = load <4 x float>, ptr %i.fn, align 4, !tbaa !92
  %i.fo = fmul <4 x float> %i.fm, %wide.load198
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ep
  store <4 x float> %i.fo, ptr %i.fp, align 4, !tbaa !92
  %index.next199 = add nuw i64 %index193, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next199, %n.vec191
  br i1 %i.fq, label %middle.block200, label %vector.body192, !llvm.loop !1557

middle.block200:                                  ; preds = %vector.body192
  %cmp.n201 = icmp eq i64 %i.en, %n.vec191
  br i1 %cmp.n201, label %._crit_edge, label %scalar.ph188.preheader

scalar.ph188.preheader:                           ; preds = %.lr.ph, %middle.block200
  %indvars.iv.ph = phi i64 [ %i.em, %.lr.ph ], [ %i.eo, %middle.block200 ]
  br label %scalar.ph188

._crit_edge:                                      ; preds = %bb.ao, %middle.block200
  %i.fr = load ptr, ptr %i.dd, align 8, !tbaa !1573, !nonnull !110
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !115, !range !109, !noundef !110
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %.lr.ph110, label %.loopexit106

.lr.ph110:                                        ; preds = %._crit_edge
  %i.fu = load ptr, ptr %i.de, align 8, !tbaa !1574, !nonnull !110, !align !230
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !121 ; 2 uses
  %i.fw = load ptr, ptr %i.df, align 8, !tbaa !1575, !nonnull !110, !align !230
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !121 ; 2 uses
  %i.fy = sext i32 %i.ee to i64                   ; 3 uses
  %wide.trip.count126 = sext i32 %i.ef to i64
  %i.fz = sub nsw i64 %wide.trip.count, %i.em     ; 3 uses
  %min.iters.check177 = icmp ult i64 %i.fz, 4
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %.lr.ph110
  %n.vec179 = and i64 %i.fz, -4                   ; 3 uses
  %i.ga = add nsw i64 %n.vec179, %i.fy
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next184, %vector.body180 ] ; 2 uses
  %i.gb = add i64 %index181, %i.fy                ; 4 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gb
  %wide.load182 = load <4 x float>, ptr %i.gc, align 4, !tbaa !92 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.gb
  %wide.load183 = load <4 x float>, ptr %i.gd, align 4, !tbaa !92 ; 2 uses
  %i.ge = fmul <4 x float> %wide.load182, %wide.load183
  %i.gf = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ge)
  %i.gg = fadd <4 x float> %i.gf, splat (float 1.000000e+00)
  %i.gh = fdiv <4 x float> splat (float 1.000000e+00), %i.gg ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gb
  store <4 x float> %i.gh, ptr %i.gi, align 4, !tbaa !92
  %i.gj = fadd <4 x float> %wide.load183, splat (float -1.000000e+00)
  %i.gk = fmul <4 x float> %wide.load182, %i.gj
  %i.gl = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gk)
  %i.gm = fadd <4 x float> %i.gl, splat (float 1.000000e+00)
  %i.gn = fdiv <4 x float> splat (float 1.000000e+00), %i.gm
  %i.go = fsub <4 x float> %i.gn, %i.gh
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.gb
  store <4 x float> %i.go, ptr %i.gp, align 4, !tbaa !92
  %index.next184 = add nuw i64 %index181, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.gq, label %middle.block185, label %vector.body180, !llvm.loop !1558

middle.block185:                                  ; preds = %vector.body180
  %cmp.n186 = icmp eq i64 %i.fz, %n.vec179
  br i1 %cmp.n186, label %.lr.ph112, label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %.lr.ph110, %middle.block185
  %indvars.iv123.ph = phi i64 [ %i.fy, %.lr.ph110 ], [ %i.ga, %middle.block185 ]
  br label %scalar.ph176

scalar.ph188:                                     ; preds = %scalar.ph188.preheader, %bb.ao
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ao ], [ %indvars.iv.ph, %scalar.ph188.preheader ] ; 5 uses
  %i.gr = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %indvars.iv
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !348 ; 2 uses
  %i.gt = zext i16 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 13
  %i.gv = and i32 %i.gu, 268427264                ; 6 uses
  %.signext.i.i.i.i.i92 = sext i16 %i.gs to i32
  %i.gw = and i32 %.signext.i.i.i.i.i92, -2147483648 ; 3 uses
  %i.gx = icmp samesign ugt i32 %i.gv, 8388607
  br i1 %i.gx, label %bb.aj, label %bb.am, !prof !59

bb.aj:                                            ; preds = %scalar.ph188
  %i.gy = or disjoint i32 %i.gv, %i.gw            ; 2 uses
  %i.gz = icmp samesign ult i32 %i.gv, 260046848
  br i1 %i.gz, label %bb.ak, label %bb.al, !prof !59

bb.ak:                                            ; preds = %bb.aj
  %i.ha = add nuw nsw i32 %i.gy, 939524096
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.hb = or i32 %i.gy, 2139095040
  br label %bb.ao

bb.am:                                            ; preds = %scalar.ph188
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
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !92
  %i.hm = fsub float %i.hj, %i.hl
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !92
  %i.hp = fmul float %i.hm, %i.ho
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv
  store float %i.hp, ptr %i.hq, align 4, !tbaa !92
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph188, !llvm.loop !1559

.lr.ph112:                                        ; preds = %scalar.ph176, %middle.block185
  %i.hr = load ptr, ptr %i.de, align 8, !tbaa !1574, !nonnull !110, !align !230
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !121 ; 2 uses
  %i.ht = load ptr, ptr %i.df, align 8, !tbaa !1575, !nonnull !110, !align !230
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !121 ; 2 uses
  %i.hv = sext i32 %i.ee to i64                   ; 3 uses
  %wide.trip.count131 = sext i32 %i.ef to i64
  %i.hw = sub nsw i64 %wide.trip.count, %i.em     ; 3 uses
  %min.iters.check162 = icmp ult i64 %i.hw, 4
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph112
  %n.vec164 = and i64 %i.hw, -4                   ; 3 uses
  %i.hx = add nsw i64 %n.vec164, %i.hv
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next172, %vector.body165 ] ; 2 uses
  %i.hy = add i64 %index166, %i.hv                ; 5 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hy
  %wide.load167 = load <4 x float>, ptr %i.hz, align 4, !tbaa !92
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hy
  %wide.load168 = load <4 x float>, ptr %i.ia, align 4, !tbaa !92
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.hy ; 2 uses
  %wide.load169 = load <4 x float>, ptr %i.ib, align 4, !tbaa !92
  %i.ic = fsub <4 x float> %wide.load168, %wide.load169
  %i.id = fmul <4 x float> %wide.load167, %i.ic
  %i.ie = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.id)
  %i.if = fadd <4 x float> %i.ie, splat (float 1.000000e+00)
  %i.ig = fdiv <4 x float> splat (float 1.000000e+00), %i.if
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.hy
  %wide.load170 = load <4 x float>, ptr %i.ih, align 4, !tbaa !92
  %i.ii = fsub <4 x float> %i.ig, %wide.load170
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.hy
  %wide.load171 = load <4 x float>, ptr %i.ij, align 4, !tbaa !92
  %i.ik = fdiv <4 x float> %i.ii, %wide.load171
  store <4 x float> %i.ik, ptr %i.ib, align 4, !tbaa !92
  %index.next172 = add nuw i64 %index166, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next172, %n.vec164
  br i1 %i.il, label %middle.block173, label %vector.body165, !llvm.loop !1560

middle.block173:                                  ; preds = %vector.body165
  %cmp.n174 = icmp eq i64 %i.hw, %n.vec164
  br i1 %cmp.n174, label %.loopexit106, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %.lr.ph112, %middle.block173
  %indvars.iv128.ph = phi i64 [ %i.hv, %.lr.ph112 ], [ %i.hx, %middle.block173 ]
  br label %scalar.ph161

scalar.ph176:                                     ; preds = %scalar.ph176.preheader, %scalar.ph176
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %scalar.ph176 ], [ %indvars.iv123.ph, %scalar.ph176.preheader ] ; 5 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv123
  %i.in = load float, ptr %i.im, align 4, !tbaa !92 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv123
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv123
  %i.iq = load float, ptr %i.io, align 4, !tbaa !92 ; 2 uses
  %i.ir = fmul float %i.in, %i.iq
  %i.is = call float @llvm.exp.f32(float %i.ir)
  %i.it = fadd float %i.iq, -1.000000e+00
  %i.iu = fmul float %i.in, %i.it
  %i.iv = call float @llvm.exp.f32(float %i.iu)
  %i.iw = insertelement <2 x float> poison, float %i.is, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.iv, i64 1
  %i.iy = fadd <2 x float> %i.ix, splat (float 1.000000e+00)
  %i.iz = fdiv <2 x float> splat (float 1.000000e+00), %i.iy ; 3 uses
  %i.ja = extractelement <2 x float> %i.iz, i64 0
  store float %i.ja, ptr %i.ip, align 4, !tbaa !92
  %shift = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.iz
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv123
  store float %6, ptr %i.jb, align 4, !tbaa !92
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.lr.ph112, label %scalar.ph176, !llvm.loop !1561

scalar.ph161:                                     ; preds = %scalar.ph161.preheader, %scalar.ph161
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %scalar.ph161 ], [ %indvars.iv128.ph, %scalar.ph161.preheader ] ; 6 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv128
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !92
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv128
  %i.jf = load float, ptr %i.je, align 4, !tbaa !92
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv128 ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !92
  %i.ji = fsub float %i.jf, %i.jh
  %i.jj = fmul float %i.jd, %i.ji
  %i.jk = call float @llvm.exp.f32(float %i.jj)
  %i.jl = fadd float %i.jk, 1.000000e+00
  %i.jm = fdiv float 1.000000e+00, %i.jl
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv128
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !92
  %i.jp = fsub float %i.jm, %i.jo
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv128
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !92
  %i.js = fdiv float %i.jp, %i.jr
  store float %i.js, ptr %i.jg, align 4, !tbaa !92
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit106, label %scalar.ph161, !llvm.loop !1562

.loopexit106:                                     ; preds = %scalar.ph161, %middle.block173, %._crit_edge
  %i.jt = load ptr, ptr %i.dg, align 8, !tbaa !1576, !nonnull !110
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !115, !range !109, !noundef !110
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %.lr.ph114, label %.lr.ph117.preheader

.lr.ph114:                                        ; preds = %.loopexit106
  %i.jw = load ptr, ptr %i.dh, align 8, !tbaa !1577, !nonnull !110, !align !230
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !121 ; 2 uses
  %i.jy = load ptr, ptr %i.di, align 8, !tbaa !1578, !nonnull !110, !align !230
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !121 ; 2 uses
  %i.ka = sext i32 %i.ee to i64                   ; 3 uses
  %wide.trip.count136 = sext i32 %i.ef to i64
  %i.kb = sub nsw i64 %wide.trip.count, %i.em     ; 3 uses
  %min.iters.check = icmp ult i64 %i.kb, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph114
  %n.vec = and i64 %i.kb, -8                      ; 3 uses
  %i.kc = add nsw i64 %n.vec, %i.ka
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kd = add i64 %index, %i.ka                   ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.kd ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.kd ; 2 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.kd ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %wide.load = load <4 x float>, ptr %i.ke, align 4, !tbaa !92
  %wide.load156 = load <4 x float>, ptr %i.kh, align 4, !tbaa !92
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %wide.load157 = load <4 x float>, ptr %i.kg, align 4, !tbaa !92 ; 2 uses
  %wide.load158 = load <4 x float>, ptr %i.ki, align 4, !tbaa !92 ; 2 uses
  %i.kj = fsub <4 x float> splat (float 1.000000e+00), %wide.load157
  %i.kk = fsub <4 x float> splat (float 1.000000e+00), %wide.load158
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %wide.load159 = load <4 x float>, ptr %i.kf, align 4, !tbaa !92
  %wide.load160 = load <4 x float>, ptr %i.kl, align 4, !tbaa !92
  %i.km = fmul <4 x float> %wide.load157, %wide.load159
  %i.kn = fmul <4 x float> %wide.load158, %wide.load160
  %i.ko = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.kj, <4 x float> %i.km)
  %i.kp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load156, <4 x float> %i.kk, <4 x float> %i.kn)
  store <4 x float> %i.ko, ptr %i.kg, align 4, !tbaa !92
  store <4 x float> %i.kp, ptr %i.ki, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kq = icmp eq i64 %index.next, %n.vec
  br i1 %i.kq, label %middle.block, label %vector.body, !llvm.loop !1563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kb, %n.vec
  br i1 %cmp.n, label %.lr.ph117.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph114, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.ka, %.lr.ph114 ], [ %i.kc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv133
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv133
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv133 ; 2 uses
  %i.ku = load float, ptr %i.kr, align 4, !tbaa !92
  %i.kv = load float, ptr %i.kt, align 4, !tbaa !92 ; 2 uses
  %i.kw = fsub float 1.000000e+00, %i.kv
  %i.kx = load float, ptr %i.ks, align 4, !tbaa !92
  %i.ky = fmul float %i.kv, %i.kx
  %i.kz = call noundef float @llvm.fmuladd.f32(float %i.ku, float %i.kw, float %i.ky)
  store float %i.kz, ptr %i.kt, align 4, !tbaa !92
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.lr.ph117.preheader, label %scalar.ph, !llvm.loop !1564

.lr.ph117.preheader:                              ; preds = %scalar.ph, %.loopexit106, %middle.block
  %i.la = sext i32 %i.ee to i64
  br label %.lr.ph117

._crit_edge118:                                   ; preds = %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.as unwind label %bb.at

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.aq
  %indvars.iv138 = phi i64 [ %i.la, %.lr.ph117.preheader ], [ %indvars.iv.next139, %bb.aq ] ; 3 uses
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv138
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !92
  %i.ld = load ptr, ptr %5, align 8, !tbaa !333
  %i.le = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ld)
          to label %.noexc98 unwind label %bb.ar

.noexc98:                                         ; preds = %.lr.ph117
  %i.lf = icmp eq i32 %i.le, 3
  br i1 %i.lf, label %bb.ap, label %bb.aq, !prof !85

bb.ap:                                            ; preds = %.noexc98
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc98, %bb.ap
  %i.lg = load ptr, ptr %i.dj, align 8, !tbaa !338
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %indvars.iv138
  store float %i.lc, ptr %i.lh, align 4, !tbaa !92
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.li = load i32, ptr %i.cb, align 4, !tbaa !58
  %i.lj = sext i32 %i.li to i64
  %i.lk = icmp slt i64 %indvars.iv.next139, %i.lj
  br i1 %i.lk, label %.lr.ph117, label %._crit_edge118, !llvm.loop !1565

bb.ar:                                            ; preds = %bb.ap, %.lr.ph117
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %._crit_edge118
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.at, !llvm.loop !1566

bb.at:                                            ; preds = %bb.as, %._crit_edge118
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.lm, %bb.at ], [ %i.ll, %bb.ar ]
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
  %.val = load ptr, ptr %0, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !144
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
  store ptr @_ZTIZN11OpenImageIO4v3_1L15contrast_remap_IftEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IftEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IftEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IftEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dp = load i32, ptr %i.ck, align 8, !tbaa !86 ; 6 uses
  %i.dq = load i32, ptr %i.bm, align 4, !tbaa !58 ; 5 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %._crit_edge114

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.ds = load ptr, ptr %i.cl, align 8, !tbaa !338 ; 2 uses
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !1595, !nonnull !110, !align !230
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !121 ; 2 uses
  %i.dv = load ptr, ptr %i.cn, align 8, !tbaa !1596, !nonnull !110, !align !230
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !88 ; 2 uses
  %i.dx = sext i32 %i.dp to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.dq to i64        ; 5 uses
  %i.dy = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check181 = icmp ult i64 %i.dy, 8
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %.lr.ph
  %n.vec183 = and i64 %i.dy, -8                   ; 3 uses
  %i.dz = add nsw i64 %n.vec183, %i.dx
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next192, %vector.body184 ] ; 2 uses
  %i.ea = add i64 %index185, %i.dx                ; 4 uses
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %wide.load186 = load <4 x i16>, ptr %i.eb, align 2, !tbaa !349
  %wide.load187 = load <4 x i16>, ptr %i.ec, align 2, !tbaa !349
  %i.ed = uitofp <4 x i16> %wide.load186 to <4 x float>
  %i.ee = uitofp <4 x i16> %wide.load187 to <4 x float>
  %i.ef = fmul nnan <4 x float> %i.ed, splat (float f0x37800080)
  %i.eg = fmul nnan <4 x float> %i.ee, splat (float f0x37800080)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ea ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load188 = load <4 x float>, ptr %i.eh, align 4, !tbaa !92
  %wide.load189 = load <4 x float>, ptr %i.ei, align 4, !tbaa !92
  %i.ej = fsub <4 x float> %i.ef, %wide.load188
  %i.ek = fsub <4 x float> %i.eg, %wide.load189
  %i.el = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ea ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load190 = load <4 x float>, ptr %i.el, align 4, !tbaa !92
  %wide.load191 = load <4 x float>, ptr %i.em, align 4, !tbaa !92
  %i.en = fmul <4 x float> %i.ej, %wide.load190
  %i.eo = fmul <4 x float> %i.ek, %wide.load191
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ea ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> %i.en, ptr %i.ep, align 4, !tbaa !92
  store <4 x float> %i.eo, ptr %i.eq, align 4, !tbaa !92
  %index.next192 = add nuw i64 %index185, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next192, %n.vec183
  br i1 %i.er, label %middle.block193, label %vector.body184, !llvm.loop !1581

middle.block193:                                  ; preds = %vector.body184
  %cmp.n194 = icmp eq i64 %i.dy, %n.vec183
  br i1 %cmp.n194, label %._crit_edge, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %.lr.ph, %middle.block193
  %indvars.iv.ph = phi i64 [ %i.dx, %.lr.ph ], [ %i.dz, %middle.block193 ]
  br label %scalar.ph180

._crit_edge:                                      ; preds = %scalar.ph180, %middle.block193
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !1597, !nonnull !110
  %i.et = load i8, ptr %i.es, align 1, !tbaa !115, !range !109, !noundef !110
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.lr.ph106, label %.loopexit102

.lr.ph106:                                        ; preds = %._crit_edge
  %i.ev = load ptr, ptr %i.cp, align 8, !tbaa !1598, !nonnull !110, !align !230
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !121 ; 2 uses
  %i.ex = load ptr, ptr %i.cq, align 8, !tbaa !1599, !nonnull !110, !align !230
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !121 ; 2 uses
  %i.ez = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count122 = sext i32 %i.dq to i64
  %i.fa = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.fa, 4
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph106
  %n.vec171 = and i64 %i.fa, -4                   ; 3 uses
  %i.fb = add nsw i64 %n.vec171, %i.ez
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body172 ] ; 2 uses
  %i.fc = add i64 %index173, %i.ez                ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fc
  %wide.load174 = load <4 x float>, ptr %i.fd, align 4, !tbaa !92 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fc
  %wide.load175 = load <4 x float>, ptr %i.fe, align 4, !tbaa !92 ; 2 uses
  %i.ff = fmul <4 x float> %wide.load174, %wide.load175
  %i.fg = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ff)
  %i.fh = fadd <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fdiv <4 x float> splat (float 1.000000e+00), %i.fh ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.fc
  store <4 x float> %i.fi, ptr %i.fj, align 4, !tbaa !92
  %i.fk = fadd <4 x float> %wide.load175, splat (float -1.000000e+00)
  %i.fl = fmul <4 x float> %wide.load174, %i.fk
  %i.fm = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = fdiv <4 x float> splat (float 1.000000e+00), %i.fn
  %i.fp = fsub <4 x float> %i.fo, %i.fi
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.fc
  store <4 x float> %i.fp, ptr %i.fq, align 4, !tbaa !92
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.fr, label %middle.block177, label %vector.body172, !llvm.loop !1582

middle.block177:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %i.fa, %n.vec171
  br i1 %cmp.n178, label %.lr.ph108, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %.lr.ph106, %middle.block177
  %indvars.iv119.ph = phi i64 [ %i.ez, %.lr.ph106 ], [ %i.fb, %middle.block177 ]
  br label %scalar.ph168

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph180 ], [ %indvars.iv.ph, %scalar.ph180.preheader ] ; 5 uses
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %indvars.iv
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !349
  %i.fu = uitofp i16 %i.ft to float
  %i.fv = fmul nnan float %i.fu, f0x37800080
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !92
  %i.fy = fsub float %i.fv, %i.fx
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !92
  %i.gb = fmul float %i.fy, %i.ga
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv
  store float %i.gb, ptr %i.gc, align 4, !tbaa !92
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph180, !llvm.loop !1583

.lr.ph108:                                        ; preds = %scalar.ph168, %middle.block177
  %i.gd = load ptr, ptr %i.cp, align 8, !tbaa !1598, !nonnull !110, !align !230
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !121 ; 2 uses
  %i.gf = load ptr, ptr %i.cq, align 8, !tbaa !1599, !nonnull !110, !align !230
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !121 ; 2 uses
  %i.gh = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count127 = sext i32 %i.dq to i64
  %i.gi = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check154 = icmp ult i64 %i.gi, 4
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph108
  %n.vec156 = and i64 %i.gi, -4                   ; 3 uses
  %i.gj = add nsw i64 %n.vec156, %i.gh
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body157 ] ; 2 uses
  %i.gk = add i64 %index158, %i.gh                ; 5 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gk
  %wide.load159 = load <4 x float>, ptr %i.gl, align 4, !tbaa !92
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gk
  %wide.load160 = load <4 x float>, ptr %i.gm, align 4, !tbaa !92
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.gk ; 2 uses
  %wide.load161 = load <4 x float>, ptr %i.gn, align 4, !tbaa !92
  %i.go = fsub <4 x float> %wide.load160, %wide.load161
  %i.gp = fmul <4 x float> %wide.load159, %i.go
  %i.gq = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gp)
  %i.gr = fadd <4 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = fdiv <4 x float> splat (float 1.000000e+00), %i.gr
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.gk
  %wide.load162 = load <4 x float>, ptr %i.gt, align 4, !tbaa !92
  %i.gu = fsub <4 x float> %i.gs, %wide.load162
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.gk
  %wide.load163 = load <4 x float>, ptr %i.gv, align 4, !tbaa !92
  %i.gw = fdiv <4 x float> %i.gu, %wide.load163
  store <4 x float> %i.gw, ptr %i.gn, align 4, !tbaa !92
  %index.next164 = add nuw i64 %index158, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next164, %n.vec156
  br i1 %i.gx, label %middle.block165, label %vector.body157, !llvm.loop !1584

middle.block165:                                  ; preds = %vector.body157
  %cmp.n166 = icmp eq i64 %i.gi, %n.vec156
  br i1 %cmp.n166, label %.loopexit102, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.lr.ph108, %middle.block165
  %indvars.iv124.ph = phi i64 [ %i.gh, %.lr.ph108 ], [ %i.gj, %middle.block165 ]
  br label %scalar.ph153

scalar.ph168:                                     ; preds = %scalar.ph168.preheader, %scalar.ph168
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %scalar.ph168 ], [ %indvars.iv119.ph, %scalar.ph168.preheader ] ; 5 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv119
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !92 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv119
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv119
  %i.hc = load float, ptr %i.ha, align 4, !tbaa !92 ; 2 uses
  %i.hd = fmul float %i.gz, %i.hc
  %i.he = call float @llvm.exp.f32(float %i.hd)
  %i.hf = fadd float %i.hc, -1.000000e+00
  %i.hg = fmul float %i.gz, %i.hf
  %i.hh = call float @llvm.exp.f32(float %i.hg)
  %i.hi = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.hh, i64 1
  %i.hk = fadd <2 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = fdiv <2 x float> splat (float 1.000000e+00), %i.hk ; 3 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 0
  store float %i.hm, ptr %i.hb, align 4, !tbaa !92
  %shift = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.hl
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv119
  store float %6, ptr %i.hn, align 4, !tbaa !92
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.lr.ph108, label %scalar.ph168, !llvm.loop !1585

scalar.ph153:                                     ; preds = %scalar.ph153.preheader, %scalar.ph153
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph153 ], [ %indvars.iv124.ph, %scalar.ph153.preheader ] ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv124
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !92
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv124
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !92
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv124 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !92
  %i.hu = fsub float %i.hr, %i.ht
  %i.hv = fmul float %i.hp, %i.hu
  %i.hw = call float @llvm.exp.f32(float %i.hv)
  %i.hx = fadd float %i.hw, 1.000000e+00
  %i.hy = fdiv float 1.000000e+00, %i.hx
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv124
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !92
  %i.ib = fsub float %i.hy, %i.ia
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv124
  %i.id = load float, ptr %i.ic, align 4, !tbaa !92
  %i.ie = fdiv float %i.ib, %i.id
  store float %i.ie, ptr %i.hs, align 4, !tbaa !92
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.loopexit102, label %scalar.ph153, !llvm.loop !1586

.loopexit102:                                     ; preds = %scalar.ph153, %middle.block165, %._crit_edge
  %i.if = load ptr, ptr %i.cr, align 8, !tbaa !1600, !nonnull !110
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !115, !range !109, !noundef !110
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %.lr.ph110, label %.lr.ph113.preheader

.lr.ph110:                                        ; preds = %.loopexit102
  %i.ii = load ptr, ptr %i.cs, align 8, !tbaa !1601, !nonnull !110, !align !230
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !121 ; 2 uses
  %i.ik = load ptr, ptr %i.ct, align 8, !tbaa !1602, !nonnull !110, !align !230
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !121 ; 2 uses
  %i.im = sext i32 %i.dp to i64                   ; 3 uses
  %wide.trip.count132 = sext i32 %i.dq to i64
  %i.in = sub nsw i64 %wide.trip.count, %i.dx     ; 3 uses
  %min.iters.check = icmp ult i64 %i.in, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110
  %n.vec = and i64 %i.in, -8                      ; 3 uses
  %i.io = add nsw i64 %n.vec, %i.im
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ip = add i64 %index, %i.im                   ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ip ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ip ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load = load <4 x float>, ptr %i.iq, align 4, !tbaa !92
  %wide.load148 = load <4 x float>, ptr %i.it, align 4, !tbaa !92
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %wide.load149 = load <4 x float>, ptr %i.is, align 4, !tbaa !92 ; 2 uses
  %wide.load150 = load <4 x float>, ptr %i.iu, align 4, !tbaa !92 ; 2 uses
  %i.iv = fsub <4 x float> splat (float 1.000000e+00), %wide.load149
  %i.iw = fsub <4 x float> splat (float 1.000000e+00), %wide.load150
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load151 = load <4 x float>, ptr %i.ir, align 4, !tbaa !92
  %wide.load152 = load <4 x float>, ptr %i.ix, align 4, !tbaa !92
  %i.iy = fmul <4 x float> %wide.load149, %wide.load151
  %i.iz = fmul <4 x float> %wide.load150, %wide.load152
  %i.ja = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.iv, <4 x float> %i.iy)
  %i.jb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load148, <4 x float> %i.iw, <4 x float> %i.iz)
  store <4 x float> %i.ja, ptr %i.is, align 4, !tbaa !92
  store <4 x float> %i.jb, ptr %i.iu, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !1587

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.in, %n.vec
  br i1 %cmp.n, label %.lr.ph113.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph110, %middle.block
  %indvars.iv129.ph = phi i64 [ %i.im, %.lr.ph110 ], [ %i.io, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph ], [ %indvars.iv129.ph, %scalar.ph.preheader ] ; 4 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv129
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv129
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv129 ; 2 uses
  %i.jg = load float, ptr %i.jd, align 4, !tbaa !92
  %i.jh = load float, ptr %i.jf, align 4, !tbaa !92 ; 2 uses
  %i.ji = fsub float 1.000000e+00, %i.jh
  %i.jj = load float, ptr %i.je, align 4, !tbaa !92
  %i.jk = fmul float %i.jh, %i.jj
  %i.jl = call noundef float @llvm.fmuladd.f32(float %i.jg, float %i.ji, float %i.jk)
  store float %i.jl, ptr %i.jf, align 4, !tbaa !92
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.lr.ph113.preheader, label %scalar.ph, !llvm.loop !1588

.lr.ph113.preheader:                              ; preds = %scalar.ph, %.loopexit102, %middle.block
  %i.jm = sext i32 %i.dp to i64
  br label %.lr.ph113

._crit_edge114:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.ae
  %indvars.iv134 = phi i64 [ %i.jm, %.lr.ph113.preheader ], [ %indvars.iv.next135, %bb.ae ] ; 3 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv134
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !92
  %i.jp = load ptr, ptr %5, align 8, !tbaa !333
  %i.jq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp)
          to label %.noexc94 unwind label %bb.af

.noexc94:                                         ; preds = %.lr.ph113
  %i.jr = icmp eq i32 %i.jq, 3
  br i1 %i.jr, label %bb.ad, label %bb.ae, !prof !85

bb.ad:                                            ; preds = %.noexc94
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc94, %bb.ad
  %i.js = load ptr, ptr %i.cu, align 8, !tbaa !338
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.js, i64 %indvars.iv134
  store float %i.jo, ptr %i.jt, align 4, !tbaa !92
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.ju = load i32, ptr %i.bm, align 4, !tbaa !58
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next135, %i.jv
  br i1 %i.jw, label %.lr.ph113, label %._crit_edge114, !llvm.loop !1589

bb.af:                                            ; preds = %bb.ad, %.lr.ph113
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge114
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1590

bb.ah:                                            ; preds = %bb.ag, %._crit_edge114
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.jy, %bb.ah ], [ %i.jx, %bb.af ]
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
  %.val = load ptr, ptr %0, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !144
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
  store ptr @_ZTIZN11OpenImageIO4v3_1L15contrast_remap_IhhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IhhEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15contrast_remap_IhhEEbRNS2_8ImageBufERKS4_NS2_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

end_hunk_3
begin_hunk_4_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IhhEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dv = load i32, ptr %i.cq, align 8, !tbaa !86 ; 6 uses
  %i.dw = load i32, ptr %i.bs, align 4, !tbaa !58 ; 5 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph, label %._crit_edge117

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.dy = load ptr, ptr %i.cr, align 8, !tbaa !338 ; 2 uses
  %i.dz = load ptr, ptr %i.cs, align 8, !tbaa !1619, !nonnull !110, !align !230
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !121 ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1620, !nonnull !110, !align !230
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !88 ; 2 uses
  %i.ed = sext i32 %i.dv to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.dw to i64        ; 5 uses
  %i.ee = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check184 = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph
  %n.vec186 = and i64 %i.ee, -8                   ; 3 uses
  %i.ef = add nsw i64 %n.vec186, %i.ed
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next195, %vector.body187 ] ; 2 uses
  %i.eg = add i64 %index188, %i.ed                ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.dy, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %wide.load189 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !84
  %wide.load190 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !84
  %i.ej = uitofp <4 x i8> %wide.load189 to <4 x float>
  %i.ek = uitofp <4 x i8> %wide.load190 to <4 x float>
  %i.el = fmul nnan <4 x float> %i.ej, splat (float f0x3B808081)
  %i.em = fmul nnan <4 x float> %i.ek, splat (float f0x3B808081)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eg ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load191 = load <4 x float>, ptr %i.en, align 4, !tbaa !92
  %wide.load192 = load <4 x float>, ptr %i.eo, align 4, !tbaa !92
  %i.ep = fsub <4 x float> %i.el, %wide.load191
  %i.eq = fsub <4 x float> %i.em, %wide.load192
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eg ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load193 = load <4 x float>, ptr %i.er, align 4, !tbaa !92
  %wide.load194 = load <4 x float>, ptr %i.es, align 4, !tbaa !92
  %i.et = fmul <4 x float> %i.ep, %wide.load193
  %i.eu = fmul <4 x float> %i.eq, %wide.load194
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.eg ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <4 x float> %i.et, ptr %i.ev, align 4, !tbaa !92
  store <4 x float> %i.eu, ptr %i.ew, align 4, !tbaa !92
  %index.next195 = add nuw i64 %index188, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.ex, label %middle.block196, label %vector.body187, !llvm.loop !1605

middle.block196:                                  ; preds = %vector.body187
  %cmp.n197 = icmp eq i64 %i.ee, %n.vec186
  br i1 %cmp.n197, label %._crit_edge, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %.lr.ph, %middle.block196
  %indvars.iv.ph = phi i64 [ %i.ed, %.lr.ph ], [ %i.ef, %middle.block196 ]
  br label %scalar.ph183

._crit_edge:                                      ; preds = %scalar.ph183, %middle.block196
  %i.ey = load ptr, ptr %i.cu, align 8, !tbaa !1621, !nonnull !110
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !115, !range !109, !noundef !110
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %.lr.ph109, label %.loopexit105

.lr.ph109:                                        ; preds = %._crit_edge
  %i.fb = load ptr, ptr %i.cv, align 8, !tbaa !1622, !nonnull !110, !align !230
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !121 ; 2 uses
  %i.fd = load ptr, ptr %i.cw, align 8, !tbaa !1623, !nonnull !110, !align !230
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !121 ; 2 uses
  %i.ff = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count125 = sext i32 %i.dw to i64
  %i.fg = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check172 = icmp ult i64 %i.fg, 4
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph109
  %n.vec174 = and i64 %i.fg, -4                   ; 3 uses
  %i.fh = add nsw i64 %n.vec174, %i.ff
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next179, %vector.body175 ] ; 2 uses
  %i.fi = add i64 %index176, %i.ff                ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fi
  %wide.load177 = load <4 x float>, ptr %i.fj, align 4, !tbaa !92 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fi
  %wide.load178 = load <4 x float>, ptr %i.fk, align 4, !tbaa !92 ; 2 uses
  %i.fl = fmul <4 x float> %wide.load177, %wide.load178
  %i.fm = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = fdiv <4 x float> splat (float 1.000000e+00), %i.fn ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.fi
  store <4 x float> %i.fo, ptr %i.fp, align 4, !tbaa !92
  %i.fq = fadd <4 x float> %wide.load178, splat (float -1.000000e+00)
  %i.fr = fmul <4 x float> %wide.load177, %i.fq
  %i.fs = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fr)
  %i.ft = fadd <4 x float> %i.fs, splat (float 1.000000e+00)
  %i.fu = fdiv <4 x float> splat (float 1.000000e+00), %i.ft
  %i.fv = fsub <4 x float> %i.fu, %i.fo
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.fi
  store <4 x float> %i.fv, ptr %i.fw, align 4, !tbaa !92
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.fx, label %middle.block180, label %vector.body175, !llvm.loop !1606

middle.block180:                                  ; preds = %vector.body175
  %cmp.n181 = icmp eq i64 %i.fg, %n.vec174
  br i1 %cmp.n181, label %.lr.ph111, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %.lr.ph109, %middle.block180
  %indvars.iv122.ph = phi i64 [ %i.ff, %.lr.ph109 ], [ %i.fh, %middle.block180 ]
  br label %scalar.ph171

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph183 ], [ %indvars.iv.ph, %scalar.ph183.preheader ] ; 5 uses
  %i.fy = getelementptr inbounds i8, ptr %i.dy, i64 %indvars.iv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !84
  %i.ga = uitofp i8 %i.fz to float
  %i.gb = fmul nnan float %i.ga, f0x3B808081
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !92
  %i.ge = fsub float %i.gb, %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !92
  %i.gh = fmul float %i.ge, %i.gg
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  store float %i.gh, ptr %i.gi, align 4, !tbaa !92
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph183, !llvm.loop !1607

.lr.ph111:                                        ; preds = %scalar.ph171, %middle.block180
  %i.gj = load ptr, ptr %i.cv, align 8, !tbaa !1622, !nonnull !110, !align !230
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !121 ; 2 uses
  %i.gl = load ptr, ptr %i.cw, align 8, !tbaa !1623, !nonnull !110, !align !230
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !121 ; 2 uses
  %i.gn = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count130 = sext i32 %i.dw to i64
  %i.go = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check157 = icmp ult i64 %i.go, 4
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.lr.ph111
  %n.vec159 = and i64 %i.go, -4                   ; 3 uses
  %i.gp = add nsw i64 %n.vec159, %i.gn
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next167, %vector.body160 ] ; 2 uses
  %i.gq = add i64 %index161, %i.gn                ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gq
  %wide.load162 = load <4 x float>, ptr %i.gr, align 4, !tbaa !92
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gq
  %wide.load163 = load <4 x float>, ptr %i.gs, align 4, !tbaa !92
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.gq ; 2 uses
  %wide.load164 = load <4 x float>, ptr %i.gt, align 4, !tbaa !92
  %i.gu = fsub <4 x float> %wide.load163, %wide.load164
  %i.gv = fmul <4 x float> %wide.load162, %i.gu
  %i.gw = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gv)
  %i.gx = fadd <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fdiv <4 x float> splat (float 1.000000e+00), %i.gx
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.gq
  %wide.load165 = load <4 x float>, ptr %i.gz, align 4, !tbaa !92
  %i.ha = fsub <4 x float> %i.gy, %wide.load165
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.gq
  %wide.load166 = load <4 x float>, ptr %i.hb, align 4, !tbaa !92
  %i.hc = fdiv <4 x float> %i.ha, %wide.load166
  store <4 x float> %i.hc, ptr %i.gt, align 4, !tbaa !92
  %index.next167 = add nuw i64 %index161, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next167, %n.vec159
  br i1 %i.hd, label %middle.block168, label %vector.body160, !llvm.loop !1608

middle.block168:                                  ; preds = %vector.body160
  %cmp.n169 = icmp eq i64 %i.go, %n.vec159
  br i1 %cmp.n169, label %.loopexit105, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.lr.ph111, %middle.block168
  %indvars.iv127.ph = phi i64 [ %i.gn, %.lr.ph111 ], [ %i.gp, %middle.block168 ]
  br label %scalar.ph156

scalar.ph171:                                     ; preds = %scalar.ph171.preheader, %scalar.ph171
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %scalar.ph171 ], [ %indvars.iv122.ph, %scalar.ph171.preheader ] ; 5 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv122
  %i.hf = load float, ptr %i.he, align 4, !tbaa !92 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv122
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv122
  %i.hi = load float, ptr %i.hg, align 4, !tbaa !92 ; 2 uses
  %i.hj = fmul float %i.hf, %i.hi
  %i.hk = call float @llvm.exp.f32(float %i.hj)
  %i.hl = fadd float %i.hi, -1.000000e+00
  %i.hm = fmul float %i.hf, %i.hl
  %i.hn = call float @llvm.exp.f32(float %i.hm)
  %i.ho = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hp = insertelement <2 x float> %i.ho, float %i.hn, i64 1
  %i.hq = fadd <2 x float> %i.hp, splat (float 1.000000e+00)
  %i.hr = fdiv <2 x float> splat (float 1.000000e+00), %i.hq ; 3 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 0
  store float %i.hs, ptr %i.hh, align 4, !tbaa !92
  %shift = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.hr
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv122
  store float %6, ptr %i.ht, align 4, !tbaa !92
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.lr.ph111, label %scalar.ph171, !llvm.loop !1609

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %scalar.ph156 ], [ %indvars.iv127.ph, %scalar.ph156.preheader ] ; 6 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv127
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !92
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv127
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !92
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv127 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !92
  %i.ia = fsub float %i.hx, %i.hz
  %i.ib = fmul float %i.hv, %i.ia
  %i.ic = call float @llvm.exp.f32(float %i.ib)
  %i.id = fadd float %i.ic, 1.000000e+00
  %i.ie = fdiv float 1.000000e+00, %i.id
  %i.if = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv127
  %i.ig = load float, ptr %i.if, align 4, !tbaa !92
  %i.ih = fsub float %i.ie, %i.ig
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv127
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !92
  %i.ik = fdiv float %i.ih, %i.ij
  store float %i.ik, ptr %i.hy, align 4, !tbaa !92
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %.loopexit105, label %scalar.ph156, !llvm.loop !1610

.loopexit105:                                     ; preds = %scalar.ph156, %middle.block168, %._crit_edge
  %i.il = load ptr, ptr %i.cx, align 8, !tbaa !1624, !nonnull !110
  %i.im = load i8, ptr %i.il, align 1, !tbaa !115, !range !109, !noundef !110
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %.lr.ph113, label %.lr.ph116.preheader

.lr.ph113:                                        ; preds = %.loopexit105
  %i.io = load ptr, ptr %i.cy, align 8, !tbaa !1625, !nonnull !110, !align !230
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !121 ; 2 uses
  %i.iq = load ptr, ptr %i.cz, align 8, !tbaa !1626, !nonnull !110, !align !230
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !121 ; 2 uses
  %i.is = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count135 = sext i32 %i.dw to i64
  %i.it = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph113
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  %i.iu = add nsw i64 %n.vec, %i.is
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iv = add i64 %index, %i.is                   ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.iv ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.iv ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <4 x float>, ptr %i.iw, align 4, !tbaa !92
  %wide.load151 = load <4 x float>, ptr %i.iz, align 4, !tbaa !92
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %wide.load152 = load <4 x float>, ptr %i.iy, align 4, !tbaa !92 ; 2 uses
  %wide.load153 = load <4 x float>, ptr %i.ja, align 4, !tbaa !92 ; 2 uses
  %i.jb = fsub <4 x float> splat (float 1.000000e+00), %wide.load152
  %i.jc = fsub <4 x float> splat (float 1.000000e+00), %wide.load153
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load154 = load <4 x float>, ptr %i.ix, align 4, !tbaa !92
  %wide.load155 = load <4 x float>, ptr %i.jd, align 4, !tbaa !92
  %i.je = fmul <4 x float> %wide.load152, %wide.load154
  %i.jf = fmul <4 x float> %wide.load153, %wide.load155
  %i.jg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.jb, <4 x float> %i.je)
  %i.jh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load151, <4 x float> %i.jc, <4 x float> %i.jf)
  store <4 x float> %i.jg, ptr %i.iy, align 4, !tbaa !92
  store <4 x float> %i.jh, ptr %i.ja, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !1611

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %.lr.ph116.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph113, %middle.block
  %indvars.iv132.ph = phi i64 [ %i.is, %.lr.ph113 ], [ %i.iu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %scalar.ph ], [ %indvars.iv132.ph, %scalar.ph.preheader ] ; 4 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv132
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv132
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv132 ; 2 uses
  %i.jm = load float, ptr %i.jj, align 4, !tbaa !92
  %i.jn = load float, ptr %i.jl, align 4, !tbaa !92 ; 2 uses
  %i.jo = fsub float 1.000000e+00, %i.jn
  %i.jp = load float, ptr %i.jk, align 4, !tbaa !92
  %i.jq = fmul float %i.jn, %i.jp
  %i.jr = call noundef float @llvm.fmuladd.f32(float %i.jm, float %i.jo, float %i.jq)
  store float %i.jr, ptr %i.jl, align 4, !tbaa !92
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %.lr.ph116.preheader, label %scalar.ph, !llvm.loop !1612

.lr.ph116.preheader:                              ; preds = %scalar.ph, %.loopexit105, %middle.block
  %i.js = sext i32 %i.dv to i64
  br label %.lr.ph116

._crit_edge117:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.ae
  %indvars.iv137 = phi i64 [ %i.js, %.lr.ph116.preheader ], [ %indvars.iv.next138, %bb.ae ] ; 3 uses
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv137
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !92
  %i.jv = load ptr, ptr %5, align 8, !tbaa !333
  %i.jw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jv)
          to label %.noexc97 unwind label %bb.af

.noexc97:                                         ; preds = %.lr.ph116
  %i.jx = icmp eq i32 %i.jw, 3
  br i1 %i.jx, label %bb.ad, label %bb.ae, !prof !85

bb.ad:                                            ; preds = %.noexc97
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc97, %bb.ad
  %i.jy = load ptr, ptr %i.da, align 8, !tbaa !338
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 %indvars.iv137
  %i.ka = fmul float %i.ju, 2.550000e+02          ; 2 uses
  %i.kb = fcmp olt float %i.ka, 0.000000e+00
  %i.kc = select i1 %i.kb, float -5.000000e-01, float 5.000000e-01
  %i.kd = fadd float %i.ka, %i.kc                 ; 2 uses
  %.inv.i.i.i.i.i94 = fcmp oge float %i.kd, 0.000000e+00
  %.0.i.i.i.i.i.i95 = select i1 %.inv.i.i.i.i.i94, float %i.kd, float 0.000000e+00 ; 2 uses
  %i.ke = fcmp ogt float %.0.i.i.i.i.i.i95, 2.550000e+02
  %.1.i.i.i.i.i.i96 = select i1 %i.ke, float 2.550000e+02, float %.0.i.i.i.i.i.i95
  %i.kf = fptoui float %.1.i.i.i.i.i.i96 to i8
  store i8 %i.kf, ptr %i.jz, align 1, !tbaa !84
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.kg = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp slt i64 %indvars.iv.next138, %i.kh
  br i1 %i.ki, label %.lr.ph116, label %._crit_edge117, !llvm.loop !1613

bb.af:                                            ; preds = %bb.ad, %.lr.ph116
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge117
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1614

bb.ah:                                            ; preds = %bb.ag, %._crit_edge117
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.kk, %bb.ah ], [ %i.kj, %bb.af ]
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
  %.val = load ptr, ptr %0, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !144
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
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

end_hunk_4
begin_hunk_5_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_NS0_4spanIKfLm18446744073709551615EEESA_SA_SA_SA_SA_NS0_3ROIEiENKUlSB_E_clESB_:bb.a
  %i.gu = or disjoint <4 x i32> %i.gj, %i.gl      ; 2 uses
  %i.gv = icmp samesign ugt <4 x i32> %i.gj, splat (i32 260046847)
  %i.gw = or <4 x i32> %i.gu, splat (i32 2139095040)
  %i.gx = add nsw <4 x i32> %i.gj, splat (i32 -8388608)
  %i.gy = icmp ult <4 x i32> %i.gx, splat (i32 251658240)
  %i.gz = add nuw nsw <4 x i32> %i.gu, splat (i32 939524096)
  %predphi = select <4 x i1> %i.gm, <4 x i32> %i.gl, <4 x i32> %i.gt
  %predphi205 = select <4 x i1> %i.gv, <4 x i32> %i.gw, <4 x i32> %predphi
  %predphi206 = select <4 x i1> %i.gy, <4 x i32> %i.gz, <4 x i32> %predphi205
  %i.ha = bitcast <4 x i32> %predphi206 to <4 x float>
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.gf
  %wide.load207 = load <4 x float>, ptr %i.hb, align 4, !tbaa !92
  %i.hc = fsub <4 x float> %i.ha, %wide.load207
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gf
  %wide.load208 = load <4 x float>, ptr %i.hd, align 4, !tbaa !92
  %i.he = fmul <4 x float> %i.hc, %wide.load208
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.gf
  store <4 x float> %i.he, ptr %i.hf, align 4, !tbaa !92
  %index.next209 = add nuw i64 %index203, 4       ; 2 uses
  %i.hg = icmp eq i64 %index.next209, %n.vec201
  br i1 %i.hg, label %middle.block210, label %vector.body202, !llvm.loop !1629

middle.block210:                                  ; preds = %vector.body202
  %cmp.n211 = icmp eq i64 %i.gd, %n.vec201
  br i1 %cmp.n211, label %._crit_edge, label %scalar.ph198.preheader

scalar.ph198.preheader:                           ; preds = %.lr.ph, %middle.block210
  %indvars.iv.ph = phi i64 [ %i.gc, %.lr.ph ], [ %i.ge, %middle.block210 ]
  br label %scalar.ph198

._crit_edge:                                      ; preds = %bb.ay, %middle.block210
  %i.hh = load ptr, ptr %i.et, align 8, !tbaa !1645, !nonnull !110
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !115, !range !109, !noundef !110
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %.lr.ph115, label %.loopexit111

.lr.ph115:                                        ; preds = %._crit_edge
  %i.hk = load ptr, ptr %i.eu, align 8, !tbaa !1646, !nonnull !110, !align !230
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !121 ; 2 uses
  %i.hm = load ptr, ptr %i.ev, align 8, !tbaa !1647, !nonnull !110, !align !230
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !121 ; 2 uses
  %i.ho = sext i32 %i.fu to i64                   ; 3 uses
  %wide.trip.count131 = sext i32 %i.fv to i64
  %i.hp = sub nsw i64 %wide.trip.count, %i.gc     ; 3 uses
  %min.iters.check187 = icmp ult i64 %i.hp, 4
  br i1 %min.iters.check187, label %scalar.ph186.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph115
  %n.vec189 = and i64 %i.hp, -4                   ; 3 uses
  %i.hq = add nsw i64 %n.vec189, %i.ho
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next194, %vector.body190 ] ; 2 uses
  %i.hr = add i64 %index191, %i.ho                ; 4 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hr
  %wide.load192 = load <4 x float>, ptr %i.hs, align 4, !tbaa !92 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hr
  %wide.load193 = load <4 x float>, ptr %i.ht, align 4, !tbaa !92 ; 2 uses
  %i.hu = fmul <4 x float> %wide.load192, %wide.load193
  %i.hv = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.hu)
  %i.hw = fadd <4 x float> %i.hv, splat (float 1.000000e+00)
  %i.hx = fdiv <4 x float> splat (float 1.000000e+00), %i.hw ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.hr
  store <4 x float> %i.hx, ptr %i.hy, align 4, !tbaa !92
  %i.hz = fadd <4 x float> %wide.load193, splat (float -1.000000e+00)
  %i.ia = fmul <4 x float> %wide.load192, %i.hz
  %i.ib = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.ia)
  %i.ic = fadd <4 x float> %i.ib, splat (float 1.000000e+00)
  %i.id = fdiv <4 x float> splat (float 1.000000e+00), %i.ic
  %i.ie = fsub <4 x float> %i.id, %i.hx
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hr
  store <4 x float> %i.ie, ptr %i.if, align 4, !tbaa !92
  %index.next194 = add nuw i64 %index191, 4       ; 2 uses
  %i.ig = icmp eq i64 %index.next194, %n.vec189
  br i1 %i.ig, label %middle.block195, label %vector.body190, !llvm.loop !1630

middle.block195:                                  ; preds = %vector.body190
  %cmp.n196 = icmp eq i64 %i.hp, %n.vec189
  br i1 %cmp.n196, label %.lr.ph117, label %scalar.ph186.preheader

scalar.ph186.preheader:                           ; preds = %.lr.ph115, %middle.block195
  %indvars.iv128.ph = phi i64 [ %i.ho, %.lr.ph115 ], [ %i.hq, %middle.block195 ]
  br label %scalar.ph186

scalar.ph198:                                     ; preds = %scalar.ph198.preheader, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ %indvars.iv.ph, %scalar.ph198.preheader ] ; 5 uses
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %indvars.iv
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !348 ; 2 uses
  %i.ij = zext i16 %i.ii to i32
  %i.ik = shl nuw nsw i32 %i.ij, 13
  %i.il = and i32 %i.ik, 268427264                ; 6 uses
  %.signext.i.i.i.i.i90 = sext i16 %i.ii to i32
  %i.im = and i32 %.signext.i.i.i.i.i90, -2147483648 ; 3 uses
  %i.in = icmp samesign ugt i32 %i.il, 8388607
  br i1 %i.in, label %bb.at, label %bb.aw, !prof !59

bb.at:                                            ; preds = %scalar.ph198
  %i.io = or disjoint i32 %i.il, %i.im            ; 2 uses
  %i.ip = icmp samesign ult i32 %i.il, 260046848
  br i1 %i.ip, label %bb.au, label %bb.av, !prof !59

bb.au:                                            ; preds = %bb.at
  %i.iq = add nuw nsw i32 %i.io, 939524096
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.ir = or i32 %i.io, 2139095040
  br label %bb.ay

bb.aw:                                            ; preds = %scalar.ph198
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
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !92
  %i.jc = fsub float %i.iz, %i.jb
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %indvars.iv
  %i.je = load float, ptr %i.jd, align 4, !tbaa !92
  %i.jf = fmul float %i.jc, %i.je
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv
  store float %i.jf, ptr %i.jg, align 4, !tbaa !92
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph198, !llvm.loop !1631

.lr.ph117:                                        ; preds = %scalar.ph186, %middle.block195
  %i.jh = load ptr, ptr %i.eu, align 8, !tbaa !1646, !nonnull !110, !align !230
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !121 ; 2 uses
  %i.jj = load ptr, ptr %i.ev, align 8, !tbaa !1647, !nonnull !110, !align !230
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !121 ; 2 uses
  %i.jl = sext i32 %i.fu to i64                   ; 3 uses
  %wide.trip.count136 = sext i32 %i.fv to i64
  %i.jm = sub nsw i64 %wide.trip.count, %i.gc     ; 3 uses
  %min.iters.check172 = icmp ult i64 %i.jm, 4
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph117
  %n.vec174 = and i64 %i.jm, -4                   ; 3 uses
  %i.jn = add nsw i64 %n.vec174, %i.jl
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body175 ] ; 2 uses
  %i.jo = add i64 %index176, %i.jl                ; 5 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jo
  %wide.load177 = load <4 x float>, ptr %i.jp, align 4, !tbaa !92
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jo
  %wide.load178 = load <4 x float>, ptr %i.jq, align 4, !tbaa !92
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.jo ; 2 uses
  %wide.load179 = load <4 x float>, ptr %i.jr, align 4, !tbaa !92
  %i.js = fsub <4 x float> %wide.load178, %wide.load179
  %i.jt = fmul <4 x float> %wide.load177, %i.js
  %i.ju = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.jt)
  %i.jv = fadd <4 x float> %i.ju, splat (float 1.000000e+00)
  %i.jw = fdiv <4 x float> splat (float 1.000000e+00), %i.jv
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.jo
  %wide.load180 = load <4 x float>, ptr %i.jx, align 4, !tbaa !92
  %i.jy = fsub <4 x float> %i.jw, %wide.load180
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.jo
  %wide.load181 = load <4 x float>, ptr %i.jz, align 4, !tbaa !92
  %i.ka = fdiv <4 x float> %i.jy, %wide.load181
  store <4 x float> %i.ka, ptr %i.jr, align 4, !tbaa !92
  %index.next182 = add nuw i64 %index176, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next182, %n.vec174
  br i1 %i.kb, label %middle.block183, label %vector.body175, !llvm.loop !1632

middle.block183:                                  ; preds = %vector.body175
  %cmp.n184 = icmp eq i64 %i.jm, %n.vec174
  br i1 %cmp.n184, label %.loopexit111, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %.lr.ph117, %middle.block183
  %indvars.iv133.ph = phi i64 [ %i.jl, %.lr.ph117 ], [ %i.jn, %middle.block183 ]
  br label %scalar.ph171

scalar.ph186:                                     ; preds = %scalar.ph186.preheader, %scalar.ph186
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %scalar.ph186 ], [ %indvars.iv128.ph, %scalar.ph186.preheader ] ; 5 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv128
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !92 ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv128
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %indvars.iv128
  %i.kg = load float, ptr %i.ke, align 4, !tbaa !92 ; 2 uses
  %i.kh = fmul float %i.kd, %i.kg
  %i.ki = call float @llvm.exp.f32(float %i.kh)
  %i.kj = fadd float %i.kg, -1.000000e+00
  %i.kk = fmul float %i.kd, %i.kj
  %i.kl = call float @llvm.exp.f32(float %i.kk)
  %i.km = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %i.kl, i64 1
  %i.ko = fadd <2 x float> %i.kn, splat (float 1.000000e+00)
  %i.kp = fdiv <2 x float> splat (float 1.000000e+00), %i.ko ; 3 uses
  %i.kq = extractelement <2 x float> %i.kp, i64 0
  store float %i.kq, ptr %i.kf, align 4, !tbaa !92
  %shift = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.kp
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv128
  store float %6, ptr %i.kr, align 4, !tbaa !92
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.lr.ph117, label %scalar.ph186, !llvm.loop !1633

scalar.ph171:                                     ; preds = %scalar.ph171.preheader, %scalar.ph171
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph171 ], [ %indvars.iv133.ph, %scalar.ph171.preheader ] ; 6 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv133
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !92
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv133
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !92
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv133 ; 2 uses
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !92
  %i.ky = fsub float %i.kv, %i.kx
  %i.kz = fmul float %i.kt, %i.ky
  %i.la = call float @llvm.exp.f32(float %i.kz)
  %i.lb = fadd float %i.la, 1.000000e+00
  %i.lc = fdiv float 1.000000e+00, %i.lb
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %indvars.iv133
  %i.le = load float, ptr %i.ld, align 4, !tbaa !92
  %i.lf = fsub float %i.lc, %i.le
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv133
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !92
  %i.li = fdiv float %i.lf, %i.lh
  store float %i.li, ptr %i.kw, align 4, !tbaa !92
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.loopexit111, label %scalar.ph171, !llvm.loop !1634

.loopexit111:                                     ; preds = %scalar.ph171, %middle.block183, %._crit_edge
  %i.lj = load ptr, ptr %i.ew, align 8, !tbaa !1648, !nonnull !110
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !115, !range !109, !noundef !110
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %.lr.ph119, label %.lr.ph122.preheader

.lr.ph119:                                        ; preds = %.loopexit111
  %i.lm = load ptr, ptr %i.ex, align 8, !tbaa !1649, !nonnull !110, !align !230
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !121 ; 2 uses
  %i.lo = load ptr, ptr %i.ey, align 8, !tbaa !1650, !nonnull !110, !align !230
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !121 ; 2 uses
  %i.lq = sext i32 %i.fu to i64                   ; 3 uses
  %wide.trip.count141 = sext i32 %i.fv to i64
  %i.lr = sub nsw i64 %wide.trip.count, %i.gc     ; 3 uses
  %min.iters.check = icmp ult i64 %i.lr, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph119
  %n.vec = and i64 %i.lr, -8                      ; 3 uses
  %i.ls = add nsw i64 %n.vec, %i.lq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lt = add i64 %index, %i.lq                   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.lt ; 2 uses
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.lt ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load = load <4 x float>, ptr %i.lu, align 4, !tbaa !92
  %wide.load166 = load <4 x float>, ptr %i.lx, align 4, !tbaa !92
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %wide.load167 = load <4 x float>, ptr %i.lw, align 4, !tbaa !92 ; 2 uses
  %wide.load168 = load <4 x float>, ptr %i.ly, align 4, !tbaa !92 ; 2 uses
  %i.lz = fsub <4 x float> splat (float 1.000000e+00), %wide.load167
  %i.ma = fsub <4 x float> splat (float 1.000000e+00), %wide.load168
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %wide.load169 = load <4 x float>, ptr %i.lv, align 4, !tbaa !92
  %wide.load170 = load <4 x float>, ptr %i.mb, align 4, !tbaa !92
  %i.mc = fmul <4 x float> %wide.load167, %wide.load169
  %i.md = fmul <4 x float> %wide.load168, %wide.load170
  %i.me = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.lz, <4 x float> %i.mc)
  %i.mf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load166, <4 x float> %i.ma, <4 x float> %i.md)
  store <4 x float> %i.me, ptr %i.lw, align 4, !tbaa !92
  store <4 x float> %i.mf, ptr %i.ly, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mg = icmp eq i64 %index.next, %n.vec
  br i1 %i.mg, label %middle.block, label %vector.body, !llvm.loop !1635

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lr, %n.vec
  br i1 %cmp.n, label %.lr.ph122.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph119, %middle.block
  %indvars.iv138.ph = phi i64 [ %i.lq, %.lr.ph119 ], [ %i.ls, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %scalar.ph ], [ %indvars.iv138.ph, %scalar.ph.preheader ] ; 4 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv138
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv138
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv138 ; 2 uses
  %i.mk = load float, ptr %i.mh, align 4, !tbaa !92
  %i.ml = load float, ptr %i.mj, align 4, !tbaa !92 ; 2 uses
  %i.mm = fsub float 1.000000e+00, %i.ml
  %i.mn = load float, ptr %i.mi, align 4, !tbaa !92
  %i.mo = fmul float %i.ml, %i.mn
  %i.mp = call noundef float @llvm.fmuladd.f32(float %i.mk, float %i.mm, float %i.mo)
  store float %i.mp, ptr %i.mj, align 4, !tbaa !92
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %.lr.ph122.preheader, label %scalar.ph, !llvm.loop !1636

.lr.ph122.preheader:                              ; preds = %scalar.ph, %.loopexit111, %middle.block
  %i.mq = sext i32 %i.fu to i64
  br label %.lr.ph122

._crit_edge123:                                   ; preds = %bb.bk, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.bm unwind label %bb.bn

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.bk
  %indvars.iv143 = phi i64 [ %i.mq, %.lr.ph122.preheader ], [ %indvars.iv.next144, %bb.bk ] ; 3 uses
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv143
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !92 ; 2 uses
  %i.mt = load ptr, ptr %5, align 8, !tbaa !333
  %i.mu = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mt)
          to label %.noexc103 unwind label %bb.bl

.noexc103:                                        ; preds = %.lr.ph122
  %i.mv = icmp eq i32 %i.mu, 3
  br i1 %i.mv, label %bb.az, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99, !prof !85

bb.az:                                            ; preds = %.noexc103
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99 unwind label %bb.bl

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99: ; preds = %bb.az, %.noexc103
  %i.mw = load ptr, ptr %i.ez, align 8, !tbaa !338
  %i.mx = bitcast float %i.ms to i32
  %i.my = call float @llvm.fabs.f32(float %i.ms)
  %i.mz = bitcast float %i.my to i32              ; 10 uses
  %i.na = lshr i32 %i.mx, 16                      ; 3 uses
  %i.nb = trunc nuw i32 %i.na to i16
  %i.nc = and i16 %i.nb, -32768                   ; 3 uses
  %i.nd = icmp samesign ugt i32 %i.mz, 947912703
  br i1 %i.nd, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99
  %i.ne = icmp samesign ugt i32 %i.mz, 2139095039
  br i1 %i.ne, label %bb.bb, label %bb.bd, !prof !85

bb.bb:                                            ; preds = %bb.ba
  %i.nf = or disjoint i16 %i.nc, 31744            ; 2 uses
  %i.ng = icmp eq i32 %i.mz, 2139095040
  br i1 %i.ng, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nh = lshr i32 %i.mz, 13
  %i.ni = and i32 %i.nh, 1023                     ; 2 uses
  %i.nj = icmp eq i32 %i.ni, 0
  %i.nk = zext i1 %i.nj to i16
  %i.nl = trunc nuw nsw i32 %i.ni to i16
  %i.nm = or i16 %i.nl, %i.nk
  %i.nn = or disjoint i16 %i.nm, %i.nf
  br label %bb.bk

bb.bd:                                            ; preds = %bb.ba
  %i.no = icmp samesign ugt i32 %i.mz, 1199566847
  br i1 %i.no, label %bb.be, label %bb.bf, !prof !85

bb.be:                                            ; preds = %bb.bd
  %i.np = or disjoint i16 %i.nc, 31744
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.nq = add nuw nsw i32 %i.mz, 134221823
  %i.nr = lshr i32 %i.mz, 13
  %i.ns = and i32 %i.nr, 1
  %i.nt = add nuw nsw i32 %i.nq, %i.ns
  %i.nu = lshr i32 %i.nt, 13
  %i.nv = and i32 %i.na, 32768
  %i.nw = or i32 %i.nu, %i.nv
  %i.nx = trunc i32 %i.nw to i16
  br label %bb.bk

bb.bg:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i99
  %i.ny = icmp samesign ult i32 %i.mz, 855638017
  br i1 %i.ny, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nz = lshr i32 %i.mz, 23                      ; 2 uses
  %i.oa = sub nuw nsw i32 126, %i.nz
  %i.ob = and i32 %i.mz, 8388607
  %i.oc = or disjoint i32 %i.ob, 8388608          ; 2 uses
  %i.od = add nsw i32 %i.nz, -94
  %i.oe = shl i32 %i.oc, %i.od                    ; 2 uses
  %i.of = lshr i32 %i.oc, %i.oa                   ; 2 uses
  %i.og = and i32 %i.na, 32768
  %i.oh = or i32 %i.of, %i.og
  %i.oi = trunc nuw i32 %i.oh to i16              ; 2 uses
  %i.oj = icmp ugt i32 %i.oe, -2147483648
  br i1 %i.oj, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ok = icmp ne i32 %i.oe, -2147483648
  %i.ol = and i32 %i.of, 1
  %.not.i.i.i.i.i100 = icmp eq i32 %i.ol, 0
  %or.cond.i.i.i.i.i101 = select i1 %i.ok, i1 true, i1 %.not.i.i.i.i.i100
  br i1 %or.cond.i.i.i.i.i101, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
end_hunk_5
begin_hunk_6_@_ZZN11OpenImageIO4v3_1L15contrast_remap_IttEEbRNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_S8_S8_S8_S8_NS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86, %bb.v, %bb.w, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87
  %i.dv = load i32, ptr %i.cq, align 8, !tbaa !86 ; 6 uses
  %i.dw = load i32, ptr %i.bs, align 4, !tbaa !58 ; 5 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph, label %._crit_edge117

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  %i.dy = load ptr, ptr %i.cr, align 8, !tbaa !338 ; 2 uses
  %i.dz = load ptr, ptr %i.cs, align 8, !tbaa !1667, !nonnull !110, !align !230
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !121 ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1668, !nonnull !110, !align !230
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !88 ; 2 uses
  %i.ed = sext i32 %i.dv to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.dw to i64        ; 5 uses
  %i.ee = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check184 = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph
  %n.vec186 = and i64 %i.ee, -8                   ; 3 uses
  %i.ef = add nsw i64 %n.vec186, %i.ed
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next195, %vector.body187 ] ; 2 uses
  %i.eg = add i64 %index188, %i.ed                ; 4 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %wide.load189 = load <4 x i16>, ptr %i.eh, align 2, !tbaa !349
  %wide.load190 = load <4 x i16>, ptr %i.ei, align 2, !tbaa !349
  %i.ej = uitofp <4 x i16> %wide.load189 to <4 x float>
  %i.ek = uitofp <4 x i16> %wide.load190 to <4 x float>
  %i.el = fmul nnan <4 x float> %i.ej, splat (float f0x37800080)
  %i.em = fmul nnan <4 x float> %i.ek, splat (float f0x37800080)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eg ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load191 = load <4 x float>, ptr %i.en, align 4, !tbaa !92
  %wide.load192 = load <4 x float>, ptr %i.eo, align 4, !tbaa !92
  %i.ep = fsub <4 x float> %i.el, %wide.load191
  %i.eq = fsub <4 x float> %i.em, %wide.load192
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eg ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load193 = load <4 x float>, ptr %i.er, align 4, !tbaa !92
  %wide.load194 = load <4 x float>, ptr %i.es, align 4, !tbaa !92
  %i.et = fmul <4 x float> %i.ep, %wide.load193
  %i.eu = fmul <4 x float> %i.eq, %wide.load194
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.eg ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <4 x float> %i.et, ptr %i.ev, align 4, !tbaa !92
  store <4 x float> %i.eu, ptr %i.ew, align 4, !tbaa !92
  %index.next195 = add nuw i64 %index188, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.ex, label %middle.block196, label %vector.body187, !llvm.loop !1653

middle.block196:                                  ; preds = %vector.body187
  %cmp.n197 = icmp eq i64 %i.ee, %n.vec186
  br i1 %cmp.n197, label %._crit_edge, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %.lr.ph, %middle.block196
  %indvars.iv.ph = phi i64 [ %i.ed, %.lr.ph ], [ %i.ef, %middle.block196 ]
  br label %scalar.ph183

._crit_edge:                                      ; preds = %scalar.ph183, %middle.block196
  %i.ey = load ptr, ptr %i.cu, align 8, !tbaa !1669, !nonnull !110
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !115, !range !109, !noundef !110
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %.lr.ph109, label %.loopexit105

.lr.ph109:                                        ; preds = %._crit_edge
  %i.fb = load ptr, ptr %i.cv, align 8, !tbaa !1670, !nonnull !110, !align !230
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !121 ; 2 uses
  %i.fd = load ptr, ptr %i.cw, align 8, !tbaa !1671, !nonnull !110, !align !230
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !121 ; 2 uses
  %i.ff = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count125 = sext i32 %i.dw to i64
  %i.fg = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check172 = icmp ult i64 %i.fg, 4
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph109
  %n.vec174 = and i64 %i.fg, -4                   ; 3 uses
  %i.fh = add nsw i64 %n.vec174, %i.ff
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next179, %vector.body175 ] ; 2 uses
  %i.fi = add i64 %index176, %i.ff                ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fi
  %wide.load177 = load <4 x float>, ptr %i.fj, align 4, !tbaa !92 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fi
  %wide.load178 = load <4 x float>, ptr %i.fk, align 4, !tbaa !92 ; 2 uses
  %i.fl = fmul <4 x float> %wide.load177, %wide.load178
  %i.fm = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = fdiv <4 x float> splat (float 1.000000e+00), %i.fn ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.fi
  store <4 x float> %i.fo, ptr %i.fp, align 4, !tbaa !92
  %i.fq = fadd <4 x float> %wide.load178, splat (float -1.000000e+00)
  %i.fr = fmul <4 x float> %wide.load177, %i.fq
  %i.fs = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fr)
  %i.ft = fadd <4 x float> %i.fs, splat (float 1.000000e+00)
  %i.fu = fdiv <4 x float> splat (float 1.000000e+00), %i.ft
  %i.fv = fsub <4 x float> %i.fu, %i.fo
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.fi
  store <4 x float> %i.fv, ptr %i.fw, align 4, !tbaa !92
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.fx, label %middle.block180, label %vector.body175, !llvm.loop !1654

middle.block180:                                  ; preds = %vector.body175
  %cmp.n181 = icmp eq i64 %i.fg, %n.vec174
  br i1 %cmp.n181, label %.lr.ph111, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %.lr.ph109, %middle.block180
  %indvars.iv122.ph = phi i64 [ %i.ff, %.lr.ph109 ], [ %i.fh, %middle.block180 ]
  br label %scalar.ph171

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph183 ], [ %indvars.iv.ph, %scalar.ph183.preheader ] ; 5 uses
  %i.fy = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %indvars.iv
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !349
  %i.ga = uitofp i16 %i.fz to float
  %i.gb = fmul nnan float %i.ga, f0x37800080
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !92
  %i.ge = fsub float %i.gb, %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !92
  %i.gh = fmul float %i.ge, %i.gg
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv
  store float %i.gh, ptr %i.gi, align 4, !tbaa !92
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph183, !llvm.loop !1655

.lr.ph111:                                        ; preds = %scalar.ph171, %middle.block180
  %i.gj = load ptr, ptr %i.cv, align 8, !tbaa !1670, !nonnull !110, !align !230
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !121 ; 2 uses
  %i.gl = load ptr, ptr %i.cw, align 8, !tbaa !1671, !nonnull !110, !align !230
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !121 ; 2 uses
  %i.gn = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count130 = sext i32 %i.dw to i64
  %i.go = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check157 = icmp ult i64 %i.go, 4
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.lr.ph111
  %n.vec159 = and i64 %i.go, -4                   ; 3 uses
  %i.gp = add nsw i64 %n.vec159, %i.gn
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next167, %vector.body160 ] ; 2 uses
  %i.gq = add i64 %index161, %i.gn                ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gq
  %wide.load162 = load <4 x float>, ptr %i.gr, align 4, !tbaa !92
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gq
  %wide.load163 = load <4 x float>, ptr %i.gs, align 4, !tbaa !92
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.gq ; 2 uses
  %wide.load164 = load <4 x float>, ptr %i.gt, align 4, !tbaa !92
  %i.gu = fsub <4 x float> %wide.load163, %wide.load164
  %i.gv = fmul <4 x float> %wide.load162, %i.gu
  %i.gw = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.gv)
  %i.gx = fadd <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fdiv <4 x float> splat (float 1.000000e+00), %i.gx
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.gq
  %wide.load165 = load <4 x float>, ptr %i.gz, align 4, !tbaa !92
  %i.ha = fsub <4 x float> %i.gy, %wide.load165
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.gq
  %wide.load166 = load <4 x float>, ptr %i.hb, align 4, !tbaa !92
  %i.hc = fdiv <4 x float> %i.ha, %wide.load166
  store <4 x float> %i.hc, ptr %i.gt, align 4, !tbaa !92
  %index.next167 = add nuw i64 %index161, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next167, %n.vec159
  br i1 %i.hd, label %middle.block168, label %vector.body160, !llvm.loop !1656

middle.block168:                                  ; preds = %vector.body160
  %cmp.n169 = icmp eq i64 %i.go, %n.vec159
  br i1 %cmp.n169, label %.loopexit105, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.lr.ph111, %middle.block168
  %indvars.iv127.ph = phi i64 [ %i.gn, %.lr.ph111 ], [ %i.gp, %middle.block168 ]
  br label %scalar.ph156

scalar.ph171:                                     ; preds = %scalar.ph171.preheader, %scalar.ph171
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %scalar.ph171 ], [ %indvars.iv122.ph, %scalar.ph171.preheader ] ; 5 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv122
  %i.hf = load float, ptr %i.he, align 4, !tbaa !92 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv122
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv122
  %i.hi = load float, ptr %i.hg, align 4, !tbaa !92 ; 2 uses
  %i.hj = fmul float %i.hf, %i.hi
  %i.hk = call float @llvm.exp.f32(float %i.hj)
  %i.hl = fadd float %i.hi, -1.000000e+00
  %i.hm = fmul float %i.hf, %i.hl
  %i.hn = call float @llvm.exp.f32(float %i.hm)
  %i.ho = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hp = insertelement <2 x float> %i.ho, float %i.hn, i64 1
  %i.hq = fadd <2 x float> %i.hp, splat (float 1.000000e+00)
  %i.hr = fdiv <2 x float> splat (float 1.000000e+00), %i.hq ; 3 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 0
  store float %i.hs, ptr %i.hh, align 4, !tbaa !92
  %shift = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.hr
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv122
  store float %6, ptr %i.ht, align 4, !tbaa !92
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.lr.ph111, label %scalar.ph171, !llvm.loop !1657

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %scalar.ph156 ], [ %indvars.iv127.ph, %scalar.ph156.preheader ] ; 6 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv127
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !92
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv127
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !92
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv127 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !92
  %i.ia = fsub float %i.hx, %i.hz
  %i.ib = fmul float %i.hv, %i.ia
  %i.ic = call float @llvm.exp.f32(float %i.ib)
  %i.id = fadd float %i.ic, 1.000000e+00
  %i.ie = fdiv float 1.000000e+00, %i.id
  %i.if = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv127
  %i.ig = load float, ptr %i.if, align 4, !tbaa !92
  %i.ih = fsub float %i.ie, %i.ig
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv127
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !92
  %i.ik = fdiv float %i.ih, %i.ij
  store float %i.ik, ptr %i.hy, align 4, !tbaa !92
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %.loopexit105, label %scalar.ph156, !llvm.loop !1658

.loopexit105:                                     ; preds = %scalar.ph156, %middle.block168, %._crit_edge
  %i.il = load ptr, ptr %i.cx, align 8, !tbaa !1672, !nonnull !110
  %i.im = load i8, ptr %i.il, align 1, !tbaa !115, !range !109, !noundef !110
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %.lr.ph113, label %.lr.ph116.preheader

.lr.ph113:                                        ; preds = %.loopexit105
  %i.io = load ptr, ptr %i.cy, align 8, !tbaa !1673, !nonnull !110, !align !230
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !121 ; 2 uses
  %i.iq = load ptr, ptr %i.cz, align 8, !tbaa !1674, !nonnull !110, !align !230
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !121 ; 2 uses
  %i.is = sext i32 %i.dv to i64                   ; 3 uses
  %wide.trip.count135 = sext i32 %i.dw to i64
  %i.it = sub nsw i64 %wide.trip.count, %i.ed     ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph113
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  %i.iu = add nsw i64 %n.vec, %i.is
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iv = add i64 %index, %i.is                   ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.iv ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.iv ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <4 x float>, ptr %i.iw, align 4, !tbaa !92
  %wide.load151 = load <4 x float>, ptr %i.iz, align 4, !tbaa !92
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %wide.load152 = load <4 x float>, ptr %i.iy, align 4, !tbaa !92 ; 2 uses
  %wide.load153 = load <4 x float>, ptr %i.ja, align 4, !tbaa !92 ; 2 uses
  %i.jb = fsub <4 x float> splat (float 1.000000e+00), %wide.load152
  %i.jc = fsub <4 x float> splat (float 1.000000e+00), %wide.load153
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load154 = load <4 x float>, ptr %i.ix, align 4, !tbaa !92
  %wide.load155 = load <4 x float>, ptr %i.jd, align 4, !tbaa !92
  %i.je = fmul <4 x float> %wide.load152, %wide.load154
  %i.jf = fmul <4 x float> %wide.load153, %wide.load155
  %i.jg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.jb, <4 x float> %i.je)
  %i.jh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load151, <4 x float> %i.jc, <4 x float> %i.jf)
  store <4 x float> %i.jg, ptr %i.iy, align 4, !tbaa !92
  store <4 x float> %i.jh, ptr %i.ja, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !1659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %.lr.ph116.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph113, %middle.block
  %indvars.iv132.ph = phi i64 [ %i.is, %.lr.ph113 ], [ %i.iu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %scalar.ph ], [ %indvars.iv132.ph, %scalar.ph.preheader ] ; 4 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv132
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv132
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv132 ; 2 uses
  %i.jm = load float, ptr %i.jj, align 4, !tbaa !92
  %i.jn = load float, ptr %i.jl, align 4, !tbaa !92 ; 2 uses
  %i.jo = fsub float 1.000000e+00, %i.jn
  %i.jp = load float, ptr %i.jk, align 4, !tbaa !92
  %i.jq = fmul float %i.jn, %i.jp
  %i.jr = call noundef float @llvm.fmuladd.f32(float %i.jm, float %i.jo, float %i.jq)
  store float %i.jr, ptr %i.jl, align 4, !tbaa !92
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %.lr.ph116.preheader, label %scalar.ph, !llvm.loop !1660

.lr.ph116.preheader:                              ; preds = %scalar.ph, %.loopexit105, %middle.block
  %i.js = sext i32 %i.dv to i64
  br label %.lr.ph116

._crit_edge117:                                   ; preds = %bb.ae, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit87.thread
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ag unwind label %bb.ah

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.ae
  %indvars.iv137 = phi i64 [ %i.js, %.lr.ph116.preheader ], [ %indvars.iv.next138, %bb.ae ] ; 3 uses
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv137
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !92
  %i.jv = load ptr, ptr %5, align 8, !tbaa !333
  %i.jw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jv)
          to label %.noexc97 unwind label %bb.af

.noexc97:                                         ; preds = %.lr.ph116
  %i.jx = icmp eq i32 %i.jw, 3
  br i1 %i.jx, label %bb.ad, label %bb.ae, !prof !85

bb.ad:                                            ; preds = %.noexc97
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc97, %bb.ad
  %i.jy = load ptr, ptr %i.da, align 8, !tbaa !338
  %i.jz = getelementptr inbounds [2 x i8], ptr %i.jy, i64 %indvars.iv137
  %i.ka = fmul float %i.ju, 6.553500e+04          ; 2 uses
  %i.kb = fcmp olt float %i.ka, 0.000000e+00
  %i.kc = select i1 %i.kb, float -5.000000e-01, float 5.000000e-01
  %i.kd = fadd float %i.ka, %i.kc                 ; 2 uses
  %.inv.i.i.i.i.i94 = fcmp oge float %i.kd, 0.000000e+00
  %.0.i.i.i.i.i.i95 = select i1 %.inv.i.i.i.i.i94, float %i.kd, float 0.000000e+00 ; 2 uses
  %i.ke = fcmp ogt float %.0.i.i.i.i.i.i95, 6.553500e+04
  %.1.i.i.i.i.i.i96 = select i1 %i.ke, float 6.553500e+04, float %.0.i.i.i.i.i.i95
  %i.kf = fptoui float %.1.i.i.i.i.i.i96 to i16
  store i16 %i.kf, ptr %i.jz, align 2, !tbaa !349
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.kg = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp slt i64 %indvars.iv.next138, %i.kh
  br i1 %i.ki, label %.lr.ph116, label %._crit_edge117, !llvm.loop !1661

bb.af:                                            ; preds = %bb.ad, %.lr.ph116
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge117
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit86 unwind label %bb.ah, !llvm.loop !1662

bb.ah:                                            ; preds = %bb.ag, %._crit_edge117
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.kk, %bb.ah ], [ %i.kj, %bb.af ]
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
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1678, !nonnull !110, !align !230
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1679, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
end_hunk_6
