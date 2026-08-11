inline.NumInlined: 149
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6LibRaw20deflate_dng_load_rawEv:bb.a
  %i.iz = phi <4 x i8> [ %i.jp, %.lr.ph.i.i ], [ %i.iy, %.lr.ph.preheader.i.i ]
  %niter = phi i32 [ %niter.next.7, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %.2.i.i = getelementptr inbounds nuw i8, ptr %.pn90.i.i, i64 4 ; 2 uses
  %i.ja = load <4 x i8>, ptr %.2.i.i, align 1, !tbaa !155
  %i.jb = add <4 x i8> %i.ja, %i.iz               ; 2 uses
  store <4 x i8> %i.jb, ptr %.2.i.i, align 1, !tbaa !155
  %.2.i.i.1 = getelementptr inbounds nuw i8, ptr %.pn90.i.i, i64 8 ; 2 uses
  %i.jc = load <4 x i8>, ptr %.2.i.i.1, align 1, !tbaa !155
  %i.jd = add <4 x i8> %i.jc, %i.jb               ; 2 uses
  store <4 x i8> %i.jd, ptr %.2.i.i.1, align 1, !tbaa !155
  %.2.i.i.2 = getelementptr inbounds nuw i8, ptr %.pn90.i.i, i64 12 ; 2 uses
  %i.je = load <4 x i8>, ptr %.2.i.i.2, align 1, !tbaa !155
  %i.jf = add <4 x i8> %i.je, %i.jd               ; 2 uses
  store <4 x i8> %i.jf, ptr %.2.i.i.2, align 1, !tbaa !155
  %.2.i.i.3 = getelementptr inbounds nuw i8, ptr %.pn90.i.i, i64 16 ; 2 uses
  %i.jg = load <4 x i8>, ptr %.2.i.i.3, align 1, !tbaa !155
  %i.jh = add <4 x i8> %i.jg, %i.jf               ; 2 uses
  store <4 x i8> %i.jh, ptr %.2.i.i.3, align 1, !tbaa !155
  %.2.i.i.4 = getelementptr inbounds nuw i8, ptr %.pn90.i.i, i64 20 ; 2 uses
  %i.ji = load <4 x i8>, ptr %.2.i.i.4, align 1, !tbaa !155
  %i.jj = add <4 x i8> %i.ji, %i.jh               ; 2 uses
  store <4 x i8> %i.jj, ptr %.2.i.i.4, align 1, !tbaa !155
  %.2.i.i.5 = getelementptr inbounds nuw i8, ptr %.pn90.i.i, i64 24 ; 2 uses
  %i.jk = load <4 x i8>, ptr %.2.i.i.5, align 1, !tbaa !155
  %i.jl = add <4 x i8> %i.jk, %i.jj               ; 2 uses
  store <4 x i8> %i.jl, ptr %.2.i.i.5, align 1, !tbaa !155
  %.2.i.i.6 = getelementptr inbounds nuw i8, ptr %.pn90.i.i, i64 28 ; 2 uses
  %i.jm = load <4 x i8>, ptr %.2.i.i.6, align 1, !tbaa !155
  %i.jn = add <4 x i8> %i.jm, %i.jl               ; 2 uses
  store <4 x i8> %i.jn, ptr %.2.i.i.6, align 1, !tbaa !155
  %.2.i.i.7 = getelementptr inbounds nuw i8, ptr %.pn90.i.i, i64 32 ; 4 uses
  %i.jo = load <4 x i8>, ptr %.2.i.i.7, align 1, !tbaa !155
  %i.jp = add <4 x i8> %i.jo, %i.jn               ; 3 uses
  store <4 x i8> %i.jp, ptr %.2.i.i.7, align 1, !tbaa !155
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_Z16DecodeDeltaBytesPhii.exit.i.loopexit350.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !158

iter.check333:                                    ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.070109.i.i = phi i32 [ %i.ki, %._crit_edge.i.i ], [ 1, %.preheader.preheader.i.i ]
  %.3108.i.i = phi ptr [ %i.kh, %._crit_edge.i.i ], [ %i.gq, %.preheader.preheader.i.i ] ; 5 uses
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %.3108.i.i, i64 %i.gu ; 3 uses
  br i1 %min.iters.check314, label %vec.epilog.scalar.ph334.preheader, label %vector.main.loop.iter.check315

vector.main.loop.iter.check315:                   ; preds = %iter.check333
  br i1 %min.iters.check316, label %vec.epilog.ph337, label %vector.body319

vector.body319:                                   ; preds = %vector.main.loop.iter.check315, %vector.body319
  %index320 = phi i64 [ %index.next329, %vector.body319 ], [ 0, %vector.main.loop.iter.check315 ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.3108.i.i, i64 %index320 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 96
  %wide.load321.a = load <32 x i8>, ptr %i.jq, align 1, !tbaa !155
  %wide.load322.a = load <32 x i8>, ptr %i.jr, align 1, !tbaa !155
  %wide.load323.a = load <32 x i8>, ptr %i.js, align 1, !tbaa !155
  %wide.load324.a = load <32 x i8>, ptr %i.jt, align 1, !tbaa !155
  %i.ju = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %index320 ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 64 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 96 ; 2 uses
  %wide.load325.a = load <32 x i8>, ptr %i.ju, align 1, !tbaa !155
  %wide.load326 = load <32 x i8>, ptr %i.jv, align 1, !tbaa !155
  %wide.load327 = load <32 x i8>, ptr %i.jw, align 1, !tbaa !155
  %wide.load328 = load <32 x i8>, ptr %i.jx, align 1, !tbaa !155
  %i.jy = add <32 x i8> %wide.load325.a, %wide.load321.a
  %i.jz = add <32 x i8> %wide.load326, %wide.load322.a
  %i.ka = add <32 x i8> %wide.load327, %wide.load323.a
  %i.kb = add <32 x i8> %wide.load328, %wide.load324.a
  store <32 x i8> %i.jy, ptr %i.ju, align 1, !tbaa !155
  store <32 x i8> %i.jz, ptr %i.jv, align 1, !tbaa !155
  store <32 x i8> %i.ka, ptr %i.jw, align 1, !tbaa !155
  store <32 x i8> %i.kb, ptr %i.jx, align 1, !tbaa !155
  %index.next329 = add nuw i64 %index320, 128     ; 2 uses
  %i.kc = icmp eq i64 %index.next329, %n.vec318
  br i1 %i.kc, label %middle.block330, label %vector.body319, !llvm.loop !159

middle.block330:                                  ; preds = %vector.body319
  br i1 %cmp.n331, label %._crit_edge.i.i, label %vec.epilog.iter.check335

vec.epilog.iter.check335:                         ; preds = %middle.block330
  br i1 %min.epilog.iters.check336, label %vec.epilog.scalar.ph334.preheader, label %vec.epilog.ph337, !prof !160

vec.epilog.ph337:                                 ; preds = %vector.main.loop.iter.check315, %vec.epilog.iter.check335
  %vec.epilog.resume.val332 = phi i64 [ %n.vec318, %vec.epilog.iter.check335 ], [ 0, %vector.main.loop.iter.check315 ]
  br label %vec.epilog.vector.body339

vec.epilog.vector.body339:                        ; preds = %vec.epilog.vector.body339, %vec.epilog.ph337
  %index340 = phi i64 [ %vec.epilog.resume.val332, %vec.epilog.ph337 ], [ %index.next343, %vec.epilog.vector.body339 ] ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.3108.i.i, i64 %index340
  %wide.load341 = load <8 x i8>, ptr %i.kd, align 1, !tbaa !155
  %i.ke = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %index340 ; 2 uses
  %wide.load342 = load <8 x i8>, ptr %i.ke, align 1, !tbaa !155
  %i.kf = add <8 x i8> %wide.load342, %wide.load341
  store <8 x i8> %i.kf, ptr %i.ke, align 1, !tbaa !155
  %index.next343 = add nuw i64 %index340, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next343, %n.vec338
  br i1 %i.kg, label %vec.epilog.middle.block344, label %vec.epilog.vector.body339, !llvm.loop !161

vec.epilog.middle.block344:                       ; preds = %vec.epilog.vector.body339
  br i1 %cmp.n345, label %._crit_edge.i.i, label %vec.epilog.scalar.ph334.preheader

vec.epilog.scalar.ph334.preheader:                ; preds = %iter.check333, %vec.epilog.iter.check335, %vec.epilog.middle.block344
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check333 ], [ %n.vec318, %vec.epilog.iter.check335 ], [ %n.vec338, %vec.epilog.middle.block344 ]
  br label %vec.epilog.scalar.ph334

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph334, %vec.epilog.middle.block344, %middle.block330
  %i.kh = getelementptr inbounds nuw i8, ptr %.3108.i.i, i64 %i.gt
  %i.ki = add nuw nsw i32 %.070109.i.i, 1         ; 2 uses
  %exitcond117.not.i.i = icmp eq i32 %i.ki, %i.fz
  br i1 %exitcond117.not.i.i, label %_Z16DecodeDeltaBytesPhii.exit.i, label %iter.check333, !llvm.loop !162

vec.epilog.scalar.ph334:                          ; preds = %vec.epilog.scalar.ph334.preheader, %vec.epilog.scalar.ph334
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %vec.epilog.scalar.ph334 ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph334.preheader ] ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.3108.i.i, i64 %indvars.iv.i.i
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !155
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.kl = load i8, ptr %gep.i.i, align 1, !tbaa !155
  %i.km = add i8 %i.kl, %i.kk
  store i8 %i.km, ptr %gep.i.i, align 1, !tbaa !155
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond116.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.gu
  br i1 %exitcond116.not.i.i, label %._crit_edge.i.i, label %vec.epilog.scalar.ph334, !llvm.loop !163

