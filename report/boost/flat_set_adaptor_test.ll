Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2813
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_:bb.a
  %i.ct = sub i64 %.079, %i.b                     ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ct ; 4 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 %.idx69 ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.079
  %i.cx = getelementptr i8, ptr %i.cu, i64 %.idx
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader, %bb.e
  %indvar199 = phi i64 [ 0, %.lr.ph.i45.preheader ], [ %indvar.next200, %bb.e ] ; 3 uses
  %.043.i46 = phi ptr [ %i.cx, %.lr.ph.i45.preheader ], [ %i.eg, %bb.e ] ; 5 uses
  %.02442.i47 = phi ptr [ %i.cw, %.lr.ph.i45.preheader ], [ %.024..i51, %bb.e ] ; 3 uses
  %.02541.i48 = phi ptr [ %i.cv, %.lr.ph.i45.preheader ], [ %..025.i50, %bb.e ] ; 7 uses
  %i.cy = icmp eq ptr %.02442.i47, %i.cv
  br i1 %i.cy, label %.lr.ph.i.i.i63.preheader, label %bb.e

.lr.ph.i.i.i63.preheader:                         ; preds = %.lr.ph.i45
  %.02541.i48196.le = ptrtoaddr ptr %.02541.i48 to i64 ; 2 uses
  %i.cz = udiv i64 %1, %i.b                       ; 2 uses
  %i.da = shl nuw i64 %i.cz, 1
  %i.db = add i64 %i.da, 4611686018427387902
  %i.dc = mul i64 %2, %i.db
  %i.dd = shl i64 %i.dc, 2
  %i.de = add i64 %i.dd, %i.a
  %i.df = mul i64 %indvar197, %i.ck
  %reass.sub262 = sub i64 %i.df, %i.de
  %i.dg = add i64 %reass.sub262, -4
  %i.dh = add i64 %i.dg, %.02541.i48196.le        ; 2 uses
  %i.di = lshr i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check202 = icmp ult i64 %i.dh, 348
  br i1 %min.iters.check202, label %.lr.ph.i.i.i63.preheader269, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i.i.i63.preheader
  %i.dk = shl i64 %i.cz, 3
  %.neg264 = sub nuw nsw i64 -4, %i.dk
  %.neg265 = mul i64 %.neg264, %2
  %i.dl = sub i64 %.neg265, %i.a
  %i.dm = mul i64 %indvar197, %i.ci
  %i.dn = add i64 %i.dl, %i.dm
  %i.do = shl i64 %indvar199, 2
  %i.dp = add i64 %i.dn, %i.do
  %i.dq = add i64 %i.dp, %.02541.i48196.le
  %i.dr = add i64 %i.dq, -1
  %diff.check204 = icmp ult i64 %i.dr, 31
  br i1 %diff.check204, label %.lr.ph.i.i.i63.preheader269, label %vector.ph205

vector.ph205:                                     ; preds = %vector.memcheck203
  %n.vec206 = and i64 %i.dj, 9223372036854775800  ; 3 uses
  %i.ds = mul i64 %n.vec206, -4                   ; 2 uses
  %i.dt = getelementptr i8, ptr %.043.i46, i64 %i.ds
  %i.du = getelementptr i8, ptr %.02541.i48, i64 %i.ds
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next213, %vector.body207 ] ; 2 uses
  %i.dv = mul i64 %index208, -4                   ; 2 uses
  %next.gep209 = getelementptr i8, ptr %.043.i46, i64 %i.dv ; 2 uses
  %next.gep210 = getelementptr i8, ptr %.02541.i48, i64 %i.dv ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %next.gep210, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %next.gep210, i64 -32
  %wide.load211 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !296
  %wide.load212 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !296
  %i.dy = getelementptr inbounds i8, ptr %next.gep209, i64 -16
  %i.dz = getelementptr inbounds i8, ptr %next.gep209, i64 -32
  store <4 x i32> %wide.load211, ptr %i.dy, align 4, !tbaa !296
  store <4 x i32> %wide.load212, ptr %i.dz, align 4, !tbaa !296
  %index.next213 = add nuw i64 %index208, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.ea, label %middle.block214, label %vector.body207, !llvm.loop !3684

middle.block214:                                  ; preds = %vector.body207
  %cmp.n215 = icmp eq i64 %i.dj, %n.vec206
  br i1 %cmp.n215, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.i63.preheader269

