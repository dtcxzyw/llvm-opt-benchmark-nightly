Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2818
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 4
  %.not.i.i.i66 = icmp eq ptr %i.ev, %i.dx
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !3655

bb.h:                                             ; preds = %.lr.ph.i46
  %i.ex = load i32, ptr %.02246.i47, align 4, !tbaa !296 ; 2 uses
  %i.ey = load i32, ptr %.02444.i49, align 4, !tbaa !296 ; 2 uses
  %i.ez = icmp slt i32 %i.ex, %i.ey
  %i.fa = load i32, ptr %.02345.i48, align 4, !tbaa !296 ; 2 uses
  br i1 %i.ez, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ex, ptr %.02345.i48, align 4, !tbaa !296
  store i32 %i.fa, ptr %.02246.i47, align 4, !tbaa !296
  %i.fb = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.ey, ptr %.02345.i48, align 4, !tbaa !296
  store i32 %i.fa, ptr %.02444.i49, align 4, !tbaa !296
  %i.fc = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.fc, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.fb, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %i.fd = getelementptr i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i52 = icmp eq ptr %.1.i51, %i.dx
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i52, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53, label %.lr.ph.i46, !llvm.loop !3643

_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53: ; preds = %bb.k, %bb.g
  %.024.lcssa.i54 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 9 uses
  %.023.lcssa.i55 = phi ptr [ %i.dv, %bb.g ], [ %i.fd, %bb.k ] ; 7 uses
  %.not27.i56 = icmp eq ptr %.023.lcssa.i55, %.024.lcssa.i54
  %.not8.i.i28.i57 = icmp eq ptr %.024.lcssa.i54, %i.dw
  %or.cond38.i58 = or i1 %.not8.i.i28.i57, %.not27.i56
  br i1 %or.cond38.i58, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader

.lr.ph.i.i29.i59.preheader:                       ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53
  %.024.lcssa.i54153 = ptrtoaddr ptr %.024.lcssa.i54 to i64
  %i.fe = add i64 %.idx, %.0.lcssa152
  %i.ff = add i64 %i.fe, -4
  %i.fg = sub i64 %i.ff, %.024.lcssa.i54153       ; 3 uses
  %i.fh = lshr i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fg, 28
  br i1 %min.iters.check, label %.lr.ph.i.i29.i59.preheader298, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i29.i59.preheader
  %i.fj = and i64 %i.fg, -4
  %i.fk = add i64 %i.fj, 4                        ; 2 uses
  %i.fl = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fk
  %i.fm = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fk
  %bound0 = icmp ult ptr %.024.lcssa.i54, %i.fm
  %bound1 = icmp ult ptr %.023.lcssa.i55, %i.fl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i29.i59.preheader298, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fi, 9223372036854775800     ; 3 uses
  %i.fn = shl i64 %n.vec, 2                       ; 2 uses
  %i.fo = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fn
  %i.fp = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fq ; 3 uses
  %next.gep154 = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fq ; 3 uses
  %i.fr = getelementptr i8, ptr %next.gep154, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep154, align 4, !tbaa !296, !alias.scope !3673, !noalias !3674
  %wide.load155 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !296, !alias.scope !3673, !noalias !3674
  %i.fs = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load156 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3674
  %wide.load157 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !296, !alias.scope !3674
  store <4 x i32> %wide.load156, ptr %next.gep154, align 4, !tbaa !296, !alias.scope !3673, !noalias !3674
  store <4 x i32> %wide.load157, ptr %i.fr, align 4, !tbaa !296, !alias.scope !3673, !noalias !3674
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3674
  store <4 x i32> %wide.load155, ptr %i.fs, align 4, !tbaa !296, !alias.scope !3674
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !3659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader298

.lr.ph.i.i29.i59.preheader298:                    ; preds = %vector.memcheck, %.lr.ph.i.i29.i59.preheader, %middle.block
  %.010.i.i30.i60.ph = phi ptr [ %.023.lcssa.i55, %vector.memcheck ], [ %.023.lcssa.i55, %.lr.ph.i.i29.i59.preheader ], [ %i.fo, %middle.block ]
  %.079.i.i31.i61.ph = phi ptr [ %.024.lcssa.i54, %vector.memcheck ], [ %.024.lcssa.i54, %.lr.ph.i.i29.i59.preheader ], [ %i.fp, %middle.block ]
  br label %.lr.ph.i.i29.i59

.lr.ph.i.i29.i59:                                 ; preds = %.lr.ph.i.i29.i59.preheader298, %.lr.ph.i.i29.i59
  %.010.i.i30.i60 = phi ptr [ %i.fx, %.lr.ph.i.i29.i59 ], [ %.010.i.i30.i60.ph, %.lr.ph.i.i29.i59.preheader298 ] ; 3 uses
  %.079.i.i31.i61 = phi ptr [ %i.fw, %.lr.ph.i.i29.i59 ], [ %.079.i.i31.i61.ph, %.lr.ph.i.i29.i59.preheader298 ] ; 3 uses
  %i.fu = load i32, ptr %.079.i.i31.i61, align 4, !tbaa !296
  %i.fv = load i32, ptr %.010.i.i30.i60, align 4, !tbaa !296
  store i32 %i.fv, ptr %.079.i.i31.i61, align 4, !tbaa !296
  store i32 %i.fu, ptr %.010.i.i30.i60, align 4, !tbaa !296
  %i.fw = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 4
  %.not.i.i32.i62 = icmp eq ptr %i.fw, %i.dw
  br i1 %.not.i.i32.i62, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i29.i59, !llvm.loop !3660