_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa: ; preds = %.lr.ph105.i.i
  br i1 %lcmp.mod367.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph105.i.i.epil.preheader

.lr.ph105.i.i.epil.preheader:                     ; preds = %_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa, %.lr.ph105.preheader.i.i
  %.081103.i.i.epil.init = phi i8 [ %i.gw, %.lr.ph105.preheader.i.i ], [ %i.hm, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa ]
  %.pn85102.i.i.epil.init = phi ptr [ %i.gq, %.lr.ph105.preheader.i.i ], [ %.082.i.i.7, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod368)
  br label %.lr.ph105.i.i.epil

.lr.ph105.i.i.epil:                               ; preds = %.lr.ph105.i.i.epil, %.lr.ph105.i.i.epil.preheader
  %.081103.i.i.epil = phi i8 [ %i.ko, %.lr.ph105.i.i.epil ], [ %.081103.i.i.epil.init, %.lr.ph105.i.i.epil.preheader ]
  %.pn85102.i.i.epil = phi ptr [ %.082.i.i.epil, %.lr.ph105.i.i.epil ], [ %.pn85102.i.i.epil.init, %.lr.ph105.i.i.epil.preheader ]
  %epil.iter366 = phi i32 [ %epil.iter366.next, %.lr.ph105.i.i.epil ], [ 0, %.lr.ph105.i.i.epil.preheader ]
  %.082.i.i.epil = getelementptr inbounds nuw i8, ptr %.pn85102.i.i.epil, i64 1 ; 3 uses
  %i.kn = load i8, ptr %.082.i.i.epil, align 1, !tbaa !155
  %i.ko = add i8 %i.kn, %.081103.i.i.epil         ; 2 uses
  store i8 %i.ko, ptr %.082.i.i.epil, align 1, !tbaa !155
  %epil.iter366.next = add i32 %epil.iter366, 1   ; 2 uses
  %epil.iter366.cmp.not = icmp eq i32 %epil.iter366.next, %xtraiter365
  br i1 %epil.iter366.cmp.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph105.i.i.epil, !llvm.loop !164

_Z16DecodeDeltaBytesPhii.exit.i.loopexit349.unr-lcssa: ; preds = %.lr.ph101.i.i
  br i1 %lcmp.mod361.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph101.i.i.epil.preheader