.lr.ph.i.i.i63.preheader269:                      ; preds = %vector.memcheck203, %.lr.ph.i.i.i63.preheader, %middle.block214
  %.010.i.i.i64.ph = phi ptr [ %.043.i46, %vector.memcheck203 ], [ %.043.i46, %.lr.ph.i.i.i63.preheader ], [ %i.dt, %middle.block214 ]
  %.079.i.i.i65.ph = phi ptr [ %.02541.i48, %vector.memcheck203 ], [ %.02541.i48, %.lr.ph.i.i.i63.preheader ], [ %i.du, %middle.block214 ]
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader269, %.lr.ph.i.i.i63
  %.010.i.i.i64 = phi ptr [ %i.ec, %.lr.ph.i.i.i63 ], [ %.010.i.i.i64.ph, %.lr.ph.i.i.i63.preheader269 ]
  %.079.i.i.i65 = phi ptr [ %i.eb, %.lr.ph.i.i.i63 ], [ %.079.i.i.i65.ph, %.lr.ph.i.i.i63.preheader269 ]
  %i.eb = getelementptr inbounds i8, ptr %.079.i.i.i65, i64 -4 ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.010.i.i.i64, i64 -4 ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !296
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !296
  %.not.i.i.i66 = icmp eq ptr %i.cu, %i.eb
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !3685

bb.e:                                             ; preds = %.lr.ph.i45
  %i.ee = getelementptr inbounds i8, ptr %.02442.i47, i64 -4 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.02541.i48, i64 -4 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %.043.i46, i64 -4 ; 7 uses
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !296 ; 2 uses
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !296 ; 2 uses
  %i.ej = icmp slt i32 %i.eh, %i.ei               ; 2 uses
  %..i49 = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 %i.ei)
  %..025.i50 = select i1 %i.ej, ptr %i.ef, ptr %.02541.i48 ; 2 uses
  %.024..i51 = select i1 %i.ej, ptr %.02442.i47, ptr %i.ee ; 8 uses
  store i32 %..i49, ptr %i.eg, align 4, !tbaa !296
  %.not.i52 = icmp eq ptr %i.cu, %..025.i50
  %indvar.next200 = add i64 %indvar199, 1
  br i1 %.not.i52, label %._crit_edge.i53.loopexit, label %.lr.ph.i45, !llvm.loop !3679

._crit_edge.i53.loopexit:                         ; preds = %bb.e
  %.024..i51221.le = ptrtoaddr ptr %.024..i51 to i64 ; 2 uses
  %.not28.i56 = icmp eq ptr %.024..i51, %i.eg
  %.not8.i.i29.i57 = icmp eq ptr %i.cv, %.024..i51
  %or.cond.i58 = or i1 %.not8.i.i29.i57, %.not28.i56
  br i1 %or.cond.i58, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i30.i59.preheader

.lr.ph.i.i30.i59.preheader:                       ; preds = %._crit_edge.i53.loopexit
  %i.ek = shl i64 %i.d, 3
  %i.el = add i64 %i.ek, -4
  %i.em = mul i64 %2, %i.el
  %i.en = add i64 %i.em, %i.a
  %i.eo = mul i64 %indvar197, %i.cj
  %reass.sub = sub i64 %i.eo, %i.en
  %i.ep = add i64 %reass.sub, -4
  %i.eq = add i64 %i.ep, %.024..i51221.le         ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check223 = icmp ult i64 %i.eq, 348
  br i1 %min.iters.check223, label %.lr.ph.i.i30.i59.preheader270, label %vector.memcheck224

vector.memcheck224:                               ; preds = %.lr.ph.i.i30.i59.preheader
  %i.et = shl i64 %i.d, 3
  %i.eu = or disjoint i64 %i.et, 4
  %i.ev = mul i64 %2, %i.eu
  %i.ew = add i64 %i.ev, %i.a
  %i.ex = mul i64 %indvar197, %i.ci
  %reass.sub261 = sub i64 %i.ex, %i.ew
  %i.ey = shl i64 %indvar199, 2
  %op.rdx = add i64 %.024..i51221.le, 3
  %op.rdx267 = add i64 %i.ey, %reass.sub261
  %op.rdx268 = add i64 %op.rdx, %op.rdx267
  %diff.check225 = icmp ult i64 %op.rdx268, 31
  br i1 %diff.check225, label %.lr.ph.i.i30.i59.preheader270, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck224
  %n.vec227 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.ez = mul i64 %n.vec227, -4                   ; 2 uses
  %i.fa = getelementptr i8, ptr %i.eg, i64 %i.ez
  %i.fb = getelementptr i8, ptr %.024..i51, i64 %i.ez
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next234, %vector.body228 ] ; 2 uses
  %i.fc = mul i64 %index229, -4                   ; 2 uses
  %next.gep230 = getelementptr i8, ptr %i.eg, i64 %i.fc ; 2 uses
  %next.gep231 = getelementptr i8, ptr %.024..i51, i64 %i.fc ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep231, i64 -16
  %i.fe = getelementptr inbounds i8, ptr %next.gep231, i64 -32
  %wide.load232 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !296
  %wide.load233 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !296
  %i.ff = getelementptr inbounds i8, ptr %next.gep230, i64 -16
  %i.fg = getelementptr inbounds i8, ptr %next.gep230, i64 -32
  store <4 x i32> %wide.load232, ptr %i.ff, align 4, !tbaa !296
  store <4 x i32> %wide.load233, ptr %i.fg, align 4, !tbaa !296
  %index.next234 = add nuw i64 %index229, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.fh, label %middle.block235, label %vector.body228, !llvm.loop !3686

