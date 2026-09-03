Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_dr_mp3dec_decode_frame:bb.a
bb.be:                                            ; preds = %.loopexit.1.i.i.i
  %i.ug = and i32 %.076.i.i, 2
  %.not45.2.i.i.i = icmp eq i32 %i.ug, 0
  br i1 %.not45.2.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.uh = zext i8 %i.uf to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ud, ptr nonnull align 1 %i.uc, i64 %i.uh, i1 false)
  br label %.loopexit.2.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.ui = zext i8 %.sroa.8.0.i.i to i32           ; 3 uses
  %.not46.2.i.i.i = icmp eq i8 %.sroa.8.0.i.i, 0
  br i1 %.not46.2.i.i.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %notmask.2.i.i.i = shl nsw i32 -1, %i.ui
  %i.uj = xor i32 %notmask.2.i.i.i, -1
  %.mask.i.i.i158 = and i32 %.076.i.i, 536870912
  %.inv.2.i.i.i = icmp eq i32 %.mask.i.i.i158, 0
  %i.uk = select i1 %.inv.2.i.i.i, i32 -1, i32 %i.uj
  %wide.trip.count.2.i.i.i = zext i8 %i.uf to i64 ; 2 uses
  %i.ul = load i32, ptr %i.nj, align 4, !tbaa !778
  br label %bb.bi

