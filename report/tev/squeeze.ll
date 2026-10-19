Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/squeeze?download=true
inline.NumInlined: 1068
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@"_ZZN3jxl6N_SSE411InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm":bb.a
  %i.se = bitcast <4 x float> %i.sc to <4 x i32>
  %i.sf = shufflevector <4 x i32> %i.se, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.sg = add <4 x i32> %i.sd, %i.sf
  %i.sh = ashr <4 x i32> %i.sg, splat (i32 2)     ; 3 uses
  %i.si = icmp eq <4 x i32> %i.rj, %i.rg
  %i.sj = icmp eq <4 x i32> %i.rg, %i.ri
  %.not133.1 = or <4 x i1> %i.sj, %i.si
  %i.sk = shl <4 x i32> %i.rn, splat (i32 1)      ; 2 uses
  %i.sl = and <4 x i32> %i.sh, splat (i32 1)
  %i.sm = or disjoint <4 x i32> %i.sl, %i.sk
  %i.sn = icmp sgt <4 x i32> %i.sh, %i.sm
  %i.so = or disjoint <4 x i32> %i.sk, splat (i32 1)
  %i.sp = select <4 x i1> %i.sn, <4 x i32> %i.so, <4 x i32> %i.sh ; 3 uses
  %i.sq = shl <4 x i32> %i.rp, splat (i32 1)      ; 2 uses
  %i.sr = and <4 x i32> %i.sp, splat (i32 1)
  %i.ss = add <4 x i32> %i.sr, %i.sp
  %i.st = icmp sgt <4 x i32> %i.ss, %i.sq
  %i.su = select <4 x i1> %i.st, <4 x i32> %i.sq, <4 x i32> %i.sp ; 2 uses
  %i.sv = icmp sgt <4 x i32> %i.ri, %i.rj
  %i.sw = sub <4 x i32> zeroinitializer, %i.su
  %i.sx = select <4 x i1> %i.sv, <4 x i32> %i.sw, <4 x i32> %i.su
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.sz = load <4 x i32>, ptr %i.sy, align 16, !tbaa !94
  %isnotneg.1 = icmp sgt <4 x i32> %i.rm, splat (i32 -1)
  %narrow.1 = select <4 x i1> %.not133.1, <4 x i1> splat (i1 true), <4 x i1> %isnotneg.1
  %i.ta = select <4 x i1> %narrow.1, <4 x i32> %i.sx, <4 x i32> zeroinitializer
  %i.tb = add <4 x i32> %i.ta, %i.sz              ; 3 uses
  %i.tc = lshr <4 x i32> %i.tb, splat (i32 31)
  %i.td = add <4 x i32> %i.tc, %i.tb
  %i.te = ashr <4 x i32> %i.td, splat (i32 1)
  %i.tf = add <4 x i32> %i.te, %i.rg              ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  store <4 x i32> %i.tf, ptr %i.tg, align 16, !tbaa !94
  %i.th = sub <4 x i32> %i.tf, %i.tb
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store <4 x i32> %i.th, ptr %i.ti, align 16, !tbaa !94
  %exitcond.not = icmp eq i64 %i.ox, 8
  br i1 %exitcond.not, label %.preheader135.preheader, label %_ZN3jxl6N_SSE413FastUnsqueezeEPKiS2_S2_S2_PiS3_.exit.preheader, !llvm.loop !166

.loopexit:                                        ; preds = %.preheader135.preheader, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.oo, %.preheader135.preheader ] ; 2 uses
  %.not160 = icmp eq i64 %i.i, %i.f
  br i1 %.not160, label %._crit_edge, label %.lr.ph155

.lr.ph155:                                        ; preds = %.loopexit
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !174, !nonnull !57, !align !58 ; 3 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !176, !nonnull !57, !align !58 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 40
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !59
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !60
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !177, !nonnull !57, !align !58 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 40
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !59 ; 6 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !60 ; 6 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !178, !nonnull !57, !align !58 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !59 ; 6 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !60 ; 6 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tl, i64 56
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !25 ; 2 uses
  %i.ue = icmp ult i64 %.1, %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tx, i64 56
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !25 ; 7 uses
  %i.uh = and i64 %i.ug, 1
  %.not.i = icmp eq i64 %i.uh, 0                  ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tr, i64 56 ; 2 uses
  br i1 %i.ue, label %.lr.ph155.split.us, label %.lr.ph155.split

.lr.ph155.split.us:                               ; preds = %.lr.ph155
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !25 ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %"_ZZN3jxl6N_SSE411InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us", %.lr.ph155.split.us
  %.0154.us = phi i64 [ 0, %.lr.ph155.split.us ], [ %i.wx, %"_ZZN3jxl6N_SSE411InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us" ] ; 2 uses
  %i.uk = add nuw nsw i64 %.0154.us, %i.f         ; 3 uses
  %i.ul = mul i64 %i.tp, %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.ul ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.um, i64 64) ]
  %i.un = mul i64 %i.tv, %i.uk
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.un ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.uo, i64 64) ]
  %i.up = mul i64 %i.ub, %i.uk
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.up ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.uq, i64 64) ]
  br label %bb.b

bb.b:                                             ; preds = %_ZN3jxl14SmoothTendencyElll.exit.i.us, %.lr.ph.i.us
  %.038.i.us = phi i64 [ %.1, %.lr.ph.i.us ], [ %i.ux, %_ZN3jxl14SmoothTendencyElll.exit.i.us ] ; 6 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %.038.i.us
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !43
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %.038.i.us
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !43
  %i.uw = sext i32 %i.uv to i64                   ; 13 uses
  %i.ux = add nuw i64 %.038.i.us, 1               ; 4 uses
  %i.uy = icmp ult i64 %i.ux, %i.uj
  br i1 %i.uy, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.ux
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !43
  %i.vb = sext i32 %i.va to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.vc = phi i64 [ %i.vb, %bb.c ], [ %i.uw, %bb.b ] ; 6 uses
  %.not36.i.us = icmp eq i64 %.038.i.us, 0
  br i1 %.not36.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.idx.i85.us = shl i64 %.038.i.us, 3
  %i.vd = getelementptr i8, ptr %i.uq, i64 %.idx.i85.us
  %i.ve = getelementptr i8, ptr %i.vd, i64 -4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !43
  %i.vg = sext i32 %i.vf to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.vh = phi i64 [ %i.vg, %bb.e ], [ %i.uw, %bb.d ] ; 6 uses
  %.not.i.i.us = icmp slt i64 %i.vh, %i.uw
  %.not49.i.i.us = icmp sgt i64 %i.vc, %i.uw
  %or.cond.i.i.us = or i1 %.not49.i.i.us, %.not.i.i.us
  br i1 %or.cond.i.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.vi = shl nsw i64 %i.vh, 2
  %.neg52.i.i.us = mul nsw i64 %i.vc, -3
  %reass.sub = sub nsw i64 %.neg52.i.i.us, %i.uw
  %i.vj = add nsw i64 %reass.sub, 6
  %i.vk = add nsw i64 %i.vj, %i.vi
  %i.vl = sdiv i64 %i.vk, 12                      ; 2 uses
  %i.vm = and i64 %i.vl, -2
  %i.vn = sub nsw i64 %i.vh, %i.uw
  %i.vo = shl nuw nsw i64 %i.vn, 1                ; 2 uses
  %i.vp = icmp sgt i64 %i.vm, %i.vo
  %i.vq = or disjoint i64 %i.vo, 1
  %spec.select.i.i.us = select i1 %i.vp, i64 %i.vq, i64 %i.vl ; 3 uses
  %i.vr = and i64 %spec.select.i.i.us, 1
  %i.vs = add nsw i64 %i.vr, %spec.select.i.i.us
  %i.vt = sub nsw i64 %i.uw, %i.vc
  %i.vu = shl nuw nsw i64 %i.vt, 1                ; 2 uses
  %i.vv = icmp sgt i64 %i.vs, %i.vu
  %spec.select55.i.i.us = select i1 %i.vv, i64 %i.vu, i64 %spec.select.i.i.us
  br label %_ZN3jxl14SmoothTendencyElll.exit.i.us

bb.h:                                             ; preds = %bb.f
  %.not50.i.i.us = icmp sgt i64 %i.vh, %i.uw
  %.not51.i.i.us = icmp slt i64 %i.vc, %i.uw
  %or.cond53.i.i.us = or i1 %.not51.i.i.us, %.not50.i.i.us
  br i1 %or.cond53.i.i.us, label %_ZN3jxl14SmoothTendencyElll.exit.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.vw = shl nsw i64 %i.vh, 2
  %.neg.i.i.us = mul nsw i64 %i.vc, -3
  %reass.sub161 = sub nsw i64 %.neg.i.i.us, %i.uw
  %i.vx = add nsw i64 %reass.sub161, -6
  %i.vy = add nsw i64 %i.vx, %i.vw
  %i.vz = sdiv i64 %i.vy, 12                      ; 3 uses
  %i.wa = and i64 %i.vz, 1
  %i.wb = add nsw i64 %i.wa, %i.vz
  %i.wc = sub nsw i64 %i.vh, %i.uw
  %i.wd = shl nsw i64 %i.wc, 1                    ; 2 uses
  %i.we = icmp slt i64 %i.wb, %i.wd
  %i.wf = add nsw i64 %i.wd, -1
  %spec.select54.i.i.us = select i1 %i.we, i64 %i.wf, i64 %i.vz ; 2 uses
  %i.wg = and i64 %spec.select54.i.i.us, -2
  %i.wh = sub nsw i64 %i.uw, %i.vc
  %i.wi = shl nsw i64 %i.wh, 1                    ; 2 uses
  %i.wj = icmp slt i64 %i.wg, %i.wi
  %spec.select56.i.i.us = select i1 %i.wj, i64 %i.wi, i64 %spec.select54.i.i.us
  br label %_ZN3jxl14SmoothTendencyElll.exit.i.us

