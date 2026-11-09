Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86?download=true
inline.NumInlined: 23
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %.1166.us.i = phi ptr [ %i.su, %.lr.ph167.us.i ], [ %.1166.us.i.unr, %.lr.ph167.us.i.prol.loopexit ] ; 3 uses
  %.1110165.us.i = phi ptr [ %i.sv, %.lr.ph167.us.i ], [ %.1110165.us.i.unr, %.lr.ph167.us.i.prol.loopexit ] ; 4 uses
  %.1112164.us.i = phi i32 [ %i.sw, %.lr.ph167.us.i ], [ %.1112164.us.i.unr, %.lr.ph167.us.i.prol.loopexit ]
  %i.sk = load float, ptr %.1110165.us.i, align 4, !tbaa !66 ; 2 uses
  %i.sl = load float, ptr %.1166.us.i, align 4, !tbaa !66 ; 2 uses
  %i.sm = fcmp fast olt float %i.sk, %i.sl
  %i.sn = select i1 %i.sm, float %i.sl, float %i.sk
  store float %i.sn, ptr %.1110165.us.i, align 4, !tbaa !66
  %i.so = getelementptr inbounds nuw i8, ptr %.1166.us.i, i64 4
  %i.sp = getelementptr inbounds nuw i8, ptr %.1110165.us.i, i64 4 ; 2 uses
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !66 ; 2 uses
  %i.sr = load float, ptr %i.so, align 4, !tbaa !66 ; 2 uses
  %i.ss = fcmp fast olt float %i.sq, %i.sr
  %i.st = select i1 %i.ss, float %i.sr, float %i.sq
  store float %i.st, ptr %i.sp, align 4, !tbaa !66
  %i.su = getelementptr inbounds nuw i8, ptr %.1166.us.i, i64 8
  %i.sv = getelementptr inbounds nuw i8, ptr %.1110165.us.i, i64 8
  %i.sw = add nuw nsw i32 %.1112164.us.i, 2       ; 2 uses
  %exitcond225.not.i.1 = icmp eq i32 %i.sw, %4
  br i1 %exitcond225.not.i.1, label %._crit_edge.us.i51, label %.lr.ph167.us.i, !llvm.loop !123

._crit_edge.us.i51:                               ; preds = %.lr.ph167.us.i.prol.loopexit, %.lr.ph167.us.i, %middle.block168, %..preheader158_crit_edge.us.i
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count229.i
  br i1 %exitcond230.not.i, label %.lr.ph186.i, label %.lr.ph.us.i50, !llvm.loop !6

..preheader158_crit_edge.us.i.unr-lcssa:          ; preds = %.lr.ph.us.i50.new
  br i1 %lcmp.mod305.not, label %..preheader158_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader158_crit_edge.us.i.unr-lcssa, %.lr.ph.us.i50
  %.097161.us.i.epil.init = phi ptr [ %i.rp, %.lr.ph.us.i50 ], [ %i.si, %..preheader158_crit_edge.us.i.unr-lcssa ]
  %.0109160.us.i.epil.init = phi ptr [ %5, %.lr.ph.us.i50 ], [ %i.sj, %..preheader158_crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod308)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.097161.us.i.epil = phi ptr [ %.097161.us.i.epil.init, %.epil.preheader ], [ %i.ta, %bb.i ] ; 2 uses
  %.0109160.us.i.epil = phi ptr [ %.0109160.us.i.epil.init, %.epil.preheader ], [ %i.tb, %bb.i ] ; 3 uses
  %epil.iter304 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter304.next, %bb.i ]
  %i.sx = load <4 x float>, ptr %.097161.us.i.epil, align 1, !tbaa !63
  %i.sy = load <4 x float>, ptr %.0109160.us.i.epil, align 1, !tbaa !63
  %i.sz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sy, <4 x float> nofpclass(nan inf) %i.sx)
  store <4 x float> %i.sz, ptr %.0109160.us.i.epil, align 1, !tbaa !63
  %i.ta = getelementptr i8, ptr %.097161.us.i.epil, i64 16 ; 2 uses
  %i.tb = getelementptr i8, ptr %.0109160.us.i.epil, i64 16 ; 2 uses
  %epil.iter304.next = add i32 %epil.iter304, 1   ; 2 uses
  %epil.iter304.cmp.not = icmp eq i32 %epil.iter304.next, %xtraiter303
  br i1 %epil.iter304.cmp.not, label %..preheader158_crit_edge.us.i, label %bb.i, !llvm.loop !124

..preheader158_crit_edge.us.i:                    ; preds = %bb.i, %..preheader158_crit_edge.us.i.unr-lcssa
  %.lcssa297 = phi ptr [ %i.si, %..preheader158_crit_edge.us.i.unr-lcssa ], [ %i.ta, %bb.i ] ; 5 uses
  %.lcssa296 = phi ptr [ %i.sj, %..preheader158_crit_edge.us.i.unr-lcssa ], [ %i.tb, %bb.i ] ; 6 uses
  br i1 %.not, label %._crit_edge.us.i51, label %.lr.ph167.us.i.preheader

.lr.ph167.us.i.preheader:                         ; preds = %..preheader158_crit_edge.us.i
  br i1 %min.iters.check157, label %.lr.ph167.us.i.preheader295, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph167.us.i.preheader
  %i.tc = ptrtoaddr ptr %.lcssa296 to i64
  %.reass = add i64 %i.tc, %invariant.op          ; 2 uses
  %i.td = getelementptr i8, ptr %i.rj, i64 %.reass
  %i.te = mul i64 %indvars.iv226.i, %i.qv
  %i.tf = getelementptr i8, ptr %i.rk, i64 %i.te
  %i.tg = getelementptr i8, ptr %i.tf, i64 %.reass
  %bound0 = icmp ult ptr %.lcssa296, %i.tg
  %bound1 = icmp ult ptr %.lcssa297, %i.td
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph167.us.i.preheader295, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck
  %i.th = getelementptr i8, ptr %.lcssa297, i64 %i.rl
  %i.ti = getelementptr i8, ptr %.lcssa296, i64 %i.rl
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next167, %vector.body160 ] ; 2 uses
  %i.tj = shl i64 %index161, 2                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %.lcssa297, i64 %i.tj ; 2 uses
  %next.gep163 = getelementptr i8, ptr %.lcssa296, i64 %i.tj ; 3 uses
  %i.tk = getelementptr i8, ptr %next.gep163, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep163, align 4, !tbaa !66, !alias.scope !144, !noalias !145 ; 2 uses
  %wide.load164 = load <4 x float>, ptr %i.tk, align 4, !tbaa !66, !alias.scope !144, !noalias !145 ; 2 uses
  %i.tl = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load165 = load <4 x float>, ptr %next.gep162, align 4, !tbaa !66, !alias.scope !145 ; 2 uses
  %wide.load166 = load <4 x float>, ptr %i.tl, align 4, !tbaa !66, !alias.scope !145 ; 2 uses
  %i.tm = fcmp fast olt <4 x float> %wide.load, %wide.load165
  %i.tn = fcmp fast olt <4 x float> %wide.load164, %wide.load166
  %i.to = select <4 x i1> %i.tm, <4 x float> %wide.load165, <4 x float> %wide.load
  %i.tp = select <4 x i1> %i.tn, <4 x float> %wide.load166, <4 x float> %wide.load164
  store <4 x float> %i.to, ptr %next.gep163, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  store <4 x float> %i.tp, ptr %i.tk, align 4, !tbaa !66, !alias.scope !144, !noalias !145
  %index.next167 = add nuw i64 %index161, 8       ; 2 uses
  %i.tq = icmp eq i64 %index.next167, %n.vec159
  br i1 %i.tq, label %middle.block168, label %vector.body160, !llvm.loop !128

middle.block168:                                  ; preds = %vector.body160
  br i1 %cmp.n169, label %._crit_edge.us.i51, label %.lr.ph167.us.i.preheader295

.lr.ph167.us.i.preheader295:                      ; preds = %vector.memcheck, %.lr.ph167.us.i.preheader, %middle.block168
  %.1166.us.i.ph = phi ptr [ %.lcssa297, %vector.memcheck ], [ %.lcssa297, %.lr.ph167.us.i.preheader ], [ %i.th, %middle.block168 ] ; 3 uses
  %.1110165.us.i.ph = phi ptr [ %.lcssa296, %vector.memcheck ], [ %.lcssa296, %.lr.ph167.us.i.preheader ], [ %i.ti, %middle.block168 ] ; 4 uses
  %.1112164.us.i.ph = phi i32 [ %i.qu, %vector.memcheck ], [ %i.qu, %.lr.ph167.us.i.preheader ], [ %i.rn, %middle.block168 ] ; 4 uses
  %i.tr = sub i32 %4, %.1112164.us.i.ph
  %.neg = add i32 %.1112164.us.i.ph, 1
  %xtraiter311 = and i32 %i.tr, 1
  %lcmp.mod312.not = icmp eq i32 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph167.us.i.prol.loopexit, label %.lr.ph167.us.i.prol

.lr.ph167.us.i.prol:                              ; preds = %.lr.ph167.us.i.preheader295
  %i.ts = load float, ptr %.1110165.us.i.ph, align 4, !tbaa !66 ; 2 uses
  %i.tt = load float, ptr %.1166.us.i.ph, align 4, !tbaa !66 ; 2 uses
  %i.tu = fcmp fast olt float %i.ts, %i.tt
  %i.tv = select i1 %i.tu, float %i.tt, float %i.ts
  store float %i.tv, ptr %.1110165.us.i.ph, align 4, !tbaa !66
  %i.tw = getelementptr inbounds nuw i8, ptr %.1166.us.i.ph, i64 4
  %i.tx = getelementptr inbounds nuw i8, ptr %.1110165.us.i.ph, i64 4
  %i.ty = add nuw nsw i32 %.1112164.us.i.ph, 1
  br label %.lr.ph167.us.i.prol.loopexit

.lr.ph167.us.i.prol.loopexit:                     ; preds = %.lr.ph167.us.i.prol, %.lr.ph167.us.i.preheader295
  %.1166.us.i.unr = phi ptr [ %.1166.us.i.ph, %.lr.ph167.us.i.preheader295 ], [ %i.tw, %.lr.ph167.us.i.prol ]
  %.1110165.us.i.unr = phi ptr [ %.1110165.us.i.ph, %.lr.ph167.us.i.preheader295 ], [ %i.tx, %.lr.ph167.us.i.prol ]
  %.1112164.us.i.unr = phi i32 [ %.1112164.us.i.ph, %.lr.ph167.us.i.preheader295 ], [ %i.ty, %.lr.ph167.us.i.prol ]
  %i.tz = icmp eq i32 %4, %.neg
  br i1 %i.tz, label %._crit_edge.us.i51, label %.lr.ph167.us.i

