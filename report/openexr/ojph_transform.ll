Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local16gen_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %.09298.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader241, %.lr.ph
  %.179101 = phi ptr [ %i.aq, %.lr.ph ], [ %.179101.ph, %.lr.ph.preheader241 ] ; 2 uses
  %.189100 = phi i32 [ %i.ar, %.lr.ph ], [ %.189100.ph, %.lr.ph.preheader241 ]
  %.19199 = phi ptr [ %i.ao, %.lr.ph ], [ %.19199.ph, %.lr.ph.preheader241 ] ; 3 uses
  %.09298 = phi ptr [ %i.an, %.lr.ph ], [ %.09298.ph, %.lr.ph.preheader241 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.19199, i64 4
  %i.am = load float, ptr %.19199, align 4, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %.09298, i64 4 ; 2 uses
  store float %i.am, ptr %.09298, align 4, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %.19199, i64 8 ; 2 uses
  %i.ap = load float, ptr %i.al, align 4, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %.179101, i64 4
  store float %i.ap, ptr %.179101, align 4, !tbaa !25
  %i.ar = add i32 %.189100, -2                    ; 3 uses
  %i.as = icmp ugt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !322

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa156 = phi ptr [ %i.ah, %middle.block ], [ %i.an, %.lr.ph ]
  %.lcssa155 = phi ptr [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph ]
  %.lcssa = phi i32 [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph ]
  %i.at = icmp eq i32 %.lcssa, 0
  br i1 %i.at, label %bb.d, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.191.lcssa149 = phi ptr [ %.lcssa155, %._crit_edge ], [ %i.h, %bb.c ]
  %.092.lcssa148 = phi ptr [ %.lcssa156, %._crit_edge ], [ %i.e, %bb.c ]
  %i.au = load float, ptr %.191.lcssa149, align 4, !tbaa !25
  store float %i.au, ptr %.092.lcssa148, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.ax = zext i1 %5 to i32
  %i.ay = add i32 %4, %i.ax
  %i.az = lshr i32 %i.ay, 1                       ; 2 uses
  %not. = xor i1 %5, true
  %i.ba = zext i1 %not. to i32
  %i.bb = add i32 %4, %i.ba
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !22  ; 2 uses
  %.not94111 = icmp eq i8 %i.be, 0
  br i1 %.not94111, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.bh = zext i8 %i.be to i64
  br label %bb.e

._crit_edge120:                                   ; preds = %._crit_edge110, %bb.d
  %.087.lcssa = phi ptr [ %i.av, %bb.d ], [ %.086113, %._crit_edge110 ] ; 3 uses
  %.086.lcssa = phi ptr [ %i.aw, %bb.d ], [ %.087112, %._crit_edge110 ] ; 3 uses
  %.085.lcssa = phi i32 [ %i.az, %bb.d ], [ %.084115, %._crit_edge110 ] ; 5 uses
  %.084.lcssa = phi i32 [ %i.bc, %bb.d ], [ %.085114, %._crit_edge110 ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !26 ; 3 uses
  %i.bk = fdiv float 1.000000e+00, %i.bj          ; 2 uses
  %.not95125 = icmp eq i32 %.085.lcssa, 0
  br i1 %.not95125, label %.preheader, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %._crit_edge120
  %i.bl = zext nneg i32 %.085.lcssa to i64        ; 2 uses
  %min.iters.check207 = icmp ult i32 %.085.lcssa, 8
  br i1 %min.iters.check207, label %.lr.ph129.preheader239, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph129.preheader
  %n.vec209 = and i64 %i.bl, 2147483640           ; 4 uses
  %i.bm = trunc nuw nsw i64 %n.vec209 to i32
  %i.bn = sub i32 %.085.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec209, 2
  %i.bp = getelementptr i8, ptr %.086.lcssa, i64 %i.bo
  %broadcast.splatinsert210 = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat211 = shufflevector <4 x float> %broadcast.splatinsert210, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph208
  %index213 = phi i64 [ 0, %vector.ph208 ], [ %index.next217, %vector.body212 ] ; 2 uses
  %i.bq = shl i64 %index213, 2
  %next.gep214 = getelementptr i8, ptr %.086.lcssa, i64 %i.bq ; 3 uses
  %i.br = getelementptr i8, ptr %next.gep214, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %next.gep214, align 4, !tbaa !25
  %wide.load216 = load <4 x float>, ptr %i.br, align 4, !tbaa !25
  %i.bs = fmul <4 x float> %broadcast.splat211, %wide.load215
  %i.bt = fmul <4 x float> %broadcast.splat211, %wide.load216
  store <4 x float> %i.bs, ptr %next.gep214, align 4, !tbaa !25
  store <4 x float> %i.bt, ptr %i.br, align 4, !tbaa !25
  %index.next217 = add nuw i64 %index213, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next217, %n.vec209
  br i1 %i.bu, label %middle.block218, label %vector.body212, !llvm.loop !323

middle.block218:                                  ; preds = %vector.body212
  %cmp.n219 = icmp eq i64 %n.vec209, %i.bl
  br i1 %cmp.n219, label %.preheader, label %.lr.ph129.preheader239

.lr.ph129.preheader239:                           ; preds = %.lr.ph129.preheader, %middle.block218
  %.075127.ph = phi i32 [ %.085.lcssa, %.lr.ph129.preheader ], [ %i.bn, %middle.block218 ]
  %.076126.ph = phi ptr [ %.086.lcssa, %.lr.ph129.preheader ], [ %i.bp, %middle.block218 ]
  br label %.lr.ph129

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge110
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph119 ], [ %i.bw, %._crit_edge110 ]
  %.077.in117 = phi i1 [ %5, %.lr.ph119 ], [ %i.dk, %._crit_edge110 ] ; 3 uses
  %.084115 = phi i32 [ %i.bc, %.lr.ph119 ], [ %.085114, %._crit_edge110 ] ; 9 uses
  %.085114 = phi i32 [ %i.az, %.lr.ph119 ], [ %.084115, %._crit_edge110 ] ; 4 uses
  %.086113 = phi ptr [ %i.aw, %.lr.ph119 ], [ %.087112, %._crit_edge110 ] ; 10 uses
  %.087112 = phi ptr [ %i.av, %.lr.ph119 ], [ %.086113, %._crit_edge110 ] ; 9 uses
  %i.bv = select i1 %.077.in117, i64 4, i64 0     ; 2 uses
  %i.bw = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !12 ; 4 uses
  %i.bz = load float, ptr %.086113, align 4, !tbaa !25
  %i.ca = getelementptr inbounds i8, ptr %.086113, i64 -4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !25
  %i.cb = add nsw i32 %.085114, -1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.086113, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !25
  %i.cf = zext nneg i32 %.085114 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.086113, i64 %i.cf
  store float %i.ce, ptr %i.cg, align 4, !tbaa !25
  %.not97104 = icmp eq i32 %.084115, 0
  br i1 %.not97104, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %bb.e
  %i.ch = zext i1 %.077.in117 to i64
  %i.ci = getelementptr [4 x i8], ptr %.086113, i64 %i.ch ; 5 uses
  %i.cj = zext nneg i32 %.084115 to i64           ; 2 uses
  %min.iters.check188 = icmp samesign ult i32 %.084115, 8
  br i1 %min.iters.check188, label %.lr.ph109.preheader240, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph109.preheader
  %scevgep173 = getelementptr i8, ptr %.087112, i64 4
  %i.ck = add nsw i32 %.084115, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2                ; 2 uses
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.cm ; 2 uses
  %scevgep175 = getelementptr i8, ptr %.086113, i64 -4
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.bv
  %i.cn = add nuw nsw i64 %i.bv, %i.cm            ; 2 uses
  %scevgep177 = getelementptr i8, ptr %.086113, i64 %i.cn
  %scevgep178 = getelementptr i8, ptr %.086113, i64 4
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.cn
  %bound0180 = icmp ult ptr %.087112, %scevgep177
  %bound1181 = icmp ult ptr %scevgep176, %scevgep174
  %found.conflict182 = and i1 %bound0180, %bound1181
  %bound0183 = icmp ult ptr %.087112, %scevgep179
  %bound1184 = icmp ult ptr %i.ci, %scevgep174
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %found.conflict182, %found.conflict185
  br i1 %conflict.rdx186, label %.lr.ph109.preheader240, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck172
  %n.vec190 = and i64 %i.cj, 2147483640           ; 4 uses
  %i.co = trunc nuw nsw i64 %n.vec190 to i32
  %i.cp = sub nsw i32 %.084115, %i.co
  %i.cq = shl nuw nsw i64 %n.vec190, 2            ; 2 uses
  %i.cr = getelementptr i8, ptr %.087112, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.ci, i64 %i.cq
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next200, %vector.body191 ] ; 2 uses
  %i.ct = shl i64 %index192, 2                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %.087112, i64 %i.ct ; 3 uses
  %next.gep194 = getelementptr i8, ptr %i.ci, i64 %i.ct ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep194, i64 -4
  %i.cv = getelementptr inbounds nuw i8, ptr %next.gep194, i64 12
  %wide.load = load <4 x float>, ptr %i.cu, align 4, !tbaa !25, !alias.scope !338
  %wide.load195 = load <4 x float>, ptr %i.cv, align 4, !tbaa !25, !alias.scope !338
  %i.cw = getelementptr i8, ptr %next.gep194, i64 16
  %wide.load196 = load <4 x float>, ptr %next.gep194, align 4, !tbaa !25, !alias.scope !339
  %wide.load197 = load <4 x float>, ptr %i.cw, align 4, !tbaa !25, !alias.scope !339
  %i.cx = fadd <4 x float> %wide.load, %wide.load196
  %i.cy = fadd <4 x float> %wide.load195, %wide.load197
  %i.cz = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load198 = load <4 x float>, ptr %next.gep193, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  %wide.load199 = load <4 x float>, ptr %i.cz, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cx, <4 x float> %wide.load198)
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cy, <4 x float> %wide.load199)
  store <4 x float> %i.da, ptr %next.gep193, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  store <4 x float> %i.db, ptr %i.cz, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  %index.next200 = add nuw i64 %index192, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next200, %n.vec190
  br i1 %i.dc, label %middle.block201, label %vector.body191, !llvm.loop !328