.lr.ph101.i.i.epil.preheader:                     ; preds = %_Z16DecodeDeltaBytesPhii.exit.i.loopexit349.unr-lcssa, %.lr.ph101.preheader.i.i
  %.07799.i.i.epil.init = phi i8 [ %i.ho, %.lr.ph101.preheader.i.i ], [ %i.ix, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit349.unr-lcssa ]
  %.07898.i.i.epil.init = phi i8 [ %i.hq, %.lr.ph101.preheader.i.i ], [ %i.iu, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit349.unr-lcssa ]
  %.07997.i.i.epil.init = phi i8 [ %i.hr, %.lr.ph101.preheader.i.i ], [ %i.ir, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit349.unr-lcssa ]
  %.pn8496.i.i.epil.init = phi ptr [ %i.gq, %.lr.ph101.preheader.i.i ], [ %.1.i.i.3, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit349.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod362)
  br label %.lr.ph101.i.i.epil

.lr.ph101.i.i.epil:                               ; preds = %.lr.ph101.i.i.epil, %.lr.ph101.i.i.epil.preheader
  %.07799.i.i.epil = phi i8 [ %i.kw, %.lr.ph101.i.i.epil ], [ %.07799.i.i.epil.init, %.lr.ph101.i.i.epil.preheader ]
  %.07898.i.i.epil = phi i8 [ %i.kt, %.lr.ph101.i.i.epil ], [ %.07898.i.i.epil.init, %.lr.ph101.i.i.epil.preheader ]
  %.07997.i.i.epil = phi i8 [ %i.kq, %.lr.ph101.i.i.epil ], [ %.07997.i.i.epil.init, %.lr.ph101.i.i.epil.preheader ]
  %.pn8496.i.i.epil = phi ptr [ %.1.i.i.epil, %.lr.ph101.i.i.epil ], [ %.pn8496.i.i.epil.init, %.lr.ph101.i.i.epil.preheader ] ; 3 uses
  %epil.iter360 = phi i32 [ %epil.iter360.next, %.lr.ph101.i.i.epil ], [ 0, %.lr.ph101.i.i.epil.preheader ]
  %.1.i.i.epil = getelementptr inbounds nuw i8, ptr %.pn8496.i.i.epil, i64 3 ; 3 uses
  %i.kp = load i8, ptr %.1.i.i.epil, align 1, !tbaa !155
  %i.kq = add i8 %i.kp, %.07997.i.i.epil          ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.pn8496.i.i.epil, i64 4 ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !155
  %i.kt = add i8 %i.ks, %.07898.i.i.epil          ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.pn8496.i.i.epil, i64 5 ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !155
  %i.kw = add i8 %i.kv, %.07799.i.i.epil          ; 2 uses
  store i8 %i.kq, ptr %.1.i.i.epil, align 1, !tbaa !155
  store i8 %i.kt, ptr %i.kr, align 1, !tbaa !155
  store i8 %i.kw, ptr %i.ku, align 1, !tbaa !155
  %epil.iter360.next = add i32 %epil.iter360, 1   ; 2 uses
  %epil.iter360.cmp.not = icmp eq i32 %epil.iter360.next, %xtraiter359
  br i1 %epil.iter360.cmp.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph101.i.i.epil, !llvm.loop !166