.lr.ph170.split.i:                                ; preds = %.lr.ph170.i
  %i.ua = icmp sgt i32 %4, 0
  br i1 %i.ua, label %.preheader158.i.preheader, label %.lr.ph186.i

.preheader158.i.preheader:                        ; preds = %.lr.ph170.split.i
  %exitcond.not.i46 = icmp eq i32 %4, 1
  %i.ub = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %exitcond.not.i46.1 = icmp eq i32 %4, 2
  %i.uc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.promoted = load float, ptr %5, align 4, !tbaa !66
  br label %.preheader158.i

.lr.ph186.i:                                      ; preds = %._crit_edge.i47, %._crit_edge.us.i51, %.lr.ph170.split.i
  %i.ud = and i32 %4, -4
  br label %bb.l

.preheader158.i:                                  ; preds = %.preheader158.i.preheader, %._crit_edge.i47
  %i.ue = phi float [ %i.uj, %._crit_edge.i47 ], [ %.promoted, %.preheader158.i.preheader ] ; 2 uses
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i48, %._crit_edge.i47 ], [ 0, %.preheader158.i.preheader ] ; 2 uses
  %i.uf = mul i64 %indvars.iv.i45, %3
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.uf ; 3 uses
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !66 ; 2 uses
  %i.ui = fcmp fast olt float %i.ue, %i.uh
  %i.uj = select i1 %i.ui, float %i.uh, float %i.ue ; 2 uses
  store float %i.uj, ptr %5, align 4, !tbaa !66
  br i1 %exitcond.not.i46, label %._crit_edge.i47, label %bb.j

bb.j:                                             ; preds = %.preheader158.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.ul = load float, ptr %i.ub, align 4, !tbaa !66 ; 2 uses
  %i.um = load float, ptr %i.uk, align 4, !tbaa !66 ; 2 uses
  %i.un = fcmp fast olt float %i.ul, %i.um
  %i.uo = select i1 %i.un, float %i.um, float %i.ul
  store float %i.uo, ptr %i.ub, align 4, !tbaa !66
  br i1 %exitcond.not.i46.1, label %._crit_edge.i47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.up = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.uq = load float, ptr %i.uc, align 4, !tbaa !66 ; 2 uses
  %i.ur = load float, ptr %i.up, align 4, !tbaa !66 ; 2 uses
  %i.us = fcmp fast olt float %i.uq, %i.ur
  %i.ut = select i1 %i.us, float %i.ur, float %i.uq
  store float %i.ut, ptr %i.uc, align 4, !tbaa !66
  br label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %bb.k, %bb.j, %.preheader158.i
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond224.not.i = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count229.i
  br i1 %exitcond224.not.i, label %.lr.ph186.i, label %.preheader158.i, !llvm.loop !6

.preheader155.i:                                  ; preds = %._crit_edge184.i, %bb.h
  br i1 %i.b, label %.lr.ph189.i.preheader, label %.preheader154.i

.lr.ph189.i.preheader:                            ; preds = %.preheader155.i
  %i.uu = add nsw i32 %4, -4                      ; 2 uses
  %i.uv = lshr i32 %i.uu, 2                       ; 2 uses
  %i.uw = add nuw nsw i32 %i.uv, 1                ; 2 uses
  %i.ux = icmp eq i32 %i.uv, 0
  br i1 %i.ux, label %.lr.ph189.i.epil.preheader, label %.lr.ph189.i.preheader.new

.lr.ph189.i.preheader.new:                        ; preds = %.lr.ph189.i.preheader
  %unroll_iter320 = and i32 %i.uw, 2147483646
  br label %.lr.ph189.i

bb.l:                                             ; preds = %._crit_edge184.i, %.lr.ph186.i
  %indvars.iv232.i = phi i64 [ 0, %.lr.ph186.i ], [ %indvars.iv.next233.i, %._crit_edge184.i ] ; 2 uses
  %i.uy = mul i64 %indvars.iv232.i, %3
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.uy ; 2 uses
  br i1 %i.b, label %.lr.ph.i43, label %.preheader156.i

.preheader156.i:                                  ; preds = %.lr.ph.i43, %bb.l
  %.0120.lcssa.i = phi ptr [ %i.uz, %bb.l ], [ %i.xq, %.lr.ph.i43 ] ; 7 uses
  %.0118.lcssa.i = phi ptr [ %5, %bb.l ], [ %i.xr, %.lr.ph.i43 ] ; 7 uses
  %.0116.lcssa.i = phi ptr [ %6, %bb.l ], [ %i.xs, %.lr.ph.i43 ] ; 7 uses
  %.0114.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.ud, %.lr.ph.i43 ] ; 6 uses
  %i.va = icmp slt i32 %.0114.lcssa.i, %4
  br i1 %i.va, label %.lr.ph183.i.preheader, label %._crit_edge184.i

.lr.ph183.i.preheader:                            ; preds = %.preheader156.i
  %i.vb = xor i32 %.0114.lcssa.i, -1
  %i.vc = add i32 %4, %i.vb                       ; 2 uses
  %i.vd = zext i32 %i.vc to i64
  %i.ve = add nuw nsw i64 %i.vd, 1                ; 2 uses
  %min.iters.check191 = icmp ult i32 %i.vc, 3
  br i1 %min.iters.check191, label %.lr.ph183.i.preheader291, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph183.i.preheader
  %7 = xor i32 %.0114.lcssa.i, -1
  %8 = add i32 %4, %7
  %9 = zext i32 %8 to i64
  %i.vf = shl nuw nsw i64 %9, 2
  %i.vg = add nuw nsw i64 %i.vf, 4                ; 3 uses
  %i.vh = getelementptr i8, ptr %.0120.lcssa.i, i64 %i.vg ; 2 uses
  %i.vi = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.vg ; 2 uses
  %i.vj = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.vg ; 2 uses
  %bound0193 = icmp ult ptr %.0120.lcssa.i, %i.vi
  %bound1194 = icmp ult ptr %.0116.lcssa.i, %i.vh
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0196 = icmp ult ptr %.0120.lcssa.i, %i.vj
  %bound1197 = icmp ult ptr %.0118.lcssa.i, %i.vh
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx = or i1 %found.conflict195, %found.conflict198
  %bound0199 = icmp ult ptr %.0116.lcssa.i, %i.vj
  %bound1200 = icmp ult ptr %.0118.lcssa.i, %i.vi
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx, %found.conflict201
  br i1 %conflict.rdx202, label %.lr.ph183.i.preheader291, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck192
  %n.vec204 = and i64 %i.ve, 8589934588           ; 4 uses
  %i.vk = trunc i64 %n.vec204 to i32
  %i.vl = add i32 %.0114.lcssa.i, %i.vk
  %i.vm = shl nuw nsw i64 %n.vec204, 2            ; 3 uses
  %i.vn = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.vm
  %i.vo = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.vm
  %i.vp = getelementptr i8, ptr %.0120.lcssa.i, i64 %i.vm
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next213, %vector.body205 ] ; 2 uses
  %i.vq = shl i64 %index206, 2                    ; 3 uses
  %next.gep207 = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.vq ; 2 uses
  %next.gep208 = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.vq
  %next.gep209 = getelementptr i8, ptr %.0120.lcssa.i, i64 %i.vq ; 2 uses
  %wide.load210 = load <4 x float>, ptr %next.gep209, align 4, !tbaa !66, !alias.scope !146, !noalias !147
  %wide.load211 = load <4 x float>, ptr %next.gep208, align 4, !tbaa !66, !alias.scope !148
  %i.vr = fsub fast <4 x float> %wide.load210, %wide.load211
  %i.vs = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.vr) ; 2 uses
  store <4 x float> %i.vs, ptr %next.gep209, align 4, !tbaa !66, !alias.scope !146, !noalias !147
  %wide.load212 = load <4 x float>, ptr %next.gep207, align 4, !tbaa !66, !alias.scope !149, !noalias !148
  %i.vt = fadd fast <4 x float> %wide.load212, %i.vs
  store <4 x float> %i.vt, ptr %next.gep207, align 4, !tbaa !66, !alias.scope !149, !noalias !148
  %index.next213 = add nuw i64 %index206, 4       ; 2 uses
  %i.vu = icmp eq i64 %index.next213, %n.vec204
  br i1 %i.vu, label %middle.block214, label %vector.body205, !llvm.loop !133

middle.block214:                                  ; preds = %vector.body205
  %cmp.n215 = icmp eq i64 %i.ve, %n.vec204
  br i1 %cmp.n215, label %._crit_edge184.i, label %.lr.ph183.i.preheader291

.lr.ph183.i.preheader291:                         ; preds = %vector.memcheck192, %.lr.ph183.i.preheader, %middle.block214
  %.1115182.i.ph = phi i32 [ %.0114.lcssa.i, %vector.memcheck192 ], [ %.0114.lcssa.i, %.lr.ph183.i.preheader ], [ %i.vl, %middle.block214 ] ; 4 uses
  %.1117181.i.ph = phi ptr [ %.0116.lcssa.i, %vector.memcheck192 ], [ %.0116.lcssa.i, %.lr.ph183.i.preheader ], [ %i.vn, %middle.block214 ] ; 4 uses
  %.1119180.i.ph = phi ptr [ %.0118.lcssa.i, %vector.memcheck192 ], [ %.0118.lcssa.i, %.lr.ph183.i.preheader ], [ %i.vo, %middle.block214 ] ; 3 uses
  %.1121179.i.ph = phi ptr [ %.0120.lcssa.i, %vector.memcheck192 ], [ %.0120.lcssa.i, %.lr.ph183.i.preheader ], [ %i.vp, %middle.block214 ] ; 4 uses
  %i.vv = sub i32 %4, %.1115182.i.ph
  %.neg345 = add i32 %.1115182.i.ph, 1
  %xtraiter313 = and i32 %i.vv, 1
  %lcmp.mod314.not = icmp eq i32 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %.lr.ph183.i.prol.loopexit, label %.lr.ph183.i.prol

