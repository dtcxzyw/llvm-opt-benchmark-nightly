Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86?download=true
inline.NumInlined: 23
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.3:bb.a
  %i.dy = getelementptr i8, ptr %.0109160.us.i.i, i64 16 ; 2 uses
  %i.dz = load <4 x float>, ptr %i.dx, align 1, !tbaa !63
  %i.ea = load <4 x float>, ptr %i.dy, align 1, !tbaa !63
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dz)
  store <4 x float> %i.eb, ptr %i.dy, align 1, !tbaa !63
  %i.ec = getelementptr i8, ptr %.097161.us.i.i, i64 32 ; 3 uses
  %i.ed = getelementptr i8, ptr %.0109160.us.i.i, i64 32 ; 3 uses
  %indvar.next.1 = add nuw nsw i64 %indvar, 2     ; 2 uses
  %niter252.next.1 = add i32 %niter252, 2         ; 2 uses
  %niter252.ncmp.1.not = icmp eq i32 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1.not, label %..preheader158_crit_edge.us.i.i.unr-lcssa, label %.lr.ph.us.i50.i.new, !llvm.loop !5

.lr.ph167.us.i.i:                                 ; preds = %.lr.ph167.us.i.i.prol.loopexit, %.lr.ph167.us.i.i
  %.1166.us.i.i = phi ptr [ %i.eo, %.lr.ph167.us.i.i ], [ %.1166.us.i.i.unr, %.lr.ph167.us.i.i.prol.loopexit ] ; 3 uses
  %.1110165.us.i.i = phi ptr [ %i.ep, %.lr.ph167.us.i.i ], [ %.1110165.us.i.i.unr, %.lr.ph167.us.i.i.prol.loopexit ] ; 4 uses
  %.1112164.us.i.i = phi i32 [ %i.eq, %.lr.ph167.us.i.i ], [ %.1112164.us.i.i.unr, %.lr.ph167.us.i.i.prol.loopexit ]
  %i.ee = load float, ptr %.1110165.us.i.i, align 4, !tbaa !66 ; 2 uses
  %i.ef = load float, ptr %.1166.us.i.i, align 4, !tbaa !66 ; 2 uses
  %i.eg = fcmp fast olt float %i.ee, %i.ef
  %i.eh = select i1 %i.eg, float %i.ef, float %i.ee
  store float %i.eh, ptr %.1110165.us.i.i, align 4, !tbaa !66
  %i.ei = getelementptr inbounds nuw i8, ptr %.1166.us.i.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.1110165.us.i.i, i64 4 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !66 ; 2 uses
  %i.el = load float, ptr %i.ei, align 4, !tbaa !66 ; 2 uses
  %i.em = fcmp fast olt float %i.ek, %i.el
  %i.en = select i1 %i.em, float %i.el, float %i.ek
  store float %i.en, ptr %i.ej, align 4, !tbaa !66
  %i.eo = getelementptr inbounds nuw i8, ptr %.1166.us.i.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.1110165.us.i.i, i64 8
  %i.eq = add nuw nsw i32 %.1112164.us.i.i, 2     ; 2 uses
  %exitcond225.not.i.i.1 = icmp eq i32 %i.eq, %i.aw
  br i1 %exitcond225.not.i.i.1, label %._crit_edge.us.i51.i, label %.lr.ph167.us.i.i, !llvm.loop !163

._crit_edge.us.i51.i:                             ; preds = %.lr.ph167.us.i.i.prol.loopexit, %.lr.ph167.us.i.i, %middle.block210, %..preheader158_crit_edge.us.i.i
  %indvars.iv.next227.i.i = add nuw nsw i64 %indvars.iv226.i.i, 1 ; 2 uses
  %exitcond230.not.i.i = icmp eq i64 %indvars.iv.next227.i.i, %wide.trip.count229.i.i
  br i1 %exitcond230.not.i.i, label %.lr.ph186.i.i, label %.lr.ph.us.i50.i, !llvm.loop !6

..preheader158_crit_edge.us.i.i.unr-lcssa:        ; preds = %.lr.ph.us.i50.i.new
  %indvar.next = or disjoint i64 %indvar, 1
  br i1 %lcmp.mod246.not.not, label %.epil.preheader, label %..preheader158_crit_edge.us.i.i

.epil.preheader:                                  ; preds = %..preheader158_crit_edge.us.i.i.unr-lcssa, %.lr.ph.us.i50.i
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.us.i50.i ], [ %indvar.next.1, %..preheader158_crit_edge.us.i.i.unr-lcssa ]
  %.097161.us.i.i.epil.init = phi ptr [ %i.dt, %.lr.ph.us.i50.i ], [ %i.ec, %..preheader158_crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.0109160.us.i.i.epil.init = phi ptr [ %i.av, %.lr.ph.us.i50.i ], [ %i.ed, %..preheader158_crit_edge.us.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.er = load <4 x float>, ptr %.097161.us.i.i.epil.init, align 1, !tbaa !63
  %i.es = load <4 x float>, ptr %.0109160.us.i.i.epil.init, align 1, !tbaa !63
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.es, <4 x float> nofpclass(nan inf) %i.er)
  store <4 x float> %i.et, ptr %.0109160.us.i.i.epil.init, align 1, !tbaa !63
  %i.eu = getelementptr i8, ptr %.097161.us.i.i.epil.init, i64 16
  %i.ev = getelementptr i8, ptr %.0109160.us.i.i.epil.init, i64 16
  br label %..preheader158_crit_edge.us.i.i

..preheader158_crit_edge.us.i.i:                  ; preds = %..preheader158_crit_edge.us.i.i.unr-lcssa, %.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %..preheader158_crit_edge.us.i.i.unr-lcssa ], [ %indvar.epil.init, %.epil.preheader ]
  %.lcssa234 = phi ptr [ %i.ec, %..preheader158_crit_edge.us.i.i.unr-lcssa ], [ %i.eu, %.epil.preheader ] ; 5 uses
  %.lcssa233 = phi ptr [ %i.ed, %..preheader158_crit_edge.us.i.i.unr-lcssa ], [ %i.ev, %.epil.preheader ] ; 5 uses
  br i1 %.not.i44, label %._crit_edge.us.i51.i, label %.lr.ph167.us.i.i.preheader

.lr.ph167.us.i.i.preheader:                       ; preds = %..preheader158_crit_edge.us.i.i
  br i1 %min.iters.check198, label %.lr.ph167.us.i.i.preheader229, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph167.us.i.i.preheader
  %i.ew = shl nuw nsw i64 %indvar.lcssa, 4        ; 2 uses
  %scevgep192 = getelementptr i8, ptr %i.dn, i64 %i.ew
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ew
  %i.ex = getelementptr i8, ptr %gep, i64 20
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.cv
  %scevgep193 = getelementptr i8, ptr %i.ey, i64 %i.dr
  %bound0194 = icmp ult ptr %.lcssa233, %scevgep193
  %bound1195 = icmp ult ptr %.lcssa234, %scevgep192
  %found.conflict196 = and i1 %bound0194, %bound1195
  br i1 %found.conflict196, label %.lr.ph167.us.i.i.preheader229, label %vector.ph199

