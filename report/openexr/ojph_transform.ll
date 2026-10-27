Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local16gen_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.if = getelementptr inbounds nuw i8, ptr %.2146.i.ph, i64 4
  br label %.lr.ph148.i.prol.loopexit

.lr.ph148.i.prol.loopexit:                        ; preds = %.lr.ph148.i.prol, %.lr.ph148.i.preheader460
  %.0112147.i.unr = phi i32 [ %.0112147.i.ph, %.lr.ph148.i.preheader460 ], [ %i.id, %.lr.ph148.i.prol ]
  %.2146.i.unr = phi ptr [ %.2146.i.ph, %.lr.ph148.i.preheader460 ], [ %i.if, %.lr.ph148.i.prol ]
  %.2119145.i.unr = phi ptr [ %.2119145.i.ph, %.lr.ph148.i.preheader460 ], [ %i.ie, %.lr.ph148.i.prol ]
  %i.ig = icmp eq i32 %.0112147.i.ph, 1
  br i1 %i.ig, label %.loopexit.i, label %.lr.ph148.i

.lr.ph148.i:                                      ; preds = %.lr.ph148.i.prol.loopexit, %.lr.ph148.i
  %.0112147.i = phi i32 [ %i.iy, %.lr.ph148.i ], [ %.0112147.i.unr, %.lr.ph148.i.prol.loopexit ]
  %.2146.i = phi ptr [ %i.ja, %.lr.ph148.i ], [ %.2146.i.unr, %.lr.ph148.i.prol.loopexit ] ; 4 uses
  %.2119145.i = phi ptr [ %i.iz, %.lr.ph148.i ], [ %.2119145.i.unr, %.lr.ph148.i.prol.loopexit ] ; 5 uses
  %i.ih = getelementptr inbounds i8, ptr %.2119145.i, i64 -4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !13
  %i.ij = load i32, ptr %.2119145.i, align 4, !tbaa !13
  %i.ik = add i32 %i.ii, %i.ij
  %i.il = sub i32 %i.ap, %i.ik
  %i.im = ashr i32 %i.il, %i.dj
  %i.in = load i32, ptr %.2146.i, align 4, !tbaa !13
  %i.io = sub nsw i32 %i.in, %i.im
  store i32 %i.io, ptr %.2146.i, align 4, !tbaa !13
  %i.ip = getelementptr inbounds nuw i8, ptr %.2119145.i, i64 4
  %i.iq = getelementptr inbounds nuw i8, ptr %.2146.i, i64 4 ; 2 uses
  %i.ir = load i32, ptr %.2119145.i, align 4, !tbaa !13
  %i.is = load i32, ptr %i.ip, align 4, !tbaa !13
  %i.it = add i32 %i.ir, %i.is
  %i.iu = sub i32 %i.ap, %i.it
  %i.iv = ashr i32 %i.iu, %i.dj
  %i.iw = load i32, ptr %i.iq, align 4, !tbaa !13
  %i.ix = sub nsw i32 %i.iw, %i.iv
  store i32 %i.ix, ptr %i.iq, align 4, !tbaa !13
  %i.iy = add nsw i32 %.0112147.i, -2             ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.2119145.i, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.2146.i, i64 8
  %.not129.i.1 = icmp eq i32 %i.iy, 0
  br i1 %.not129.i.1, label %.loopexit.i, label %.lr.ph148.i, !llvm.loop !232

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0111143.i = phi i32 [ %i.ju, %.lr.ph.i ], [ %.0111143.i.unr, %.lr.ph.i.prol.loopexit ]
  %.3142.i = phi ptr [ %i.jw, %.lr.ph.i ], [ %.3142.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.3120141.i = phi ptr [ %i.jv, %.lr.ph.i ], [ %.3120141.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.jb = getelementptr inbounds i8, ptr %.3120141.i, i64 -4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !13
  %i.jd = load i32, ptr %.3120141.i, align 4, !tbaa !13
  %i.je = add nsw i32 %i.jd, %i.jc
  %i.jf = mul nsw i32 %i.je, %i.am
  %i.jg = add nsw i32 %i.jf, %i.ap
  %i.jh = ashr i32 %i.jg, %i.dj
  %i.ji = load i32, ptr %.3142.i, align 4, !tbaa !13
  %i.jj = sub nsw i32 %i.ji, %i.jh
  store i32 %i.jj, ptr %.3142.i, align 4, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.3120141.i, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %.3142.i, i64 4 ; 2 uses
  %i.jm = load i32, ptr %.3120141.i, align 4, !tbaa !13
  %i.jn = load i32, ptr %i.jk, align 4, !tbaa !13
  %i.jo = add nsw i32 %i.jn, %i.jm
  %i.jp = mul nsw i32 %i.jo, %i.am
  %i.jq = add nsw i32 %i.jp, %i.ap
  %i.jr = ashr i32 %i.jq, %i.dj
  %i.js = load i32, ptr %i.jl, align 4, !tbaa !13
  %i.jt = sub nsw i32 %i.js, %i.jr
  store i32 %i.jt, ptr %i.jl, align 4, !tbaa !13
  %i.ju = add nsw i32 %.0111143.i, -2             ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.3120141.i, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %.3142.i, i64 8
  %.not128.i.1 = icmp eq i32 %i.ju, 0
  br i1 %.not128.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !233

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph148.i.prol.loopexit, %.lr.ph148.i, %.lr.ph153.i.prol.loopexit, %.lr.ph153.i, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block251, %middle.block210, %middle.block171, %middle.block, %.preheader136.i, %.preheader138.i, %.preheader134.i, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !234

bb.g:                                             ; preds = %._crit_edge.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.jy = load i32, ptr %i.t, align 4, !tbaa !13
  %i.jz = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.jy, ptr %i.w, align 4, !tbaa !13
  %i.ka = add i32 %4, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.0107.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.jx, %bb.g ] ; 6 uses
  %.0104.i = phi ptr [ %i.w, %._crit_edge.i ], [ %i.jz, %bb.g ] ; 9 uses
  %.0.i = phi i32 [ %4, %._crit_edge.i ], [ %i.ka, %bb.g ] ; 5 uses
  %i.kb = icmp ugt i32 %.0.i, 1
  br i1 %i.kb, label %.lr.ph171.i.preheader, label %._crit_edge172.thread.i

.lr.ph171.i.preheader:                            ; preds = %bb.h
  %i.kc = add i32 %.0.i, -2                       ; 2 uses
  %i.kd = zext i32 %i.kc to i64                   ; 2 uses
  %i.ke = lshr i64 %i.kd, 1
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check268 = icmp ult i32 %i.kc, 42
  br i1 %min.iters.check268, label %.lr.ph171.i.preheader454, label %vector.memcheck269

vector.memcheck269:                               ; preds = %.lr.ph171.i.preheader
  %i.kg = lshr i64 %i.kd, 1                       ; 2 uses
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = getelementptr i8, ptr %.0104.i, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 8      ; 2 uses
  %i.kk = shl nuw nsw i64 %i.kg, 2
  %i.kl = add nuw nsw i64 %i.kk, 4                ; 2 uses
  %i.km = getelementptr i8, ptr %i.u, i64 %i.kl
  %i.kn = getelementptr i8, ptr %.0107.i, i64 %i.kl
  %bound0270 = icmp ult ptr %.0104.i, %i.km
  %bound1271 = icmp ult ptr %i.u, %i.kj
  %found.conflict272 = and i1 %bound0270, %bound1271
  %bound0273 = icmp ult ptr %.0104.i, %i.kn
  %bound1274 = icmp ult ptr %.0107.i, %i.kj
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %found.conflict272, %found.conflict275
  br i1 %conflict.rdx276, label %.lr.ph171.i.preheader454, label %vector.ph277

vector.ph277:                                     ; preds = %vector.memcheck269
  %n.vec278 = and i64 %i.kf, 4294967292           ; 5 uses
  %i.ko = trunc nuw i64 %n.vec278 to i32
  %i.kp = shl i32 %i.ko, 1
  %i.kq = sub i32 %.0.i, %i.kp                    ; 2 uses
  %i.kr = shl nuw nsw i64 %n.vec278, 3
  %i.ks = getelementptr i8, ptr %.0104.i, i64 %i.kr ; 2 uses
  %i.kt = shl nuw nsw i64 %n.vec278, 2            ; 2 uses
  %i.ku = getelementptr i8, ptr %i.u, i64 %i.kt   ; 2 uses
  %i.kv = getelementptr i8, ptr %.0107.i, i64 %i.kt
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next290, %vector.body279 ] ; 3 uses
  %i.kw = shl i64 %index280, 3                    ; 2 uses
  %next.gep281 = getelementptr i8, ptr %.0104.i, i64 %i.kw
  %i.kx = getelementptr i8, ptr %.0104.i, i64 %i.kw
  %next.gep282 = getelementptr i8, ptr %i.kx, i64 16
  %i.ky = shl i64 %index280, 2                    ; 2 uses
  %next.gep283 = getelementptr i8, ptr %i.u, i64 %i.ky ; 2 uses
  %next.gep284 = getelementptr i8, ptr %.0107.i, i64 %i.ky ; 2 uses
  %i.kz = getelementptr i8, ptr %next.gep283, i64 8
  %wide.load285 = load <2 x i32>, ptr %next.gep283, align 4, !tbaa !13, !alias.scope !284
  %wide.load286 = load <2 x i32>, ptr %i.kz, align 4, !tbaa !13, !alias.scope !284
  %i.la = getelementptr i8, ptr %next.gep284, i64 8
  %wide.load287 = load <2 x i32>, ptr %next.gep284, align 4, !tbaa !13, !alias.scope !285
  %wide.load288 = load <2 x i32>, ptr %i.la, align 4, !tbaa !13, !alias.scope !285
  %interleaved.vec = shufflevector <2 x i32> %wide.load285, <2 x i32> %wide.load287, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %next.gep281, align 4, !tbaa !13, !alias.scope !286, !noalias !287
  %interleaved.vec289 = shufflevector <2 x i32> %wide.load286, <2 x i32> %wide.load288, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec289, ptr %next.gep282, align 4, !tbaa !13, !alias.scope !286, !noalias !287
  %index.next290 = add nuw i64 %index280, 4       ; 2 uses
  %i.lb = icmp eq i64 %index.next290, %n.vec278
  br i1 %i.lb, label %middle.block291, label %vector.body279, !llvm.loop !239