.lr.ph183.i.prol:                                 ; preds = %.lr.ph183.i.preheader291
  %i.vw = load float, ptr %.1121179.i.ph, align 4, !tbaa !66
  %i.vx = load float, ptr %.1119180.i.ph, align 4, !tbaa !66
  %i.vy = fsub fast float %i.vw, %i.vx
  %i.vz = tail call fast float @llvm.exp.f32(float %i.vy) ; 2 uses
  store float %i.vz, ptr %.1121179.i.ph, align 4, !tbaa !66
  %i.wa = load float, ptr %.1117181.i.ph, align 4, !tbaa !66
  %i.wb = fadd fast float %i.wa, %i.vz
  store float %i.wb, ptr %.1117181.i.ph, align 4, !tbaa !66
  %i.wc = getelementptr inbounds nuw i8, ptr %.1121179.i.ph, i64 4
  %i.wd = getelementptr inbounds nuw i8, ptr %.1119180.i.ph, i64 4
  %i.we = getelementptr inbounds nuw i8, ptr %.1117181.i.ph, i64 4
  %i.wf = add nuw nsw i32 %.1115182.i.ph, 1
  br label %.lr.ph183.i.prol.loopexit

.lr.ph183.i.prol.loopexit:                        ; preds = %.lr.ph183.i.prol, %.lr.ph183.i.preheader291
  %.1115182.i.unr = phi i32 [ %.1115182.i.ph, %.lr.ph183.i.preheader291 ], [ %i.wf, %.lr.ph183.i.prol ]
  %.1117181.i.unr = phi ptr [ %.1117181.i.ph, %.lr.ph183.i.preheader291 ], [ %i.we, %.lr.ph183.i.prol ]
  %.1119180.i.unr = phi ptr [ %.1119180.i.ph, %.lr.ph183.i.preheader291 ], [ %i.wd, %.lr.ph183.i.prol ]
  %.1121179.i.unr = phi ptr [ %.1121179.i.ph, %.lr.ph183.i.preheader291 ], [ %i.wc, %.lr.ph183.i.prol ]
  %i.wg = icmp eq i32 %4, %.neg345
  br i1 %i.wg, label %._crit_edge184.i, label %.lr.ph183.i

.lr.ph.i43:                                       ; preds = %bb.l, %.lr.ph.i43
  %.0114174.i = phi i32 [ %i.xt, %.lr.ph.i43 ], [ 0, %bb.l ]
  %.0116173.i = phi ptr [ %i.xs, %.lr.ph.i43 ], [ %6, %bb.l ] ; 3 uses
  %.0118172.i = phi ptr [ %i.xr, %.lr.ph.i43 ], [ %5, %bb.l ] ; 2 uses
  %.0120171.i = phi ptr [ %i.xq, %.lr.ph.i43 ], [ %i.uz, %bb.l ] ; 3 uses
  %i.wh = load <4 x float>, ptr %.0120171.i, align 1, !tbaa !63
  %i.wi = load <4 x float>, ptr %.0118172.i, align 1, !tbaa !63
  %i.wj = load <4 x float>, ptr %.0116173.i, align 1, !tbaa !63
  %i.wk = fsub fast <4 x float> %i.wh, %i.wi
  %i.wl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.wk, <4 x float> splat (float f0x42B0C0A5))
  %i.wm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wn = fmul fast <4 x float> %i.wm, splat (float f0x3FB8AA3B)
  %i.wo = fadd fast <4 x float> %i.wn, splat (float 5.000000e-01) ; 2 uses
  %i.wp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wo)
  %i.wq = sitofp fast <4 x i32> %i.wp to <4 x float> ; 2 uses
  %i.wr = fcmp fast olt <4 x float> %i.wo, %i.wq
  %i.ws = select <4 x i1> %i.wr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.wt = fsub fast <4 x float> %i.wq, %i.ws      ; 2 uses
  %i.wu = fmul fast <4 x float> %i.wt, splat (float f0x3F317218)
  %i.wv = fsub fast <4 x float> %i.wm, %i.wu      ; 8 uses
  %i.ww = fmul fast <4 x float> %i.wv, %i.wv
  %i.wx = fmul fast <4 x float> %i.wv, splat (float f0x39506967)
  %i.wy = fadd fast <4 x float> %i.wx, splat (float f0x3AB743CE)
  %i.wz = fmul fast <4 x float> %i.wy, %i.wv
  %i.xa = fadd fast <4 x float> %i.wz, splat (float f0x3C088908)
  %i.xb = fmul fast <4 x float> %i.xa, %i.wv
  %i.xc = fadd fast <4 x float> %i.xb, splat (float f0x3D2AA9C1)
  %i.xd = fmul fast <4 x float> %i.xc, %i.wv
  %i.xe = fadd fast <4 x float> %i.xd, splat (float f0x3E2AAAAA)
  %i.xf = fmul fast <4 x float> %i.xe, %i.wv
  %i.xg = fadd fast <4 x float> %i.xf, splat (float 5.000000e-01)
  %i.xh = fmul fast <4 x float> %i.ww, %i.xg
  %i.xi = fadd fast <4 x float> %i.wv, splat (float 1.000000e+00)
  %i.xj = fadd fast <4 x float> %i.xi, %i.xh
  %i.xk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wt)
  %i.xl = shl <4 x i32> %i.xk, splat (i32 23)
  %i.xm = add <4 x i32> %i.xl, splat (i32 1065353216)
  %i.xn = bitcast <4 x i32> %i.xm to <4 x float>
  %i.xo = fmul fast <4 x float> %i.xj, %i.xn      ; 2 uses
  store <4 x float> %i.xo, ptr %.0120171.i, align 1, !tbaa !63
  %i.xp = fadd fast <4 x float> %i.xo, %i.wj
  store <4 x float> %i.xp, ptr %.0116173.i, align 1, !tbaa !63
  %i.xq = getelementptr inbounds nuw i8, ptr %.0120171.i, i64 16 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.0118172.i, i64 16 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.0116173.i, i64 16 ; 2 uses
  %i.xt = add nuw nsw i32 %.0114174.i, 4          ; 2 uses
  %i.xu = or disjoint i32 %i.xt, 3
  %i.xv = icmp slt i32 %i.xu, %4
  br i1 %i.xv, label %.lr.ph.i43, label %.preheader156.i, !llvm.loop !7

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i
  %.1115182.i = phi i32 [ %i.yo, %.lr.ph183.i ], [ %.1115182.i.unr, %.lr.ph183.i.prol.loopexit ]
  %.1117181.i = phi ptr [ %i.yn, %.lr.ph183.i ], [ %.1117181.i.unr, %.lr.ph183.i.prol.loopexit ] ; 4 uses
  %.1119180.i = phi ptr [ %i.ym, %.lr.ph183.i ], [ %.1119180.i.unr, %.lr.ph183.i.prol.loopexit ] ; 3 uses
  %.1121179.i = phi ptr [ %i.yl, %.lr.ph183.i ], [ %.1121179.i.unr, %.lr.ph183.i.prol.loopexit ] ; 4 uses
  %i.xw = load float, ptr %.1121179.i, align 4, !tbaa !66
  %i.xx = load float, ptr %.1119180.i, align 4, !tbaa !66
  %i.xy = fsub fast float %i.xw, %i.xx
  %i.xz = tail call fast float @llvm.exp.f32(float %i.xy) ; 2 uses
  store float %i.xz, ptr %.1121179.i, align 4, !tbaa !66
  %i.ya = load float, ptr %.1117181.i, align 4, !tbaa !66
  %i.yb = fadd fast float %i.ya, %i.xz
  store float %i.yb, ptr %.1117181.i, align 4, !tbaa !66
  %i.yc = getelementptr inbounds nuw i8, ptr %.1121179.i, i64 4 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.1119180.i, i64 4
  %i.ye = getelementptr inbounds nuw i8, ptr %.1117181.i, i64 4 ; 2 uses
  %i.yf = load float, ptr %i.yc, align 4, !tbaa !66
  %i.yg = load float, ptr %i.yd, align 4, !tbaa !66
  %i.yh = fsub fast float %i.yf, %i.yg
  %i.yi = tail call fast float @llvm.exp.f32(float %i.yh) ; 2 uses
  store float %i.yi, ptr %i.yc, align 4, !tbaa !66
  %i.yj = load float, ptr %i.ye, align 4, !tbaa !66
  %i.yk = fadd fast float %i.yj, %i.yi
  store float %i.yk, ptr %i.ye, align 4, !tbaa !66
  %i.yl = getelementptr inbounds nuw i8, ptr %.1121179.i, i64 8
  %i.ym = getelementptr inbounds nuw i8, ptr %.1119180.i, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %.1117181.i, i64 8
  %i.yo = add nuw nsw i32 %.1115182.i, 2          ; 2 uses
  %exitcond231.not.i.1 = icmp eq i32 %i.yo, %4
  br i1 %exitcond231.not.i.1, label %._crit_edge184.i, label %.lr.ph183.i, !llvm.loop !134

._crit_edge184.i:                                 ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i, %middle.block214, %.preheader156.i
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count229.i
  br i1 %exitcond236.not.i, label %.preheader155.i, label %bb.l, !llvm.loop !8

.preheader154.loopexit.i.unr-lcssa:               ; preds = %.lr.ph189.i
  %i.yp = and i32 %i.uu, 4
  %lcmp.mod317.not.not = icmp eq i32 %i.yp, 0
  br i1 %lcmp.mod317.not.not, label %.lr.ph189.i.epil.preheader, label %.preheader154.loopexit.i

.lr.ph189.i.epil.preheader:                       ; preds = %.preheader154.loopexit.i.unr-lcssa, %.lr.ph189.i.preheader
  %.0107187.i.epil.init = phi ptr [ %6, %.lr.ph189.i.preheader ], [ %i.zu, %.preheader154.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod319 = trunc i32 %i.uw to i1
  tail call void @llvm.assume(i1 %lcmp.mod319)
  %i.yq = load <4 x float>, ptr %.0107187.i.epil.init, align 1, !tbaa !63 ; 2 uses
  %i.yr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.yq) ; 2 uses
  %i.ys = fmul fast <4 x float> %i.yr, %i.yq
  %i.yt = fsub fast <4 x float> splat (float 2.000000e+00), %i.ys
  %i.yu = fmul fast <4 x float> %i.yt, %i.yr
  store <4 x float> %i.yu, ptr %.0107187.i.epil.init, align 1, !tbaa !63
  %i.yv = getelementptr inbounds nuw i8, ptr %.0107187.i.epil.init, i64 16
  br label %.preheader154.loopexit.i

.preheader154.loopexit.i:                         ; preds = %.preheader154.loopexit.i.unr-lcssa, %.lr.ph189.i.epil.preheader
  %.lcssa290 = phi ptr [ %i.zu, %.preheader154.loopexit.i.unr-lcssa ], [ %i.yv, %.lr.ph189.i.epil.preheader ]
  %i.yw = and i32 %4, 2147483644
  br label %.preheader154.i