bb.l:                                             ; preds = %._crit_edge
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.04186, i64 %1
  %i.fz = sub i64 0, %.04285                      ; 4 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.ga = getelementptr [4 x i8], ptr %.0.lcssa, i64 %i.fz ; 5 uses
  %.reass = add i64 %.04186168, %invariant.op
  %i.gb = sub i64 %.reass, %.0.lcssa152           ; 2 uses
  %i.gc = lshr i64 %i.gb, 2
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check202 = icmp ult i64 %i.gb, 28
  br i1 %min.iters.check202, label %.lr.ph.i.i.preheader301, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i.i.preheader
  %i.ge = sub i64 %.04186168, %.0.lcssa152
  %i.gf = add i64 %i.d, %i.ge
  %i.gg = and i64 %i.gf, -4
  %i.gh = add i64 %i.gg, 4                        ; 2 uses
  %i.gi = getelementptr i8, ptr %.0.lcssa, i64 %i.gh
  %i.gj = shl i64 %.04285, 2
  %i.gk = sub i64 %i.gh, %i.gj
  %i.gl = getelementptr i8, ptr %.0.lcssa, i64 %i.gk
  %bound0204 = icmp ult ptr %.0.lcssa, %i.gl
  %bound1205 = icmp ult ptr %i.ga, %i.gi
  %found.conflict206 = and i1 %bound0204, %bound1205
  br i1 %found.conflict206, label %.lr.ph.i.i.preheader301, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck203
  %n.vec208 = and i64 %i.gd, 9223372036854775800  ; 3 uses
  %i.gm = shl i64 %n.vec208, 2                    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.ga, i64 %i.gm
  %i.go = getelementptr i8, ptr %.0.lcssa, i64 %i.gm
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body209 ] ; 2 uses
  %i.gp = shl i64 %index210, 2                    ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.ga, i64 %i.gp ; 3 uses
  %next.gep212 = getelementptr i8, ptr %.0.lcssa, i64 %i.gp ; 3 uses
  %i.gq = getelementptr i8, ptr %next.gep212, i64 16 ; 2 uses
  %wide.load213 = load <4 x i32>, ptr %next.gep212, align 4, !tbaa !296, !alias.scope !3675, !noalias !3676
  %wide.load214 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !296, !alias.scope !3675, !noalias !3676
  %i.gr = getelementptr i8, ptr %next.gep211, i64 16 ; 2 uses
  %wide.load215 = load <4 x i32>, ptr %next.gep211, align 4, !tbaa !296, !alias.scope !3676
  %wide.load216 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !296, !alias.scope !3676
  store <4 x i32> %wide.load215, ptr %next.gep212, align 4, !tbaa !296, !alias.scope !3675, !noalias !3676
  store <4 x i32> %wide.load216, ptr %i.gq, align 4, !tbaa !296, !alias.scope !3675, !noalias !3676
  store <4 x i32> %wide.load213, ptr %next.gep211, align 4, !tbaa !296, !alias.scope !3676
  store <4 x i32> %wide.load214, ptr %i.gr, align 4, !tbaa !296, !alias.scope !3676
  %index.next217 = add nuw i64 %index210, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.gs, label %middle.block218, label %vector.body209, !llvm.loop !3664

middle.block218:                                  ; preds = %vector.body209
  %cmp.n219 = icmp eq i64 %i.gd, %n.vec208
  br i1 %cmp.n219, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.preheader301

.lr.ph.i.i.preheader301:                          ; preds = %vector.memcheck203, %.lr.ph.i.i.preheader, %middle.block218
  %.010.i.i.ph = phi ptr [ %i.ga, %vector.memcheck203 ], [ %i.ga, %.lr.ph.i.i.preheader ], [ %i.gn, %middle.block218 ]
  %.079.i.i.ph = phi ptr [ %.0.lcssa, %vector.memcheck203 ], [ %.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.go, %middle.block218 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader301, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gw, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader301 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.gv, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader301 ] ; 3 uses
  %i.gt = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.gu = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.gu, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.gt, ptr %.010.i.i, align 4, !tbaa !296
  %i.gv = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.gv, %i.fy
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i, !llvm.loop !3665

_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i63, %.lr.ph.i.i29.i59, %middle.block218, %middle.block187, %middle.block, %bb.l, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53
  %.pre-phi = phi i64 [ %i.du, %middle.block187 ], [ %i.du, %middle.block ], [ %i.du, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53 ], [ %i.fz, %bb.l ], [ %i.fz, %middle.block218 ], [ %i.du, %.lr.ph.i.i.i63 ], [ %i.du, %.lr.ph.i.i29.i59 ], [ %i.fz, %.lr.ph.i.i ]
  %i.gx = getelementptr inbounds [4 x i8], ptr %.04186, i64 %.pre-phi
  %i.gy = sub nuw i64 %.04087, %.04285            ; 2 uses
  %i.gz = icmp ult i64 %i.e, %3
  %i.ha = icmp uge i64 %i.gy, %i.e
  %i.hb = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %i.hb, label %.preheader, label %._crit_edge88, !llvm.loop !3666