middle.block201:                                  ; preds = %vector.body191
  %cmp.n202 = icmp eq i64 %n.vec190, %i.cj
  br i1 %cmp.n202, label %._crit_edge110, label %.lr.ph109.preheader240

.lr.ph109.preheader240:                           ; preds = %vector.memcheck172, %.lr.ph109.preheader, %middle.block201
  %.080107.ph = phi i32 [ %.084115, %vector.memcheck172 ], [ %.084115, %.lr.ph109.preheader ], [ %i.cp, %middle.block201 ] ; 4 uses
  %.081106.ph = phi ptr [ %.087112, %vector.memcheck172 ], [ %.087112, %.lr.ph109.preheader ], [ %i.cr, %middle.block201 ] ; 4 uses
  %.082105.ph = phi ptr [ %i.ci, %vector.memcheck172 ], [ %i.ci, %.lr.ph109.preheader ], [ %i.cs, %middle.block201 ] ; 4 uses
  %xtraiter = and i32 %.080107.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader240
  %i.dd = getelementptr inbounds i8, ptr %.082105.ph, i64 -4
  %6 = load float, ptr %i.dd, align 4, !tbaa !25
  %7 = load float, ptr %.082105.ph, align 4, !tbaa !25
  %8 = fadd float %6, %7
  %i.de = load float, ptr %.081106.ph, align 4, !tbaa !25
  %i.df = tail call float @llvm.fmuladd.f32(float %i.by, float %8, float %i.de)
  store float %i.df, ptr %.081106.ph, align 4, !tbaa !25
  %i.dg = add nsw i32 %.080107.ph, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %.082105.ph, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.081106.ph, i64 4
  br label %.lr.ph109.prol.loopexit

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader240
  %.080107.unr = phi i32 [ %.080107.ph, %.lr.ph109.preheader240 ], [ %i.dg, %.lr.ph109.prol ]
  %.081106.unr = phi ptr [ %.081106.ph, %.lr.ph109.preheader240 ], [ %i.di, %.lr.ph109.prol ]
  %.082105.unr = phi ptr [ %.082105.ph, %.lr.ph109.preheader240 ], [ %i.dh, %.lr.ph109.prol ]
  %i.dj = icmp eq i32 %.080107.ph, 1
  br i1 %i.dj, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block201, %bb.e
  %i.dk = xor i1 %.077.in117, true
  %.not94.wide = icmp eq i64 %i.bw, 0
  br i1 %.not94.wide, label %._crit_edge120, label %bb.e, !llvm.loop !329

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.080107 = phi i32 [ %i.dr, %.lr.ph109 ], [ %.080107.unr, %.lr.ph109.prol.loopexit ]
  %.081106 = phi ptr [ %i.dt, %.lr.ph109 ], [ %.081106.unr, %.lr.ph109.prol.loopexit ] ; 4 uses
  %.082105 = phi ptr [ %i.ds, %.lr.ph109 ], [ %.082105.unr, %.lr.ph109.prol.loopexit ] ; 5 uses
  %i.dl = getelementptr inbounds i8, ptr %.082105, i64 -4
  %9 = load float, ptr %i.dl, align 4, !tbaa !25
  %10 = load float, ptr %.082105, align 4, !tbaa !25
  %11 = fadd float %9, %10
  %i.dm = load float, ptr %.081106, align 4, !tbaa !25
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.by, float %11, float %i.dm)
  store float %i.dn, ptr %.081106, align 4, !tbaa !25
  %12 = getelementptr inbounds nuw i8, ptr %.082105, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %.081106, i64 4 ; 2 uses
  %13 = load float, ptr %.082105, align 4, !tbaa !25
  %14 = load float, ptr %12, align 4, !tbaa !25
  %15 = fadd float %13, %14
  %i.dp = load float, ptr %i.do, align 4, !tbaa !25
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.by, float %15, float %i.dp)
  store float %i.dq, ptr %i.do, align 4, !tbaa !25
  %i.dr = add nsw i32 %.080107, -2                ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.082105, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.081106, i64 8
  %.not97.1 = icmp eq i32 %i.dr, 0
  br i1 %.not97.1, label %._crit_edge110, label %.lr.ph109, !llvm.loop !330

.preheader:                                       ; preds = %.lr.ph129, %middle.block218, %._crit_edge120
  %.not96130 = icmp eq i32 %.084.lcssa, 0
  br i1 %.not96130, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %.preheader
  %i.du = zext nneg i32 %.084.lcssa to i64        ; 2 uses
  %min.iters.check223 = icmp ult i32 %.084.lcssa, 8
  br i1 %min.iters.check223, label %.lr.ph133.preheader238, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph133.preheader
  %n.vec225 = and i64 %i.du, 2147483640           ; 4 uses
  %i.dv = trunc nuw nsw i64 %n.vec225 to i32
  %i.dw = sub i32 %.084.lcssa, %i.dv
  %i.dx = shl nuw nsw i64 %n.vec225, 2
  %i.dy = getelementptr i8, ptr %.087.lcssa, i64 %i.dx
  %broadcast.splatinsert226 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat227 = shufflevector <4 x float> %broadcast.splatinsert226, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph224
  %index229 = phi i64 [ 0, %vector.ph224 ], [ %index.next233, %vector.body228 ] ; 2 uses
  %i.dz = shl i64 %index229, 2
  %next.gep230 = getelementptr i8, ptr %.087.lcssa, i64 %i.dz ; 3 uses
  %i.ea = getelementptr i8, ptr %next.gep230, i64 16 ; 2 uses
  %wide.load231 = load <4 x float>, ptr %next.gep230, align 4, !tbaa !25
  %wide.load232 = load <4 x float>, ptr %i.ea, align 4, !tbaa !25
  %i.eb = fmul <4 x float> %broadcast.splat227, %wide.load231
  %i.ec = fmul <4 x float> %broadcast.splat227, %wide.load232
  store <4 x float> %i.eb, ptr %next.gep230, align 4, !tbaa !25
  store <4 x float> %i.ec, ptr %i.ea, align 4, !tbaa !25
  %index.next233 = add nuw i64 %index229, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next233, %n.vec225
  br i1 %i.ed, label %middle.block234, label %vector.body228, !llvm.loop !331

