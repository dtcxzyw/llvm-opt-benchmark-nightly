inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local16gen_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %scevgep407 = getelementptr i8, ptr %.0119172.i24, i64 8
  %i.uf = add nsw i32 %.0122169.i26, -1
  %i.ug = zext i32 %i.uf to i64
  %i.uh = shl nuw nsw i64 %i.ug, 3                ; 2 uses
  %scevgep408 = getelementptr i8, ptr %scevgep407, i64 %i.uh ; 2 uses
  %scevgep409 = getelementptr i8, ptr %.0121170.i25, i64 -8
  %scevgep410 = getelementptr i8, ptr %scevgep409, i64 %i.nt
  %i.ui = add nuw nsw i64 %i.nt, %i.uh            ; 2 uses
  %scevgep411 = getelementptr i8, ptr %.0121170.i25, i64 %i.ui
  %scevgep412 = getelementptr i8, ptr %.0121170.i25, i64 8
  %scevgep413 = getelementptr i8, ptr %scevgep412, i64 %i.ui
  %bound0414 = icmp ult ptr %.0119172.i24, %scevgep411
  %bound1415 = icmp ult ptr %scevgep410, %scevgep408
  %found.conflict416 = and i1 %bound0414, %bound1415
  %bound0417 = icmp ult ptr %.0119172.i24, %scevgep413
  %bound1418 = icmp ult ptr %i.oo, %scevgep408
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %found.conflict416, %found.conflict419
  br i1 %conflict.rdx420, label %scalar.ph421.preheader, label %vector.ph423

vector.ph423:                                     ; preds = %vector.memcheck406
  %n.vec424 = and i64 %i.ue, 2147483644           ; 4 uses
  %i.uj = trunc nuw nsw i64 %n.vec424 to i32
  %i.uk = sub nsw i32 %.0122169.i26, %i.uj
  %i.ul = shl nuw nsw i64 %n.vec424, 3            ; 2 uses
  %i.um = getelementptr i8, ptr %.0119172.i24, i64 %i.ul
  %i.un = getelementptr i8, ptr %i.oo, i64 %i.ul
  %broadcast.splatinsert425 = insertelement <2 x i64> poison, i64 %i.ud, i64 0
  %broadcast.splat426 = shufflevector <2 x i64> %broadcast.splatinsert425, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert427 = insertelement <2 x i64> poison, i64 %i.od, i64 0
  %broadcast.splat428 = shufflevector <2 x i64> %broadcast.splatinsert427, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph423
  %index430 = phi i64 [ 0, %vector.ph423 ], [ %index.next439, %vector.body429 ] ; 2 uses
  %i.uo = shl i64 %index430, 3                    ; 2 uses
  %next.gep431 = getelementptr i8, ptr %.0119172.i24, i64 %i.uo ; 3 uses
  %next.gep432 = getelementptr i8, ptr %i.oo, i64 %i.uo ; 4 uses
  %i.up = getelementptr inbounds i8, ptr %next.gep432, i64 -8
  %i.uq = getelementptr inbounds nuw i8, ptr %next.gep432, i64 8
  %wide.load433 = load <2 x i64>, ptr %i.up, align 8, !tbaa !156, !alias.scope !196
  %wide.load434 = load <2 x i64>, ptr %i.uq, align 8, !tbaa !156, !alias.scope !196
  %i.ur = getelementptr i8, ptr %next.gep432, i64 16
  %wide.load435 = load <2 x i64>, ptr %next.gep432, align 8, !tbaa !156, !alias.scope !199
  %wide.load436 = load <2 x i64>, ptr %i.ur, align 8, !tbaa !156, !alias.scope !199
  %i.us = add <2 x i64> %wide.load433, %wide.load435
  %i.ut = add <2 x i64> %wide.load434, %wide.load436
  %i.uu = sub <2 x i64> %broadcast.splat428, %i.us
  %i.uv = sub <2 x i64> %broadcast.splat428, %i.ut
  %i.uw = ashr <2 x i64> %i.uu, %broadcast.splat426
  %i.ux = ashr <2 x i64> %i.uv, %broadcast.splat426
  %i.uy = getelementptr i8, ptr %next.gep431, i64 16 ; 2 uses
  %wide.load437 = load <2 x i64>, ptr %next.gep431, align 8, !tbaa !156, !alias.scope !201, !noalias !203
  %wide.load438 = load <2 x i64>, ptr %i.uy, align 8, !tbaa !156, !alias.scope !201, !noalias !203
  %i.uz = add nsw <2 x i64> %i.uw, %wide.load437
  %i.va = add nsw <2 x i64> %i.ux, %wide.load438
  store <2 x i64> %i.uz, ptr %next.gep431, align 8, !tbaa !156, !alias.scope !201, !noalias !203
  store <2 x i64> %i.va, ptr %i.uy, align 8, !tbaa !156, !alias.scope !201, !noalias !203
  %index.next439 = add nuw i64 %index430, 4       ; 2 uses
  %i.vb = icmp eq i64 %index.next439, %n.vec424
  br i1 %i.vb, label %middle.block440, label %vector.body429, !llvm.loop !204

middle.block440:                                  ; preds = %vector.body429
  %cmp.n441 = icmp eq i64 %n.vec424, %i.ue
  br i1 %cmp.n441, label %.loopexit.i37, label %scalar.ph421.preheader

scalar.ph421.preheader:                           ; preds = %vector.memcheck406, %.lr.ph156.i40, %middle.block440
  %.0105155.i41.ph = phi i32 [ %.0122169.i26, %vector.memcheck406 ], [ %.0122169.i26, %.lr.ph156.i40 ], [ %i.uk, %middle.block440 ] ; 4 uses
  %.2154.i42.ph = phi ptr [ %.0119172.i24, %vector.memcheck406 ], [ %.0119172.i24, %.lr.ph156.i40 ], [ %i.um, %middle.block440 ] ; 4 uses
  %.2112153.i43.ph = phi ptr [ %i.oo, %vector.memcheck406 ], [ %i.oo, %.lr.ph156.i40 ], [ %i.un, %middle.block440 ] ; 4 uses
  %xtraiter510 = and i32 %.0105155.i41.ph, 1
  %lcmp.mod511.not = icmp eq i32 %xtraiter510, 0
  br i1 %lcmp.mod511.not, label %scalar.ph421.prol.loopexit, label %scalar.ph421.prol

scalar.ph421.prol:                                ; preds = %scalar.ph421.preheader
  %i.vc = getelementptr inbounds i8, ptr %.2112153.i43.ph, i64 -8
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !156
  %i.ve = load i64, ptr %.2112153.i43.ph, align 8, !tbaa !156
  %i.vf = add i64 %i.vd, %i.ve
  %i.vg = sub i64 %i.od, %i.vf
  %i.vh = ashr i64 %i.vg, %i.ud
  %i.vi = load i64, ptr %.2154.i42.ph, align 8, !tbaa !156
  %i.vj = add nsw i64 %i.vh, %i.vi
  store i64 %i.vj, ptr %.2154.i42.ph, align 8, !tbaa !156
  %i.vk = add nsw i32 %.0105155.i41.ph, -1
  %i.vl = getelementptr inbounds nuw i8, ptr %.2112153.i43.ph, i64 8
  %i.vm = getelementptr inbounds nuw i8, ptr %.2154.i42.ph, i64 8
  br label %scalar.ph421.prol.loopexit