_ZN3jxl14SmoothTendencyElll.exit.i.us:            ; preds = %bb.i, %bb.h, %bb.g
  %.2.i.i.us = phi i64 [ 0, %bb.h ], [ %spec.select56.i.i.us, %bb.i ], [ %spec.select55.i.i.us, %bb.g ]
  %i.wk = add nsw i64 %.2.i.i.us, %i.ut           ; 2 uses
  %i.wl = sdiv i64 %i.wk, 2
  %i.wm = add nsw i64 %i.wl, %i.uw                ; 2 uses
  %i.wn = trunc i64 %i.wm to i32
  %.idx37.i.us = shl i64 %.038.i.us, 3
  %i.wo = getelementptr inbounds nuw i8, ptr %i.uq, i64 %.idx37.i.us ; 2 uses
  store i32 %i.wn, ptr %i.wo, align 8, !tbaa !43
  %i.wp = sub nsw i64 %i.wm, %i.wk
  %i.wq = trunc i64 %i.wp to i32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  store i32 %i.wq, ptr %i.wr, align 4, !tbaa !43
  %exitcond.not.i.us = icmp eq i64 %i.ux, %i.ud
  br i1 %exitcond.not.i.us, label %._crit_edge.i.loopexit.us, label %bb.b, !llvm.loop !167

bb.j:                                             ; preds = %._crit_edge.i.loopexit.us
  %i.ws = getelementptr [4 x i8], ptr %i.uo, i64 %i.uj
  %i.wt = getelementptr i8, ptr %i.ws, i64 -4
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !43
  %i.wv = getelementptr [4 x i8], ptr %i.uq, i64 %i.ug
  %i.ww = getelementptr i8, ptr %i.wv, i64 -4
  store i32 %i.wu, ptr %i.ww, align 8, !tbaa !43
  br label %"_ZZN3jxl6N_SSE411InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us"

"_ZZN3jxl6N_SSE411InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us": ; preds = %bb.j, %._crit_edge.i.loopexit.us
  %i.wx = add nuw nsw i64 %.0154.us, 1            ; 2 uses
  %exitcond171.not = icmp eq i64 %i.wx, %.sroa.speculated
  br i1 %exitcond171.not, label %._crit_edge, label %.lr.ph.i.us, !llvm.loop !168

._crit_edge.i.loopexit.us:                        ; preds = %_ZN3jxl14SmoothTendencyElll.exit.i.us
  br i1 %.not.i, label %"_ZZN3jxl6N_SSE411InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us", label %bb.j

.lr.ph155.split:                                  ; preds = %.lr.ph155
  br i1 %.not.i, label %._crit_edge, label %.lr.ph155.split.split

.lr.ph155.split.split:                            ; preds = %.lr.ph155.split
  %i.wy = load i64, ptr %i.ui, align 8, !tbaa !25 ; 5 uses
  %xtraiter = and i64 %.sroa.speculated, 3        ; 3 uses
  %i.wz = icmp ult i64 %i.j, 4
  br i1 %i.wz, label %._crit_edge.i.epil.preheader, label %.lr.ph155.split.split.new

.lr.ph155.split.split.new:                        ; preds = %.lr.ph155.split.split
  %unroll_iter = and i64 %.sroa.speculated, 12
  br label %._crit_edge.i

._crit_edge.loopexit2.unr-lcssa:                  ; preds = %._crit_edge.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %._crit_edge.i.epil.preheader

._crit_edge.i.epil.preheader:                     ; preds = %._crit_edge.loopexit2.unr-lcssa, %.lr.ph155.split.split
  %.0154.epil.init = phi i64 [ 0, %.lr.ph155.split.split ], [ %i.zc, %._crit_edge.loopexit2.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %._crit_edge.i.epil

._crit_edge.i.epil:                               ; preds = %._crit_edge.i.epil, %._crit_edge.i.epil.preheader
  %.0154.epil = phi i64 [ %.0154.epil.init, %._crit_edge.i.epil.preheader ], [ %i.xk, %._crit_edge.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %._crit_edge.i.epil.preheader ], [ %epil.iter.next, %._crit_edge.i.epil ]
  %i.xa = add nuw nsw i64 %.0154.epil, %i.f       ; 2 uses
  %i.xb = mul i64 %i.tv, %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.xb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xc, i64 64) ]
  %i.xd = mul i64 %i.ub, %i.xa
  %i.xe = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.xd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xe, i64 64) ]
  %i.xf = getelementptr [4 x i8], ptr %i.xc, i64 %i.wy
  %i.xg = getelementptr i8, ptr %i.xf, i64 -4
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !43
  %i.xi = getelementptr [4 x i8], ptr %i.xe, i64 %i.ug
  %i.xj = getelementptr i8, ptr %i.xi, i64 -4
  store i32 %i.xh, ptr %i.xj, align 8, !tbaa !43
  %i.xk = add nuw nsw i64 %.0154.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %._crit_edge.i.epil, !llvm.loop !169

._crit_edge:                                      ; preds = %._crit_edge.loopexit2.unr-lcssa, %._crit_edge.i.epil, %"_ZZN3jxl6N_SSE411InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us", %.lr.ph155.split, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 0

._crit_edge.i:                                    ; preds = %._crit_edge.i, %.lr.ph155.split.split.new
  %.0154 = phi i64 [ 0, %.lr.ph155.split.split.new ], [ %i.zc, %._crit_edge.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph155.split.split.new ], [ %niter.next.3, %._crit_edge.i ]
  %i.xl = add nuw nsw i64 %.0154, %i.f            ; 2 uses
  %i.xm = mul i64 %i.tv, %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.xm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xn, i64 64) ]
  %i.xo = mul i64 %i.ub, %i.xl
  %i.xp = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.xo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xp, i64 64) ]
  %i.xq = getelementptr [4 x i8], ptr %i.xn, i64 %i.wy
  %i.xr = getelementptr i8, ptr %i.xq, i64 -4
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !43
  %i.xt = getelementptr [4 x i8], ptr %i.xp, i64 %i.ug
  %i.xu = getelementptr i8, ptr %i.xt, i64 -4
  store i32 %i.xs, ptr %i.xu, align 8, !tbaa !43
  %i.xv = or disjoint i64 %.0154, 1
  %i.xw = add nuw nsw i64 %i.xv, %i.f             ; 2 uses
  %i.xx = mul i64 %i.tv, %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.xx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xy, i64 64) ]
  %i.xz = mul i64 %i.ub, %i.xw
  %i.ya = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.xz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ya, i64 64) ]
  %i.yb = getelementptr [4 x i8], ptr %i.xy, i64 %i.wy
  %i.yc = getelementptr i8, ptr %i.yb, i64 -4
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !43
  %i.ye = getelementptr [4 x i8], ptr %i.ya, i64 %i.ug
  %i.yf = getelementptr i8, ptr %i.ye, i64 -4
  store i32 %i.yd, ptr %i.yf, align 8, !tbaa !43
  %i.yg = or disjoint i64 %.0154, 2
  %i.yh = add nuw nsw i64 %i.yg, %i.f             ; 2 uses
  %i.yi = mul i64 %i.tv, %i.yh
  %i.yj = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.yi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yj, i64 64) ]
  %i.yk = mul i64 %i.ub, %i.yh
  %i.yl = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.yk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yl, i64 64) ]
  %i.ym = getelementptr [4 x i8], ptr %i.yj, i64 %i.wy
  %i.yn = getelementptr i8, ptr %i.ym, i64 -4
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !43
  %i.yp = getelementptr [4 x i8], ptr %i.yl, i64 %i.ug
  %i.yq = getelementptr i8, ptr %i.yp, i64 -4
  store i32 %i.yo, ptr %i.yq, align 8, !tbaa !43
  %i.yr = or disjoint i64 %.0154, 3
  %i.ys = add nuw nsw i64 %i.yr, %i.f             ; 2 uses
  %i.yt = mul i64 %i.tv, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.yt ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yu, i64 64) ]
  %i.yv = mul i64 %i.ub, %i.ys
  %i.yw = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.yv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yw, i64 64) ]
  %i.yx = getelementptr [4 x i8], ptr %i.yu, i64 %i.wy
  %i.yy = getelementptr i8, ptr %i.yx, i64 -4
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !43
  %i.za = getelementptr [4 x i8], ptr %i.yw, i64 %i.ug
  %i.zb = getelementptr i8, ptr %i.za, i64 -4
  store i32 %i.yz, ptr %i.zb, align 8, !tbaa !43
  %i.zc = add nuw nsw i64 %.0154, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit2.unr-lcssa, label %._crit_edge.i, !llvm.loop !168
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm"(ptr nofree readnone captures(none) %0, i64 %1) #9 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE411InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65, !nonnull !57, !align !58
  %i.e = tail call fastcc i32 @"_ZZN3jxl6N_SSE411InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEjm"(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %1) #24
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 1, ptr %i.a seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i32 @"_ZZN3jxl6N_SSE411InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEjm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = shl i32 %1, 6
  %i.b = zext i32 %i.a to i64                     ; 7 uses
  %i.c = add i32 %1, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 6
  %i.f = load ptr, ptr %0, align 8, !tbaa !183, !nonnull !57, !align !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.e)
  %i.i = sub nsw i64 %.sroa.speculated, %i.b      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184, !nonnull !57, !align !58 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %.not109 = icmp eq i64 %i.m, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = icmp ugt i64 %i.i, 7
  br label %bb.b