middle.block234:                                  ; preds = %vector.body228
  %cmp.n235 = icmp eq i64 %n.vec225, %i.du
  br i1 %cmp.n235, label %.loopexit, label %.lr.ph133.preheader238

.lr.ph133.preheader238:                           ; preds = %.lr.ph133.preheader, %middle.block234
  %.0132.ph = phi i32 [ %.084.lcssa, %.lr.ph133.preheader ], [ %i.dw, %middle.block234 ]
  %.1131.ph = phi ptr [ %.087.lcssa, %.lr.ph133.preheader ], [ %i.dy, %middle.block234 ]
  br label %.lr.ph133

.lr.ph129:                                        ; preds = %.lr.ph129.preheader239, %.lr.ph129
  %.075127 = phi i32 [ %i.eh, %.lr.ph129 ], [ %.075127.ph, %.lr.ph129.preheader239 ]
  %.076126 = phi ptr [ %i.ee, %.lr.ph129 ], [ %.076126.ph, %.lr.ph129.preheader239 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.076126, i64 4
  %i.ef = load float, ptr %.076126, align 4, !tbaa !25
  %i.eg = fmul float %i.bk, %i.ef
  store float %i.eg, ptr %.076126, align 4, !tbaa !25
  %i.eh = add nsw i32 %.075127, -1                ; 2 uses
  %.not95 = icmp eq i32 %i.eh, 0
  br i1 %.not95, label %.preheader, label %.lr.ph129, !llvm.loop !332

.lr.ph133:                                        ; preds = %.lr.ph133.preheader238, %.lr.ph133
  %.0132 = phi i32 [ %i.el, %.lr.ph133 ], [ %.0132.ph, %.lr.ph133.preheader238 ]
  %.1131 = phi ptr [ %i.ei, %.lr.ph133 ], [ %.1131.ph, %.lr.ph133.preheader238 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1131, i64 4
  %i.ej = load float, ptr %.1131, align 4, !tbaa !25
  %i.ek = fmul float %i.bj, %i.ej
  store float %i.ek, ptr %.1131, align 4, !tbaa !25
  %i.el = add nsw i32 %.0132, -1                  ; 2 uses
  %.not96 = icmp eq i32 %i.el, 0
  br i1 %.not96, label %.loopexit, label %.lr.ph133, !llvm.loop !333

.loopexit.sink.split:                             ; preds = %bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !12
  %i.eo = load float, ptr %i.en, align 4, !tbaa !25 ; 2 uses
  %i.ep = fmul float %i.eo, 2.000000e+00
  %.sink154 = select i1 %5, ptr %1, ptr %2
  %.sink = select i1 %5, float %i.eo, float %i.ep
  %i.eq = getelementptr inbounds nuw i8, ptr %.sink154, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !12
  store float %.sink, ptr %i.er, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph133, %middle.block234, %.loopexit.sink.split, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16gen_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 4 uses
  %i.f = zext i1 %5 to i32
  %i.g = add i32 %4, %i.f                         ; 2 uses
  %i.h = lshr i32 %i.g, 1                         ; 5 uses
  %not. = xor i1 %5, true                         ; 2 uses
  %i.i = zext i1 %not. to i32
  %i.j = add i32 %4, %i.i                         ; 2 uses
  %i.k = lshr i32 %i.j, 1                         ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !26 ; 3 uses
  %i.n = fdiv float 1.000000e+00, %i.m            ; 2 uses
  %.not98 = icmp eq i32 %i.h, 0
  br i1 %.not98, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = zext nneg i32 %i.h to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.g, 16
  br i1 %min.iters.check, label %.lr.ph.preheader233, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.o, 2147483640               ; 4 uses
  %i.p = trunc nuw nsw i64 %n.vec to i32
  %i.q = sub nsw i32 %i.h, %i.p
  %i.r = shl nuw nsw i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %i.e, i64 %i.r
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.m, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.t ; 3 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !25
  %wide.load146 = load <4 x float>, ptr %i.u, align 4, !tbaa !25
  %i.v = fmul <4 x float> %broadcast.splat, %wide.load
  %i.w = fmul <4 x float> %broadcast.splat, %wide.load146
  store <4 x float> %i.v, ptr %next.gep, align 4, !tbaa !25
  store <4 x float> %i.w, ptr %i.u, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.o
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader233

.lr.ph.preheader233:                              ; preds = %.lr.ph.preheader, %middle.block
  %.088100.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.08999.ph = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.b
  %.not95101 = icmp eq i32 %i.k, 0
  br i1 %.not95101, label %._crit_edge, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.preheader
  %i.y = zext nneg i32 %i.k to i64                ; 2 uses
  %min.iters.check149 = icmp ult i32 %i.j, 16
  br i1 %min.iters.check149, label %.lr.ph104.preheader232, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph104.preheader
  %n.vec151 = and i64 %i.y, 2147483640            ; 4 uses
  %i.z = trunc nuw nsw i64 %n.vec151 to i32
  %i.aa = sub nsw i32 %i.k, %i.z
  %i.ab = shl nuw nsw i64 %n.vec151, 2
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.ab
  %broadcast.splatinsert152 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat153 = shufflevector <4 x float> %broadcast.splatinsert152, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph150
  %index155 = phi i64 [ 0, %vector.ph150 ], [ %index.next159, %vector.body154 ] ; 2 uses
  %i.ad = shl i64 %index155, 2
  %next.gep156 = getelementptr i8, ptr %i.c, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x float>, ptr %next.gep156, align 4, !tbaa !25
  %wide.load158 = load <4 x float>, ptr %i.ae, align 4, !tbaa !25
  %i.af = fmul <4 x float> %broadcast.splat153, %wide.load157
  %i.ag = fmul <4 x float> %broadcast.splat153, %wide.load158
  store <4 x float> %i.af, ptr %next.gep156, align 4, !tbaa !25
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !25
  %index.next159 = add nuw i64 %index155, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next159, %n.vec151
  br i1 %i.ah, label %middle.block160, label %vector.body154, !llvm.loop !343

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %n.vec151, %i.y
  br i1 %cmp.n161, label %._crit_edge, label %.lr.ph104.preheader232

.lr.ph104.preheader232:                           ; preds = %.lr.ph104.preheader, %middle.block160
  %.087103.ph = phi i32 [ %i.k, %.lr.ph104.preheader ], [ %i.aa, %middle.block160 ]
  %.190102.ph = phi ptr [ %i.c, %.lr.ph104.preheader ], [ %i.ac, %middle.block160 ]
  br label %.lr.ph104

.lr.ph:                                           ; preds = %.lr.ph.preheader233, %.lr.ph
  %.088100 = phi i32 [ %i.al, %.lr.ph ], [ %.088100.ph, %.lr.ph.preheader233 ]
  %.08999 = phi ptr [ %i.ai, %.lr.ph ], [ %.08999.ph, %.lr.ph.preheader233 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.08999, i64 4
  %i.aj = load float, ptr %.08999, align 4, !tbaa !25
  %i.ak = fmul float %i.m, %i.aj
  store float %i.ak, ptr %.08999, align 4, !tbaa !25
  %i.al = add nsw i32 %.088100, -1                ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !344

._crit_edge:                                      ; preds = %.lr.ph104, %middle.block160, %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !22  ; 2 uses
  %.not130 = icmp eq i8 %i.an, 0
  br i1 %.not130, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %wide.trip.count = zext i8 %i.an to i64
  br label %bb.c

.lr.ph104:                                        ; preds = %.lr.ph104.preheader232, %.lr.ph104
  %.087103 = phi i32 [ %i.at, %.lr.ph104 ], [ %.087103.ph, %.lr.ph104.preheader232 ]
  %.190102 = phi ptr [ %i.aq, %.lr.ph104 ], [ %.190102.ph, %.lr.ph104.preheader232 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.190102, i64 4
  %i.ar = load float, ptr %.190102, align 4, !tbaa !25
  %i.as = fmul float %i.n, %i.ar
  store float %i.as, ptr %.190102, align 4, !tbaa !25
  %i.at = add nsw i32 %.087103, -1                ; 2 uses
  %.not95 = icmp eq i32 %i.at, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph104, !llvm.loop !345

._crit_edge120:                                   ; preds = %._crit_edge111, %._crit_edge
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !12  ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !12 ; 3 uses
  br i1 %5, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph119, %._crit_edge111
  %indvars.iv = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next, %._crit_edge111 ] ; 3 uses
  %.081.in117 = phi i1 [ %5, %.lr.ph119 ], [ %not..081.in, %._crit_edge111 ]
  %.082116 = phi ptr [ %i.c, %.lr.ph119 ], [ %.093112, %._crit_edge111 ] ; 9 uses
  %.091114 = phi i32 [ %i.k, %.lr.ph119 ], [ %.092113, %._crit_edge111 ] ; 3 uses
  %.092113 = phi i32 [ %i.h, %.lr.ph119 ], [ %.091114, %._crit_edge111 ] ; 8 uses
  %.093112 = phi ptr [ %i.e, %.lr.ph119 ], [ %.082116, %._crit_edge111 ] ; 8 uses
  %i.ay = trunc i64 %indvars.iv to i1
  %i.az = xor i1 %i.ay, %not.
  %i.ba = select i1 %i.az, i64 4, i64 0           ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = load float, ptr %.082116, align 4, !tbaa !25
  %i.be = getelementptr inbounds i8, ptr %.082116, i64 -4
  store float %i.bd, ptr %i.be, align 4, !tbaa !25
  %i.bf = add nsw i32 %.091114, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.082116, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !25
  %i.bj = zext nneg i32 %.091114 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.082116, i64 %i.bj
  store float %i.bi, ptr %i.bk, align 4, !tbaa !25
  %not..081.in = xor i1 %.081.in117, true         ; 2 uses
  %.not97105 = icmp eq i32 %.092113, 0
  br i1 %.not97105, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.c
  %i.bl = zext i1 %not..081.in to i64
  %i.bm = getelementptr [4 x i8], ptr %.082116, i64 %i.bl ; 5 uses
  %i.bn = fneg float %i.bc                        ; 4 uses
  %i.bo = zext nneg i32 %.092113 to i64           ; 2 uses
  %min.iters.check174 = icmp samesign ult i32 %.092113, 8
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110
  %scevgep = getelementptr i8, ptr %.093112, i64 4
  %i.bp = add nsw i32 %.092113, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  %scevgep164 = getelementptr i8, ptr %scevgep, i64 %i.br ; 2 uses
  %scevgep165 = getelementptr i8, ptr %.082116, i64 -4
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.ba
  %i.bs = add nuw nsw i64 %i.ba, %i.br            ; 2 uses
  %scevgep167 = getelementptr i8, ptr %.082116, i64 %i.bs
  %scevgep168 = getelementptr i8, ptr %.082116, i64 4
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.bs
  %bound0 = icmp ult ptr %.093112, %scevgep167
  %bound1 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict = and i1 %bound0, %bound1
  %bound0170 = icmp ult ptr %.093112, %scevgep169
  %bound1171 = icmp ult ptr %i.bm, %scevgep164
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx = or i1 %found.conflict, %found.conflict172
  br i1 %conflict.rdx, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck
  %n.vec176 = and i64 %i.bo, 2147483640           ; 4 uses
  %i.bt = trunc nuw nsw i64 %n.vec176 to i32
  %i.bu = sub nsw i32 %.092113, %i.bt
  %i.bv = shl nuw nsw i64 %n.vec176, 2            ; 2 uses
  %i.bw = getelementptr i8, ptr %.093112, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bm, i64 %i.bv
  %broadcast.splatinsert177 = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat178 = shufflevector <4 x float> %broadcast.splatinsert177, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph175
  %index180 = phi i64 [ 0, %vector.ph175 ], [ %index.next189, %vector.body179 ] ; 2 uses
  %i.by = shl i64 %index180, 2                    ; 2 uses
  %next.gep181 = getelementptr i8, ptr %.093112, i64 %i.by ; 3 uses
  %next.gep182 = getelementptr i8, ptr %i.bm, i64 %i.by ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep182, i64 -4
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep182, i64 12
  %wide.load183 = load <4 x float>, ptr %i.bz, align 4, !tbaa !25, !alias.scope !359
  %wide.load184 = load <4 x float>, ptr %i.ca, align 4, !tbaa !25, !alias.scope !359
  %i.cb = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load185 = load <4 x float>, ptr %next.gep182, align 4, !tbaa !25, !alias.scope !360
  %wide.load186 = load <4 x float>, ptr %i.cb, align 4, !tbaa !25, !alias.scope !360
  %i.cc = fadd <4 x float> %wide.load183, %wide.load185
  %i.cd = fadd <4 x float> %wide.load184, %wide.load186
  %i.ce = getelementptr i8, ptr %next.gep181, i64 16 ; 2 uses
  %wide.load187 = load <4 x float>, ptr %next.gep181, align 4, !tbaa !25, !alias.scope !361, !noalias !362
  %wide.load188 = load <4 x float>, ptr %i.ce, align 4, !tbaa !25, !alias.scope !361, !noalias !362
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat178, <4 x float> %i.cc, <4 x float> %wide.load187)
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat178, <4 x float> %i.cd, <4 x float> %wide.load188)
  store <4 x float> %i.cf, ptr %next.gep181, align 4, !tbaa !25, !alias.scope !361, !noalias !362
  store <4 x float> %i.cg, ptr %i.ce, align 4, !tbaa !25, !alias.scope !361, !noalias !362
  %index.next189 = add nuw i64 %index180, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next189, %n.vec176
  br i1 %i.ch, label %middle.block190, label %vector.body179, !llvm.loop !350

middle.block190:                                  ; preds = %vector.body179
  %cmp.n191 = icmp eq i64 %n.vec176, %i.bo
  br i1 %cmp.n191, label %._crit_edge111, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %vector.memcheck, %.lr.ph110, %middle.block190
  %.083108.ph = phi i32 [ %.092113, %vector.memcheck ], [ %.092113, %.lr.ph110 ], [ %i.bu, %middle.block190 ] ; 4 uses
  %.084107.ph = phi ptr [ %.093112, %vector.memcheck ], [ %.093112, %.lr.ph110 ], [ %i.bw, %middle.block190 ] ; 4 uses
  %.085106.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph110 ], [ %i.bx, %middle.block190 ] ; 4 uses
  %xtraiter = and i32 %.083108.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol

scalar.ph173.prol:                                ; preds = %scalar.ph173.preheader
  %i.ci = getelementptr inbounds i8, ptr %.085106.ph, i64 -4
  %6 = load float, ptr %i.ci, align 4, !tbaa !25
  %7 = load float, ptr %.085106.ph, align 4, !tbaa !25
  %8 = fadd float %6, %7
  %i.cj = load float, ptr %.084107.ph, align 4, !tbaa !25
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bn, float %8, float %i.cj)
  store float %i.ck, ptr %.084107.ph, align 4, !tbaa !25
  %i.cl = add nsw i32 %.083108.ph, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %.085106.ph, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.084107.ph, i64 4
  br label %scalar.ph173.prol.loopexit

scalar.ph173.prol.loopexit:                       ; preds = %scalar.ph173.prol, %scalar.ph173.preheader
  %.083108.unr = phi i32 [ %.083108.ph, %scalar.ph173.preheader ], [ %i.cl, %scalar.ph173.prol ]
  %.084107.unr = phi ptr [ %.084107.ph, %scalar.ph173.preheader ], [ %i.cn, %scalar.ph173.prol ]
  %.085106.unr = phi ptr [ %.085106.ph, %scalar.ph173.preheader ], [ %i.cm, %scalar.ph173.prol ]
  %i.co = icmp eq i32 %.083108.ph, 1
  br i1 %i.co, label %._crit_edge111, label %scalar.ph173