._crit_edge88:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.e, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = shl i64 %2, 1                            ; 8 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b                        ; 2 uses
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %2 ; 3 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %i.l = shl i64 %i.k, 3
  %i.m = add i64 %i.i, -4
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 60
  %i.q = shl i64 %2, 2
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader285, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.r = mul i64 %n.vec, -4                       ; 2 uses
  %i.s = getelementptr i8, ptr %i.h, i64 %i.r
  %i.t = getelementptr i8, ptr %i.g, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.u ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.g, i64 %i.u ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %next.gep142, i64 -16
  %i.w = getelementptr inbounds i8, ptr %next.gep142, i64 -32
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !296
  %wide.load143 = load <4 x i32>, ptr %i.w, align 4, !tbaa !296
  %i.x = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.y = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.x, align 4, !tbaa !296
  store <4 x i32> %wide.load143, ptr %i.y, align 4, !tbaa !296
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !3677

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader285

.lr.ph.i.i.preheader285:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.s, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader285, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader285 ]
  %.079.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader285 ]
  %i.aa = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !296
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !296
  %.not.i.i = icmp eq ptr %i.f, %i.aa
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3678

bb.c:                                             ; preds = %bb.a
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx68 ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bi, %bb.d ], [ %i.af, %bb.c ] ; 5 uses
  %.02442.i = phi ptr [ %.024..i, %bb.d ], [ %i.ae, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %..025.i, %bb.d ], [ %i.ad, %bb.c ] ; 7 uses
  %i.ag = icmp eq ptr %.02442.i, %i.ad
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i148.le = ptrtoaddr ptr %.02541.i to i64 ; 2 uses
  %i.ah = udiv i64 %1, %i.b
  %i.ai = mul i64 %2, %i.ah
  %i.aj = shl i64 %i.ai, 3
  %i.ak = add i64 %.02541.i148.le, -4
  %i.al = add i64 %i.aj, %i.a
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader278, label %vector.memcheck151

vector.memcheck151:                               ; preds = %.lr.ph.i.i.i.preheader
  %.neg = mul i64 %1, -4
  %i.ap = add i64 %.idx68, %i.a
  %.neg260 = sub i64 %.neg, %i.ap
  %i.aq = shl i64 %indvar, 2
  %i.ar = add i64 %.neg260, %i.aq
  %i.as = add i64 %i.ar, %.02541.i148.le
  %i.at = add i64 %i.as, -1
  %diff.check152 = icmp ult i64 %i.at, 31
  br i1 %diff.check152, label %.lr.ph.i.i.i.preheader278, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck151
  %n.vec154 = and i64 %i.ao, 9223372036854775800  ; 3 uses
  %i.au = mul i64 %n.vec154, -4                   ; 2 uses
  %i.av = getelementptr i8, ptr %.043.i, i64 %i.au
  %i.aw = getelementptr i8, ptr %.02541.i, i64 %i.au
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.ax = mul i64 %index156, -4                   ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.043.i, i64 %i.ax ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.02541.i, i64 %i.ax ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %next.gep158, i64 -16
  %i.az = getelementptr inbounds i8, ptr %next.gep158, i64 -32
  %wide.load159 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !296
  %wide.load160 = load <4 x i32>, ptr %i.az, align 4, !tbaa !296
  %i.ba = getelementptr inbounds i8, ptr %next.gep157, i64 -16
  %i.bb = getelementptr inbounds i8, ptr %next.gep157, i64 -32
  store <4 x i32> %wide.load159, ptr %i.ba, align 4, !tbaa !296
  store <4 x i32> %wide.load160, ptr %i.bb, align 4, !tbaa !296
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.bc, label %middle.block162, label %vector.body155, !llvm.loop !3679

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.ao, %n.vec154
  br i1 %cmp.n163, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.i.preheader278

.lr.ph.i.i.i.preheader278:                        ; preds = %vector.memcheck151, %.lr.ph.i.i.i.preheader, %middle.block162
  %.010.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck151 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.av, %middle.block162 ]
  %.079.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck151 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.aw, %middle.block162 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader278, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader278 ]
  %.079.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader278 ]
  %i.bd = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !296
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !296
  %.not.i.i.i = icmp eq ptr %i.f, %i.bd
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3680