.preheader154.i:                                  ; preds = %.preheader154.loopexit.i, %.preheader155.i
  %.0107.lcssa.i = phi ptr [ %6, %.preheader155.i ], [ %.lcssa290, %.preheader154.loopexit.i ] ; 3 uses
  %.0105.lcssa.i = phi i32 [ 0, %.preheader155.i ], [ %i.yw, %.preheader154.loopexit.i ] ; 4 uses
  %i.yx = icmp slt i32 %.0105.lcssa.i, %4
  br i1 %i.yx, label %.lr.ph194.i.preheader, label %.preheader153.i

.lr.ph194.i.preheader:                            ; preds = %.preheader154.i
  %i.yy = xor i32 %.0105.lcssa.i, -1
  %i.yz = add i32 %4, %i.yy                       ; 2 uses
  %i.za = zext i32 %i.yz to i64
  %i.zb = add nuw nsw i64 %i.za, 1                ; 2 uses
  %min.iters.check221 = icmp ult i32 %i.yz, 3
  br i1 %min.iters.check221, label %.lr.ph194.i.preheader289, label %vector.ph222

vector.ph222:                                     ; preds = %.lr.ph194.i.preheader
  %n.vec223 = and i64 %i.zb, 8589934588           ; 4 uses
  %i.zc = trunc i64 %n.vec223 to i32
  %i.zd = add i32 %.0105.lcssa.i, %i.zc
  %i.ze = shl nuw nsw i64 %n.vec223, 2
  %i.zf = getelementptr i8, ptr %.0107.lcssa.i, i64 %i.ze
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next228, %vector.body224 ] ; 2 uses
  %i.zg = shl i64 %index225, 2
  %next.gep226 = getelementptr i8, ptr %.0107.lcssa.i, i64 %i.zg ; 2 uses
  %wide.load227 = load <4 x float>, ptr %next.gep226, align 4, !tbaa !66
  %i.zh = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load227
  store <4 x float> %i.zh, ptr %next.gep226, align 4, !tbaa !66
  %index.next228 = add nuw i64 %index225, 4       ; 2 uses
  %i.zi = icmp eq i64 %index.next228, %n.vec223
  br i1 %i.zi, label %middle.block229, label %vector.body224, !llvm.loop !135

middle.block229:                                  ; preds = %vector.body224
  %cmp.n230 = icmp eq i64 %i.zb, %n.vec223
  br i1 %cmp.n230, label %.preheader153.i, label %.lr.ph194.i.preheader289

.lr.ph194.i.preheader289:                         ; preds = %.lr.ph194.i.preheader, %middle.block229
  %.1106193.i.ph = phi i32 [ %.0105.lcssa.i, %.lr.ph194.i.preheader ], [ %i.zd, %middle.block229 ]
  %.1108192.i.ph = phi ptr [ %.0107.lcssa.i, %.lr.ph194.i.preheader ], [ %i.zf, %middle.block229 ]
  br label %.lr.ph194.i

.lr.ph189.i:                                      ; preds = %.lr.ph189.i, %.lr.ph189.i.preheader.new
  %.0107187.i = phi ptr [ %6, %.lr.ph189.i.preheader.new ], [ %i.zu, %.lr.ph189.i ] ; 4 uses
  %niter321 = phi i32 [ 0, %.lr.ph189.i.preheader.new ], [ %niter321.next.1, %.lr.ph189.i ]
  %i.zj = load <4 x float>, ptr %.0107187.i, align 1, !tbaa !63 ; 2 uses
  %i.zk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.zj) ; 2 uses
  %i.zl = fmul fast <4 x float> %i.zk, %i.zj
  %i.zm = fsub fast <4 x float> splat (float 2.000000e+00), %i.zl
  %i.zn = fmul fast <4 x float> %i.zm, %i.zk
  store <4 x float> %i.zn, ptr %.0107187.i, align 1, !tbaa !63
  %i.zo = getelementptr inbounds nuw i8, ptr %.0107187.i, i64 16 ; 2 uses
  %i.zp = load <4 x float>, ptr %i.zo, align 1, !tbaa !63 ; 2 uses
  %i.zq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.zp) ; 2 uses
  %i.zr = fmul fast <4 x float> %i.zq, %i.zp
  %i.zs = fsub fast <4 x float> splat (float 2.000000e+00), %i.zr
  %i.zt = fmul fast <4 x float> %i.zs, %i.zq
  store <4 x float> %i.zt, ptr %i.zo, align 1, !tbaa !63
  %i.zu = getelementptr inbounds nuw i8, ptr %.0107187.i, i64 32 ; 3 uses
  %niter321.next.1 = add i32 %niter321, 2         ; 2 uses
  %niter321.ncmp.1.not = icmp eq i32 %niter321.next.1, %unroll_iter320
  br i1 %niter321.ncmp.1.not, label %.preheader154.loopexit.i.unr-lcssa, label %.lr.ph189.i, !llvm.loop !9

.preheader153.i:                                  ; preds = %.lr.ph194.i, %middle.block229, %.preheader154.i
  br i1 %i.qt, label %.lr.ph209.i, label %_ZN4ncnnL13softmax_pack4EPfimiS0_S0_.exit

.lr.ph209.i:                                      ; preds = %.preheader153.i
  %i.zv = and i32 %4, -4                          ; 2 uses
  %wide.trip.count242.i = zext nneg i32 %1 to i64
  %i.zw = add i32 %4, -4                          ; 2 uses
  %i.zx = lshr i32 %i.zw, 2
  %i.zy = add nuw nsw i32 %i.zx, 1                ; 2 uses
  %xtraiter322 = and i32 %i.zy, 3                 ; 3 uses
  %i.zz = icmp ult i32 %i.zw, 12
  %unroll_iter328 = and i32 %i.zy, 2147483644
  %lcmp.mod324.not = icmp eq i32 %xtraiter322, 0
  %lcmp.mod327 = icmp ne i32 %xtraiter322, 0
  br label %bb.m

.lr.ph194.i:                                      ; preds = %.lr.ph194.i.preheader289, %.lr.ph194.i
  %.1106193.i = phi i32 [ %i.aad, %.lr.ph194.i ], [ %.1106193.i.ph, %.lr.ph194.i.preheader289 ]
  %.1108192.i = phi ptr [ %i.aac, %.lr.ph194.i ], [ %.1108192.i.ph, %.lr.ph194.i.preheader289 ] ; 3 uses
  %i.aaa = load float, ptr %.1108192.i, align 4, !tbaa !66
  %i.aab = fdiv fast float 1.000000e+00, %i.aaa
  store float %i.aab, ptr %.1108192.i, align 4, !tbaa !66
  %i.aac = getelementptr inbounds nuw i8, ptr %.1108192.i, i64 4
  %i.aad = add nuw nsw i32 %.1106193.i, 1         ; 2 uses
  %exitcond237.not.i = icmp eq i32 %i.aad, %4
  br i1 %exitcond237.not.i, label %.preheader153.i, label %.lr.ph194.i, !llvm.loop !136

bb.m:                                             ; preds = %._crit_edge207.i, %.lr.ph209.i
  %indvars.iv239.i = phi i64 [ 0, %.lr.ph209.i ], [ %indvars.iv.next240.i, %._crit_edge207.i ] ; 2 uses
  %i.aae = mul i64 %indvars.iv239.i, %3
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aae ; 3 uses
  br i1 %i.b, label %.lr.ph199.i.preheader, label %.preheader.i42

.lr.ph199.i.preheader:                            ; preds = %bb.m
  br i1 %i.zz, label %.lr.ph199.i.epil.preheader, label %.lr.ph199.i

.preheader.i42.loopexit.unr-lcssa:                ; preds = %.lr.ph199.i
  br i1 %lcmp.mod324.not, label %.preheader.i42, label %.lr.ph199.i.epil.preheader

.lr.ph199.i.epil.preheader:                       ; preds = %.preheader.i42.loopexit.unr-lcssa, %.lr.ph199.i.preheader
  %.0100196.i.epil.init = phi ptr [ %6, %.lr.ph199.i.preheader ], [ %i.ach, %.preheader.i42.loopexit.unr-lcssa ]
  %.0102195.i.epil.init = phi ptr [ %i.aaf, %.lr.ph199.i.preheader ], [ %i.acg, %.preheader.i42.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod327)
  br label %.lr.ph199.i.epil

.lr.ph199.i.epil:                                 ; preds = %.lr.ph199.i.epil, %.lr.ph199.i.epil.preheader
  %.0100196.i.epil = phi ptr [ %i.aak, %.lr.ph199.i.epil ], [ %.0100196.i.epil.init, %.lr.ph199.i.epil.preheader ] ; 2 uses
  %.0102195.i.epil = phi ptr [ %i.aaj, %.lr.ph199.i.epil ], [ %.0102195.i.epil.init, %.lr.ph199.i.epil.preheader ] ; 3 uses
  %epil.iter323 = phi i32 [ %epil.iter323.next, %.lr.ph199.i.epil ], [ 0, %.lr.ph199.i.epil.preheader ]
  %i.aag = load <4 x float>, ptr %.0102195.i.epil, align 1, !tbaa !63
  %i.aah = load <4 x float>, ptr %.0100196.i.epil, align 1, !tbaa !63
  %i.aai = fmul fast <4 x float> %i.aah, %i.aag
  store <4 x float> %i.aai, ptr %.0102195.i.epil, align 1, !tbaa !63
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0102195.i.epil, i64 16 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.0100196.i.epil, i64 16 ; 2 uses
  %epil.iter323.next = add i32 %epil.iter323, 1   ; 2 uses
  %epil.iter323.cmp.not = icmp eq i32 %epil.iter323.next, %xtraiter322
  br i1 %epil.iter323.cmp.not, label %.preheader.i42, label %.lr.ph199.i.epil, !llvm.loop !137

.preheader.i42:                                   ; preds = %.preheader.i42.loopexit.unr-lcssa, %.lr.ph199.i.epil, %bb.m
  %.0102.lcssa.i = phi ptr [ %i.aaf, %bb.m ], [ %i.acg, %.preheader.i42.loopexit.unr-lcssa ], [ %i.aaj, %.lr.ph199.i.epil ] ; 6 uses
  %.0100.lcssa.i = phi ptr [ %6, %bb.m ], [ %i.ach, %.preheader.i42.loopexit.unr-lcssa ], [ %i.aak, %.lr.ph199.i.epil ] ; 6 uses
  %.098.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.zv, %.lr.ph199.i.epil ], [ %i.zv, %.preheader.i42.loopexit.unr-lcssa ] ; 6 uses
  %i.aal = icmp slt i32 %.098.lcssa.i, %4
  br i1 %i.aal, label %.lr.ph206.i.preheader, label %._crit_edge207.i