.loopexit:                                        ; preds = %_ZN3jxl14SmoothTendencyElll.exit, %.preheader
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !184, !nonnull !57, !align !58 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26
  %i.s = icmp ult i64 %i.aj, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !179

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph108, %.loopexit
  %i.t = phi ptr [ %i.k, %.lr.ph108 ], [ %i.p, %.loopexit ] ; 2 uses
  %.0107 = phi i64 [ 0, %.lr.ph108 ], [ %i.aj, %.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !60
  %i.y = mul i64 %i.x, %.0107
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.z, i64 64) ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.b ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !183, !nonnull !57, !align !58 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !60 ; 2 uses
  %i.ag = mul i64 %i.af, %.0107
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.b ; 3 uses
  %i.aj = add nuw i64 %.0107, 1                   ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.am = icmp ult i64 %i.aj, %i.al
  %i.an = select i1 %i.am, i64 %i.aj, i64 %.0107
  %i.ao = mul i64 %i.an, %i.af
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ao ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.b ; 2 uses
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !185, !nonnull !57, !align !58 ; 2 uses
  %i.as = shl i64 %.0107, 1                       ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !59 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !60 ; 3 uses
  %i.ax = mul i64 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 64) ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.b ; 2 uses
  %i.ba = or disjoint i64 %i.as, 1
  %i.bb = mul i64 %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bc, i64 64) ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.b ; 2 uses
  %.not = icmp eq i64 %.0107, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = add i64 %i.as, -1
  %i.bf = mul i64 %i.aw, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bi = phi ptr [ %i.bh, %bb.c ], [ %i.ai, %bb.b ] ; 2 uses
  br i1 %i.o, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.d
  %.062.lcssa = phi i64 [ 0, %bb.d ], [ %i.fu, %.lr.ph ] ; 2 uses
  %i.bj = icmp ult i64 %.062.lcssa, %i.i
  br i1 %i.bj, label %.lr.ph106, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.062104 = phi i64 [ %i.fu, %.lr.ph ], [ 0, %bb.d ] ; 7 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.062104 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.062104 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.062104 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.062104 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.062104 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.062104 ; 2 uses
  %i.bq = load <4 x i32>, ptr %i.bl, align 32, !tbaa !94 ; 5 uses
  %i.br = load <4 x i32>, ptr %i.bm, align 32, !tbaa !94 ; 4 uses
  %i.bs = load <4 x i32>, ptr %i.bn, align 16, !tbaa !94 ; 4 uses
  %i.bt = sub <4 x i32> %i.bs, %i.bq              ; 2 uses
  %i.bu = sub <4 x i32> %i.bq, %i.br              ; 2 uses
  %i.bv = xor <4 x i32> %i.bt, %i.bu
  %i.bw = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bt, i1 false) ; 3 uses
  %i.bx = bitcast <4 x i32> %i.bw to <2 x i64>
  %i.by = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bu, i1 false)
  %i.bz = sub <4 x i32> %i.bs, %i.br
  %i.ca = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bz, i1 false)
  %i.cb = shl <2 x i64> %i.bx, splat (i64 32)
  %i.cc = ashr exact <2 x i64> %i.cb, splat (i64 32)
  %i.cd = mul nsw <2 x i64> %i.cc, splat (i64 1431655766)
  %i.ce = shufflevector <4 x i32> %i.bw, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.cf = bitcast <4 x i32> %i.ce to <2 x i64>
  %i.cg = shl <2 x i64> %i.cf, splat (i64 32)
  %i.ch = ashr exact <2 x i64> %i.cg, splat (i64 32)
  %i.ci = mul nsw <2 x i64> %i.ch, splat (i64 1431655766)
  %i.cj = bitcast <2 x i64> %i.cd to <4 x float>
  %i.ck = bitcast <2 x i64> %i.ci to <4 x float>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cm = add nuw <4 x i32> %i.ca, splat (i32 2)
  %i.cn = bitcast <4 x float> %i.cl to <4 x i32>
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cp = add <4 x i32> %i.cm, %i.co
  %i.cq = ashr <4 x i32> %i.cp, splat (i32 2)     ; 3 uses
  %i.cr = icmp eq <4 x i32> %i.bs, %i.bq
  %i.cs = icmp eq <4 x i32> %i.bq, %i.br
  %.not102 = or <4 x i1> %i.cs, %i.cr
  %i.ct = shl <4 x i32> %i.bw, splat (i32 1)      ; 2 uses
  %i.cu = and <4 x i32> %i.cq, splat (i32 1)
  %i.cv = or disjoint <4 x i32> %i.cu, %i.ct
  %i.cw = icmp sgt <4 x i32> %i.cq, %i.cv
  %i.cx = or disjoint <4 x i32> %i.ct, splat (i32 1)
  %i.cy = select <4 x i1> %i.cw, <4 x i32> %i.cx, <4 x i32> %i.cq ; 3 uses
  %i.cz = shl <4 x i32> %i.by, splat (i32 1)      ; 2 uses
  %i.da = and <4 x i32> %i.cy, splat (i32 1)
  %i.db = add <4 x i32> %i.da, %i.cy
  %i.dc = icmp sgt <4 x i32> %i.db, %i.cz
  %i.dd = select <4 x i1> %i.dc, <4 x i32> %i.cz, <4 x i32> %i.cy ; 2 uses
  %i.de = icmp sgt <4 x i32> %i.br, %i.bs
  %i.df = sub <4 x i32> zeroinitializer, %i.dd
  %i.dg = select <4 x i1> %i.de, <4 x i32> %i.df, <4 x i32> %i.dd
  %i.dh = load <4 x i32>, ptr %i.bk, align 32, !tbaa !94
  %isnotneg = icmp sgt <4 x i32> %i.bv, splat (i32 -1)
  %narrow = select <4 x i1> %.not102, <4 x i1> splat (i1 true), <4 x i1> %isnotneg
  %i.di = select <4 x i1> %narrow, <4 x i32> %i.dg, <4 x i32> zeroinitializer
  %i.dj = add <4 x i32> %i.di, %i.dh              ; 3 uses
  %i.dk = lshr <4 x i32> %i.dj, splat (i32 31)
  %i.dl = add <4 x i32> %i.dk, %i.dj
  %i.dm = ashr <4 x i32> %i.dl, splat (i32 1)
  %i.dn = add <4 x i32> %i.dm, %i.bq              ; 2 uses
  store <4 x i32> %i.dn, ptr %i.bo, align 32, !tbaa !94
  %i.do = sub <4 x i32> %i.dn, %i.dj
end_hunk_0
begin_hunk_1_@"_ZZN3jxl6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm":bb.a
  %i.kv = bitcast <4 x i64> %i.kt to <8 x float>
  %i.kw = shufflevector <8 x float> %i.ku, <8 x float> %i.kv, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.kx = add nuw <8 x i32> %i.kl, splat (i32 2)
  %i.ky = bitcast <8 x float> %i.kw to <8 x i32>
  %i.kz = shufflevector <8 x i32> %i.ky, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.la = add <8 x i32> %i.kx, %i.kz
  %i.lb = ashr <8 x i32> %i.la, splat (i32 2)     ; 3 uses
  %i.lc = icmp eq <8 x i32> %i.kd, %i.kb
  %i.ld = icmp eq <8 x i32> %i.kb, %i.kc
  %.not202 = or <8 x i1> %i.ld, %i.lc
  %i.le = shl <8 x i32> %i.kh, splat (i32 1)      ; 2 uses
  %i.lf = and <8 x i32> %i.lb, splat (i32 1)
  %i.lg = or disjoint <8 x i32> %i.lf, %i.le
  %i.lh = icmp sgt <8 x i32> %i.lb, %i.lg
  %i.li = or disjoint <8 x i32> %i.le, splat (i32 1)
  %i.lj = select <8 x i1> %i.lh, <8 x i32> %i.li, <8 x i32> %i.lb ; 3 uses
  %i.lk = shl <8 x i32> %i.kj, splat (i32 1)      ; 2 uses
  %i.ll = and <8 x i32> %i.lj, splat (i32 1)
  %i.lm = add <8 x i32> %i.ll, %i.lj
  %i.ln = icmp sgt <8 x i32> %i.lm, %i.lk
  %i.lo = select <8 x i1> %i.ln, <8 x i32> %i.lk, <8 x i32> %i.lj ; 2 uses
  %i.lp = icmp sgt <8 x i32> %i.kc, %i.kd
  %i.lq = sub <8 x i32> zeroinitializer, %i.lo
  %i.lr = select <8 x i1> %i.lp, <8 x i32> %i.lq, <8 x i32> %i.lo
  %i.ls = load <8 x i32>, ptr %i.jq, align 32, !tbaa !94
  %isnotneg = icmp sgt <8 x i32> %i.kg, splat (i32 -1)
  %narrow = select <8 x i1> %.not202, <8 x i1> splat (i1 true), <8 x i1> %isnotneg
  %i.lt = select <8 x i1> %narrow, <8 x i32> %i.lr, <8 x i32> zeroinitializer
  %i.lu = add <8 x i32> %i.lt, %i.ls              ; 3 uses
  %i.lv = lshr <8 x i32> %i.lu, splat (i32 31)
  %i.lw = add <8 x i32> %i.lv, %i.lu
  %i.lx = ashr <8 x i32> %i.lw, splat (i32 1)
  %i.ly = add <8 x i32> %i.lx, %i.kb              ; 2 uses
  store <8 x i32> %i.ly, ptr %i.jz, align 32, !tbaa !94
  %i.lz = sub <8 x i32> %i.ly, %i.lu
  store <8 x i32> %i.lz, ptr %i.ka, align 32, !tbaa !94
  %exitcond.not = icmp eq i64 %i.js, 8
  br i1 %exitcond.not, label %.preheader, label %_ZN3jxl6N_AVX213FastUnsqueezeEPKiS2_S2_S2_PiS3_.exit.preheader, !llvm.loop !195

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.jj, %.preheader ] ; 2 uses
  %.not217 = icmp eq i64 %i.i, %i.f
  br i1 %.not217, label %._crit_edge, label %.lr.ph212