middle.block235:                                  ; preds = %vector.body228
  %cmp.n236 = icmp eq i64 %i.es, %n.vec227
  br i1 %cmp.n236, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i30.i59.preheader270

.lr.ph.i.i30.i59.preheader270:                    ; preds = %vector.memcheck224, %.lr.ph.i.i30.i59.preheader, %middle.block235
  %.010.i.i31.i60.ph = phi ptr [ %i.eg, %vector.memcheck224 ], [ %i.eg, %.lr.ph.i.i30.i59.preheader ], [ %i.fa, %middle.block235 ]
  %.079.i.i32.i61.ph = phi ptr [ %.024..i51, %vector.memcheck224 ], [ %.024..i51, %.lr.ph.i.i30.i59.preheader ], [ %i.fb, %middle.block235 ]
  br label %.lr.ph.i.i30.i59

.lr.ph.i.i30.i59:                                 ; preds = %.lr.ph.i.i30.i59.preheader270, %.lr.ph.i.i30.i59
  %.010.i.i31.i60 = phi ptr [ %i.fj, %.lr.ph.i.i30.i59 ], [ %.010.i.i31.i60.ph, %.lr.ph.i.i30.i59.preheader270 ]
  %.079.i.i32.i61 = phi ptr [ %i.fi, %.lr.ph.i.i30.i59 ], [ %.079.i.i32.i61.ph, %.lr.ph.i.i30.i59.preheader270 ]
  %i.fi = getelementptr inbounds i8, ptr %.079.i.i32.i61, i64 -4 ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %.010.i.i31.i60, i64 -4 ; 2 uses
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !296
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !296
  %.not.i.i33.i62 = icmp eq ptr %i.cv, %i.fi
  br i1 %.not.i.i33.i62, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i30.i59, !llvm.loop !3687

_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67: ; preds = %.lr.ph.i.i30.i59, %.lr.ph.i.i.i63, %middle.block235, %middle.block214, %._crit_edge.i53.loopexit
  %.not43 = icmp eq i64 %i.ct, 0
  %indvar.next198 = add i64 %indvar197, 1
  br i1 %.not43, label %._crit_edge, label %.lr.ph.i45.preheader, !llvm.loop !3683

._crit_edge:                                      ; preds = %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.b = shl i64 %2, 1                            ; 9 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b                        ; 2 uses
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6.i.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b                        ; 2 uses
  %i.k = mul i64 %2, %i.j
  %i.l = shl i64 %i.k, 3
  %i.m = add i64 %i.i, -4
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 380
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader339, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.q = shl i64 %i.j, 3
  %i.r = or disjoint i64 %i.q, 4
  %i.s = mul i64 %2, %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %bound0 = icmp ult ptr %i.f, %i.h
  %bound1 = icmp ult ptr %i.t, %i.g
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader339, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.u = mul i64 %n.vec, -4                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.g, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.x ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.g, i64 %i.x ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %next.gep150, i64 -16 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %next.gep150, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !296, !alias.scope !3720, !noalias !3721
  %wide.load151 = load <4 x i32>, ptr %i.z, align 4, !tbaa !296, !alias.scope !3720, !noalias !3721
  %i.aa = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load152 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !296, !alias.scope !3721
  %wide.load153 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !296, !alias.scope !3721
  store <4 x i32> %wide.load152, ptr %i.y, align 4, !tbaa !296, !alias.scope !3720, !noalias !3721
  store <4 x i32> %wide.load153, ptr %i.z, align 4, !tbaa !296, !alias.scope !3720, !noalias !3721
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !296, !alias.scope !3721
  store <4 x i32> %wide.load151, ptr %i.ab, align 4, !tbaa !296, !alias.scope !3721
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !3691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader339

.lr.ph.i.i.preheader339:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader339, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader339 ]
  %.057.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader339 ]
  %i.ad = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 3 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !296
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !296
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !296
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !296
  %.not.i.i = icmp eq ptr %i.f, %i.ad
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3692