.lr.ph206.i.preheader:                            ; preds = %.preheader.i42
  %i.aam = xor i32 %.098.lcssa.i, -1
  %i.aan = add i32 %4, %i.aam                     ; 2 uses
  %i.aao = zext i32 %i.aan to i64
  %i.aap = add nuw nsw i64 %i.aao, 1              ; 2 uses
  %min.iters.check242 = icmp ult i32 %i.aan, 7
  br i1 %min.iters.check242, label %.lr.ph206.i.preheader285, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph206.i.preheader
  %10 = xor i32 %.098.lcssa.i, -1
  %11 = add i32 %4, %10
  %12 = zext i32 %11 to i64
  %i.aaq = shl nuw nsw i64 %12, 2
  %i.aar = add nuw nsw i64 %i.aaq, 4              ; 2 uses
  %i.aas = getelementptr i8, ptr %.0102.lcssa.i, i64 %i.aar
  %i.aat = getelementptr i8, ptr %.0100.lcssa.i, i64 %i.aar
  %bound0244 = icmp ult ptr %.0102.lcssa.i, %i.aat
  %bound1245 = icmp ult ptr %.0100.lcssa.i, %i.aas
  %found.conflict246 = and i1 %bound0244, %bound1245
  br i1 %found.conflict246, label %.lr.ph206.i.preheader285, label %vector.ph247

vector.ph247:                                     ; preds = %vector.memcheck243
  %n.vec248 = and i64 %i.aap, 8589934584          ; 4 uses
  %i.aau = trunc i64 %n.vec248 to i32
  %i.aav = add i32 %.098.lcssa.i, %i.aau
  %i.aaw = shl nuw nsw i64 %n.vec248, 2           ; 2 uses
  %i.aax = getelementptr i8, ptr %.0100.lcssa.i, i64 %i.aaw
  %i.aay = getelementptr i8, ptr %.0102.lcssa.i, i64 %i.aaw
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next257, %vector.body249 ] ; 2 uses
  %i.aaz = shl i64 %index250, 2                   ; 2 uses
  %next.gep251 = getelementptr i8, ptr %.0100.lcssa.i, i64 %i.aaz ; 2 uses
  %next.gep252 = getelementptr i8, ptr %.0102.lcssa.i, i64 %i.aaz ; 3 uses
  %i.aba = getelementptr i8, ptr %next.gep251, i64 16
  %wide.load253 = load <4 x float>, ptr %next.gep251, align 4, !tbaa !66, !alias.scope !150
  %wide.load254 = load <4 x float>, ptr %i.aba, align 4, !tbaa !66, !alias.scope !150
  %i.abb = getelementptr i8, ptr %next.gep252, i64 16 ; 2 uses
  %wide.load255 = load <4 x float>, ptr %next.gep252, align 4, !tbaa !66, !alias.scope !151, !noalias !150
  %wide.load256 = load <4 x float>, ptr %i.abb, align 4, !tbaa !66, !alias.scope !151, !noalias !150
  %i.abc = fmul fast <4 x float> %wide.load255, %wide.load253
  %i.abd = fmul fast <4 x float> %wide.load256, %wide.load254
  store <4 x float> %i.abc, ptr %next.gep252, align 4, !tbaa !66, !alias.scope !151, !noalias !150
  store <4 x float> %i.abd, ptr %i.abb, align 4, !tbaa !66, !alias.scope !151, !noalias !150
  %index.next257 = add nuw i64 %index250, 8       ; 2 uses
  %i.abe = icmp eq i64 %index.next257, %n.vec248
  br i1 %i.abe, label %middle.block258, label %vector.body249, !llvm.loop !141

middle.block258:                                  ; preds = %vector.body249
  %cmp.n259 = icmp eq i64 %i.aap, %n.vec248
  br i1 %cmp.n259, label %._crit_edge207.i, label %.lr.ph206.i.preheader285

.lr.ph206.i.preheader285:                         ; preds = %vector.memcheck243, %.lr.ph206.i.preheader, %middle.block258
  %.199205.i.ph = phi i32 [ %.098.lcssa.i, %vector.memcheck243 ], [ %.098.lcssa.i, %.lr.ph206.i.preheader ], [ %i.aav, %middle.block258 ] ; 4 uses
  %.1101204.i.ph = phi ptr [ %.0100.lcssa.i, %vector.memcheck243 ], [ %.0100.lcssa.i, %.lr.ph206.i.preheader ], [ %i.aax, %middle.block258 ] ; 2 uses
  %.1103203.i.ph = phi ptr [ %.0102.lcssa.i, %vector.memcheck243 ], [ %.0102.lcssa.i, %.lr.ph206.i.preheader ], [ %i.aay, %middle.block258 ] ; 2 uses
  %i.abf = sub i32 %4, %.199205.i.ph
  %xtraiter330 = and i32 %i.abf, 3                ; 2 uses
  %lcmp.mod331.not = icmp eq i32 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.lr.ph206.i.prol.loopexit, label %.lr.ph206.i.prol

.lr.ph206.i.prol:                                 ; preds = %.lr.ph206.i.preheader285, %.lr.ph206.i.prol
  %.199205.i.prol = phi i32 [ %i.abl, %.lr.ph206.i.prol ], [ %.199205.i.ph, %.lr.ph206.i.preheader285 ]
  %.1101204.i.prol = phi ptr [ %i.abk, %.lr.ph206.i.prol ], [ %.1101204.i.ph, %.lr.ph206.i.preheader285 ] ; 2 uses
  %.1103203.i.prol = phi ptr [ %i.abj, %.lr.ph206.i.prol ], [ %.1103203.i.ph, %.lr.ph206.i.preheader285 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph206.i.prol ], [ 0, %.lr.ph206.i.preheader285 ]
  %i.abg = load float, ptr %.1101204.i.prol, align 4, !tbaa !66
  %i.abh = load float, ptr %.1103203.i.prol, align 4, !tbaa !66
  %i.abi = fmul fast float %i.abh, %i.abg
  store float %i.abi, ptr %.1103203.i.prol, align 4, !tbaa !66
  %i.abj = getelementptr inbounds nuw i8, ptr %.1103203.i.prol, i64 4 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.1101204.i.prol, i64 4 ; 2 uses
  %i.abl = add nuw nsw i32 %.199205.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter330
  br i1 %prol.iter.cmp.not, label %.lr.ph206.i.prol.loopexit, label %.lr.ph206.i.prol, !llvm.loop !142

.lr.ph206.i.prol.loopexit:                        ; preds = %.lr.ph206.i.prol, %.lr.ph206.i.preheader285
  %.199205.i.unr = phi i32 [ %.199205.i.ph, %.lr.ph206.i.preheader285 ], [ %i.abl, %.lr.ph206.i.prol ]
  %.1101204.i.unr = phi ptr [ %.1101204.i.ph, %.lr.ph206.i.preheader285 ], [ %i.abk, %.lr.ph206.i.prol ]
  %.1103203.i.unr = phi ptr [ %.1103203.i.ph, %.lr.ph206.i.preheader285 ], [ %i.abj, %.lr.ph206.i.prol ]
  %i.abm = sub i32 %.199205.i.ph, %4
  %i.abn = icmp ugt i32 %i.abm, -4
  br i1 %i.abn, label %._crit_edge207.i, label %.lr.ph206.i

.lr.ph199.i:                                      ; preds = %.lr.ph199.i.preheader, %.lr.ph199.i
  %.0100196.i = phi ptr [ %i.ach, %.lr.ph199.i ], [ %6, %.lr.ph199.i.preheader ] ; 5 uses
  %.0102195.i = phi ptr [ %i.acg, %.lr.ph199.i ], [ %i.aaf, %.lr.ph199.i.preheader ] ; 6 uses
  %niter329 = phi i32 [ %niter329.next.3, %.lr.ph199.i ], [ 0, %.lr.ph199.i.preheader ]
  %i.abo = load <4 x float>, ptr %.0102195.i, align 1, !tbaa !63
  %i.abp = load <4 x float>, ptr %.0100196.i, align 1, !tbaa !63
  %i.abq = fmul fast <4 x float> %i.abp, %i.abo
  store <4 x float> %i.abq, ptr %.0102195.i, align 1, !tbaa !63
  %i.abr = getelementptr inbounds nuw i8, ptr %.0102195.i, i64 16 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.0100196.i, i64 16
  %i.abt = load <4 x float>, ptr %i.abr, align 1, !tbaa !63
  %i.abu = load <4 x float>, ptr %i.abs, align 1, !tbaa !63
  %i.abv = fmul fast <4 x float> %i.abu, %i.abt
  store <4 x float> %i.abv, ptr %i.abr, align 1, !tbaa !63
  %i.abw = getelementptr inbounds nuw i8, ptr %.0102195.i, i64 32 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.0100196.i, i64 32
  %i.aby = load <4 x float>, ptr %i.abw, align 1, !tbaa !63
  %i.abz = load <4 x float>, ptr %i.abx, align 1, !tbaa !63
  %i.aca = fmul fast <4 x float> %i.abz, %i.aby
  store <4 x float> %i.aca, ptr %i.abw, align 1, !tbaa !63
  %i.acb = getelementptr inbounds nuw i8, ptr %.0102195.i, i64 48 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.0100196.i, i64 48
  %i.acd = load <4 x float>, ptr %i.acb, align 1, !tbaa !63
  %i.ace = load <4 x float>, ptr %i.acc, align 1, !tbaa !63
  %i.acf = fmul fast <4 x float> %i.ace, %i.acd
  store <4 x float> %i.acf, ptr %i.acb, align 1, !tbaa !63
  %i.acg = getelementptr inbounds nuw i8, ptr %.0102195.i, i64 64 ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.0100196.i, i64 64 ; 3 uses
  %niter329.next.3 = add nuw nsw i32 %niter329, 4 ; 2 uses
  %niter329.ncmp.3.not = icmp eq i32 %niter329.next.3, %unroll_iter328
  br i1 %niter329.ncmp.3.not, label %.preheader.i42.loopexit.unr-lcssa, label %.lr.ph199.i, !llvm.loop !10