bb.bi:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.2.i.i.i, %bb.bh
  %i.um = phi i32 [ %.promoted147.i, %bb.bh ], [ %i.un, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 3 uses
  %indvars.iv.2.i.i.i = phi i64 [ 0, %bb.bh ], [ %indvars.iv.next.2.i.i.i, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 3 uses
  %i.un = add nsw i32 %i.um, %i.ui                ; 4 uses
  store i32 %i.un, ptr %i.nh, align 8, !tbaa !777
  %i.uo = icmp sgt i32 %i.un, %i.ul
  br i1 %i.uo, label %ma_dr_mp3_bs_get_bits.exit.2.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.up = ashr i32 %i.um, 3
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds i8, ptr %i.om, i64 %i.uq ; 2 uses
  %i.us = and i32 %i.um, 7                        ; 2 uses
  %i.ut = add nuw nsw i32 %i.us, %i.ui            ; 3 uses
  %i.uu = load i8, ptr %i.ur, align 1, !tbaa !119
  %i.uv = zext i8 %i.uu to i32
  %i.uw = lshr i32 255, %i.us
  %i.ux = and i32 %i.uw, %i.uv                    ; 2 uses
  %i.uy = icmp samesign ugt i32 %i.ut, 8
  br i1 %i.uy, label %.lr.ph.i.2.i.i.i, label %._crit_edge.i.2.i.i.i

.lr.ph.i.2.i.i.i:                                 ; preds = %bb.bj, %.lr.ph.i.2.i.i.i
  %.pn26.i.2.i.i.i = phi ptr [ %.0.i.2.i.i.i, %.lr.ph.i.2.i.i.i ], [ %i.ur, %bb.bj ]
  %.01825.i.2.i.i.i = phi i32 [ %i.uz, %.lr.ph.i.2.i.i.i ], [ %i.ut, %bb.bj ] ; 2 uses
  %.01924.i.2.i.i.i = phi i32 [ %i.vb, %.lr.ph.i.2.i.i.i ], [ 0, %bb.bj ]
  %.02023.i.2.i.i.i = phi i32 [ %i.vd, %.lr.ph.i.2.i.i.i ], [ %i.ux, %bb.bj ]
  %.0.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.2.i.i.i, i64 1 ; 2 uses
  %i.uz = add nsw i32 %.01825.i.2.i.i.i, -8       ; 3 uses
  %i.va = shl i32 %.02023.i.2.i.i.i, %i.uz
  %i.vb = or i32 %i.va, %.01924.i.2.i.i.i         ; 2 uses
  %i.vc = load i8, ptr %.0.i.2.i.i.i, align 1, !tbaa !119
  %i.vd = zext i8 %i.vc to i32                    ; 2 uses
  %i.ve = icmp samesign ugt i32 %.01825.i.2.i.i.i, 16
  br i1 %i.ve, label %.lr.ph.i.2.i.i.i, label %._crit_edge.i.2.i.i.i, !llvm.loop !2977

._crit_edge.i.2.i.i.i:                            ; preds = %.lr.ph.i.2.i.i.i, %bb.bj
  %.020.lcssa.i.2.i.i.i = phi i32 [ %i.ux, %bb.bj ], [ %i.vd, %.lr.ph.i.2.i.i.i ]
  %.019.lcssa.i.2.i.i.i = phi i32 [ 0, %bb.bj ], [ %i.vb, %.lr.ph.i.2.i.i.i ]
  %.018.lcssa.i.2.i.i.i = phi i32 [ %i.ut, %bb.bj ], [ %i.uz, %.lr.ph.i.2.i.i.i ]
  %i.vf = sub nuw nsw i32 8, %.018.lcssa.i.2.i.i.i
  %i.vg = lshr i32 %.020.lcssa.i.2.i.i.i, %i.vf
  %i.vh = or i32 %i.vg, %.019.lcssa.i.2.i.i.i
  br label %ma_dr_mp3_bs_get_bits.exit.2.i.i.i

ma_dr_mp3_bs_get_bits.exit.2.i.i.i:               ; preds = %._crit_edge.i.2.i.i.i, %bb.bi
  %.021.i.2.i.i.i = phi i32 [ %i.vh, %._crit_edge.i.2.i.i.i ], [ 0, %bb.bi ] ; 2 uses
  %i.vi = icmp eq i32 %.021.i.2.i.i.i, %i.uk
  %i.vj = trunc i32 %.021.i.2.i.i.i to i8         ; 2 uses
  %i.vk = select i1 %i.vi, i8 -1, i8 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uc, i64 %indvars.iv.2.i.i.i
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !119
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ud, i64 %indvars.iv.2.i.i.i
  store i8 %i.vj, ptr %i.vm, align 1, !tbaa !119
  %indvars.iv.next.2.i.i.i = add nuw nsw i64 %indvars.iv.2.i.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i.i = icmp eq i64 %indvars.iv.next.2.i.i.i, %wide.trip.count.2.i.i.i
  br i1 %exitcond.2.not.i.i.i, label %.loopexit.2.i.i.i, label %bb.bi, !llvm.loop !2978

bb.bk:                                            ; preds = %bb.bg
  %i.vn = zext i8 %i.uf to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ud, i8 0, i64 %i.vn, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.uc, i8 0, i64 %i.vn, i1 false)
  br label %.loopexit.2.i.i.i

.loopexit.2.i.i.i:                                ; preds = %ma_dr_mp3_bs_get_bits.exit.2.i.i.i, %bb.bk, %bb.bf
  %.promoted148.i = phi i32 [ %.promoted147.i, %bb.bk ], [ %.promoted147.i, %bb.bf ], [ %i.un, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 4 uses
  %.pre-phi64.i.i.i = phi i64 [ %i.vn, %bb.bk ], [ %i.uh, %bb.bf ], [ %wide.trip.count.2.i.i.i, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uc, i64 %.pre-phi64.i.i.i ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.pre-phi64.i.i.i ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.075.i.i, i64 3
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !119 ; 4 uses
  %.not.3.i.i.i = icmp eq i8 %i.vr, 0
  br i1 %.not.3.i.i.i, label %ma_dr_mp3_L3_read_scalefactors.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %.loopexit.2.i.i.i
  %i.vs = and i32 %.076.i.i, 1
  %.not45.3.i.i.i = icmp eq i32 %i.vs, 0
  br i1 %.not45.3.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vt = zext i8 %i.vr to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vp, ptr nonnull align 1 %i.vo, i64 %i.vt, i1 false)
  br label %.loopexit.3.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.vu = zext i8 %.sroa.11.0.i.i to i32          ; 3 uses
  %.not46.3.i.i.i = icmp eq i8 %.sroa.11.0.i.i, 0
  br i1 %.not46.3.i.i.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %notmask.3.i.i.i = shl nsw i32 -1, %i.vu
  %i.vv = xor i32 %notmask.3.i.i.i, -1
  %.mask77.i.i.i = and i32 %.076.i.i, 268435456
  %.inv.3.i.i.i = icmp eq i32 %.mask77.i.i.i, 0
  %i.vw = select i1 %.inv.3.i.i.i, i32 -1, i32 %i.vv
  %wide.trip.count.3.i.i.i = zext i8 %i.vr to i64 ; 2 uses
  %i.vx = load i32, ptr %i.nj, align 4, !tbaa !778
  br label %bb.bp

bb.bp:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.3.i.i.i, %bb.bo
  %i.vy = phi i32 [ %.promoted148.i, %bb.bo ], [ %i.vz, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ] ; 3 uses
  %indvars.iv.3.i.i.i = phi i64 [ 0, %bb.bo ], [ %indvars.iv.next.3.i.i.i, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ] ; 3 uses
  %i.vz = add nsw i32 %i.vy, %i.vu                ; 4 uses
  store i32 %i.vz, ptr %i.nh, align 8, !tbaa !777
  %i.wa = icmp sgt i32 %i.vz, %i.vx
  br i1 %i.wa, label %ma_dr_mp3_bs_get_bits.exit.3.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wb = ashr i32 %i.vy, 3
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.om, i64 %i.wc ; 2 uses
  %i.we = and i32 %i.vy, 7                        ; 2 uses
  %i.wf = add nuw nsw i32 %i.we, %i.vu            ; 3 uses
  %i.wg = load i8, ptr %i.wd, align 1, !tbaa !119
  %i.wh = zext i8 %i.wg to i32
  %i.wi = lshr i32 255, %i.we
  %i.wj = and i32 %i.wi, %i.wh                    ; 2 uses
  %i.wk = icmp samesign ugt i32 %i.wf, 8
  br i1 %i.wk, label %.lr.ph.i.3.i.i.i, label %._crit_edge.i.3.i.i.i

.lr.ph.i.3.i.i.i:                                 ; preds = %bb.bq, %.lr.ph.i.3.i.i.i
  %.pn26.i.3.i.i.i = phi ptr [ %.0.i.3.i.i.i, %.lr.ph.i.3.i.i.i ], [ %i.wd, %bb.bq ]
  %.01825.i.3.i.i.i = phi i32 [ %i.wl, %.lr.ph.i.3.i.i.i ], [ %i.wf, %bb.bq ] ; 2 uses
  %.01924.i.3.i.i.i = phi i32 [ %i.wn, %.lr.ph.i.3.i.i.i ], [ 0, %bb.bq ]
  %.02023.i.3.i.i.i = phi i32 [ %i.wp, %.lr.ph.i.3.i.i.i ], [ %i.wj, %bb.bq ]
  %.0.i.3.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.3.i.i.i, i64 1 ; 2 uses
  %i.wl = add nsw i32 %.01825.i.3.i.i.i, -8       ; 3 uses
  %i.wm = shl i32 %.02023.i.3.i.i.i, %i.wl
  %i.wn = or i32 %i.wm, %.01924.i.3.i.i.i         ; 2 uses
  %i.wo = load i8, ptr %.0.i.3.i.i.i, align 1, !tbaa !119
  %i.wp = zext i8 %i.wo to i32                    ; 2 uses
  %i.wq = icmp samesign ugt i32 %.01825.i.3.i.i.i, 16
  br i1 %i.wq, label %.lr.ph.i.3.i.i.i, label %._crit_edge.i.3.i.i.i, !llvm.loop !2977

._crit_edge.i.3.i.i.i:                            ; preds = %.lr.ph.i.3.i.i.i, %bb.bq
  %.020.lcssa.i.3.i.i.i = phi i32 [ %i.wj, %bb.bq ], [ %i.wp, %.lr.ph.i.3.i.i.i ]
  %.019.lcssa.i.3.i.i.i = phi i32 [ 0, %bb.bq ], [ %i.wn, %.lr.ph.i.3.i.i.i ]
  %.018.lcssa.i.3.i.i.i = phi i32 [ %i.wf, %bb.bq ], [ %i.wl, %.lr.ph.i.3.i.i.i ]
  %i.wr = sub nuw nsw i32 8, %.018.lcssa.i.3.i.i.i
  %i.ws = lshr i32 %.020.lcssa.i.3.i.i.i, %i.wr
  %i.wt = or i32 %i.ws, %.019.lcssa.i.3.i.i.i
  br label %ma_dr_mp3_bs_get_bits.exit.3.i.i.i

ma_dr_mp3_bs_get_bits.exit.3.i.i.i:               ; preds = %._crit_edge.i.3.i.i.i, %bb.bp
  %.021.i.3.i.i.i = phi i32 [ %i.wt, %._crit_edge.i.3.i.i.i ], [ 0, %bb.bp ] ; 2 uses
  %i.wu = icmp eq i32 %.021.i.3.i.i.i, %i.vw
  %i.wv = trunc i32 %.021.i.3.i.i.i to i8         ; 2 uses
  %i.ww = select i1 %i.wu, i8 -1, i8 %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vo, i64 %indvars.iv.3.i.i.i
  store i8 %i.ww, ptr %i.wx, align 1, !tbaa !119
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vp, i64 %indvars.iv.3.i.i.i
  store i8 %i.wv, ptr %i.wy, align 1, !tbaa !119
  %indvars.iv.next.3.i.i.i = add nuw nsw i64 %indvars.iv.3.i.i.i, 1 ; 2 uses
  %exitcond.3.not.i.i.i = icmp eq i64 %indvars.iv.next.3.i.i.i, %wide.trip.count.3.i.i.i
  br i1 %exitcond.3.not.i.i.i, label %.loopexit.3.i.i.i, label %bb.bp, !llvm.loop !2978

bb.br:                                            ; preds = %bb.bn
  %i.wz = zext i8 %i.vr to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vp, i8 0, i64 %i.wz, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vo, i8 0, i64 %i.wz, i1 false)
  br label %.loopexit.3.i.i.i

.loopexit.3.i.i.i:                                ; preds = %ma_dr_mp3_bs_get_bits.exit.3.i.i.i, %bb.br, %bb.bm
  %i.xa = phi i32 [ %.promoted148.i, %bb.br ], [ %.promoted148.i, %bb.bm ], [ %i.vz, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ]
  %.pre-phi66.i.i.i = phi i64 [ %i.wz, %bb.br ], [ %i.vt, %bb.bm ], [ %wide.trip.count.3.i.i.i, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ]
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.pre-phi66.i.i.i
  br label %ma_dr_mp3_L3_read_scalefactors.exit.i.i

ma_dr_mp3_L3_read_scalefactors.exit.i.i:          ; preds = %.loopexit.3.i.i.i, %.loopexit.2.i.i.i, %.loopexit.1.i.i.i, %.loopexit.i.i.i, %bb.ap
  %i.xc = phi i32 [ %i.xa, %.loopexit.3.i.i.i ], [ %.promoted.i, %bb.ap ], [ %.promoted146.i, %.loopexit.i.i.i ], [ %.promoted148.i, %.loopexit.2.i.i.i ], [ %.promoted147.i, %.loopexit.1.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi ptr [ %i.xb, %.loopexit.3.i.i.i ], [ %i.b, %bb.ap ], [ %i.sr, %.loopexit.i.i.i ], [ %i.vp, %.loopexit.2.i.i.i ], [ %i.ud, %.loopexit.1.i.i.i ] ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 2
  store i8 0, ptr %i.xd, align 1, !tbaa !119
  %i.xe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1
  store i8 0, ptr %i.xe, align 1, !tbaa !119
  store i8 0, ptr %.0.lcssa.i.i.i, align 1, !tbaa !119
  %i.xf = load i8, ptr %i.ou, align 2, !tbaa !1122 ; 4 uses
  %.not79.i.i = icmp eq i8 %i.xf, 0
  br i1 %.not79.i.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %ma_dr_mp3_L3_read_scalefactors.exit.i.i
  %i.xg = sub nsw i32 2, %i.pf                    ; 3 uses
  %i.xh = load i8, ptr %i.oy, align 1, !tbaa !1123
  %i.xi = getelementptr inbounds nuw i8, ptr %i.oo, i64 25
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !119
  %i.xk = zext i8 %i.xj to i32
  %i.xl = shl nuw nsw i32 %i.xk, %i.xg
  %i.xm = trunc i32 %i.xl to i8                   ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.oo, i64 26
  %i.xo = load i8, ptr %i.xn, align 2, !tbaa !119
  %i.xp = zext i8 %i.xo to i32
  %i.xq = shl nuw nsw i32 %i.xp, %i.xg
  %i.xr = trunc i32 %i.xq to i8                   ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.oo, i64 27
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !119
  %i.xu = zext i8 %i.xt to i32
  %i.xv = shl nuw nsw i32 %i.xu, %i.xg
  %i.xw = trunc i32 %i.xv to i8                   ; 3 uses
  %i.xx = zext i8 %i.xh to i64
  %i.xy = zext i8 %i.xf to i64
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xx ; 3 uses
  %7 = add nsw i64 %i.xy, -1
  %8 = udiv i64 %7, 3                             ; 2 uses
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %10 = icmp ult i8 %i.xf, 4
  br i1 %10, label %.epil.preheader755, label %.new

.new:                                             ; preds = %bb.bs
  %unroll_iter759 = and i64 %9, 9223372036854775806
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.new
  %indvars.iv129.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next130.i.i.1, %bb.bt ] ; 3 uses
  %niter760 = phi i64 [ 0, %.new ], [ %niter760.next.1, %bb.bt ]
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv129.i.i ; 4 uses
  %11 = load i8, ptr %gep.i.i, align 1, !tbaa !119
  %12 = add i8 %11, %i.xm
  store i8 %12, ptr %gep.i.i, align 1, !tbaa !119
  %13 = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 1 ; 2 uses
  %14 = load i8, ptr %13, align 1, !tbaa !119
  %15 = add i8 %14, %i.xr
  store i8 %15, ptr %13, align 1, !tbaa !119
  %16 = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 2 ; 2 uses
  %17 = load i8, ptr %16, align 1, !tbaa !119
  %18 = add i8 %17, %i.xw
  store i8 %18, ptr %16, align 1, !tbaa !119
  %19 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv129.i.i ; 3 uses
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %19, i64 3 ; 2 uses
  %i.xz = load i8, ptr %gep.i.i.1, align 1, !tbaa !119
  %i.ya = add i8 %i.xz, %i.xm
  store i8 %i.ya, ptr %gep.i.i.1, align 1, !tbaa !119
  %i.yb = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !119
  %i.yd = add i8 %i.yc, %i.xr
  store i8 %i.yd, ptr %i.yb, align 1, !tbaa !119
  %i.ye = getelementptr inbounds nuw i8, ptr %19, i64 5 ; 2 uses
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !119
  %i.yg = add i8 %i.yf, %i.xw
  store i8 %i.yg, ptr %i.ye, align 1, !tbaa !119
  %indvars.iv.next130.i.i.1 = add nuw nsw i64 %indvars.iv129.i.i, 6 ; 2 uses
  %niter760.next.1 = add i64 %niter760, 2         ; 2 uses
  %niter760.ncmp.1.not = icmp eq i64 %niter760.next.1, %unroll_iter759
  br i1 %niter760.ncmp.1.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %bb.bt, !llvm.loop !2979

bb.bu:                                            ; preds = %ma_dr_mp3_L3_read_scalefactors.exit.i.i
  %i.yh = getelementptr inbounds nuw i8, ptr %i.oo, i64 28
  %i.yi = load i8, ptr %i.yh, align 4, !tbaa !1127
  %.not80.i.i = icmp eq i8 %i.yi, 0
  br i1 %.not80.i.i, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.bu
  %i.yj = load <8 x i8>, ptr %i.nt, align 1, !tbaa !119
  %i.yk = add <8 x i8> %i.yj, <i8 1, i8 1, i8 1, i8 1, i8 2, i8 2, i8 3, i8 3>
  store <8 x i8> %i.yk, ptr %i.nt, align 1, !tbaa !119
  %i.yl = load i8, ptr %i.nu, align 1, !tbaa !119
  %i.ym = add i8 %i.yl, 3
  store i8 %i.ym, ptr %i.nu, align 1, !tbaa !119
  %i.yn = load i8, ptr %i.nv, align 4, !tbaa !119
  %i.yo = add i8 %i.yn, 2
  store i8 %i.yo, ptr %i.nv, align 4, !tbaa !119
  br label %.loopexit.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %bb.bt
  %20 = and i64 %8, 1
  %lcmp.mod757.not.not = icmp eq i64 %20, 0
  br i1 %lcmp.mod757.not.not, label %.epil.preheader755, label %.loopexit.i.i

.epil.preheader755:                               ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %bb.bs
  %indvars.iv129.i.i.epil.init = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next130.i.i.1, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod758 = trunc i64 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod758)
  %gep.i.i.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv129.i.i.epil.init ; 4 uses
  %21 = load i8, ptr %gep.i.i.epil, align 1, !tbaa !119
  %22 = add i8 %21, %i.xm
  store i8 %22, ptr %gep.i.i.epil, align 1, !tbaa !119
  %23 = getelementptr inbounds nuw i8, ptr %gep.i.i.epil, i64 1 ; 2 uses
  %24 = load i8, ptr %23, align 1, !tbaa !119
  %25 = add i8 %24, %i.xr
  store i8 %25, ptr %23, align 1, !tbaa !119
  %26 = getelementptr inbounds nuw i8, ptr %gep.i.i.epil, i64 2 ; 2 uses
  %27 = load i8, ptr %26, align 1, !tbaa !119
  %28 = add i8 %27, %i.xw
  store i8 %28, ptr %26, align 1, !tbaa !119
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.epil.preheader755, %.loopexit.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i, %bb.bu
  %i.yp = getelementptr inbounds nuw i8, ptr %i.oo, i64 14
  %i.yq = load i8, ptr %i.yp, align 2, !tbaa !1128
  %i.yr = zext i8 %i.yq to i32
  %i.ys = load i8, ptr %i.np, align 1, !tbaa !119
  %i.yt = and i8 %i.ys, -32
  %i.yu = icmp eq i8 %i.yt, 96
  %.neg.neg109.i.i = select i1 %i.yu, i32 2, i32 0
  %reass.sub = sub nsw i32 %.neg.neg109.i.i, %i.yr
  %i.yv = add nsw i32 %reass.sub, 258
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.loopexit.i.i
  %.07.i.i.i = phi float [ 2.048000e+03, %.loopexit.i.i ], [ %i.zf, %bb.bv ]
  %.0.i.i.i = phi i32 [ %i.yv, %.loopexit.i.i ], [ %i.zg, %bb.bv ] ; 2 uses
  %i.yw = tail call i32 @llvm.umin.i32(i32 %.0.i.i.i, i32 120) ; 3 uses
  %i.yx = and i32 %i.yw, 3
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_L3_ldexp_q2.g_expfrac, i64 %i.yy
  %i.za = load float, ptr %i.yz, align 4, !tbaa !349
  %i.zb = lshr i32 %i.yw, 2
  %i.zc = lshr i32 1073741824, %i.zb
  %i.zd = uitofp nneg i32 %i.zc to float
  %i.ze = fmul float %i.za, %i.zd
  %i.zf = fmul float %.07.i.i.i, %i.ze            ; 2 uses
  %i.zg = sub nuw nsw i32 %.0.i.i.i, %i.yw        ; 2 uses
  %.not169.i.i = icmp eq i32 %i.zg, 0
  br i1 %.not169.i.i, label %ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i, label %bb.bv, !llvm.loop !2980

ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i:         ; preds = %bb.bv
  %i.zh = load i8, ptr %i.oy, align 1, !tbaa !1123
  %i.zi = zext i8 %i.zh to i32
  %i.zj = zext i8 %i.xf to i32
  %i.zk = add nuw nsw i32 %i.zi, %i.zj            ; 2 uses
  %.not110.i.i = icmp eq i32 %i.zk, 0
  br i1 %.not110.i.i, label %ma_dr_mp3_L3_decode_scalefactors.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.zk to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %ma_dr_mp3_L3_ldexp_q2.exit83.i.i, %.lr.ph.preheader.i.i
  %indvars.iv135.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next136.i.i, %ma_dr_mp3_L3_ldexp_q2.exit83.i.i ] ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv135.i.i
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !119
  %i.zn = zext i8 %i.zm to i32
  %i.zo = shl i32 %i.zn, %i.pg
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i.i
  %.07.i81.i.i = phi float [ %i.zf, %.lr.ph.i.i ], [ %i.zy, %bb.bw ]
  %.0.i82.i.i = phi i32 [ %i.zo, %.lr.ph.i.i ], [ %i.zz, %bb.bw ] ; 2 uses
  %i.zp = tail call i32 @llvm.smin.i32(i32 %.0.i82.i.i, i32 120) ; 3 uses
  %i.zq = and i32 %i.zp, 3
  %i.zr = zext nneg i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_L3_ldexp_q2.g_expfrac, i64 %i.zr
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !349
  %i.zu = ashr i32 %i.zp, 2
  %i.zv = lshr i32 1073741824, %i.zu
  %i.zw = uitofp nneg i32 %i.zv to float
  %i.zx = fmul float %i.zt, %i.zw
  %i.zy = fmul float %.07.i81.i.i, %i.zx          ; 2 uses
  %i.zz = sub nsw i32 %.0.i82.i.i, %i.zp          ; 2 uses
  %i.aaa = icmp sgt i32 %i.zz, 0
  br i1 %i.aaa, label %bb.bw, label %ma_dr_mp3_L3_ldexp_q2.exit83.i.i, !llvm.loop !2980