bb.c:                                             ; preds = %bb.a
  %.idx67 = shl i64 %2, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx67 ; 4 uses
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %1  ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bu, %bb.g ], [ %i.aj, %bb.c ] ; 6 uses
  %.02442.i = phi ptr [ %.1.i, %bb.g ], [ %i.ai, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %.126.i, %bb.g ], [ %i.ah, %bb.c ] ; 9 uses
  %i.ak = icmp eq ptr %.02442.i, %i.ah
  br i1 %i.ak, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i163 = ptrtoaddr ptr %.02541.i to i64
  %i.al = udiv i64 %1, %i.b
  %i.am = mul i64 %2, %i.al                       ; 2 uses
  %i.an = shl i64 %i.am, 3
  %i.ao = add i64 %.02541.i163, -4                ; 2 uses
  %i.ap = add i64 %i.an, %i.a
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.aq, 476
  br i1 %min.iters.check165, label %.lr.ph.i.i.i.preheader333, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.at = shl i64 %i.am, 3
  %i.au = add i64 %i.at, %i.a
  %i.av = sub i64 %i.ao, %i.au
  %i.aw = and i64 %i.av, -4                       ; 2 uses
  %i.ax = sub nuw nsw i64 -4, %i.aw
  %i.ay = getelementptr i8, ptr %.02541.i, i64 %i.ax
  %.idx67316 = add i64 %2, %1
  %i.az = shl i64 %.idx67316, 2
  %i.ba = add i64 %i.az, -4
  %i.bb = shl i64 %indvar, 2
  %i.bc = add i64 %i.bb, %i.aw
  %i.bd = sub i64 %i.ba, %i.bc
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %bound0167 = icmp ult ptr %i.ay, %.043.i
  %bound1168 = icmp ult ptr %i.be, %.02541.i
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.lr.ph.i.i.i.preheader333, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck166
  %n.vec171 = and i64 %i.as, 9223372036854775800  ; 3 uses
  %i.bf = mul i64 %n.vec171, -4                   ; 2 uses
  %i.bg = getelementptr i8, ptr %.043.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %.02541.i, i64 %i.bf
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next180, %vector.body172 ] ; 2 uses
  %i.bi = mul i64 %index173, -4                   ; 2 uses
  %next.gep174 = getelementptr i8, ptr %.043.i, i64 %i.bi ; 2 uses
  %next.gep175 = getelementptr i8, ptr %.02541.i, i64 %i.bi ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %next.gep175, i64 -16 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %next.gep175, i64 -32 ; 2 uses
  %wide.load176 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !296, !alias.scope !3722, !noalias !3723
  %wide.load177 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !296, !alias.scope !3722, !noalias !3723
  %i.bl = getelementptr inbounds i8, ptr %next.gep174, i64 -16 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %next.gep174, i64 -32 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !296, !alias.scope !3723
  %wide.load179 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !296, !alias.scope !3723
  store <4 x i32> %wide.load178, ptr %i.bj, align 4, !tbaa !296, !alias.scope !3722, !noalias !3723
  store <4 x i32> %wide.load179, ptr %i.bk, align 4, !tbaa !296, !alias.scope !3722, !noalias !3723
  store <4 x i32> %wide.load176, ptr %i.bl, align 4, !tbaa !296, !alias.scope !3723
  store <4 x i32> %wide.load177, ptr %i.bm, align 4, !tbaa !296, !alias.scope !3723
  %index.next180 = add nuw i64 %index173, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next180, %n.vec171
  br i1 %i.bn, label %middle.block181, label %vector.body172, !llvm.loop !3696

middle.block181:                                  ; preds = %vector.body172
  %cmp.n182 = icmp eq i64 %i.as, %n.vec171
  br i1 %cmp.n182, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.i.preheader333

.lr.ph.i.i.i.preheader333:                        ; preds = %vector.memcheck166, %.lr.ph.i.i.i.preheader, %middle.block181
  %.08.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck166 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block181 ]
  %.057.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck166 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.bh, %middle.block181 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader333, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader333 ]
  %.057.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader333 ]
  %i.bo = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 3 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !296
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !296
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !296
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !296
  %.not.i.i.i = icmp eq ptr %i.f, %i.bo
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3697