.lr.ph206.i:                                      ; preds = %.lr.ph206.i.prol.loopexit, %.lr.ph206.i
  %.199205.i = phi i32 [ %i.adc, %.lr.ph206.i ], [ %.199205.i.unr, %.lr.ph206.i.prol.loopexit ]
  %.1101204.i = phi ptr [ %i.adb, %.lr.ph206.i ], [ %.1101204.i.unr, %.lr.ph206.i.prol.loopexit ] ; 5 uses
  %.1103203.i = phi ptr [ %i.ada, %.lr.ph206.i ], [ %.1103203.i.unr, %.lr.ph206.i.prol.loopexit ] ; 6 uses
  %i.aci = load float, ptr %.1101204.i, align 4, !tbaa !66
  %i.acj = load float, ptr %.1103203.i, align 4, !tbaa !66
  %i.ack = fmul fast float %i.acj, %i.aci
  store float %i.ack, ptr %.1103203.i, align 4, !tbaa !66
  %i.acl = getelementptr inbounds nuw i8, ptr %.1103203.i, i64 4 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.1101204.i, i64 4
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !66
  %i.aco = load float, ptr %i.acl, align 4, !tbaa !66
  %i.acp = fmul fast float %i.aco, %i.acn
  store float %i.acp, ptr %i.acl, align 4, !tbaa !66
  %i.acq = getelementptr inbounds nuw i8, ptr %.1103203.i, i64 8 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.1101204.i, i64 8
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !66
  %i.act = load float, ptr %i.acq, align 4, !tbaa !66
  %i.acu = fmul fast float %i.act, %i.acs
  store float %i.acu, ptr %i.acq, align 4, !tbaa !66
  %i.acv = getelementptr inbounds nuw i8, ptr %.1103203.i, i64 12 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.1101204.i, i64 12
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !66
  %i.acy = load float, ptr %i.acv, align 4, !tbaa !66
  %i.acz = fmul fast float %i.acy, %i.acx
  store float %i.acz, ptr %i.acv, align 4, !tbaa !66
  %i.ada = getelementptr inbounds nuw i8, ptr %.1103203.i, i64 16
  %i.adb = getelementptr inbounds nuw i8, ptr %.1101204.i, i64 16
  %i.adc = add nuw nsw i32 %.199205.i, 4          ; 2 uses
  %exitcond238.not.i.3 = icmp eq i32 %i.adc, %4
  br i1 %exitcond238.not.i.3, label %._crit_edge207.i, label %.lr.ph206.i, !llvm.loop !143

._crit_edge207.i:                                 ; preds = %.lr.ph206.i.prol.loopexit, %.lr.ph206.i, %middle.block258, %.preheader.i42
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %exitcond243.not.i = icmp eq i64 %indvars.iv.next240.i, %wide.trip.count242.i
  br i1 %exitcond243.not.i, label %_ZN4ncnnL13softmax_pack4EPfimiS0_S0_.exit, label %bb.m, !llvm.loop !11

_ZN4ncnnL13softmax_pack4EPfimiS0_S0_.exit:        ; preds = %._crit_edge207.i, %._crit_edge381.i, %.preheader153.i, %.preheader327.i, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare !callback !79 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !43
  %i.h = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !43
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %.not16 = icmp sgt i32 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !62
  %i.p = load i32, ptr %i.l, align 4, !tbaa !42
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %indvars.iv, %i.q
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  br i1 %i.a, label %.lr.ph.us.preheader.i, label %.lr.ph177.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph177.i
  %i.fy = and i32 %4, 2147483644                  ; 4 uses
  %.not = icmp eq i32 %i.fy, %4
  %i.fz = xor i32 %i.fy, -1
  %i.ga = add nsw i32 %4, %i.fz                   ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check118 = icmp ult i32 %i.ga, 7
  %n.vec120 = and i64 %i.gc, 8589934584           ; 5 uses
  %i.gd = shl nuw nsw i64 %n.vec120, 1
  %i.ge = shl nuw nsw i64 %n.vec120, 2
  %i.gf = trunc i64 %n.vec120 to i32
  %i.gg = add i32 %i.fy, %i.gf
  %cmp.n130 = icmp eq i64 %i.gc, %n.vec120
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv233.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next234.i, %._crit_edge.us.i ] ; 2 uses
  %i.gh = mul i64 %indvars.iv233.i, %3
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gh
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.i
  %.0106168.us.i = phi ptr [ %i.gi, %.lr.ph.us.i ], [ %i.gq, %bb.g ] ; 2 uses
  %.0108167.us.i = phi ptr [ %5, %.lr.ph.us.i ], [ %i.gr, %bb.g ] ; 3 uses
  %.0110166.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.gs, %bb.g ]
  %i.gj = load i64, ptr %.0106168.us.i, align 1, !tbaa !63
  %i.gk = insertelement <2 x i64> poison, i64 %i.gj, i64 0
  %i.gl = bitcast <2 x i64> %i.gk to <8 x i16>
  %i.gm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gn = bitcast <8 x i16> %i.gm to <4 x float>
  %i.go = load <4 x float>, ptr %.0108167.us.i, align 1, !tbaa !63
  %i.gp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.go, <4 x float> nofpclass(nan inf) %i.gn)
  store <4 x float> %i.gp, ptr %.0108167.us.i, align 1, !tbaa !63
  %i.gq = getelementptr inbounds nuw i8, ptr %.0106168.us.i, i64 8 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0108167.us.i, i64 16 ; 4 uses
  %i.gs = add nuw nsw i32 %.0110166.us.i, 4       ; 2 uses
  %i.gt = or disjoint i32 %i.gs, 3
  %i.gu = icmp slt i32 %i.gt, %4
  br i1 %i.gu, label %bb.g, label %..preheader165_crit_edge.us.i, !llvm.loop !16

.lr.ph174.us.i:                                   ; preds = %.lr.ph174.us.i.preheader212, %.lr.ph174.us.i
  %.1107173.us.i = phi ptr [ %i.hb, %.lr.ph174.us.i ], [ %.1107173.us.i.ph, %.lr.ph174.us.i.preheader212 ] ; 2 uses
  %.1109172.us.i = phi ptr [ %i.hc, %.lr.ph174.us.i ], [ %.1109172.us.i.ph, %.lr.ph174.us.i.preheader212 ] ; 3 uses
  %.1111171.us.i = phi i32 [ %i.hd, %.lr.ph174.us.i ], [ %.1111171.us.i.ph, %.lr.ph174.us.i.preheader212 ]
  %i.gv = load i16, ptr %.1107173.us.i, align 2, !tbaa !82
  %i.gw = zext i16 %i.gv to i32
  %i.gx = shl nuw i32 %i.gw, 16
  %i.gy = bitcast i32 %i.gx to float              ; 2 uses
  %i.gz = load float, ptr %.1109172.us.i, align 4, !tbaa !66 ; 2 uses
  %i.ha = fcmp fast olt float %i.gz, %i.gy
  %.sroa.speculated.us.i = select i1 %i.ha, float %i.gy, float %i.gz
  store float %.sroa.speculated.us.i, ptr %.1109172.us.i, align 4, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %.1107173.us.i, i64 2
  %i.hc = getelementptr inbounds nuw i8, ptr %.1109172.us.i, i64 4
  %i.hd = add nuw nsw i32 %.1111171.us.i, 1       ; 2 uses
  %exitcond232.not.i = icmp eq i32 %i.hd, %4
  br i1 %exitcond232.not.i, label %._crit_edge.us.i, label %.lr.ph174.us.i, !llvm.loop !248

._crit_edge.us.i:                                 ; preds = %.lr.ph174.us.i, %middle.block129, %..preheader165_crit_edge.us.i
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next234.i, %wide.trip.count236.i
  br i1 %exitcond237.not.i, label %.lr.ph193.i, label %.lr.ph.us.i, !llvm.loop !17

..preheader165_crit_edge.us.i:                    ; preds = %bb.g
  br i1 %.not, label %._crit_edge.us.i, label %.lr.ph174.us.i.preheader

.lr.ph174.us.i.preheader:                         ; preds = %..preheader165_crit_edge.us.i
  br i1 %min.iters.check118, label %.lr.ph174.us.i.preheader212, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph174.us.i.preheader
  %i.he = getelementptr i8, ptr %i.gq, i64 %i.gd
  %i.hf = getelementptr i8, ptr %i.gr, i64 %i.ge
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next128, %vector.body121 ] ; 3 uses
  %i.hg = shl i64 %index122, 1
  %next.gep123 = getelementptr i8, ptr %i.gq, i64 %i.hg ; 2 uses
  %i.hh = shl i64 %index122, 2
  %next.gep124 = getelementptr i8, ptr %i.gr, i64 %i.hh ; 3 uses
  %i.hi = getelementptr i8, ptr %next.gep123, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep123, align 2, !tbaa !82
  %wide.load125 = load <4 x i16>, ptr %i.hi, align 2, !tbaa !82
  %i.hj = zext <4 x i16> %wide.load to <4 x i32>
  %i.hk = zext <4 x i16> %wide.load125 to <4 x i32>
  %i.hl = shl nuw <4 x i32> %i.hj, splat (i32 16)
  %i.hm = shl nuw <4 x i32> %i.hk, splat (i32 16)
  %i.hn = bitcast <4 x i32> %i.hl to <4 x float>  ; 2 uses
  %i.ho = bitcast <4 x i32> %i.hm to <4 x float>  ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep124, i64 16 ; 2 uses
  %wide.load126 = load <4 x float>, ptr %next.gep124, align 4, !tbaa !66 ; 2 uses
  %wide.load127 = load <4 x float>, ptr %i.hp, align 4, !tbaa !66 ; 2 uses
  %i.hq = fcmp fast olt <4 x float> %wide.load126, %i.hn
  %i.hr = fcmp fast olt <4 x float> %wide.load127, %i.ho
  %i.hs = select <4 x i1> %i.hq, <4 x float> %i.hn, <4 x float> %wide.load126
  %i.ht = select <4 x i1> %i.hr, <4 x float> %i.ho, <4 x float> %wide.load127
  store <4 x float> %i.hs, ptr %next.gep124, align 4, !tbaa !66
  store <4 x float> %i.ht, ptr %i.hp, align 4, !tbaa !66
  %index.next128 = add nuw i64 %index122, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next128, %n.vec120
  br i1 %i.hu, label %middle.block129, label %vector.body121, !llvm.loop !249

middle.block129:                                  ; preds = %vector.body121
  br i1 %cmp.n130, label %._crit_edge.us.i, label %.lr.ph174.us.i.preheader212

.lr.ph174.us.i.preheader212:                      ; preds = %.lr.ph174.us.i.preheader, %middle.block129
  %.1107173.us.i.ph = phi ptr [ %i.gq, %.lr.ph174.us.i.preheader ], [ %i.he, %middle.block129 ]
  %.1109172.us.i.ph = phi ptr [ %i.gr, %.lr.ph174.us.i.preheader ], [ %i.hf, %middle.block129 ]
  %.1111171.us.i.ph = phi i32 [ %i.fy, %.lr.ph174.us.i.preheader ], [ %i.gg, %middle.block129 ]
  br label %.lr.ph174.us.i