bb.d:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.043.i, i64 -4 ; 3 uses
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !296 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !296 ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk               ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.bj, i32 %i.bk)
  %..025.i = select i1 %i.bl, ptr %i.bh, ptr %.02541.i ; 2 uses
  %.024..i = select i1 %i.bl, ptr %.02442.i, ptr %i.bg ; 2 uses
  store i32 %..i, ptr %i.bi, align 4, !tbaa !296
  %.not.i = icmp eq ptr %i.f, %..025.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3681

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.024.lcssa.i = phi ptr [ %i.ae, %bb.c ], [ %.024..i, %bb.d ] ; 6 uses
  %.0.lcssa.i = phi ptr [ %i.af, %bb.c ], [ %i.bi, %bb.d ] ; 5 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.ad, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %.0.lcssa.i171 = ptrtoaddr ptr %.0.lcssa.i to i64
  %.024.lcssa.i170 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %i.bm = udiv i64 %1, %i.b
  %i.bn = shl i64 %i.bm, 3
  %i.bo = or disjoint i64 %i.bn, 4
  %i.bp = mul i64 %2, %i.bo
  %i.bq = add i64 %.024.lcssa.i170, -4
  %i.br = add i64 %i.bp, %i.a
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.bs, 44
  %i.bv = sub i64 %.0.lcssa.i171, %.024.lcssa.i170
  %diff.check175 = icmp ugt i64 %i.bv, -32
  %or.cond266 = or i1 %min.iters.check173, %diff.check175
  br i1 %or.cond266, label %.lr.ph.i.i30.i.preheader277, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph.i.i30.i.preheader
  %n.vec177 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.bw = mul i64 %n.vec177, -4                   ; 2 uses
  %i.bx = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bw
  %i.by = getelementptr i8, ptr %.024.lcssa.i, i64 %i.bw
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 2 uses
  %i.bz = mul i64 %index179, -4                   ; 2 uses
  %next.gep180 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bz ; 2 uses
  %next.gep181 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep181, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep181, i64 -32
  %wide.load182 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !296
  %wide.load183 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !296
  %i.cc = getelementptr inbounds i8, ptr %next.gep180, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep180, i64 -32
  store <4 x i32> %wide.load182, ptr %i.cc, align 4, !tbaa !296
  store <4 x i32> %wide.load183, ptr %i.cd, align 4, !tbaa !296
  %index.next184 = add nuw i64 %index179, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.ce, label %middle.block185, label %vector.body178, !llvm.loop !3682

middle.block185:                                  ; preds = %vector.body178
  %cmp.n186 = icmp eq i64 %i.bu, %n.vec177
  br i1 %cmp.n186, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i.preheader277

.lr.ph.i.i30.i.preheader277:                      ; preds = %.lr.ph.i.i30.i.preheader, %middle.block185
  %.010.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.bx, %middle.block185 ]
  %.079.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.by, %middle.block185 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader277, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.cg, %.lr.ph.i.i30.i ], [ %.010.i.i31.i.ph, %.lr.ph.i.i30.i.preheader277 ]
  %.079.i.i32.i = phi ptr [ %i.cf, %.lr.ph.i.i30.i ], [ %.079.i.i32.i.ph, %.lr.ph.i.i30.i.preheader277 ]
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !296
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !296
  %.not.i.i33.i = icmp eq ptr %i.ad, %i.cf
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i, !llvm.loop !3683

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block162, %middle.block185, %._crit_edge.i, %bb.b
  %.not4378 = icmp eq i64 %i.e, 0
  br i1 %.not4378, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit
  %.idx69 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx69, 0
  br i1 %.not40.i44, label %._crit_edge.i53.us.preheader, label %.lr.ph.i45.preheader.preheader

._crit_edge.i53.us.preheader:                     ; preds = %.lr.ph
  %invariant.gep = getelementptr i8, ptr %0, i64 %.idx
  br label %._crit_edge.i53.us

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.ci = shl i64 %2, 3                           ; 2 uses
  %i.cj = shl i64 %2, 3
  %i.ck = shl i64 %2, 3
  br label %.lr.ph.i45.preheader

._crit_edge.i53.us:                               ; preds = %._crit_edge.i53.us.preheader, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us
  %.079.us = phi i64 [ %i.cl, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us ], [ %i.e, %._crit_edge.i53.us.preheader ] ; 2 uses
  %i.cl = sub i64 %.079.us, %i.b                  ; 3 uses
  %.idx81 = shl nuw nsw i64 %i.cl, 2              ; 2 uses
  %.idx80 = shl nuw nsw i64 %.079.us, 2           ; 2 uses
  %.not28.i56.us = icmp eq i64 %.idx80, %.idx81
  br i1 %.not28.i56.us, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us, label %.lr.ph.i.i30.i59.us.preheader

.lr.ph.i.i30.i59.us.preheader:                    ; preds = %._crit_edge.i53.us
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx81
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx80
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %.lr.ph.i.i30.i59.us.preheader
  %index250 = phi i64 [ 0, %.lr.ph.i.i30.i59.us.preheader ], [ %index.next255, %vector.body249 ] ; 2 uses
  %i.cn = mul i64 %index250, -4                   ; 2 uses
  %next.gep251 = getelementptr i8, ptr %gep, i64 %i.cn ; 2 uses
  %next.gep252 = getelementptr i8, ptr %i.cm, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep252, i64 -16
  %i.cp = getelementptr inbounds i8, ptr %next.gep252, i64 -32
  %wide.load253 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296
  %wide.load254 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !296
  %i.cq = getelementptr inbounds i8, ptr %next.gep251, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep251, i64 -32
  store <4 x i32> %wide.load253, ptr %i.cq, align 4, !tbaa !296
  store <4 x i32> %wide.load254, ptr %i.cr, align 4, !tbaa !296
  %index.next255 = add nuw i64 %index250, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next255, 4611686018427387904
  br i1 %i.cs, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us, label %vector.body249, !llvm.loop !3684

_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us: ; preds = %vector.body249, %._crit_edge.i53.us
  %.not43.us = icmp eq i64 %i.cl, 0
  br i1 %.not43.us, label %._crit_edge, label %._crit_edge.i53.us, !llvm.loop !3685

