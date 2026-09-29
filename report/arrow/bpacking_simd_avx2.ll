Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bpacking_simd_avx2?download=true
inline.NumInlined: 12609
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.sg = add nuw nsw i32 %.02223.i.i153, 3       ; 2 uses
  %i.sh = add nuw nsw i32 %.02223.i.i153, 2
  %i.si = lshr i32 %i.sh, 3
  %i.sj = sub nsw i32 %i.si, %i.sf                ; 2 uses
  %i.sk = add nsw i32 %i.sj, 1
  %i.sl = icmp slt i32 %i.sj, 2
  tail call void @llvm.assume(i1 %i.sl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8, !tbaa !13
  %i.sm = zext nneg i32 %i.sf to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %.025.lcssa.i149, i64 %i.sm
  %i.so = sext i32 %i.sk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 1 %i.sn, i64 %i.so, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.sp = and i32 %.02223.i.i153, 7
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = lshr i64 %.0..0..0..0..0..0..0..0..i29.i, %i.sq
  %i.ss = trunc i64 %i.sr to i32
  %i.st = and i32 %i.ss, 7
  store i32 %i.st, ptr %.024.i.i152, align 4, !tbaa !6
  %i.su = getelementptr inbounds nuw i8, ptr %.024.i.i152, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.sv = icmp samesign ult i32 %i.sg, %i.se
  br i1 %i.sv, label %.lr.ph.i28.i151, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !163

.lr.ph.i154:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i154
  %.032.i155 = phi i32 [ %i.uo, %.lr.ph.i154 ], [ 0, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i156 = phi ptr [ %i.um, %.lr.ph.i154 ], [ %i.rw, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i157 = phi ptr [ %i.un, %.lr.ph.i154 ], [ %i.ry, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %i.sw = load i32, ptr %.02531.i156, align 1
  %i.sx = insertelement <8 x i32> poison, i32 %i.sw, i64 0
  %i.sy = shufflevector <8 x i32> %i.sx, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sz = lshr <8 x i32> %i.sy, <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.ta = bitcast <8 x i32> %i.sz to <4 x i64>
  %i.tb = and <4 x i64> %i.ta, splat (i64 30064771079)
  store <4 x i64> %i.tb, ptr %.02630.i157, align 1, !tbaa !11
  %i.tc = getelementptr inbounds nuw i8, ptr %.02630.i157, i64 32
  %i.td = load i32, ptr %.02531.i156, align 1     ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.02531.i156, i64 4 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 1            ; 3 uses
  %i.tg = tail call i32 @llvm.fshl.i32(i32 %i.tf, i32 %i.td, i32 2)
  %i.th = insertelement <8 x i32> poison, i32 %i.td, i64 0
  %i.ti = insertelement <8 x i32> %i.th, i32 %i.td, i64 1
  %i.tj = insertelement <8 x i32> %i.ti, i32 %i.tg, i64 2
  %i.tk = insertelement <4 x i32> poison, i32 %i.tf, i64 0
  %i.tl = shufflevector <4 x i32> %i.tk, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tm = shufflevector <8 x i32> %i.tj, <8 x i32> %i.tl, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.tn = insertelement <8 x i32> %i.tm, i32 %i.tf, i64 7
  %i.to = lshr <8 x i32> %i.tn, <i32 24, i32 27, i32 0, i32 1, i32 4, i32 7, i32 10, i32 13>
  %i.tp = bitcast <8 x i32> %i.to to <4 x i64>
  %i.tq = and <4 x i64> %i.tp, splat (i64 30064771079)
  store <4 x i64> %i.tq, ptr %i.tc, align 1, !tbaa !11
  %i.tr = getelementptr inbounds nuw i8, ptr %.02630.i157, i64 64
  %i.ts = load i32, ptr %i.te, align 1            ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.02531.i156, i64 8 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 1            ; 3 uses
  %i.tv = tail call i32 @llvm.fshl.i32(i32 %i.tu, i32 %i.ts, i32 1)
  %i.tw = insertelement <4 x i32> poison, i32 %i.ts, i64 0
  %i.tx = shufflevector <4 x i32> %i.tw, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ty = insertelement <8 x i32> %i.tx, i32 %i.ts, i64 4
  %i.tz = insertelement <8 x i32> %i.ty, i32 %i.tv, i64 5
  %i.ua = insertelement <8 x i32> %i.tz, i32 %i.tu, i64 6
  %i.ub = insertelement <8 x i32> %i.ua, i32 %i.tu, i64 7
  %i.uc = lshr <8 x i32> %i.ub, <i32 16, i32 19, i32 22, i32 25, i32 28, i32 0, i32 2, i32 5>
  %i.ud = bitcast <8 x i32> %i.uc to <4 x i64>
  %i.ue = and <4 x i64> %i.ud, splat (i64 30064771079)
  store <4 x i64> %i.ue, ptr %i.tr, align 1, !tbaa !11
  %i.uf = getelementptr inbounds nuw i8, ptr %.02630.i157, i64 96
  %i.ug = load i32, ptr %i.tt, align 1
  %i.uh = insertelement <8 x i32> poison, i32 %i.ug, i64 0
  %i.ui = shufflevector <8 x i32> %i.uh, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.uj = lshr <8 x i32> %i.ui, <i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 26, i32 29>
  %i.uk = bitcast <8 x i32> %i.uj to <4 x i64>
  %i.ul = and <4 x i64> %i.uk, splat (i64 30064771079)
  store <4 x i64> %i.ul, ptr %i.uf, align 1, !tbaa !11
  %i.um = getelementptr inbounds nuw i8, ptr %.02531.i156, i64 12 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.02630.i157, i64 128 ; 2 uses
  %i.uo = add nuw nsw i32 %.032.i155, 1           ; 2 uses
  %exitcond.not.i158 = icmp eq i32 %i.uo, %i.rz
  br i1 %exitcond.not.i158, label %._crit_edge.i147, label %.lr.ph.i154, !llvm.loop !164

bb.i:                                             ; preds = %bb.a
  %i.up = shl nsw i32 %2, 2
  %i.uq = add nsw i32 %4, %i.up
  %i.ur = icmp sgt i32 %2, 0
  br i1 %i.ur, label %.lr.ph.i.i177, label %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i177:                                    ; preds = %bb.i, %bb.j
  %.026.i.i178 = phi ptr [ %i.vh, %bb.j ], [ %1, %bb.i ] ; 2 uses
  %.02325.i.i179 = phi i32 [ %i.uu, %bb.j ], [ %4, %bb.i ] ; 5 uses
  %i.us = srem i32 %.02325.i.i179, 8              ; 2 uses
  %i.ut = sdiv i32 %.02325.i.i179, 8              ; 2 uses
  %.not.i.i180 = icmp eq i32 %i.us, 0
  br i1 %.not.i.i180, label %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i177
  %i.uu = add nsw i32 %.02325.i.i179, 4           ; 3 uses
  %i.uv = add nsw i32 %.02325.i.i179, 3
  %i.uw = sdiv i32 %i.uv, 8
  %i.ux = sub nsw i32 %i.uw, %i.ut                ; 2 uses
  %i.uy = add nsw i32 %i.ux, 1
  %i.uz = icmp slt i32 %i.ux, 2
  tail call void @llvm.assume(i1 %i.uz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8, !tbaa !13
  %i.va = sext i32 %i.ut to i64
  %i.vb = getelementptr inbounds i8, ptr %0, i64 %i.va
  %i.vc = sext i32 %i.uy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr readonly align 1 %i.vb, i64 %i.vc, i1 false)
  %.0..0..0..0..0..0..0..0..i.i181 = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.vd = zext nneg i32 %i.us to i64
  %i.ve = lshr i64 %.0..0..0..0..0..0..0..0..i.i181, %i.vd
  %i.vf = trunc i64 %i.ve to i32
  %i.vg = and i32 %i.vf, 15
  store i32 %i.vg, ptr %.026.i.i178, align 4, !tbaa !6
  %i.vh = getelementptr inbounds nuw i8, ptr %.026.i.i178, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.vi = icmp slt i32 %i.uu, %i.uq
  br i1 %i.vi, label %.lr.ph.i.i177, label %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !165

_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.j, %.lr.ph.i.i177, %bb.i
  %.023.lcssa.i.i164 = phi i32 [ %4, %bb.i ], [ %i.uu, %bb.j ], [ %.02325.i.i179, %.lr.ph.i.i177 ]
  %i.vj = sub nsw i32 %.023.lcssa.i.i164, %4
  %i.vk = sdiv i32 %i.vj, 4                       ; 3 uses
  %i.vl = shl nsw i32 %i.vk, 2
  %i.vm = add nsw i32 %i.vl, %4
  %i.vn = sub nsw i32 %2, %i.vk                   ; 5 uses
  %i.vo = sdiv i32 %i.vm, 8
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds i8, ptr %0, i64 %i.vp ; 3 uses
  %i.vr = sext i32 %i.vk to i64
  %i.vs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vr ; 3 uses
  %i.vt = sdiv i32 %i.vn, 32                      ; 4 uses
  %i.vu = icmp sgt i32 %i.vn, 31
  br i1 %i.vu, label %.lr.ph.i172.preheader, label %._crit_edge.i165

.lr.ph.i172.preheader:                            ; preds = %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i
  %xtraiter = and i32 %i.vt, 1
  %i.vv = and i32 %i.vn, 2147483616
  %i.vw = icmp eq i32 %i.vv, 32
  br i1 %i.vw, label %.lr.ph.i172.epil.preheader, label %.lr.ph.i172.preheader.new

.lr.ph.i172.preheader.new:                        ; preds = %.lr.ph.i172.preheader
  %unroll_iter = and i32 %i.vt, 67108862
  br label %.lr.ph.i172

._crit_edge.i165.loopexit.unr-lcssa:              ; preds = %.lr.ph.i172
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i165, label %.lr.ph.i172.epil.preheader

.lr.ph.i172.epil.preheader:                       ; preds = %._crit_edge.i165.loopexit.unr-lcssa, %.lr.ph.i172.preheader
  %.02531.i174.epil.init = phi ptr [ %i.vq, %.lr.ph.i172.preheader ], [ %i.acl, %._crit_edge.i165.loopexit.unr-lcssa ] ; 5 uses
  %.02630.i175.epil.init = phi ptr [ %i.vs, %.lr.ph.i172.preheader ], [ %i.acm, %._crit_edge.i165.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod1553 = trunc i32 %i.vt to i1
  tail call void @llvm.assume(i1 %lcmp.mod1553)
  %i.vx = load i32, ptr %.02531.i174.epil.init, align 1
  %i.vy = insertelement <8 x i32> poison, i32 %i.vx, i64 0
  %i.vz = shufflevector <8 x i32> %i.vy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.wa = lshr <8 x i32> %i.vz, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.wb = bitcast <8 x i32> %i.wa to <4 x i64>
  %i.wc = and <4 x i64> %i.wb, splat (i64 64424509455)
  store <4 x i64> %i.wc, ptr %.02630.i175.epil.init, align 1, !tbaa !11
  %i.wd = getelementptr inbounds nuw i8, ptr %.02630.i175.epil.init, i64 32
  %i.we = getelementptr inbounds nuw i8, ptr %.02531.i174.epil.init, i64 4
  %i.wf = load i32, ptr %i.we, align 1
  %i.wg = insertelement <8 x i32> poison, i32 %i.wf, i64 0
  %i.wh = shufflevector <8 x i32> %i.wg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.wi = lshr <8 x i32> %i.wh, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.wj = bitcast <8 x i32> %i.wi to <4 x i64>
  %i.wk = and <4 x i64> %i.wj, splat (i64 64424509455)
  store <4 x i64> %i.wk, ptr %i.wd, align 1, !tbaa !11
  %i.wl = getelementptr inbounds nuw i8, ptr %.02630.i175.epil.init, i64 64
  %i.wm = getelementptr inbounds nuw i8, ptr %.02531.i174.epil.init, i64 8
  %i.wn = load i32, ptr %i.wm, align 1
  %i.wo = insertelement <8 x i32> poison, i32 %i.wn, i64 0
  %i.wp = shufflevector <8 x i32> %i.wo, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.wq = lshr <8 x i32> %i.wp, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.wr = bitcast <8 x i32> %i.wq to <4 x i64>
  %i.ws = and <4 x i64> %i.wr, splat (i64 64424509455)
  store <4 x i64> %i.ws, ptr %i.wl, align 1, !tbaa !11
  %i.wt = getelementptr inbounds nuw i8, ptr %.02630.i175.epil.init, i64 96
  %i.wu = getelementptr inbounds nuw i8, ptr %.02531.i174.epil.init, i64 12
  %i.wv = load i32, ptr %i.wu, align 1
  %i.ww = insertelement <8 x i32> poison, i32 %i.wv, i64 0
  %i.wx = shufflevector <8 x i32> %i.ww, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.wy = lshr <8 x i32> %i.wx, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.wz = bitcast <8 x i32> %i.wy to <4 x i64>
  %i.xa = and <4 x i64> %i.wz, splat (i64 64424509455)
  store <4 x i64> %i.xa, ptr %i.wt, align 1, !tbaa !11
  %i.xb = getelementptr inbounds nuw i8, ptr %.02531.i174.epil.init, i64 16
  %i.xc = getelementptr inbounds nuw i8, ptr %.02630.i175.epil.init, i64 128
  br label %._crit_edge.i165

._crit_edge.i165:                                 ; preds = %.lr.ph.i172.epil.preheader, %._crit_edge.i165.loopexit.unr-lcssa, %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i166 = phi ptr [ %i.vs, %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.acm, %._crit_edge.i165.loopexit.unr-lcssa ], [ %i.xc, %.lr.ph.i172.epil.preheader ] ; 6 uses
  %.025.lcssa.i167 = phi ptr [ %i.vq, %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.acl, %._crit_edge.i165.loopexit.unr-lcssa ], [ %i.xb, %.lr.ph.i172.epil.preheader ] ; 11 uses
  %i.xd = shl nsw i32 %i.vt, 5                    ; 2 uses
  %i.xe = sub nsw i32 %i.vn, %i.xd                ; 2 uses
  %i.xf = icmp samesign ult i32 %i.xe, 32
  tail call void @llvm.assume(i1 %i.xf)
  %i.xg = shl nuw nsw i32 %i.xe, 2                ; 3 uses
  %.not.i168 = icmp eq i32 %i.vn, %i.xd
  br i1 %.not.i168, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i169.preheader

.lr.ph.i28.i169.preheader:                        ; preds = %._crit_edge.i165
  %i.xh = tail call i32 @llvm.usub.sat.i32(i32 %i.xg, i32 4) ; 2 uses
  %5 = lshr exact i32 %i.xh, 2
  %narrow = add nuw nsw i32 %5, 1
  %6 = zext nneg i32 %narrow to i64               ; 2 uses
  %min.iters.check1221 = icmp samesign ult i32 %i.xh, 60
  br i1 %min.iters.check1221, label %.lr.ph.i28.i169.preheader1466, label %vector.memcheck1215

vector.memcheck1215:                              ; preds = %.lr.ph.i28.i169.preheader
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %i.xg, i32 4)
  %8 = or disjoint i32 %7, 3
  %9 = zext nneg i32 %8 to i64                    ; 2 uses
  %i.xi = and i64 %9, 124
  %i.xj = getelementptr i8, ptr %.026.lcssa.i166, i64 %i.xi
  %scevgep1216 = getelementptr i8, ptr %i.xj, i64 4
  %i.xk = lshr i64 %9, 3
  %i.xl = getelementptr i8, ptr %.025.lcssa.i167, i64 %i.xk
  %scevgep1217 = getelementptr i8, ptr %i.xl, i64 1
  %bound01218 = icmp ult ptr %.026.lcssa.i166, %scevgep1217
  %bound11219 = icmp ult ptr %.025.lcssa.i167, %scevgep1216
  %found.conflict1220 = and i1 %bound01218, %bound11219
  br i1 %found.conflict1220, label %.lr.ph.i28.i169.preheader1466, label %vector.ph1222

vector.ph1222:                                    ; preds = %vector.memcheck1215
  %n.vec1223 = and i64 %6, 1073741816             ; 4 uses
  %i.xm = shl nuw nsw i64 %n.vec1223, 2
  %i.xn = getelementptr i8, ptr %.026.lcssa.i166, i64 %i.xm
  %i.xo = trunc nuw nsw i64 %n.vec1223 to i32
  %i.xp = shl nuw i32 %i.xo, 2
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1227, %vector.body1224 ] ; 10 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>, %vector.ph1222 ], [ %vec.ind.next, %vector.body1224 ] ; 2 uses
  %i.xq = shl i64 %index1225, 2
  %next.gep1226 = getelementptr i8, ptr %.026.lcssa.i166, i64 %i.xq
  %i.xr = lshr exact i64 %index1225, 1
  %i.xs = lshr exact i64 %index1225, 1
  %i.xt = lshr exact i64 %index1225, 1
  %i.xu = lshr exact i64 %index1225, 1
  %i.xv = lshr exact i64 %index1225, 1
  %i.xw = lshr exact i64 %index1225, 1
  %i.xx = lshr exact i64 %index1225, 1
  %i.xy = lshr exact i64 %index1225, 1
  %i.xz = and i64 %i.xr, 2147483644
  %i.ya = and i64 %i.xs, 2147483644
  %i.yb = and i64 %i.xt, 2147483644
  %i.yc = and i64 %i.xu, 2147483644
  %i.yd = and i64 %i.xv, 2147483644
  %i.ye = and i64 %i.xw, 2147483644
  %i.yf = and i64 %i.xx, 2147483644
  %i.yg = and i64 %i.xy, 2147483644
  %i.yh = getelementptr inbounds nuw i8, ptr %.025.lcssa.i167, i64 %i.xz
  %i.yi = getelementptr inbounds nuw i8, ptr %.025.lcssa.i167, i64 %i.ya
  %i.yj = getelementptr inbounds nuw i8, ptr %.025.lcssa.i167, i64 %i.yb
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 1
  %i.yl = getelementptr inbounds nuw i8, ptr %.025.lcssa.i167, i64 %i.yc
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.yn = getelementptr inbounds nuw i8, ptr %.025.lcssa.i167, i64 %i.yd
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 2
  %i.yp = getelementptr inbounds nuw i8, ptr %.025.lcssa.i167, i64 %i.ye
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 2
  %i.yr = getelementptr inbounds nuw i8, ptr %.025.lcssa.i167, i64 %i.yf
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 3
  %i.yt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i167, i64 %i.yg
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 3
  %i.yv = load i8, ptr %i.yh, align 1, !alias.scope !266
  %i.yw = load i8, ptr %i.yi, align 1, !alias.scope !266
  %i.yx = load i8, ptr %i.yk, align 1, !alias.scope !266
  %i.yy = load i8, ptr %i.ym, align 1, !alias.scope !266
  %i.yz = load i8, ptr %i.yo, align 1, !alias.scope !266
  %i.za = load i8, ptr %i.yq, align 1, !alias.scope !266
  %i.zb = load i8, ptr %i.ys, align 1, !alias.scope !266
  %i.zc = load i8, ptr %i.yu, align 1, !alias.scope !266
  %i.zd = insertelement <8 x i8> poison, i8 %i.yv, i64 0
  %i.ze = insertelement <8 x i8> %i.zd, i8 %i.yw, i64 1
  %i.zf = insertelement <8 x i8> %i.ze, i8 %i.yx, i64 2
  %i.zg = insertelement <8 x i8> %i.zf, i8 %i.yy, i64 3
  %i.zh = insertelement <8 x i8> %i.zg, i8 %i.yz, i64 4
  %i.zi = insertelement <8 x i8> %i.zh, i8 %i.za, i64 5
  %i.zj = insertelement <8 x i8> %i.zi, i8 %i.zb, i64 6
  %i.zk = insertelement <8 x i8> %i.zj, i8 %i.zc, i64 7
  %i.zl = zext <8 x i8> %i.zk to <8 x i32>
  %i.zm = and <8 x i32> %vec.ind, splat (i32 4)
  %i.zn = lshr <8 x i32> %i.zl, %i.zm
  %i.zo = and <8 x i32> %i.zn, splat (i32 15)
  store <8 x i32> %i.zo, ptr %next.gep1226, align 4, !tbaa !6, !alias.scope !267, !noalias !266
  %index.next1227 = add nuw i64 %index1225, 8     ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i32> %vec.ind, splat (i32 32)
  %i.zp = icmp eq i64 %index.next1227, %n.vec1223
  br i1 %i.zp, label %middle.block1228, label %vector.body1224, !llvm.loop !169

middle.block1228:                                 ; preds = %vector.body1224
  %cmp.n1229 = icmp eq i64 %n.vec1223, %6
  br i1 %cmp.n1229, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i169.preheader1466

.lr.ph.i28.i169.preheader1466:                    ; preds = %vector.memcheck1215, %.lr.ph.i28.i169.preheader, %middle.block1228
  %.024.i.i170.ph = phi ptr [ %.026.lcssa.i166, %vector.memcheck1215 ], [ %.026.lcssa.i166, %.lr.ph.i28.i169.preheader ], [ %i.xn, %middle.block1228 ]
  %.02223.i.i171.ph = phi i32 [ 0, %vector.memcheck1215 ], [ 0, %.lr.ph.i28.i169.preheader ], [ %i.xp, %middle.block1228 ]
  br label %.lr.ph.i28.i169

.lr.ph.i28.i169:                                  ; preds = %.lr.ph.i28.i169.preheader1466, %.lr.ph.i28.i169
  %.024.i.i170 = phi ptr [ %i.zz, %.lr.ph.i28.i169 ], [ %.024.i.i170.ph, %.lr.ph.i28.i169.preheader1466 ] ; 2 uses
  %.02223.i.i171 = phi i32 [ %i.zr, %.lr.ph.i28.i169 ], [ %.02223.i.i171.ph, %.lr.ph.i28.i169.preheader1466 ] ; 3 uses
  %i.zq = lshr i32 %.02223.i.i171, 3
  %i.zr = add nuw nsw i32 %.02223.i.i171, 4       ; 2 uses
  %i.zs = zext nneg i32 %i.zq to i64
  %i.zt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i167, i64 %i.zs
  %i.zu = load i8, ptr %i.zt, align 1
  %i.zv = zext i8 %i.zu to i32
  %i.zw = and i32 %.02223.i.i171, 4
  %i.zx = lshr i32 %i.zv, %i.zw
  %i.zy = and i32 %i.zx, 15
  store i32 %i.zy, ptr %.024.i.i170, align 4, !tbaa !6
  %i.zz = getelementptr inbounds nuw i8, ptr %.024.i.i170, i64 4
  %i.aaa = icmp samesign ult i32 %i.zr, %i.xg
  br i1 %i.aaa, label %.lr.ph.i28.i169, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !170

.lr.ph.i172:                                      ; preds = %.lr.ph.i172, %.lr.ph.i172.preheader.new
  %.02531.i174 = phi ptr [ %i.vq, %.lr.ph.i172.preheader.new ], [ %i.acl, %.lr.ph.i172 ] ; 9 uses
  %.02630.i175 = phi ptr [ %i.vs, %.lr.ph.i172.preheader.new ], [ %i.acm, %.lr.ph.i172 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i172.preheader.new ], [ %niter.next.1, %.lr.ph.i172 ]
  %i.aab = load i32, ptr %.02531.i174, align 1
  %i.aac = insertelement <8 x i32> poison, i32 %i.aab, i64 0
  %i.aad = shufflevector <8 x i32> %i.aac, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aae = lshr <8 x i32> %i.aad, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aaf = bitcast <8 x i32> %i.aae to <4 x i64>
  %i.aag = and <4 x i64> %i.aaf, splat (i64 64424509455)
  store <4 x i64> %i.aag, ptr %.02630.i175, align 1, !tbaa !11
  %i.aah = getelementptr inbounds nuw i8, ptr %.02630.i175, i64 32
  %i.aai = getelementptr inbounds nuw i8, ptr %.02531.i174, i64 4
  %i.aaj = load i32, ptr %i.aai, align 1
  %i.aak = insertelement <8 x i32> poison, i32 %i.aaj, i64 0
  %i.aal = shufflevector <8 x i32> %i.aak, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aam = lshr <8 x i32> %i.aal, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aan = bitcast <8 x i32> %i.aam to <4 x i64>
  %i.aao = and <4 x i64> %i.aan, splat (i64 64424509455)
  store <4 x i64> %i.aao, ptr %i.aah, align 1, !tbaa !11
  %i.aap = getelementptr inbounds nuw i8, ptr %.02630.i175, i64 64
  %i.aaq = getelementptr inbounds nuw i8, ptr %.02531.i174, i64 8
  %i.aar = load i32, ptr %i.aaq, align 1
  %i.aas = insertelement <8 x i32> poison, i32 %i.aar, i64 0
  %i.aat = shufflevector <8 x i32> %i.aas, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aau = lshr <8 x i32> %i.aat, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aav = bitcast <8 x i32> %i.aau to <4 x i64>
  %i.aaw = and <4 x i64> %i.aav, splat (i64 64424509455)
  store <4 x i64> %i.aaw, ptr %i.aap, align 1, !tbaa !11
  %i.aax = getelementptr inbounds nuw i8, ptr %.02630.i175, i64 96
  %i.aay = getelementptr inbounds nuw i8, ptr %.02531.i174, i64 12
  %i.aaz = load i32, ptr %i.aay, align 1
  %i.aba = insertelement <8 x i32> poison, i32 %i.aaz, i64 0
  %i.abb = shufflevector <8 x i32> %i.aba, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abc = lshr <8 x i32> %i.abb, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.abd = bitcast <8 x i32> %i.abc to <4 x i64>
  %i.abe = and <4 x i64> %i.abd, splat (i64 64424509455)
  store <4 x i64> %i.abe, ptr %i.aax, align 1, !tbaa !11
  %i.abf = getelementptr inbounds nuw i8, ptr %.02531.i174, i64 16
  %i.abg = getelementptr inbounds nuw i8, ptr %.02630.i175, i64 128
  %i.abh = load i32, ptr %i.abf, align 1
  %i.abi = insertelement <8 x i32> poison, i32 %i.abh, i64 0
  %i.abj = shufflevector <8 x i32> %i.abi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abk = lshr <8 x i32> %i.abj, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.abl = bitcast <8 x i32> %i.abk to <4 x i64>
  %i.abm = and <4 x i64> %i.abl, splat (i64 64424509455)
  store <4 x i64> %i.abm, ptr %i.abg, align 1, !tbaa !11
  %i.abn = getelementptr inbounds nuw i8, ptr %.02630.i175, i64 160
  %i.abo = getelementptr inbounds nuw i8, ptr %.02531.i174, i64 20
  %i.abp = load i32, ptr %i.abo, align 1
  %i.abq = insertelement <8 x i32> poison, i32 %i.abp, i64 0
  %i.abr = shufflevector <8 x i32> %i.abq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abs = lshr <8 x i32> %i.abr, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.abt = bitcast <8 x i32> %i.abs to <4 x i64>
  %i.abu = and <4 x i64> %i.abt, splat (i64 64424509455)
  store <4 x i64> %i.abu, ptr %i.abn, align 1, !tbaa !11
  %i.abv = getelementptr inbounds nuw i8, ptr %.02630.i175, i64 192
  %i.abw = getelementptr inbounds nuw i8, ptr %.02531.i174, i64 24
  %i.abx = load i32, ptr %i.abw, align 1
  %i.aby = insertelement <8 x i32> poison, i32 %i.abx, i64 0
  %i.abz = shufflevector <8 x i32> %i.aby, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aca = lshr <8 x i32> %i.abz, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.acb = bitcast <8 x i32> %i.aca to <4 x i64>
  %i.acc = and <4 x i64> %i.acb, splat (i64 64424509455)
  store <4 x i64> %i.acc, ptr %i.abv, align 1, !tbaa !11
  %i.acd = getelementptr inbounds nuw i8, ptr %.02630.i175, i64 224
  %i.ace = getelementptr inbounds nuw i8, ptr %.02531.i174, i64 28
  %i.acf = load i32, ptr %i.ace, align 1
  %i.acg = insertelement <8 x i32> poison, i32 %i.acf, i64 0
  %i.ach = shufflevector <8 x i32> %i.acg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aci = lshr <8 x i32> %i.ach, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.acj = bitcast <8 x i32> %i.aci to <4 x i64>
  %i.ack = and <4 x i64> %i.acj, splat (i64 64424509455)
  store <4 x i64> %i.ack, ptr %i.acd, align 1, !tbaa !11
  %i.acl = getelementptr inbounds nuw i8, ptr %.02531.i174, i64 32 ; 3 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.02630.i175, i64 256 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i165.loopexit.unr-lcssa, label %.lr.ph.i172, !llvm.loop !171

bb.k:                                             ; preds = %bb.a
  %i.acn = mul nsw i32 %2, 5
  %i.aco = add nsw i32 %4, %i.acn
  %i.acp = icmp sgt i32 %2, 0
  br i1 %i.acp, label %.lr.ph.i.i196, label %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i196:                                    ; preds = %bb.k, %bb.l
  %.026.i.i197 = phi ptr [ %i.adf, %bb.l ], [ %1, %bb.k ] ; 2 uses
  %.02325.i.i198 = phi i32 [ %i.acs, %bb.l ], [ %4, %bb.k ] ; 5 uses
  %i.acq = srem i32 %.02325.i.i198, 8             ; 2 uses
  %i.acr = sdiv i32 %.02325.i.i198, 8             ; 2 uses
  %.not.i.i199 = icmp eq i32 %i.acq, 0
  br i1 %.not.i.i199, label %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i196
  %i.acs = add nsw i32 %.02325.i.i198, 5          ; 3 uses
  %i.act = add nsw i32 %.02325.i.i198, 4
  %i.acu = sdiv i32 %i.act, 8
  %i.acv = sub nsw i32 %i.acu, %i.acr             ; 2 uses
  %i.acw = add nsw i32 %i.acv, 1
  %i.acx = icmp slt i32 %i.acv, 2
  tail call void @llvm.assume(i1 %i.acx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 0, ptr %i.az, align 8, !tbaa !13
  %i.acy = sext i32 %i.acr to i64
  %i.acz = getelementptr inbounds i8, ptr %0, i64 %i.acy
  %i.ada = sext i32 %i.acw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.az, ptr readonly align 1 %i.acz, i64 %i.ada, i1 false)
  %.0..0..0..0..0..0..0..0..i.i200 = load i64, ptr %i.az, align 8, !tbaa !13
  %i.adb = zext nneg i32 %i.acq to i64
  %i.adc = lshr i64 %.0..0..0..0..0..0..0..0..i.i200, %i.adb
  %i.add = trunc i64 %i.adc to i32
  %i.ade = and i32 %i.add, 31
  store i32 %i.ade, ptr %.026.i.i197, align 4, !tbaa !6
  %i.adf = getelementptr inbounds nuw i8, ptr %.026.i.i197, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.adg = icmp slt i32 %i.acs, %i.aco
  br i1 %i.adg, label %.lr.ph.i.i196, label %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !172

_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.l, %.lr.ph.i.i196, %bb.k
  %.023.lcssa.i.i182 = phi i32 [ %4, %bb.k ], [ %i.acs, %bb.l ], [ %.02325.i.i198, %.lr.ph.i.i196 ]
  %i.adh = sub nsw i32 %.023.lcssa.i.i182, %4
  %i.adi = sdiv i32 %i.adh, 5                     ; 3 uses
  %i.adj = mul nsw i32 %i.adi, 5
  %i.adk = add nsw i32 %i.adj, %4
  %i.adl = sub nsw i32 %2, %i.adi                 ; 4 uses
  %i.adm = sdiv i32 %i.adk, 8
  %i.adn = sext i32 %i.adm to i64
  %i.ado = getelementptr inbounds i8, ptr %0, i64 %i.adn ; 2 uses
  %i.adp = sext i32 %i.adi to i64
  %i.adq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.adp ; 2 uses
  %i.adr = sdiv i32 %i.adl, 32                    ; 2 uses
  %i.ads = icmp sgt i32 %i.adl, 31
  br i1 %i.ads, label %.lr.ph.i191, label %._crit_edge.i183

._crit_edge.i183:                                 ; preds = %.lr.ph.i191, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i184 = phi ptr [ %i.adq, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.agu, %.lr.ph.i191 ]
  %.025.lcssa.i185 = phi ptr [ %i.ado, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.agt, %.lr.ph.i191 ]
  %i.adt = shl nsw i32 %i.adr, 5                  ; 2 uses
  %i.adu = sub nsw i32 %i.adl, %i.adt             ; 2 uses
  %i.adv = icmp samesign ult i32 %i.adu, 32
  tail call void @llvm.assume(i1 %i.adv)
  %i.adw = mul nuw nsw i32 %i.adu, 5
  %.not.i186 = icmp eq i32 %i.adl, %i.adt
  br i1 %.not.i186, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i187

.lr.ph.i28.i187:                                  ; preds = %._crit_edge.i183, %.lr.ph.i28.i187
  %.024.i.i188 = phi ptr [ %i.aem, %.lr.ph.i28.i187 ], [ %.026.lcssa.i184, %._crit_edge.i183 ] ; 2 uses
  %.02223.i.i189 = phi i32 [ %i.ady, %.lr.ph.i28.i187 ], [ 0, %._crit_edge.i183 ] ; 4 uses
  %i.adx = lshr i32 %.02223.i.i189, 3             ; 2 uses
  %i.ady = add nuw nsw i32 %.02223.i.i189, 5      ; 2 uses
  %i.adz = add nuw nsw i32 %.02223.i.i189, 4
  %i.aea = lshr i32 %i.adz, 3
  %i.aeb = sub nsw i32 %i.aea, %i.adx             ; 2 uses
  %i.aec = add nsw i32 %i.aeb, 1
  %i.aed = icmp slt i32 %i.aeb, 2
  tail call void @llvm.assume(i1 %i.aed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 0, ptr %i.ay, align 8, !tbaa !13
  %i.aee = zext nneg i32 %i.adx to i64
  %i.aef = getelementptr inbounds nuw i8, ptr %.025.lcssa.i185, i64 %i.aee
  %i.aeg = sext i32 %i.aec to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 1 %i.aef, i64 %i.aeg, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i190 = load i64, ptr %i.ay, align 8, !tbaa !13
  %i.aeh = and i32 %.02223.i.i189, 7
  %i.aei = zext nneg i32 %i.aeh to i64
  %i.aej = lshr i64 %.0..0..0..0..0..0..0..0..i29.i190, %i.aei
  %i.aek = trunc i64 %i.aej to i32
  %i.ael = and i32 %i.aek, 31
  store i32 %i.ael, ptr %.024.i.i188, align 4, !tbaa !6
  %i.aem = getelementptr inbounds nuw i8, ptr %.024.i.i188, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.aen = icmp samesign ult i32 %i.ady, %i.adw
  br i1 %i.aen, label %.lr.ph.i28.i187, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !173

.lr.ph.i191:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i191
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12unpack_widthILi3ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEmEEvPKhPT1_ii:bb.a

_ZN5arrow8internal12unpack_exactILi3ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.fe, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.fc, %.lr.ph ], [ %i.ac, %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit ] ; 9 uses
  %.02630 = phi ptr [ %i.fd, %.lr.ph ], [ %i.ae, %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit ] ; 17 uses
  %i.bb = load i64, ptr %.02531, align 1
  %i.bc = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %i.bd = shufflevector <4 x i64> %i.bc, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.be = lshr <4 x i64> %i.bd, <i64 0, i64 3, i64 6, i64 9>
  %i.bf = and <4 x i64> %i.be, splat (i64 7)
  store <4 x i64> %i.bf, ptr %.02630, align 1, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  %i.bh = load i64, ptr %.02531, align 1
  %i.bi = insertelement <4 x i64> poison, i64 %i.bh, i64 0
  %i.bj = shufflevector <4 x i64> %i.bi, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bk = lshr <4 x i64> %i.bj, <i64 12, i64 15, i64 18, i64 21>
  %i.bl = and <4 x i64> %i.bk, splat (i64 7)
  store <4 x i64> %i.bl, ptr %i.bg, align 1, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.bn = load i64, ptr %.02531, align 1
  %i.bo = insertelement <4 x i64> poison, i64 %i.bn, i64 0
  %i.bp = shufflevector <4 x i64> %i.bo, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bq = lshr <4 x i64> %i.bp, <i64 24, i64 27, i64 30, i64 33>
  %i.br = and <4 x i64> %i.bq, splat (i64 7)
  store <4 x i64> %i.br, ptr %i.bm, align 1, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %.02630, i64 96
  %i.bt = load i64, ptr %.02531, align 1
  %i.bu = insertelement <4 x i64> poison, i64 %i.bt, i64 0
  %i.bv = shufflevector <4 x i64> %i.bu, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bw = lshr <4 x i64> %i.bv, <i64 36, i64 39, i64 42, i64 45>
  %i.bx = and <4 x i64> %i.bw, splat (i64 7)
  store <4 x i64> %i.bx, ptr %i.bs, align 1, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.bz = load i64, ptr %.02531, align 1
  %i.ca = insertelement <4 x i64> poison, i64 %i.bz, i64 0
  %i.cb = shufflevector <4 x i64> %i.ca, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cc = lshr <4 x i64> %i.cb, <i64 48, i64 51, i64 54, i64 57>
  %i.cd = and <4 x i64> %i.cc, splat (i64 7)
  store <4 x i64> %i.cd, ptr %i.by, align 1, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %.02630, i64 160
  %i.cf = load i64, ptr %.02531, align 1          ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02531, i64 8 ; 6 uses
  %i.ch = load i64, ptr %i.cg, align 1            ; 3 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.cf, i64 1)
  %i.cj = insertelement <4 x i64> poison, i64 %i.cf, i64 0
  %i.ck = insertelement <4 x i64> %i.cj, i64 %i.ci, i64 1
  %i.cl = insertelement <4 x i64> %i.ck, i64 %i.ch, i64 2
  %i.cm = insertelement <4 x i64> %i.cl, i64 %i.ch, i64 3
  %i.cn = lshr <4 x i64> %i.cm, <i64 60, i64 0, i64 2, i64 5>
  %i.co = and <4 x i64> %i.cn, splat (i64 7)
  store <4 x i64> %i.co, ptr %i.ce, align 1, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.cq = load i64, ptr %i.cg, align 1
  %i.cr = insertelement <4 x i64> poison, i64 %i.cq, i64 0
  %i.cs = shufflevector <4 x i64> %i.cr, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ct = lshr <4 x i64> %i.cs, <i64 8, i64 11, i64 14, i64 17>
  %i.cu = and <4 x i64> %i.ct, splat (i64 7)
  store <4 x i64> %i.cu, ptr %i.cp, align 1, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %.02630, i64 224
  %i.cw = load i64, ptr %i.cg, align 1
  %i.cx = insertelement <4 x i64> poison, i64 %i.cw, i64 0
  %i.cy = shufflevector <4 x i64> %i.cx, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cz = lshr <4 x i64> %i.cy, <i64 20, i64 23, i64 26, i64 29>
  %i.da = and <4 x i64> %i.cz, splat (i64 7)
  store <4 x i64> %i.da, ptr %i.cv, align 1, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.dc = load i64, ptr %i.cg, align 1
  %i.dd = insertelement <4 x i64> poison, i64 %i.dc, i64 0
  %i.de = shufflevector <4 x i64> %i.dd, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.df = lshr <4 x i64> %i.de, <i64 32, i64 35, i64 38, i64 41>
  %i.dg = and <4 x i64> %i.df, splat (i64 7)
  store <4 x i64> %i.dg, ptr %i.db, align 1, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %.02630, i64 288
  %i.di = load i64, ptr %i.cg, align 1
  %i.dj = insertelement <4 x i64> poison, i64 %i.di, i64 0
  %i.dk = shufflevector <4 x i64> %i.dj, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dl = lshr <4 x i64> %i.dk, <i64 44, i64 47, i64 50, i64 53>
  %i.dm = and <4 x i64> %i.dl, splat (i64 7)
  store <4 x i64> %i.dm, ptr %i.dh, align 1, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.do = load i64, ptr %i.cg, align 1            ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.02531, i64 16 ; 6 uses
  %i.dq = load i64, ptr %i.dp, align 1            ; 2 uses
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.do, i64 2)
  %i.ds = insertelement <4 x i64> poison, i64 %i.do, i64 0
  %i.dt = insertelement <4 x i64> %i.ds, i64 %i.do, i64 1
  %i.du = insertelement <4 x i64> %i.dt, i64 %i.dr, i64 2
  %i.dv = insertelement <4 x i64> %i.du, i64 %i.dq, i64 3
  %i.dw = lshr <4 x i64> %i.dv, <i64 56, i64 59, i64 0, i64 1>
  %i.dx = and <4 x i64> %i.dw, splat (i64 7)
  store <4 x i64> %i.dx, ptr %i.dn, align 1, !tbaa !11
  %i.dy = getelementptr inbounds nuw i8, ptr %.02630, i64 352
  %i.dz = load i64, ptr %i.dp, align 1
  %i.ea = insertelement <4 x i64> poison, i64 %i.dz, i64 0
  %i.eb = shufflevector <4 x i64> %i.ea, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ec = lshr <4 x i64> %i.eb, <i64 4, i64 7, i64 10, i64 13>
  %i.ed = and <4 x i64> %i.ec, splat (i64 7)
  store <4 x i64> %i.ed, ptr %i.dy, align 1, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.ef = load i64, ptr %i.dp, align 1
  %i.eg = insertelement <4 x i64> poison, i64 %i.ef, i64 0
  %i.eh = shufflevector <4 x i64> %i.eg, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ei = lshr <4 x i64> %i.eh, <i64 16, i64 19, i64 22, i64 25>
  %i.ej = and <4 x i64> %i.ei, splat (i64 7)
  store <4 x i64> %i.ej, ptr %i.ee, align 1, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %.02630, i64 416
  %i.el = load i64, ptr %i.dp, align 1
  %i.em = insertelement <4 x i64> poison, i64 %i.el, i64 0
  %i.en = shufflevector <4 x i64> %i.em, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.eo = lshr <4 x i64> %i.en, <i64 28, i64 31, i64 34, i64 37>
  %i.ep = and <4 x i64> %i.eo, splat (i64 7)
  store <4 x i64> %i.ep, ptr %i.ek, align 1, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %.02630, i64 448
  %i.er = load i64, ptr %i.dp, align 1
  %i.es = insertelement <4 x i64> poison, i64 %i.er, i64 0
  %i.et = shufflevector <4 x i64> %i.es, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.eu = lshr <4 x i64> %i.et, <i64 40, i64 43, i64 46, i64 49>
  %i.ev = and <4 x i64> %i.eu, splat (i64 7)
  store <4 x i64> %i.ev, ptr %i.eq, align 1, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %.02630, i64 480
  %i.ex = load i64, ptr %i.dp, align 1
  %i.ey = insertelement <4 x i64> poison, i64 %i.ex, i64 0
  %i.ez = shufflevector <4 x i64> %i.ey, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fa = lshr <4 x i64> %i.ez, <i64 52, i64 55, i64 58, i64 61>
  %i.fb = and <4 x i64> %i.fa, splat (i64 7)
  store <4 x i64> %i.fb, ptr %i.ew, align 1, !tbaa !11
  %i.fc = getelementptr inbounds nuw i8, ptr %.02531, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.02630, i64 512 ; 2 uses
  %i.fe = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !294
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi4ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = shl nsw i32 %2, 2
  %i.c = add nsw i32 %i.b, %3
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.s, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.g, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.e = srem i32 %.02325.i, 8                    ; 2 uses
  %i.f = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.02325.i, 4                 ; 3 uses
  %i.h = add nsw i32 %.02325.i, 3
  %i.i = sdiv i32 %i.h, 8
  %i.j = sub nsw i32 %i.i, %i.f                   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  %i.l = icmp slt i32 %i.j, 2
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = sext i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.n, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p
  %i.r = and i64 %i.q, 15
  store i64 %i.r, ptr %.026.i, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = icmp slt i32 %i.g, %i.c
  br i1 %i.t, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !295