scalar.ph421.prol.loopexit:                       ; preds = %scalar.ph421.prol, %scalar.ph421.preheader
  %.0105155.i41.unr = phi i32 [ %.0105155.i41.ph, %scalar.ph421.preheader ], [ %i.vk, %scalar.ph421.prol ]
  %.2154.i42.unr = phi ptr [ %.2154.i42.ph, %scalar.ph421.preheader ], [ %i.vm, %scalar.ph421.prol ]
  %.2112153.i43.unr = phi ptr [ %.2112153.i43.ph, %scalar.ph421.preheader ], [ %i.vl, %scalar.ph421.prol ]
  %i.vn = icmp eq i32 %.0105155.i41.ph, 1
  br i1 %i.vn, label %.loopexit.i37, label %scalar.ph421

scalar.ph421:                                     ; preds = %scalar.ph421.prol.loopexit, %scalar.ph421
  %.0105155.i41 = phi i32 [ %i.wf, %scalar.ph421 ], [ %.0105155.i41.unr, %scalar.ph421.prol.loopexit ]
  %.2154.i42 = phi ptr [ %i.wh, %scalar.ph421 ], [ %.2154.i42.unr, %scalar.ph421.prol.loopexit ] ; 4 uses
  %.2112153.i43 = phi ptr [ %i.wg, %scalar.ph421 ], [ %.2112153.i43.unr, %scalar.ph421.prol.loopexit ] ; 5 uses
  %i.vo = getelementptr inbounds i8, ptr %.2112153.i43, i64 -8
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !156
  %i.vq = load i64, ptr %.2112153.i43, align 8, !tbaa !156
  %i.vr = add i64 %i.vp, %i.vq
  %i.vs = sub i64 %i.od, %i.vr
  %i.vt = ashr i64 %i.vs, %i.ud
  %i.vu = load i64, ptr %.2154.i42, align 8, !tbaa !156
  %i.vv = add nsw i64 %i.vt, %i.vu
  store i64 %i.vv, ptr %.2154.i42, align 8, !tbaa !156
  %i.vw = getelementptr inbounds nuw i8, ptr %.2112153.i43, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %.2154.i42, i64 8 ; 2 uses
  %i.vy = load i64, ptr %.2112153.i43, align 8, !tbaa !156
  %i.vz = load i64, ptr %i.vw, align 8, !tbaa !156
  %i.wa = add i64 %i.vy, %i.vz
  %i.wb = sub i64 %i.od, %i.wa
  %i.wc = ashr i64 %i.wb, %i.ud
  %i.wd = load i64, ptr %i.vx, align 8, !tbaa !156
  %i.we = add nsw i64 %i.wc, %i.wd
  store i64 %i.we, ptr %i.vx, align 8, !tbaa !156
  %i.wf = add nsw i32 %.0105155.i41, -2           ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.2112153.i43, i64 16
  %i.wh = getelementptr inbounds nuw i8, ptr %.2154.i42, i64 16
  %.not129.i44.1 = icmp eq i32 %i.wf, 0
  br i1 %.not129.i44.1, label %.loopexit.i37, label %scalar.ph421, !llvm.loop !205

scalar.ph460:                                     ; preds = %scalar.ph460.prol.loopexit, %scalar.ph460
  %.0104150.i33 = phi i32 [ %i.xb, %scalar.ph460 ], [ %.0104150.i33.unr, %scalar.ph460.prol.loopexit ]
  %.3149.i34 = phi ptr [ %i.xd, %scalar.ph460 ], [ %.3149.i34.unr, %scalar.ph460.prol.loopexit ] ; 4 uses
  %.3113148.i35 = phi ptr [ %i.xc, %scalar.ph460 ], [ %.3113148.i35.unr, %scalar.ph460.prol.loopexit ] ; 5 uses
  %i.wi = getelementptr inbounds i8, ptr %.3113148.i35, i64 -8
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !156
  %i.wk = load i64, ptr %.3113148.i35, align 8, !tbaa !156
  %i.wl = add nsw i64 %i.wk, %i.wj
  %i.wm = mul nsw i64 %i.wl, %i.oa
  %i.wn = add nsw i64 %i.wm, %i.od
  %i.wo = ashr i64 %i.wn, %i.sx
  %i.wp = load i64, ptr %.3149.i34, align 8, !tbaa !156
  %i.wq = add nsw i64 %i.wo, %i.wp
  store i64 %i.wq, ptr %.3149.i34, align 8, !tbaa !156
  %i.wr = getelementptr inbounds nuw i8, ptr %.3113148.i35, i64 8
  %i.ws = getelementptr inbounds nuw i8, ptr %.3149.i34, i64 8 ; 2 uses
  %i.wt = load i64, ptr %.3113148.i35, align 8, !tbaa !156
  %i.wu = load i64, ptr %i.wr, align 8, !tbaa !156
  %i.wv = add nsw i64 %i.wu, %i.wt
  %i.ww = mul nsw i64 %i.wv, %i.oa
  %i.wx = add nsw i64 %i.ww, %i.od
  %i.wy = ashr i64 %i.wx, %i.sx
  %i.wz = load i64, ptr %i.ws, align 8, !tbaa !156
  %i.xa = add nsw i64 %i.wy, %i.wz
  store i64 %i.xa, ptr %i.ws, align 8, !tbaa !156
  %i.xb = add nsw i32 %.0104150.i33, -2           ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.3113148.i35, i64 16
  %i.xd = getelementptr inbounds nuw i8, ptr %.3149.i34, i64 16
  %.not128.i36.1 = icmp eq i32 %i.xb, 0
  br i1 %.not128.i36.1, label %.loopexit.i37, label %scalar.ph460, !llvm.loop !206

.loopexit.i37:                                    ; preds = %scalar.ph460.prol.loopexit, %scalar.ph460, %scalar.ph421.prol.loopexit, %scalar.ph421, %.lr.ph161.i46.prol.loopexit, %.lr.ph161.i46, %scalar.ph347.prol.loopexit, %scalar.ph347, %middle.block478, %middle.block440, %middle.block401, %middle.block366, %.preheader136.i39, %.preheader138.i31, %.preheader134.i45, %.preheader.i51
  %i.xe = xor i1 %.0.in173.i23, true
  %.not127.wide.i38 = icmp eq i64 %i.nw, 0
  br i1 %.not127.wide.i38, label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %bb.m, !llvm.loop !207