ma_dr_mp3_L3_ldexp_q2.exit83.i.i:                 ; preds = %bb.bw
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv135.i.i
  store float %i.zy, ptr %i.aab, align 4, !tbaa !349
  %indvars.iv.next136.i.i = add nuw nsw i64 %indvars.iv135.i.i, 1 ; 2 uses
  %exitcond.not.i.i154 = icmp eq i64 %indvars.iv.next136.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i154, label %ma_dr_mp3_L3_decode_scalefactors.exit.i, label %.lr.ph.i.i, !llvm.loop !2981

ma_dr_mp3_L3_decode_scalefactors.exit.i:          ; preds = %ma_dr_mp3_L3_ldexp_q2.exit83.i.i, %ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.aac = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv.i151 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.oo, i64 10
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !1129 ; 2 uses
  %i.aaf = load ptr, ptr %i.oo, align 8, !tbaa !1130 ; 2 uses
  %i.aag = sdiv i32 %i.xc, 8
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds i8, ptr %i.om, i64 %i.aah ; 5 uses
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !119
  %i.aak = zext i8 %i.aaj to i32
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 1
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !119
  %i.aan = zext i8 %i.aam to i32
  %i.aao = shl nuw nsw i32 %i.aak, 16
  %i.aap = shl nuw nsw i32 %i.aan, 8
  %i.aaq = or disjoint i32 %i.aap, %i.aao
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !119
  %i.aat = zext i8 %i.aas to i32
  %i.aau = or disjoint i32 %i.aaq, %i.aat
  %i.aav = shl nuw i32 %i.aau, 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aai, i64 3
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !119
  %i.aay = zext i8 %i.aax to i32
  %i.aaz = or disjoint i32 %i.aav, %i.aay
  %i.aba = and i32 %i.xc, 7
  %i.abb = shl i32 %i.aaz, %i.aba                 ; 2 uses
  %i.abc = or i32 %i.xc, -8                       ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aai, i64 4 ; 2 uses
  %.not421.i.i = icmp eq i16 %i.aae, 0
  br i1 %.not421.i.i, label %._crit_edge403.i.i, label %.lr.ph402.i.i