.lr.ph212:                                        ; preds = %.loopexit
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !207, !nonnull !57, !align !58 ; 3 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !209, !nonnull !57, !align !58 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !59
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !60
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !210, !nonnull !57, !align !58 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !59 ; 6 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !60 ; 6 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !211, !nonnull !57, !align !58 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !59 ; 6 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !60 ; 6 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mc, i64 56
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !25 ; 2 uses
  %i.mv = icmp ult i64 %.1, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 56
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !25 ; 7 uses
  %i.my = and i64 %i.mx, 1
  %.not.i = icmp eq i64 %i.my, 0                  ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mi, i64 56 ; 2 uses
  br i1 %i.mv, label %.lr.ph212.split.us, label %.lr.ph212.split

.lr.ph212.split.us:                               ; preds = %.lr.ph212
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !25 ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %"_ZZN3jxl6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us", %.lr.ph212.split.us
  %.0211.us = phi i64 [ 0, %.lr.ph212.split.us ], [ %i.po, %"_ZZN3jxl6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us" ] ; 2 uses
  %i.nb = add nuw nsw i64 %.0211.us, %i.f         ; 3 uses
  %i.nc = mul i64 %i.mg, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.nc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nd, i64 64) ]
  %i.ne = mul i64 %i.mm, %i.nb
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ne ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nf, i64 64) ]
  %i.ng = mul i64 %i.ms, %i.nb
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.ng ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nh, i64 64) ]
  br label %bb.b

bb.b:                                             ; preds = %_ZN3jxl14SmoothTendencyElll.exit.i.us, %.lr.ph.i.us
  %.038.i.us = phi i64 [ %.1, %.lr.ph.i.us ], [ %i.no, %_ZN3jxl14SmoothTendencyElll.exit.i.us ] ; 6 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.038.i.us
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !43
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %.038.i.us
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !43
  %i.nn = sext i32 %i.nm to i64                   ; 13 uses
  %i.no = add nuw i64 %.038.i.us, 1               ; 4 uses
  %i.np = icmp ult i64 %i.no, %i.na
  br i1 %i.np, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.no
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !43
  %i.ns = sext i32 %i.nr to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.nt = phi i64 [ %i.ns, %bb.c ], [ %i.nn, %bb.b ] ; 6 uses
  %.not36.i.us = icmp eq i64 %.038.i.us, 0
  br i1 %.not36.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.idx.i69.us = shl i64 %.038.i.us, 3
  %i.nu = getelementptr i8, ptr %i.nh, i64 %.idx.i69.us
  %i.nv = getelementptr i8, ptr %i.nu, i64 -4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !43
  %i.nx = sext i32 %i.nw to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ny = phi i64 [ %i.nx, %bb.e ], [ %i.nn, %bb.d ] ; 6 uses
  %.not.i.i.us = icmp slt i64 %i.ny, %i.nn
  %.not49.i.i.us = icmp sgt i64 %i.nt, %i.nn
  %or.cond.i.i.us = or i1 %.not49.i.i.us, %.not.i.i.us
  br i1 %or.cond.i.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.nz = shl nsw i64 %i.ny, 2
  %.neg52.i.i.us = mul nsw i64 %i.nt, -3
  %reass.sub = sub nsw i64 %.neg52.i.i.us, %i.nn
  %i.oa = add nsw i64 %reass.sub, 6
  %i.ob = add nsw i64 %i.oa, %i.nz
  %i.oc = sdiv i64 %i.ob, 12                      ; 2 uses
  %i.od = and i64 %i.oc, -2
  %i.oe = sub nsw i64 %i.ny, %i.nn
  %i.of = shl nuw nsw i64 %i.oe, 1                ; 2 uses
  %i.og = icmp sgt i64 %i.od, %i.of
  %i.oh = or disjoint i64 %i.of, 1
  %spec.select.i.i.us = select i1 %i.og, i64 %i.oh, i64 %i.oc ; 3 uses
  %i.oi = and i64 %spec.select.i.i.us, 1
  %i.oj = add nsw i64 %i.oi, %spec.select.i.i.us
  %i.ok = sub nsw i64 %i.nn, %i.nt
  %i.ol = shl nuw nsw i64 %i.ok, 1                ; 2 uses
  %i.om = icmp sgt i64 %i.oj, %i.ol
  %spec.select55.i.i.us = select i1 %i.om, i64 %i.ol, i64 %spec.select.i.i.us
  br label %_ZN3jxl14SmoothTendencyElll.exit.i.us

bb.h:                                             ; preds = %bb.f
  %.not50.i.i.us = icmp sgt i64 %i.ny, %i.nn
  %.not51.i.i.us = icmp slt i64 %i.nt, %i.nn
  %or.cond53.i.i.us = or i1 %.not51.i.i.us, %.not50.i.i.us
  br i1 %or.cond53.i.i.us, label %_ZN3jxl14SmoothTendencyElll.exit.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.on = shl nsw i64 %i.ny, 2
  %.neg.i.i.us = mul nsw i64 %i.nt, -3
  %reass.sub218 = sub nsw i64 %.neg.i.i.us, %i.nn
  %i.oo = add nsw i64 %reass.sub218, -6
  %i.op = add nsw i64 %i.oo, %i.on
  %i.oq = sdiv i64 %i.op, 12                      ; 3 uses
  %i.or = and i64 %i.oq, 1
  %i.os = add nsw i64 %i.or, %i.oq
  %i.ot = sub nsw i64 %i.ny, %i.nn
  %i.ou = shl nsw i64 %i.ot, 1                    ; 2 uses
  %i.ov = icmp slt i64 %i.os, %i.ou
  %i.ow = add nsw i64 %i.ou, -1
  %spec.select54.i.i.us = select i1 %i.ov, i64 %i.ow, i64 %i.oq ; 2 uses
  %i.ox = and i64 %spec.select54.i.i.us, -2
  %i.oy = sub nsw i64 %i.nn, %i.nt
  %i.oz = shl nsw i64 %i.oy, 1                    ; 2 uses
  %i.pa = icmp slt i64 %i.ox, %i.oz
  %spec.select56.i.i.us = select i1 %i.pa, i64 %i.oz, i64 %spec.select54.i.i.us
  br label %_ZN3jxl14SmoothTendencyElll.exit.i.us

_ZN3jxl14SmoothTendencyElll.exit.i.us:            ; preds = %bb.i, %bb.h, %bb.g
  %.2.i.i.us = phi i64 [ 0, %bb.h ], [ %spec.select56.i.i.us, %bb.i ], [ %spec.select55.i.i.us, %bb.g ]
  %i.pb = add nsw i64 %.2.i.i.us, %i.nk           ; 2 uses
  %i.pc = sdiv i64 %i.pb, 2
  %i.pd = add nsw i64 %i.pc, %i.nn                ; 2 uses
  %i.pe = trunc i64 %i.pd to i32
  %.idx37.i.us = shl i64 %.038.i.us, 3
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nh, i64 %.idx37.i.us ; 2 uses
  store i32 %i.pe, ptr %i.pf, align 8, !tbaa !43
  %i.pg = sub nsw i64 %i.pd, %i.pb
  %i.ph = trunc i64 %i.pg to i32
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !43
  %exitcond.not.i.us = icmp eq i64 %i.no, %i.mu
  br i1 %exitcond.not.i.us, label %._crit_edge.i.loopexit.us, label %bb.b, !llvm.loop !196

bb.j:                                             ; preds = %._crit_edge.i.loopexit.us
  %i.pj = getelementptr [4 x i8], ptr %i.nf, i64 %i.na
  %i.pk = getelementptr i8, ptr %i.pj, i64 -4
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !43
  %i.pm = getelementptr [4 x i8], ptr %i.nh, i64 %i.mx
  %i.pn = getelementptr i8, ptr %i.pm, i64 -4
  store i32 %i.pl, ptr %i.pn, align 8, !tbaa !43
  br label %"_ZZN3jxl6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us"

"_ZZN3jxl6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us": ; preds = %bb.j, %._crit_edge.i.loopexit.us
  %i.po = add nuw nsw i64 %.0211.us, 1            ; 2 uses
  %exitcond226.not = icmp eq i64 %i.po, %.sroa.speculated
  br i1 %exitcond226.not, label %._crit_edge, label %.lr.ph.i.us, !llvm.loop !197

._crit_edge.i.loopexit.us:                        ; preds = %_ZN3jxl14SmoothTendencyElll.exit.i.us
  br i1 %.not.i, label %"_ZZN3jxl6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us", label %bb.j

.lr.ph212.split:                                  ; preds = %.lr.ph212
  br i1 %.not.i, label %._crit_edge, label %.lr.ph212.split.split

.lr.ph212.split.split:                            ; preds = %.lr.ph212.split
  %i.pp = load i64, ptr %i.mz, align 8, !tbaa !25 ; 5 uses
  %xtraiter = and i64 %.sroa.speculated, 3        ; 3 uses
  %i.pq = icmp ult i64 %i.j, 4
  br i1 %i.pq, label %._crit_edge.i.epil.preheader, label %.lr.ph212.split.split.new

.lr.ph212.split.split.new:                        ; preds = %.lr.ph212.split.split
  %unroll_iter = and i64 %.sroa.speculated, 12
  br label %._crit_edge.i

._crit_edge.loopexit2.unr-lcssa:                  ; preds = %._crit_edge.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %._crit_edge.i.epil.preheader