vector.ph199:                                     ; preds = %vector.memcheck191
  %i.ez = getelementptr i8, ptr %.lcssa234, i64 %i.do
  %i.fa = getelementptr i8, ptr %.lcssa233, i64 %i.do
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next209, %vector.body201 ] ; 2 uses
  %i.fb = shl i64 %index202, 2                    ; 2 uses
  %next.gep203 = getelementptr i8, ptr %.lcssa234, i64 %i.fb ; 2 uses
  %next.gep204 = getelementptr i8, ptr %.lcssa233, i64 %i.fb ; 3 uses
  %i.fc = getelementptr i8, ptr %next.gep204, i64 16 ; 2 uses
  %wide.load205 = load <4 x float>, ptr %next.gep204, align 4, !tbaa !66, !alias.scope !186, !noalias !187 ; 2 uses
  %wide.load206 = load <4 x float>, ptr %i.fc, align 4, !tbaa !66, !alias.scope !186, !noalias !187 ; 2 uses
  %i.fd = getelementptr i8, ptr %next.gep203, i64 16
  %wide.load207 = load <4 x float>, ptr %next.gep203, align 4, !tbaa !66, !alias.scope !187 ; 2 uses
  %wide.load208 = load <4 x float>, ptr %i.fd, align 4, !tbaa !66, !alias.scope !187 ; 2 uses
  %i.fe = fcmp fast olt <4 x float> %wide.load205, %wide.load207
  %i.ff = fcmp fast olt <4 x float> %wide.load206, %wide.load208
  %i.fg = select <4 x i1> %i.fe, <4 x float> %wide.load207, <4 x float> %wide.load205
  %i.fh = select <4 x i1> %i.ff, <4 x float> %wide.load208, <4 x float> %wide.load206
  store <4 x float> %i.fg, ptr %next.gep204, align 4, !tbaa !66, !alias.scope !186, !noalias !187
  store <4 x float> %i.fh, ptr %i.fc, align 4, !tbaa !66, !alias.scope !186, !noalias !187
  %index.next209 = add nuw i64 %index202, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next209, %n.vec200
  br i1 %i.fi, label %middle.block210, label %vector.body201, !llvm.loop !167

middle.block210:                                  ; preds = %vector.body201
  br i1 %cmp.n211, label %._crit_edge.us.i51.i, label %.lr.ph167.us.i.i.preheader229

.lr.ph167.us.i.i.preheader229:                    ; preds = %vector.memcheck191, %.lr.ph167.us.i.i.preheader, %middle.block210
  %.1166.us.i.i.ph = phi ptr [ %.lcssa234, %vector.memcheck191 ], [ %.lcssa234, %.lr.ph167.us.i.i.preheader ], [ %i.ez, %middle.block210 ] ; 3 uses
  %.1110165.us.i.i.ph = phi ptr [ %.lcssa233, %vector.memcheck191 ], [ %.lcssa233, %.lr.ph167.us.i.i.preheader ], [ %i.fa, %middle.block210 ] ; 4 uses
  %.1112164.us.i.i.ph = phi i32 [ %i.cr, %vector.memcheck191 ], [ %i.cr, %.lr.ph167.us.i.i.preheader ], [ %i.dq, %middle.block210 ] ; 4 uses
  %i.fj = sub i32 %i.aw, %.1112164.us.i.i.ph
  %.neg = add i32 %.1112164.us.i.i.ph, 1
  %xtraiter253 = and i32 %i.fj, 1
  %lcmp.mod254.not = icmp eq i32 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph167.us.i.i.prol.loopexit, label %.lr.ph167.us.i.i.prol

.lr.ph167.us.i.i.prol:                            ; preds = %.lr.ph167.us.i.i.preheader229
  %i.fk = load float, ptr %.1110165.us.i.i.ph, align 4, !tbaa !66 ; 2 uses
  %i.fl = load float, ptr %.1166.us.i.i.ph, align 4, !tbaa !66 ; 2 uses
  %i.fm = fcmp fast olt float %i.fk, %i.fl
  %i.fn = select i1 %i.fm, float %i.fl, float %i.fk
  store float %i.fn, ptr %.1110165.us.i.i.ph, align 4, !tbaa !66
  %i.fo = getelementptr inbounds nuw i8, ptr %.1166.us.i.i.ph, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.1110165.us.i.i.ph, i64 4
  %i.fq = add nuw nsw i32 %.1112164.us.i.i.ph, 1
  br label %.lr.ph167.us.i.i.prol.loopexit

.lr.ph167.us.i.i.prol.loopexit:                   ; preds = %.lr.ph167.us.i.i.prol, %.lr.ph167.us.i.i.preheader229
  %.1166.us.i.i.unr = phi ptr [ %.1166.us.i.i.ph, %.lr.ph167.us.i.i.preheader229 ], [ %i.fo, %.lr.ph167.us.i.i.prol ]
  %.1110165.us.i.i.unr = phi ptr [ %.1110165.us.i.i.ph, %.lr.ph167.us.i.i.preheader229 ], [ %i.fp, %.lr.ph167.us.i.i.prol ]
  %.1112164.us.i.i.unr = phi i32 [ %.1112164.us.i.i.ph, %.lr.ph167.us.i.i.preheader229 ], [ %i.fq, %.lr.ph167.us.i.i.prol ]
  %i.fr = icmp eq i32 %i.aw, %.neg
  br i1 %i.fr, label %._crit_edge.us.i51.i, label %.lr.ph167.us.i.i

.lr.ph170.split.i.i:                              ; preds = %.lr.ph170.i.i
  %i.fs = icmp sgt i32 %i.aw, 0
  br i1 %i.fs, label %.preheader158.i.i.preheader, label %.lr.ph186.i.i

.preheader158.i.i.preheader:                      ; preds = %.lr.ph170.split.i.i
  %exitcond.not.i46.i = icmp eq i32 %i.aw, 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %exitcond.not.i46.i.1 = icmp eq i32 %i.aw, 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.promoted = load float, ptr %i.av, align 4, !tbaa !66
  br label %.preheader158.i.i

.lr.ph186.i.i:                                    ; preds = %._crit_edge.i47.i, %._crit_edge.us.i51.i, %.lr.ph170.split.i.i
  %i.fv = and i32 %i.aw, -4
  br label %bb.e

.preheader158.i.i:                                ; preds = %.preheader158.i.i.preheader, %._crit_edge.i47.i
  %i.fw = phi float [ %i.gb, %._crit_edge.i47.i ], [ %.promoted, %.preheader158.i.i.preheader ] ; 2 uses
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i48.i, %._crit_edge.i47.i ], [ 0, %.preheader158.i.i.preheader ] ; 2 uses
  %i.fx = mul nuw nsw i64 %indvars.iv.i45.i, %i.ax
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.fx ; 3 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !66 ; 2 uses
  %i.ga = fcmp fast olt float %i.fw, %i.fz
  %i.gb = select i1 %i.ga, float %i.fz, float %i.fw ; 2 uses
  store float %i.gb, ptr %i.av, align 4, !tbaa !66
  br i1 %exitcond.not.i46.i, label %._crit_edge.i47.i, label %bb.c

bb.c:                                             ; preds = %.preheader158.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gd = load float, ptr %i.ft, align 4, !tbaa !66 ; 2 uses
  %i.ge = load float, ptr %i.gc, align 4, !tbaa !66 ; 2 uses
  %i.gf = fcmp fast olt float %i.gd, %i.ge
  %i.gg = select i1 %i.gf, float %i.ge, float %i.gd
  store float %i.gg, ptr %i.ft, align 4, !tbaa !66
  br i1 %exitcond.not.i46.i.1, label %._crit_edge.i47.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gi = load float, ptr %i.fu, align 4, !tbaa !66 ; 2 uses
  %i.gj = load float, ptr %i.gh, align 4, !tbaa !66 ; 2 uses
  %i.gk = fcmp fast olt float %i.gi, %i.gj
  %i.gl = select i1 %i.gk, float %i.gj, float %i.gi
  store float %i.gl, ptr %i.fu, align 4, !tbaa !66
  br label %._crit_edge.i47.i

._crit_edge.i47.i:                                ; preds = %bb.d, %bb.c, %.preheader158.i.i
  %indvars.iv.next.i48.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond224.not.i.i = icmp eq i64 %indvars.iv.next.i48.i, %wide.trip.count229.i.i
  br i1 %exitcond224.not.i.i, label %.lr.ph186.i.i, label %.preheader158.i.i, !llvm.loop !6