_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.g, %bb.b ]
  %i.u = sub nsw i32 %.023.lcssa.i, %3
  %i.v = sdiv i32 %i.u, 4                         ; 3 uses
  %i.w = shl nsw i32 %i.v, 2
  %i.x = add nsw i32 %i.w, %3
  %i.y = sub nsw i32 %2, %i.v                     ; 4 uses
  %i.z = sdiv i32 %i.x, 8
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  %i.ae = sdiv i32 %i.y, 64                       ; 2 uses
  %i.af = icmp sgt i32 %i.y, 63
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ad, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ], [ %i.ge, %.lr.ph ] ; 6 uses
  %.025.lcssa = phi ptr [ %i.ab, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ], [ %i.gd, %.lr.ph ] ; 7 uses
  %i.ag = shl nsw i32 %i.ae, 6                    ; 2 uses
  %i.ah = sub nsw i32 %i.y, %i.ag                 ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 64
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i32 %i.ah, 2                ; 3 uses
  %.not = icmp eq i32 %i.y, %i.ag
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi4ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %._crit_edge
  %i.ak = tail call i32 @llvm.usub.sat.i32(i32 %i.aj, i32 4) ; 2 uses
  %4 = lshr exact i32 %i.ak, 2
  %narrow = add nuw nsw i32 %4, 1
  %5 = zext nneg i32 %narrow to i64               ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.ak, 60
  br i1 %min.iters.check, label %.lr.ph.i28.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %6 = tail call i32 @llvm.usub.sat.i32(i32 %i.aj, i32 4)
  %7 = or disjoint i32 %6, 3
  %8 = zext nneg i32 %7 to i64                    ; 2 uses
  %i.al = shl nuw nsw i64 %8, 1
  %i.am = and i64 %i.al, 4294967288
  %i.an = getelementptr i8, ptr %.026.lcssa, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.an, i64 8
  %i.ao = lshr i64 %8, 3
  %i.ap = getelementptr i8, ptr %.025.lcssa, i64 %i.ao
  %scevgep38 = getelementptr i8, ptr %i.ap, i64 1
  %bound0 = icmp ult ptr %.026.lcssa, %scevgep38
  %bound1 = icmp ult ptr %.025.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, 1073741820                 ; 4 uses
  %i.aq = shl nuw nsw i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %.026.lcssa, i64 %i.aq
  %i.as = trunc nuw nsw i64 %n.vec to i32
  %i.at = shl nuw i32 %i.as, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 4, i32 8, i32 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.026.lcssa, i64 %i.au
  %i.av = lshr exact i64 %index, 1
  %i.aw = lshr exact i64 %index, 1
  %i.ax = lshr exact i64 %index, 1
  %i.ay = lshr exact i64 %index, 1
  %i.az = and i64 %i.av, 2147483646
  %i.ba = and i64 %i.aw, 2147483646
  %i.bb = and i64 %i.ax, 2147483646
  %i.bc = and i64 %i.ay, 2147483646
  %i.bd = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bd, align 1, !alias.scope !302
  %i.bk = load i8, ptr %i.be, align 1, !alias.scope !302
  %i.bl = load i8, ptr %i.bg, align 1, !alias.scope !302
  %i.bm = load i8, ptr %i.bi, align 1, !alias.scope !302
  %i.bn = insertelement <4 x i8> poison, i8 %i.bj, i64 0
  %i.bo = insertelement <4 x i8> %i.bn, i8 %i.bk, i64 1
  %i.bp = insertelement <4 x i8> %i.bo, i8 %i.bl, i64 2
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 3
  %i.br = zext <4 x i8> %i.bq to <4 x i32>
  %i.bs = and <4 x i32> %vec.ind, splat (i32 4)
  %i.bt = lshr <4 x i32> %i.br, %i.bs
  %i.bu = and <4 x i32> %i.bt, splat (i32 15)
  %i.bv = zext nneg <4 x i32> %i.bu to <4 x i64>
  store <4 x i64> %i.bv, ptr %next.gep, align 8, !tbaa !13, !alias.scope !303, !noalias !302
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 16)
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_exactILi4ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader40