._crit_edge.i.epil.preheader:                     ; preds = %._crit_edge.loopexit2.unr-lcssa, %.lr.ph212.split.split
  %.0211.epil.init = phi i64 [ 0, %.lr.ph212.split.split ], [ %i.rt, %._crit_edge.loopexit2.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %._crit_edge.i.epil

._crit_edge.i.epil:                               ; preds = %._crit_edge.i.epil, %._crit_edge.i.epil.preheader
  %.0211.epil = phi i64 [ %.0211.epil.init, %._crit_edge.i.epil.preheader ], [ %i.qb, %._crit_edge.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %._crit_edge.i.epil.preheader ], [ %epil.iter.next, %._crit_edge.i.epil ]
  %i.pr = add nuw nsw i64 %.0211.epil, %i.f       ; 2 uses
  %i.ps = mul i64 %i.mm, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ps ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pt, i64 64) ]
  %i.pu = mul i64 %i.ms, %i.pr
  %i.pv = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.pu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pv, i64 64) ]
  %i.pw = getelementptr [4 x i8], ptr %i.pt, i64 %i.pp
  %i.px = getelementptr i8, ptr %i.pw, i64 -4
  %i.py = load i32, ptr %i.px, align 4, !tbaa !43
  %i.pz = getelementptr [4 x i8], ptr %i.pv, i64 %i.mx
  %i.qa = getelementptr i8, ptr %i.pz, i64 -4
  store i32 %i.py, ptr %i.qa, align 8, !tbaa !43
  %i.qb = add nuw nsw i64 %.0211.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %._crit_edge.i.epil, !llvm.loop !198

._crit_edge:                                      ; preds = %._crit_edge.loopexit2.unr-lcssa, %._crit_edge.i.epil, %"_ZZN3jxl6N_AVX211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us", %.lr.ph212.split, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 0

._crit_edge.i:                                    ; preds = %._crit_edge.i, %.lr.ph212.split.split.new
  %.0211 = phi i64 [ 0, %.lr.ph212.split.split.new ], [ %i.rt, %._crit_edge.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph212.split.split.new ], [ %niter.next.3, %._crit_edge.i ]
  %i.qc = add nuw nsw i64 %.0211, %i.f            ; 2 uses
  %i.qd = mul i64 %i.mm, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.qd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qe, i64 64) ]
  %i.qf = mul i64 %i.ms, %i.qc
  %i.qg = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.qf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qg, i64 64) ]
  %i.qh = getelementptr [4 x i8], ptr %i.qe, i64 %i.pp
  %i.qi = getelementptr i8, ptr %i.qh, i64 -4
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !43
  %i.qk = getelementptr [4 x i8], ptr %i.qg, i64 %i.mx
  %i.ql = getelementptr i8, ptr %i.qk, i64 -4
  store i32 %i.qj, ptr %i.ql, align 8, !tbaa !43
  %i.qm = or disjoint i64 %.0211, 1
  %i.qn = add nuw nsw i64 %i.qm, %i.f             ; 2 uses
  %i.qo = mul i64 %i.mm, %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.qo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qp, i64 64) ]
  %i.qq = mul i64 %i.ms, %i.qn
  %i.qr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.qq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qr, i64 64) ]
  %i.qs = getelementptr [4 x i8], ptr %i.qp, i64 %i.pp
  %i.qt = getelementptr i8, ptr %i.qs, i64 -4
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !43
  %i.qv = getelementptr [4 x i8], ptr %i.qr, i64 %i.mx
  %i.qw = getelementptr i8, ptr %i.qv, i64 -4
  store i32 %i.qu, ptr %i.qw, align 8, !tbaa !43
  %i.qx = or disjoint i64 %.0211, 2
  %i.qy = add nuw nsw i64 %i.qx, %i.f             ; 2 uses
  %i.qz = mul i64 %i.mm, %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.qz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ra, i64 64) ]
  %i.rb = mul i64 %i.ms, %i.qy
  %i.rc = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.rb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.rc, i64 64) ]
  %i.rd = getelementptr [4 x i8], ptr %i.ra, i64 %i.pp
  %i.re = getelementptr i8, ptr %i.rd, i64 -4
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !43
  %i.rg = getelementptr [4 x i8], ptr %i.rc, i64 %i.mx
  %i.rh = getelementptr i8, ptr %i.rg, i64 -4
  store i32 %i.rf, ptr %i.rh, align 8, !tbaa !43
  %i.ri = or disjoint i64 %.0211, 3
  %i.rj = add nuw nsw i64 %i.ri, %i.f             ; 2 uses
  %i.rk = mul i64 %i.mm, %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.rk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.rl, i64 64) ]
  %i.rm = mul i64 %i.ms, %i.rj
  %i.rn = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.rm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.rn, i64 64) ]
  %i.ro = getelementptr [4 x i8], ptr %i.rl, i64 %i.pp
  %i.rp = getelementptr i8, ptr %i.ro, i64 -4
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !43
  %i.rr = getelementptr [4 x i8], ptr %i.rn, i64 %i.mx
  %i.rs = getelementptr i8, ptr %i.rr, i64 -4
  store i32 %i.rq, ptr %i.rs, align 8, !tbaa !43
  %i.rt = add nuw nsw i64 %.0211, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit2.unr-lcssa, label %._crit_edge.i, !llvm.loop !197
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm"(ptr nofree readnone captures(none) %0, i64 %1) #9 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !57, !align !58
  %i.e = tail call fastcc i32 @"_ZZN3jxl6N_AVX211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEjm"(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %1) #24
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 1, ptr %i.a seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i32 @"_ZZN3jxl6N_AVX211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEjm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = shl i32 %1, 6
  %i.b = zext i32 %i.a to i64                     ; 7 uses
  %i.c = add i32 %1, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 6
  %i.f = load ptr, ptr %0, align 8, !tbaa !216, !nonnull !57, !align !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.e)
  %i.i = sub nsw i64 %.sroa.speculated, %i.b      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217, !nonnull !57, !align !58 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %.not106 = icmp eq i64 %i.m, 0
  br i1 %.not106, label %._crit_edge, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = icmp ugt i64 %i.i, 7
  br label %bb.b

.loopexit:                                        ; preds = %_ZN3jxl14SmoothTendencyElll.exit, %.preheader
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !217, !nonnull !57, !align !58 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26
  %i.s = icmp ult i64 %i.aj, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !212

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph105, %.loopexit
  %i.t = phi ptr [ %i.k, %.lr.ph105 ], [ %i.p, %.loopexit ] ; 2 uses
  %.0104 = phi i64 [ 0, %.lr.ph105 ], [ %i.aj, %.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !60
  %i.y = mul i64 %i.x, %.0104
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.z, i64 64) ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.b ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !216, !nonnull !57, !align !58 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !60 ; 2 uses
  %i.ag = mul i64 %i.af, %.0104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.b ; 3 uses
  %i.aj = add nuw i64 %.0104, 1                   ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.am = icmp ult i64 %i.aj, %i.al
  %i.an = select i1 %i.am, i64 %i.aj, i64 %.0104
  %i.ao = mul i64 %i.an, %i.af
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ao ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.b ; 2 uses
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !218, !nonnull !57, !align !58 ; 2 uses
  %i.as = shl i64 %.0104, 1                       ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !59 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !60 ; 3 uses
  %i.ax = mul i64 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 64) ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.b ; 2 uses
  %i.ba = or disjoint i64 %i.as, 1
  %i.bb = mul i64 %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bc, i64 64) ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.b ; 2 uses
  %.not = icmp eq i64 %.0104, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = add i64 %i.as, -1
  %i.bf = mul i64 %i.aw, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bi = phi ptr [ %i.bh, %bb.c ], [ %i.ai, %bb.b ] ; 2 uses
  br i1 %i.o, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.d
  %.062.lcssa = phi i64 [ 0, %bb.d ], [ %i.dp, %.lr.ph ] ; 2 uses
  %i.bj = icmp ult i64 %.062.lcssa, %i.i
  br i1 %i.bj, label %.lr.ph103, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.062101 = phi i64 [ %i.dp, %.lr.ph ], [ 0, %bb.d ] ; 7 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.062101
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.062101
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.062101
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.062101
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.062101
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.062101
  %i.bq = load <8 x i32>, ptr %i.bl, align 32, !tbaa !94 ; 5 uses
  %i.br = load <8 x i32>, ptr %i.bm, align 32, !tbaa !94 ; 4 uses
  %i.bs = load <8 x i32>, ptr %i.bn, align 32, !tbaa !94 ; 4 uses
  %i.bt = sub <8 x i32> %i.bs, %i.bq              ; 2 uses
  %i.bu = sub <8 x i32> %i.bq, %i.br              ; 2 uses
  %i.bv = xor <8 x i32> %i.bt, %i.bu
  %i.bw = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bt, i1 false) ; 3 uses
  %i.bx = bitcast <8 x i32> %i.bw to <4 x i64>
  %i.by = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bu, i1 false)
  %i.bz = sub <8 x i32> %i.bs, %i.br
  %i.ca = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bz, i1 false)
  %i.cb = shl <4 x i64> %i.bx, splat (i64 32)
  %i.cc = ashr exact <4 x i64> %i.cb, splat (i64 32)
  %i.cd = mul nsw <4 x i64> %i.cc, splat (i64 1431655766)
  %i.ce = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %i.cf = bitcast <8 x i32> %i.ce to <4 x i64>
  %i.cg = shl <4 x i64> %i.cf, splat (i64 32)
  %i.ch = ashr exact <4 x i64> %i.cg, splat (i64 32)
  %i.ci = mul nsw <4 x i64> %i.ch, splat (i64 1431655766)
  %i.cj = bitcast <4 x i64> %i.cd to <8 x float>
  %i.ck = bitcast <4 x i64> %i.ci to <8 x float>
  %i.cl = shufflevector <8 x float> %i.cj, <8 x float> %i.ck, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.cm = add nuw <8 x i32> %i.ca, splat (i32 2)
  %i.cn = bitcast <8 x float> %i.cl to <8 x i32>
  %i.co = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.cp = add <8 x i32> %i.cm, %i.co
  %i.cq = ashr <8 x i32> %i.cp, splat (i32 2)     ; 3 uses
  %i.cr = icmp eq <8 x i32> %i.bs, %i.bq
  %i.cs = icmp eq <8 x i32> %i.bq, %i.br
  %.not99 = or <8 x i1> %i.cs, %i.cr
  %i.ct = shl <8 x i32> %i.bw, splat (i32 1)      ; 2 uses
  %i.cu = and <8 x i32> %i.cq, splat (i32 1)
  %i.cv = or disjoint <8 x i32> %i.cu, %i.ct
  %i.cw = icmp sgt <8 x i32> %i.cq, %i.cv
  %i.cx = or disjoint <8 x i32> %i.ct, splat (i32 1)
  %i.cy = select <8 x i1> %i.cw, <8 x i32> %i.cx, <8 x i32> %i.cq ; 3 uses
  %i.cz = shl <8 x i32> %i.by, splat (i32 1)      ; 2 uses
  %i.da = and <8 x i32> %i.cy, splat (i32 1)
  %i.db = add <8 x i32> %i.da, %i.cy
  %i.dc = icmp sgt <8 x i32> %i.db, %i.cz
  %i.dd = select <8 x i1> %i.dc, <8 x i32> %i.cz, <8 x i32> %i.cy ; 2 uses
  %i.de = icmp sgt <8 x i32> %i.br, %i.bs
  %i.df = sub <8 x i32> zeroinitializer, %i.dd
  %i.dg = select <8 x i1> %i.de, <8 x i32> %i.df, <8 x i32> %i.dd
  %i.dh = load <8 x i32>, ptr %i.bk, align 32, !tbaa !94
  %isnotneg = icmp sgt <8 x i32> %i.bv, splat (i32 -1)
  %narrow = select <8 x i1> %.not99, <8 x i1> splat (i1 true), <8 x i1> %isnotneg
  %i.di = select <8 x i1> %narrow, <8 x i32> %i.dg, <8 x i32> zeroinitializer
  %i.dj = add <8 x i32> %i.di, %i.dh              ; 3 uses
  %i.dk = lshr <8 x i32> %i.dj, splat (i32 31)
  %i.dl = add <8 x i32> %i.dk, %i.dj
  %i.dm = ashr <8 x i32> %i.dl, splat (i32 1)
  %i.dn = add <8 x i32> %i.dm, %i.bq              ; 2 uses
  store <8 x i32> %i.dn, ptr %i.bo, align 32, !tbaa !94
  %i.do = sub <8 x i32> %i.dn, %i.dj