.preheader155.i.i:                                ; preds = %._crit_edge184.i.i, %._crit_edge.i
  br i1 %i.ba, label %.lr.ph189.i.i.preheader, label %.preheader154.i.i

.lr.ph189.i.i.preheader:                          ; preds = %.preheader155.i.i
  %i.gm = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.gn = lshr i32 %i.gm, 2                       ; 2 uses
  %i.go = add nuw nsw i32 %i.gn, 1                ; 2 uses
  %i.gp = icmp eq i32 %i.gn, 0
  br i1 %i.gp, label %.lr.ph189.i.i.epil.preheader, label %.lr.ph189.i.i.preheader.new

.lr.ph189.i.i.preheader.new:                      ; preds = %.lr.ph189.i.i.preheader
  %unroll_iter262 = and i32 %i.go, 2147483646
  br label %.lr.ph189.i.i

bb.e:                                             ; preds = %._crit_edge184.i.i, %.lr.ph186.i.i
  %indvars.iv232.i.i = phi i64 [ 0, %.lr.ph186.i.i ], [ %indvars.iv.next233.i.i, %._crit_edge184.i.i ] ; 2 uses
  %i.gq = mul i64 %indvars.iv232.i.i, %i.ax
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.gq ; 2 uses
  br i1 %i.ba, label %.lr.ph.i43.i, label %.preheader156.i.i

.preheader156.i.i:                                ; preds = %.lr.ph.i43.i, %bb.e
  %.0120.lcssa.i.i = phi ptr [ %i.gr, %bb.e ], [ %i.jh, %.lr.ph.i43.i ] ; 7 uses
  %.0118.lcssa.i.i = phi ptr [ %i.av, %bb.e ], [ %i.ji, %.lr.ph.i43.i ] ; 7 uses
  %.0116.lcssa.i.i = phi ptr [ %i.ay, %bb.e ], [ %i.jj, %.lr.ph.i43.i ] ; 7 uses
  %.0114.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %i.fv, %.lr.ph.i43.i ] ; 6 uses
  %i.gs = icmp slt i32 %.0114.lcssa.i.i, %i.aw
  br i1 %i.gs, label %.lr.ph183.i.i.preheader, label %._crit_edge184.i.i

.lr.ph183.i.i.preheader:                          ; preds = %.preheader156.i.i
  %i.gt = xor i32 %.0114.lcssa.i.i, -1
  %i.gu = add i32 %i.aw, %i.gt                    ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check173 = icmp ult i32 %i.gu, 3
  br i1 %min.iters.check173, label %.lr.ph183.i.i.preheader228, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph183.i.i.preheader
  %scevgep156 = getelementptr i8, ptr %.0120.lcssa.i.i, i64 4
  %i.gx = xor i32 %.0114.lcssa.i.i, -1
  %i.gy = add i32 %i.aw, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2                ; 3 uses
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %i.ha ; 2 uses
  %scevgep158 = getelementptr i8, ptr %.0116.lcssa.i.i, i64 4
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.ha ; 2 uses
  %scevgep160 = getelementptr i8, ptr %.0118.lcssa.i.i, i64 4
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.ha ; 2 uses
  %bound0162 = icmp ult ptr %.0120.lcssa.i.i, %scevgep159
  %bound1163 = icmp ult ptr %.0116.lcssa.i.i, %scevgep157
  %found.conflict164 = and i1 %bound0162, %bound1163
  %bound0165 = icmp ult ptr %.0120.lcssa.i.i, %scevgep161
  %bound1166 = icmp ult ptr %.0118.lcssa.i.i, %scevgep157
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx = or i1 %found.conflict164, %found.conflict167
  %bound0168 = icmp ult ptr %.0116.lcssa.i.i, %scevgep161
  %bound1169 = icmp ult ptr %.0118.lcssa.i.i, %scevgep159
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx, %found.conflict170
  br i1 %conflict.rdx171, label %.lr.ph183.i.i.preheader228, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck155
  %n.vec175 = and i64 %i.gw, 8589934588           ; 4 uses
  %i.hb = trunc i64 %n.vec175 to i32
  %i.hc = add i32 %.0114.lcssa.i.i, %i.hb
  %i.hd = shl nuw nsw i64 %n.vec175, 2            ; 3 uses
  %i.he = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.hd
  %i.hf = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.hd
  %i.hg = getelementptr i8, ptr %.0120.lcssa.i.i, i64 %i.hd
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next184, %vector.body176 ] ; 2 uses
  %i.hh = shl i64 %index177, 2                    ; 3 uses
  %next.gep178 = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.hh ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.hh
  %next.gep180 = getelementptr i8, ptr %.0120.lcssa.i.i, i64 %i.hh ; 2 uses
  %wide.load181 = load <4 x float>, ptr %next.gep180, align 4, !tbaa !66, !alias.scope !188, !noalias !189
  %wide.load182 = load <4 x float>, ptr %next.gep179, align 4, !tbaa !66, !alias.scope !190
  %i.hi = fsub fast <4 x float> %wide.load181, %wide.load182
  %i.hj = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hi) ; 2 uses
  store <4 x float> %i.hj, ptr %next.gep180, align 4, !tbaa !66, !alias.scope !188, !noalias !189
  %wide.load183 = load <4 x float>, ptr %next.gep178, align 4, !tbaa !66, !alias.scope !191, !noalias !190
  %i.hk = fadd fast <4 x float> %wide.load183, %i.hj
  store <4 x float> %i.hk, ptr %next.gep178, align 4, !tbaa !66, !alias.scope !191, !noalias !190
  %index.next184 = add nuw i64 %index177, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next184, %n.vec175
  br i1 %i.hl, label %middle.block185, label %vector.body176, !llvm.loop !172

middle.block185:                                  ; preds = %vector.body176
  %cmp.n186 = icmp eq i64 %i.gw, %n.vec175
  br i1 %cmp.n186, label %._crit_edge184.i.i, label %.lr.ph183.i.i.preheader228

.lr.ph183.i.i.preheader228:                       ; preds = %vector.memcheck155, %.lr.ph183.i.i.preheader, %middle.block185
  %.1115182.i.i.ph = phi i32 [ %.0114.lcssa.i.i, %vector.memcheck155 ], [ %.0114.lcssa.i.i, %.lr.ph183.i.i.preheader ], [ %i.hc, %middle.block185 ] ; 4 uses
  %.1117181.i.i.ph = phi ptr [ %.0116.lcssa.i.i, %vector.memcheck155 ], [ %.0116.lcssa.i.i, %.lr.ph183.i.i.preheader ], [ %i.he, %middle.block185 ] ; 4 uses
  %.1119180.i.i.ph = phi ptr [ %.0118.lcssa.i.i, %vector.memcheck155 ], [ %.0118.lcssa.i.i, %.lr.ph183.i.i.preheader ], [ %i.hf, %middle.block185 ] ; 3 uses
  %.1121179.i.i.ph = phi ptr [ %.0120.lcssa.i.i, %vector.memcheck155 ], [ %.0120.lcssa.i.i, %.lr.ph183.i.i.preheader ], [ %i.hg, %middle.block185 ] ; 4 uses
  %i.hm = sub i32 %i.aw, %.1115182.i.i.ph
  %.neg274 = add i32 %.1115182.i.i.ph, 1
  %xtraiter255 = and i32 %i.hm, 1
  %lcmp.mod256.not = icmp eq i32 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph183.i.i.prol.loopexit, label %.lr.ph183.i.i.prol