middle.block291:                                  ; preds = %vector.body279
  %cmp.n292 = icmp eq i64 %i.kf, %n.vec278
  br i1 %cmp.n292, label %._crit_edge172.i, label %.lr.ph171.i.preheader454

.lr.ph171.i.preheader454:                         ; preds = %vector.memcheck269, %.lr.ph171.i.preheader, %middle.block291
  %.1169.i.ph = phi i32 [ %.0.i, %vector.memcheck269 ], [ %.0.i, %.lr.ph171.i.preheader ], [ %i.kq, %middle.block291 ]
  %.1105168.i.ph = phi ptr [ %.0104.i, %vector.memcheck269 ], [ %.0104.i, %.lr.ph171.i.preheader ], [ %i.ks, %middle.block291 ]
  %.0106167.i.ph = phi ptr [ %i.u, %vector.memcheck269 ], [ %i.u, %.lr.ph171.i.preheader ], [ %i.ku, %middle.block291 ]
  %.1108166.i.ph = phi ptr [ %.0107.i, %vector.memcheck269 ], [ %.0107.i, %.lr.ph171.i.preheader ], [ %i.kv, %middle.block291 ]
  br label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.lr.ph171.i.preheader454, %.lr.ph171.i
  %.1169.i = phi i32 [ %i.li, %.lr.ph171.i ], [ %.1169.i.ph, %.lr.ph171.i.preheader454 ]
  %.1105168.i = phi ptr [ %i.lh, %.lr.ph171.i ], [ %.1105168.i.ph, %.lr.ph171.i.preheader454 ] ; 3 uses
  %.0106167.i = phi ptr [ %i.lc, %.lr.ph171.i ], [ %.0106167.i.ph, %.lr.ph171.i.preheader454 ] ; 2 uses
  %.1108166.i = phi ptr [ %i.lf, %.lr.ph171.i ], [ %.1108166.i.ph, %.lr.ph171.i.preheader454 ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.0106167.i, i64 4 ; 2 uses
  %i.ld = load i32, ptr %.0106167.i, align 4, !tbaa !13
  %i.le = getelementptr inbounds nuw i8, ptr %.1105168.i, i64 4
  store i32 %i.ld, ptr %.1105168.i, align 4, !tbaa !13
  %i.lf = getelementptr inbounds nuw i8, ptr %.1108166.i, i64 4
  %i.lg = load i32, ptr %.1108166.i, align 4, !tbaa !13
  %i.lh = getelementptr inbounds nuw i8, ptr %.1105168.i, i64 8 ; 2 uses
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !13
  %i.li = add i32 %.1169.i, -2                    ; 3 uses
  %i.lj = icmp ugt i32 %i.li, 1
  br i1 %i.lj, label %.lr.ph171.i, label %._crit_edge172.i, !llvm.loop !240

._crit_edge172.i:                                 ; preds = %.lr.ph171.i, %middle.block291
  %.lcssa121 = phi ptr [ %i.ku, %middle.block291 ], [ %i.lc, %.lr.ph171.i ]
  %.lcssa120 = phi ptr [ %i.ks, %middle.block291 ], [ %i.lh, %.lr.ph171.i ]
  %.lcssa119 = phi i32 [ %i.kq, %middle.block291 ], [ %i.li, %.lr.ph171.i ]
  %i.lk = icmp eq i32 %.lcssa119, 0
  br i1 %i.lk, label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %._crit_edge172.thread.i

._crit_edge172.thread.i:                          ; preds = %._crit_edge172.i, %bb.h
  %.1105.lcssa188.i = phi ptr [ %.lcssa120, %._crit_edge172.i ], [ %.0104.i, %bb.h ]
  %.0106.lcssa187.i = phi ptr [ %.lcssa121, %._crit_edge172.i ], [ %i.u, %bb.h ]
  %i.ll = load i32, ptr %.0106.lcssa187.i, align 4, !tbaa !13
  store i32 %i.ll, ptr %.1105.lcssa188.i, align 4, !tbaa !13
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.i:                                             ; preds = %bb.b
  br i1 %5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !13
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  store i32 %i.lo, ptr %7, align 4, !tbaa !13
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.k:                                             ; preds = %bb.i
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !12
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !13
  %i.ls = ashr i32 %i.lr, 1
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  store i32 %i.ls, ptr %9, align 4, !tbaa !13
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.l:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !22  ; 2 uses
  %.not175.i12 = icmp eq i8 %i.lw, 0
  br i1 %.not175.i12, label %._crit_edge.i35, label %.lr.ph165.i13

.lr.ph165.i13:                                    ; preds = %bb.m
  %not..i14 = xor i1 %5, true
  %i.lx = zext i1 %not..i14 to i32
  %i.ly = add i32 %4, %i.lx
  %i.lz = lshr i32 %i.ly, 1
  %i.ma = zext i1 %5 to i32
  %i.mb = add i32 %4, %i.ma
  %i.mc = lshr i32 %i.mb, 1
  %i.md = load ptr, ptr %i.lu, align 8, !tbaa !12
  %i.me = load ptr, ptr %i.lt, align 8, !tbaa !12
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !23
  %wide.trip.count.i15 = zext i8 %i.lw to i64
  %i.mh = xor i1 %5, true                         ; 4 uses
  br label %bb.n

._crit_edge.i35:                                  ; preds = %.loopexit.i32, %bb.m
  %i.mi = load ptr, ptr %i.lt, align 8, !tbaa !12 ; 3 uses
  %i.mj = load ptr, ptr %i.lu, align 8, !tbaa !12 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !12 ; 3 uses
  br i1 %5, label %bb.r, label %bb.q

bb.n:                                             ; preds = %.loopexit.i32, %.lr.ph165.i13
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph165.i13 ], [ %indvars.iv.next.i33, %.loopexit.i32 ] ; 6 uses
  %.0109.in164.i17 = phi i1 [ %5, %.lr.ph165.i13 ], [ %not..0109.in.i22, %.loopexit.i32 ]
  %.0110163.i18 = phi ptr [ %i.me, %.lr.ph165.i13 ], [ %.0124159.i21, %.loopexit.i32 ] ; 18 uses
  %.0122161.i19 = phi i32 [ %i.lz, %.lr.ph165.i13 ], [ %.0123160.i20, %.loopexit.i32 ] ; 3 uses
  %.0123160.i20 = phi i32 [ %i.mc, %.lr.ph165.i13 ], [ %.0122161.i19, %.loopexit.i32 ] ; 27 uses
  %.0124159.i21 = phi ptr [ %i.md, %.lr.ph165.i13 ], [ %.0110163.i18, %.loopexit.i32 ] ; 29 uses
  %i.mm = trunc i64 %indvars.iv.i16 to i1
  %i.mn = xor i1 %i.mm, %i.mh
  %i.mo = select i1 %i.mn, i64 8, i64 0           ; 2 uses
  %i.mp = trunc i64 %indvars.iv.i16 to i1
  %i.mq = xor i1 %i.mp, %i.mh
  %i.mr = select i1 %i.mq, i64 8, i64 0           ; 2 uses
  %i.ms = trunc i64 %indvars.iv.i16 to i1
  %i.mt = xor i1 %i.ms, %i.mh
  %i.mu = select i1 %i.mt, i64 8, i64 0           ; 2 uses
  %i.mv = trunc i64 %indvars.iv.i16 to i1
  %i.mw = xor i1 %i.mv, %i.mh
  %i.mx = select i1 %i.mw, i64 8, i64 0           ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv.i16 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.na = load i16, ptr %i.mz, align 4, !tbaa !12 ; 3 uses
  %i.nb = sext i16 %i.na to i64                   ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !12 ; 2 uses
  %i.ne = sext i16 %i.nd to i64                   ; 12 uses
  %i.nf = load i8, ptr %i.my, align 4, !tbaa !12  ; 4 uses
  %i.ng = load i64, ptr %.0110163.i18, align 8, !tbaa !24
  %i.nh = getelementptr inbounds i8, ptr %.0110163.i18, i64 -8
  store i64 %i.ng, ptr %i.nh, align 8, !tbaa !24
  %i.ni = add nsw i32 %.0122161.i19, -1
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.0110163.i18, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !24
  %i.nm = zext nneg i32 %.0122161.i19 to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %.0110163.i18, i64 %i.nm
  store i64 %i.nl, ptr %i.nn, align 8, !tbaa !24
  %not..0109.in.i22 = xor i1 %.0109.in164.i17, true ; 2 uses
  %i.no = zext i1 %not..0109.in.i22 to i64
  %i.np = getelementptr [8 x i8], ptr %.0110163.i18, i64 %i.no ; 20 uses
  %i.nq = icmp eq i16 %i.na, 1
  br i1 %i.nq, label %.preheader.i60, label %bb.o

