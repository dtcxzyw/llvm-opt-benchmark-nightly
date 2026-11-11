Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/fp_dng?download=true
inline.NumInlined: 149
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6LibRaw20deflate_dng_load_rawEv:bb.a
vec.epilog.scalar.ph331.preheader:                ; preds = %iter.check329, %vec.epilog.iter.check330, %vec.epilog.middle.block341
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check329 ], [ %n.vec315, %vec.epilog.iter.check330 ], [ %n.vec335, %vec.epilog.middle.block341 ]
  br label %vec.epilog.scalar.ph331

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph331, %vec.epilog.middle.block341, %middle.block327
  %i.jw = getelementptr inbounds nuw i8, ptr %.3108.i.i, i64 %i.gi
  %i.jx = add nuw nsw i32 %.070109.i.i, 1         ; 2 uses
  %exitcond117.not.i.i = icmp eq i32 %i.jx, %i.fo
  br i1 %exitcond117.not.i.i, label %_Z16DecodeDeltaBytesPhii.exit.i, label %iter.check329, !llvm.loop !171

vec.epilog.scalar.ph331:                          ; preds = %vec.epilog.scalar.ph331.preheader, %vec.epilog.scalar.ph331
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %vec.epilog.scalar.ph331 ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph331.preheader ] ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.3108.i.i, i64 %indvars.iv.i.i
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !133
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ka = load i8, ptr %gep.i.i, align 1, !tbaa !133
  %i.kb = add i8 %i.ka, %i.jz
  store i8 %i.kb, ptr %gep.i.i, align 1, !tbaa !133
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond116.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.gj
  br i1 %exitcond116.not.i.i, label %._crit_edge.i.i, label %vec.epilog.scalar.ph331, !llvm.loop !172

_Z16DecodeDeltaBytesPhii.exit.i.loopexit346.unr-lcssa: ; preds = %.lr.ph105.i.i
  br i1 %lcmp.mod368.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph105.i.i.epil.preheader

.lr.ph105.i.i.epil.preheader:                     ; preds = %_Z16DecodeDeltaBytesPhii.exit.i.loopexit346.unr-lcssa, %.lr.ph105.preheader.i.i
  %.081103.i.i.epil.init = phi i8 [ %i.gl, %.lr.ph105.preheader.i.i ], [ %i.hb, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit346.unr-lcssa ]
  %.pn85102.i.i.epil.init = phi ptr [ %i.gf, %.lr.ph105.preheader.i.i ], [ %.082.i.i.7, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit346.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod369)
  br label %.lr.ph105.i.i.epil

.lr.ph105.i.i.epil:                               ; preds = %.lr.ph105.i.i.epil, %.lr.ph105.i.i.epil.preheader
  %.081103.i.i.epil = phi i8 [ %i.kd, %.lr.ph105.i.i.epil ], [ %.081103.i.i.epil.init, %.lr.ph105.i.i.epil.preheader ]
  %.pn85102.i.i.epil = phi ptr [ %.082.i.i.epil, %.lr.ph105.i.i.epil ], [ %.pn85102.i.i.epil.init, %.lr.ph105.i.i.epil.preheader ]
  %epil.iter367 = phi i32 [ %epil.iter367.next, %.lr.ph105.i.i.epil ], [ 0, %.lr.ph105.i.i.epil.preheader ]
  %.082.i.i.epil = getelementptr inbounds nuw i8, ptr %.pn85102.i.i.epil, i64 1 ; 3 uses
  %i.kc = load i8, ptr %.082.i.i.epil, align 1, !tbaa !133
  %i.kd = add i8 %i.kc, %.081103.i.i.epil         ; 2 uses
  store i8 %i.kd, ptr %.082.i.i.epil, align 1, !tbaa !133
  %epil.iter367.next = add i32 %epil.iter367, 1   ; 2 uses
  %epil.iter367.cmp.not = icmp eq i32 %epil.iter367.next, %xtraiter366
  br i1 %epil.iter367.cmp.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph105.i.i.epil, !llvm.loop !173

_Z16DecodeDeltaBytesPhii.exit.i.loopexit347.unr-lcssa: ; preds = %.lr.ph101.i.i
  br i1 %lcmp.mod362.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph101.i.i.epil.preheader