.lr.ph.i45.preheader:                             ; preds = %.lr.ph.i45.preheader.preheader, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67
  %indvar197 = phi i64 [ 0, %.lr.ph.i45.preheader.preheader ], [ %indvar.next198, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67 ] ; 5 uses
  %.079 = phi i64 [ %i.e, %.lr.ph.i45.preheader.preheader ], [ %i.ct, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67 ] ; 2 uses
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
  br i1 %i.ea, label %middle.block214, label %vector.body207, !llvm.loop !3686

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
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !3687

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
  br i1 %.not.i52, label %._crit_edge.i53.loopexit, label %.lr.ph.i45, !llvm.loop !3681

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
  br i1 %i.fh, label %middle.block235, label %vector.body228, !llvm.loop !3688

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
  br i1 %.not.i.i33.i62, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i30.i59, !llvm.loop !3689

_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67: ; preds = %.lr.ph.i.i30.i59, %.lr.ph.i.i.i63, %middle.block235, %middle.block214, %._crit_edge.i53.loopexit
  %.not43 = icmp eq i64 %i.ct, 0
  %indvar.next198 = add i64 %indvar197, 1
  br i1 %.not43, label %._crit_edge, label %.lr.ph.i45.preheader, !llvm.loop !3685

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
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e ; 5 uses
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
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !296, !alias.scope !3722, !noalias !3723
  %wide.load151 = load <4 x i32>, ptr %i.z, align 4, !tbaa !296, !alias.scope !3722, !noalias !3723
  %i.aa = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load152 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !296, !alias.scope !3723
  %wide.load153 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !296, !alias.scope !3723
  store <4 x i32> %wide.load152, ptr %i.y, align 4, !tbaa !296, !alias.scope !3722, !noalias !3723
  store <4 x i32> %wide.load153, ptr %i.z, align 4, !tbaa !296, !alias.scope !3722, !noalias !3723
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !296, !alias.scope !3723
  store <4 x i32> %wide.load151, ptr %i.ab, align 4, !tbaa !296, !alias.scope !3723
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !3693

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
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3694

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
  %wide.load176 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !296, !alias.scope !3724, !noalias !3725
  %wide.load177 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !296, !alias.scope !3724, !noalias !3725
  %i.bl = getelementptr inbounds i8, ptr %next.gep174, i64 -16 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %next.gep174, i64 -32 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !296, !alias.scope !3725
  %wide.load179 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !296, !alias.scope !3725
  store <4 x i32> %wide.load178, ptr %i.bj, align 4, !tbaa !296, !alias.scope !3724, !noalias !3725
  store <4 x i32> %wide.load179, ptr %i.bk, align 4, !tbaa !296, !alias.scope !3724, !noalias !3725
  store <4 x i32> %wide.load176, ptr %i.bl, align 4, !tbaa !296, !alias.scope !3725
  store <4 x i32> %wide.load177, ptr %i.bm, align 4, !tbaa !296, !alias.scope !3725
  %index.next180 = add nuw i64 %index173, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next180, %n.vec171
  br i1 %i.bn, label %middle.block181, label %vector.body172, !llvm.loop !3698

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
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3699

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
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3700

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
  %wide.load204 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3726, !noalias !3727
  %wide.load205 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3726, !noalias !3727
  %i.cv = getelementptr inbounds i8, ptr %next.gep202, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep202, i64 -32 ; 2 uses
  %wide.load206 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3727
  %wide.load207 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !296, !alias.scope !3727
  store <4 x i32> %wide.load206, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3726, !noalias !3727
  store <4 x i32> %wide.load207, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3726, !noalias !3727
  store <4 x i32> %wide.load204, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3727
  store <4 x i32> %wide.load205, ptr %i.cw, align 4, !tbaa !296, !alias.scope !3727
  %index.next208 = add nuw i64 %index201, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next208, %n.vec199
  br i1 %i.cx, label %middle.block209, label %vector.body200, !llvm.loop !3704

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
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i, !llvm.loop !3705

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
  %i.dh = getelementptr i8, ptr %0, i64 %.idx80   ; 2 uses
  %.idx79 = shl nuw nsw i64 %.078.us, 2           ; 2 uses
  %.not28.i55.us = icmp eq i64 %.idx79, %.idx80
  br i1 %.not28.i55.us, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us, label %.lr.ph.i.i30.i58.us.preheader

.lr.ph.i.i30.i58.us.preheader:                    ; preds = %._crit_edge.i52.us
  %i.di = getelementptr i8, ptr %i.dh, i64 %.idx  ; 3 uses
  %i.dj = getelementptr i8, ptr %0, i64 %.idx79   ; 3 uses
  %i.dk = udiv i64 %1, %i.b
  %i.dl = shl nuw nsw i64 %i.dk, 3                ; 2 uses
  %i.dm = add nsw i64 %i.dl, -8
  %i.dn = mul i64 %2, %i.dm
  %i.do = getelementptr i8, ptr %0, i64 %i.dn
  %i.dp = add nsw i64 %i.dl, -4
  %i.dq = mul i64 %2, %i.dp
  %i.dr = getelementptr i8, ptr %0, i64 %i.dq
  %bound0298 = icmp ult ptr %i.do, %i.di
  %bound1299 = icmp ult ptr %i.dr, %i.dj
  %found.conflict300 = and i1 %bound0298, %bound1299
  br i1 %found.conflict300, label %.lr.ph.i.i30.i58.us, label %vector.body303