._crit_edge111:                                   ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173, %middle.block190, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge120, label %bb.c, !llvm.loop !351

scalar.ph173:                                     ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173
  %.083108 = phi i32 [ %i.cv, %scalar.ph173 ], [ %.083108.unr, %scalar.ph173.prol.loopexit ]
  %.084107 = phi ptr [ %i.cx, %scalar.ph173 ], [ %.084107.unr, %scalar.ph173.prol.loopexit ] ; 4 uses
  %.085106 = phi ptr [ %i.cw, %scalar.ph173 ], [ %.085106.unr, %scalar.ph173.prol.loopexit ] ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %.085106, i64 -4
  %9 = load float, ptr %i.cp, align 4, !tbaa !25
  %10 = load float, ptr %.085106, align 4, !tbaa !25
  %11 = fadd float %9, %10
  %i.cq = load float, ptr %.084107, align 4, !tbaa !25
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bn, float %11, float %i.cq)
  store float %i.cr, ptr %.084107, align 4, !tbaa !25
  %12 = getelementptr inbounds nuw i8, ptr %.085106, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.084107, i64 4 ; 2 uses
  %13 = load float, ptr %.085106, align 4, !tbaa !25
  %14 = load float, ptr %12, align 4, !tbaa !25
  %15 = fadd float %13, %14
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !25
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bn, float %15, float %i.ct)
  store float %i.cu, ptr %i.cs, align 4, !tbaa !25
  %i.cv = add nsw i32 %.083108, -2                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.085106, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.084107, i64 8
  %.not97.1 = icmp eq i32 %i.cv, 0
  br i1 %.not97.1, label %._crit_edge111, label %scalar.ph173, !llvm.loop !352

bb.d:                                             ; preds = %._crit_edge120
  %i.cy = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.cz = load float, ptr %i.au, align 4, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store float %i.cz, ptr %i.ax, align 4, !tbaa !25
  %i.db = add i32 %4, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge120
  %.079 = phi ptr [ %i.au, %._crit_edge120 ], [ %i.cy, %bb.d ] ; 6 uses
  %.076 = phi ptr [ %i.ax, %._crit_edge120 ], [ %i.da, %bb.d ] ; 9 uses
  %.0 = phi i32 [ %4, %._crit_edge120 ], [ %i.db, %bb.d ] ; 6 uses
  %i.dc = icmp ugt i32 %.0, 1
  br i1 %i.dc, label %.lr.ph126.preheader, label %._crit_edge127.thread

.lr.ph126.preheader:                              ; preds = %bb.e
  %i.dd = add i32 %.0, -2                         ; 2 uses
  %i.de = lshr i32 %i.dd, 1
  %narrow = add nuw i32 %i.de, 1
  %i.df = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check207 = icmp ult i32 %i.dd, 42
  br i1 %min.iters.check207, label %.lr.ph126.preheader228, label %vector.memcheck195

vector.memcheck195:                               ; preds = %.lr.ph126.preheader
  %i.dg = add i32 %.0, -2
  %i.dh = lshr i32 %i.dg, 1
  %i.di = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = getelementptr i8, ptr %.076, i64 %i.dj
  %scevgep196 = getelementptr i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dl = shl nuw nsw i64 %i.di, 2
  %i.dm = add nuw nsw i64 %i.dl, 4                ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.av, i64 %i.dm
  %scevgep198 = getelementptr i8, ptr %.079, i64 %i.dm
  %bound0199 = icmp ult ptr %.076, %scevgep197
  %bound1200 = icmp ult ptr %i.av, %scevgep196
  %found.conflict201 = and i1 %bound0199, %bound1200
  %bound0202 = icmp ult ptr %.076, %scevgep198
  %bound1203 = icmp ult ptr %.079, %scevgep196
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %found.conflict201, %found.conflict204
  br i1 %conflict.rdx205, label %.lr.ph126.preheader228, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck195
  %n.vec209 = and i64 %i.df, 4294967292           ; 5 uses
  %i.dn = trunc nuw i64 %n.vec209 to i32
  %i.do = shl i32 %i.dn, 1
  %i.dp = sub i32 %.0, %i.do                      ; 2 uses
  %i.dq = shl nuw nsw i64 %n.vec209, 3
  %i.dr = getelementptr i8, ptr %.076, i64 %i.dq  ; 2 uses
  %i.ds = shl nuw nsw i64 %n.vec209, 2            ; 2 uses
  %i.dt = getelementptr i8, ptr %i.av, i64 %i.ds  ; 2 uses
  %i.du = getelementptr i8, ptr %.079, i64 %i.ds
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next221, %vector.body210 ] ; 3 uses
  %i.dv = shl i64 %index211, 3                    ; 2 uses
  %next.gep212 = getelementptr i8, ptr %.076, i64 %i.dv
  %i.dw = getelementptr i8, ptr %.076, i64 %i.dv
  %next.gep213 = getelementptr i8, ptr %i.dw, i64 16
  %i.dx = shl i64 %index211, 2                    ; 2 uses
  %next.gep214 = getelementptr i8, ptr %i.av, i64 %i.dx ; 2 uses
  %next.gep215 = getelementptr i8, ptr %.079, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep214, i64 8
  %wide.load216 = load <2 x float>, ptr %next.gep214, align 4, !tbaa !25, !alias.scope !363
  %wide.load217 = load <2 x float>, ptr %i.dy, align 4, !tbaa !25, !alias.scope !363
  %i.dz = getelementptr i8, ptr %next.gep215, i64 8
  %wide.load218 = load <2 x float>, ptr %next.gep215, align 4, !tbaa !25, !alias.scope !364
  %wide.load219 = load <2 x float>, ptr %i.dz, align 4, !tbaa !25, !alias.scope !364
  %interleaved.vec = shufflevector <2 x float> %wide.load216, <2 x float> %wide.load218, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %next.gep212, align 4, !tbaa !25, !alias.scope !365, !noalias !366
  %interleaved.vec220 = shufflevector <2 x float> %wide.load217, <2 x float> %wide.load219, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec220, ptr %next.gep213, align 4, !tbaa !25, !alias.scope !365, !noalias !366
  %index.next221 = add nuw i64 %index211, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next221, %n.vec209
  br i1 %i.ea, label %middle.block222, label %vector.body210, !llvm.loop !357

middle.block222:                                  ; preds = %vector.body210
  %cmp.n223 = icmp eq i64 %n.vec209, %i.df
  br i1 %cmp.n223, label %._crit_edge127, label %.lr.ph126.preheader228