.lr.ph402.i.i:                                    ; preds = %ma_dr_mp3_L3_decode_scalefactors.exit.i
  %i.abe = zext i16 %i.aae to i32
  %i.abf = getelementptr inbounds nuw i8, ptr %i.oo, i64 19
  %i.abg = getelementptr inbounds nuw i8, ptr %i.oo, i64 22
  br label %bb.bx

bb.bx:                                            ; preds = %.critedge.i.i, %.lr.ph402.i.i
  %indvars.iv.i59.i = phi i64 [ 0, %.lr.ph402.i.i ], [ %indvars.iv.next.i60.i, %.critedge.i.i ] ; 3 uses
  %.0190400.i.i = phi ptr [ %i.aac, %.lr.ph402.i.i ], [ %.7.i.i, %.critedge.i.i ] ; 2 uses
  %.0202399.i.i = phi i32 [ %i.abc, %.lr.ph402.i.i ], [ %.13.i.i, %.critedge.i.i ] ; 2 uses
  %.0217398.i.i = phi i32 [ %i.abb, %.lr.ph402.i.i ], [ %.13230.i.i, %.critedge.i.i ] ; 2 uses
  %.0238397.i.i = phi ptr [ %i.abd, %.lr.ph402.i.i ], [ %.10248.i.i, %.critedge.i.i ] ; 2 uses
  %.0252396.i.i = phi ptr [ %i.aaf, %.lr.ph402.i.i ], [ %.3255.i.i, %.critedge.i.i ] ; 2 uses
  %.0260395.i.i = phi i32 [ %i.abe, %.lr.ph402.i.i ], [ %.3263.i.i, %.critedge.i.i ] ; 2 uses
  %.0271393.i.i = phi ptr [ %i.nr, %.lr.ph402.i.i ], [ %.3274.i.i, %.critedge.i.i ] ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 %indvars.iv.i59.i
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !119 ; 2 uses
  %indvars.iv.next.i60.i = add nuw nsw i64 %indvars.iv.i59.i, 1
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 %indvars.iv.i59.i
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !119
  %i.abl = zext i8 %i.abk to i32                  ; 2 uses
  %i.abm = zext i8 %i.abi to i64                  ; 2 uses
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_mp3_L3_huffman.tabindex, i64 %i.abm
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !122
  %i.abp = sext i16 %i.abo to i64
  %i.abq = getelementptr inbounds [2 x i8], ptr @ma_dr_mp3_L3_huffman.tabs, i64 %i.abp ; 4 uses
  %i.abr = getelementptr inbounds nuw i8, ptr @ma_dr_mp3_L3_huffman.g_linbits, i64 %i.abm
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !119
  %i.abt = zext i8 %i.abs to i32                  ; 5 uses
  %.not304.i.i = icmp ult i8 %i.abi, 16
  br i1 %.not304.i.i, label %.preheader323.i.i, label %.preheader324.i.i