.lr.ph183.i.i.prol:                               ; preds = %.lr.ph183.i.i.preheader228
  %i.hn = load float, ptr %.1121179.i.i.ph, align 4, !tbaa !66
  %i.ho = load float, ptr %.1119180.i.i.ph, align 4, !tbaa !66
  %i.hp = fsub fast float %i.hn, %i.ho
  %i.hq = call fast float @llvm.exp.f32(float %i.hp) ; 2 uses
  store float %i.hq, ptr %.1121179.i.i.ph, align 4, !tbaa !66
  %i.hr = load float, ptr %.1117181.i.i.ph, align 4, !tbaa !66
  %i.hs = fadd fast float %i.hr, %i.hq
  store float %i.hs, ptr %.1117181.i.i.ph, align 4, !tbaa !66
  %i.ht = getelementptr inbounds nuw i8, ptr %.1121179.i.i.ph, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %.1119180.i.i.ph, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.1117181.i.i.ph, i64 4
  %i.hw = add nuw nsw i32 %.1115182.i.i.ph, 1
  br label %.lr.ph183.i.i.prol.loopexit

.lr.ph183.i.i.prol.loopexit:                      ; preds = %.lr.ph183.i.i.prol, %.lr.ph183.i.i.preheader228
  %.1115182.i.i.unr = phi i32 [ %.1115182.i.i.ph, %.lr.ph183.i.i.preheader228 ], [ %i.hw, %.lr.ph183.i.i.prol ]
  %.1117181.i.i.unr = phi ptr [ %.1117181.i.i.ph, %.lr.ph183.i.i.preheader228 ], [ %i.hv, %.lr.ph183.i.i.prol ]
  %.1119180.i.i.unr = phi ptr [ %.1119180.i.i.ph, %.lr.ph183.i.i.preheader228 ], [ %i.hu, %.lr.ph183.i.i.prol ]
  %.1121179.i.i.unr = phi ptr [ %.1121179.i.i.ph, %.lr.ph183.i.i.preheader228 ], [ %i.ht, %.lr.ph183.i.i.prol ]
  %i.hx = icmp eq i32 %i.aw, %.neg274
  br i1 %i.hx, label %._crit_edge184.i.i, label %.lr.ph183.i.i

.lr.ph.i43.i:                                     ; preds = %bb.e, %.lr.ph.i43.i
  %.0114174.i.i = phi i32 [ %i.jk, %.lr.ph.i43.i ], [ 0, %bb.e ]
  %.0116173.i.i = phi ptr [ %i.jj, %.lr.ph.i43.i ], [ %i.ay, %bb.e ] ; 3 uses
  %.0118172.i.i = phi ptr [ %i.ji, %.lr.ph.i43.i ], [ %i.av, %bb.e ] ; 2 uses
  %.0120171.i.i = phi ptr [ %i.jh, %.lr.ph.i43.i ], [ %i.gr, %bb.e ] ; 3 uses
  %i.hy = load <4 x float>, ptr %.0120171.i.i, align 1, !tbaa !63
  %i.hz = load <4 x float>, ptr %.0118172.i.i, align 1, !tbaa !63
  %i.ia = load <4 x float>, ptr %.0116173.i.i, align 1, !tbaa !63
  %i.ib = fsub fast <4 x float> %i.hy, %i.hz
  %i.ic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ib, <4 x float> splat (float f0x42B0C0A5))
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ic, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ie = fmul fast <4 x float> %i.id, splat (float f0x3FB8AA3B)
  %i.if = fadd fast <4 x float> %i.ie, splat (float 5.000000e-01) ; 2 uses
  %i.ig = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.if)
  %i.ih = sitofp fast <4 x i32> %i.ig to <4 x float> ; 2 uses
  %i.ii = fcmp fast olt <4 x float> %i.if, %i.ih
  %i.ij = select <4 x i1> %i.ii, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ik = fsub fast <4 x float> %i.ih, %i.ij      ; 2 uses
  %i.il = fmul fast <4 x float> %i.ik, splat (float f0x3F317218)
  %i.im = fsub fast <4 x float> %i.id, %i.il      ; 8 uses
  %i.in = fmul fast <4 x float> %i.im, %i.im
  %i.io = fmul fast <4 x float> %i.im, splat (float f0x39506967)
  %i.ip = fadd fast <4 x float> %i.io, splat (float f0x3AB743CE)
  %i.iq = fmul fast <4 x float> %i.ip, %i.im
  %i.ir = fadd fast <4 x float> %i.iq, splat (float f0x3C088908)
  %i.is = fmul fast <4 x float> %i.ir, %i.im
  %i.it = fadd fast <4 x float> %i.is, splat (float f0x3D2AA9C1)
  %i.iu = fmul fast <4 x float> %i.it, %i.im
  %i.iv = fadd fast <4 x float> %i.iu, splat (float f0x3E2AAAAA)
  %i.iw = fmul fast <4 x float> %i.iv, %i.im
  %i.ix = fadd fast <4 x float> %i.iw, splat (float 5.000000e-01)
  %i.iy = fmul fast <4 x float> %i.in, %i.ix
  %i.iz = fadd fast <4 x float> %i.im, splat (float 1.000000e+00)
  %i.ja = fadd fast <4 x float> %i.iz, %i.iy
  %i.jb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ik)
  %i.jc = shl <4 x i32> %i.jb, splat (i32 23)
  %i.jd = add <4 x i32> %i.jc, splat (i32 1065353216)
  %i.je = bitcast <4 x i32> %i.jd to <4 x float>
  %i.jf = fmul fast <4 x float> %i.ja, %i.je      ; 2 uses
  store <4 x float> %i.jf, ptr %.0120171.i.i, align 1, !tbaa !63
  %i.jg = fadd fast <4 x float> %i.jf, %i.ia
  store <4 x float> %i.jg, ptr %.0116173.i.i, align 1, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %.0120171.i.i, i64 16 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0118172.i.i, i64 16 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0116173.i.i, i64 16 ; 2 uses
  %i.jk = add nuw nsw i32 %.0114174.i.i, 4        ; 2 uses
  %i.jl = or disjoint i32 %i.jk, 3
  %i.jm = icmp slt i32 %i.jl, %i.aw
  br i1 %i.jm, label %.lr.ph.i43.i, label %.preheader156.i.i, !llvm.loop !7

.lr.ph183.i.i:                                    ; preds = %.lr.ph183.i.i.prol.loopexit, %.lr.ph183.i.i
  %.1115182.i.i = phi i32 [ %i.kf, %.lr.ph183.i.i ], [ %.1115182.i.i.unr, %.lr.ph183.i.i.prol.loopexit ]
  %.1117181.i.i = phi ptr [ %i.ke, %.lr.ph183.i.i ], [ %.1117181.i.i.unr, %.lr.ph183.i.i.prol.loopexit ] ; 4 uses
  %.1119180.i.i = phi ptr [ %i.kd, %.lr.ph183.i.i ], [ %.1119180.i.i.unr, %.lr.ph183.i.i.prol.loopexit ] ; 3 uses
  %.1121179.i.i = phi ptr [ %i.kc, %.lr.ph183.i.i ], [ %.1121179.i.i.unr, %.lr.ph183.i.i.prol.loopexit ] ; 4 uses
  %i.jn = load float, ptr %.1121179.i.i, align 4, !tbaa !66
  %i.jo = load float, ptr %.1119180.i.i, align 4, !tbaa !66
  %i.jp = fsub fast float %i.jn, %i.jo
  %i.jq = call fast float @llvm.exp.f32(float %i.jp) ; 2 uses
  store float %i.jq, ptr %.1121179.i.i, align 4, !tbaa !66
  %i.jr = load float, ptr %.1117181.i.i, align 4, !tbaa !66
  %i.js = fadd fast float %i.jr, %i.jq
  store float %i.js, ptr %.1117181.i.i, align 4, !tbaa !66
  %i.jt = getelementptr inbounds nuw i8, ptr %.1121179.i.i, i64 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.1119180.i.i, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %.1117181.i.i, i64 4 ; 2 uses
  %i.jw = load float, ptr %i.jt, align 4, !tbaa !66
  %i.jx = load float, ptr %i.ju, align 4, !tbaa !66
  %i.jy = fsub fast float %i.jw, %i.jx
  %i.jz = call fast float @llvm.exp.f32(float %i.jy) ; 2 uses
  store float %i.jz, ptr %i.jt, align 4, !tbaa !66
  %i.ka = load float, ptr %i.jv, align 4, !tbaa !66
  %i.kb = fadd fast float %i.ka, %i.jz
  store float %i.kb, ptr %i.jv, align 4, !tbaa !66
  %i.kc = getelementptr inbounds nuw i8, ptr %.1121179.i.i, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %.1119180.i.i, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %.1117181.i.i, i64 8
  %i.kf = add nuw nsw i32 %.1115182.i.i, 2        ; 2 uses
  %exitcond231.not.i.i.1 = icmp eq i32 %i.kf, %i.aw
  br i1 %exitcond231.not.i.i.1, label %._crit_edge184.i.i, label %.lr.ph183.i.i, !llvm.loop !173