.lr.ph126.preheader228:                           ; preds = %vector.memcheck195, %.lr.ph126.preheader, %middle.block222
  %.1124.ph = phi i32 [ %.0, %vector.memcheck195 ], [ %.0, %.lr.ph126.preheader ], [ %i.dp, %middle.block222 ]
  %.177123.ph = phi ptr [ %.076, %vector.memcheck195 ], [ %.076, %.lr.ph126.preheader ], [ %i.dr, %middle.block222 ]
  %.078122.ph = phi ptr [ %i.av, %vector.memcheck195 ], [ %i.av, %.lr.ph126.preheader ], [ %i.dt, %middle.block222 ]
  %.180121.ph = phi ptr [ %.079, %vector.memcheck195 ], [ %.079, %.lr.ph126.preheader ], [ %i.du, %middle.block222 ]
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader228, %.lr.ph126
  %.1124 = phi i32 [ %i.eh, %.lr.ph126 ], [ %.1124.ph, %.lr.ph126.preheader228 ]
  %.177123 = phi ptr [ %i.eg, %.lr.ph126 ], [ %.177123.ph, %.lr.ph126.preheader228 ] ; 3 uses
  %.078122 = phi ptr [ %i.eb, %.lr.ph126 ], [ %.078122.ph, %.lr.ph126.preheader228 ] ; 2 uses
  %.180121 = phi ptr [ %i.ee, %.lr.ph126 ], [ %.180121.ph, %.lr.ph126.preheader228 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.078122, i64 4 ; 2 uses
  %i.ec = load float, ptr %.078122, align 4, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %.177123, i64 4
  store float %i.ec, ptr %.177123, align 4, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %.180121, i64 4
  %i.ef = load float, ptr %.180121, align 4, !tbaa !25
  %i.eg = getelementptr inbounds nuw i8, ptr %.177123, i64 8 ; 2 uses
  store float %i.ef, ptr %i.ed, align 4, !tbaa !25
  %i.eh = add i32 %.1124, -2                      ; 3 uses
  %i.ei = icmp ugt i32 %i.eh, 1
  br i1 %i.ei, label %.lr.ph126, label %._crit_edge127, !llvm.loop !358

._crit_edge127:                                   ; preds = %.lr.ph126, %middle.block222
  %.lcssa145 = phi ptr [ %i.dt, %middle.block222 ], [ %i.eb, %.lr.ph126 ]
  %.lcssa144 = phi ptr [ %i.dr, %middle.block222 ], [ %i.eg, %.lr.ph126 ]
  %.lcssa = phi i32 [ %i.dp, %middle.block222 ], [ %i.eh, %.lr.ph126 ]
  %i.ej = icmp eq i32 %.lcssa, 0
  br i1 %i.ej, label %bb.i, label %._crit_edge127.thread

._crit_edge127.thread:                            ; preds = %bb.e, %._crit_edge127
  %.177.lcssa141 = phi ptr [ %.lcssa144, %._crit_edge127 ], [ %.076, %bb.e ]
  %.078.lcssa140 = phi ptr [ %.lcssa145, %._crit_edge127 ], [ %i.av, %bb.e ]
  %i.ek = load float, ptr %.078.lcssa140, align 4, !tbaa !25
  store float %i.ek, ptr %.177.lcssa141, align 4, !tbaa !25
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br i1 %5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !12
  %i.en = load float, ptr %i.em, align 4, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !12
  store float %i.en, ptr %i.ep, align 4, !tbaa !25
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !12
  %i.es = load float, ptr %i.er, align 4, !tbaa !25
  %i.et = fmul float %i.es, 5.000000e-01
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !12
  store float %i.et, ptr %i.ev, align 4, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge127, %._crit_edge127.thread, %bb.g, %bb.h
  ret void
}

declare noundef i32 @_ZN4ojph17get_cpu_ext_levelEv() local_unnamed_addr #2

declare void @_ZN4ojph5local17sse_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local20sse_irv_vert_times_KEfPKNS_8line_bufEj(float noundef, ptr noundef, i32 noundef) #2

declare void @_ZN4ojph5local16sse_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local16sse_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local18sse2_rev_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17sse2_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17sse2_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17avx_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local20avx_irv_vert_times_KEfPKNS_8line_bufEj(float noundef, ptr noundef, i32 noundef) #2

declare void @_ZN4ojph5local16avx_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local16avx_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local18avx2_rev_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17avx2_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17avx2_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local20avx512_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local23avx512_irv_vert_times_KEfPKNS_8line_bufEj(float noundef, ptr noundef, i32 noundef) #2

declare void @_ZN4ojph5local19avx512_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local19avx512_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL19gen_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(none) %.16.val, ptr nofree readonly captures(none) %.16.val1, ptr nofree captures(none) %.16.val3, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.c = sext i16 %i.b to i64                     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !12   ; 2 uses
  %i.f = sext i16 %i.e to i64                     ; 22 uses