.preheader.i60:                                   ; preds = %bb.n
  %.not131154.i61 = icmp eq i32 %.0123160.i20, 0
  br i1 %.not131154.i61, label %.loopexit.i32, label %.lr.ph158.i62

.lr.ph158.i62:                                    ; preds = %.preheader.i60
  %i.nr = zext nneg i8 %i.nf to i64               ; 4 uses
  %i.ns = zext nneg i32 %.0123160.i20 to i64      ; 2 uses
  %min.iters.check313 = icmp samesign ult i32 %.0123160.i20, 6
  br i1 %min.iters.check313, label %scalar.ph312.preheader, label %vector.memcheck297

vector.memcheck297:                               ; preds = %.lr.ph158.i62
  %scevgep298 = getelementptr i8, ptr %.0124159.i21, i64 8
  %i.nt = add nsw i32 %.0123160.i20, -1
  %i.nu = zext i32 %i.nt to i64
  %i.nv = shl nuw nsw i64 %i.nu, 3                ; 2 uses
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.nv ; 2 uses
  %scevgep300 = getelementptr i8, ptr %.0110163.i18, i64 -8
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.mx
  %i.nw = add nuw nsw i64 %i.mx, %i.nv            ; 2 uses
  %scevgep302 = getelementptr i8, ptr %.0110163.i18, i64 %i.nw
  %scevgep303 = getelementptr i8, ptr %.0110163.i18, i64 8
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.nw
  %bound0305 = icmp ult ptr %.0124159.i21, %scevgep302
  %bound1306 = icmp ult ptr %scevgep301, %scevgep299
  %found.conflict307 = and i1 %bound0305, %bound1306
  %bound0308 = icmp ult ptr %.0124159.i21, %scevgep304
  %bound1309 = icmp ult ptr %i.np, %scevgep299
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %found.conflict307, %found.conflict310
  br i1 %conflict.rdx311, label %scalar.ph312.preheader, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck297
  %n.vec315 = and i64 %i.ns, 2147483644           ; 4 uses
  %i.nx = trunc nuw nsw i64 %n.vec315 to i32
  %i.ny = sub nsw i32 %.0123160.i20, %i.nx
  %i.nz = shl nuw nsw i64 %n.vec315, 3            ; 2 uses
  %i.oa = getelementptr i8, ptr %.0124159.i21, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.np, i64 %i.nz
  %broadcast.splatinsert316 = insertelement <2 x i64> poison, i64 %i.nr, i64 0
  %broadcast.splat317 = shufflevector <2 x i64> %broadcast.splatinsert316, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert318 = insertelement <2 x i64> poison, i64 %i.ne, i64 0
  %broadcast.splat319 = shufflevector <2 x i64> %broadcast.splatinsert318, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph314
  %index321 = phi i64 [ 0, %vector.ph314 ], [ %index.next330, %vector.body320 ] ; 2 uses
  %i.oc = shl i64 %index321, 3                    ; 2 uses
  %next.gep322 = getelementptr i8, ptr %.0124159.i21, i64 %i.oc ; 3 uses
  %next.gep323 = getelementptr i8, ptr %i.np, i64 %i.oc ; 4 uses
  %i.od = getelementptr inbounds i8, ptr %next.gep323, i64 -8
  %i.oe = getelementptr inbounds nuw i8, ptr %next.gep323, i64 8
  %wide.load324 = load <2 x i64>, ptr %i.od, align 8, !tbaa !24, !alias.scope !288
  %wide.load325 = load <2 x i64>, ptr %i.oe, align 8, !tbaa !24, !alias.scope !288
  %i.of = getelementptr i8, ptr %next.gep323, i64 16
  %wide.load326 = load <2 x i64>, ptr %next.gep323, align 8, !tbaa !24, !alias.scope !289
  %wide.load327 = load <2 x i64>, ptr %i.of, align 8, !tbaa !24, !alias.scope !289
  %i.og = add <2 x i64> %wide.load324, %broadcast.splat319
  %i.oh = add <2 x i64> %wide.load325, %broadcast.splat319
  %i.oi = add <2 x i64> %i.og, %wide.load326
  %i.oj = add <2 x i64> %i.oh, %wide.load327
  %i.ok = ashr <2 x i64> %i.oi, %broadcast.splat317
  %i.ol = ashr <2 x i64> %i.oj, %broadcast.splat317
  %i.om = getelementptr i8, ptr %next.gep322, i64 16 ; 2 uses
  %wide.load328 = load <2 x i64>, ptr %next.gep322, align 8, !tbaa !24, !alias.scope !290, !noalias !291
  %wide.load329 = load <2 x i64>, ptr %i.om, align 8, !tbaa !24, !alias.scope !290, !noalias !291
  %i.on = sub nsw <2 x i64> %wide.load328, %i.ok
  %i.oo = sub nsw <2 x i64> %wide.load329, %i.ol
  store <2 x i64> %i.on, ptr %next.gep322, align 8, !tbaa !24, !alias.scope !290, !noalias !291
  store <2 x i64> %i.oo, ptr %i.om, align 8, !tbaa !24, !alias.scope !290, !noalias !291
  %index.next330 = add nuw i64 %index321, 4       ; 2 uses
  %i.op = icmp eq i64 %index.next330, %n.vec315
  br i1 %i.op, label %middle.block331, label %vector.body320, !llvm.loop !245