bb.d:                                             ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %.043.i, i64 -4 ; 5 uses
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !296 ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !296 ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bw
  %i.by = load i32, ptr %i.bu, align 4, !tbaa !296 ; 2 uses
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !296
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !296
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !296
  store i32 %i.by, ptr %i.bs, align 4, !tbaa !296
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.bt, %bb.e ], [ %.02541.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.02442.i, %bb.e ], [ %i.bs, %bb.f ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, %.126.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3698

._crit_edge.i:                                    ; preds = %bb.g, %bb.c
  %.024.lcssa.i = phi ptr [ %i.ai, %bb.c ], [ %.1.i, %bb.g ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %i.aj, %bb.c ], [ %i.bu, %bb.g ] ; 7 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not6.i.i29.i = icmp eq ptr %i.ah, %.024.lcssa.i
  %or.cond.i = or i1 %.not6.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %.024.lcssa.i191 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %i.bz = udiv i64 %1, %i.b                       ; 2 uses
  %i.ca = shl i64 %i.bz, 3
  %i.cb = or disjoint i64 %i.ca, 4
  %i.cc = mul i64 %2, %i.cb
  %i.cd = add i64 %.024.lcssa.i191, -4
  %i.ce = add i64 %i.cc, %i.a
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check193 = icmp ult i64 %i.cf, 428
  br i1 %min.iters.check193, label %.lr.ph.i.i30.i.preheader332, label %vector.memcheck194

vector.memcheck194:                               ; preds = %.lr.ph.i.i30.i.preheader
  %i.ci = shl i64 %i.bz, 3
  %i.cj = or disjoint i64 %i.ci, 4
  %i.ck = mul i64 %2, %i.cj
  %i.cl = add i64 %i.ck, %i.a
  %reass.sub = sub i64 %i.cl, %.024.lcssa.i191
  %.not317 = add i64 %reass.sub, 3
  %i.cm = and i64 %.not317, -4                    ; 2 uses
  %i.cn = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cm
  %i.co = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cm
  %bound0195 = icmp ult ptr %i.cn, %.0.lcssa.i
  %bound1196 = icmp ult ptr %i.co, %.024.lcssa.i
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %.lr.ph.i.i30.i.preheader332, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck194
  %n.vec199 = and i64 %i.ch, 9223372036854775800  ; 3 uses
  %i.cp = mul i64 %n.vec199, -4                   ; 2 uses
  %i.cq = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cp
  %i.cr = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cp
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next208, %vector.body200 ] ; 2 uses
  %i.cs = mul i64 %index201, -4                   ; 2 uses
  %next.gep202 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cs ; 2 uses
  %next.gep203 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cs ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep203, i64 -16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep203, i64 -32 ; 2 uses
  %wide.load204 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3724, !noalias !3725
  %wide.load205 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3724, !noalias !3725
  %i.cv = getelementptr inbounds i8, ptr %next.gep202, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep202, i64 -32 ; 2 uses
  %wide.load206 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3725
  %wide.load207 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !296, !alias.scope !3725
  store <4 x i32> %wide.load206, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3724, !noalias !3725
  store <4 x i32> %wide.load207, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3724, !noalias !3725
  store <4 x i32> %wide.load204, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3725
  store <4 x i32> %wide.load205, ptr %i.cw, align 4, !tbaa !296, !alias.scope !3725
  %index.next208 = add nuw i64 %index201, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next208, %n.vec199
  br i1 %i.cx, label %middle.block209, label %vector.body200, !llvm.loop !3702

middle.block209:                                  ; preds = %vector.body200
  %cmp.n210 = icmp eq i64 %i.ch, %n.vec199
  br i1 %cmp.n210, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i.preheader332

