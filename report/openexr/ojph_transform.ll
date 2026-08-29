Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local16gen_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
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
  %wide.load = load <4 x float>, ptr %i.cu, align 4, !tbaa !303, !alias.scope !328
  %wide.load195 = load <4 x float>, ptr %i.cv, align 4, !tbaa !303, !alias.scope !328
  %i.cw = getelementptr i8, ptr %next.gep194, i64 16
  %wide.load196 = load <4 x float>, ptr %next.gep194, align 4, !tbaa !303, !alias.scope !331
  %wide.load197 = load <4 x float>, ptr %i.cw, align 4, !tbaa !303, !alias.scope !331
  %i.cx = fadd <4 x float> %wide.load, %wide.load196
  %i.cy = fadd <4 x float> %wide.load195, %wide.load197
  %i.cz = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load198 = load <4 x float>, ptr %next.gep193, align 4, !tbaa !303, !alias.scope !333, !noalias !335
  %wide.load199 = load <4 x float>, ptr %i.cz, align 4, !tbaa !303, !alias.scope !333, !noalias !335
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cx, <4 x float> %wide.load198)
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cy, <4 x float> %wide.load199)
  store <4 x float> %i.da, ptr %next.gep193, align 4, !tbaa !303, !alias.scope !333, !noalias !335
  store <4 x float> %i.db, ptr %i.cz, align 4, !tbaa !303, !alias.scope !333, !noalias !335
  %index.next200 = add nuw i64 %index192, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next200, %n.vec190
  br i1 %i.dc, label %middle.block201, label %vector.body191, !llvm.loop !336

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
  %i.de = load float, ptr %i.dd, align 4, !tbaa !303
  %i.df = load float, ptr %.082105.ph, align 4, !tbaa !303
  %i.dg = fadd float %i.de, %i.df
  %i.dh = load float, ptr %.081106.ph, align 4, !tbaa !303
  %i.di = tail call float @llvm.fmuladd.f32(float %i.by, float %i.dg, float %i.dh)
  store float %i.di, ptr %.081106.ph, align 4, !tbaa !303
  %i.dj = add nsw i32 %.080107.ph, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %.082105.ph, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.081106.ph, i64 4
  br label %.lr.ph109.prol.loopexit

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader240
  %.080107.unr = phi i32 [ %.080107.ph, %.lr.ph109.preheader240 ], [ %i.dj, %.lr.ph109.prol ]
  %.081106.unr = phi ptr [ %.081106.ph, %.lr.ph109.preheader240 ], [ %i.dl, %.lr.ph109.prol ]
  %.082105.unr = phi ptr [ %.082105.ph, %.lr.ph109.preheader240 ], [ %i.dk, %.lr.ph109.prol ]
  %i.dm = icmp eq i32 %.080107.ph, 1
  br i1 %i.dm, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block201, %bb.e
  %i.dn = xor i1 %.077.in117, true
  %.not94.wide = icmp eq i64 %i.bw, 0
  br i1 %.not94.wide, label %._crit_edge120, label %bb.e, !llvm.loop !337

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.080107 = phi i32 [ %i.eb, %.lr.ph109 ], [ %.080107.unr, %.lr.ph109.prol.loopexit ]
  %.081106 = phi ptr [ %i.ed, %.lr.ph109 ], [ %.081106.unr, %.lr.ph109.prol.loopexit ] ; 4 uses
  %.082105 = phi ptr [ %i.ec, %.lr.ph109 ], [ %.082105.unr, %.lr.ph109.prol.loopexit ] ; 5 uses
  %i.do = getelementptr inbounds i8, ptr %.082105, i64 -4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !303
  %i.dq = load float, ptr %.082105, align 4, !tbaa !303
  %i.dr = fadd float %i.dp, %i.dq
  %i.ds = load float, ptr %.081106, align 4, !tbaa !303
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.by, float %i.dr, float %i.ds)
  store float %i.dt, ptr %.081106, align 4, !tbaa !303
  %i.du = getelementptr inbounds nuw i8, ptr %.082105, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.081106, i64 4 ; 2 uses
  %i.dw = load float, ptr %.082105, align 4, !tbaa !303
  %i.dx = load float, ptr %i.du, align 4, !tbaa !303
  %i.dy = fadd float %i.dw, %i.dx
  %i.dz = load float, ptr %i.dv, align 4, !tbaa !303
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.by, float %i.dy, float %i.dz)
  store float %i.ea, ptr %i.dv, align 4, !tbaa !303
  %i.eb = add nsw i32 %.080107, -2                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.082105, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.081106, i64 8
  %.not97.1 = icmp eq i32 %i.eb, 0
  br i1 %.not97.1, label %._crit_edge110, label %.lr.ph109, !llvm.loop !338