.lr.ph.i28.preheader40:                           ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.024.i.ph = phi ptr [ %.026.lcssa, %vector.memcheck ], [ %.026.lcssa, %.lr.ph.i28.preheader ], [ %i.ar, %middle.block ]
  %.02223.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader40, %.lr.ph.i28
  %.024.i = phi ptr [ %i.ch, %.lr.ph.i28 ], [ %.024.i.ph, %.lr.ph.i28.preheader40 ] ; 2 uses
  %.02223.i = phi i32 [ %i.by, %.lr.ph.i28 ], [ %.02223.i.ph, %.lr.ph.i28.preheader40 ] ; 3 uses
  %i.bx = lshr i32 %.02223.i, 3
  %i.by = add nuw nsw i32 %.02223.i, 4            ; 2 uses
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = and i32 %.02223.i, 4
  %i.ce = lshr i32 %i.cc, %i.cd
  %i.cf = and i32 %i.ce, 15
  %i.cg = zext nneg i32 %i.cf to i64
  store i64 %i.cg, ptr %.024.i, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.ci = icmp samesign ult i32 %i.by, %i.aj
  br i1 %i.ci, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi4ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !300

_ZN5arrow8internal12unpack_exactILi4ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %middle.block, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.gf, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.gd, %.lr.ph ], [ %i.ab, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ] ; 8 uses
  %.02630 = phi ptr [ %i.ge, %.lr.ph ], [ %i.ad, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ] ; 17 uses
  %i.cj = load i64, ptr %.02531, align 1
  %i.ck = insertelement <4 x i64> poison, i64 %i.cj, i64 0
  %i.cl = shufflevector <4 x i64> %i.ck, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cm = lshr <4 x i64> %i.cl, <i64 0, i64 4, i64 8, i64 12>
  %i.cn = and <4 x i64> %i.cm, splat (i64 15)
  store <4 x i64> %i.cn, ptr %.02630, align 1, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  %i.cp = load i64, ptr %.02531, align 1
  %i.cq = insertelement <4 x i64> poison, i64 %i.cp, i64 0
  %i.cr = shufflevector <4 x i64> %i.cq, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cs = lshr <4 x i64> %i.cr, <i64 16, i64 20, i64 24, i64 28>
  %i.ct = and <4 x i64> %i.cs, splat (i64 15)
  store <4 x i64> %i.ct, ptr %i.co, align 1, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.cv = load i64, ptr %.02531, align 1
  %i.cw = insertelement <4 x i64> poison, i64 %i.cv, i64 0
  %i.cx = shufflevector <4 x i64> %i.cw, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cy = lshr <4 x i64> %i.cx, <i64 32, i64 36, i64 40, i64 44>
  %i.cz = and <4 x i64> %i.cy, splat (i64 15)
  store <4 x i64> %i.cz, ptr %i.cu, align 1, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %.02630, i64 96
  %i.db = load i64, ptr %.02531, align 1
  %i.dc = insertelement <4 x i64> poison, i64 %i.db, i64 0
  %i.dd = shufflevector <4 x i64> %i.dc, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.de = lshr <4 x i64> %i.dd, <i64 48, i64 52, i64 56, i64 60>
  %i.df = and <4 x i64> %i.de, splat (i64 15)
  store <4 x i64> %i.df, ptr %i.da, align 1, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.dh = getelementptr inbounds nuw i8, ptr %.02531, i64 8 ; 4 uses
  %i.di = load i64, ptr %i.dh, align 1
  %i.dj = insertelement <4 x i64> poison, i64 %i.di, i64 0
  %i.dk = shufflevector <4 x i64> %i.dj, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dl = lshr <4 x i64> %i.dk, <i64 0, i64 4, i64 8, i64 12>
  %i.dm = and <4 x i64> %i.dl, splat (i64 15)
  store <4 x i64> %i.dm, ptr %i.dg, align 1, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %.02630, i64 160
  %i.do = load i64, ptr %i.dh, align 1
  %i.dp = insertelement <4 x i64> poison, i64 %i.do, i64 0
  %i.dq = shufflevector <4 x i64> %i.dp, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dr = lshr <4 x i64> %i.dq, <i64 16, i64 20, i64 24, i64 28>
  %i.ds = and <4 x i64> %i.dr, splat (i64 15)
  store <4 x i64> %i.ds, ptr %i.dn, align 1, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.du = load i64, ptr %i.dh, align 1
  %i.dv = insertelement <4 x i64> poison, i64 %i.du, i64 0
  %i.dw = shufflevector <4 x i64> %i.dv, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dx = lshr <4 x i64> %i.dw, <i64 32, i64 36, i64 40, i64 44>
  %i.dy = and <4 x i64> %i.dx, splat (i64 15)
  store <4 x i64> %i.dy, ptr %i.dt, align 1, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %.02630, i64 224
  %i.ea = load i64, ptr %i.dh, align 1
  %i.eb = insertelement <4 x i64> poison, i64 %i.ea, i64 0
  %i.ec = shufflevector <4 x i64> %i.eb, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ed = lshr <4 x i64> %i.ec, <i64 48, i64 52, i64 56, i64 60>
  %i.ee = and <4 x i64> %i.ed, splat (i64 15)
  store <4 x i64> %i.ee, ptr %i.dz, align 1, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.eg = getelementptr inbounds nuw i8, ptr %.02531, i64 16 ; 4 uses
  %i.eh = load i64, ptr %i.eg, align 1
  %i.ei = insertelement <4 x i64> poison, i64 %i.eh, i64 0
  %i.ej = shufflevector <4 x i64> %i.ei, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ek = lshr <4 x i64> %i.ej, <i64 0, i64 4, i64 8, i64 12>
  %i.el = and <4 x i64> %i.ek, splat (i64 15)
  store <4 x i64> %i.el, ptr %i.ef, align 1, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %.02630, i64 288
  %i.en = load i64, ptr %i.eg, align 1
  %i.eo = insertelement <4 x i64> poison, i64 %i.en, i64 0
  %i.ep = shufflevector <4 x i64> %i.eo, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.eq = lshr <4 x i64> %i.ep, <i64 16, i64 20, i64 24, i64 28>
  %i.er = and <4 x i64> %i.eq, splat (i64 15)
  store <4 x i64> %i.er, ptr %i.em, align 1, !tbaa !11
  %i.es = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.et = load i64, ptr %i.eg, align 1
  %i.eu = insertelement <4 x i64> poison, i64 %i.et, i64 0
  %i.ev = shufflevector <4 x i64> %i.eu, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ew = lshr <4 x i64> %i.ev, <i64 32, i64 36, i64 40, i64 44>
  %i.ex = and <4 x i64> %i.ew, splat (i64 15)
  store <4 x i64> %i.ex, ptr %i.es, align 1, !tbaa !11
  %i.ey = getelementptr inbounds nuw i8, ptr %.02630, i64 352
  %i.ez = load i64, ptr %i.eg, align 1
  %i.fa = insertelement <4 x i64> poison, i64 %i.ez, i64 0
  %i.fb = shufflevector <4 x i64> %i.fa, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fc = lshr <4 x i64> %i.fb, <i64 48, i64 52, i64 56, i64 60>
  %i.fd = and <4 x i64> %i.fc, splat (i64 15)
  store <4 x i64> %i.fd, ptr %i.ey, align 1, !tbaa !11
  %i.fe = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.ff = getelementptr inbounds nuw i8, ptr %.02531, i64 24 ; 4 uses
  %i.fg = load i64, ptr %i.ff, align 1
  %i.fh = insertelement <4 x i64> poison, i64 %i.fg, i64 0
  %i.fi = shufflevector <4 x i64> %i.fh, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fj = lshr <4 x i64> %i.fi, <i64 0, i64 4, i64 8, i64 12>
  %i.fk = and <4 x i64> %i.fj, splat (i64 15)
  store <4 x i64> %i.fk, ptr %i.fe, align 1, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %.02630, i64 416
  %i.fm = load i64, ptr %i.ff, align 1
  %i.fn = insertelement <4 x i64> poison, i64 %i.fm, i64 0
  %i.fo = shufflevector <4 x i64> %i.fn, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fp = lshr <4 x i64> %i.fo, <i64 16, i64 20, i64 24, i64 28>
  %i.fq = and <4 x i64> %i.fp, splat (i64 15)
  store <4 x i64> %i.fq, ptr %i.fl, align 1, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %.02630, i64 448
  %i.fs = load i64, ptr %i.ff, align 1
  %i.ft = insertelement <4 x i64> poison, i64 %i.fs, i64 0
  %i.fu = shufflevector <4 x i64> %i.ft, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fv = lshr <4 x i64> %i.fu, <i64 32, i64 36, i64 40, i64 44>
  %i.fw = and <4 x i64> %i.fv, splat (i64 15)
  store <4 x i64> %i.fw, ptr %i.fr, align 1, !tbaa !11
  %i.fx = getelementptr inbounds nuw i8, ptr %.02630, i64 480
  %i.fy = load i64, ptr %i.ff, align 1
  %i.fz = insertelement <4 x i64> poison, i64 %i.fy, i64 0
  %i.ga = shufflevector <4 x i64> %i.fz, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gb = lshr <4 x i64> %i.ga, <i64 48, i64 52, i64 56, i64 60>
  %i.gc = and <4 x i64> %i.gb, splat (i64 15)
  store <4 x i64> %i.gc, ptr %i.fx, align 1, !tbaa !11
  %i.gd = getelementptr inbounds nuw i8, ptr %.02531, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.02630, i64 512 ; 2 uses
  %i.gf = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gf, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !301
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi5ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul nsw i32 %2, 5
  %i.d = add nsw i32 %i.c, %3
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.t, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.h, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.f = srem i32 %.02325.i, 8                    ; 2 uses
  %i.g = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = add nsw i32 %.02325.i, 5                 ; 3 uses
  %i.i = add nsw i32 %.02325.i, 4
  %i.j = sdiv i32 %i.i, 8
  %i.k = sub nsw i32 %i.j, %i.g                   ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = icmp slt i32 %i.k, 2
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = sext i32 %i.l to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.o, i64 %i.p, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.b, align 8, !tbaa !13
  %i.q = zext nneg i32 %i.f to i64
  %i.r = lshr i64 %.0..0..0..0..0..0..i, %i.q
  %i.s = and i64 %i.r, 31
  store i64 %i.s, ptr %.026.i, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = icmp slt i32 %i.h, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !304

_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.h, %bb.b ]
  %i.v = sub nsw i32 %.023.lcssa.i, %3
  %i.w = sdiv i32 %i.v, 5                         ; 3 uses
  %i.x = mul nsw i32 %i.w, 5
end_hunk_1