.lr.ph.i.i30.i.preheader332:                      ; preds = %vector.memcheck194, %.lr.ph.i.i30.i.preheader, %middle.block209
  %.08.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck194 ], [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.cq, %middle.block209 ]
  %.057.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck194 ], [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.cr, %middle.block209 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader332, %.lr.ph.i.i30.i
  %.08.i.i31.i = phi ptr [ %i.cz, %.lr.ph.i.i30.i ], [ %.08.i.i31.i.ph, %.lr.ph.i.i30.i.preheader332 ]
  %.057.i.i32.i = phi ptr [ %i.cy, %.lr.ph.i.i30.i ], [ %.057.i.i32.i.ph, %.lr.ph.i.i30.i.preheader332 ]
  %i.cy = getelementptr inbounds i8, ptr %.057.i.i32.i, i64 -4 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %.08.i.i31.i, i64 -4 ; 3 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !296
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !296
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !296
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !296
  %.not.i.i33.i = icmp eq ptr %i.ah, %i.cy
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i, !llvm.loop !3703

_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block181, %middle.block209, %._crit_edge.i, %bb.b
  %.not4377 = icmp eq i64 %i.e, 0
  br i1 %.not4377, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx68, 0
  br i1 %.not40.i44, label %._crit_edge.i52.us, label %.lr.ph.i45.preheader.preheader

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.dc = mul i64 %2, -8                          ; 2 uses
  %i.dd = shl i64 %2, 3                           ; 2 uses
  %i.de = shl i64 %2, 3
  %i.df = shl i64 %2, 3
  br label %.lr.ph.i45.preheader

._crit_edge.i52.us:                               ; preds = %.lr.ph, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us
  %.078.us = phi i64 [ %i.dg, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.dg = sub i64 %.078.us, %i.b                  ; 3 uses
  %.idx80 = shl nuw nsw i64 %i.dg, 2              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx80 ; 2 uses
  %.idx79 = shl nuw nsw i64 %.078.us, 2           ; 2 uses
  %.not28.i55.us = icmp eq i64 %.idx79, %.idx80
  br i1 %.not28.i55.us, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us, label %.lr.ph.i.i30.i58.us.preheader

.lr.ph.i.i30.i58.us.preheader:                    ; preds = %._crit_edge.i52.us
  %i.di = getelementptr i8, ptr %i.dh, i64 %.idx  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx79 ; 2 uses
  %i.dk = udiv i64 %1, %i.b
  %i.dl = shl nuw nsw i64 %i.dk, 3                ; 3 uses
  %i.dm = add nsw i64 %i.dl, -8
  %i.dn = mul i64 %2, %i.dm
  %i.do = getelementptr i8, ptr %0, i64 %i.dn
  %i.dp = add nsw i64 %i.dl, -4
  %3 = mul i64 %2, %i.dp
  %4 = getelementptr i8, ptr %0, i64 %3
  %5 = or disjoint i64 %i.dl, 4
  %i.dq = mul i64 %2, %5
  %i.dr = getelementptr i8, ptr %0, i64 %i.dq
  %bound0298 = icmp ult ptr %i.do, %i.dr
  %bound1299 = icmp ult ptr %4, %i.f
  %found.conflict300 = and i1 %bound0298, %bound1299
  br i1 %found.conflict300, label %.lr.ph.i.i30.i58.us, label %vector.body303

vector.body303:                                   ; preds = %.lr.ph.i.i30.i58.us.preheader, %vector.body303
  %index304 = phi i64 [ %index.next311, %vector.body303 ], [ 0, %.lr.ph.i.i30.i58.us.preheader ] ; 2 uses
  %i.ds = mul i64 %index304, -4                   ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.di, i64 %i.ds ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.dj, i64 %i.ds ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %next.gep306, i64 -16 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %next.gep306, i64 -32 ; 2 uses
  %wide.load307.a = load <4 x i32>, ptr %i.dt, align 4, !tbaa !296, !alias.scope !3726, !noalias !3727
  %wide.load308 = load <4 x i32>, ptr %i.du, align 4, !tbaa !296, !alias.scope !3726, !noalias !3727
  %i.dv = getelementptr inbounds i8, ptr %next.gep305, i64 -16 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %next.gep305, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !296, !alias.scope !3727
  %wide.load310 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !296, !alias.scope !3727
  store <4 x i32> %wide.load309, ptr %i.dt, align 4, !tbaa !296, !alias.scope !3726, !noalias !3727
  store <4 x i32> %wide.load310, ptr %i.du, align 4, !tbaa !296, !alias.scope !3726, !noalias !3727
  store <4 x i32> %wide.load307.a, ptr %i.dv, align 4, !tbaa !296, !alias.scope !3727
  store <4 x i32> %wide.load308, ptr %i.dw, align 4, !tbaa !296, !alias.scope !3727
  %index.next311 = add nuw i64 %index304, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next311, 4611686018427387904
  br i1 %i.dx, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us, label %vector.body303, !llvm.loop !3707

.lr.ph.i.i30.i58.us:                              ; preds = %.lr.ph.i.i30.i58.us.preheader, %.lr.ph.i.i30.i58.us
  %.08.i.i31.i59.us = phi ptr [ %i.el, %.lr.ph.i.i30.i58.us ], [ %i.di, %.lr.ph.i.i30.i58.us.preheader ] ; 4 uses
  %.057.i.i32.i60.us = phi ptr [ %i.ek, %.lr.ph.i.i30.i58.us ], [ %i.dj, %.lr.ph.i.i30.i58.us.preheader ] ; 4 uses
  %i.dy = getelementptr inbounds i8, ptr %.057.i.i32.i60.us, i64 -4 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.08.i.i31.i59.us, i64 -4 ; 2 uses
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !296
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !296
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !296
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !296
  %i.ec = getelementptr inbounds i8, ptr %.057.i.i32.i60.us, i64 -8 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.08.i.i31.i59.us, i64 -8 ; 2 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !296
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !296
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !296
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !296
  %i.eg = getelementptr inbounds i8, ptr %.057.i.i32.i60.us, i64 -12 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.08.i.i31.i59.us, i64 -12 ; 2 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !296
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !296
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !296
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !296
  %i.ek = getelementptr inbounds i8, ptr %.057.i.i32.i60.us, i64 -16 ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %.08.i.i31.i59.us, i64 -16 ; 3 uses
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !296
  %i.en = load i32, ptr %i.el, align 4, !tbaa !296
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !296
  store i32 %i.em, ptr %i.el, align 4, !tbaa !296
  %.not.i.i33.i61.us.3 = icmp eq ptr %i.dh, %i.ek
  br i1 %.not.i.i33.i61.us.3, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us, label %.lr.ph.i.i30.i58.us, !llvm.loop !3708

_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us: ; preds = %vector.body303, %.lr.ph.i.i30.i58.us, %._crit_edge.i52.us
  %.not43.us = icmp eq i64 %i.dg, 0
  br i1 %.not43.us, label %._crit_edge, label %._crit_edge.i52.us, !llvm.loop !3709

.lr.ph.i45.preheader:                             ; preds = %.lr.ph.i45.preheader.preheader, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66
  %indvar226 = phi i64 [ 0, %.lr.ph.i45.preheader.preheader ], [ %indvar.next227, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66 ] ; 7 uses
  %.078 = phi i64 [ %i.e, %.lr.ph.i45.preheader.preheader ], [ %i.eo, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66 ] ; 2 uses
  %i.eo = sub i64 %.078, %i.b                     ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo ; 4 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 %.idx68 ; 4 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.078
  %i.es = getelementptr i8, ptr %i.ep, i64 %.idx
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader, %bb.k
  %indvar228 = phi i64 [ 0, %.lr.ph.i45.preheader ], [ %indvar.next229, %bb.k ] ; 3 uses
  %.043.i46 = phi ptr [ %i.es, %.lr.ph.i45.preheader ], [ %i.gp, %bb.k ] ; 6 uses
  %.02442.i47 = phi ptr [ %i.er, %.lr.ph.i45.preheader ], [ %.1.i50, %bb.k ] ; 3 uses
  %.02541.i48 = phi ptr [ %i.eq, %.lr.ph.i45.preheader ], [ %.126.i49, %bb.k ] ; 9 uses
  %i.et = icmp eq ptr %.02442.i47, %i.eq
  br i1 %i.et, label %.lr.ph.i.i.i62.preheader, label %bb.h

.lr.ph.i.i.i62.preheader:                         ; preds = %.lr.ph.i45
  %.02541.i48225.le = ptrtoaddr ptr %.02541.i48 to i64 ; 2 uses
  %i.eu = udiv i64 %1, %i.b                       ; 3 uses
  %i.ev = shl nuw i64 %i.eu, 1
  %i.ew = add i64 %i.ev, 4611686018427387902
  %i.ex = mul i64 %2, %i.ew
  %i.ey = shl i64 %i.ex, 2
  %i.ez = add i64 %i.ey, %i.a
  %i.fa = mul i64 %indvar226, %i.df
  %reass.sub320 = sub i64 %i.fa, %i.ez
  %i.fb = add i64 %reass.sub320, -4
  %i.fc = add i64 %i.fb, %.02541.i48225.le        ; 2 uses
  %i.fd = lshr i64 %i.fc, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check231 = icmp ult i64 %i.fc, 252
  br i1 %min.iters.check231, label %.lr.ph.i.i.i62.preheader324, label %vector.memcheck232

vector.memcheck232:                               ; preds = %.lr.ph.i.i.i62.preheader
  %i.ff = shl nuw i64 %i.eu, 1
  %i.fg = add i64 %i.ff, 4611686018427387902
  %i.fh = mul i64 %2, %i.fg
  %i.fi = shl i64 %i.fh, 2
  %i.fj = add i64 %i.fi, %i.a
  %i.fk = mul i64 %indvar226, %i.dd
  %reass.sub321 = sub i64 %i.fk, %i.fj
  %i.fl = add i64 %reass.sub321, -4
  %i.fm = add i64 %i.fl, %.02541.i48225.le
  %i.fn = and i64 %i.fm, -4                       ; 2 uses
  %i.fo = sub nuw nsw i64 -4, %i.fn
  %i.fp = getelementptr i8, ptr %.02541.i48, i64 %i.fo
  %i.fq = shl i64 %i.eu, 3
  %i.fr = or disjoint i64 %i.fq, 4
  %i.fs = mul i64 %2, %i.fr
  %i.ft = add i64 %i.fs, -4
  %i.fu = mul i64 %indvar226, %i.dc
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = shl i64 %indvar228, 2
  %i.fx = add i64 %i.fw, %i.fn
  %i.fy = sub i64 %i.fv, %i.fx
  %i.fz = getelementptr i8, ptr %0, i64 %i.fy
  %bound0233 = icmp ult ptr %i.fp, %.043.i46
  %bound1234 = icmp ult ptr %i.fz, %.02541.i48
  %found.conflict235 = and i1 %bound0233, %bound1234
  br i1 %found.conflict235, label %.lr.ph.i.i.i62.preheader324, label %vector.ph236

vector.ph236:                                     ; preds = %vector.memcheck232
  %n.vec237 = and i64 %i.fe, 9223372036854775800  ; 3 uses
  %i.ga = mul i64 %n.vec237, -4                   ; 2 uses
  %i.gb = getelementptr i8, ptr %.043.i46, i64 %i.ga
  %i.gc = getelementptr i8, ptr %.02541.i48, i64 %i.ga
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph236
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next246, %vector.body238 ] ; 2 uses
  %i.gd = mul i64 %index239, -4                   ; 2 uses
  %next.gep240 = getelementptr i8, ptr %.043.i46, i64 %i.gd ; 2 uses
  %next.gep241 = getelementptr i8, ptr %.02541.i48, i64 %i.gd ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %next.gep241, i64 -16 ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %next.gep241, i64 -32 ; 2 uses
  %wide.load242 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !296, !alias.scope !3728, !noalias !3729
  %wide.load243 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !296, !alias.scope !3728, !noalias !3729
  %i.gg = getelementptr inbounds i8, ptr %next.gep240, i64 -16 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %next.gep240, i64 -32 ; 2 uses
  %wide.load244 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !296, !alias.scope !3729
  %wide.load245 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !296, !alias.scope !3729
  store <4 x i32> %wide.load244, ptr %i.ge, align 4, !tbaa !296, !alias.scope !3728, !noalias !3729
  store <4 x i32> %wide.load245, ptr %i.gf, align 4, !tbaa !296, !alias.scope !3728, !noalias !3729
  store <4 x i32> %wide.load242, ptr %i.gg, align 4, !tbaa !296, !alias.scope !3729
  store <4 x i32> %wide.load243, ptr %i.gh, align 4, !tbaa !296, !alias.scope !3729
  %index.next246 = add nuw i64 %index239, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next246, %n.vec237
  br i1 %i.gi, label %middle.block247, label %vector.body238, !llvm.loop !3713

middle.block247:                                  ; preds = %vector.body238
  %cmp.n248 = icmp eq i64 %i.fe, %n.vec237
  br i1 %cmp.n248, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66, label %.lr.ph.i.i.i62.preheader324

.lr.ph.i.i.i62.preheader324:                      ; preds = %vector.memcheck232, %.lr.ph.i.i.i62.preheader, %middle.block247
  %.08.i.i.i63.ph = phi ptr [ %.043.i46, %vector.memcheck232 ], [ %.043.i46, %.lr.ph.i.i.i62.preheader ], [ %i.gb, %middle.block247 ]
  %.057.i.i.i64.ph = phi ptr [ %.02541.i48, %vector.memcheck232 ], [ %.02541.i48, %.lr.ph.i.i.i62.preheader ], [ %i.gc, %middle.block247 ]
  br label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %.lr.ph.i.i.i62.preheader324, %.lr.ph.i.i.i62
  %.08.i.i.i63 = phi ptr [ %i.gk, %.lr.ph.i.i.i62 ], [ %.08.i.i.i63.ph, %.lr.ph.i.i.i62.preheader324 ]
  %.057.i.i.i64 = phi ptr [ %i.gj, %.lr.ph.i.i.i62 ], [ %.057.i.i.i64.ph, %.lr.ph.i.i.i62.preheader324 ]
  %i.gj = getelementptr inbounds i8, ptr %.057.i.i.i64, i64 -4 ; 4 uses
  %i.gk = getelementptr inbounds i8, ptr %.08.i.i.i63, i64 -4 ; 3 uses
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !296
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !296
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !296
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !296
  %.not.i.i.i65 = icmp eq ptr %i.ep, %i.gj
  br i1 %.not.i.i.i65, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66, label %.lr.ph.i.i.i62, !llvm.loop !3714

bb.h:                                             ; preds = %.lr.ph.i45
  %i.gn = getelementptr inbounds i8, ptr %.02442.i47, i64 -4 ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %.02541.i48, i64 -4 ; 3 uses
  %i.gp = getelementptr inbounds i8, ptr %.043.i46, i64 -4 ; 10 uses
  %i.gq = load i32, ptr %i.gn, align 4, !tbaa !296 ; 2 uses
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !296 ; 2 uses
  %i.gs = icmp slt i32 %i.gq, %i.gr
  %i.gt = load i32, ptr %i.gp, align 4, !tbaa !296 ; 2 uses
  br i1 %i.gs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !296
  store i32 %i.gt, ptr %i.go, align 4, !tbaa !296
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !296
  store i32 %i.gt, ptr %i.gn, align 4, !tbaa !296
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.126.i49 = phi ptr [ %i.go, %bb.i ], [ %.02541.i48, %bb.j ] ; 2 uses
  %.1.i50 = phi ptr [ %.02442.i47, %bb.i ], [ %i.gn, %bb.j ] ; 10 uses
  %.not.i51 = icmp eq ptr %i.ep, %.126.i49
  %indvar.next229 = add i64 %indvar228, 1
  br i1 %.not.i51, label %._crit_edge.i52.loopexit, label %.lr.ph.i45, !llvm.loop !3698

._crit_edge.i52.loopexit:                         ; preds = %bb.k
  %.1.i50259.le = ptrtoaddr ptr %.1.i50 to i64    ; 2 uses
  %.not28.i55 = icmp eq ptr %.1.i50, %i.gp
end_hunk_0