.lr.ph101.i.i.epil.preheader:                     ; preds = %_Z16DecodeDeltaBytesPhii.exit.i.loopexit347.unr-lcssa, %.lr.ph101.preheader.i.i
  %.07799.i.i.epil.init = phi i8 [ %i.hd, %.lr.ph101.preheader.i.i ], [ %i.im, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit347.unr-lcssa ]
  %.07898.i.i.epil.init = phi i8 [ %i.hf, %.lr.ph101.preheader.i.i ], [ %i.ij, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit347.unr-lcssa ]
  %.07997.i.i.epil.init = phi i8 [ %i.hg, %.lr.ph101.preheader.i.i ], [ %i.ig, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit347.unr-lcssa ]
  %.pn8496.i.i.epil.init = phi ptr [ %i.gf, %.lr.ph101.preheader.i.i ], [ %.1.i.i.3, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit347.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod363)
  br label %.lr.ph101.i.i.epil

.lr.ph101.i.i.epil:                               ; preds = %.lr.ph101.i.i.epil, %.lr.ph101.i.i.epil.preheader
  %.07799.i.i.epil = phi i8 [ %i.kl, %.lr.ph101.i.i.epil ], [ %.07799.i.i.epil.init, %.lr.ph101.i.i.epil.preheader ]
  %.07898.i.i.epil = phi i8 [ %i.ki, %.lr.ph101.i.i.epil ], [ %.07898.i.i.epil.init, %.lr.ph101.i.i.epil.preheader ]
  %.07997.i.i.epil = phi i8 [ %i.kf, %.lr.ph101.i.i.epil ], [ %.07997.i.i.epil.init, %.lr.ph101.i.i.epil.preheader ]
  %.pn8496.i.i.epil = phi ptr [ %.1.i.i.epil, %.lr.ph101.i.i.epil ], [ %.pn8496.i.i.epil.init, %.lr.ph101.i.i.epil.preheader ] ; 3 uses
  %epil.iter361 = phi i32 [ %epil.iter361.next, %.lr.ph101.i.i.epil ], [ 0, %.lr.ph101.i.i.epil.preheader ]
  %.1.i.i.epil = getelementptr inbounds nuw i8, ptr %.pn8496.i.i.epil, i64 3 ; 3 uses
  %i.ke = load i8, ptr %.1.i.i.epil, align 1, !tbaa !133
  %i.kf = add i8 %i.ke, %.07997.i.i.epil          ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.pn8496.i.i.epil, i64 4 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !133
  %i.ki = add i8 %i.kh, %.07898.i.i.epil          ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.pn8496.i.i.epil, i64 5 ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !133
  %i.kl = add i8 %i.kk, %.07799.i.i.epil          ; 2 uses
  store i8 %i.kf, ptr %.1.i.i.epil, align 1, !tbaa !133
  store i8 %i.ki, ptr %i.kg, align 1, !tbaa !133
  store i8 %i.kl, ptr %i.kj, align 1, !tbaa !133
  %epil.iter361.next = add i32 %epil.iter361, 1   ; 2 uses
  %epil.iter361.cmp.not = icmp eq i32 %epil.iter361.next, %xtraiter360
  br i1 %epil.iter361.cmp.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph101.i.i.epil, !llvm.loop !174