end_hunk_1
begin_hunk_2_@"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE211InvHSqueezeERNS_5ImageEjjPS0_E3$_1EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm":bb.a
  %i.sr = shufflevector <4 x i32> %i.sq, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ss = add <4 x i32> %i.sp, %i.sr
  %i.st = ashr <4 x i32> %i.ss, splat (i32 2)     ; 3 uses
  %i.su = icmp eq <4 x i32> %i.rq, %i.rn
  %i.sv = icmp eq <4 x i32> %i.rn, %i.rp
  %.not209.1.i = or <4 x i1> %i.sv, %i.su
  %i.sw = shl <4 x i32> %.inner30, splat (i32 1)  ; 2 uses
  %i.sx = and <4 x i32> %i.st, splat (i32 1)
  %i.sy = or disjoint <4 x i32> %i.sx, %i.sw
  %i.sz = icmp sgt <4 x i32> %i.st, %i.sy
  %i.ta = or disjoint <4 x i32> %i.sw, splat (i32 1)
  %i.tb = select <4 x i1> %i.sz, <4 x i32> %i.ta, <4 x i32> %i.st ; 3 uses
  %i.tc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rs, i1 false)
  %i.td = shl <4 x i32> %i.tc, splat (i32 1)      ; 2 uses
  %i.te = and <4 x i32> %i.tb, splat (i32 1)
  %i.tf = add <4 x i32> %i.te, %i.tb
  %.not205.1.i = icmp sgt <4 x i32> %i.tf, %i.td
  %i.tg = select <4 x i1> %.not205.1.i, <4 x i32> %i.td, <4 x i32> %i.tb ; 2 uses
  %.not206.1.i = icmp sgt <4 x i32> %i.rp, %i.rq
  %i.th = sub <4 x i32> zeroinitializer, %i.tg
  %i.ti = select <4 x i1> %.not206.1.i, <4 x i32> %i.th, <4 x i32> %i.tg
  %i.tj = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.tk = load <4 x i32>, ptr %i.tj, align 16, !tbaa !94, !alias.scope !323
  %isnotneg.1.i = icmp sgt <4 x i32> %.inner27, splat (i32 -1)
  %narrow.1.i = select <4 x i1> %.not209.1.i, <4 x i1> splat (i1 true), <4 x i1> %isnotneg.1.i
  %i.tl = select <4 x i1> %narrow.1.i, <4 x i32> %i.ti, <4 x i32> zeroinitializer
  %i.tm = add <4 x i32> %i.tl, %i.tk              ; 3 uses
  %i.tn = lshr <4 x i32> %i.tm, splat (i32 31)
  %i.to = add <4 x i32> %i.tn, %i.tm
  %i.tp = ashr <4 x i32> %i.to, splat (i32 1)
  %i.tq = add <4 x i32> %i.tp, %i.rn              ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store <4 x i32> %i.tq, ptr %i.tr, align 16, !tbaa !94, !alias.scope !324
  %i.ts = sub <4 x i32> %i.tq, %i.tm
  %i.tt = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  store <4 x i32> %i.ts, ptr %i.tt, align 16, !tbaa !94, !alias.scope !325
  %exitcond.not.i = icmp eq i64 %i.pa, 8
  br i1 %exitcond.not.i, label %.preheader211.preheader.i, label %_ZN3jxl6N_SSE213FastUnsqueezeEPKiS2_S2_S2_PiS3_.exit.preheader.i, !llvm.loop !284

.loopexit.i:                                      ; preds = %.preheader211.preheader.i, %bb.b
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.or, %.preheader211.preheader.i ] ; 2 uses
  %.not236.i = icmp eq i64 %i.m, %i.j
  br i1 %.not236.i, label %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit", label %.lr.ph231.i

.lr.ph231.i:                                      ; preds = %.loopexit.i
  %i.tu = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !326, !nonnull !57, !align !58 ; 3 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !328, !nonnull !57, !align !58 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 40
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !59
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !60
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !329, !nonnull !57, !align !58 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 40
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !59 ; 6 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !60 ; 6 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !330, !nonnull !57, !align !58 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 40
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !59 ; 6 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !60 ; 6 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.tw, i64 56
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !25 ; 2 uses
  %i.up = icmp ult i64 %.1.i, %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ui, i64 56
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !25 ; 7 uses
  %i.us = and i64 %i.ur, 1
  %.not.i.i = icmp eq i64 %i.us, 0                ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uc, i64 56 ; 2 uses
  br i1 %i.up, label %.lr.ph231.split.us.i, label %.lr.ph231.split.i

.lr.ph231.split.us.i:                             ; preds = %.lr.ph231.i
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !25 ; 2 uses
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us.i", %.lr.ph231.split.us.i
  %.0230.us.i = phi i64 [ 0, %.lr.ph231.split.us.i ], [ %i.xi, %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us.i" ] ; 2 uses
  %i.uv = add nuw nsw i64 %.0230.us.i, %i.j       ; 3 uses
  %i.uw = mul i64 %i.uv, %i.ua
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.uw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ux, i64 64) ]
  %i.uy = mul i64 %i.uv, %i.ug
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.uy ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.uz, i64 64) ]
  %i.va = mul i64 %i.uv, %i.um
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.va ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.vb, i64 64) ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN3jxl14SmoothTendencyElll.exit.i.us.i, %.lr.ph.i.us.i
  %.038.i.us.i = phi i64 [ %.1.i, %.lr.ph.i.us.i ], [ %i.vi, %_ZN3jxl14SmoothTendencyElll.exit.i.us.i ] ; 6 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %.038.i.us.i
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !43
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %.038.i.us.i
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !43
  %i.vh = sext i32 %i.vg to i64                   ; 13 uses
  %i.vi = add nuw i64 %.038.i.us.i, 1             ; 4 uses
  %i.vj = icmp ult i64 %i.vi, %i.uu
  br i1 %i.vj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.vi
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !43
  %i.vm = sext i32 %i.vl to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.vn = phi i64 [ %i.vm, %bb.d ], [ %i.vh, %bb.c ] ; 6 uses
  %.not36.i.us.i = icmp eq i64 %.038.i.us.i, 0
  br i1 %.not36.i.us.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.idx.i85.us.i = shl i64 %.038.i.us.i, 3
  %i.vo = getelementptr i8, ptr %i.vb, i64 %.idx.i85.us.i
  %i.vp = getelementptr i8, ptr %i.vo, i64 -4
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !43
  %i.vr = sext i32 %i.vq to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.vs = phi i64 [ %i.vr, %bb.f ], [ %i.vh, %bb.e ] ; 6 uses
  %.not.i.i.us.i = icmp slt i64 %i.vs, %i.vh
  %.not49.i.i.us.i = icmp sgt i64 %i.vn, %i.vh
  %or.cond.i.i.us.i = or i1 %.not49.i.i.us.i, %.not.i.i.us.i
  br i1 %or.cond.i.i.us.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.vt = shl nsw i64 %i.vs, 2
  %.neg52.i.i.us.i = mul nsw i64 %i.vn, -3
  %reass.sub = sub nsw i64 %.neg52.i.i.us.i, %i.vh
  %i.vu = add nsw i64 %reass.sub, 6
  %i.vv = add nsw i64 %i.vu, %i.vt
  %i.vw = sdiv i64 %i.vv, 12                      ; 2 uses
  %i.vx = and i64 %i.vw, -2
  %i.vy = sub nsw i64 %i.vs, %i.vh
  %i.vz = shl nuw nsw i64 %i.vy, 1                ; 2 uses
  %i.wa = icmp sgt i64 %i.vx, %i.vz
  %i.wb = or disjoint i64 %i.vz, 1
  %spec.select.i.i.us.i = select i1 %i.wa, i64 %i.wb, i64 %i.vw ; 3 uses
  %i.wc = and i64 %spec.select.i.i.us.i, 1
  %i.wd = add nsw i64 %i.wc, %spec.select.i.i.us.i
  %i.we = sub nsw i64 %i.vh, %i.vn
  %i.wf = shl nuw nsw i64 %i.we, 1                ; 2 uses
  %i.wg = icmp sgt i64 %i.wd, %i.wf
  %spec.select55.i.i.us.i = select i1 %i.wg, i64 %i.wf, i64 %spec.select.i.i.us.i
  br label %_ZN3jxl14SmoothTendencyElll.exit.i.us.i