vector.body303:                                   ; preds = %.lr.ph.i.i30.i58.us.preheader, %vector.body303
  %index304 = phi i64 [ %index.next311, %vector.body303 ], [ 0, %.lr.ph.i.i30.i58.us.preheader ] ; 2 uses
  %i.ds = mul i64 %index304, -4                   ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.di, i64 %i.ds ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.dj, i64 %i.ds ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %next.gep306, i64 -16 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %next.gep306, i64 -32 ; 2 uses
  %wide.load307 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !296, !alias.scope !3728, !noalias !3729
  %wide.load308 = load <4 x i32>, ptr %i.du, align 4, !tbaa !296, !alias.scope !3728, !noalias !3729
  %i.dv = getelementptr inbounds i8, ptr %next.gep305, i64 -16 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %next.gep305, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !296, !alias.scope !3729
  %wide.load310 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !296, !alias.scope !3729
  store <4 x i32> %wide.load309, ptr %i.dt, align 4, !tbaa !296, !alias.scope !3728, !noalias !3729
  store <4 x i32> %wide.load310, ptr %i.du, align 4, !tbaa !296, !alias.scope !3728, !noalias !3729
  store <4 x i32> %wide.load307, ptr %i.dv, align 4, !tbaa !296, !alias.scope !3729
  store <4 x i32> %wide.load308, ptr %i.dw, align 4, !tbaa !296, !alias.scope !3729
  %index.next311 = add nuw i64 %index304, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next311, 4611686018427387904
  br i1 %i.dx, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us, label %vector.body303, !llvm.loop !3709

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
  br i1 %.not.i.i33.i61.us.3, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us, label %.lr.ph.i.i30.i58.us, !llvm.loop !3710

_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us: ; preds = %vector.body303, %.lr.ph.i.i30.i58.us, %._crit_edge.i52.us
  %.not43.us = icmp eq i64 %i.dg, 0
  br i1 %.not43.us, label %._crit_edge, label %._crit_edge.i52.us, !llvm.loop !3711

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
  %wide.load242 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !296, !alias.scope !3730, !noalias !3731
  %wide.load243 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !296, !alias.scope !3730, !noalias !3731
  %i.gg = getelementptr inbounds i8, ptr %next.gep240, i64 -16 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %next.gep240, i64 -32 ; 2 uses
  %wide.load244 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !296, !alias.scope !3731
  %wide.load245 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !296, !alias.scope !3731
  store <4 x i32> %wide.load244, ptr %i.ge, align 4, !tbaa !296, !alias.scope !3730, !noalias !3731
  store <4 x i32> %wide.load245, ptr %i.gf, align 4, !tbaa !296, !alias.scope !3730, !noalias !3731
  store <4 x i32> %wide.load242, ptr %i.gg, align 4, !tbaa !296, !alias.scope !3731
  store <4 x i32> %wide.load243, ptr %i.gh, align 4, !tbaa !296, !alias.scope !3731
  %index.next246 = add nuw i64 %index239, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next246, %n.vec237
  br i1 %i.gi, label %middle.block247, label %vector.body238, !llvm.loop !3715

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
  br i1 %.not.i.i.i65, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66, label %.lr.ph.i.i.i62, !llvm.loop !3716

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
  br i1 %.not.i51, label %._crit_edge.i52.loopexit, label %.lr.ph.i45, !llvm.loop !3700

._crit_edge.i52.loopexit:                         ; preds = %bb.k
  %.1.i50259.le = ptrtoaddr ptr %.1.i50 to i64    ; 2 uses
  %.not28.i55 = icmp eq ptr %.1.i50, %i.gp
  %.not6.i.i29.i56 = icmp eq ptr %i.eq, %.1.i50
  %or.cond.i57 = or i1 %.not6.i.i29.i56, %.not28.i55
  br i1 %or.cond.i57, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66, label %.lr.ph.i.i30.i58.preheader

.lr.ph.i.i30.i58.preheader:                       ; preds = %._crit_edge.i52.loopexit
  %i.gu = shl i64 %i.d, 3
  %i.gv = add i64 %i.gu, -4
  %i.gw = mul i64 %2, %i.gv
  %i.gx = add i64 %i.gw, %i.a
  %i.gy = mul i64 %indvar226, %i.de
  %reass.sub318 = sub i64 %i.gy, %i.gx
  %i.gz = add i64 %reass.sub318, -4
  %i.ha = add i64 %i.gz, %.1.i50259.le            ; 2 uses
  %i.hb = lshr i64 %i.ha, 2
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check261 = icmp ult i64 %i.ha, 252
  br i1 %min.iters.check261, label %.lr.ph.i.i30.i58.preheader325, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.lr.ph.i.i30.i58.preheader
  %i.hd = shl i64 %i.d, 3                         ; 2 uses
  %i.he = add i64 %i.hd, -4
  %i.hf = mul i64 %2, %i.he
  %i.hg = add i64 %i.hf, %i.a
  %i.hh = mul i64 %indvar226, %i.dd
  %reass.sub319 = sub i64 %i.hh, %i.hg
  %i.hi = add i64 %reass.sub319, -4
  %i.hj = add i64 %i.hi, %.1.i50259.le
  %i.hk = and i64 %i.hj, -4                       ; 2 uses
  %i.hl = sub nuw nsw i64 -4, %i.hk
  %i.hm = getelementptr i8, ptr %.1.i50, i64 %i.hl
  %i.hn = or disjoint i64 %i.hd, 4
  %i.ho = mul i64 %2, %i.hn
  %i.hp = add i64 %i.ho, -8
  %i.hq = mul i64 %indvar226, %i.dc
  %i.hr = add i64 %i.hp, %i.hq
  %i.hs = shl i64 %indvar228, 2
  %i.ht = add i64 %i.hs, %i.hk
  %i.hu = sub i64 %i.hr, %i.ht
  %i.hv = getelementptr i8, ptr %0, i64 %i.hu
  %bound0263 = icmp ult ptr %i.hm, %i.gp
  %bound1264 = icmp ult ptr %i.hv, %.1.i50
  %found.conflict265 = and i1 %bound0263, %bound1264
  br i1 %found.conflict265, label %.lr.ph.i.i30.i58.preheader325, label %vector.ph266