._crit_edge184.i.i:                               ; preds = %.lr.ph183.i.i.prol.loopexit, %.lr.ph183.i.i, %middle.block185, %.preheader156.i.i
  %indvars.iv.next233.i.i = add nuw nsw i64 %indvars.iv232.i.i, 1 ; 2 uses
  %exitcond236.not.i.i = icmp eq i64 %indvars.iv.next233.i.i, %wide.trip.count229.i.i
  br i1 %exitcond236.not.i.i, label %.preheader155.i.i, label %bb.e, !llvm.loop !8

.preheader154.loopexit.i.i.unr-lcssa:             ; preds = %.lr.ph189.i.i
  %i.kg = and i32 %i.gm, 4
  %lcmp.mod259.not.not = icmp eq i32 %i.kg, 0
  br i1 %lcmp.mod259.not.not, label %.lr.ph189.i.i.epil.preheader, label %.preheader154.loopexit.i.i

end_hunk_0
begin_hunk_1_@_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.9:bb.a
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph75.preheader.i, %.preheader.i
  %i.cq = icmp sgt i32 %i.az, 0                   ; 2 uses
  br i1 %i.cq, label %.lr.ph177.i.i, label %.preheader162.i.i

.lr.ph177.i.i:                                    ; preds = %._crit_edge.i
  %wide.trip.count236.i.i = zext nneg i32 %i.az to i64 ; 3 uses
  br i1 %i.ba, label %.lr.ph.us.preheader.i.i, label %.lr.ph177.split.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %.lr.ph177.i.i
  %i.cr = and i32 %i.aw, 2147483644               ; 4 uses
  %.not.i44 = icmp eq i32 %i.cr, %i.aw
  %i.cs = xor i32 %i.cr, -1
  %i.ct = add nsw i32 %i.aw, %i.cs                ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check175 = icmp ult i32 %i.ct, 7
  %n.vec177 = and i64 %i.cv, 8589934584           ; 5 uses
  %i.cw = shl nuw nsw i64 %n.vec177, 1
  %i.cx = shl nuw nsw i64 %n.vec177, 2
  %i.cy = trunc i64 %n.vec177 to i32
  %i.cz = add i32 %i.cr, %i.cy
  %cmp.n188 = icmp eq i64 %i.cv, %n.vec177
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph.us.preheader.i.i
  %indvars.iv233.i.i = phi i64 [ 0, %.lr.ph.us.preheader.i.i ], [ %indvars.iv.next234.i.i, %._crit_edge.us.i.i ] ; 2 uses
  %i.da = mul nuw nsw i64 %indvars.iv233.i.i, %i.ax
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.da
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.us.i.i
  %.0106168.us.i.i = phi ptr [ %i.db, %.lr.ph.us.i.i ], [ %i.dj, %bb.c ] ; 2 uses
  %.0108167.us.i.i = phi ptr [ %i.av, %.lr.ph.us.i.i ], [ %i.dk, %bb.c ] ; 3 uses
  %.0110166.us.i.i = phi i32 [ 0, %.lr.ph.us.i.i ], [ %i.dl, %bb.c ]
  %i.dc = load i64, ptr %.0106168.us.i.i, align 1, !tbaa !63
  %i.dd = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %i.de = bitcast <2 x i64> %i.dd to <8 x i16>
  %i.df = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.de, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dg = bitcast <8 x i16> %i.df to <4 x float>
  %i.dh = load <4 x float>, ptr %.0108167.us.i.i, align 1, !tbaa !63
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dg)
  store <4 x float> %i.di, ptr %.0108167.us.i.i, align 1, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %.0106168.us.i.i, i64 8 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0108167.us.i.i, i64 16 ; 4 uses
  %i.dl = add nuw nsw i32 %.0110166.us.i.i, 4     ; 2 uses
  %i.dm = or disjoint i32 %i.dl, 3
  %i.dn = icmp slt i32 %i.dm, %i.aw
  br i1 %i.dn, label %bb.c, label %..preheader165_crit_edge.us.i.i, !llvm.loop !16

.lr.ph174.us.i.i:                                 ; preds = %.lr.ph174.us.i.i.preheader206, %.lr.ph174.us.i.i
  %.1107173.us.i.i = phi ptr [ %i.du, %.lr.ph174.us.i.i ], [ %.1107173.us.i.i.ph, %.lr.ph174.us.i.i.preheader206 ] ; 2 uses
  %.1109172.us.i.i = phi ptr [ %i.dv, %.lr.ph174.us.i.i ], [ %.1109172.us.i.i.ph, %.lr.ph174.us.i.i.preheader206 ] ; 3 uses
  %.1111171.us.i.i = phi i32 [ %i.dw, %.lr.ph174.us.i.i ], [ %.1111171.us.i.i.ph, %.lr.ph174.us.i.i.preheader206 ]
  %i.do = load i16, ptr %.1107173.us.i.i, align 2, !tbaa !82
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl nuw i32 %i.dp, 16
  %i.dr = bitcast i32 %i.dq to float              ; 2 uses
  %i.ds = load float, ptr %.1109172.us.i.i, align 4, !tbaa !66 ; 2 uses
  %i.dt = fcmp fast olt float %i.ds, %i.dr
  %.sroa.speculated.us.i.i = select i1 %i.dt, float %i.dr, float %i.ds
  store float %.sroa.speculated.us.i.i, ptr %.1109172.us.i.i, align 4, !tbaa !66
  %i.du = getelementptr inbounds nuw i8, ptr %.1107173.us.i.i, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.1109172.us.i.i, i64 4
  %i.dw = add nuw nsw i32 %.1111171.us.i.i, 1     ; 2 uses
  %exitcond232.not.i.i = icmp eq i32 %i.dw, %i.aw
  br i1 %exitcond232.not.i.i, label %._crit_edge.us.i.i, label %.lr.ph174.us.i.i, !llvm.loop !272

._crit_edge.us.i.i:                               ; preds = %.lr.ph174.us.i.i, %middle.block187, %..preheader165_crit_edge.us.i.i
  %indvars.iv.next234.i.i = add nuw nsw i64 %indvars.iv233.i.i, 1 ; 2 uses
  %exitcond237.not.i.i = icmp eq i64 %indvars.iv.next234.i.i, %wide.trip.count236.i.i
  br i1 %exitcond237.not.i.i, label %.lr.ph193.i.i, label %.lr.ph.us.i.i, !llvm.loop !17

..preheader165_crit_edge.us.i.i:                  ; preds = %bb.c
  br i1 %.not.i44, label %._crit_edge.us.i.i, label %.lr.ph174.us.i.i.preheader