middle.block331:                                  ; preds = %vector.body320
  %cmp.n332 = icmp eq i64 %n.vec315, %i.ns
  br i1 %cmp.n332, label %.loopexit.i32, label %scalar.ph312.preheader

scalar.ph312.preheader:                           ; preds = %vector.memcheck297, %.lr.ph158.i62, %middle.block331
  %.0114157.i63.ph = phi i32 [ %.0123160.i20, %vector.memcheck297 ], [ %.0123160.i20, %.lr.ph158.i62 ], [ %i.ny, %middle.block331 ] ; 4 uses
  %.0115156.i64.ph = phi ptr [ %.0124159.i21, %vector.memcheck297 ], [ %.0124159.i21, %.lr.ph158.i62 ], [ %i.oa, %middle.block331 ] ; 4 uses
  %.0117155.i65.ph = phi ptr [ %i.np, %vector.memcheck297 ], [ %i.np, %.lr.ph158.i62 ], [ %i.ob, %middle.block331 ] ; 4 uses
  %xtraiter476.a = and i32 %.0114157.i63.ph, 1
  %lcmp.mod477.not.a = icmp eq i32 %xtraiter476.a, 0
  br i1 %lcmp.mod477.not.a, label %scalar.ph312.prol.loopexit, label %scalar.ph312.prol

scalar.ph312.prol:                                ; preds = %scalar.ph312.preheader
  %i.oq = getelementptr inbounds i8, ptr %.0117155.i65.ph, i64 -8
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !24
  %i.os = load i64, ptr %.0117155.i65.ph, align 8, !tbaa !24
  %i.ot = add i64 %i.or, %i.ne
  %i.ou = add i64 %i.ot, %i.os
  %i.ov = ashr i64 %i.ou, %i.nr
  %i.ow = load i64, ptr %.0115156.i64.ph, align 8, !tbaa !24
  %i.ox = sub nsw i64 %i.ow, %i.ov
  store i64 %i.ox, ptr %.0115156.i64.ph, align 8, !tbaa !24
  %i.oy = add nsw i32 %.0114157.i63.ph, -1
  %i.oz = getelementptr inbounds nuw i8, ptr %.0117155.i65.ph, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %.0115156.i64.ph, i64 8
  br label %scalar.ph312.prol.loopexit