.loopexit140.sink.split.i12:                      ; preds = %bb.i
  %i.xf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !13
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !156
  %.sink203.i13 = select i1 %5, ptr %1, ptr %2
  %not.204.i14 = xor i1 %5, true
  %i.xi = zext i1 %not.204.i14 to i64
  %.sink.i15 = shl i64 %i.xh, %i.xi
  %i.xj = getelementptr inbounds nuw i8, ptr %.sink203.i13, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !13
  store i64 %.sink.i15, ptr %i.xk, align 8, !tbaa !156
  br label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit: ; preds = %.loopexit.i, %.loopexit.i37, %.loopexit140.sink.split.i12, %bb.l, %.loopexit140.sink.split.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16gen_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp ugt i32 %4, 1                       ; 2 uses
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !108   ; 2 uses
  %.not175.i = icmp eq i8 %i.h, 0
  br i1 %.not175.i, label %._crit_edge.i, label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %bb.c
  %not..i = xor i1 %5, true
  %i.i = zext i1 %not..i to i32
  %i.j = add i32 %4, %i.i
  %i.k = lshr i32 %i.j, 1
  %i.l = zext i1 %5 to i32
  %i.m = add i32 %4, %i.l
  %i.n = lshr i32 %i.m, 1
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !114
  %wide.trip.count.i = zext i8 %i.h to i64
  %6 = xor i1 %5, true                            ; 4 uses
  br label %bb.d

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.c
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !13   ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 3 uses
  br i1 %5, label %bb.h, label %bb.g

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph165.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %.0109.in164.i = phi i1 [ %5, %.lr.ph165.i ], [ %not..0109.in.i, %.loopexit.i ]
  %.0110163.i = phi ptr [ %i.p, %.lr.ph165.i ], [ %.0121162.i, %.loopexit.i ] ; 18 uses
  %.0121162.i = phi ptr [ %i.o, %.lr.ph165.i ], [ %.0110163.i, %.loopexit.i ] ; 29 uses
  %.0122161.i = phi i32 [ %i.n, %.lr.ph165.i ], [ %.0123160.i, %.loopexit.i ] ; 27 uses
  %.0123160.i = phi i32 [ %i.k, %.lr.ph165.i ], [ %.0122161.i, %.loopexit.i ] ; 3 uses
  %i.w = trunc i64 %indvars.iv.i to i1
  %i.x = xor i1 %i.w, %6
  %i.y = select i1 %i.x, i64 4, i64 0             ; 2 uses
  %i.z = trunc i64 %indvars.iv.i to i1
  %i.aa = xor i1 %i.z, %6
  %i.ab = select i1 %i.aa, i64 4, i64 0           ; 2 uses
  %i.ac = trunc i64 %indvars.iv.i to i1
  %i.ad = xor i1 %i.ac, %6
  %i.ae = select i1 %i.ad, i64 4, i64 0           ; 2 uses
  %i.af = trunc i64 %indvars.iv.i to i1
  %i.ag = xor i1 %i.af, %6
  %i.ah = select i1 %i.ag, i64 4, i64 0           ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !13 ; 3 uses
  %i.al = sext i16 %i.ak to i32                   ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !13 ; 2 uses
  %i.ao = sext i16 %i.an to i32                   ; 12 uses
  %i.ap = load i8, ptr %i.ai, align 4, !tbaa !13  ; 3 uses
  %i.aq = load i32, ptr %.0110163.i, align 4, !tbaa !14
  %i.ar = getelementptr inbounds i8, ptr %.0110163.i, i64 -4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !14
  %i.as = add nsw i32 %.0123160.i, -1
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0110163.i, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !14
  %i.aw = zext nneg i32 %.0123160.i to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.0110163.i, i64 %i.aw
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !14
  %not..0109.in.i = xor i1 %.0109.in164.i, true   ; 2 uses
  %i.ay = zext i1 %not..0109.in.i to i64
  %i.az = getelementptr [4 x i8], ptr %.0110163.i, i64 %i.ay ; 20 uses
  %i.ba = icmp eq i16 %i.ak, 1
  br i1 %i.ba, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %.not131154.i = icmp eq i32 %.0122161.i, 0
  br i1 %.not131154.i, label %.loopexit.i, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %.preheader.i
  %i.bb = zext nneg i8 %i.ap to i32               ; 4 uses
  %i.bc = zext nneg i32 %.0122161.i to i64        ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.0122161.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph158.i
  %scevgep = getelementptr i8, ptr %.0121162.i, i64 4
  %i.bd = add nsw i32 %.0122161.i, -1
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2                ; 2 uses
  %scevgep122 = getelementptr i8, ptr %scevgep, i64 %i.bf ; 2 uses
  %scevgep123 = getelementptr i8, ptr %.0110163.i, i64 -4
  %scevgep124 = getelementptr i8, ptr %scevgep123, i64 %i.ah
  %i.bg = add nuw nsw i64 %i.ah, %i.bf            ; 2 uses
  %scevgep125 = getelementptr i8, ptr %.0110163.i, i64 %i.bg
  %scevgep126 = getelementptr i8, ptr %.0110163.i, i64 4
  %scevgep127 = getelementptr i8, ptr %scevgep126, i64 %i.bg
  %bound0 = icmp ult ptr %.0121162.i, %scevgep125
  %bound1 = icmp ult ptr %scevgep124, %scevgep122
  %found.conflict = and i1 %bound0, %bound1
  %bound0128 = icmp ult ptr %.0121162.i, %scevgep127
  %bound1129 = icmp ult ptr %i.az, %scevgep122
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx = or i1 %found.conflict, %found.conflict130
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 2147483640              ; 4 uses
  %i.bh = trunc nuw nsw i64 %n.vec to i32
  %i.bi = sub nsw i32 %.0122161.i, %i.bh
  %i.bj = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bk = getelementptr i8, ptr %.0121162.i, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.az, i64 %i.bj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0121162.i, i64 %i.bm ; 3 uses
  %next.gep133 = getelementptr i8, ptr %i.az, i64 %i.bm ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %next.gep133, i64 -4
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep133, i64 12
  %wide.load = load <4 x i32>, ptr %i.bn, align 4, !tbaa !14, !alias.scope !208
  %wide.load134 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !14, !alias.scope !208
  %i.bp = getelementptr i8, ptr %next.gep133, i64 16
  %wide.load135 = load <4 x i32>, ptr %next.gep133, align 4, !tbaa !14, !alias.scope !211
  %wide.load136 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !14, !alias.scope !211
  %i.bq = add <4 x i32> %wide.load, %broadcast.splat132
  %i.br = add <4 x i32> %wide.load134, %broadcast.splat132
  %i.bs = add <4 x i32> %i.bq, %wide.load135
  %i.bt = add <4 x i32> %i.br, %wide.load136
  %i.bu = ashr <4 x i32> %i.bs, %broadcast.splat
  %i.bv = ashr <4 x i32> %i.bt, %broadcast.splat
  %i.bw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load137 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !14, !alias.scope !213, !noalias !215
  %wide.load138 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !14, !alias.scope !213, !noalias !215
  %i.bx = sub nsw <4 x i32> %wide.load137, %i.bu
  %i.by = sub nsw <4 x i32> %wide.load138, %i.bv
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !tbaa !14, !alias.scope !213, !noalias !215
  store <4 x i32> %i.by, ptr %i.bw, align 4, !tbaa !14, !alias.scope !213, !noalias !215
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bc
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph158.i, %middle.block
  %.0114157.i.ph = phi i32 [ %.0122161.i, %vector.memcheck ], [ %.0122161.i, %.lr.ph158.i ], [ %i.bi, %middle.block ] ; 4 uses
  %.0115156.i.ph = phi ptr [ %.0121162.i, %vector.memcheck ], [ %.0121162.i, %.lr.ph158.i ], [ %i.bk, %middle.block ] ; 4 uses
  %.0117155.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph158.i ], [ %i.bl, %middle.block ] ; 4 uses
  %xtraiter460 = and i32 %.0114157.i.ph, 1
  %lcmp.mod461.not = icmp eq i32 %xtraiter460, 0
  br i1 %lcmp.mod461.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ca = getelementptr inbounds i8, ptr %.0117155.i.ph, i64 -4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14
  %i.cc = load i32, ptr %.0117155.i.ph, align 4, !tbaa !14
  %i.cd = add i32 %i.cb, %i.ao
  %i.ce = add i32 %i.cd, %i.cc
  %i.cf = ashr i32 %i.ce, %i.bb
  %i.cg = load i32, ptr %.0115156.i.ph, align 4, !tbaa !14
  %i.ch = sub nsw i32 %i.cg, %i.cf
  store i32 %i.ch, ptr %.0115156.i.ph, align 4, !tbaa !14
  %i.ci = add nsw i32 %.0114157.i.ph, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %.0117155.i.ph, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0115156.i.ph, i64 4
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0114157.i.unr = phi i32 [ %.0114157.i.ph, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %.0115156.i.unr = phi ptr [ %.0115156.i.ph, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %.0117155.i.unr = phi ptr [ %.0117155.i.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %i.cl = icmp eq i32 %.0114157.i.ph, 1
  br i1 %i.cl, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0114157.i = phi i32 [ %i.dd, %scalar.ph ], [ %.0114157.i.unr, %scalar.ph.prol.loopexit ]
  %.0115156.i = phi ptr [ %i.df, %scalar.ph ], [ %.0115156.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.0117155.i = phi ptr [ %i.de, %scalar.ph ], [ %.0117155.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.0117155.i, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !14
  %i.co = load i32, ptr %.0117155.i, align 4, !tbaa !14
  %i.cp = add i32 %i.cn, %i.ao
  %i.cq = add i32 %i.cp, %i.co
  %i.cr = ashr i32 %i.cq, %i.bb
  %i.cs = load i32, ptr %.0115156.i, align 4, !tbaa !14
  %i.ct = sub nsw i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %.0115156.i, align 4, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.0115156.i, i64 4 ; 2 uses
  %i.cw = load i32, ptr %.0117155.i, align 4, !tbaa !14
  %i.cx = load i32, ptr %i.cu, align 4, !tbaa !14
  %i.cy = add i32 %i.cw, %i.ao
  %i.cz = add i32 %i.cy, %i.cx
  %i.da = ashr i32 %i.cz, %i.bb
  %i.db = load i32, ptr %i.cv, align 4, !tbaa !14
  %i.dc = sub nsw i32 %i.db, %i.da
  store i32 %i.dc, ptr %i.cv, align 4, !tbaa !14
  %i.dd = add nsw i32 %.0114157.i, -2             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.0115156.i, i64 8
  %.not131.i.1 = icmp eq i32 %i.dd, 0
  br i1 %.not131.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !217

bb.e:                                             ; preds = %bb.d
  %i.dg = icmp eq i16 %i.ak, -1                   ; 2 uses
  %i.dh = icmp eq i16 %i.an, 1
  %or.cond.i = select i1 %i.dg, i1 %i.dh, i1 false
  %i.di = zext i8 %i.ap to i32                    ; 8 uses
  %i.dj = icmp eq i8 %i.ap, 1
  %or.cond4.i = select i1 %or.cond.i, i1 %i.dj, i1 false
  %.not130149.i = icmp eq i32 %.0122161.i, 0      ; 3 uses
  br i1 %or.cond4.i, label %.preheader134.i, label %bb.f

.preheader134.i:                                  ; preds = %bb.e
  br i1 %.not130149.i, label %.loopexit.i, label %.lr.ph153.i.preheader

.lr.ph153.i.preheader:                            ; preds = %.preheader134.i
  %i.dk = zext nneg i32 %.0122161.i to i64        ; 2 uses
  %min.iters.check157 = icmp samesign ult i32 %.0122161.i, 8
  br i1 %min.iters.check157, label %.lr.ph153.i.preheader450, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph153.i.preheader
  %scevgep142 = getelementptr i8, ptr %.0121162.i, i64 4
  %i.dl = add nsw i32 %.0122161.i, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 2                ; 2 uses
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.dn ; 2 uses
  %scevgep144 = getelementptr i8, ptr %.0110163.i, i64 -4
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %i.ae
  %i.do = add nuw nsw i64 %i.ae, %i.dn            ; 2 uses
  %scevgep146 = getelementptr i8, ptr %.0110163.i, i64 %i.do
  %scevgep147 = getelementptr i8, ptr %.0110163.i, i64 4
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.do
  %bound0149 = icmp ult ptr %.0121162.i, %scevgep146
  %bound1150 = icmp ult ptr %scevgep145, %scevgep143
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0152 = icmp ult ptr %.0121162.i, %scevgep148
  %bound1153 = icmp ult ptr %i.az, %scevgep143
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %found.conflict151, %found.conflict154
  br i1 %conflict.rdx155, label %.lr.ph153.i.preheader450, label %vector.ph158

end_hunk_0
begin_hunk_1_@_ZN4ojph5local16gen_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.iu = ashr i32 %i.it, %i.di
  %i.iv = load i32, ptr %i.ip, align 4, !tbaa !14
  %i.iw = sub nsw i32 %i.iv, %i.iu
  store i32 %i.iw, ptr %i.ip, align 4, !tbaa !14
  %i.ix = add nsw i32 %.0112147.i, -2             ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.2119145.i, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %.2146.i, i64 8
  %.not129.i.1 = icmp eq i32 %i.ix, 0
  br i1 %.not129.i.1, label %.loopexit.i, label %.lr.ph148.i, !llvm.loop !246

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0111143.i = phi i32 [ %i.jt, %.lr.ph.i ], [ %.0111143.i.unr, %.lr.ph.i.prol.loopexit ]
  %.3142.i = phi ptr [ %i.jv, %.lr.ph.i ], [ %.3142.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.3120141.i = phi ptr [ %i.ju, %.lr.ph.i ], [ %.3120141.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ja = getelementptr inbounds i8, ptr %.3120141.i, i64 -4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !14
  %i.jc = load i32, ptr %.3120141.i, align 4, !tbaa !14
  %i.jd = add nsw i32 %i.jc, %i.jb
  %i.je = mul nsw i32 %i.jd, %i.al
  %i.jf = add nsw i32 %i.je, %i.ao
  %i.jg = ashr i32 %i.jf, %i.di
  %i.jh = load i32, ptr %.3142.i, align 4, !tbaa !14
  %i.ji = sub nsw i32 %i.jh, %i.jg
  store i32 %i.ji, ptr %.3142.i, align 4, !tbaa !14
  %i.jj = getelementptr inbounds nuw i8, ptr %.3120141.i, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.3142.i, i64 4 ; 2 uses
  %i.jl = load i32, ptr %.3120141.i, align 4, !tbaa !14
  %i.jm = load i32, ptr %i.jj, align 4, !tbaa !14
  %i.jn = add nsw i32 %i.jm, %i.jl
  %i.jo = mul nsw i32 %i.jn, %i.al
  %i.jp = add nsw i32 %i.jo, %i.ao
  %i.jq = ashr i32 %i.jp, %i.di
  %i.jr = load i32, ptr %i.jk, align 4, !tbaa !14
  %i.js = sub nsw i32 %i.jr, %i.jq
  store i32 %i.js, ptr %i.jk, align 4, !tbaa !14
  %i.jt = add nsw i32 %.0111143.i, -2             ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.3120141.i, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %.3142.i, i64 8
  %.not128.i.1 = icmp eq i32 %i.jt, 0
  br i1 %.not128.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !247

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph148.i.prol.loopexit, %.lr.ph148.i, %.lr.ph153.i.prol.loopexit, %.lr.ph153.i, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block251, %middle.block210, %middle.block171, %middle.block, %.preheader136.i, %.preheader138.i, %.preheader134.i, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !248

bb.g:                                             ; preds = %._crit_edge.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.jx = load i32, ptr %i.s, align 4, !tbaa !14
  %i.jy = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %i.jx, ptr %i.v, align 4, !tbaa !14
  %i.jz = add i32 %4, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.0107.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.jw, %bb.g ] ; 6 uses
  %.0104.i = phi ptr [ %i.v, %._crit_edge.i ], [ %i.jy, %bb.g ] ; 9 uses
  %.0.i = phi i32 [ %4, %._crit_edge.i ], [ %i.jz, %bb.g ] ; 6 uses
  %i.ka = icmp ugt i32 %.0.i, 1
  br i1 %i.ka, label %.lr.ph171.i.preheader, label %._crit_edge172.thread.i

.lr.ph171.i.preheader:                            ; preds = %bb.h
  %i.kb = add i32 %.0.i, -2                       ; 2 uses
  %i.kc = lshr i32 %i.kb, 1
  %narrow = add nuw i32 %i.kc, 1
  %i.kd = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check268 = icmp ult i32 %i.kb, 42
  br i1 %min.iters.check268, label %.lr.ph171.i.preheader446, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph171.i.preheader
  %i.ke = add i32 %.0.i, -2
  %i.kf = lshr i32 %i.ke, 1
  %i.kg = zext nneg i32 %i.kf to i64              ; 2 uses
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = getelementptr i8, ptr %.0104.i, i64 %i.kh
  %scevgep257 = getelementptr i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kj = shl nuw nsw i64 %i.kg, 2
  %i.kk = add nuw nsw i64 %i.kj, 4                ; 2 uses
  %scevgep258 = getelementptr i8, ptr %i.t, i64 %i.kk
  %scevgep259 = getelementptr i8, ptr %.0107.i, i64 %i.kk
  %bound0260 = icmp ult ptr %.0104.i, %scevgep258
  %bound1261 = icmp ult ptr %i.t, %scevgep257
  %found.conflict262 = and i1 %bound0260, %bound1261
  %bound0263 = icmp ult ptr %.0104.i, %scevgep259
  %bound1264 = icmp ult ptr %.0107.i, %scevgep257
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %found.conflict262, %found.conflict265
  br i1 %conflict.rdx266, label %.lr.ph171.i.preheader446, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck256
  %n.vec270 = and i64 %i.kd, 4294967292           ; 5 uses
  %i.kl = trunc nuw i64 %n.vec270 to i32
  %i.km = shl i32 %i.kl, 1
  %i.kn = sub i32 %.0.i, %i.km                    ; 2 uses
  %i.ko = shl nuw nsw i64 %n.vec270, 3
  %i.kp = getelementptr i8, ptr %.0104.i, i64 %i.ko ; 2 uses
  %i.kq = shl nuw nsw i64 %n.vec270, 2            ; 2 uses
  %i.kr = getelementptr i8, ptr %i.t, i64 %i.kq   ; 2 uses
  %i.ks = getelementptr i8, ptr %.0107.i, i64 %i.kq
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph269
  %index272 = phi i64 [ 0, %vector.ph269 ], [ %index.next282, %vector.body271 ] ; 3 uses
  %i.kt = shl i64 %index272, 3                    ; 2 uses
  %next.gep273 = getelementptr i8, ptr %.0104.i, i64 %i.kt
  %i.ku = getelementptr i8, ptr %.0104.i, i64 %i.kt
  %next.gep274 = getelementptr i8, ptr %i.ku, i64 16
  %i.kv = shl i64 %index272, 2                    ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.t, i64 %i.kv ; 2 uses
  %next.gep276 = getelementptr i8, ptr %.0107.i, i64 %i.kv ; 2 uses
  %i.kw = getelementptr i8, ptr %next.gep275, i64 8
  %wide.load277 = load <2 x i32>, ptr %next.gep275, align 4, !tbaa !14, !alias.scope !249
  %wide.load278 = load <2 x i32>, ptr %i.kw, align 4, !tbaa !14, !alias.scope !249
  %i.kx = getelementptr i8, ptr %next.gep276, i64 8
  %wide.load279 = load <2 x i32>, ptr %next.gep276, align 4, !tbaa !14, !alias.scope !252
  %wide.load280 = load <2 x i32>, ptr %i.kx, align 4, !tbaa !14, !alias.scope !252
  %interleaved.vec = shufflevector <2 x i32> %wide.load277, <2 x i32> %wide.load279, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %next.gep273, align 4, !tbaa !14, !alias.scope !254, !noalias !256
  %interleaved.vec281 = shufflevector <2 x i32> %wide.load278, <2 x i32> %wide.load280, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec281, ptr %next.gep274, align 4, !tbaa !14, !alias.scope !254, !noalias !256
  %index.next282 = add nuw i64 %index272, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next282, %n.vec270
  br i1 %i.ky, label %middle.block283, label %vector.body271, !llvm.loop !257

middle.block283:                                  ; preds = %vector.body271
  %cmp.n284 = icmp eq i64 %n.vec270, %i.kd
  br i1 %cmp.n284, label %._crit_edge172.i, label %.lr.ph171.i.preheader446

.lr.ph171.i.preheader446:                         ; preds = %vector.memcheck256, %.lr.ph171.i.preheader, %middle.block283
  %.1169.i.ph = phi i32 [ %.0.i, %vector.memcheck256 ], [ %.0.i, %.lr.ph171.i.preheader ], [ %i.kn, %middle.block283 ]
  %.1105168.i.ph = phi ptr [ %.0104.i, %vector.memcheck256 ], [ %.0104.i, %.lr.ph171.i.preheader ], [ %i.kp, %middle.block283 ]
  %.0106167.i.ph = phi ptr [ %i.t, %vector.memcheck256 ], [ %i.t, %.lr.ph171.i.preheader ], [ %i.kr, %middle.block283 ]
  %.1108166.i.ph = phi ptr [ %.0107.i, %vector.memcheck256 ], [ %.0107.i, %.lr.ph171.i.preheader ], [ %i.ks, %middle.block283 ]
  br label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.lr.ph171.i.preheader446, %.lr.ph171.i
  %.1169.i = phi i32 [ %i.lf, %.lr.ph171.i ], [ %.1169.i.ph, %.lr.ph171.i.preheader446 ]
  %.1105168.i = phi ptr [ %i.le, %.lr.ph171.i ], [ %.1105168.i.ph, %.lr.ph171.i.preheader446 ] ; 3 uses
  %.0106167.i = phi ptr [ %i.kz, %.lr.ph171.i ], [ %.0106167.i.ph, %.lr.ph171.i.preheader446 ] ; 2 uses
  %.1108166.i = phi ptr [ %i.lc, %.lr.ph171.i ], [ %.1108166.i.ph, %.lr.ph171.i.preheader446 ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0106167.i, i64 4 ; 2 uses
  %i.la = load i32, ptr %.0106167.i, align 4, !tbaa !14
  %i.lb = getelementptr inbounds nuw i8, ptr %.1105168.i, i64 4
  store i32 %i.la, ptr %.1105168.i, align 4, !tbaa !14
  %i.lc = getelementptr inbounds nuw i8, ptr %.1108166.i, i64 4
  %i.ld = load i32, ptr %.1108166.i, align 4, !tbaa !14
  %i.le = getelementptr inbounds nuw i8, ptr %.1105168.i, i64 8 ; 2 uses
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !14
  %i.lf = add i32 %.1169.i, -2                    ; 3 uses
  %i.lg = icmp ugt i32 %i.lf, 1
  br i1 %i.lg, label %.lr.ph171.i, label %._crit_edge172.i, !llvm.loop !258

._crit_edge172.i:                                 ; preds = %.lr.ph171.i, %middle.block283
  %.lcssa121 = phi ptr [ %i.kr, %middle.block283 ], [ %i.kz, %.lr.ph171.i ]
  %.lcssa120 = phi ptr [ %i.kp, %middle.block283 ], [ %i.le, %.lr.ph171.i ]
  %.lcssa119 = phi i32 [ %i.kn, %middle.block283 ], [ %i.lf, %.lr.ph171.i ]
  %i.lh = icmp eq i32 %.lcssa119, 0
  br i1 %i.lh, label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %._crit_edge172.thread.i

._crit_edge172.thread.i:                          ; preds = %._crit_edge172.i, %bb.h
  %.1105.lcssa188.i = phi ptr [ %.lcssa120, %._crit_edge172.i ], [ %.0104.i, %bb.h ]
  %.0106.lcssa187.i = phi ptr [ %.lcssa121, %._crit_edge172.i ], [ %i.t, %bb.h ]
  %i.li = load i32, ptr %.0106.lcssa187.i, align 4, !tbaa !14
  store i32 %i.li, ptr %.1105.lcssa188.i, align 4, !tbaa !14
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.i:                                             ; preds = %bb.b
  br i1 %5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !13
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !14
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !13
  store i32 %i.ll, ptr %i.ln, align 4, !tbaa !14
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.k:                                             ; preds = %bb.i
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !13
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !14
  %i.lr = ashr i32 %i.lq, 1
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !13
  store i32 %i.lr, ptr %i.lt, align 4, !tbaa !14
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.l:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lx = load i8, ptr %i.lw, align 8, !tbaa !108 ; 2 uses
  %.not175.i12 = icmp eq i8 %i.lx, 0
  br i1 %.not175.i12, label %._crit_edge.i35, label %.lr.ph165.i13

.lr.ph165.i13:                                    ; preds = %bb.m
  %not..i14 = xor i1 %5, true
  %i.ly = zext i1 %not..i14 to i32
  %i.lz = add i32 %4, %i.ly
  %i.ma = lshr i32 %i.lz, 1
  %i.mb = zext i1 %5 to i32
  %i.mc = add i32 %4, %i.mb
  %i.md = lshr i32 %i.mc, 1
  %i.me = load ptr, ptr %i.lv, align 8, !tbaa !13
  %i.mf = load ptr, ptr %i.lu, align 8, !tbaa !13
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !114
  %wide.trip.count.i15 = zext i8 %i.lx to i64
  %7 = xor i1 %5, true                            ; 4 uses
  br label %bb.n

._crit_edge.i35:                                  ; preds = %.loopexit.i32, %bb.m
  %i.mi = load ptr, ptr %i.lu, align 8, !tbaa !13 ; 3 uses
  %i.mj = load ptr, ptr %i.lv, align 8, !tbaa !13 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !13 ; 3 uses
  br i1 %5, label %bb.r, label %bb.q

bb.n:                                             ; preds = %.loopexit.i32, %.lr.ph165.i13
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph165.i13 ], [ %indvars.iv.next.i33, %.loopexit.i32 ] ; 6 uses
  %.0109.in164.i17 = phi i1 [ %5, %.lr.ph165.i13 ], [ %not..0109.in.i22, %.loopexit.i32 ]
  %.0110163.i18 = phi ptr [ %i.mf, %.lr.ph165.i13 ], [ %.0121162.i19, %.loopexit.i32 ] ; 18 uses
  %.0121162.i19 = phi ptr [ %i.me, %.lr.ph165.i13 ], [ %.0110163.i18, %.loopexit.i32 ] ; 29 uses
  %.0122161.i20 = phi i32 [ %i.md, %.lr.ph165.i13 ], [ %.0123160.i21, %.loopexit.i32 ] ; 27 uses
  %.0123160.i21 = phi i32 [ %i.ma, %.lr.ph165.i13 ], [ %.0122161.i20, %.loopexit.i32 ] ; 3 uses
  %i.mm = trunc i64 %indvars.iv.i16 to i1
  %i.mn = xor i1 %i.mm, %7
  %i.mo = select i1 %i.mn, i64 8, i64 0           ; 2 uses
  %i.mp = trunc i64 %indvars.iv.i16 to i1
  %i.mq = xor i1 %i.mp, %7
  %i.mr = select i1 %i.mq, i64 8, i64 0           ; 2 uses
  %i.ms = trunc i64 %indvars.iv.i16 to i1
  %i.mt = xor i1 %i.ms, %7
  %i.mu = select i1 %i.mt, i64 8, i64 0           ; 2 uses
  %i.mv = trunc i64 %indvars.iv.i16 to i1
  %i.mw = xor i1 %i.mv, %7
  %i.mx = select i1 %i.mw, i64 8, i64 0           ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.i16 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.na = load i16, ptr %i.mz, align 4, !tbaa !13 ; 3 uses
  %i.nb = sext i16 %i.na to i64                   ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !13 ; 2 uses
  %i.ne = sext i16 %i.nd to i64                   ; 12 uses
  %i.nf = load i8, ptr %i.my, align 4, !tbaa !13  ; 4 uses
  %i.ng = load i64, ptr %.0110163.i18, align 8, !tbaa !156
  %i.nh = getelementptr inbounds i8, ptr %.0110163.i18, i64 -8
  store i64 %i.ng, ptr %i.nh, align 8, !tbaa !156
  %i.ni = add nsw i32 %.0123160.i21, -1
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.0110163.i18, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !156
  %i.nm = zext nneg i32 %.0123160.i21 to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %.0110163.i18, i64 %i.nm
  store i64 %i.nl, ptr %i.nn, align 8, !tbaa !156
  %not..0109.in.i22 = xor i1 %.0109.in164.i17, true ; 2 uses
  %i.no = zext i1 %not..0109.in.i22 to i64
  %i.np = getelementptr [8 x i8], ptr %.0110163.i18, i64 %i.no ; 20 uses
  %i.nq = icmp eq i16 %i.na, 1
  br i1 %i.nq, label %.preheader.i60, label %bb.o

.preheader.i60:                                   ; preds = %bb.n
  %.not131154.i61 = icmp eq i32 %.0122161.i20, 0
  br i1 %.not131154.i61, label %.loopexit.i32, label %.lr.ph158.i62

.lr.ph158.i62:                                    ; preds = %.preheader.i60
  %i.nr = zext nneg i8 %i.nf to i64               ; 4 uses
  %i.ns = zext nneg i32 %.0122161.i20 to i64      ; 2 uses
  %min.iters.check305 = icmp samesign ult i32 %.0122161.i20, 6
  br i1 %min.iters.check305, label %scalar.ph304.preheader, label %vector.memcheck289

vector.memcheck289:                               ; preds = %.lr.ph158.i62
  %scevgep290 = getelementptr i8, ptr %.0121162.i19, i64 8
  %i.nt = add nsw i32 %.0122161.i20, -1
  %i.nu = zext i32 %i.nt to i64
  %i.nv = shl nuw nsw i64 %i.nu, 3                ; 2 uses
  %scevgep291 = getelementptr i8, ptr %scevgep290, i64 %i.nv ; 2 uses
  %scevgep292 = getelementptr i8, ptr %.0110163.i18, i64 -8
  %scevgep293 = getelementptr i8, ptr %scevgep292, i64 %i.mx
  %i.nw = add nuw nsw i64 %i.mx, %i.nv            ; 2 uses
  %scevgep294 = getelementptr i8, ptr %.0110163.i18, i64 %i.nw
  %scevgep295 = getelementptr i8, ptr %.0110163.i18, i64 8
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.nw
  %bound0297 = icmp ult ptr %.0121162.i19, %scevgep294
  %bound1298 = icmp ult ptr %scevgep293, %scevgep291
  %found.conflict299 = and i1 %bound0297, %bound1298
  %bound0300 = icmp ult ptr %.0121162.i19, %scevgep296
  %bound1301 = icmp ult ptr %i.np, %scevgep291
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %found.conflict299, %found.conflict302
  br i1 %conflict.rdx303, label %scalar.ph304.preheader, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck289
  %n.vec307 = and i64 %i.ns, 2147483644           ; 4 uses
  %i.nx = trunc nuw nsw i64 %n.vec307 to i32
  %i.ny = sub nsw i32 %.0122161.i20, %i.nx
  %i.nz = shl nuw nsw i64 %n.vec307, 3            ; 2 uses
  %i.oa = getelementptr i8, ptr %.0121162.i19, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.np, i64 %i.nz
  %broadcast.splatinsert308 = insertelement <2 x i64> poison, i64 %i.nr, i64 0
  %broadcast.splat309 = shufflevector <2 x i64> %broadcast.splatinsert308, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert310 = insertelement <2 x i64> poison, i64 %i.ne, i64 0
  %broadcast.splat311 = shufflevector <2 x i64> %broadcast.splatinsert310, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph306
  %index313 = phi i64 [ 0, %vector.ph306 ], [ %index.next322, %vector.body312 ] ; 2 uses
  %i.oc = shl i64 %index313, 3                    ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.0121162.i19, i64 %i.oc ; 3 uses
  %next.gep315 = getelementptr i8, ptr %i.np, i64 %i.oc ; 4 uses
  %i.od = getelementptr inbounds i8, ptr %next.gep315, i64 -8
  %i.oe = getelementptr inbounds nuw i8, ptr %next.gep315, i64 8
  %wide.load316 = load <2 x i64>, ptr %i.od, align 8, !tbaa !156, !alias.scope !259
  %wide.load317 = load <2 x i64>, ptr %i.oe, align 8, !tbaa !156, !alias.scope !259
  %i.of = getelementptr i8, ptr %next.gep315, i64 16
  %wide.load318 = load <2 x i64>, ptr %next.gep315, align 8, !tbaa !156, !alias.scope !262
  %wide.load319 = load <2 x i64>, ptr %i.of, align 8, !tbaa !156, !alias.scope !262
  %i.og = add <2 x i64> %wide.load316, %broadcast.splat311
  %i.oh = add <2 x i64> %wide.load317, %broadcast.splat311
  %i.oi = add <2 x i64> %i.og, %wide.load318
  %i.oj = add <2 x i64> %i.oh, %wide.load319
  %i.ok = ashr <2 x i64> %i.oi, %broadcast.splat309
  %i.ol = ashr <2 x i64> %i.oj, %broadcast.splat309
  %i.om = getelementptr i8, ptr %next.gep314, i64 16 ; 2 uses
  %wide.load320 = load <2 x i64>, ptr %next.gep314, align 8, !tbaa !156, !alias.scope !264, !noalias !266
  %wide.load321 = load <2 x i64>, ptr %i.om, align 8, !tbaa !156, !alias.scope !264, !noalias !266
  %i.on = sub nsw <2 x i64> %wide.load320, %i.ok
  %i.oo = sub nsw <2 x i64> %wide.load321, %i.ol
  store <2 x i64> %i.on, ptr %next.gep314, align 8, !tbaa !156, !alias.scope !264, !noalias !266
  store <2 x i64> %i.oo, ptr %i.om, align 8, !tbaa !156, !alias.scope !264, !noalias !266
  %index.next322 = add nuw i64 %index313, 4       ; 2 uses
  %i.op = icmp eq i64 %index.next322, %n.vec307
  br i1 %i.op, label %middle.block323, label %vector.body312, !llvm.loop !267

middle.block323:                                  ; preds = %vector.body312
  %cmp.n324 = icmp eq i64 %n.vec307, %i.ns
  br i1 %cmp.n324, label %.loopexit.i32, label %scalar.ph304.preheader

scalar.ph304.preheader:                           ; preds = %vector.memcheck289, %.lr.ph158.i62, %middle.block323
  %.0114157.i63.ph = phi i32 [ %.0122161.i20, %vector.memcheck289 ], [ %.0122161.i20, %.lr.ph158.i62 ], [ %i.ny, %middle.block323 ] ; 4 uses
  %.0115156.i64.ph = phi ptr [ %.0121162.i19, %vector.memcheck289 ], [ %.0121162.i19, %.lr.ph158.i62 ], [ %i.oa, %middle.block323 ] ; 4 uses
  %.0117155.i65.ph = phi ptr [ %i.np, %vector.memcheck289 ], [ %i.np, %.lr.ph158.i62 ], [ %i.ob, %middle.block323 ] ; 4 uses
  %xtraiter468 = and i32 %.0114157.i63.ph, 1
  %lcmp.mod469.not = icmp eq i32 %xtraiter468, 0
  br i1 %lcmp.mod469.not, label %scalar.ph304.prol.loopexit, label %scalar.ph304.prol

scalar.ph304.prol:                                ; preds = %scalar.ph304.preheader
  %i.oq = getelementptr inbounds i8, ptr %.0117155.i65.ph, i64 -8
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !156
  %i.os = load i64, ptr %.0117155.i65.ph, align 8, !tbaa !156
  %i.ot = add i64 %i.or, %i.ne
  %i.ou = add i64 %i.ot, %i.os
  %i.ov = ashr i64 %i.ou, %i.nr
  %i.ow = load i64, ptr %.0115156.i64.ph, align 8, !tbaa !156
  %i.ox = sub nsw i64 %i.ow, %i.ov
  store i64 %i.ox, ptr %.0115156.i64.ph, align 8, !tbaa !156
  %i.oy = add nsw i32 %.0114157.i63.ph, -1
  %i.oz = getelementptr inbounds nuw i8, ptr %.0117155.i65.ph, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %.0115156.i64.ph, i64 8
  br label %scalar.ph304.prol.loopexit

scalar.ph304.prol.loopexit:                       ; preds = %scalar.ph304.prol, %scalar.ph304.preheader
  %.0114157.i63.unr = phi i32 [ %.0114157.i63.ph, %scalar.ph304.preheader ], [ %i.oy, %scalar.ph304.prol ]
  %.0115156.i64.unr = phi ptr [ %.0115156.i64.ph, %scalar.ph304.preheader ], [ %i.pa, %scalar.ph304.prol ]
  %.0117155.i65.unr = phi ptr [ %.0117155.i65.ph, %scalar.ph304.preheader ], [ %i.oz, %scalar.ph304.prol ]
  %i.pb = icmp eq i32 %.0114157.i63.ph, 1
  br i1 %i.pb, label %.loopexit.i32, label %scalar.ph304

scalar.ph304:                                     ; preds = %scalar.ph304.prol.loopexit, %scalar.ph304
  %.0114157.i63 = phi i32 [ %i.pt, %scalar.ph304 ], [ %.0114157.i63.unr, %scalar.ph304.prol.loopexit ]
  %.0115156.i64 = phi ptr [ %i.pv, %scalar.ph304 ], [ %.0115156.i64.unr, %scalar.ph304.prol.loopexit ] ; 4 uses
  %.0117155.i65 = phi ptr [ %i.pu, %scalar.ph304 ], [ %.0117155.i65.unr, %scalar.ph304.prol.loopexit ] ; 5 uses
  %i.pc = getelementptr inbounds i8, ptr %.0117155.i65, i64 -8
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !156
  %i.pe = load i64, ptr %.0117155.i65, align 8, !tbaa !156
  %i.pf = add i64 %i.pd, %i.ne
  %i.pg = add i64 %i.pf, %i.pe
  %i.ph = ashr i64 %i.pg, %i.nr
  %i.pi = load i64, ptr %.0115156.i64, align 8, !tbaa !156
  %i.pj = sub nsw i64 %i.pi, %i.ph
  store i64 %i.pj, ptr %.0115156.i64, align 8, !tbaa !156
  %i.pk = getelementptr inbounds nuw i8, ptr %.0117155.i65, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %.0115156.i64, i64 8 ; 2 uses
  %i.pm = load i64, ptr %.0117155.i65, align 8, !tbaa !156
  %i.pn = load i64, ptr %i.pk, align 8, !tbaa !156
  %i.po = add i64 %i.pm, %i.ne
  %i.pp = add i64 %i.po, %i.pn
  %i.pq = ashr i64 %i.pp, %i.nr
  %i.pr = load i64, ptr %i.pl, align 8, !tbaa !156
  %i.ps = sub nsw i64 %i.pr, %i.pq
  store i64 %i.ps, ptr %i.pl, align 8, !tbaa !156
  %i.pt = add nsw i32 %.0114157.i63, -2           ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.0117155.i65, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %.0115156.i64, i64 16
  %.not131.i66.1 = icmp eq i32 %i.pt, 0
  br i1 %.not131.i66.1, label %.loopexit.i32, label %scalar.ph304, !llvm.loop !268

bb.o:                                             ; preds = %bb.n
  %i.pw = icmp eq i16 %i.na, -1                   ; 2 uses
  %i.px = icmp eq i16 %i.nd, 1
  %or.cond.i23 = select i1 %i.pw, i1 %i.px, i1 false
  %i.py = icmp eq i8 %i.nf, 1
  %or.cond4.i24 = select i1 %or.cond.i23, i1 %i.py, i1 false
  %.not130149.i25 = icmp eq i32 %.0122161.i20, 0  ; 3 uses
  br i1 %or.cond4.i24, label %.preheader134.i54, label %bb.p

.preheader134.i54:                                ; preds = %bb.o
  br i1 %.not130149.i25, label %.loopexit.i32, label %.lr.ph153.i55.preheader

.lr.ph153.i55.preheader:                          ; preds = %.preheader134.i54
  %i.pz = zext nneg i32 %.0122161.i20 to i64      ; 2 uses
  %min.iters.check344 = icmp samesign ult i32 %.0122161.i20, 6
  br i1 %min.iters.check344, label %.lr.ph153.i55.preheader442, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph153.i55.preheader
  %scevgep329 = getelementptr i8, ptr %.0121162.i19, i64 8
  %i.qa = add nsw i32 %.0122161.i20, -1
  %i.qb = zext i32 %i.qa to i64
  %i.qc = shl nuw nsw i64 %i.qb, 3                ; 2 uses
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.qc ; 2 uses
  %scevgep331 = getelementptr i8, ptr %.0110163.i18, i64 -8
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.mu
  %i.qd = add nuw nsw i64 %i.mu, %i.qc            ; 2 uses
  %scevgep333 = getelementptr i8, ptr %.0110163.i18, i64 %i.qd
  %scevgep334 = getelementptr i8, ptr %.0110163.i18, i64 8
  %scevgep335 = getelementptr i8, ptr %scevgep334, i64 %i.qd
  %bound0336 = icmp ult ptr %.0121162.i19, %scevgep333
  %bound1337 = icmp ult ptr %scevgep332, %scevgep330
  %found.conflict338 = and i1 %bound0336, %bound1337
  %bound0339 = icmp ult ptr %.0121162.i19, %scevgep335
  %bound1340 = icmp ult ptr %i.np, %scevgep330
  %found.conflict341 = and i1 %bound0339, %bound1340
  %conflict.rdx342 = or i1 %found.conflict338, %found.conflict341
  br i1 %conflict.rdx342, label %.lr.ph153.i55.preheader442, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck328
end_hunk_1