.preheader324.i.i:                                ; preds = %bb.bx
  %i.abu = sub nsw i32 32, %i.abt                 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.cj, %.preheader324.i.i
  %.1272.i.i = phi ptr [ %i.akn, %bb.cj ], [ %.0271393.i.i, %.preheader324.i.i ] ; 2 uses
  %.1261.i.i = phi i32 [ %i.ako, %bb.cj ], [ %.0260395.i.i, %.preheader324.i.i ] ; 2 uses
  %.1253.i.i = phi ptr [ %i.akm, %bb.cj ], [ %.0252396.i.i, %.preheader324.i.i ] ; 2 uses
  %.1239.i.i = phi ptr [ %.6244.lcssa.i.i, %bb.cj ], [ %.0238397.i.i, %.preheader324.i.i ]
  %.1218.i.i = phi i32 [ %.7224.lcssa.i.i, %bb.cj ], [ %.0217398.i.i, %.preheader324.i.i ]
  %.1203.i.i = phi i32 [ %.7209.lcssa.i.i, %bb.cj ], [ %.0202399.i.i, %.preheader324.i.i ]
  %.0200.i.i = phi i32 [ %i.akq, %bb.cj ], [ %i.abl, %.preheader324.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.aiz, %bb.cj ], [ %.0190400.i.i, %.preheader324.i.i ]
  %i.abv = load i8, ptr %.1253.i.i, align 1, !tbaa !119
  %i.abw = lshr i8 %i.abv, 1
  %i.abx = zext nneg i8 %i.abw to i32             ; 2 uses
  %i.aby = tail call i32 @llvm.umin.i32(i32 %.1261.i.i, i32 %i.abx)
  %i.abz = load float, ptr %.1272.i.i, align 4, !tbaa !349 ; 5 uses
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge362.i.i, %bb.by
  %.2240.i.i = phi ptr [ %.1239.i.i, %bb.by ], [ %.6244.lcssa.i.i, %._crit_edge362.i.i ] ; 5 uses
  %.2219.i.i = phi i32 [ %.1218.i.i, %bb.by ], [ %.7224.lcssa.i.i, %._crit_edge362.i.i ] ; 3 uses
  %.0215.i.i = phi i32 [ %i.aby, %bb.by ], [ %i.akl, %._crit_edge362.i.i ]
  %.2204.i.i = phi i32 [ %.1203.i.i, %bb.by ], [ %.7209.lcssa.i.i, %._crit_edge362.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %bb.by ], [ %i.aiz, %._crit_edge362.i.i ] ; 3 uses
  %i.aca = lshr i32 %.2219.i.i, 27
  %.pn333.i.i = zext nneg i32 %i.aca to i64
  %.0196.in.in334.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.abq, i64 %.pn333.i.i
  %.0196.in335.i.i = load i16, ptr %.0196.in.in334.i.i, align 2, !tbaa !122 ; 2 uses
  %.0196336.i.i = sext i16 %.0196.in335.i.i to i32 ; 2 uses
  %i.acb = icmp slt i16 %.0196.in335.i.i, 0
  br i1 %i.acb, label %.lr.ph.i63.i, label %._crit_edge.i.i