.lr.ph174.us.i.i.preheader:                       ; preds = %..preheader165_crit_edge.us.i.i
  br i1 %min.iters.check175, label %.lr.ph174.us.i.i.preheader206, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph174.us.i.i.preheader
  %i.dx = getelementptr i8, ptr %i.dj, i64 %i.cw
  %i.dy = getelementptr i8, ptr %i.dk, i64 %i.cx
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next186, %vector.body178 ] ; 3 uses
  %i.dz = shl i64 %index179, 1
  %next.gep180 = getelementptr i8, ptr %i.dj, i64 %i.dz ; 2 uses
  %i.ea = shl i64 %index179, 2
  %next.gep181 = getelementptr i8, ptr %i.dk, i64 %i.ea ; 3 uses
  %i.eb = getelementptr i8, ptr %next.gep180, i64 8
  %wide.load182 = load <4 x i16>, ptr %next.gep180, align 2, !tbaa !82
  %wide.load183 = load <4 x i16>, ptr %i.eb, align 2, !tbaa !82
  %i.ec = zext <4 x i16> %wide.load182 to <4 x i32>
  %i.ed = zext <4 x i16> %wide.load183 to <4 x i32>
  %i.ee = shl nuw <4 x i32> %i.ec, splat (i32 16)
  %i.ef = shl nuw <4 x i32> %i.ed, splat (i32 16)
  %i.eg = bitcast <4 x i32> %i.ee to <4 x float>  ; 2 uses
  %i.eh = bitcast <4 x i32> %i.ef to <4 x float>  ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep181, i64 16 ; 2 uses
  %wide.load184 = load <4 x float>, ptr %next.gep181, align 4, !tbaa !66 ; 2 uses
  %wide.load185 = load <4 x float>, ptr %i.ei, align 4, !tbaa !66 ; 2 uses
  %i.ej = fcmp fast olt <4 x float> %wide.load184, %i.eg
  %i.ek = fcmp fast olt <4 x float> %wide.load185, %i.eh
  %i.el = select <4 x i1> %i.ej, <4 x float> %i.eg, <4 x float> %wide.load184
  %i.em = select <4 x i1> %i.ek, <4 x float> %i.eh, <4 x float> %wide.load185
  store <4 x float> %i.el, ptr %next.gep181, align 4, !tbaa !66
  store <4 x float> %i.em, ptr %i.ei, align 4, !tbaa !66
  %index.next186 = add nuw i64 %index179, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.en, label %middle.block187, label %vector.body178, !llvm.loop !273

middle.block187:                                  ; preds = %vector.body178
  br i1 %cmp.n188, label %._crit_edge.us.i.i, label %.lr.ph174.us.i.i.preheader206

.lr.ph174.us.i.i.preheader206:                    ; preds = %.lr.ph174.us.i.i.preheader, %middle.block187
  %.1107173.us.i.i.ph = phi ptr [ %i.dj, %.lr.ph174.us.i.i.preheader ], [ %i.dx, %middle.block187 ]
  %.1109172.us.i.i.ph = phi ptr [ %i.dk, %.lr.ph174.us.i.i.preheader ], [ %i.dy, %middle.block187 ]
  %.1111171.us.i.i.ph = phi i32 [ %i.cr, %.lr.ph174.us.i.i.preheader ], [ %i.cz, %middle.block187 ]
  br label %.lr.ph174.us.i.i

.lr.ph177.split.i.i:                              ; preds = %.lr.ph177.i.i
  %i.eo = icmp sgt i32 %i.aw, 0
  br i1 %i.eo, label %.preheader165.i.i.preheader, label %.lr.ph193.i.i

.preheader165.i.i.preheader:                      ; preds = %.lr.ph177.split.i.i
  %exitcond.not.i47.i = icmp eq i32 %i.aw, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %exitcond.not.i47.i.1 = icmp eq i32 %i.aw, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.promoted = load float, ptr %i.av, align 4, !tbaa !66
  br label %.preheader165.i.i

.lr.ph193.i.i.loopexit208:                        ; preds = %._crit_edge.i48.i
  store float %.sroa.speculated.i46.i, ptr %i.av, align 4, !tbaa !66
  br label %.lr.ph193.i.i

.lr.ph193.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph193.i.i.loopexit208, %.lr.ph177.split.i.i
  %i.er = and i32 %i.aw, -4
  br label %bb.f

.preheader165.i.i:                                ; preds = %.preheader165.i.i.preheader, %._crit_edge.i48.i
  %i.es = phi float [ %.sroa.speculated.i46.i, %._crit_edge.i48.i ], [ %.promoted, %.preheader165.i.i.preheader ] ; 2 uses
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i49.i, %._crit_edge.i48.i ], [ 0, %.preheader165.i.i.preheader ] ; 2 uses
  %i.et = mul nuw nsw i64 %indvars.iv.i45.i, %i.ax
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.et ; 3 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !82
  %i.ew = zext i16 %i.ev to i32
  %i.ex = shl nuw i32 %i.ew, 16
  %i.ey = bitcast i32 %i.ex to float              ; 2 uses
  %i.ez = fcmp fast olt float %i.es, %i.ey
  %.sroa.speculated.i46.i = select i1 %i.ez, float %i.ey, float %i.es ; 2 uses
  br i1 %exitcond.not.i47.i, label %._crit_edge.i48.i, label %bb.d

bb.d:                                             ; preds = %.preheader165.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !82
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, 16
  %i.fe = bitcast i32 %i.fd to float              ; 2 uses
  %i.ff = load float, ptr %i.ep, align 4, !tbaa !66 ; 2 uses
  %i.fg = fcmp fast olt float %i.ff, %i.fe
  %.sroa.speculated.i46.i.1 = select i1 %i.fg, float %i.fe, float %i.ff
  store float %.sroa.speculated.i46.i.1, ptr %i.ep, align 4, !tbaa !66
  br i1 %exitcond.not.i47.i.1, label %._crit_edge.i48.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !82
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 16
  %i.fl = bitcast i32 %i.fk to float              ; 2 uses
  %i.fm = load float, ptr %i.eq, align 4, !tbaa !66 ; 2 uses
  %i.fn = fcmp fast olt float %i.fm, %i.fl
  %.sroa.speculated.i46.i.2 = select i1 %i.fn, float %i.fl, float %i.fm
  store float %.sroa.speculated.i46.i.2, ptr %i.eq, align 4, !tbaa !66
  br label %._crit_edge.i48.i

._crit_edge.i48.i:                                ; preds = %bb.e, %bb.d, %.preheader165.i.i
  %indvars.iv.next.i49.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond231.not.i.i = icmp eq i64 %indvars.iv.next.i49.i, %wide.trip.count236.i.i
  br i1 %exitcond231.not.i.i, label %.lr.ph193.i.i.loopexit208, label %.preheader165.i.i, !llvm.loop !17

.preheader162.i.i:                                ; preds = %._crit_edge191.i.i, %._crit_edge.i
  br i1 %i.ba, label %.lr.ph196.i.i.preheader, label %.preheader161.i.i

.lr.ph196.i.i.preheader:                          ; preds = %.preheader162.i.i
  %i.fo = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.fp = lshr i32 %i.fo, 2                       ; 2 uses
  %i.fq = add nuw nsw i32 %i.fp, 1                ; 2 uses
  %i.fr = icmp eq i32 %i.fp, 0
  br i1 %i.fr, label %.lr.ph196.i.i.epil.preheader, label %.lr.ph196.i.i.preheader.new

.lr.ph196.i.i.preheader.new:                      ; preds = %.lr.ph196.i.i.preheader
  %unroll_iter228 = and i32 %i.fq, 2147483646
  br label %.lr.ph196.i.i