_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa: ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa, %.lr.ph.preheader.i.i
  %.pn90.i.i.epil.init = phi ptr [ %i.gf, %.lr.ph.preheader.i.i ], [ %.2.i.i.7, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa ]
  %.epil.init = phi <4 x i8> [ %i.in, %.lr.ph.preheader.i.i ], [ %i.je, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod359)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.pn90.i.i.epil = phi ptr [ %.2.i.i.epil, %.lr.ph.i.i.epil ], [ %.pn90.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %i.km = phi <4 x i8> [ %i.ko, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %.2.i.i.epil = getelementptr inbounds nuw i8, ptr %.pn90.i.i.epil, i64 4 ; 3 uses
  %i.kn = load <4 x i8>, ptr %.2.i.i.epil, align 1, !tbaa !133
  %i.ko = add <4 x i8> %i.kn, %i.km               ; 2 uses
  store <4 x i8> %i.ko, ptr %.2.i.i.epil, align 1, !tbaa !133
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !175

_Z16DecodeDeltaBytesPhii.exit.i:                  ; preds = %_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa, %.lr.ph.i.i.epil, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit347.unr-lcssa, %.lr.ph101.i.i.epil, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit346.unr-lcssa, %.lr.ph105.i.i.epil, %._crit_edge.i.i, %bb.ai, %bb.ah, %bb.ag, %.preheader.lr.ph.i.i, %.preheader86.i.i
  %i.kp = mul i32 %i.gg, %i.dt                    ; 10 uses
  %i.kq = zext i32 %i.kp to i64                   ; 7 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.kq ; 19 uses
  switch i32 %i.fa, label %bb.al [
    i32 2, label %bb.aj
    i32 3, label %bb.ak
  ]

bb.aj:                                            ; preds = %_Z16DecodeDeltaBytesPhii.exit.i
  %i.ks = icmp sgt i32 %i.kp, 0
  br i1 %i.ks, label %.lr.ph74.i.preheader, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread

.lr.ph74.i.preheader:                             ; preds = %bb.aj
  %xtraiter378 = and i64 %i.kq, 7                 ; 3 uses
  %i.kt = icmp ult i32 %i.kp, 8
  br i1 %i.kt, label %.lr.ph74.i.epil.preheader, label %.lr.ph74.i.preheader.new

.lr.ph74.i.preheader.new:                         ; preds = %.lr.ph74.i.preheader
  %unroll_iter382 = and i64 %i.kq, 2147483640
  br label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i, %.lr.ph74.i.preheader.new
  %indvars.iv84.i = phi i64 [ 0, %.lr.ph74.i.preheader.new ], [ %indvars.iv.next85.i.7, %.lr.ph74.i ] ; 10 uses
  %.06372.i = phi ptr [ %i.ge, %.lr.ph74.i.preheader.new ], [ %i.mp, %.lr.ph74.i ] ; 17 uses
  %niter383 = phi i64 [ 0, %.lr.ph74.i.preheader.new ], [ %niter383.next.7, %.lr.ph74.i ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv84.i
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !133
  store i8 %i.kv, ptr %.06372.i, align 1, !tbaa !133
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv84.i
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !133
  %i.ky = getelementptr inbounds nuw i8, ptr %.06372.i, i64 1
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !133
  %i.kz = getelementptr inbounds nuw i8, ptr %.06372.i, i64 2
  %indvars.iv.next85.i = or disjoint i64 %indvars.iv84.i, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next85.i
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !133
  store i8 %i.lb, ptr %i.kz, align 1, !tbaa !133
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next85.i
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !133
  %i.le = getelementptr inbounds nuw i8, ptr %.06372.i, i64 3
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !133
  %i.lf = getelementptr inbounds nuw i8, ptr %.06372.i, i64 4
  %indvars.iv.next85.i.1 = or disjoint i64 %indvars.iv84.i, 2 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next85.i.1
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !133
  store i8 %i.lh, ptr %i.lf, align 1, !tbaa !133
  %i.li = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next85.i.1
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !133
  %i.lk = getelementptr inbounds nuw i8, ptr %.06372.i, i64 5
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !133
  %i.ll = getelementptr inbounds nuw i8, ptr %.06372.i, i64 6
  %indvars.iv.next85.i.2 = or disjoint i64 %indvars.iv84.i, 3 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next85.i.2
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !133
  store i8 %i.ln, ptr %i.ll, align 1, !tbaa !133
  %i.lo = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next85.i.2
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !133
  %i.lq = getelementptr inbounds nuw i8, ptr %.06372.i, i64 7
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !133
  %i.lr = getelementptr inbounds nuw i8, ptr %.06372.i, i64 8
  %indvars.iv.next85.i.3 = or disjoint i64 %indvars.iv84.i, 4 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next85.i.3
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !133
  store i8 %i.lt, ptr %i.lr, align 1, !tbaa !133
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next85.i.3
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !133
  %i.lw = getelementptr inbounds nuw i8, ptr %.06372.i, i64 9
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !133
  %i.lx = getelementptr inbounds nuw i8, ptr %.06372.i, i64 10
  %indvars.iv.next85.i.4 = or disjoint i64 %indvars.iv84.i, 5 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next85.i.4
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !133
  store i8 %i.lz, ptr %i.lx, align 1, !tbaa !133
  %i.ma = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next85.i.4
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !133
  %i.mc = getelementptr inbounds nuw i8, ptr %.06372.i, i64 11
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !133
  %i.md = getelementptr inbounds nuw i8, ptr %.06372.i, i64 12
  %indvars.iv.next85.i.5 = or disjoint i64 %indvars.iv84.i, 6 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next85.i.5
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !133
  store i8 %i.mf, ptr %i.md, align 1, !tbaa !133
  %i.mg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next85.i.5
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !133
  %i.mi = getelementptr inbounds nuw i8, ptr %.06372.i, i64 13
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !133
  %i.mj = getelementptr inbounds nuw i8, ptr %.06372.i, i64 14
  %indvars.iv.next85.i.6 = or disjoint i64 %indvars.iv84.i, 7 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next85.i.6
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !133
  store i8 %i.ml, ptr %i.mj, align 1, !tbaa !133
  %i.mm = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next85.i.6
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !133
  %i.mo = getelementptr inbounds nuw i8, ptr %.06372.i, i64 15
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !133
  %i.mp = getelementptr inbounds nuw i8, ptr %.06372.i, i64 16 ; 2 uses
  %indvars.iv.next85.i.7 = add nuw nsw i64 %indvars.iv84.i, 8 ; 2 uses
  %niter383.next.7 = add i64 %niter383, 8         ; 2 uses
  %niter383.ncmp.7 = icmp eq i64 %niter383.next.7, %unroll_iter382
  br i1 %niter383.ncmp.7, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa, label %.lr.ph74.i, !llvm.loop !176

bb.ak:                                            ; preds = %_Z16DecodeDeltaBytesPhii.exit.i
  %i.mq = shl nsw i32 %i.kp, 1
  %2 = sext i32 %i.mq to i64
  %i.mr = getelementptr inbounds i8, ptr %i.gf, i64 %2 ; 5 uses
  %i.ms = icmp sgt i32 %i.kp, 0
  br i1 %i.ms, label %.lr.ph.i.preheader, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192

.lr.ph.i.preheader:                               ; preds = %bb.ak
  %xtraiter372 = and i64 %i.kq, 3                 ; 3 uses
  %i.mt = icmp ult i32 %i.kp, 4
  br i1 %i.mt, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter376 = and i64 %i.kq, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 7 uses
  %.170.i = phi ptr [ %i.ge, %.lr.ph.i.preheader.new ], [ %i.od, %.lr.ph.i ] ; 13 uses
  %niter377 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter377.next.3, %.lr.ph.i ]
  %i.mu = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.i
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !133
  store i8 %i.mv, ptr %.170.i, align 1, !tbaa !133
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !133
  %i.my = getelementptr inbounds nuw i8, ptr %.170.i, i64 1
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !133
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.i
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !133
  %i.nb = getelementptr inbounds nuw i8, ptr %.170.i, i64 2
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !133
  %i.nc = getelementptr inbounds nuw i8, ptr %.170.i, i64 3
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next.i
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !133
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !133
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next.i
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !133
  %i.nh = getelementptr inbounds nuw i8, ptr %.170.i, i64 4
  store i8 %i.ng, ptr %i.nh, align 1, !tbaa !133
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.next.i
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !133
  %i.nk = getelementptr inbounds nuw i8, ptr %.170.i, i64 5
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !133
  %i.nl = getelementptr inbounds nuw i8, ptr %.170.i, i64 6
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next.i.1
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !133
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !133
  %i.no = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next.i.1
  %i.np = load i8, ptr %i.no, align 1, !tbaa !133
  %i.nq = getelementptr inbounds nuw i8, ptr %.170.i, i64 7
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !133
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.next.i.1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !133
  %i.nt = getelementptr inbounds nuw i8, ptr %.170.i, i64 8
  store i8 %i.ns, ptr %i.nt, align 1, !tbaa !133
  %i.nu = getelementptr inbounds nuw i8, ptr %.170.i, i64 9
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next.i.2
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !133
  store i8 %i.nw, ptr %i.nu, align 1, !tbaa !133
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next.i.2
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !133
  %i.nz = getelementptr inbounds nuw i8, ptr %.170.i, i64 10
  store i8 %i.ny, ptr %i.nz, align 1, !tbaa !133
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.next.i.2
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !133
  %i.oc = getelementptr inbounds nuw i8, ptr %.170.i, i64 11
  store i8 %i.ob, ptr %i.oc, align 1, !tbaa !133
  %i.od = getelementptr inbounds nuw i8, ptr %.170.i, i64 12 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter377.next.3 = add i64 %niter377, 4         ; 2 uses
  %niter377.ncmp.3 = icmp eq i64 %niter377.next.3, %unroll_iter376
  br i1 %niter377.ncmp.3, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !177

bb.al:                                            ; preds = %_Z16DecodeDeltaBytesPhii.exit.i
  %i.oe = shl nsw i32 %i.kp, 1
  %3 = sext i32 %i.oe to i64
  %i.of = getelementptr inbounds i8, ptr %i.gf, i64 %3 ; 5 uses
  %i.og = mul nsw i32 %i.kp, 3
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds i8, ptr %i.gf, i64 %i.oh ; 5 uses
  %i.oj = icmp sgt i32 %i.kp, 0
  br i1 %i.oj, label %.lr.ph77.i.preheader, label %_ZL13DecodeFPDeltaPhS_iii.exit

.lr.ph77.i.preheader:                             ; preds = %bb.al
  %xtraiter384 = and i64 %i.kq, 3                 ; 3 uses
  %i.ok = icmp ult i32 %i.kp, 4
  br i1 %i.ok, label %.lr.ph77.i.epil.preheader, label %.lr.ph77.i.preheader.new

.lr.ph77.i.preheader.new:                         ; preds = %.lr.ph77.i.preheader
  %unroll_iter388 = and i64 %i.kq, 2147483644
  br label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.i.preheader.new
  %indvars.iv89.i = phi i64 [ 0, %.lr.ph77.i.preheader.new ], [ %indvars.iv.next90.i.3, %.lr.ph77.i ] ; 8 uses
  %.275.i = phi ptr [ %i.ge, %.lr.ph77.i.preheader.new ], [ %i.qg, %.lr.ph77.i ] ; 17 uses
  %niter389 = phi i64 [ 0, %.lr.ph77.i.preheader.new ], [ %niter389.next.3, %.lr.ph77.i ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 %indvars.iv89.i
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !133
  store i8 %i.om, ptr %.275.i, align 1, !tbaa !133
  %i.on = getelementptr inbounds nuw i8, ptr %i.of, i64 %indvars.iv89.i
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !133
  %i.op = getelementptr inbounds nuw i8, ptr %.275.i, i64 1
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !133
  %i.oq = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv89.i
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !133
  %i.os = getelementptr inbounds nuw i8, ptr %.275.i, i64 2
  store i8 %i.or, ptr %i.os, align 1, !tbaa !133
  %i.ot = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv89.i
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !133
  %i.ov = getelementptr inbounds nuw i8, ptr %.275.i, i64 3
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !133
  %i.ow = getelementptr inbounds nuw i8, ptr %.275.i, i64 4
  %indvars.iv.next90.i = or disjoint i64 %indvars.iv89.i, 1 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oi, i64 %indvars.iv.next90.i
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !133
  store i8 %i.oy, ptr %i.ow, align 1, !tbaa !133
  %i.oz = getelementptr inbounds nuw i8, ptr %i.of, i64 %indvars.iv.next90.i
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !133
  %i.pb = getelementptr inbounds nuw i8, ptr %.275.i, i64 5
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !133
  %i.pc = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next90.i
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !133
  %i.pe = getelementptr inbounds nuw i8, ptr %.275.i, i64 6
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !133
  %i.pf = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next90.i
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !133
  %i.ph = getelementptr inbounds nuw i8, ptr %.275.i, i64 7
  store i8 %i.pg, ptr %i.ph, align 1, !tbaa !133
  %i.pi = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  %indvars.iv.next90.i.1 = or disjoint i64 %indvars.iv89.i, 2 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %indvars.iv.next90.i.1
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !133
  store i8 %i.pk, ptr %i.pi, align 1, !tbaa !133
  %i.pl = getelementptr inbounds nuw i8, ptr %i.of, i64 %indvars.iv.next90.i.1
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !133
  %i.pn = getelementptr inbounds nuw i8, ptr %.275.i, i64 9
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !133
  %i.po = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next90.i.1
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !133
  %i.pq = getelementptr inbounds nuw i8, ptr %.275.i, i64 10
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !133
  %i.pr = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next90.i.1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !133
  %i.pt = getelementptr inbounds nuw i8, ptr %.275.i, i64 11
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !133
  %i.pu = getelementptr inbounds nuw i8, ptr %.275.i, i64 12
  %indvars.iv.next90.i.2 = or disjoint i64 %indvars.iv89.i, 3 ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oi, i64 %indvars.iv.next90.i.2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !133
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !133
  %i.px = getelementptr inbounds nuw i8, ptr %i.of, i64 %indvars.iv.next90.i.2
  %i.py = load i8, ptr %i.px, align 1, !tbaa !133
  %i.pz = getelementptr inbounds nuw i8, ptr %.275.i, i64 13
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !133
  %i.qa = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next90.i.2
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !133
  %i.qc = getelementptr inbounds nuw i8, ptr %.275.i, i64 14
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !133
  %i.qd = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next90.i.2
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !133
  %i.qf = getelementptr inbounds nuw i8, ptr %.275.i, i64 15
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !133
  %i.qg = getelementptr inbounds nuw i8, ptr %.275.i, i64 16 ; 2 uses
  %indvars.iv.next90.i.3 = add nuw nsw i64 %indvars.iv89.i, 4 ; 2 uses
  %niter389.next.3 = add i64 %niter389, 4         ; 2 uses
  %niter389.ncmp.3 = icmp eq i64 %niter389.next.3, %unroll_iter388
  br i1 %niter389.ncmp.3, label %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa, label %.lr.ph77.i, !llvm.loop !178

_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph74.i
  %lcmp.mod380.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod380.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread, label %.lr.ph74.i.epil.preheader

.lr.ph74.i.epil.preheader:                        ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa, %.lr.ph74.i.preheader
  %indvars.iv84.i.epil.init = phi i64 [ 0, %.lr.ph74.i.preheader ], [ %indvars.iv.next85.i.7, %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa ]
  %.06372.i.epil.init = phi ptr [ %i.ge, %.lr.ph74.i.preheader ], [ %i.mp, %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod381 = icmp ne i64 %xtraiter378, 0
  call void @llvm.assume(i1 %lcmp.mod381)
  br label %.lr.ph74.i.epil

.lr.ph74.i.epil:                                  ; preds = %.lr.ph74.i.epil, %.lr.ph74.i.epil.preheader
  %indvars.iv84.i.epil = phi i64 [ %indvars.iv.next85.i.epil, %.lr.ph74.i.epil ], [ %indvars.iv84.i.epil.init, %.lr.ph74.i.epil.preheader ] ; 3 uses
  %.06372.i.epil = phi ptr [ %i.qm, %.lr.ph74.i.epil ], [ %.06372.i.epil.init, %.lr.ph74.i.epil.preheader ] ; 3 uses
  %epil.iter379 = phi i64 [ %epil.iter379.next, %.lr.ph74.i.epil ], [ 0, %.lr.ph74.i.epil.preheader ]
  %i.qh = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv84.i.epil
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !133
  store i8 %i.qi, ptr %.06372.i.epil, align 1, !tbaa !133
  %i.qj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv84.i.epil
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !133
  %i.ql = getelementptr inbounds nuw i8, ptr %.06372.i.epil, i64 1
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !133
  %i.qm = getelementptr inbounds nuw i8, ptr %.06372.i.epil, i64 2
  %indvars.iv.next85.i.epil = add nuw nsw i64 %indvars.iv84.i.epil, 1
  %epil.iter379.next = add i64 %epil.iter379, 1   ; 2 uses
  %epil.iter379.cmp.not = icmp eq i64 %epil.iter379.next, %xtraiter378
  br i1 %epil.iter379.cmp.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread, label %.lr.ph74.i.epil, !llvm.loop !179

_ZL13DecodeFPDeltaPhS_iii.exit.thread:            ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa, %.lr.ph74.i.epil, %bb.aj
  %i.qn = mul i32 %i.ga, %i.bl                    ; 2 uses
  %i.qo = icmp sgt i32 %i.qn, 0
  br i1 %i.qo, label %.lr.ph73.preheader.i, label %_ZL12expandFloatsPhii.exit

_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod374.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa ]
  %.170.i.epil.init = phi ptr [ %i.ge, %.lr.ph.i.preheader ], [ %i.od, %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa ]
  %lcmp.mod375 = icmp ne i64 %xtraiter372, 0
  call void @llvm.assume(i1 %lcmp.mod375)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 4 uses
  %.170.i.epil = phi ptr [ %i.qx, %.lr.ph.i.epil ], [ %.170.i.epil.init, %.lr.ph.i.epil.preheader ] ; 4 uses
  %epil.iter373 = phi i64 [ %epil.iter373.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.i.epil
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !133
  store i8 %i.qq, ptr %.170.i.epil, align 1, !tbaa !133
  %i.qr = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.epil
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !133
  %i.qt = getelementptr inbounds nuw i8, ptr %.170.i.epil, i64 1
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !133
  %i.qu = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.i.epil
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !133
  %i.qw = getelementptr inbounds nuw i8, ptr %.170.i.epil, i64 2
  store i8 %i.qv, ptr %i.qw, align 1, !tbaa !133
  %i.qx = getelementptr inbounds nuw i8, ptr %.170.i.epil, i64 3
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter373.next = add i64 %epil.iter373, 1   ; 2 uses
  %epil.iter373.cmp.not = icmp eq i64 %epil.iter373.next, %xtraiter372
  br i1 %epil.iter373.cmp.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192, label %.lr.ph.i.epil, !llvm.loop !180

_ZL13DecodeFPDeltaPhS_iii.exit.thread192:         ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.ak
  %i.qy = mul i32 %i.ga, %i.bl                    ; 2 uses
  %i.qz = icmp sgt i32 %i.qy, 0
  br i1 %i.qz, label %.lr.ph68.preheader.i, label %_ZL12expandFloatsPhii.exit

_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph77.i
  %lcmp.mod386.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod386.not, label %_ZL13DecodeFPDeltaPhS_iii.exit, label %.lr.ph77.i.epil.preheader

.lr.ph77.i.epil.preheader:                        ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa, %.lr.ph77.i.preheader
  %indvars.iv89.i.epil.init = phi i64 [ 0, %.lr.ph77.i.preheader ], [ %indvars.iv.next90.i.3, %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa ]
  %.275.i.epil.init = phi ptr [ %i.ge, %.lr.ph77.i.preheader ], [ %i.qg, %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa ]
  %lcmp.mod387 = icmp ne i64 %xtraiter384, 0
  call void @llvm.assume(i1 %lcmp.mod387)
  br label %.lr.ph77.i.epil

.lr.ph77.i.epil:                                  ; preds = %.lr.ph77.i.epil, %.lr.ph77.i.epil.preheader
  %indvars.iv89.i.epil = phi i64 [ %indvars.iv.next90.i.epil, %.lr.ph77.i.epil ], [ %indvars.iv89.i.epil.init, %.lr.ph77.i.epil.preheader ] ; 5 uses
  %.275.i.epil = phi ptr [ %i.rl, %.lr.ph77.i.epil ], [ %.275.i.epil.init, %.lr.ph77.i.epil.preheader ] ; 5 uses
  %epil.iter385 = phi i64 [ %epil.iter385.next, %.lr.ph77.i.epil ], [ 0, %.lr.ph77.i.epil.preheader ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.oi, i64 %indvars.iv89.i.epil
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !133
  store i8 %i.rb, ptr %.275.i.epil, align 1, !tbaa !133
  %i.rc = getelementptr inbounds nuw i8, ptr %i.of, i64 %indvars.iv89.i.epil
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !133
  %i.re = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 1
  store i8 %i.rd, ptr %i.re, align 1, !tbaa !133
  %i.rf = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv89.i.epil
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !133
  %i.rh = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 2
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !133
  %i.ri = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv89.i.epil
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !133
  %i.rk = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 3
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !133
  %i.rl = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 4
  %indvars.iv.next90.i.epil = add nuw nsw i64 %indvars.iv89.i.epil, 1
  %epil.iter385.next = add i64 %epil.iter385, 1   ; 2 uses
  %epil.iter385.cmp.not = icmp eq i64 %epil.iter385.next, %xtraiter384
  br i1 %epil.iter385.cmp.not, label %_ZL13DecodeFPDeltaPhS_iii.exit, label %.lr.ph77.i.epil, !llvm.loop !181

_ZL13DecodeFPDeltaPhS_iii.exit:                   ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa, %.lr.ph77.i.epil, %bb.al
  %i.rm = mul i32 %i.ga, %i.bl                    ; 3 uses
  %i.rn = icmp sgt i32 %i.rm, 0
end_hunk_0