.lr.ph177.split.i:                                ; preds = %.lr.ph177.i
  %i.hv = icmp sgt i32 %4, 0
  br i1 %i.hv, label %.preheader165.i.preheader, label %.lr.ph193.i

.preheader165.i.preheader:                        ; preds = %.lr.ph177.split.i
  %exitcond.not.i47 = icmp eq i32 %4, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %exitcond.not.i47.1 = icmp eq i32 %4, 2
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.promoted = load float, ptr %5, align 4, !tbaa !66
  br label %.preheader165.i

.lr.ph193.i.loopexit215:                          ; preds = %._crit_edge.i48
  store float %.sroa.speculated.i46, ptr %5, align 4, !tbaa !66
  br label %.lr.ph193.i

.lr.ph193.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph193.i.loopexit215, %.lr.ph177.split.i
  %i.hy = and i32 %4, -4
  br label %bb.j

.preheader165.i:                                  ; preds = %.preheader165.i.preheader, %._crit_edge.i48
  %i.hz = phi float [ %.sroa.speculated.i46, %._crit_edge.i48 ], [ %.promoted, %.preheader165.i.preheader ] ; 2 uses
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i49, %._crit_edge.i48 ], [ 0, %.preheader165.i.preheader ] ; 2 uses
  %i.ia = mul i64 %indvars.iv.i45, %3
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ia ; 3 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !82
  %i.id = zext i16 %i.ic to i32
  %i.ie = shl nuw i32 %i.id, 16
  %i.if = bitcast i32 %i.ie to float              ; 2 uses
  %i.ig = fcmp fast olt float %i.hz, %i.if
  %.sroa.speculated.i46 = select i1 %i.ig, float %i.if, float %i.hz ; 2 uses
  br i1 %exitcond.not.i47, label %._crit_edge.i48, label %bb.h

bb.h:                                             ; preds = %.preheader165.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !82
  %i.ij = zext i16 %i.ii to i32
  %i.ik = shl nuw i32 %i.ij, 16
  %i.il = bitcast i32 %i.ik to float              ; 2 uses
  %i.im = load float, ptr %i.hw, align 4, !tbaa !66 ; 2 uses
  %i.in = fcmp fast olt float %i.im, %i.il
  %.sroa.speculated.i46.1 = select i1 %i.in, float %i.il, float %i.im
  store float %.sroa.speculated.i46.1, ptr %i.hw, align 4, !tbaa !66
  br i1 %exitcond.not.i47.1, label %._crit_edge.i48, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.io = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !82
  %i.iq = zext i16 %i.ip to i32
  %i.ir = shl nuw i32 %i.iq, 16
  %i.is = bitcast i32 %i.ir to float              ; 2 uses
  %i.it = load float, ptr %i.hx, align 4, !tbaa !66 ; 2 uses
  %i.iu = fcmp fast olt float %i.it, %i.is
  %.sroa.speculated.i46.2 = select i1 %i.iu, float %i.is, float %i.it
  store float %.sroa.speculated.i46.2, ptr %i.hx, align 4, !tbaa !66
  br label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %bb.i, %bb.h, %.preheader165.i
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count236.i
  br i1 %exitcond231.not.i, label %.lr.ph193.i.loopexit215, label %.preheader165.i, !llvm.loop !17

.preheader162.i:                                  ; preds = %._crit_edge191.i, %bb.f
  br i1 %i.a, label %.lr.ph196.i.preheader, label %.preheader161.i

.lr.ph196.i.preheader:                            ; preds = %.preheader162.i
  %i.iv = add nsw i32 %4, -4                      ; 2 uses
  %i.iw = lshr i32 %i.iv, 2                       ; 2 uses
  %i.ix = add nuw nsw i32 %i.iw, 1                ; 2 uses
  %i.iy = icmp eq i32 %i.iw, 0
  br i1 %i.iy, label %.lr.ph196.i.epil.preheader, label %.lr.ph196.i.preheader.new

.lr.ph196.i.preheader.new:                        ; preds = %.lr.ph196.i.preheader
  %unroll_iter227 = and i32 %i.ix, 2147483646
  br label %.lr.ph196.i

bb.j:                                             ; preds = %._crit_edge191.i, %.lr.ph193.i
  %indvars.iv239.i = phi i64 [ 0, %.lr.ph193.i ], [ %indvars.iv.next240.i, %._crit_edge191.i ] ; 2 uses
  %i.iz = mul i64 %indvars.iv239.i, %3
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.iz ; 2 uses
  br i1 %i.a, label %.lr.ph.i43, label %.preheader163.i

.preheader163.i:                                  ; preds = %.lr.ph.i43, %bb.j
  %.0118.lcssa.i = phi ptr [ %i.ja, %bb.j ], [ %i.mo, %.lr.ph.i43 ] ; 4 uses
  %.0116.lcssa.i = phi ptr [ %5, %bb.j ], [ %i.mp, %.lr.ph.i43 ] ; 6 uses
  %.0114.lcssa.i = phi ptr [ %6, %bb.j ], [ %i.mq, %.lr.ph.i43 ] ; 6 uses
  %.0112.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.hy, %.lr.ph.i43 ] ; 6 uses
  %i.jb = icmp slt i32 %.0112.lcssa.i, %4
  br i1 %i.jb, label %.lr.ph190.i.preheader, label %._crit_edge191.i

.lr.ph190.i.preheader:                            ; preds = %.preheader163.i
  %i.jc = xor i32 %.0112.lcssa.i, -1
  %i.jd = add i32 %4, %i.jc                       ; 2 uses
  %i.je = zext i32 %i.jd to i64
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  %min.iters.check139 = icmp ult i32 %i.jd, 3
  br i1 %min.iters.check139, label %.lr.ph190.i.preheader208, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph190.i.preheader
  %7 = xor i32 %.0112.lcssa.i, -1
  %8 = add i32 %4, %7
  %9 = zext i32 %8 to i64
  %i.jg = shl nuw nsw i64 %9, 2
  %i.jh = add nuw nsw i64 %i.jg, 4                ; 2 uses
  %i.ji = getelementptr i8, ptr %.0114.lcssa.i, i64 %i.jh
  %i.jj = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.jh
  %bound0 = icmp ult ptr %.0114.lcssa.i, %i.jj
  %bound1 = icmp ult ptr %.0116.lcssa.i, %i.ji
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph190.i.preheader208, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck
  %n.vec141 = and i64 %i.jf, 8589934588           ; 5 uses
  %i.jk = trunc i64 %n.vec141 to i32
  %i.jl = add i32 %.0112.lcssa.i, %i.jk
  %i.jm = shl nuw nsw i64 %n.vec141, 2            ; 2 uses
  %i.jn = getelementptr i8, ptr %.0114.lcssa.i, i64 %i.jm
  %i.jo = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.jm
  %i.jp = shl nuw nsw i64 %n.vec141, 1
  %i.jq = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.jp
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next150, %vector.body142 ] ; 3 uses
  %i.jr = shl i64 %index143, 2                    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.0114.lcssa.i, i64 %i.jr ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.jr
  %i.js = shl i64 %index143, 1
  %next.gep146 = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.js ; 2 uses
  %wide.load147 = load <4 x i16>, ptr %next.gep146, align 2, !tbaa !82
  %i.jt = zext <4 x i16> %wide.load147 to <4 x i32>
  %i.ju = shl nuw <4 x i32> %i.jt, splat (i32 16)
  %i.jv = bitcast <4 x i32> %i.ju to <4 x float>
  %wide.load148 = load <4 x float>, ptr %next.gep145, align 4, !tbaa !66, !alias.scope !259
  %i.jw = fsub fast <4 x float> %i.jv, %wide.load148
  %i.jx = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.jw) ; 2 uses
  %i.jy = bitcast <4 x float> %i.jx to <4 x i32>
  %i.jz = lshr <4 x i32> %i.jy, splat (i32 16)
  %i.ka = trunc nuw nsw <4 x i32> %i.jz to <4 x i16>
  store <4 x i16> %i.ka, ptr %next.gep146, align 2, !tbaa !82
  %wide.load149 = load <4 x float>, ptr %next.gep144, align 4, !tbaa !66, !alias.scope !260, !noalias !259
  %i.kb = fadd fast <4 x float> %i.jx, %wide.load149
  store <4 x float> %i.kb, ptr %next.gep144, align 4, !tbaa !66, !alias.scope !260, !noalias !259
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next150, %n.vec141
  br i1 %i.kc, label %middle.block151, label %vector.body142, !llvm.loop !253

middle.block151:                                  ; preds = %vector.body142
  %cmp.n152 = icmp eq i64 %i.jf, %n.vec141
  br i1 %cmp.n152, label %._crit_edge191.i, label %.lr.ph190.i.preheader208

.lr.ph190.i.preheader208:                         ; preds = %vector.memcheck, %.lr.ph190.i.preheader, %middle.block151
  %.1113189.i.ph = phi i32 [ %.0112.lcssa.i, %vector.memcheck ], [ %.0112.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jl, %middle.block151 ] ; 4 uses
  %.1115188.i.ph = phi ptr [ %.0114.lcssa.i, %vector.memcheck ], [ %.0114.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jn, %middle.block151 ] ; 4 uses
  %.1117187.i.ph = phi ptr [ %.0116.lcssa.i, %vector.memcheck ], [ %.0116.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jo, %middle.block151 ] ; 3 uses
  %.1119186.i.ph = phi ptr [ %.0118.lcssa.i, %vector.memcheck ], [ %.0118.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jq, %middle.block151 ] ; 4 uses
  %i.kd = sub i32 %4, %.1113189.i.ph
  %.neg = add i32 %.1113189.i.ph, 1
  %xtraiter220 = and i32 %i.kd, 1
  %lcmp.mod221.not = icmp eq i32 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %.lr.ph190.i.prol.loopexit, label %.lr.ph190.i.prol