bb.f:                                             ; preds = %._crit_edge191.i.i, %.lr.ph193.i.i
  %indvars.iv239.i.i = phi i64 [ 0, %.lr.ph193.i.i ], [ %indvars.iv.next240.i.i, %._crit_edge191.i.i ] ; 2 uses
  %i.fs = mul i64 %indvars.iv239.i.i, %i.ax
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.fs ; 2 uses
  br i1 %i.ba, label %.lr.ph.i43.i, label %.preheader163.i.i

.preheader163.i.i:                                ; preds = %.lr.ph.i43.i, %bb.f
  %.0118.lcssa.i.i = phi ptr [ %i.ft, %bb.f ], [ %i.jh, %.lr.ph.i43.i ] ; 4 uses
  %.0116.lcssa.i.i = phi ptr [ %i.av, %bb.f ], [ %i.ji, %.lr.ph.i43.i ] ; 6 uses
  %.0114.lcssa.i.i = phi ptr [ %i.ay, %bb.f ], [ %i.jj, %.lr.ph.i43.i ] ; 6 uses
  %.0112.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.er, %.lr.ph.i43.i ] ; 6 uses
  %i.fu = icmp slt i32 %.0112.lcssa.i.i, %i.aw
  br i1 %i.fu, label %.lr.ph190.i.i.preheader, label %._crit_edge191.i.i

.lr.ph190.i.i.preheader:                          ; preds = %.preheader163.i.i
  %i.fv = xor i32 %.0112.lcssa.i.i, -1
  %i.fw = add i32 %i.aw, %i.fv                    ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check156 = icmp ult i32 %i.fw, 3
  br i1 %min.iters.check156, label %.lr.ph190.i.i.preheader205, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph190.i.i.preheader
  %scevgep = getelementptr i8, ptr %.0114.lcssa.i.i, i64 4
  %i.fz = xor i32 %.0112.lcssa.i.i, -1
  %i.ga = add i32 %i.aw, %i.fz
  %i.gb = zext i32 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 2                ; 2 uses
  %scevgep152 = getelementptr i8, ptr %scevgep, i64 %i.gc
  %scevgep153 = getelementptr i8, ptr %.0116.lcssa.i.i, i64 4
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.gc
  %bound0 = icmp ult ptr %.0114.lcssa.i.i, %scevgep154
  %bound1 = icmp ult ptr %.0116.lcssa.i.i, %scevgep152
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph190.i.i.preheader205, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck
  %n.vec158 = and i64 %i.fy, 8589934588           ; 5 uses
  %i.gd = trunc i64 %n.vec158 to i32
  %i.ge = add i32 %.0112.lcssa.i.i, %i.gd
  %i.gf = shl nuw nsw i64 %n.vec158, 2            ; 2 uses
  %i.gg = getelementptr i8, ptr %.0114.lcssa.i.i, i64 %i.gf
  %i.gh = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.gf
  %i.gi = shl nuw nsw i64 %n.vec158, 1
  %i.gj = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.gi
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next167, %vector.body159 ] ; 3 uses
  %i.gk = shl i64 %index160, 2                    ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.0114.lcssa.i.i, i64 %i.gk ; 2 uses
  %next.gep162 = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.gk
  %i.gl = shl i64 %index160, 1
  %next.gep163 = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.gl ; 2 uses
  %wide.load164 = load <4 x i16>, ptr %next.gep163, align 2, !tbaa !82
  %i.gm = zext <4 x i16> %wide.load164 to <4 x i32>
  %i.gn = shl nuw <4 x i32> %i.gm, splat (i32 16)
  %i.go = bitcast <4 x i32> %i.gn to <4 x float>
  %wide.load165 = load <4 x float>, ptr %next.gep162, align 4, !tbaa !66, !alias.scope !286
  %i.gp = fsub fast <4 x float> %i.go, %wide.load165
  %i.gq = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gp) ; 2 uses
  %i.gr = bitcast <4 x float> %i.gq to <4 x i32>
  %i.gs = lshr <4 x i32> %i.gr, splat (i32 16)
  %i.gt = trunc nuw nsw <4 x i32> %i.gs to <4 x i16>
  store <4 x i16> %i.gt, ptr %next.gep163, align 2, !tbaa !82
  %wide.load166 = load <4 x float>, ptr %next.gep161, align 4, !tbaa !66, !alias.scope !287, !noalias !286
  %i.gu = fadd fast <4 x float> %i.gq, %wide.load166
  store <4 x float> %i.gu, ptr %next.gep161, align 4, !tbaa !66, !alias.scope !287, !noalias !286
  %index.next167 = add nuw i64 %index160, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next167, %n.vec158
  br i1 %i.gv, label %middle.block168, label %vector.body159, !llvm.loop !277

middle.block168:                                  ; preds = %vector.body159
  %cmp.n169 = icmp eq i64 %i.fy, %n.vec158
  br i1 %cmp.n169, label %._crit_edge191.i.i, label %.lr.ph190.i.i.preheader205

.lr.ph190.i.i.preheader205:                       ; preds = %vector.memcheck, %.lr.ph190.i.i.preheader, %middle.block168
  %.1113189.i.i.ph = phi i32 [ %.0112.lcssa.i.i, %vector.memcheck ], [ %.0112.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.ge, %middle.block168 ] ; 4 uses
  %.1115188.i.i.ph = phi ptr [ %.0114.lcssa.i.i, %vector.memcheck ], [ %.0114.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gg, %middle.block168 ] ; 4 uses
  %.1117187.i.i.ph = phi ptr [ %.0116.lcssa.i.i, %vector.memcheck ], [ %.0116.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gh, %middle.block168 ] ; 3 uses
  %.1119186.i.i.ph = phi ptr [ %.0118.lcssa.i.i, %vector.memcheck ], [ %.0118.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gj, %middle.block168 ] ; 4 uses
  %i.gw = sub i32 %i.aw, %.1113189.i.i.ph
  %.neg = add i32 %.1113189.i.i.ph, 1
  %xtraiter221 = and i32 %i.gw, 1
  %lcmp.mod222.not = icmp eq i32 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.lr.ph190.i.i.prol.loopexit, label %.lr.ph190.i.i.prol

.lr.ph190.i.i.prol:                               ; preds = %.lr.ph190.i.i.preheader205
  %i.gx = load i16, ptr %.1119186.i.i.ph, align 2, !tbaa !82
  %i.gy = zext i16 %i.gx to i32
  %i.gz = shl nuw i32 %i.gy, 16
  %i.ha = bitcast i32 %i.gz to float
  %i.hb = load float, ptr %.1117187.i.i.ph, align 4, !tbaa !66
  %i.hc = fsub fast float %i.ha, %i.hb
  %i.hd = call fast float @llvm.exp.f32(float %i.hc) ; 2 uses
  %i.he = bitcast float %i.hd to i32
  %i.hf = lshr i32 %i.he, 16
  %i.hg = trunc nuw nsw i32 %i.hf to i16
  store i16 %i.hg, ptr %.1119186.i.i.ph, align 2, !tbaa !82
  %i.hh = load float, ptr %.1115188.i.i.ph, align 4, !tbaa !66
  %i.hi = fadd fast float %i.hd, %i.hh
  store float %i.hi, ptr %.1115188.i.i.ph, align 4, !tbaa !66
  %i.hj = getelementptr inbounds nuw i8, ptr %.1119186.i.i.ph, i64 2
  %i.hk = getelementptr inbounds nuw i8, ptr %.1117187.i.i.ph, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %.1115188.i.i.ph, i64 4
  %i.hm = add nuw nsw i32 %.1113189.i.i.ph, 1
  br label %.lr.ph190.i.i.prol.loopexit