scalar.ph312.prol.loopexit:                       ; preds = %scalar.ph312.prol, %scalar.ph312.preheader
  %.0114157.i63.unr = phi i32 [ %.0114157.i63.ph, %scalar.ph312.preheader ], [ %i.oy, %scalar.ph312.prol ]
  %.0115156.i64.unr = phi ptr [ %.0115156.i64.ph, %scalar.ph312.preheader ], [ %i.pa, %scalar.ph312.prol ]
  %.0117155.i65.unr = phi ptr [ %.0117155.i65.ph, %scalar.ph312.preheader ], [ %i.oz, %scalar.ph312.prol ]
  %i.pb = icmp eq i32 %.0114157.i63.ph, 1
  br i1 %i.pb, label %.loopexit.i32, label %scalar.ph312

scalar.ph312:                                     ; preds = %scalar.ph312.prol.loopexit, %scalar.ph312
  %.0114157.i63 = phi i32 [ %i.pt, %scalar.ph312 ], [ %.0114157.i63.unr, %scalar.ph312.prol.loopexit ]
  %.0115156.i64 = phi ptr [ %i.pv, %scalar.ph312 ], [ %.0115156.i64.unr, %scalar.ph312.prol.loopexit ] ; 4 uses
  %.0117155.i65 = phi ptr [ %i.pu, %scalar.ph312 ], [ %.0117155.i65.unr, %scalar.ph312.prol.loopexit ] ; 5 uses
  %i.pc = getelementptr inbounds i8, ptr %.0117155.i65, i64 -8
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !24
  %i.pe = load i64, ptr %.0117155.i65, align 8, !tbaa !24
  %i.pf = add i64 %i.pd, %i.ne
  %i.pg = add i64 %i.pf, %i.pe
  %i.ph = ashr i64 %i.pg, %i.nr
  %i.pi = load i64, ptr %.0115156.i64, align 8, !tbaa !24
  %i.pj = sub nsw i64 %i.pi, %i.ph
  store i64 %i.pj, ptr %.0115156.i64, align 8, !tbaa !24
  %i.pk = getelementptr inbounds nuw i8, ptr %.0117155.i65, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %.0115156.i64, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ojph5local16gen_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %xtraiter472 = and i32 %.0112147.i50.ph, 1
  %lcmp.mod473.not = icmp eq i32 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %scalar.ph386.prol.loopexit, label %scalar.ph386.prol

scalar.ph386.prol:                                ; preds = %scalar.ph386.preheader
  %i.ud = getelementptr inbounds i8, ptr %.2119145.i52.ph, i64 -8
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !24
  %i.uf = load i64, ptr %.2119145.i52.ph, align 8, !tbaa !24
  %i.ug = add i64 %i.ue, %i.uf
  %i.uh = sub i64 %i.ne, %i.ug
  %i.ui = ashr i64 %i.uh, %i.te
  %i.uj = load i64, ptr %.2146.i51.ph, align 8, !tbaa !24
  %i.uk = sub nsw i64 %i.uj, %i.ui
  store i64 %i.uk, ptr %.2146.i51.ph, align 8, !tbaa !24
  %i.ul = add nsw i32 %.0112147.i50.ph, -1
  %i.um = getelementptr inbounds nuw i8, ptr %.2119145.i52.ph, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %.2146.i51.ph, i64 8
  br label %scalar.ph386.prol.loopexit

scalar.ph386.prol.loopexit:                       ; preds = %scalar.ph386.prol, %scalar.ph386.preheader
  %.0112147.i50.unr = phi i32 [ %.0112147.i50.ph, %scalar.ph386.preheader ], [ %i.ul, %scalar.ph386.prol ]
  %.2146.i51.unr = phi ptr [ %.2146.i51.ph, %scalar.ph386.preheader ], [ %i.un, %scalar.ph386.prol ]
  %.2119145.i52.unr = phi ptr [ %.2119145.i52.ph, %scalar.ph386.preheader ], [ %i.um, %scalar.ph386.prol ]
  %i.uo = icmp eq i32 %.0112147.i50.ph, 1
  br i1 %i.uo, label %.loopexit.i32, label %scalar.ph386

scalar.ph386:                                     ; preds = %scalar.ph386.prol.loopexit, %scalar.ph386
  %.0112147.i50 = phi i32 [ %i.vg, %scalar.ph386 ], [ %.0112147.i50.unr, %scalar.ph386.prol.loopexit ]
  %.2146.i51 = phi ptr [ %i.vi, %scalar.ph386 ], [ %.2146.i51.unr, %scalar.ph386.prol.loopexit ] ; 4 uses
  %.2119145.i52 = phi ptr [ %i.vh, %scalar.ph386 ], [ %.2119145.i52.unr, %scalar.ph386.prol.loopexit ] ; 5 uses
  %i.up = getelementptr inbounds i8, ptr %.2119145.i52, i64 -8
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !24
  %i.ur = load i64, ptr %.2119145.i52, align 8, !tbaa !24
  %i.us = add i64 %i.uq, %i.ur
  %i.ut = sub i64 %i.ne, %i.us
  %i.uu = ashr i64 %i.ut, %i.te
  %i.uv = load i64, ptr %.2146.i51, align 8, !tbaa !24
  %i.uw = sub nsw i64 %i.uv, %i.uu
  store i64 %i.uw, ptr %.2146.i51, align 8, !tbaa !24
  %i.ux = getelementptr inbounds nuw i8, ptr %.2119145.i52, i64 8
  %i.uy = getelementptr inbounds nuw i8, ptr %.2146.i51, i64 8 ; 2 uses
  %i.uz = load i64, ptr %.2119145.i52, align 8, !tbaa !24
  %i.va = load i64, ptr %i.ux, align 8, !tbaa !24
  %i.vb = add i64 %i.uz, %i.va
  %i.vc = sub i64 %i.ne, %i.vb
  %i.vd = ashr i64 %i.vc, %i.te
  %i.ve = load i64, ptr %i.uy, align 8, !tbaa !24
  %i.vf = sub nsw i64 %i.ve, %i.vd
  store i64 %i.vf, ptr %i.uy, align 8, !tbaa !24
  %i.vg = add nsw i32 %.0112147.i50, -2           ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.2119145.i52, i64 16
  %i.vi = getelementptr inbounds nuw i8, ptr %.2146.i51, i64 16
  %.not129.i53.1 = icmp eq i32 %i.vg, 0
  br i1 %.not129.i53.1, label %.loopexit.i32, label %scalar.ph386, !llvm.loop !263