.lr.ph.i63.i:                                     ; preds = %bb.bz, %.lr.ph.i63.i
  %.0196340.i.i = phi i32 [ %.0196.i.i, %.lr.ph.i63.i ], [ %.0196336.i.i, %bb.bz ] ; 2 uses
  %.0198339.i.i = phi i32 [ %i.ace, %.lr.ph.i63.i ], [ 5, %bb.bz ] ; 2 uses
  %.3205338.i.i = phi i32 [ %i.acd, %.lr.ph.i63.i ], [ %.2204.i.i, %bb.bz ]
  %.3220337.i.i = phi i32 [ %i.acc, %.lr.ph.i63.i ], [ %.2219.i.i, %bb.bz ]
  %i.acc = shl i32 %.3220337.i.i, %.0198339.i.i   ; 3 uses
  %i.acd = add nsw i32 %.3205338.i.i, %.0198339.i.i ; 2 uses
  %i.ace = and i32 %.0196340.i.i, 7               ; 2 uses
  %i.acf = sub nuw nsw i32 32, %i.ace
  %i.acg = lshr i32 %i.acc, %i.acf
  %i.ach = ashr i32 %.0196340.i.i, 3
  %i.aci = sub nsw i32 %i.acg, %i.ach
  %.pn.i.i = zext nneg i32 %i.aci to i64
  %.0196.in.in.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.abq, i64 %.pn.i.i
  %.0196.in.i.i = load i16, ptr %.0196.in.in.i.i, align 2, !tbaa !122 ; 2 uses
  %.0196.i.i = sext i16 %.0196.in.i.i to i32      ; 2 uses
  %i.acj = icmp slt i16 %.0196.in.i.i, 0
  br i1 %i.acj, label %.lr.ph.i63.i, label %._crit_edge.i.i, !llvm.loop !2982

._crit_edge.i.i:                                  ; preds = %.lr.ph.i63.i, %bb.bz
  %.3220.lcssa.i.i = phi i32 [ %.2219.i.i, %bb.bz ], [ %i.acc, %.lr.ph.i63.i ]
  %.3205.lcssa.i.i = phi i32 [ %.2204.i.i, %bb.bz ], [ %i.acd, %.lr.ph.i63.i ]
  %.0196.lcssa.i.i = phi i32 [ %.0196336.i.i, %bb.bz ], [ %.0196.i.i, %.lr.ph.i63.i ] ; 3 uses
  %i.ack = lshr i32 %.0196.lcssa.i.i, 8           ; 2 uses
  %i.acl = shl i32 %.3220.lcssa.i.i, %i.ack       ; 4 uses
  %i.acm = add nsw i32 %i.ack, %.3205.lcssa.i.i   ; 2 uses
  %i.acn = and i32 %.0196.lcssa.i.i, 15           ; 3 uses
  %i.aco = icmp eq i32 %i.acn, 15
  br i1 %i.aco, label %bb.ca, label %bb.cd
end_hunk_0