bb.i:                                             ; preds = %bb.g
  %.not50.i.i.us.i = icmp sgt i64 %i.vs, %i.vh
  %.not51.i.i.us.i = icmp slt i64 %i.vn, %i.vh
  %or.cond53.i.i.us.i = or i1 %.not51.i.i.us.i, %.not50.i.i.us.i
  br i1 %or.cond53.i.i.us.i, label %_ZN3jxl14SmoothTendencyElll.exit.i.us.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.wh = shl nsw i64 %i.vs, 2
  %.neg.i.i.us.i = mul nsw i64 %i.vn, -3
  %reass.sub6 = sub nsw i64 %.neg.i.i.us.i, %i.vh
  %i.wi = add nsw i64 %reass.sub6, -6
  %i.wj = add nsw i64 %i.wi, %i.wh
  %i.wk = sdiv i64 %i.wj, 12                      ; 3 uses
  %i.wl = and i64 %i.wk, 1
  %i.wm = add nsw i64 %i.wl, %i.wk
  %i.wn = sub nsw i64 %i.vs, %i.vh
  %i.wo = shl nsw i64 %i.wn, 1                    ; 2 uses
  %i.wp = icmp slt i64 %i.wm, %i.wo
  %i.wq = add nsw i64 %i.wo, -1
  %spec.select54.i.i.us.i = select i1 %i.wp, i64 %i.wq, i64 %i.wk ; 2 uses
  %i.wr = and i64 %spec.select54.i.i.us.i, -2
  %i.ws = sub nsw i64 %i.vh, %i.vn
  %i.wt = shl nsw i64 %i.ws, 1                    ; 2 uses
  %i.wu = icmp slt i64 %i.wr, %i.wt
  %spec.select56.i.i.us.i = select i1 %i.wu, i64 %i.wt, i64 %spec.select54.i.i.us.i
  br label %_ZN3jxl14SmoothTendencyElll.exit.i.us.i

_ZN3jxl14SmoothTendencyElll.exit.i.us.i:          ; preds = %bb.j, %bb.i, %bb.h
  %.2.i.i.us.i = phi i64 [ 0, %bb.i ], [ %spec.select56.i.i.us.i, %bb.j ], [ %spec.select55.i.i.us.i, %bb.h ]
  %i.wv = add nsw i64 %.2.i.i.us.i, %i.ve         ; 2 uses
  %i.ww = sdiv i64 %i.wv, 2
  %i.wx = add nsw i64 %i.ww, %i.vh                ; 2 uses
  %i.wy = trunc i64 %i.wx to i32
  %.idx37.i.us.i = shl i64 %.038.i.us.i, 3
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.idx37.i.us.i ; 2 uses
  store i32 %i.wy, ptr %i.wz, align 8, !tbaa !43
  %i.xa = sub nsw i64 %i.wx, %i.wv
  %i.xb = trunc i64 %i.xa to i32
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  store i32 %i.xb, ptr %i.xc, align 4, !tbaa !43
  %exitcond.not.i.us.i = icmp eq i64 %i.vi, %i.uo
  br i1 %exitcond.not.i.us.i, label %._crit_edge.i.loopexit.us.i, label %bb.c, !llvm.loop !285

bb.k:                                             ; preds = %._crit_edge.i.loopexit.us.i
  %i.xd = getelementptr [4 x i8], ptr %i.uz, i64 %i.uu
  %i.xe = getelementptr i8, ptr %i.xd, i64 -4
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !43
  %i.xg = getelementptr [4 x i8], ptr %i.vb, i64 %i.ur
  %i.xh = getelementptr i8, ptr %i.xg, i64 -4
  store i32 %i.xf, ptr %i.xh, align 8, !tbaa !43
  br label %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us.i"

"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us.i": ; preds = %._crit_edge.i.loopexit.us.i, %bb.k
  %i.xi = add nuw nsw i64 %.0230.us.i, 1          ; 2 uses
  %exitcond247.not.i = icmp eq i64 %i.xi, %.sroa.speculated.i
  br i1 %exitcond247.not.i, label %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit", label %.lr.ph.i.us.i, !llvm.loop !286

._crit_edge.i.loopexit.us.i:                      ; preds = %_ZN3jxl14SmoothTendencyElll.exit.i.us.i
  br i1 %.not.i.i, label %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us.i", label %bb.k

.lr.ph231.split.i:                                ; preds = %.lr.ph231.i
  br i1 %.not.i.i, label %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit", label %.lr.ph231.split.split.i

.lr.ph231.split.split.i:                          ; preds = %.lr.ph231.split.i
  %i.xj = load i64, ptr %i.ut, align 8, !tbaa !25 ; 5 uses
  %xtraiter = and i64 %.sroa.speculated.i, 3      ; 3 uses
  %i.xk = icmp ult i64 %i.n, 4
  br i1 %i.xk, label %._crit_edge.i.i.epil.preheader, label %.lr.ph231.split.split.i.new

.lr.ph231.split.split.i.new:                      ; preds = %.lr.ph231.split.split.i
  %unroll_iter = and i64 %.sroa.speculated.i, 12
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i, %.lr.ph231.split.split.i.new
  %.0230.i = phi i64 [ 0, %.lr.ph231.split.split.i.new ], [ %i.zc, %._crit_edge.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph231.split.split.i.new ], [ %niter.next.3, %._crit_edge.i.i ]
  %i.xl = add nuw nsw i64 %.0230.i, %i.j          ; 2 uses
  %i.xm = mul i64 %i.xl, %i.ug
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.xm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xn, i64 64) ]
  %i.xo = mul i64 %i.xl, %i.um
  %i.xp = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.xo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xp, i64 64) ]
  %i.xq = getelementptr [4 x i8], ptr %i.xn, i64 %i.xj
  %i.xr = getelementptr i8, ptr %i.xq, i64 -4
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !43
  %i.xt = getelementptr [4 x i8], ptr %i.xp, i64 %i.ur
  %i.xu = getelementptr i8, ptr %i.xt, i64 -4
  store i32 %i.xs, ptr %i.xu, align 8, !tbaa !43
  %i.xv = or disjoint i64 %.0230.i, 1
  %i.xw = add nuw nsw i64 %i.xv, %i.j             ; 2 uses
  %i.xx = mul i64 %i.xw, %i.ug
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.xx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xy, i64 64) ]
  %i.xz = mul i64 %i.xw, %i.um
  %i.ya = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.xz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ya, i64 64) ]
  %i.yb = getelementptr [4 x i8], ptr %i.xy, i64 %i.xj
  %i.yc = getelementptr i8, ptr %i.yb, i64 -4
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !43
  %i.ye = getelementptr [4 x i8], ptr %i.ya, i64 %i.ur
  %i.yf = getelementptr i8, ptr %i.ye, i64 -4
  store i32 %i.yd, ptr %i.yf, align 8, !tbaa !43
  %i.yg = or disjoint i64 %.0230.i, 2
  %i.yh = add nuw nsw i64 %i.yg, %i.j             ; 2 uses
  %i.yi = mul i64 %i.yh, %i.ug
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.yi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yj, i64 64) ]
  %i.yk = mul i64 %i.yh, %i.um
  %i.yl = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.yk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yl, i64 64) ]
  %i.ym = getelementptr [4 x i8], ptr %i.yj, i64 %i.xj
  %i.yn = getelementptr i8, ptr %i.ym, i64 -4
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !43
  %i.yp = getelementptr [4 x i8], ptr %i.yl, i64 %i.ur
  %i.yq = getelementptr i8, ptr %i.yp, i64 -4
  store i32 %i.yo, ptr %i.yq, align 8, !tbaa !43
  %i.yr = or disjoint i64 %.0230.i, 3
  %i.ys = add nuw nsw i64 %i.yr, %i.j             ; 2 uses
  %i.yt = mul i64 %i.ys, %i.ug
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.yt ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yu, i64 64) ]
  %i.yv = mul i64 %i.ys, %i.um
  %i.yw = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.yv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yw, i64 64) ]
  %i.yx = getelementptr [4 x i8], ptr %i.yu, i64 %i.xj
  %i.yy = getelementptr i8, ptr %i.yx, i64 -4
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !43
  %i.za = getelementptr [4 x i8], ptr %i.yw, i64 %i.ur
  %i.zb = getelementptr i8, ptr %i.za, i64 -4
  store i32 %i.yz, ptr %i.zb, align 8, !tbaa !43
  %i.zc = add nuw nsw i64 %.0230.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit.loopexit39.unr-lcssa", label %._crit_edge.i.i, !llvm.loop !286

"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit.loopexit39.unr-lcssa": ; preds = %._crit_edge.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit", label %._crit_edge.i.i.epil.preheader