.lr.ph190.i.i.prol.loopexit:                      ; preds = %.lr.ph190.i.i.prol, %.lr.ph190.i.i.preheader205
  %.1113189.i.i.unr = phi i32 [ %.1113189.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hm, %.lr.ph190.i.i.prol ]
  %.1115188.i.i.unr = phi ptr [ %.1115188.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hl, %.lr.ph190.i.i.prol ]
  %.1117187.i.i.unr = phi ptr [ %.1117187.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hk, %.lr.ph190.i.i.prol ]
  %.1119186.i.i.unr = phi ptr [ %.1119186.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hj, %.lr.ph190.i.i.prol ]
  %i.hn = icmp eq i32 %i.aw, %.neg
  br i1 %i.hn, label %._crit_edge191.i.i, label %.lr.ph190.i.i

.lr.ph.i43.i:                                     ; preds = %bb.f, %.lr.ph.i43.i
  %.0112181.i.i = phi i32 [ %i.jk, %.lr.ph.i43.i ], [ 0, %bb.f ]
  %.0114180.i.i = phi ptr [ %i.jj, %.lr.ph.i43.i ], [ %i.ay, %bb.f ] ; 3 uses
  %.0116179.i.i = phi ptr [ %i.ji, %.lr.ph.i43.i ], [ %i.av, %bb.f ] ; 2 uses
  %.0118178.i.i = phi ptr [ %i.jh, %.lr.ph.i43.i ], [ %i.ft, %bb.f ] ; 3 uses
  %i.ho = load i64, ptr %.0118178.i.i, align 1, !tbaa !63
  %i.hp = insertelement <2 x i64> poison, i64 %i.ho, i64 0
  %i.hq = bitcast <2 x i64> %i.hp to <8 x i16>
  %i.hr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hs = bitcast <8 x i16> %i.hr to <4 x float>
  %i.ht = load <4 x float>, ptr %.0116179.i.i, align 1, !tbaa !63
  %i.hu = load <4 x float>, ptr %.0114180.i.i, align 1, !tbaa !63
  %i.hv = fsub fast <4 x float> %i.hs, %i.ht
  %i.hw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hv, <4 x float> splat (float f0x42B0C0A5))
  %i.hx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hy = fmul fast <4 x float> %i.hx, splat (float f0x3FB8AA3B)
  %i.hz = fadd fast <4 x float> %i.hy, splat (float 5.000000e-01) ; 2 uses
  %i.ia = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hz)
  %i.ib = sitofp fast <4 x i32> %i.ia to <4 x float> ; 2 uses
  %i.ic = fcmp fast olt <4 x float> %i.hz, %i.ib
  %i.id = select <4 x i1> %i.ic, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ie = fsub fast <4 x float> %i.ib, %i.id      ; 2 uses
  %i.if = fmul fast <4 x float> %i.ie, splat (float f0x3F317218)
  %i.ig = fsub fast <4 x float> %i.hx, %i.if      ; 8 uses
  %i.ih = fmul fast <4 x float> %i.ig, %i.ig
  %i.ii = fmul fast <4 x float> %i.ig, splat (float f0x39506967)
  %i.ij = fadd fast <4 x float> %i.ii, splat (float f0x3AB743CE)
  %i.ik = fmul fast <4 x float> %i.ij, %i.ig
  %i.il = fadd fast <4 x float> %i.ik, splat (float f0x3C088908)
  %i.im = fmul fast <4 x float> %i.il, %i.ig
  %i.in = fadd fast <4 x float> %i.im, splat (float f0x3D2AA9C1)
  %i.io = fmul fast <4 x float> %i.in, %i.ig
  %i.ip = fadd fast <4 x float> %i.io, splat (float f0x3E2AAAAA)
  %i.iq = fmul fast <4 x float> %i.ip, %i.ig
  %i.ir = fadd fast <4 x float> %i.iq, splat (float 5.000000e-01)
  %i.is = fmul fast <4 x float> %i.ih, %i.ir
  %i.it = fadd fast <4 x float> %i.ig, splat (float 1.000000e+00)
  %i.iu = fadd fast <4 x float> %i.it, %i.is
  %i.iv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ie)
  %i.iw = shl <4 x i32> %i.iv, splat (i32 23)
  %i.ix = add <4 x i32> %i.iw, splat (i32 1065353216)
  %i.iy = bitcast <4 x i32> %i.ix to <4 x float>
  %i.iz = fmul fast <4 x float> %i.iu, %i.iy      ; 2 uses
  %i.ja = bitcast <4 x float> %i.iz to <8 x i16>
  %i.jb = shufflevector <8 x i16> %i.ja, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jc = bitcast <8 x i16> %i.jb to <4 x float>
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.je = bitcast <4 x float> %i.jd to <2 x i64>
  %i.jf = extractelement <2 x i64> %i.je, i64 0
  store i64 %i.jf, ptr %.0118178.i.i, align 1, !tbaa !63
  %i.jg = fadd fast <4 x float> %i.iz, %i.hu
  store <4 x float> %i.jg, ptr %.0114180.i.i, align 1, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %.0118178.i.i, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0116179.i.i, i64 16 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0114180.i.i, i64 16 ; 2 uses
  %i.jk = add nuw nsw i32 %.0112181.i.i, 4        ; 2 uses
  %i.jl = or disjoint i32 %i.jk, 3
  %i.jm = icmp slt i32 %i.jl, %i.aw
  br i1 %i.jm, label %.lr.ph.i43.i, label %.preheader163.i.i, !llvm.loop !18

.lr.ph190.i.i:                                    ; preds = %.lr.ph190.i.i.prol.loopexit, %.lr.ph190.i.i
  %.1113189.i.i = phi i32 [ %i.kr, %.lr.ph190.i.i ], [ %.1113189.i.i.unr, %.lr.ph190.i.i.prol.loopexit ]
  %.1115188.i.i = phi ptr [ %i.kq, %.lr.ph190.i.i ], [ %.1115188.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 4 uses
  %.1117187.i.i = phi ptr [ %i.kp, %.lr.ph190.i.i ], [ %.1117187.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 3 uses
  %.1119186.i.i = phi ptr [ %i.ko, %.lr.ph190.i.i ], [ %.1119186.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 4 uses
  %i.jn = load i16, ptr %.1119186.i.i, align 2, !tbaa !82
  %i.jo = zext i16 %i.jn to i32
  %i.jp = shl nuw i32 %i.jo, 16
  %i.jq = bitcast i32 %i.jp to float
  %i.jr = load float, ptr %.1117187.i.i, align 4, !tbaa !66
  %i.js = fsub fast float %i.jq, %i.jr
  %i.jt = call fast float @llvm.exp.f32(float %i.js) ; 2 uses
  %i.ju = bitcast float %i.jt to i32
  %i.jv = lshr i32 %i.ju, 16
  %i.jw = trunc nuw nsw i32 %i.jv to i16
  store i16 %i.jw, ptr %.1119186.i.i, align 2, !tbaa !82
  %i.jx = load float, ptr %.1115188.i.i, align 4, !tbaa !66
  %i.jy = fadd fast float %i.jt, %i.jx
  store float %i.jy, ptr %.1115188.i.i, align 4, !tbaa !66
  %i.jz = getelementptr inbounds nuw i8, ptr %.1119186.i.i, i64 2 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.1117187.i.i, i64 4
  %i.kb = getelementptr inbounds nuw i8, ptr %.1115188.i.i, i64 4 ; 2 uses
  %i.kc = load i16, ptr %i.jz, align 2, !tbaa !82
  %i.kd = zext i16 %i.kc to i32
  %i.ke = shl nuw i32 %i.kd, 16
  %i.kf = bitcast i32 %i.ke to float
  %i.kg = load float, ptr %i.ka, align 4, !tbaa !66
end_hunk_1