.preheader:                                       ; preds = %.lr.ph129, %middle.block218, %._crit_edge120
  %.not96130 = icmp eq i32 %.084.lcssa, 0
  br i1 %.not96130, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %.preheader
  %i.ee = zext i32 %.084.lcssa to i64             ; 2 uses
  %min.iters.check223 = icmp ult i32 %.084.lcssa, 8
  br i1 %min.iters.check223, label %.lr.ph133.preheader238, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph133.preheader
  %n.vec225 = and i64 %i.ee, 4294967288           ; 4 uses
  %i.ef = trunc nuw i64 %n.vec225 to i32
  %i.eg = sub i32 %.084.lcssa, %i.ef
  %i.eh = shl nuw nsw i64 %n.vec225, 2
  %i.ei = getelementptr i8, ptr %.087.lcssa, i64 %i.eh
  %broadcast.splatinsert226 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat227 = shufflevector <4 x float> %broadcast.splatinsert226, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph224
  %index229 = phi i64 [ 0, %vector.ph224 ], [ %index.next233, %vector.body228 ] ; 2 uses
  %i.ej = shl i64 %index229, 2
  %next.gep230 = getelementptr i8, ptr %.087.lcssa, i64 %i.ej ; 3 uses
  %i.ek = getelementptr i8, ptr %next.gep230, i64 16 ; 2 uses
  %wide.load231 = load <4 x float>, ptr %next.gep230, align 4, !tbaa !303
  %wide.load232 = load <4 x float>, ptr %i.ek, align 4, !tbaa !303
  %i.el = fmul <4 x float> %broadcast.splat227, %wide.load231
  %i.em = fmul <4 x float> %broadcast.splat227, %wide.load232
  store <4 x float> %i.el, ptr %next.gep230, align 4, !tbaa !303
  store <4 x float> %i.em, ptr %i.ek, align 4, !tbaa !303
  %index.next233 = add nuw i64 %index229, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next233, %n.vec225
  br i1 %i.en, label %middle.block234, label %vector.body228, !llvm.loop !339

middle.block234:                                  ; preds = %vector.body228
  %cmp.n235 = icmp eq i64 %n.vec225, %i.ee
  br i1 %cmp.n235, label %.loopexit, label %.lr.ph133.preheader238

.lr.ph133.preheader238:                           ; preds = %.lr.ph133.preheader, %middle.block234
  %.0132.ph = phi i32 [ %.084.lcssa, %.lr.ph133.preheader ], [ %i.eg, %middle.block234 ]
  %.1131.ph = phi ptr [ %.087.lcssa, %.lr.ph133.preheader ], [ %i.ei, %middle.block234 ]
  br label %.lr.ph133