end_hunk_0
begin_hunk_1_@_ZN4ojph5localL19gen_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  %i.kv = getelementptr inbounds nuw i8, ptr %.444, i64 8
  %i.kw = load i64, ptr %.444, align 8, !tbaa !24
  %i.kx = add i64 %i.ku, %i.kw
  %i.ky = sub i64 %i.f, %i.kx
  %i.kz = ashr i64 %i.ky, %i.ji
  %i.la = getelementptr inbounds nuw i8, ptr %.410242, i64 8 ; 2 uses
  %i.lb = load i64, ptr %.410242, align 8, !tbaa !24
  %i.lc = sub nsw i64 %i.lb, %i.kz
  store i64 %i.lc, ptr %.410242, align 8, !tbaa !24
  %i.ld = getelementptr inbounds nuw i8, ptr %.49443, i64 16
  %i.le = load i64, ptr %i.kt, align 8, !tbaa !24
  %i.lf = getelementptr inbounds nuw i8, ptr %.444, i64 16
  %i.lg = load i64, ptr %i.kv, align 8, !tbaa !24
  %i.lh = add i64 %i.le, %i.lg
  %i.li = sub i64 %i.f, %i.lh
  %i.lj = ashr i64 %i.li, %i.ji
  %i.lk = getelementptr inbounds nuw i8, ptr %.410242, i64 16
  %i.ll = load i64, ptr %i.la, align 8, !tbaa !24
  %i.lm = sub nsw i64 %i.ll, %i.lj
  store i64 %i.lm, ptr %i.la, align 8, !tbaa !24
  %i.ln = add i32 %.08445, -2                     ; 2 uses
  %.not110.1 = icmp eq i32 %i.ln, 0
  br i1 %.not110.1, label %.loopexit, label %scalar.ph121, !llvm.loop !401

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.08339 = phi i32 [ %i.mi, %scalar.ph ], [ %.08339.unr, %scalar.ph.prol.loopexit ]
  %.538 = phi ptr [ %i.ma, %scalar.ph ], [ %.538.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.59537 = phi ptr [ %i.ly, %scalar.ph ], [ %.59537.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.510336 = phi ptr [ %i.mf, %scalar.ph ], [ %.510336.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.59537, i64 8
  %i.lp = load i64, ptr %.59537, align 8, !tbaa !24
  %i.lq = getelementptr inbounds nuw i8, ptr %.538, i64 8
  %i.lr = load i64, ptr %.538, align 8, !tbaa !24
  %i.ls = add i64 %i.lp, %i.lr
  %i.lt = sub i64 %i.f, %i.ls
  %i.lu = ashr i64 %i.lt, %i.hx
  %i.lv = getelementptr inbounds nuw i8, ptr %.510336, i64 8 ; 2 uses
  %i.lw = load i64, ptr %.510336, align 8, !tbaa !24
  %i.lx = add nsw i64 %i.lu, %i.lw
  store i64 %i.lx, ptr %.510336, align 8, !tbaa !24
  %i.ly = getelementptr inbounds nuw i8, ptr %.59537, i64 16
  %i.lz = load i64, ptr %i.lo, align 8, !tbaa !24
  %i.ma = getelementptr inbounds nuw i8, ptr %.538, i64 16
  %i.mb = load i64, ptr %i.lq, align 8, !tbaa !24
  %i.mc = add i64 %i.lz, %i.mb
  %i.md = sub i64 %i.f, %i.mc
  %i.me = ashr i64 %i.md, %i.hx
  %i.mf = getelementptr inbounds nuw i8, ptr %.510336, i64 16
  %i.mg = load i64, ptr %i.lv, align 8, !tbaa !24
  %i.mh = add nsw i64 %i.me, %i.mg
  store i64 %i.mh, ptr %i.lv, align 8, !tbaa !24
  %i.mi = add i32 %.08339, -2                     ; 2 uses
  %.not109.1 = icmp eq i32 %i.mi, 0
  br i1 %.not109.1, label %.loopexit, label %scalar.ph, !llvm.loop !402

bb.g:                                             ; preds = %bb.e
  br i1 %2, label %.preheader20, label %.preheader22

.preheader22:                                     ; preds = %bb.g
  br i1 %.not11253, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader22
  %i.mj = zext nneg i8 %i.g to i64                ; 3 uses
  %xtraiter = and i32 %1, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.mk = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.ml = load i64, ptr %.16.val, align 8, !tbaa !24
  %i.mm = getelementptr inbounds nuw i8, ptr %.16.val1, i64 8
  %i.mn = load i64, ptr %.16.val1, align 8, !tbaa !24
  %i.mo = add nsw i64 %i.mn, %i.ml
  %i.mp = mul nsw i64 %i.mo, %i.c
  %i.mq = add nsw i64 %i.mp, %i.f
  %i.mr = ashr i64 %i.mq, %i.mj
  %i.ms = getelementptr inbounds nuw i8, ptr %.16.val3, i64 8
  %i.mt = load i64, ptr %.16.val3, align 8, !tbaa !24
  %i.mu = add nsw i64 %i.mr, %i.mt
  store i64 %i.mu, ptr %.16.val3, align 8, !tbaa !24
  %i.mv = add nsw i32 %1, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.028.unr = phi i32 [ %1, %.lr.ph ], [ %i.mv, %.prol.loopexit.unr-lcssa ]
  %.727.unr = phi ptr [ %.16.val1, %.lr.ph ], [ %i.mm, %.prol.loopexit.unr-lcssa ]
  %.79726.unr = phi ptr [ %.16.val, %.lr.ph ], [ %i.mk, %.prol.loopexit.unr-lcssa ]
  %.710525.unr = phi ptr [ %.16.val3, %.lr.ph ], [ %i.ms, %.prol.loopexit.unr-lcssa ]
  %i.mw = icmp eq i32 %1, 1
  br i1 %i.mw, label %.loopexit, label %.lr.ph.new

.preheader20:                                     ; preds = %bb.g
  br i1 %.not11253, label %.loopexit, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader20
  %i.mx = zext nneg i8 %i.g to i64                ; 3 uses
  %xtraiter298 = and i32 %1, 1
  %lcmp.mod299.not = icmp eq i32 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %.prol.loopexit297, label %.prol.loopexit297.unr-lcssa

.prol.loopexit297.unr-lcssa:                      ; preds = %.lr.ph34
  %i.my = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.mz = load i64, ptr %.16.val, align 8, !tbaa !24
  %i.na = getelementptr inbounds nuw i8, ptr %.16.val1, i64 8
  %i.nb = load i64, ptr %.16.val1, align 8, !tbaa !24
  %i.nc = add nsw i64 %i.nb, %i.mz
  %i.nd = mul nsw i64 %i.nc, %i.c
  %i.ne = add nsw i64 %i.nd, %i.f
  %i.nf = ashr i64 %i.ne, %i.mx
  %i.ng = getelementptr inbounds nuw i8, ptr %.16.val3, i64 8
  %i.nh = load i64, ptr %.16.val3, align 8, !tbaa !24
  %i.ni = sub nsw i64 %i.nh, %i.nf
  store i64 %i.ni, ptr %.16.val3, align 8, !tbaa !24
  %i.nj = add nsw i32 %1, -1
  br label %.prol.loopexit297

.prol.loopexit297:                                ; preds = %.prol.loopexit297.unr-lcssa, %.lr.ph34
  %.08233.unr = phi i32 [ %1, %.lr.ph34 ], [ %i.nj, %.prol.loopexit297.unr-lcssa ]
  %.632.unr = phi ptr [ %.16.val1, %.lr.ph34 ], [ %i.na, %.prol.loopexit297.unr-lcssa ]
  %.69631.unr = phi ptr [ %.16.val, %.lr.ph34 ], [ %i.my, %.prol.loopexit297.unr-lcssa ]
  %.610430.unr = phi ptr [ %.16.val3, %.lr.ph34 ], [ %i.ng, %.prol.loopexit297.unr-lcssa ]
  %i.nk = icmp eq i32 %1, 1
  br i1 %i.nk, label %.loopexit, label %.lr.ph34.new

.lr.ph34.new:                                     ; preds = %.prol.loopexit297, %.lr.ph34.new
  %.08233 = phi i32 [ %i.oh, %.lr.ph34.new ], [ %.08233.unr, %.prol.loopexit297 ]
  %.632 = phi ptr [ %i.ny, %.lr.ph34.new ], [ %.632.unr, %.prol.loopexit297 ] ; 3 uses
  %.69631 = phi ptr [ %i.nw, %.lr.ph34.new ], [ %.69631.unr, %.prol.loopexit297 ] ; 3 uses
  %.610430 = phi ptr [ %i.oe, %.lr.ph34.new ], [ %.610430.unr, %.prol.loopexit297 ] ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.69631, i64 8
  %i.nm = load i64, ptr %.69631, align 8, !tbaa !24
  %i.nn = getelementptr inbounds nuw i8, ptr %.632, i64 8
  %i.no = load i64, ptr %.632, align 8, !tbaa !24
  %i.np = add nsw i64 %i.no, %i.nm
  %i.nq = mul nsw i64 %i.np, %i.c
  %i.nr = add nsw i64 %i.nq, %i.f
  %i.ns = ashr i64 %i.nr, %i.mx
  %i.nt = getelementptr inbounds nuw i8, ptr %.610430, i64 8 ; 2 uses
  %i.nu = load i64, ptr %.610430, align 8, !tbaa !24
  %i.nv = sub nsw i64 %i.nu, %i.ns
  store i64 %i.nv, ptr %.610430, align 8, !tbaa !24
  %i.nw = getelementptr inbounds nuw i8, ptr %.69631, i64 16
  %i.nx = load i64, ptr %i.nl, align 8, !tbaa !24
  %i.ny = getelementptr inbounds nuw i8, ptr %.632, i64 16
  %i.nz = load i64, ptr %i.nn, align 8, !tbaa !24
  %i.oa = add nsw i64 %i.nz, %i.nx
  %i.ob = mul nsw i64 %i.oa, %i.c
  %i.oc = add nsw i64 %i.ob, %i.f
  %i.od = ashr i64 %i.oc, %i.mx
  %i.oe = getelementptr inbounds nuw i8, ptr %.610430, i64 16
  %i.of = load i64, ptr %i.nt, align 8, !tbaa !24
  %i.og = sub nsw i64 %i.of, %i.od
  store i64 %i.og, ptr %i.nt, align 8, !tbaa !24
  %i.oh = add i32 %.08233, -2                     ; 2 uses
  %.not108.1 = icmp eq i32 %i.oh, 0
  br i1 %.not108.1, label %.loopexit, label %.lr.ph34.new, !llvm.loop !403

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.028 = phi i32 [ %i.pe, %.lr.ph.new ], [ %.028.unr, %.prol.loopexit ]
  %.727 = phi ptr [ %i.ov, %.lr.ph.new ], [ %.727.unr, %.prol.loopexit ] ; 3 uses
  %.79726 = phi ptr [ %i.ot, %.lr.ph.new ], [ %.79726.unr, %.prol.loopexit ] ; 3 uses
  %.710525 = phi ptr [ %i.pb, %.lr.ph.new ], [ %.710525.unr, %.prol.loopexit ] ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.79726, i64 8
  %i.oj = load i64, ptr %.79726, align 8, !tbaa !24
  %i.ok = getelementptr inbounds nuw i8, ptr %.727, i64 8
  %i.ol = load i64, ptr %.727, align 8, !tbaa !24
  %i.om = add nsw i64 %i.ol, %i.oj
  %i.on = mul nsw i64 %i.om, %i.c
  %i.oo = add nsw i64 %i.on, %i.f
  %i.op = ashr i64 %i.oo, %i.mj
  %i.oq = getelementptr inbounds nuw i8, ptr %.710525, i64 8 ; 2 uses
  %i.or = load i64, ptr %.710525, align 8, !tbaa !24
  %i.os = add nsw i64 %i.op, %i.or
  store i64 %i.os, ptr %.710525, align 8, !tbaa !24
  %i.ot = getelementptr inbounds nuw i8, ptr %.79726, i64 16
  %i.ou = load i64, ptr %i.oi, align 8, !tbaa !24
  %i.ov = getelementptr inbounds nuw i8, ptr %.727, i64 16
  %i.ow = load i64, ptr %i.ok, align 8, !tbaa !24
  %i.ox = add nsw i64 %i.ow, %i.ou
  %i.oy = mul nsw i64 %i.ox, %i.c
  %i.oz = add nsw i64 %i.oy, %i.f
  %i.pa = ashr i64 %i.oz, %i.mj
  %i.pb = getelementptr inbounds nuw i8, ptr %.710525, i64 16
  %i.pc = load i64, ptr %i.oq, align 8, !tbaa !24
  %i.pd = add nsw i64 %i.pa, %i.pc
  store i64 %i.pd, ptr %i.oq, align 8, !tbaa !24
  %i.pe = add i32 %.028, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.pe, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !404

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.prol.loopexit297, %.lr.ph34.new, %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph121.prol.loopexit, %scalar.ph121, %.lr.ph52.prol.loopexit, %.lr.ph52, %.lr.ph58.prol.loopexit, %.lr.ph58, %scalar.ph224.prol.loopexit, %scalar.ph224, %scalar.ph261.prol.loopexit, %scalar.ph261, %middle.block, %middle.block141, %middle.block174, %middle.block207, %middle.block244, %middle.block281, %.preheader22, %.preheader20, %.preheader18, %.preheader16, %.preheader14, %.preheader12, %.preheader10, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"_ZTSN4ojph8line_bufE", !9, i64 0, !5, i64 8, !5, i64 12, !4, i64 16}
!11 = !{!10, !5, i64 12}
!12 = !{!4, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"short", !4, i64 0}
!18 = !{!"float", !4, i64 0}
!19 = !{!"p1 _ZTSN4ojph5local12lifting_stepE", !8, i64 0}
!20 = !{!"p1 _ZTSN4ojph5local9param_atkE", !8, i64 0}
!21 = !{!"_ZTSN4ojph5local9param_atkE", !17, i64 0, !17, i64 2, !18, i64 4, !4, i64 8, !19, i64 16, !5, i64 24, !4, i64 28, !20, i64 80, !20, i64 88, !20, i64 96}
!22 = !{!21, !4, i64 8}
!23 = !{!21, !19, i64 16}
!24 = !{!9, !9, i64 0}
!25 = !{!18, !18, i64 0}
!26 = !{!21, !18, i64 4}
!27 = !{!8, !8, i64 0}
!28 = distinct !{!28, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !14, !15, !16}
!33 = distinct !{!33, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !14, !15, !16}
!38 = distinct !{!38, !14, !15}
!39 = distinct !{!39, !14, !15}
!40 = distinct !{!40, !"LVerDomain"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !40}
!44 = distinct !{!44, !14, !15, !16}
!45 = distinct !{!45, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !14, !15, !16}
!50 = distinct !{!50, !14, !15}
!51 = distinct !{!51, !14, !15}
!52 = distinct !{!52, !"LVerDomain"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !14, !15, !16}
!57 = distinct !{!57, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !57}
!61 = distinct !{!61, !14, !15, !16}
!62 = distinct !{!62, !14, !15}
!63 = distinct !{!63, !14, !15}
!64 = distinct !{!64, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = distinct !{!68, !14, !15, !16}
!69 = distinct !{!69, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = distinct !{!73, !14, !15, !16}
!74 = distinct !{!74, !14, !15}
!75 = distinct !{!75, !14, !15}
!76 = !{!29}
!77 = !{!30}
!78 = !{!31}
!79 = !{!29, !30}
!80 = !{!34}
!81 = !{!35}
!82 = !{!36}
!83 = !{!34, !35}
!84 = !{!41}
!85 = !{!42}
!86 = !{!43}
!87 = !{!41, !42}
!88 = !{!46}
!89 = !{!47}
!90 = !{!48}
!91 = !{!46, !47}
!92 = !{!53}
!93 = !{!54}
!94 = !{!55}
!95 = !{!53, !54}
!96 = !{!58}
!97 = !{!59}
!98 = !{!60}
!99 = !{!58, !59}
!100 = !{!65}
!101 = !{!66}
!102 = !{!67}
!103 = !{!65, !66}
!104 = !{!70}
!105 = !{!71}
!106 = !{!72}
!107 = !{!70, !71}
!108 = distinct !{!108, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !108}
!112 = distinct !{!112, !14, !15, !16}
!113 = distinct !{!113, !14, !15}
!114 = distinct !{!114, !"LVerDomain"}
!115 = distinct !{!115, !114}
!116 = distinct !{!116, !114}
!117 = distinct !{!117, !114}
!118 = distinct !{!118, !14, !15, !16}
!119 = distinct !{!119, !14, !15}
!120 = distinct !{!120, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !120}
!124 = distinct !{!124, !14, !15, !16}
!125 = distinct !{!125, !14, !15}
!126 = distinct !{!126, !"LVerDomain"}
!127 = distinct !{!127, !126}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !126}
!130 = distinct !{!130, !14, !15, !16}
!131 = distinct !{!131, !"LVerDomain"}
!132 = distinct !{!132, !131}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !131}
!135 = distinct !{!135, !14, !15, !16}
!136 = distinct !{!136, !14, !15}
!137 = distinct !{!137, !14, !15}
!138 = distinct !{!138, !14}
!139 = distinct !{!139, !"LVerDomain"}
!140 = distinct !{!140, !139}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !139}
!143 = distinct !{!143, !14, !15, !16}
!144 = distinct !{!144, !14, !15}
!145 = distinct !{!145, !"LVerDomain"}
!146 = distinct !{!146, !145}
!147 = distinct !{!147, !145}
!148 = distinct !{!148, !145}
!149 = distinct !{!149, !14, !15, !16}
!150 = distinct !{!150, !14, !15}
!151 = distinct !{!151, !"LVerDomain"}
!152 = distinct !{!152, !151}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !151}
!155 = distinct !{!155, !14, !15, !16}
!156 = distinct !{!156, !14, !15}
!157 = distinct !{!157, !"LVerDomain"}
!158 = distinct !{!158, !157}
!159 = distinct !{!159, !157}
!160 = distinct !{!160, !157}
!161 = distinct !{!161, !14, !15, !16}
!162 = distinct !{!162, !"LVerDomain"}
!163 = distinct !{!163, !162}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !162}
!166 = distinct !{!166, !14, !15, !16}
!167 = distinct !{!167, !14, !15}
!168 = distinct !{!168, !14, !15}
!169 = distinct !{!169, !14}
!170 = !{!109}
!171 = !{!110}
!172 = !{!111, !109}
!173 = !{!111}
!174 = !{!115}
!175 = !{!116}
!176 = !{!117}
!177 = !{!115, !116}
!178 = !{!121}
!179 = !{!122}
!180 = !{!123}
!181 = !{!121, !122}
!182 = !{!127}
!183 = !{!128}
!184 = !{!129}
!185 = !{!127, !128}
!186 = !{!132}
!187 = !{!133}
!188 = !{!134}
!189 = !{!132, !133}
end_hunk_1