_Z16DecodeDeltaBytesPhii.exit.i.loopexit350.unr-lcssa: ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_Z16DecodeDeltaBytesPhii.exit.i.loopexit350.unr-lcssa, %.lr.ph.preheader.i.i
  %.pn90.i.i.epil.init = phi ptr [ %i.gq, %.lr.ph.preheader.i.i ], [ %.2.i.i.7, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit350.unr-lcssa ]
  %.epil.init = phi <4 x i8> [ %i.iy, %.lr.ph.preheader.i.i ], [ %i.jp, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit350.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod358)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.pn90.i.i.epil = phi ptr [ %.2.i.i.epil, %.lr.ph.i.i.epil ], [ %.pn90.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %i.kx = phi <4 x i8> [ %i.kz, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %.2.i.i.epil = getelementptr inbounds nuw i8, ptr %.pn90.i.i.epil, i64 4 ; 3 uses
  %i.ky = load <4 x i8>, ptr %.2.i.i.epil, align 1, !tbaa !155
  %i.kz = add <4 x i8> %i.ky, %i.kx               ; 2 uses
  store <4 x i8> %i.kz, ptr %.2.i.i.epil, align 1, !tbaa !155
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z16DecodeDeltaBytesPhii.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !167

_Z16DecodeDeltaBytesPhii.exit.i:                  ; preds = %_Z16DecodeDeltaBytesPhii.exit.i.loopexit350.unr-lcssa, %.lr.ph.i.i.epil, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit349.unr-lcssa, %.lr.ph101.i.i.epil, %_Z16DecodeDeltaBytesPhii.exit.i.loopexit348.unr-lcssa, %.lr.ph105.i.i.epil, %._crit_edge.i.i, %bb.at, %bb.as, %bb.ar, %.preheader.lr.ph.i.i, %.preheader86.i.i
  %i.la = mul i32 %i.gr, %i.ec                    ; 13 uses
  %2 = sext i32 %i.la to i64
  %i.lb = getelementptr inbounds i8, ptr %i.gq, i64 %2 ; 19 uses
  switch i32 %i.fl, label %bb.aw [
    i32 2, label %bb.au
    i32 3, label %bb.av
  ]

bb.au:                                            ; preds = %_Z16DecodeDeltaBytesPhii.exit.i
  %i.lc = icmp sgt i32 %i.la, 0
  br i1 %i.lc, label %.lr.ph74.preheader.i, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread

.lr.ph74.preheader.i:                             ; preds = %bb.au
  %wide.trip.count87.i = zext nneg i32 %i.la to i64 ; 2 uses
  %xtraiter377 = and i64 %wide.trip.count87.i, 7  ; 3 uses
  %i.ld = icmp ult i32 %i.la, 8
  br i1 %i.ld, label %.lr.ph74.i.epil.preheader, label %.lr.ph74.preheader.i.new

.lr.ph74.preheader.i.new:                         ; preds = %.lr.ph74.preheader.i
  %unroll_iter381 = and i64 %wide.trip.count87.i, 2147483640
  br label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i, %.lr.ph74.preheader.i.new
  %indvars.iv84.i = phi i64 [ 0, %.lr.ph74.preheader.i.new ], [ %indvars.iv.next85.i.7, %.lr.ph74.i ] ; 10 uses
  %.06173.i = phi ptr [ %i.gp, %.lr.ph74.preheader.i.new ], [ %i.mz, %.lr.ph74.i ] ; 17 uses
  %niter382 = phi i64 [ 0, %.lr.ph74.preheader.i.new ], [ %niter382.next.7, %.lr.ph74.i ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv84.i
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !155
  store i8 %i.lf, ptr %.06173.i, align 1, !tbaa !155
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv84.i
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !155
  %i.li = getelementptr inbounds nuw i8, ptr %.06173.i, i64 1
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !155
  %i.lj = getelementptr inbounds nuw i8, ptr %.06173.i, i64 2
  %indvars.iv.next85.i = or disjoint i64 %indvars.iv84.i, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next85.i
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !155
  store i8 %i.ll, ptr %i.lj, align 1, !tbaa !155
  %i.lm = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next85.i
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !155
  %i.lo = getelementptr inbounds nuw i8, ptr %.06173.i, i64 3
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !155
  %i.lp = getelementptr inbounds nuw i8, ptr %.06173.i, i64 4
  %indvars.iv.next85.i.1 = or disjoint i64 %indvars.iv84.i, 2 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next85.i.1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !155
  store i8 %i.lr, ptr %i.lp, align 1, !tbaa !155
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next85.i.1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !155
  %i.lu = getelementptr inbounds nuw i8, ptr %.06173.i, i64 5
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !155
  %i.lv = getelementptr inbounds nuw i8, ptr %.06173.i, i64 6
  %indvars.iv.next85.i.2 = or disjoint i64 %indvars.iv84.i, 3 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next85.i.2
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !155
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !155
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next85.i.2
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !155
  %i.ma = getelementptr inbounds nuw i8, ptr %.06173.i, i64 7
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !155
  %i.mb = getelementptr inbounds nuw i8, ptr %.06173.i, i64 8
  %indvars.iv.next85.i.3 = or disjoint i64 %indvars.iv84.i, 4 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next85.i.3
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !155
  store i8 %i.md, ptr %i.mb, align 1, !tbaa !155
  %i.me = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next85.i.3
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !155
  %i.mg = getelementptr inbounds nuw i8, ptr %.06173.i, i64 9
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !155
  %i.mh = getelementptr inbounds nuw i8, ptr %.06173.i, i64 10
  %indvars.iv.next85.i.4 = or disjoint i64 %indvars.iv84.i, 5 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next85.i.4
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !155
  store i8 %i.mj, ptr %i.mh, align 1, !tbaa !155
  %i.mk = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next85.i.4
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !155
  %i.mm = getelementptr inbounds nuw i8, ptr %.06173.i, i64 11
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !155
  %i.mn = getelementptr inbounds nuw i8, ptr %.06173.i, i64 12
  %indvars.iv.next85.i.5 = or disjoint i64 %indvars.iv84.i, 6 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next85.i.5
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !155
  store i8 %i.mp, ptr %i.mn, align 1, !tbaa !155
  %i.mq = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next85.i.5
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !155
  %i.ms = getelementptr inbounds nuw i8, ptr %.06173.i, i64 13
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !155
  %i.mt = getelementptr inbounds nuw i8, ptr %.06173.i, i64 14
  %indvars.iv.next85.i.6 = or disjoint i64 %indvars.iv84.i, 7 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next85.i.6
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !155
  store i8 %i.mv, ptr %i.mt, align 1, !tbaa !155
  %i.mw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next85.i.6
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !155
  %i.my = getelementptr inbounds nuw i8, ptr %.06173.i, i64 15
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !155
  %i.mz = getelementptr inbounds nuw i8, ptr %.06173.i, i64 16 ; 2 uses
  %indvars.iv.next85.i.7 = add nuw nsw i64 %indvars.iv84.i, 8 ; 2 uses
  %niter382.next.7 = add i64 %niter382, 8         ; 2 uses
  %niter382.ncmp.7 = icmp eq i64 %niter382.next.7, %unroll_iter381
  br i1 %niter382.ncmp.7, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa, label %.lr.ph74.i, !llvm.loop !168

bb.av:                                            ; preds = %_Z16DecodeDeltaBytesPhii.exit.i
  %i.na = shl nsw i32 %i.la, 1
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds i8, ptr %i.gq, i64 %i.nb ; 5 uses
  %i.nd = icmp sgt i32 %i.la, 0
  br i1 %i.nd, label %.lr.ph.preheader.i, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192

.lr.ph.preheader.i:                               ; preds = %bb.av
  %wide.trip.count.i = zext nneg i32 %i.la to i64 ; 2 uses
  %xtraiter371 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ne = icmp ult i32 %i.la, 4
  br i1 %i.ne, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter375 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 7 uses
  %.171.i = phi ptr [ %i.gp, %.lr.ph.preheader.i.new ], [ %i.oo, %.lr.ph.i ] ; 13 uses
  %niter376 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter376.next.3, %.lr.ph.i ]
  %i.nf = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.i
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !155
  store i8 %i.ng, ptr %.171.i, align 1, !tbaa !155
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.i
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !155
  %i.nj = getelementptr inbounds nuw i8, ptr %.171.i, i64 1
  store i8 %i.ni, ptr %i.nj, align 1, !tbaa !155
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv.i
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !155
  %i.nm = getelementptr inbounds nuw i8, ptr %.171.i, i64 2
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !155
  %i.nn = getelementptr inbounds nuw i8, ptr %.171.i, i64 3
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next.i
  %i.np = load i8, ptr %i.no, align 1, !tbaa !155
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !155
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next.i
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !155
  %i.ns = getelementptr inbounds nuw i8, ptr %.171.i, i64 4
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !155
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv.next.i
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !155
  %i.nv = getelementptr inbounds nuw i8, ptr %.171.i, i64 5
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !155
  %i.nw = getelementptr inbounds nuw i8, ptr %.171.i, i64 6
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next.i.1
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !155
  store i8 %i.ny, ptr %i.nw, align 1, !tbaa !155
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next.i.1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !155
  %i.ob = getelementptr inbounds nuw i8, ptr %.171.i, i64 7
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !155
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv.next.i.1
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !155
  %i.oe = getelementptr inbounds nuw i8, ptr %.171.i, i64 8
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !155
  %i.of = getelementptr inbounds nuw i8, ptr %.171.i, i64 9
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next.i.2
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !155
  store i8 %i.oh, ptr %i.of, align 1, !tbaa !155
  %i.oi = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next.i.2
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !155
  %i.ok = getelementptr inbounds nuw i8, ptr %.171.i, i64 10
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !155
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv.next.i.2
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !155
  %i.on = getelementptr inbounds nuw i8, ptr %.171.i, i64 11
  store i8 %i.om, ptr %i.on, align 1, !tbaa !155
  %i.oo = getelementptr inbounds nuw i8, ptr %.171.i, i64 12 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter376.next.3 = add i64 %niter376, 4         ; 2 uses
  %niter376.ncmp.3 = icmp eq i64 %niter376.next.3, %unroll_iter375
  br i1 %niter376.ncmp.3, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !169

bb.aw:                                            ; preds = %_Z16DecodeDeltaBytesPhii.exit.i
  %i.op = shl nsw i32 %i.la, 1
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds i8, ptr %i.gq, i64 %i.oq ; 5 uses
  %i.os = mul nsw i32 %i.la, 3
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds i8, ptr %i.gq, i64 %i.ot ; 5 uses
  %i.ov = icmp sgt i32 %i.la, 0
  br i1 %i.ov, label %.lr.ph77.preheader.i, label %_ZL13DecodeFPDeltaPhS_iii.exit

.lr.ph77.preheader.i:                             ; preds = %bb.aw
  %wide.trip.count92.i = zext nneg i32 %i.la to i64 ; 2 uses
  %xtraiter383 = and i64 %wide.trip.count92.i, 3  ; 3 uses
  %i.ow = icmp ult i32 %i.la, 4
  br i1 %i.ow, label %.lr.ph77.i.epil.preheader, label %.lr.ph77.preheader.i.new

.lr.ph77.preheader.i.new:                         ; preds = %.lr.ph77.preheader.i
  %unroll_iter387 = and i64 %wide.trip.count92.i, 2147483644
  br label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i.new
  %indvars.iv89.i = phi i64 [ 0, %.lr.ph77.preheader.i.new ], [ %indvars.iv.next90.i.3, %.lr.ph77.i ] ; 8 uses
  %.275.i = phi ptr [ %i.gp, %.lr.ph77.preheader.i.new ], [ %i.qs, %.lr.ph77.i ] ; 17 uses
  %niter388 = phi i64 [ 0, %.lr.ph77.preheader.i.new ], [ %niter388.next.3, %.lr.ph77.i ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 %indvars.iv89.i
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !155
  store i8 %i.oy, ptr %.275.i, align 1, !tbaa !155
  %i.oz = getelementptr inbounds nuw i8, ptr %i.or, i64 %indvars.iv89.i
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !155
  %i.pb = getelementptr inbounds nuw i8, ptr %.275.i, i64 1
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !155
  %i.pc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv89.i
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !155
  %i.pe = getelementptr inbounds nuw i8, ptr %.275.i, i64 2
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !155
  %i.pf = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv89.i
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !155
  %i.ph = getelementptr inbounds nuw i8, ptr %.275.i, i64 3
  store i8 %i.pg, ptr %i.ph, align 1, !tbaa !155
  %i.pi = getelementptr inbounds nuw i8, ptr %.275.i, i64 4
  %indvars.iv.next90.i = or disjoint i64 %indvars.iv89.i, 1 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ou, i64 %indvars.iv.next90.i
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !155
  store i8 %i.pk, ptr %i.pi, align 1, !tbaa !155
  %i.pl = getelementptr inbounds nuw i8, ptr %i.or, i64 %indvars.iv.next90.i
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !155
  %i.pn = getelementptr inbounds nuw i8, ptr %.275.i, i64 5
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !155
  %i.po = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next90.i
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !155
  %i.pq = getelementptr inbounds nuw i8, ptr %.275.i, i64 6
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !155
  %i.pr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next90.i
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !155
  %i.pt = getelementptr inbounds nuw i8, ptr %.275.i, i64 7
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !155
  %i.pu = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  %indvars.iv.next90.i.1 = or disjoint i64 %indvars.iv89.i, 2 ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ou, i64 %indvars.iv.next90.i.1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !155
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !155
  %i.px = getelementptr inbounds nuw i8, ptr %i.or, i64 %indvars.iv.next90.i.1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !155
  %i.pz = getelementptr inbounds nuw i8, ptr %.275.i, i64 9
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !155
  %i.qa = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next90.i.1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !155
  %i.qc = getelementptr inbounds nuw i8, ptr %.275.i, i64 10
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !155
  %i.qd = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next90.i.1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !155
  %i.qf = getelementptr inbounds nuw i8, ptr %.275.i, i64 11
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !155
  %i.qg = getelementptr inbounds nuw i8, ptr %.275.i, i64 12
  %indvars.iv.next90.i.2 = or disjoint i64 %indvars.iv89.i, 3 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ou, i64 %indvars.iv.next90.i.2
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !155
  store i8 %i.qi, ptr %i.qg, align 1, !tbaa !155
  %i.qj = getelementptr inbounds nuw i8, ptr %i.or, i64 %indvars.iv.next90.i.2
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !155
  %i.ql = getelementptr inbounds nuw i8, ptr %.275.i, i64 13
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !155
  %i.qm = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.next90.i.2
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !155
  %i.qo = getelementptr inbounds nuw i8, ptr %.275.i, i64 14
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !155
  %i.qp = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next90.i.2
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !155
  %i.qr = getelementptr inbounds nuw i8, ptr %.275.i, i64 15
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !155
  %i.qs = getelementptr inbounds nuw i8, ptr %.275.i, i64 16 ; 2 uses
  %indvars.iv.next90.i.3 = add nuw nsw i64 %indvars.iv89.i, 4 ; 2 uses
  %niter388.next.3 = add i64 %niter388, 4         ; 2 uses
  %niter388.ncmp.3 = icmp eq i64 %niter388.next.3, %unroll_iter387
  br i1 %niter388.ncmp.3, label %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa, label %.lr.ph77.i, !llvm.loop !170

_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph74.i
  %lcmp.mod379.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod379.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread, label %.lr.ph74.i.epil.preheader

.lr.ph74.i.epil.preheader:                        ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa, %.lr.ph74.preheader.i
  %indvars.iv84.i.epil.init = phi i64 [ 0, %.lr.ph74.preheader.i ], [ %indvars.iv.next85.i.7, %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa ]
  %.06173.i.epil.init = phi ptr [ %i.gp, %.lr.ph74.preheader.i ], [ %i.mz, %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod380 = icmp ne i64 %xtraiter377, 0
  call void @llvm.assume(i1 %lcmp.mod380)
  br label %.lr.ph74.i.epil

.lr.ph74.i.epil:                                  ; preds = %.lr.ph74.i.epil, %.lr.ph74.i.epil.preheader
  %indvars.iv84.i.epil = phi i64 [ %indvars.iv84.i.epil.init, %.lr.ph74.i.epil.preheader ], [ %indvars.iv.next85.i.epil, %.lr.ph74.i.epil ] ; 3 uses
  %.06173.i.epil = phi ptr [ %.06173.i.epil.init, %.lr.ph74.i.epil.preheader ], [ %i.qy, %.lr.ph74.i.epil ] ; 3 uses
  %epil.iter378 = phi i64 [ 0, %.lr.ph74.i.epil.preheader ], [ %epil.iter378.next, %.lr.ph74.i.epil ]
  %i.qt = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv84.i.epil
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !155
  store i8 %i.qu, ptr %.06173.i.epil, align 1, !tbaa !155
  %i.qv = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv84.i.epil
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !155
  %i.qx = getelementptr inbounds nuw i8, ptr %.06173.i.epil, i64 1
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !155
  %i.qy = getelementptr inbounds nuw i8, ptr %.06173.i.epil, i64 2
  %indvars.iv.next85.i.epil = add nuw nsw i64 %indvars.iv84.i.epil, 1
  %epil.iter378.next = add i64 %epil.iter378, 1   ; 2 uses
  %epil.iter378.cmp.not = icmp eq i64 %epil.iter378.next, %xtraiter377
  br i1 %epil.iter378.cmp.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread, label %.lr.ph74.i.epil, !llvm.loop !171

_ZL13DecodeFPDeltaPhS_iii.exit.thread:            ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread.loopexit.unr-lcssa, %.lr.ph74.i.epil, %bb.au
  %i.qz = mul i32 %i.gl, %i.bp                    ; 2 uses
  %i.ra = icmp sgt i32 %i.qz, 0
  br i1 %i.ra, label %.lr.ph73.preheader.i, label %_ZL12expandFloatsPhii.exit

_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod373.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod373.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa ]
  %.171.i.epil.init = phi ptr [ %i.gp, %.lr.ph.preheader.i ], [ %i.oo, %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa ]
  %lcmp.mod374 = icmp ne i64 %xtraiter371, 0
  call void @llvm.assume(i1 %lcmp.mod374)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 4 uses
  %.171.i.epil = phi ptr [ %.171.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.rj, %.lr.ph.i.epil ] ; 4 uses
  %epil.iter372 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter372.next, %.lr.ph.i.epil ]
  %i.rb = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.i.epil
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !155
  store i8 %i.rc, ptr %.171.i.epil, align 1, !tbaa !155
  %i.rd = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv.i.epil
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !155
  %i.rf = getelementptr inbounds nuw i8, ptr %.171.i.epil, i64 1
  store i8 %i.re, ptr %i.rf, align 1, !tbaa !155
  %i.rg = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv.i.epil
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !155
  %i.ri = getelementptr inbounds nuw i8, ptr %.171.i.epil, i64 2
  store i8 %i.rh, ptr %i.ri, align 1, !tbaa !155
  %i.rj = getelementptr inbounds nuw i8, ptr %.171.i.epil, i64 3
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter372.next = add i64 %epil.iter372, 1   ; 2 uses
  %epil.iter372.cmp.not = icmp eq i64 %epil.iter372.next, %xtraiter371
  br i1 %epil.iter372.cmp.not, label %_ZL13DecodeFPDeltaPhS_iii.exit.thread192, label %.lr.ph.i.epil, !llvm.loop !172

_ZL13DecodeFPDeltaPhS_iii.exit.thread192:         ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread192.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.av
  %i.rk = mul i32 %i.gl, %i.bp                    ; 2 uses
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %.lr.ph68.preheader.i, label %_ZL12expandFloatsPhii.exit

_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph77.i
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %_ZL13DecodeFPDeltaPhS_iii.exit, label %.lr.ph77.i.epil.preheader

.lr.ph77.i.epil.preheader:                        ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa, %.lr.ph77.preheader.i
  %indvars.iv89.i.epil.init = phi i64 [ 0, %.lr.ph77.preheader.i ], [ %indvars.iv.next90.i.3, %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa ]
  %.275.i.epil.init = phi ptr [ %i.gp, %.lr.ph77.preheader.i ], [ %i.qs, %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter383, 0
  call void @llvm.assume(i1 %lcmp.mod386)
  br label %.lr.ph77.i.epil

.lr.ph77.i.epil:                                  ; preds = %.lr.ph77.i.epil, %.lr.ph77.i.epil.preheader
  %indvars.iv89.i.epil = phi i64 [ %indvars.iv89.i.epil.init, %.lr.ph77.i.epil.preheader ], [ %indvars.iv.next90.i.epil, %.lr.ph77.i.epil ] ; 5 uses
  %.275.i.epil = phi ptr [ %.275.i.epil.init, %.lr.ph77.i.epil.preheader ], [ %i.rx, %.lr.ph77.i.epil ] ; 5 uses
  %epil.iter384 = phi i64 [ 0, %.lr.ph77.i.epil.preheader ], [ %epil.iter384.next, %.lr.ph77.i.epil ]
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ou, i64 %indvars.iv89.i.epil
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !155
  store i8 %i.rn, ptr %.275.i.epil, align 1, !tbaa !155
  %i.ro = getelementptr inbounds nuw i8, ptr %i.or, i64 %indvars.iv89.i.epil
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !155
  %i.rq = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 1
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !155
  %i.rr = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv89.i.epil
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !155
  %i.rt = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 2
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !155
  %i.ru = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv89.i.epil
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !155
  %i.rw = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 3
  store i8 %i.rv, ptr %i.rw, align 1, !tbaa !155
  %i.rx = getelementptr inbounds nuw i8, ptr %.275.i.epil, i64 4
  %indvars.iv.next90.i.epil = add nuw nsw i64 %indvars.iv89.i.epil, 1
  %epil.iter384.next = add i64 %epil.iter384, 1   ; 2 uses
  %epil.iter384.cmp.not = icmp eq i64 %epil.iter384.next, %xtraiter383
  br i1 %epil.iter384.cmp.not, label %_ZL13DecodeFPDeltaPhS_iii.exit, label %.lr.ph77.i.epil, !llvm.loop !173

_ZL13DecodeFPDeltaPhS_iii.exit:                   ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.loopexit.unr-lcssa, %.lr.ph77.i.epil, %bb.aw
  %i.ry = mul i32 %i.gl, %i.bp                    ; 3 uses
  %i.rz = icmp sgt i32 %i.ry, 0
  %or.cond193 = and i1 %cond, %i.rz
  br i1 %or.cond193, label %.lr.ph.preheader.i157, label %_ZL12expandFloatsPhii.exit

.lr.ph.preheader.i157:                            ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit
  %wide.trip.count.i158 = zext nneg i32 %i.ry to i64 ; 2 uses
  %xtraiter389 = and i64 %wide.trip.count.i158, 7 ; 3 uses
  %i.sa = icmp ult i32 %i.ry, 8
  br i1 %i.sa, label %.lr.ph.i159.epil.preheader, label %.lr.ph.preheader.i157.new

.lr.ph.preheader.i157.new:                        ; preds = %.lr.ph.preheader.i157
  %unroll_iter394 = and i64 %wide.trip.count.i158, 2147483640
  br label %.lr.ph.i159

.lr.ph73.preheader.i:                             ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread
  %i.sb = zext nneg i32 %i.qz to i64
  br label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %_Z17__DNG_HalfToFloatt.exit.i, %.lr.ph73.preheader.i
  %indvars.iv81.i = phi i64 [ %i.sb, %.lr.ph73.preheader.i ], [ %indvars.iv.next82.i, %_Z17__DNG_HalfToFloatt.exit.i ] ; 2 uses
  %.04671.i = phi float [ 0.000000e+00, %.lr.ph73.preheader.i ], [ %.046..cast54.i, %_Z17__DNG_HalfToFloatt.exit.i ] ; 2 uses
  %indvars.iv.next82.i = add nsw i64 %indvars.iv81.i, -1 ; 3 uses
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %indvars.iv.next82.i
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !174
  %i.se = zext i16 %i.sd to i32                   ; 4 uses
  %i.sf = lshr i32 %i.se, 15                      ; 3 uses
  %i.sg = lshr i32 %i.se, 10
  %i.sh = and i32 %i.sg, 31                       ; 2 uses
  %i.si = and i32 %i.se, 1023                     ; 4 uses
  switch i32 %i.sh, label %bb.bb [
    i32 0, label %bb.ax
    i32 31, label %bb.az
  ]

bb.ax:                                            ; preds = %.lr.ph73.i
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %bb.ay, label %.preheader.preheader.i.i164

.preheader.preheader.i.i164:                      ; preds = %bb.ax
  %.masked.numleadingzeros.i.i = call range(i32 22, 33) i32 @llvm.ctlz.i32(i32 %i.si, i1 true) ; 2 uses
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.preheader.tripcount.i.i = sub nuw nsw i32 10, %.masked.leadingonepos.i.i
  %i.sk = shl nuw nsw i32 %i.se, %.preheader.tripcount.i.i
  %i.sl = sub nsw i32 22, %.masked.numleadingzeros.i.i
  %i.sm = and i32 %i.sk, 1022
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.sn = shl nuw i32 %i.sf, 31
  br label %_Z17__DNG_HalfToFloatt.exit.i

bb.az:                                            ; preds = %.lr.ph73.i
  %i.so = icmp eq i32 %i.si, 0
  br i1 %i.so, label %bb.ba, label %_Z17__DNG_HalfToFloatt.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.sp = shl nuw i32 %i.sf, 31
  %i.sq = or disjoint i32 %i.sp, 1199562752
  br label %_Z17__DNG_HalfToFloatt.exit.i

bb.bb:                                            ; preds = %.preheader.preheader.i.i164, %.lr.ph73.i
  %.121.i.i = phi i32 [ %i.sl, %.preheader.preheader.i.i164 ], [ %i.sh, %.lr.ph73.i ]
  %.1.i.i165 = phi i32 [ %i.sm, %.preheader.preheader.i.i164 ], [ %i.si, %.lr.ph73.i ]
  %i.sr = shl nuw nsw i32 %.1.i.i165, 13
  %i.ss = shl nuw i32 %i.sf, 31
  %i.st = shl nsw i32 %.121.i.i, 23
  %i.su = add nsw i32 %i.st, 939524096
  %i.sv = or i32 %i.ss, %i.su
  %i.sw = or disjoint i32 %i.sv, %i.sr
  br label %_Z17__DNG_HalfToFloatt.exit.i

_Z17__DNG_HalfToFloatt.exit.i:                    ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.022.i.i = phi i32 [ %i.sn, %bb.ay ], [ %i.sw, %bb.bb ], [ %i.sq, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next82.i
  store i32 %.022.i.i, ptr %i.sx, align 4, !tbaa !175
  %.cast54.i = bitcast i32 %.022.i.i to float     ; 2 uses
  %i.sy = fcmp reassoc nsz arcp contract afn ogt float %.04671.i, %.cast54.i
  %.046..cast54.i = select reassoc nsz arcp contract afn i1 %i.sy, float %.04671.i, float %.cast54.i ; 2 uses
  %i.sz = icmp samesign ugt i64 %indvars.iv81.i, 1
  br i1 %i.sz, label %.lr.ph73.i, label %_ZL12expandFloatsPhii.exit, !llvm.loop !176

.lr.ph68.preheader.i:                             ; preds = %_ZL13DecodeFPDeltaPhS_iii.exit.thread192
  %i.ta = add nsw i32 %i.rk, -1                   ; 2 uses
  %i.tb = mul nsw i32 %i.ta, 3
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.tc
  %i.te = zext nneg i32 %i.ta to i64
  br label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %_Z17__DNG_FP24ToFloatPKh.exit.i, %.lr.ph68.preheader.i
  %indvars.iv78.i = phi i64 [ %i.te, %.lr.ph68.preheader.i ], [ %indvars.iv.next79.i, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 3 uses
  %.167.i = phi float [ 0.000000e+00, %.lr.ph68.preheader.i ], [ %.1..cast.i, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 2 uses
  %.04965.i = phi ptr [ %i.td, %.lr.ph68.preheader.i ], [ %i.uh, %_Z17__DNG_FP24ToFloatPKh.exit.i ] ; 4 uses
  %i.tf = load i8, ptr %.04965.i, align 1, !tbaa !155
  %i.tg = zext i8 %i.tf to i32                    ; 2 uses
  %i.th = lshr i32 %i.tg, 7                       ; 3 uses
  %i.ti = and i32 %i.tg, 127                      ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.04965.i, i64 1
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !155
  %i.tl = zext i8 %i.tk to i32
  %i.tm = shl nuw nsw i32 %i.tl, 8
  %i.tn = getelementptr inbounds nuw i8, ptr %.04965.i, i64 2
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !155
  %i.tp = zext i8 %i.to to i32
  %i.tq = or disjoint i32 %i.tm, %i.tp            ; 5 uses
  switch i32 %i.ti, label %bb.bg [
    i32 0, label %bb.bc
    i32 127, label %bb.be
  ]

bb.bc:                                            ; preds = %.lr.ph68.i
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %bb.bd, label %._crit_edge.i.i163

bb.bd:                                            ; preds = %bb.bc
  %i.ts = shl nuw i32 %i.th, 31
  br label %_Z17__DNG_FP24ToFloatPKh.exit.i

._crit_edge.i.i163:                               ; preds = %bb.bc
  %.masked.numleadingzeros.i56.i = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.tq, i1 true) ; 2 uses
  %i.tt = sub nsw i32 16, %.masked.numleadingzeros.i56.i
  %.masked.leadingonepos.i57.i = xor i32 %.masked.numleadingzeros.i56.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 16, %.masked.leadingonepos.i57.i
  %i.tu = shl nuw i32 %i.tq, %.lr.ph.tripcount.i.i
  %i.tv = and i32 %i.tu, 65535
  br label %bb.bg

bb.be:                                            ; preds = %.lr.ph68.i
  %i.tw = icmp eq i32 %i.tq, 0
  br i1 %i.tw, label %bb.bf, label %_Z17__DNG_FP24ToFloatPKh.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.tx = shl nuw i32 %i.th, 31
  %i.ty = or disjoint i32 %i.tx, 1602224000
  br label %_Z17__DNG_FP24ToFloatPKh.exit.i

bb.bg:                                            ; preds = %._crit_edge.i.i163, %.lr.ph68.i
  %.121.i58.i = phi i32 [ %i.tt, %._crit_edge.i.i163 ], [ %i.ti, %.lr.ph68.i ]
  %.1.i59.i = phi i32 [ %i.tv, %._crit_edge.i.i163 ], [ %i.tq, %.lr.ph68.i ]
  %i.tz = shl nuw nsw i32 %.1.i59.i, 7
  %i.ua = shl nuw i32 %i.th, 31
  %i.ub = shl nsw i32 %.121.i58.i, 23
  %i.uc = add nsw i32 %i.ub, 536870912
  %i.ud = or i32 %i.uc, %i.ua
  %i.ue = or i32 %i.ud, %i.tz
  br label %_Z17__DNG_FP24ToFloatPKh.exit.i

_Z17__DNG_FP24ToFloatPKh.exit.i:                  ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %.022.i55.i = phi i32 [ %i.ts, %bb.bd ], [ %i.ue, %bb.bg ], [ %i.ty, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv78.i
  store i32 %.022.i55.i, ptr %i.uf, align 4, !tbaa !175
  %.cast.i = bitcast i32 %.022.i55.i to float     ; 2 uses
  %i.ug = fcmp reassoc nsz arcp contract afn ogt float %.167.i, %.cast.i
  %.1..cast.i = select reassoc nsz arcp contract afn i1 %i.ug, float %.167.i, float %.cast.i ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, -1
  %i.uh = getelementptr inbounds i8, ptr %.04965.i, i64 -3
  %i.ui = icmp sgt i64 %indvars.iv78.i, 0
  br i1 %i.ui, label %.lr.ph68.i, label %_ZL12expandFloatsPhii.exit, !llvm.loop !177

.lr.ph.i159:                                      ; preds = %.lr.ph.i159, %.lr.ph.preheader.i157.new
  %indvars.iv.i160 = phi i64 [ 0, %.lr.ph.preheader.i157.new ], [ %indvars.iv.next.i161.7, %.lr.ph.i159 ] ; 9 uses
  %.263.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i157.new ], [ %.2..i.7, %.lr.ph.i159 ] ; 2 uses
  %niter395 = phi i64 [ 0, %.lr.ph.preheader.i157.new ], [ %niter395.next.7, %.lr.ph.i159 ]
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !178 ; 2 uses
  %i.ul = fcmp reassoc nsz arcp contract afn ogt float %.263.i, %i.uk
  %.2..i = select reassoc nsz arcp contract afn i1 %i.ul, float %.263.i, float %i.uk ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.uo = load float, ptr %i.un, align 4, !tbaa !178 ; 2 uses
  %i.up = fcmp reassoc nsz arcp contract afn ogt float %.2..i, %i.uo
  %.2..i.1 = select reassoc nsz arcp contract afn i1 %i.up, float %.2..i, float %i.uo ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i160
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.us = load float, ptr %i.ur, align 4, !tbaa !178 ; 2 uses
  %i.ut = fcmp reassoc nsz arcp contract afn ogt float %.2..i.1, %i.us
  %.2..i.2 = select reassoc nsz arcp contract afn i1 %i.ut, float %.2..i.1, float %i.us ; 2 uses
end_hunk_0