scalar.ph425:                                     ; preds = %scalar.ph425.prol.loopexit, %scalar.ph425
  %.0111143.i28 = phi i32 [ %i.wc, %scalar.ph425 ], [ %.0111143.i28.unr, %scalar.ph425.prol.loopexit ]
  %.3142.i29 = phi ptr [ %i.we, %scalar.ph425 ], [ %.3142.i29.unr, %scalar.ph425.prol.loopexit ] ; 4 uses
  %.3120141.i30 = phi ptr [ %i.wd, %scalar.ph425 ], [ %.3120141.i30.unr, %scalar.ph425.prol.loopexit ] ; 5 uses
  %i.vj = getelementptr inbounds i8, ptr %.3120141.i30, i64 -8
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !24
  %i.vl = load i64, ptr %.3120141.i30, align 8, !tbaa !24
  %i.vm = add nsw i64 %i.vl, %i.vk
  %i.vn = mul nsw i64 %i.vm, %i.nb
  %i.vo = add nsw i64 %i.vn, %i.ne
  %i.vp = ashr i64 %i.vo, %i.ry
  %i.vq = load i64, ptr %.3142.i29, align 8, !tbaa !24
  %i.vr = sub nsw i64 %i.vq, %i.vp
  store i64 %i.vr, ptr %.3142.i29, align 8, !tbaa !24
  %i.vs = getelementptr inbounds nuw i8, ptr %.3120141.i30, i64 8
  %i.vt = getelementptr inbounds nuw i8, ptr %.3142.i29, i64 8 ; 2 uses
  %i.vu = load i64, ptr %.3120141.i30, align 8, !tbaa !24
  %i.vv = load i64, ptr %i.vs, align 8, !tbaa !24
  %i.vw = add nsw i64 %i.vv, %i.vu
  %i.vx = mul nsw i64 %i.vw, %i.nb
  %i.vy = add nsw i64 %i.vx, %i.ne
  %i.vz = ashr i64 %i.vy, %i.ry
  %i.wa = load i64, ptr %i.vt, align 8, !tbaa !24
  %i.wb = sub nsw i64 %i.wa, %i.vz
  store i64 %i.wb, ptr %i.vt, align 8, !tbaa !24
  %i.wc = add nsw i32 %.0111143.i28, -2           ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.3120141.i30, i64 16
  %i.we = getelementptr inbounds nuw i8, ptr %.3142.i29, i64 16
  %.not128.i31.1 = icmp eq i32 %i.wc, 0
  br i1 %.not128.i31.1, label %.loopexit.i32, label %scalar.ph425, !llvm.loop !264

.loopexit.i32:                                    ; preds = %scalar.ph425.prol.loopexit, %scalar.ph425, %scalar.ph386.prol.loopexit, %scalar.ph386, %.lr.ph153.i55.prol.loopexit, %.lr.ph153.i55, %scalar.ph312.prol.loopexit, %scalar.ph312, %middle.block443, %middle.block405, %middle.block366, %middle.block331, %.preheader136.i48, %.preheader138.i26, %.preheader134.i54, %.preheader.i60
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i15
  br i1 %exitcond.not.i34, label %._crit_edge.i35, label %bb.n, !llvm.loop !265

bb.q:                                             ; preds = %._crit_edge.i35
  %i.wf = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.wg = load i64, ptr %i.mi, align 8, !tbaa !24
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store i64 %i.wg, ptr %i.ml, align 8, !tbaa !24
  %i.wi = add i32 %4, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i35
  %.0107.i36 = phi ptr [ %i.mi, %._crit_edge.i35 ], [ %i.wf, %bb.q ] ; 2 uses
  %.0104.i37 = phi ptr [ %i.ml, %._crit_edge.i35 ], [ %i.wh, %bb.q ] ; 3 uses
  %.0.i38 = phi i32 [ %4, %._crit_edge.i35 ], [ %i.wi, %bb.q ] ; 4 uses
  %i.wj = icmp ugt i32 %.0.i38, 1
  br i1 %i.wj, label %.lr.ph171.i42.preheader, label %._crit_edge172.thread.i39

.lr.ph171.i42.preheader:                          ; preds = %bb.r
  %i.wk = add i32 %.0.i38, -2                     ; 2 uses
  %i.wl = lshr i32 %i.wk, 1
  %i.wm = add nuw i32 %i.wl, 1
  %xtraiter478 = and i32 %i.wm, 3                 ; 2 uses
  %lcmp.mod479.not = icmp eq i32 %xtraiter478, 0
  br i1 %lcmp.mod479.not, label %.lr.ph171.i42.prol.loopexit, label %.lr.ph171.i42.prol

.lr.ph171.i42.prol:                               ; preds = %.lr.ph171.i42.preheader, %.lr.ph171.i42.prol
  %.1169.i43.prol = phi i32 [ %i.wt, %.lr.ph171.i42.prol ], [ %.0.i38, %.lr.ph171.i42.preheader ]
  %.1105168.i44.prol = phi ptr [ %i.ws, %.lr.ph171.i42.prol ], [ %.0104.i37, %.lr.ph171.i42.preheader ] ; 3 uses
  %.0106167.i45.prol = phi ptr [ %i.wn, %.lr.ph171.i42.prol ], [ %i.mj, %.lr.ph171.i42.preheader ] ; 2 uses
  %.1108166.i46.prol = phi ptr [ %i.wq, %.lr.ph171.i42.prol ], [ %.0107.i36, %.lr.ph171.i42.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph171.i42.prol ], [ 0, %.lr.ph171.i42.preheader ]
  %i.wn = getelementptr inbounds nuw i8, ptr %.0106167.i45.prol, i64 8 ; 3 uses
  %i.wo = load i64, ptr %.0106167.i45.prol, align 8, !tbaa !24
  %i.wp = getelementptr inbounds nuw i8, ptr %.1105168.i44.prol, i64 8
  store i64 %i.wo, ptr %.1105168.i44.prol, align 8, !tbaa !24
  %i.wq = getelementptr inbounds nuw i8, ptr %.1108166.i46.prol, i64 8 ; 2 uses
  %i.wr = load i64, ptr %.1108166.i46.prol, align 8, !tbaa !24
  %i.ws = getelementptr inbounds nuw i8, ptr %.1105168.i44.prol, i64 16 ; 3 uses
  store i64 %i.wr, ptr %i.wp, align 8, !tbaa !24
  %i.wt = add i32 %.1169.i43.prol, -2             ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter478
  br i1 %prol.iter.cmp.not, label %.lr.ph171.i42.prol.loopexit, label %.lr.ph171.i42.prol, !llvm.loop !266

.lr.ph171.i42.prol.loopexit:                      ; preds = %.lr.ph171.i42.prol, %.lr.ph171.i42.preheader
  %.1169.i43.unr = phi i32 [ %.0.i38, %.lr.ph171.i42.preheader ], [ %i.wt, %.lr.ph171.i42.prol ]
  %.1105168.i44.unr = phi ptr [ %.0104.i37, %.lr.ph171.i42.preheader ], [ %i.ws, %.lr.ph171.i42.prol ]
  %.0106167.i45.unr = phi ptr [ %i.mj, %.lr.ph171.i42.preheader ], [ %i.wn, %.lr.ph171.i42.prol ]
  %.1108166.i46.unr = phi ptr [ %.0107.i36, %.lr.ph171.i42.preheader ], [ %i.wq, %.lr.ph171.i42.prol ]
  %.lcssa449.unr = phi ptr [ poison, %.lr.ph171.i42.preheader ], [ %i.wn, %.lr.ph171.i42.prol ]
  %.lcssa448.unr = phi ptr [ poison, %.lr.ph171.i42.preheader ], [ %i.ws, %.lr.ph171.i42.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph171.i42.preheader ], [ %i.wt, %.lr.ph171.i42.prol ]
  %i.wu = icmp ult i32 %i.wk, 6
  br i1 %i.wu, label %._crit_edge172.i47, label %.lr.ph171.i42