.lr.ph129:                                        ; preds = %.lr.ph129.preheader239, %.lr.ph129
  %.075127 = phi i32 [ %i.er, %.lr.ph129 ], [ %.075127.ph, %.lr.ph129.preheader239 ]
  %.076126 = phi ptr [ %i.eo, %.lr.ph129 ], [ %.076126.ph, %.lr.ph129.preheader239 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.076126, i64 4
  %i.ep = load float, ptr %.076126, align 4, !tbaa !303
  %i.eq = fmul float %i.bk, %i.ep
  store float %i.eq, ptr %.076126, align 4, !tbaa !303
  %i.er = add nsw i32 %.075127, -1                ; 2 uses
  %.not95 = icmp eq i32 %i.er, 0
  br i1 %.not95, label %.preheader, label %.lr.ph129, !llvm.loop !340

.lr.ph133:                                        ; preds = %.lr.ph133.preheader238, %.lr.ph133
  %.0132 = phi i32 [ %i.ev, %.lr.ph133 ], [ %.0132.ph, %.lr.ph133.preheader238 ]
  %.1131 = phi ptr [ %i.es, %.lr.ph133 ], [ %.1131.ph, %.lr.ph133.preheader238 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1131, i64 4
  %i.et = load float, ptr %.1131, align 4, !tbaa !303
  %i.eu = fmul float %i.bj, %i.et
  store float %i.eu, ptr %.1131, align 4, !tbaa !303
  %i.ev = add nsw i32 %.0132, -1                  ; 2 uses
  %.not96 = icmp eq i32 %i.ev, 0
  br i1 %.not96, label %.loopexit, label %.lr.ph133, !llvm.loop !341

.loopexit.sink.split:                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !13
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !303 ; 2 uses
  %i.ez = fmul float %i.ey, 2.000000e+00
  %.sink154 = select i1 %5, ptr %1, ptr %2
  %.sink = select i1 %5, float %i.ey, float %i.ez
  %i.fa = getelementptr inbounds nuw i8, ptr %.sink154, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !13
  store float %.sink, ptr %i.fb, align 4, !tbaa !303
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = zext i1 %5 to i32
  %i.g = add i32 %4, %i.f                         ; 2 uses
  %i.h = lshr i32 %i.g, 1                         ; 5 uses
  %not. = xor i1 %5, true                         ; 2 uses
  %i.i = zext i1 %not. to i32
  %i.j = add i32 %4, %i.i                         ; 2 uses
  %i.k = lshr i32 %i.j, 1                         ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !326 ; 3 uses
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
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !303
  %wide.load146 = load <4 x float>, ptr %i.u, align 4, !tbaa !303
  %i.v = fmul <4 x float> %broadcast.splat, %wide.load
  %i.w = fmul <4 x float> %broadcast.splat, %wide.load146
  store <4 x float> %i.v, ptr %next.gep, align 4, !tbaa !303
  store <4 x float> %i.w, ptr %i.u, align 4, !tbaa !303
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
  %wide.load157 = load <4 x float>, ptr %next.gep156, align 4, !tbaa !303
  %wide.load158 = load <4 x float>, ptr %i.ae, align 4, !tbaa !303
  %i.af = fmul <4 x float> %broadcast.splat153, %wide.load157
  %i.ag = fmul <4 x float> %broadcast.splat153, %wide.load158
  store <4 x float> %i.af, ptr %next.gep156, align 4, !tbaa !303
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !303
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
  %i.aj = load float, ptr %.08999, align 4, !tbaa !303
  %i.ak = fmul float %i.m, %i.aj
  store float %i.ak, ptr %.08999, align 4, !tbaa !303
  %i.al = add nsw i32 %.088100, -1                ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !344

._crit_edge:                                      ; preds = %.lr.ph104, %middle.block160, %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !108 ; 2 uses
  %.not130 = icmp eq i8 %i.an, 0
  br i1 %.not130, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114
  %wide.trip.count = zext i8 %i.an to i64
  br label %bb.c

.lr.ph104:                                        ; preds = %.lr.ph104.preheader232, %.lr.ph104
  %.087103 = phi i32 [ %i.at, %.lr.ph104 ], [ %.087103.ph, %.lr.ph104.preheader232 ]
  %.190102 = phi ptr [ %i.aq, %.lr.ph104 ], [ %.190102.ph, %.lr.ph104.preheader232 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.190102, i64 4
  %i.ar = load float, ptr %.190102, align 4, !tbaa !303
  %i.as = fmul float %i.n, %i.ar
  store float %i.as, ptr %.190102, align 4, !tbaa !303
  %i.at = add nsw i32 %.087103, -1                ; 2 uses
  %.not95 = icmp eq i32 %i.at, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph104, !llvm.loop !345

._crit_edge120:                                   ; preds = %._crit_edge111, %._crit_edge
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !13  ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !13 ; 3 uses
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
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !13
  %i.bd = load float, ptr %.082116, align 4, !tbaa !303
  %i.be = getelementptr inbounds i8, ptr %.082116, i64 -4
  store float %i.bd, ptr %i.be, align 4, !tbaa !303
  %i.bf = add nsw i32 %.091114, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.082116, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !303
  %i.bj = zext nneg i32 %.091114 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.082116, i64 %i.bj
  store float %i.bi, ptr %i.bk, align 4, !tbaa !303
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
  %wide.load183 = load <4 x float>, ptr %i.bz, align 4, !tbaa !303, !alias.scope !346
  %wide.load184 = load <4 x float>, ptr %i.ca, align 4, !tbaa !303, !alias.scope !346
  %i.cb = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load185 = load <4 x float>, ptr %next.gep182, align 4, !tbaa !303, !alias.scope !349
  %wide.load186 = load <4 x float>, ptr %i.cb, align 4, !tbaa !303, !alias.scope !349
  %i.cc = fadd <4 x float> %wide.load183, %wide.load185
  %i.cd = fadd <4 x float> %wide.load184, %wide.load186
  %i.ce = getelementptr i8, ptr %next.gep181, i64 16 ; 2 uses
  %wide.load187 = load <4 x float>, ptr %next.gep181, align 4, !tbaa !303, !alias.scope !351, !noalias !353
  %wide.load188 = load <4 x float>, ptr %i.ce, align 4, !tbaa !303, !alias.scope !351, !noalias !353
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat178, <4 x float> %i.cc, <4 x float> %wide.load187)
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat178, <4 x float> %i.cd, <4 x float> %wide.load188)
  store <4 x float> %i.cf, ptr %next.gep181, align 4, !tbaa !303, !alias.scope !351, !noalias !353
  store <4 x float> %i.cg, ptr %i.ce, align 4, !tbaa !303, !alias.scope !351, !noalias !353
  %index.next189 = add nuw i64 %index180, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next189, %n.vec176
  br i1 %i.ch, label %middle.block190, label %vector.body179, !llvm.loop !354

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
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !303
  %i.ck = load float, ptr %.085106.ph, align 4, !tbaa !303
  %i.cl = fadd float %i.cj, %i.ck
  %i.cm = load float, ptr %.084107.ph, align 4, !tbaa !303
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.cl, float %i.cm)
  store float %i.cn, ptr %.084107.ph, align 4, !tbaa !303
  %i.co = add nsw i32 %.083108.ph, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %.085106.ph, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.084107.ph, i64 4
  br label %scalar.ph173.prol.loopexit

scalar.ph173.prol.loopexit:                       ; preds = %scalar.ph173.prol, %scalar.ph173.preheader
  %.083108.unr = phi i32 [ %.083108.ph, %scalar.ph173.preheader ], [ %i.co, %scalar.ph173.prol ]
  %.084107.unr = phi ptr [ %.084107.ph, %scalar.ph173.preheader ], [ %i.cq, %scalar.ph173.prol ]
  %.085106.unr = phi ptr [ %.085106.ph, %scalar.ph173.preheader ], [ %i.cp, %scalar.ph173.prol ]
  %i.cr = icmp eq i32 %.083108.ph, 1
  br i1 %i.cr, label %._crit_edge111, label %scalar.ph173
end_hunk_0