.lr.ph190.i.prol:                                 ; preds = %.lr.ph190.i.preheader208
  %i.ke = load i16, ptr %.1119186.i.ph, align 2, !tbaa !82
  %i.kf = zext i16 %i.ke to i32
  %i.kg = shl nuw i32 %i.kf, 16
  %i.kh = bitcast i32 %i.kg to float
  %i.ki = load float, ptr %.1117187.i.ph, align 4, !tbaa !66
  %i.kj = fsub fast float %i.kh, %i.ki
  %i.kk = tail call fast float @llvm.exp.f32(float %i.kj) ; 2 uses
  %i.kl = bitcast float %i.kk to i32
  %i.km = lshr i32 %i.kl, 16
  %i.kn = trunc nuw nsw i32 %i.km to i16
  store i16 %i.kn, ptr %.1119186.i.ph, align 2, !tbaa !82
  %i.ko = load float, ptr %.1115188.i.ph, align 4, !tbaa !66
  %i.kp = fadd fast float %i.kk, %i.ko
  store float %i.kp, ptr %.1115188.i.ph, align 4, !tbaa !66
  %i.kq = getelementptr inbounds nuw i8, ptr %.1119186.i.ph, i64 2
  %i.kr = getelementptr inbounds nuw i8, ptr %.1117187.i.ph, i64 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.1115188.i.ph, i64 4
  %i.kt = add nuw nsw i32 %.1113189.i.ph, 1
  br label %.lr.ph190.i.prol.loopexit

.lr.ph190.i.prol.loopexit:                        ; preds = %.lr.ph190.i.prol, %.lr.ph190.i.preheader208
  %.1113189.i.unr = phi i32 [ %.1113189.i.ph, %.lr.ph190.i.preheader208 ], [ %i.kt, %.lr.ph190.i.prol ]
  %.1115188.i.unr = phi ptr [ %.1115188.i.ph, %.lr.ph190.i.preheader208 ], [ %i.ks, %.lr.ph190.i.prol ]
  %.1117187.i.unr = phi ptr [ %.1117187.i.ph, %.lr.ph190.i.preheader208 ], [ %i.kr, %.lr.ph190.i.prol ]
  %.1119186.i.unr = phi ptr [ %.1119186.i.ph, %.lr.ph190.i.preheader208 ], [ %i.kq, %.lr.ph190.i.prol ]
  %i.ku = icmp eq i32 %4, %.neg
  br i1 %i.ku, label %._crit_edge191.i, label %.lr.ph190.i

.lr.ph.i43:                                       ; preds = %bb.j, %.lr.ph.i43
  %.0112181.i = phi i32 [ %i.mr, %.lr.ph.i43 ], [ 0, %bb.j ]
  %.0114180.i = phi ptr [ %i.mq, %.lr.ph.i43 ], [ %6, %bb.j ] ; 3 uses
  %.0116179.i = phi ptr [ %i.mp, %.lr.ph.i43 ], [ %5, %bb.j ] ; 2 uses
  %.0118178.i = phi ptr [ %i.mo, %.lr.ph.i43 ], [ %i.ja, %bb.j ] ; 3 uses
  %i.kv = load i64, ptr %.0118178.i, align 1, !tbaa !63
  %i.kw = insertelement <2 x i64> poison, i64 %i.kv, i64 0
  %i.kx = bitcast <2 x i64> %i.kw to <8 x i16>
  %i.ky = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kz = bitcast <8 x i16> %i.ky to <4 x float>
  %i.la = load <4 x float>, ptr %.0116179.i, align 1, !tbaa !63
  %i.lb = load <4 x float>, ptr %.0114180.i, align 1, !tbaa !63
  %i.lc = fsub fast <4 x float> %i.kz, %i.la
  %i.ld = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lc, <4 x float> splat (float f0x42B0C0A5))
  %i.le = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ld, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lf = fmul fast <4 x float> %i.le, splat (float f0x3FB8AA3B)
  %i.lg = fadd fast <4 x float> %i.lf, splat (float 5.000000e-01) ; 2 uses
  %i.lh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lg)
  %i.li = sitofp fast <4 x i32> %i.lh to <4 x float> ; 2 uses
  %i.lj = fcmp fast olt <4 x float> %i.lg, %i.li
  %i.lk = select <4 x i1> %i.lj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ll = fsub fast <4 x float> %i.li, %i.lk      ; 2 uses
  %i.lm = fmul fast <4 x float> %i.ll, splat (float f0x3F317218)
  %i.ln = fsub fast <4 x float> %i.le, %i.lm      ; 8 uses
  %i.lo = fmul fast <4 x float> %i.ln, %i.ln
  %i.lp = fmul fast <4 x float> %i.ln, splat (float f0x39506967)
  %i.lq = fadd fast <4 x float> %i.lp, splat (float f0x3AB743CE)
  %i.lr = fmul fast <4 x float> %i.lq, %i.ln
  %i.ls = fadd fast <4 x float> %i.lr, splat (float f0x3C088908)
  %i.lt = fmul fast <4 x float> %i.ls, %i.ln
  %i.lu = fadd fast <4 x float> %i.lt, splat (float f0x3D2AA9C1)
  %i.lv = fmul fast <4 x float> %i.lu, %i.ln
  %i.lw = fadd fast <4 x float> %i.lv, splat (float f0x3E2AAAAA)
  %i.lx = fmul fast <4 x float> %i.lw, %i.ln
  %i.ly = fadd fast <4 x float> %i.lx, splat (float 5.000000e-01)
  %i.lz = fmul fast <4 x float> %i.lo, %i.ly
  %i.ma = fadd fast <4 x float> %i.ln, splat (float 1.000000e+00)
  %i.mb = fadd fast <4 x float> %i.ma, %i.lz
  %i.mc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ll)
  %i.md = shl <4 x i32> %i.mc, splat (i32 23)
  %i.me = add <4 x i32> %i.md, splat (i32 1065353216)
  %i.mf = bitcast <4 x i32> %i.me to <4 x float>
  %i.mg = fmul fast <4 x float> %i.mb, %i.mf      ; 2 uses
  %i.mh = bitcast <4 x float> %i.mg to <8 x i16>
  %i.mi = shufflevector <8 x i16> %i.mh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.mj = bitcast <8 x i16> %i.mi to <4 x float>
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ml = bitcast <4 x float> %i.mk to <2 x i64>
  %i.mm = extractelement <2 x i64> %i.ml, i64 0
  store i64 %i.mm, ptr %.0118178.i, align 1, !tbaa !63
  %i.mn = fadd fast <4 x float> %i.mg, %i.lb
  store <4 x float> %i.mn, ptr %.0114180.i, align 1, !tbaa !63
  %i.mo = getelementptr inbounds nuw i8, ptr %.0118178.i, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.0116179.i, i64 16 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.0114180.i, i64 16 ; 2 uses
  %i.mr = add nuw nsw i32 %.0112181.i, 4          ; 2 uses
  %i.ms = or disjoint i32 %i.mr, 3
  %i.mt = icmp slt i32 %i.ms, %4
  br i1 %i.mt, label %.lr.ph.i43, label %.preheader163.i, !llvm.loop !18

.lr.ph190.i:                                      ; preds = %.lr.ph190.i.prol.loopexit, %.lr.ph190.i
  %.1113189.i = phi i32 [ %i.ny, %.lr.ph190.i ], [ %.1113189.i.unr, %.lr.ph190.i.prol.loopexit ]
  %.1115188.i = phi ptr [ %i.nx, %.lr.ph190.i ], [ %.1115188.i.unr, %.lr.ph190.i.prol.loopexit ] ; 4 uses
  %.1117187.i = phi ptr [ %i.nw, %.lr.ph190.i ], [ %.1117187.i.unr, %.lr.ph190.i.prol.loopexit ] ; 3 uses
  %.1119186.i = phi ptr [ %i.nv, %.lr.ph190.i ], [ %.1119186.i.unr, %.lr.ph190.i.prol.loopexit ] ; 4 uses
  %i.mu = load i16, ptr %.1119186.i, align 2, !tbaa !82
  %i.mv = zext i16 %i.mu to i32
  %i.mw = shl nuw i32 %i.mv, 16
  %i.mx = bitcast i32 %i.mw to float
  %i.my = load float, ptr %.1117187.i, align 4, !tbaa !66
  %i.mz = fsub fast float %i.mx, %i.my
  %i.na = tail call fast float @llvm.exp.f32(float %i.mz) ; 2 uses
  %i.nb = bitcast float %i.na to i32
  %i.nc = lshr i32 %i.nb, 16
  %i.nd = trunc nuw nsw i32 %i.nc to i16
  store i16 %i.nd, ptr %.1119186.i, align 2, !tbaa !82
  %i.ne = load float, ptr %.1115188.i, align 4, !tbaa !66
  %i.nf = fadd fast float %i.na, %i.ne
  store float %i.nf, ptr %.1115188.i, align 4, !tbaa !66
  %i.ng = getelementptr inbounds nuw i8, ptr %.1119186.i, i64 2 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.1117187.i, i64 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.1115188.i, i64 4 ; 2 uses
  %i.nj = load i16, ptr %i.ng, align 2, !tbaa !82
  %i.nk = zext i16 %i.nj to i32
  %i.nl = shl nuw i32 %i.nk, 16
  %i.nm = bitcast i32 %i.nl to float
  %i.nn = load float, ptr %i.nh, align 4, !tbaa !66
  %i.no = fsub fast float %i.nm, %i.nn
  %i.np = tail call fast float @llvm.exp.f32(float %i.no) ; 2 uses
  %i.nq = bitcast float %i.np to i32
  %i.nr = lshr i32 %i.nq, 16
  %i.ns = trunc nuw nsw i32 %i.nr to i16
  store i16 %i.ns, ptr %i.ng, align 2, !tbaa !82
  %i.nt = load float, ptr %i.ni, align 4, !tbaa !66
  %i.nu = fadd fast float %i.np, %i.nt
  store float %i.nu, ptr %i.ni, align 4, !tbaa !66
  %i.nv = getelementptr inbounds nuw i8, ptr %.1119186.i, i64 4
  %i.nw = getelementptr inbounds nuw i8, ptr %.1117187.i, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %.1115188.i, i64 8
  %i.ny = add nuw nsw i32 %.1113189.i, 2          ; 2 uses
  %exitcond238.not.i.1 = icmp eq i32 %i.ny, %4
  br i1 %exitcond238.not.i.1, label %._crit_edge191.i, label %.lr.ph190.i, !llvm.loop !254

._crit_edge191.i:                                 ; preds = %.lr.ph190.i.prol.loopexit, %.lr.ph190.i, %middle.block151, %.preheader163.i
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %exitcond243.not.i = icmp eq i64 %indvars.iv.next240.i, %wide.trip.count236.i
  br i1 %exitcond243.not.i, label %.preheader162.i, label %bb.j, !llvm.loop !19

.preheader161.loopexit.i.unr-lcssa:               ; preds = %.lr.ph196.i
  %i.nz = and i32 %i.iv, 4
  %lcmp.mod224.not.not = icmp eq i32 %i.nz, 0
  br i1 %lcmp.mod224.not.not, label %.lr.ph196.i.epil.preheader, label %.preheader161.loopexit.i
end_hunk_1