.lr.ph171.i42:                                    ; preds = %.lr.ph171.i42.prol.loopexit, %.lr.ph171.i42
  %.1169.i43 = phi i32 [ %i.xt, %.lr.ph171.i42 ], [ %.1169.i43.unr, %.lr.ph171.i42.prol.loopexit ]
  %.1105168.i44 = phi ptr [ %i.xs, %.lr.ph171.i42 ], [ %.1105168.i44.unr, %.lr.ph171.i42.prol.loopexit ] ; 9 uses
  %.0106167.i45 = phi ptr [ %i.xn, %.lr.ph171.i42 ], [ %.0106167.i45.unr, %.lr.ph171.i42.prol.loopexit ] ; 5 uses
  %.1108166.i46 = phi ptr [ %i.xq, %.lr.ph171.i42 ], [ %.1108166.i46.unr, %.lr.ph171.i42.prol.loopexit ] ; 5 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.0106167.i45, i64 8
  %i.ww = load i64, ptr %.0106167.i45, align 8, !tbaa !24
  %i.wx = getelementptr inbounds nuw i8, ptr %.1105168.i44, i64 8
  store i64 %i.ww, ptr %.1105168.i44, align 8, !tbaa !24
  %i.wy = getelementptr inbounds nuw i8, ptr %.1108166.i46, i64 8
  %i.wz = load i64, ptr %.1108166.i46, align 8, !tbaa !24
  %i.xa = getelementptr inbounds nuw i8, ptr %.1105168.i44, i64 16
  store i64 %i.wz, ptr %i.wx, align 8, !tbaa !24
  %i.xb = getelementptr inbounds nuw i8, ptr %.0106167.i45, i64 16
  %i.xc = load i64, ptr %i.wv, align 8, !tbaa !24
  %i.xd = getelementptr inbounds nuw i8, ptr %.1105168.i44, i64 24
  store i64 %i.xc, ptr %i.xa, align 8, !tbaa !24
  %i.xe = getelementptr inbounds nuw i8, ptr %.1108166.i46, i64 16
  %i.xf = load i64, ptr %i.wy, align 8, !tbaa !24
  %i.xg = getelementptr inbounds nuw i8, ptr %.1105168.i44, i64 32
  store i64 %i.xf, ptr %i.xd, align 8, !tbaa !24
  %i.xh = getelementptr inbounds nuw i8, ptr %.0106167.i45, i64 24
  %i.xi = load i64, ptr %i.xb, align 8, !tbaa !24
  %i.xj = getelementptr inbounds nuw i8, ptr %.1105168.i44, i64 40
  store i64 %i.xi, ptr %i.xg, align 8, !tbaa !24
  %i.xk = getelementptr inbounds nuw i8, ptr %.1108166.i46, i64 24
  %i.xl = load i64, ptr %i.xe, align 8, !tbaa !24
  %i.xm = getelementptr inbounds nuw i8, ptr %.1105168.i44, i64 48
  store i64 %i.xl, ptr %i.xj, align 8, !tbaa !24
  %i.xn = getelementptr inbounds nuw i8, ptr %.0106167.i45, i64 32 ; 2 uses
  %i.xo = load i64, ptr %i.xh, align 8, !tbaa !24
  %i.xp = getelementptr inbounds nuw i8, ptr %.1105168.i44, i64 56
  store i64 %i.xo, ptr %i.xm, align 8, !tbaa !24
  %i.xq = getelementptr inbounds nuw i8, ptr %.1108166.i46, i64 32
  %i.xr = load i64, ptr %i.xk, align 8, !tbaa !24
  %i.xs = getelementptr inbounds nuw i8, ptr %.1105168.i44, i64 64 ; 2 uses
  store i64 %i.xr, ptr %i.xp, align 8, !tbaa !24
  %i.xt = add i32 %.1169.i43, -8                  ; 3 uses
  %i.xu = icmp ugt i32 %i.xt, 1
  br i1 %i.xu, label %.lr.ph171.i42, label %._crit_edge172.i47, !llvm.loop !267

._crit_edge172.i47:                               ; preds = %.lr.ph171.i42, %.lr.ph171.i42.prol.loopexit
  %.lcssa449 = phi ptr [ %.lcssa449.unr, %.lr.ph171.i42.prol.loopexit ], [ %i.xn, %.lr.ph171.i42 ]
  %.lcssa448 = phi ptr [ %.lcssa448.unr, %.lr.ph171.i42.prol.loopexit ], [ %i.xs, %.lr.ph171.i42 ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph171.i42.prol.loopexit ], [ %i.xt, %.lr.ph171.i42 ]
  %i.xv = icmp eq i32 %.lcssa, 0
  br i1 %i.xv, label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %._crit_edge172.thread.i39