vector.ph266:                                     ; preds = %vector.memcheck262
  %n.vec267 = and i64 %i.hc, 9223372036854775800  ; 3 uses
  %i.hw = mul i64 %n.vec267, -4                   ; 2 uses
  %i.hx = getelementptr i8, ptr %i.gp, i64 %i.hw
  %i.hy = getelementptr i8, ptr %.1.i50, i64 %i.hw
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next276, %vector.body268 ] ; 2 uses
  %i.hz = mul i64 %index269, -4                   ; 2 uses
  %next.gep270 = getelementptr i8, ptr %i.gp, i64 %i.hz ; 2 uses
  %next.gep271 = getelementptr i8, ptr %.1.i50, i64 %i.hz ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %next.gep271, i64 -16 ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %next.gep271, i64 -32 ; 2 uses
  %wide.load272 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !296, !alias.scope !3732, !noalias !3733
  %wide.load273 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !296, !alias.scope !3732, !noalias !3733
  %i.ic = getelementptr inbounds i8, ptr %next.gep270, i64 -16 ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %next.gep270, i64 -32 ; 2 uses
  %wide.load274 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !296, !alias.scope !3733
  %wide.load275 = load <4 x i32>, ptr %i.id, align 4, !tbaa !296, !alias.scope !3733
  store <4 x i32> %wide.load274, ptr %i.ia, align 4, !tbaa !296, !alias.scope !3732, !noalias !3733
  store <4 x i32> %wide.load275, ptr %i.ib, align 4, !tbaa !296, !alias.scope !3732, !noalias !3733
  store <4 x i32> %wide.load272, ptr %i.ic, align 4, !tbaa !296, !alias.scope !3733
  store <4 x i32> %wide.load273, ptr %i.id, align 4, !tbaa !296, !alias.scope !3733
  %index.next276 = add nuw i64 %index269, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next276, %n.vec267
  br i1 %i.ie, label %middle.block277, label %vector.body268, !llvm.loop !3720

middle.block277:                                  ; preds = %vector.body268
  %cmp.n278 = icmp eq i64 %i.hc, %n.vec267
  br i1 %cmp.n278, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66, label %.lr.ph.i.i30.i58.preheader325

.lr.ph.i.i30.i58.preheader325:                    ; preds = %vector.memcheck262, %.lr.ph.i.i30.i58.preheader, %middle.block277
  %.08.i.i31.i59.ph = phi ptr [ %i.gp, %vector.memcheck262 ], [ %i.gp, %.lr.ph.i.i30.i58.preheader ], [ %i.hx, %middle.block277 ]
  %.057.i.i32.i60.ph = phi ptr [ %.1.i50, %vector.memcheck262 ], [ %.1.i50, %.lr.ph.i.i30.i58.preheader ], [ %i.hy, %middle.block277 ]
  br label %.lr.ph.i.i30.i58

.lr.ph.i.i30.i58:                                 ; preds = %.lr.ph.i.i30.i58.preheader325, %.lr.ph.i.i30.i58
  %.08.i.i31.i59 = phi ptr [ %i.ig, %.lr.ph.i.i30.i58 ], [ %.08.i.i31.i59.ph, %.lr.ph.i.i30.i58.preheader325 ]
  %.057.i.i32.i60 = phi ptr [ %i.if, %.lr.ph.i.i30.i58 ], [ %.057.i.i32.i60.ph, %.lr.ph.i.i30.i58.preheader325 ]
  %i.if = getelementptr inbounds i8, ptr %.057.i.i32.i60, i64 -4 ; 4 uses
  %i.ig = getelementptr inbounds i8, ptr %.08.i.i31.i59, i64 -4 ; 3 uses
  %i.ih = load i32, ptr %i.if, align 4, !tbaa !296
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !296
  store i32 %i.ii, ptr %i.if, align 4, !tbaa !296
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !296
  %.not.i.i33.i61 = icmp eq ptr %i.eq, %i.if
  br i1 %.not.i.i33.i61, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66, label %.lr.ph.i.i30.i58, !llvm.loop !3721