._crit_edge.i.i.epil.preheader:                   ; preds = %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit.loopexit39.unr-lcssa", %.lr.ph231.split.split.i
  %.0230.i.epil.init = phi i64 [ 0, %.lr.ph231.split.split.i ], [ %i.zc, %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit.loopexit39.unr-lcssa" ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %._crit_edge.i.i.epil

._crit_edge.i.i.epil:                             ; preds = %._crit_edge.i.i.epil, %._crit_edge.i.i.epil.preheader
  %.0230.i.epil = phi i64 [ %.0230.i.epil.init, %._crit_edge.i.i.epil.preheader ], [ %i.zn, %._crit_edge.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %._crit_edge.i.i.epil.preheader ], [ %epil.iter.next, %._crit_edge.i.i.epil ]
  %i.zd = add nuw nsw i64 %.0230.i.epil, %i.j     ; 2 uses
  %i.ze = mul i64 %i.zd, %i.ug
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.ze ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zf, i64 64) ]
  %i.zg = mul i64 %i.zd, %i.um
  %i.zh = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.zg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zh, i64 64) ]
  %i.zi = getelementptr [4 x i8], ptr %i.zf, i64 %i.xj
  %i.zj = getelementptr i8, ptr %i.zi, i64 -4
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !43
  %i.zl = getelementptr [4 x i8], ptr %i.zh, i64 %i.ur
  %i.zm = getelementptr i8, ptr %i.zl, i64 -4
  store i32 %i.zk, ptr %i.zm, align 8, !tbaa !43
  %i.zn = add nuw nsw i64 %.0230.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit", label %._crit_edge.i.i.epil, !llvm.loop !287

"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit": ; preds = %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit.loopexit39.unr-lcssa", %._crit_edge.i.i.epil, %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEmm.exit.us.i", %.loopexit.i, %.lr.ph231.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.l

bb.l:                                             ; preds = %"_ZZN3jxl6N_SSE211InvHSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_1clEjm.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm"(ptr nofree readnone captures(none) %0, i64 %1) #9 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE211InvVSqueezeERNS_5ImageEjjPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %"_ZZN3jxl6N_SSE211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEjm.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347, !nonnull !57, !align !58 ; 4 uses
  %i.e = shl i32 %1, 6
  %i.f = zext i32 %i.e to i64                     ; 7 uses
  %i.g = add i32 %1, 1
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 6
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !349, !nonnull !57, !align !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.i)
  %i.m = sub nsw i64 %.sroa.speculated.i, %i.f    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !350, !nonnull !57, !align !58 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26
  %.not185.i = icmp eq i64 %i.q, 0
  br i1 %.not185.i, label %"_ZZN3jxl6N_SSE211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEjm.exit", label %.lr.ph184.i

.lr.ph184.i:                                      ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = icmp ugt i64 %i.m, 7
  br label %bb.c

.loopexit.i:                                      ; preds = %_ZN3jxl14SmoothTendencyElll.exit.i, %.preheader.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !350, !nonnull !57, !align !58 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26
  %i.w = icmp ult i64 %i.an, %i.v
  br i1 %i.w, label %bb.c, label %"_ZZN3jxl6N_SSE211InvVSqueezeERNS_5ImageEjjPNS_10ThreadPoolEENK3$_0clEjm.exit", !llvm.loop !331

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph184.i
  %i.x = phi ptr [ %i.o, %.lr.ph184.i ], [ %i.t, %.loopexit.i ] ; 2 uses
  %.0183.i = phi i64 [ 0, %.lr.ph184.i ], [ %i.an, %.loopexit.i ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ac = mul i64 %i.ab, %.0183.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 64) ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.f ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !349, !nonnull !57, !align !58 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !60 ; 2 uses
  %i.ak = mul i64 %i.aj, %.0183.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.f ; 3 uses
  %i.an = add nuw i64 %.0183.i, 1                 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.aq = icmp ult i64 %i.an, %i.ap
  %i.ar = select i1 %i.aq, i64 %i.an, i64 %.0183.i
  %i.as = mul i64 %i.ar, %i.aj
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.as ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.f ; 2 uses
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !351, !nonnull !57, !align !58 ; 2 uses
  %i.aw = shl i64 %.0183.i, 1                     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !60 ; 3 uses
  %i.bb = mul i64 %i.ba, %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bc, i64 64) ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.f ; 2 uses
  %i.be = or disjoint i64 %i.aw, 1
  %i.bf = mul i64 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.f ; 2 uses
  %.not.i = icmp eq i64 %.0183.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = add i64 %i.aw, -1
  %i.bj = mul i64 %i.ba, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = phi ptr [ %i.bl, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  br i1 %i.s, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.e
  %.062.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.gg, %.lr.ph.i ] ; 2 uses
  %i.bn = icmp ult i64 %.062.lcssa.i, %i.m
  br i1 %i.bn, label %.lr.ph182.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.062180.i = phi i64 [ %i.gg, %.lr.ph.i ], [ 0, %bb.e ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.062180.i ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.062180.i ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.062180.i ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.062180.i ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.062180.i ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.062180.i ; 2 uses
  %i.bu = load <4 x i32>, ptr %i.bp, align 32, !tbaa !94, !alias.scope !352 ; 5 uses
  %i.bv = load <4 x i32>, ptr %i.bq, align 32, !tbaa !94, !alias.scope !353 ; 4 uses
  %i.bw = load <4 x i32>, ptr %i.br, align 16, !tbaa !94, !alias.scope !354 ; 4 uses
  %i.bx = sub <4 x i32> %i.bw, %i.bu              ; 2 uses
  %i.by = sub <4 x i32> %i.bu, %i.bv              ; 2 uses
  %.inner = xor <4 x i32> %i.bx, %i.by
  %.inner10 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bx, i1 false) ; 4 uses
  %i.bz = sub <4 x i32> %i.bw, %i.bv
  %i.ca = ashr <4 x i32> %.inner10, splat (i32 31)
  %i.cb = bitcast <4 x i32> %i.ca to <2 x i64>
  %i.cc = shl <2 x i64> %i.cb, splat (i64 32)
  %i.cd = and <2 x i64> %i.cc, splat (i64 6148914694099828736)
  %i.ce = bitcast <4 x i32> %.inner10 to <2 x i64>
  %i.cf = and <2 x i64> %i.ce, splat (i64 4294967295)
  %i.cg = mul nuw nsw <2 x i64> %i.cf, splat (i64 1431655766)
  %i.ch = sub nsw <2 x i64> %i.cg, %i.cd
  %i.ci = shufflevector <4 x i32> %.inner10, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.cj = ashr <4 x i32> %i.ci, splat (i32 31)
  %i.ck = bitcast <4 x i32> %i.cj to <2 x i64>
  %i.cl = shl <2 x i64> %i.ck, splat (i64 32)
  %i.cm = and <2 x i64> %i.cl, splat (i64 6148914694099828736)
  %i.cn = bitcast <4 x i32> %i.ci to <2 x i64>
  %i.co = and <2 x i64> %i.cn, splat (i64 4294967295)
  %i.cp = mul nuw nsw <2 x i64> %i.co, splat (i64 1431655766)
  %i.cq = sub nsw <2 x i64> %i.cp, %i.cm
  %i.cr = bitcast <2 x i64> %i.ch to <4 x float>
  %i.cs = bitcast <2 x i64> %i.cq to <4 x float>
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cu = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bz, i1 false)
  %i.cv = add nuw <4 x i32> %i.cu, splat (i32 2)
  %i.cw = bitcast <4 x float> %i.ct to <4 x i32>
  %i.cx = shufflevector <4 x i32> %i.cw, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cy = add <4 x i32> %i.cv, %i.cx
  %i.cz = ashr <4 x i32> %i.cy, splat (i32 2)     ; 3 uses
  %i.da = icmp eq <4 x i32> %i.bw, %i.bu
  %i.db = icmp eq <4 x i32> %i.bu, %i.bv
  %.not178.i = or <4 x i1> %i.db, %i.da
  %i.dc = shl <4 x i32> %.inner10, splat (i32 1)  ; 2 uses
  %i.dd = and <4 x i32> %i.cz, splat (i32 1)
  %i.de = or disjoint <4 x i32> %i.dd, %i.dc
  %i.df = icmp sgt <4 x i32> %i.cz, %i.de
  %i.dg = or disjoint <4 x i32> %i.dc, splat (i32 1)
  %i.dh = select <4 x i1> %i.df, <4 x i32> %i.dg, <4 x i32> %i.cz ; 3 uses
  %i.di = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.by, i1 false)
  %i.dj = shl <4 x i32> %i.di, splat (i32 1)      ; 2 uses
  %i.dk = and <4 x i32> %i.dh, splat (i32 1)
  %i.dl = add <4 x i32> %i.dk, %i.dh
  %.not174.i = icmp sgt <4 x i32> %i.dl, %i.dj
  %i.dm = select <4 x i1> %.not174.i, <4 x i32> %i.dj, <4 x i32> %i.dh ; 2 uses
  %.not175.i = icmp sgt <4 x i32> %i.bv, %i.bw
  %i.dn = sub <4 x i32> zeroinitializer, %i.dm
  %i.do = select <4 x i1> %.not175.i, <4 x i32> %i.dn, <4 x i32> %i.dm
  %i.dp = load <4 x i32>, ptr %i.bo, align 32, !tbaa !94, !alias.scope !355
  %isnotneg.i = icmp sgt <4 x i32> %.inner, splat (i32 -1)
  %narrow.i = select <4 x i1> %.not178.i, <4 x i1> splat (i1 true), <4 x i1> %isnotneg.i
  %i.dq = select <4 x i1> %narrow.i, <4 x i32> %i.do, <4 x i32> zeroinitializer
  %i.dr = add <4 x i32> %i.dq, %i.dp              ; 3 uses
  %i.ds = lshr <4 x i32> %i.dr, splat (i32 31)
  %i.dt = add <4 x i32> %i.ds, %i.dr
  %i.du = ashr <4 x i32> %i.dt, splat (i32 1)
  %i.dv = add <4 x i32> %i.du, %i.bu              ; 2 uses
  store <4 x i32> %i.dv, ptr %i.bs, align 32, !tbaa !94, !alias.scope !356
  %i.dw = sub <4 x i32> %i.dv, %i.dr
  store <4 x i32> %i.dw, ptr %i.bt, align 32, !tbaa !94, !alias.scope !357
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.dy = load <4 x i32>, ptr %i.dx, align 16, !tbaa !94, !alias.scope !352 ; 5 uses
end_hunk_2