._crit_edge172.thread.i39:                        ; preds = %._crit_edge172.i47, %bb.r
  %.1105.lcssa188.i40 = phi ptr [ %.lcssa448, %._crit_edge172.i47 ], [ %.0104.i37, %bb.r ]
  %.0106.lcssa187.i41 = phi ptr [ %.lcssa449, %._crit_edge172.i47 ], [ %i.mj, %bb.r ]
  %i.xw = load i64, ptr %.0106.lcssa187.i41, align 8, !tbaa !24
  store i64 %i.xw, ptr %.1105.lcssa188.i40, align 8, !tbaa !24
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.s:                                             ; preds = %bb.l
  br i1 %5, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = load i64, ptr %11, align 8, !tbaa !24
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !12
  store i64 %12, ptr %i.xy, align 8, !tbaa !24
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.u:                                             ; preds = %bb.s
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = load i64, ptr %14, align 8, !tbaa !24
  %16 = ashr i64 %15, 1
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !12
  store i64 %16, ptr %i.ya, align 8, !tbaa !24
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit: ; preds = %bb.u, %bb.t, %._crit_edge172.thread.i39, %._crit_edge172.i47, %bb.k, %bb.j, %._crit_edge172.thread.i, %._crit_edge172.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local17gen_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !12   ; 2 uses
  %i.b = fneg float %i.a
  %.015 = select i1 %5, float %i.b, float %i.a    ; 4 uses
  %.not16 = icmp eq i32 %4, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 7 uses
  %i.i = zext i32 %4 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 12
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = add i32 %4, -1
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 4                  ; 3 uses
  %i.n = getelementptr i8, ptr %i.h, i64 %i.m     ; 2 uses
  %i.o = getelementptr i8, ptr %i.f, i64 %i.m
  %i.p = getelementptr i8, ptr %i.d, i64 %i.m
  %bound0 = icmp ult ptr %i.h, %i.o
  %bound1 = icmp ult ptr %i.f, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound026 = icmp ult ptr %i.h, %i.p
  %bound127 = icmp ult ptr %i.d, %i.n
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx = or i1 %found.conflict, %found.conflict28
  br i1 %conflict.rdx, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 4 uses
  %i.q = trunc nuw i64 %n.vec to i32
  %i.r = sub i32 %4, %i.q
  %i.s = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  %i.u = getelementptr i8, ptr %i.f, i64 %i.s
  %i.v = getelementptr i8, ptr %i.h, i64 %i.s
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.015, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.w ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.f, i64 %i.w ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.h, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <4 x float>, ptr %next.gep29, align 4, !tbaa !25, !alias.scope !311
  %wide.load31 = load <4 x float>, ptr %i.x, align 4, !tbaa !25, !alias.scope !311
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  %wide.load32 = load <4 x float>, ptr %next.gep, align 4, !tbaa !25, !alias.scope !312
  %wide.load33 = load <4 x float>, ptr %i.y, align 4, !tbaa !25, !alias.scope !312
  %i.z = fadd <4 x float> %wide.load, %wide.load32
  %i.aa = fadd <4 x float> %wide.load31, %wide.load33
  %i.ab = getelementptr i8, ptr %next.gep30, i64 16 ; 2 uses
  %wide.load34 = load <4 x float>, ptr %next.gep30, align 4, !tbaa !25, !alias.scope !313, !noalias !314
  %wide.load35 = load <4 x float>, ptr %i.ab, align 4, !tbaa !25, !alias.scope !313, !noalias !314
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.z, <4 x float> %wide.load34)
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.aa, <4 x float> %wide.load35)
  store <4 x float> %i.ac, ptr %next.gep30, align 4, !tbaa !25, !alias.scope !313, !noalias !314
  store <4 x float> %i.ad, ptr %i.ab, align 4, !tbaa !25, !alias.scope !313, !noalias !314
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.020.ph = phi i32 [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.r, %middle.block ] ; 4 uses
  %.01219.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %i.t, %middle.block ] ; 3 uses
  %.01318.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.preheader ], [ %i.u, %middle.block ] ; 3 uses
  %.01417.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 4 uses
  %xtraiter = and i32 %.020.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader39
  %i.af = getelementptr inbounds nuw i8, ptr %.01318.ph, i64 4
  %i.ag = load float, ptr %.01318.ph, align 4, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %.01219.ph, i64 4
  %i.ai = load float, ptr %.01219.ph, align 4, !tbaa !25
  %i.aj = fadd float %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.ph, i64 4
  %i.al = load float, ptr %.01417.ph, align 4, !tbaa !25
  %i.am = tail call float @llvm.fmuladd.f32(float %.015, float %i.aj, float %i.al)
  store float %i.am, ptr %.01417.ph, align 4, !tbaa !25
  %i.an = add nsw i32 %.020.ph, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader39
  %.020.unr = phi i32 [ %.020.ph, %.lr.ph.preheader39 ], [ %i.an, %.lr.ph.prol ]
  %.01219.unr = phi ptr [ %.01219.ph, %.lr.ph.preheader39 ], [ %i.ah, %.lr.ph.prol ]
  %.01318.unr = phi ptr [ %.01318.ph, %.lr.ph.preheader39 ], [ %i.af, %.lr.ph.prol ]
  %.01417.unr = phi ptr [ %.01417.ph, %.lr.ph.preheader39 ], [ %i.ak, %.lr.ph.prol ]
  %i.ao = icmp eq i32 %.020.ph, 1
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.020 = phi i32 [ %i.bf, %.lr.ph ], [ %.020.unr, %.lr.ph.prol.loopexit ]
  %.01219 = phi ptr [ %i.az, %.lr.ph ], [ %.01219.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01318 = phi ptr [ %i.ax, %.lr.ph ], [ %.01318.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01417 = phi ptr [ %i.bc, %.lr.ph ], [ %.01417.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01318, i64 4
  %i.aq = load float, ptr %.01318, align 4, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %.01219, i64 4
  %i.as = load float, ptr %.01219, align 4, !tbaa !25
  %i.at = fadd float %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.01417, i64 4 ; 2 uses
  %i.av = load float, ptr %.01417, align 4, !tbaa !25
  %i.aw = tail call float @llvm.fmuladd.f32(float %.015, float %i.at, float %i.av)
  store float %i.aw, ptr %.01417, align 4, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %.01318, i64 8
  %i.ay = load float, ptr %i.ap, align 4, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %.01219, i64 8
  %i.ba = load float, ptr %i.ar, align 4, !tbaa !25
  %i.bb = fadd float %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.01417, i64 8
  %i.bd = load float, ptr %i.au, align 4, !tbaa !25
  %i.be = tail call float @llvm.fmuladd.f32(float %.015, float %i.bb, float %i.bd)
  store float %i.be, ptr %i.au, align 4, !tbaa !25
  %i.bf = add i32 %.020, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.bf, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !310
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local20gen_irv_vert_times_KEfPKNS_8line_bufEj(float noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #1 {
bb.a:
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, 4294967288               ; 4 uses
  %i.d = trunc nuw i64 %n.vec to i32
  %i.e = sub i32 %2, %i.d
  %i.f = shl nuw nsw i64 %n.vec, 2
  %i.g = getelementptr i8, ptr %i.b, i64 %i.f
  %broadcast.splatinsert = insertelement <4 x float> poison, float %0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.h ; 3 uses
  %i.i = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !25
  %wide.load9 = load <4 x float>, ptr %i.i, align 4, !tbaa !25
  %i.j = fmul <4 x float> %broadcast.splat, %wide.load
  %i.k = fmul <4 x float> %broadcast.splat, %wide.load9
  store <4 x float> %i.j, ptr %next.gep, align 4, !tbaa !25
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.08.ph = phi i32 [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.057.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader11, %.lr.ph
  %.08 = phi i32 [ %i.p, %.lr.ph ], [ %.08.ph, %.lr.ph.preheader11 ]
  %.057 = phi ptr [ %i.m, %.lr.ph ], [ %.057.ph, %.lr.ph.preheader11 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.057, i64 4
  %i.n = load float, ptr %.057, align 4, !tbaa !25
  %i.o = fmul float %0, %i.n
  store float %i.o, ptr %.057, align 4, !tbaa !25
  %i.p = add i32 %.08, -1                         ; 2 uses
end_hunk_1