_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66: ; preds = %.lr.ph.i.i30.i58, %.lr.ph.i.i.i62, %middle.block277, %middle.block247, %._crit_edge.i52.loopexit
  %.not43 = icmp eq i64 %i.eo, 0
  %indvar.next227 = add i64 %indvar226, 1
  br i1 %.not43, label %._crit_edge, label %.lr.ph.i45.preheader, !llvm.loop !3711

._crit_edge:                                      ; preds = %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit66.us, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_bbRT3_T2_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %i.a = shl i64 %3, 1                            ; 7 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 2 uses
  %i.c = udiv i64 %2, %i.a                        ; 3 uses
  %i.d = zext i1 %.not.i to i64
  %i.e = add nuw i64 %i.c, %i.d                   ; 4 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  %.not78145 = icmp eq i64 %i.e, 0                ; 2 uses
  br i1 %or.cond, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  br i1 %.not78145, label %.loopexit, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %.preheader
  %i.f = urem i64 %3, %4                          ; 2 uses
  %i.g = udiv i64 %3, %4                          ; 4 uses
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %_ZN5boost7movelib15detail_adaptive17merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EEvT_T0_T1_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_T2_b.exit
  %.073144 = phi i64 [ 0, %.noexc.lr.ph ], [ %i.au, %_ZN5boost7movelib15detail_adaptive17merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EEvT_T0_T1_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_T2_b.exit ] ; 2 uses
  %.074143 = phi ptr [ %1, %.noexc.lr.ph ], [ %spec.select, %_ZN5boost7movelib15detail_adaptive17merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EEvT_T0_T1_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_T2_b.exit ] ; 4 uses
  %i.h = icmp eq i64 %.073144, %i.c
  %i.i = select i1 %i.h, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.j = sub i64 %i.i, %i.f
  %i.k = urem i64 %i.j, %4                        ; 4 uses
  %i.l = add i64 %i.f, %i.k
  %i.m = sub i64 %i.i, %i.l
  %i.n = udiv i64 %i.m, %4                        ; 3 uses
  %i.o = sub i64 %i.n, %i.g                       ; 3 uses
  %i.p = getelementptr [4 x i8], ptr %0, i64 %i.n ; 2 uses
  tail call void @_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE9make_heapES2_S2_SB_(ptr noundef %0, ptr noundef %i.p)
  %i.q = shl i64 %i.n, 2
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_10range_xbufIS3_mNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc, %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.w, %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i.i.i ], [ %i.r, %.noexc ]
  %.0811.i.i.i.i.i.i = phi ptr [ %i.t, %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i.i.i ], [ %i.p, %.noexc ]
  %i.t = getelementptr inbounds i8, ptr %.0811.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !296  ; 3 uses
  %i.v = load i32, ptr %0, align 4, !tbaa !296
  store i32 %i.v, ptr %i.t, align 4, !tbaa !296
  %i.w = add i64 %.012.i.i.i.i.i.i, -1            ; 6 uses
  %i.x = icmp ugt i64 %i.w, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.thread.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.03644.i.i.i.i.i.i.i = phi i64 [ %.036.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.036.in43.i.i.i.i.i.i.i = phi i64 [ %.036.in.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i ]
  %.03742.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03644.i.i.i.i.i.i.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !296
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !296
  %i.ac = icmp slt i32 %i.aa, %i.ab
  %i.ad = or disjoint i64 %.036.in43.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ac, i64 %i.ad, i64 %.03644.i.i.i.i.i.i.i ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i.i.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !296
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03742.i.i.i.i.i.i.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !296
  %.036.in.i.i.i.i.i.i.i = shl i64 %spec.select.i.i.i.i.i.i.i, 1 ; 3 uses
  %.036.i.i.i.i.i.i.i = add i64 %.036.in.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.ah = icmp ult i64 %.036.i.i.i.i.i.i.i, %i.w
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !43

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ai = or disjoint i64 %.036.in.i.i.i.i.i.i.i, 1
  %i.aj = icmp eq i64 %.036.i.i.i.i.i.i.i, %i.w
  br i1 %i.aj, label %.thread.i.i.i.i.i.i, label %bb.b

._crit_edge.i.i.thread.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ak = icmp eq i64 %i.w, 2
  br i1 %i.ak, label %.thread.i.i.i.i.i.i, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i.i.i

_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i.i.i: ; preds = %._crit_edge.i.i.thread.i.i.i.i.i
  store i32 %i.u, ptr %0, align 4, !tbaa !296
  br label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_10range_xbufIS3_mNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit

.thread.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.thread.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.036.in.lcssa.i.i9.i.i.i.i.i = phi i64 [ 1, %._crit_edge.i.i.thread.i.i.i.i.i ], [ %i.ai, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.037.lcssa.i.i8.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.thread.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.036.in.lcssa.i.i9.i.i.i.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !296
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037.lcssa.i.i8.i.i.i.i.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !296
  br label %.lr.ph52.i.i.i.i.i.i.i.preheader

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i.i.preheader

.lr.ph52.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.b, %.thread.i.i.i.i.i.i
  %.249.i.i.i.i.i.i.i.ph = phi i64 [ %spec.select.i.i.i.i.i.i.i, %bb.b ], [ %.036.in.lcssa.i.i9.i.i.i.i.i, %.thread.i.i.i.i.i.i ]
end_hunk_0
