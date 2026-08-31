Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep1771 = getelementptr [4 x i8], ptr %i.dg, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep1772 = getelementptr [4 x i8], ptr %invariant.gep1771, i64 %index ; 4 uses
  %i.iy = getelementptr i8, ptr %gep1772, i64 32
  %i.iz = getelementptr i8, ptr %gep1772, i64 64
  %i.ja = getelementptr i8, ptr %gep1772, i64 96
  store <8 x float> %broadcast.splat, ptr %gep1772, align 4, !tbaa !20, !alias.scope !46, !noalias !43
  store <8 x float> %broadcast.splat, ptr %i.iy, align 4, !tbaa !20, !alias.scope !46, !noalias !43
  store <8 x float> %broadcast.splat, ptr %i.iz, align 4, !tbaa !20, !alias.scope !46, !noalias !43
  store <8 x float> %broadcast.splat, ptr %i.ja, align 4, !tbaa !20, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge479.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.jc = load float, ptr %i.iv, align 4, !tbaa !20, !alias.scope !43
  %i.jd = fmul reassoc nsz arcp contract afn float %i.jc, f0x3C23D70A
  %broadcast.splatinsert1186 = insertelement <4 x float> poison, float %i.jd, i64 0
  %broadcast.splat1187 = shufflevector <4 x float> %broadcast.splatinsert1186, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1773 = getelementptr [4 x i8], ptr %i.dg, i64 %i.ag
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1188, %vec.epilog.vector.body ] ; 2 uses
  %gep1774 = getelementptr [4 x i8], ptr %invariant.gep1773, i64 %index1185
  store <4 x float> %broadcast.splat1187, ptr %gep1774, align 4, !tbaa !20, !alias.scope !46, !noalias !43
  %index.next1188 = add nuw i64 %index1185, 4     ; 2 uses
  %i.je = icmp eq i64 %index.next1188, %n.vec1184
  br i1 %i.je, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1189, label %._crit_edge479.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv534.i.ph = phi i64 [ %i.ag, %iter.check ], [ %i.ag, %vector.memcheck ], [ %i.cq, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ] ; 4 uses
  %i.jf = sub i64 %i.cd, %indvars.iv534.i.ph
  %xtraiter1429 = and i64 %i.jf, 7                ; 2 uses
  %lcmp.mod1430.not = icmp eq i64 %xtraiter1429, 0
  br i1 %lcmp.mod1430.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv534.i.prol = phi i64 [ %indvars.iv.next535.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv534.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter1431 = phi i64 [ %prol.iter1431.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.jg = load float, ptr %i.iv, align 4, !tbaa !20
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, f0x3C23D70A
  %i.ji = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i.prol
  store float %i.jh, ptr %i.ji, align 4, !tbaa !20
  %indvars.iv.next535.i.prol = add nuw nsw i64 %indvars.iv534.i.prol, 1 ; 2 uses
  %prol.iter1431.next = add i64 %prol.iter1431, 1 ; 2 uses
  %prol.iter1431.cmp.not = icmp eq i64 %prol.iter1431.next, %xtraiter1429
  br i1 %prol.iter1431.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv534.i.unr = phi i64 [ %indvars.iv534.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next535.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.jj = sub i64 %indvars.iv534.i.ph, %i.ce
  %i.jk = icmp ugt i64 %i.jj, -8
  br i1 %i.jk, label %._crit_edge479.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph1216:                         ; preds = %vec.epilog.scalar.ph1216.prol.loopexit, %vec.epilog.scalar.ph1216
  %indvars.iv529.i = phi i64 [ %indvars.iv.next530.i.3, %vec.epilog.scalar.ph1216 ], [ %indvars.iv529.i.unr, %vec.epilog.scalar.ph1216.prol.loopexit ] ; 6 uses
  %i.jl = add nuw nsw i64 %indvars.iv529.i, %i.fm
  %.idx570.i = shl nsw i64 %i.jl, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !20
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, f0x3C23D70A
  %i.jp = trunc nuw nsw i64 %indvars.iv529.i to i32
  %.reass474.i = add i32 %invariant.op473.i, %i.jp
  %i.jq = sext i32 %.reass474.i to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.jq
  store float %i.jo, ptr %i.jr, align 4, !tbaa !20
  %indvars.iv.next530.i = add nuw nsw i64 %indvars.iv529.i, 1 ; 2 uses
  %i.js = add nuw nsw i64 %indvars.iv.next530.i, %i.fm
  %.idx570.i.1 = shl nsw i64 %i.js, 4
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.1
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !20
  %i.jv = fmul reassoc nsz arcp contract afn float %i.ju, f0x3C23D70A
  %i.jw = trunc nuw nsw i64 %indvars.iv.next530.i to i32
  %.reass474.i.1 = add i32 %invariant.op473.i, %i.jw
  %i.jx = sext i32 %.reass474.i.1 to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.jx
  store float %i.jv, ptr %i.jy, align 4, !tbaa !20
  %indvars.iv.next530.i.1 = add nuw nsw i64 %indvars.iv529.i, 2 ; 2 uses
  %i.jz = add nuw nsw i64 %indvars.iv.next530.i.1, %i.fm
  %.idx570.i.2 = shl nsw i64 %i.jz, 4
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.2
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !20
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, f0x3C23D70A
  %i.kd = trunc nuw nsw i64 %indvars.iv.next530.i.1 to i32
  %.reass474.i.2 = add i32 %invariant.op473.i, %i.kd
  %i.ke = sext i32 %.reass474.i.2 to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ke
  store float %i.kc, ptr %i.kf, align 4, !tbaa !20
  %indvars.iv.next530.i.2 = add nuw nsw i64 %indvars.iv529.i, 3 ; 2 uses
  %i.kg = add nuw nsw i64 %indvars.iv.next530.i.2, %i.fm
  %.idx570.i.3 = shl nsw i64 %i.kg, 4
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.3
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !20
  %i.kj = fmul reassoc nsz arcp contract afn float %i.ki, f0x3C23D70A
  %i.kk = trunc nuw nsw i64 %indvars.iv.next530.i.2 to i32
  %.reass474.i.3 = add i32 %invariant.op473.i, %i.kk
  %i.kl = sext i32 %.reass474.i.3 to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.kl
  store float %i.kj, ptr %i.km, align 4, !tbaa !20
  %indvars.iv.next530.i.3 = add nuw nsw i64 %indvars.iv529.i, 4 ; 2 uses
  %exitcond533.not.i.3 = icmp eq i64 %indvars.iv.next530.i.3, %i.aj
  br i1 %exitcond533.not.i.3, label %.unr-lcssa, label %vec.epilog.scalar.ph1216, !llvm.loop !51

._crit_edge479.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.unr-lcssa
  %exitcond543.not.i = icmp eq i64 %i.iq, %wide.trip.count542.i
  br i1 %exitcond543.not.i, label %bb.f, label %iter.check1247

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv534.i = phi i64 [ %indvars.iv.next535.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv534.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.kn = load float, ptr %i.iv, align 4, !tbaa !20
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kn, f0x3C23D70A
  %i.kp = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  store float %i.ko, ptr %i.kp, align 4, !tbaa !20
  %i.kq = load float, ptr %i.iv, align 4, !tbaa !20
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kq, f0x3C23D70A
  %i.ks = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.kt = getelementptr i8, ptr %i.ks, i64 4
  store float %i.kr, ptr %i.kt, align 4, !tbaa !20
  %i.ku = load float, ptr %i.iv, align 4, !tbaa !20
  %i.kv = fmul reassoc nsz arcp contract afn float %i.ku, f0x3C23D70A
  %i.kw = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.kx = getelementptr i8, ptr %i.kw, i64 8
  store float %i.kv, ptr %i.kx, align 4, !tbaa !20
  %i.ky = load float, ptr %i.iv, align 4, !tbaa !20
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ky, f0x3C23D70A
  %i.la = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.lb = getelementptr i8, ptr %i.la, i64 12
  store float %i.kz, ptr %i.lb, align 4, !tbaa !20
  %i.lc = load float, ptr %i.iv, align 4, !tbaa !20
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, f0x3C23D70A
  %i.le = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.lf = getelementptr i8, ptr %i.le, i64 16
  store float %i.ld, ptr %i.lf, align 4, !tbaa !20
  %i.lg = load float, ptr %i.iv, align 4, !tbaa !20
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lg, f0x3C23D70A
  %i.li = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.lj = getelementptr i8, ptr %i.li, i64 20
  store float %i.lh, ptr %i.lj, align 4, !tbaa !20
  %i.lk = load float, ptr %i.iv, align 4, !tbaa !20
  %i.ll = fmul reassoc nsz arcp contract afn float %i.lk, f0x3C23D70A
  %i.lm = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.ln = getelementptr i8, ptr %i.lm, i64 24
  store float %i.ll, ptr %i.ln, align 4, !tbaa !20
  %i.lo = load float, ptr %i.iv, align 4, !tbaa !20
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lo, f0x3C23D70A
  %i.lq = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.lr = getelementptr i8, ptr %i.lq, i64 28
  store float %i.lp, ptr %i.lr, align 4, !tbaa !20
  %indvars.iv.next535.i.7 = add nuw nsw i64 %indvars.iv534.i, 8 ; 2 uses
  %exitcond538.not.i.7 = icmp eq i64 %indvars.iv.next535.i.7, %i.y
  br i1 %exitcond538.not.i.7, label %._crit_edge479.i, label %vec.epilog.scalar.ph, !llvm.loop !52

ll_pad_input.exit.loopexit.unr-lcssa:             ; preds = %bb.g
  %lcmp.mod1434.not = icmp eq i64 %xtraiter1432, 0
  br i1 %lcmp.mod1434.not, label %ll_pad_input.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ll_pad_input.exit.loopexit.unr-lcssa, %bb.f
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i.3, %ll_pad_input.exit.loopexit.unr-lcssa ]
  %lcmp.mod1435 = icmp ne i64 %xtraiter1432, 0
  tail call void @llvm.assume(i1 %lcmp.mod1435)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.h ] ; 2 uses
  %epil.iter1433 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1433.next, %bb.h ]
  %i.ls = trunc nuw nsw i64 %indvars.iv.i.i.epil to i32 ; 2 uses
  %i.lt = mul i32 %i.w, %i.ls
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.lu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.lv, ptr noundef nonnull align 4 dereferenceable(1) %i.ds, i64 %i.dt, i1 false)
  %i.lw = add i32 %i.du, %i.ls
  %i.lx = mul i32 %i.lw, %i.w
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ly
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.lz, ptr noundef nonnull align 4 dereferenceable(1) %i.dy, i64 %i.dt, i1 false)
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter1433.next = add i64 %epil.iter1433, 1 ; 2 uses
  %epil.iter1433.cmp.not = icmp eq i64 %epil.iter1433.next, %xtraiter1432
  br i1 %epil.iter1433.cmp.not, label %ll_pad_input.exit, label %bb.h, !llvm.loop !53

ll_pad_input.exit:                                ; preds = %ll_pad_input.exit.loopexit.unr-lcssa, %bb.h, %bb.d
  %.pre1074 = phi i32 [ %.pre1074.pre, %bb.d ], [ %i.x, %bb.h ], [ %i.x, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 15 uses
  %.pre = phi i32 [ %.pre.pre, %bb.d ], [ %i.w, %bb.h ], [ %i.w, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 17 uses
  %i.ma = phi i32 [ %i.s, %bb.d ], [ %i.u, %bb.h ], [ %i.u, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0528797 = phi i32 [ %i.r, %bb.d ], [ %i.n, %bb.h ], [ %i.n, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 14 uses
  %storemerge = phi ptr [ %i.t, %bb.d ], [ %i.ac, %bb.h ], [ %i.ac, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 5 uses
  store ptr %storemerge, ptr %i.e, align 16, !tbaa !17
  %.not617 = icmp eq ptr %storemerge, null        ; 2 uses
  %.not612871 = icmp slt i32 %.0528797, 1         ; 2 uses
  %.pre1079 = add nsw i32 %.pre, -1               ; 26 uses
  %.pre1081 = add i32 %.pre1074, -1               ; 27 uses
  br i1 %.not612871, label %dl.exit649._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ll_pad_input.exit
  %i.mb = add nuw nsw i32 %.0528797, 1
  %wide.trip.count = zext nneg i32 %i.mb to i64   ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %dl.exit649
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %dl.exit649._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %xtraiter1439 = and i64 %indvars.iv, 7          ; 3 uses
  %i.mc = icmp ult i64 %indvar, 7
  br i1 %i.mc, label %.lr.ph.i.epil.preheader, label %.new1438

.new1438:                                         ; preds = %bb.j
  %unroll_iter1444 = and i64 %indvars.iv, 9223372036854775800
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new1438
  %.056.i = phi i32 [ %.pre1079, %.new1438 ], [ %i.md, %.lr.ph.i ]
  %niter1445 = phi i64 [ 0, %.new1438 ], [ %niter1445.next.7, %.lr.ph.i ]
  %i.md = sdiv i32 %.056.i, 256                   ; 3 uses
  %niter1445.next.7 = add i64 %niter1445, 8       ; 2 uses
  %niter1445.ncmp.7 = icmp eq i64 %niter1445.next.7, %unroll_iter1444
  br i1 %niter1445.ncmp.7, label %.lr.ph.i645.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph.i645.preheader.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod1441.not = icmp eq i64 %xtraiter1439, 0
  br i1 %lcmp.mod1441.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i645.preheader.unr-lcssa, %bb.j
  %.056.i.epil.init = phi i32 [ %.pre1079, %bb.j ], [ %i.md, %.lr.ph.i645.preheader.unr-lcssa ]
  %lcmp.mod1443 = icmp ne i64 %xtraiter1439, 0
  tail call void @llvm.assume(i1 %lcmp.mod1443)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.056.i.epil = phi i32 [ %i.me, %.lr.ph.i.epil ], [ %.056.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter1440 = phi i64 [ %epil.iter1440.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.me = sdiv i32 %.056.i.epil, 2                ; 2 uses
  %epil.iter1440.next = add i64 %epil.iter1440, 1 ; 2 uses
  %epil.iter1440.cmp.not = icmp eq i64 %epil.iter1440.next, %xtraiter1439
  br i1 %epil.iter1440.cmp.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil, !llvm.loop !54

.lr.ph.i645.preheader:                            ; preds = %.lr.ph.i.epil, %.lr.ph.i645.preheader.unr-lcssa
  %.lcssa1422 = phi i32 [ %i.md, %.lr.ph.i645.preheader.unr-lcssa ], [ %i.me, %.lr.ph.i.epil ]
  %xtraiter1446 = and i64 %indvars.iv, 7          ; 3 uses
  %i.mf = icmp ult i64 %indvar, 7
  br i1 %i.mf, label %.lr.ph.i645.epil.preheader, label %.lr.ph.i645.preheader.new

.lr.ph.i645.preheader.new:                        ; preds = %.lr.ph.i645.preheader
  %unroll_iter1451 = and i64 %indvars.iv, 9223372036854775800
  br label %.lr.ph.i645

.lr.ph.i645:                                      ; preds = %.lr.ph.i645, %.lr.ph.i645.preheader.new
  %.056.i647 = phi i32 [ %.pre1081, %.lr.ph.i645.preheader.new ], [ %i.mg, %.lr.ph.i645 ]
  %niter1452 = phi i64 [ 0, %.lr.ph.i645.preheader.new ], [ %niter1452.next.7, %.lr.ph.i645 ]
  %i.mg = sdiv i32 %.056.i647, 256                ; 3 uses
  %niter1452.next.7 = add i64 %niter1452, 8       ; 2 uses
  %niter1452.ncmp.7 = icmp eq i64 %niter1452.next.7, %unroll_iter1451
  br i1 %niter1452.ncmp.7, label %dl.exit649.unr-lcssa, label %.lr.ph.i645

dl.exit649.unr-lcssa:                             ; preds = %.lr.ph.i645
  %lcmp.mod1448.not = icmp eq i64 %xtraiter1446, 0
  br i1 %lcmp.mod1448.not, label %dl.exit649, label %.lr.ph.i645.epil.preheader

.lr.ph.i645.epil.preheader:                       ; preds = %dl.exit649.unr-lcssa, %.lr.ph.i645.preheader
  %.056.i647.epil.init = phi i32 [ %.pre1081, %.lr.ph.i645.preheader ], [ %i.mg, %dl.exit649.unr-lcssa ]
  %lcmp.mod1450 = icmp ne i64 %xtraiter1446, 0
  tail call void @llvm.assume(i1 %lcmp.mod1450)
  br label %.lr.ph.i645.epil

.lr.ph.i645.epil:                                 ; preds = %.lr.ph.i645.epil, %.lr.ph.i645.epil.preheader
  %.056.i647.epil = phi i32 [ %i.mh, %.lr.ph.i645.epil ], [ %.056.i647.epil.init, %.lr.ph.i645.epil.preheader ]
  %epil.iter1447 = phi i64 [ %epil.iter1447.next, %.lr.ph.i645.epil ], [ 0, %.lr.ph.i645.epil.preheader ]
  %i.mh = sdiv i32 %.056.i647.epil, 2             ; 2 uses
  %epil.iter1447.next = add i64 %epil.iter1447, 1 ; 2 uses
  %epil.iter1447.cmp.not = icmp eq i64 %epil.iter1447.next, %xtraiter1446
  br i1 %epil.iter1447.cmp.not, label %dl.exit649, label %.lr.ph.i645.epil, !llvm.loop !55

dl.exit649:                                       ; preds = %.lr.ph.i645.epil, %dl.exit649.unr-lcssa
  %.lcssa1423 = phi i32 [ %i.mg, %dl.exit649.unr-lcssa ], [ %i.mh, %.lr.ph.i645.epil ]
  %i.mi = add nsw i32 %.lcssa1422, 1
  %i.mj = sext i32 %i.mi to i64
  %i.mk = add nsw i32 %.lcssa1423, 1
  %i.ml = sext i32 %i.mk to i64
  %i.mm = shl nsw i64 %i.mj, 2
  %i.mn = mul nsw i64 %i.mm, %i.ml
  %i.mo = tail call ptr @dt_alloc_aligned(i64 noundef %i.mn) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mo, i64 64) ]
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !17
  %.not613 = icmp eq ptr %i.mo, null
  br i1 %.not613, label %dl.exit649._crit_edge, label %bb.i

dl.exit649._crit_edge:                            ; preds = %bb.i, %dl.exit649, %ll_pad_input.exit
  %wide.trip.count947.pre-phi = phi i64 [ 1, %ll_pad_input.exit ], [ %wide.trip.count, %dl.exit649 ], [ %wide.trip.count, %bb.i ] ; 9 uses
  %.0547 = phi i1 [ %.not617, %ll_pad_input.exit ], [ %.not617, %bb.i ], [ true, %dl.exit649 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.f, i8 0, i64 240, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %dl.exit662
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 2 uses
  %exitcond948.not = icmp eq i64 %indvars.iv.next945, %wide.trip.count947.pre-phi
  br i1 %exitcond948.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %dl.exit649._crit_edge, %bb.k
  %indvars.iv944 = phi i64 [ 0, %dl.exit649._crit_edge ], [ %indvars.iv.next945, %bb.k ] ; 9 uses
  %.not828 = icmp eq i64 %indvars.iv944, 0
  br i1 %.not828, label %dl.exit662, label %.lr.ph.i650.preheader

.lr.ph.i650.preheader:                            ; preds = %bb.l
  %xtraiter1453 = and i64 %indvars.iv944, 7       ; 3 uses
  %i.mq = icmp samesign ult i64 %indvars.iv944, 8
  br i1 %i.mq, label %.lr.ph.i650.epil.preheader, label %.lr.ph.i650.preheader.new

.lr.ph.i650.preheader.new:                        ; preds = %.lr.ph.i650.preheader
  %unroll_iter1458 = and i64 %indvars.iv944, 9223372036854775800
  br label %.lr.ph.i650

.lr.ph.i650:                                      ; preds = %.lr.ph.i650, %.lr.ph.i650.preheader.new
  %.056.i652 = phi i32 [ %.pre1079, %.lr.ph.i650.preheader.new ], [ %i.mr, %.lr.ph.i650 ]
  %niter1459 = phi i64 [ 0, %.lr.ph.i650.preheader.new ], [ %niter1459.next.7, %.lr.ph.i650 ]
  %i.mr = sdiv i32 %.056.i652, 256                ; 3 uses
  %niter1459.next.7 = add i64 %niter1459, 8       ; 2 uses
  %niter1459.ncmp.7 = icmp eq i64 %niter1459.next.7, %unroll_iter1458
  br i1 %niter1459.ncmp.7, label %.lr.ph.i657.preheader.unr-lcssa, label %.lr.ph.i650

.lr.ph.i657.preheader.unr-lcssa:                  ; preds = %.lr.ph.i650
  %lcmp.mod1455.not = icmp eq i64 %xtraiter1453, 0
  br i1 %lcmp.mod1455.not, label %.lr.ph.i657.preheader, label %.lr.ph.i650.epil.preheader

.lr.ph.i650.epil.preheader:                       ; preds = %.lr.ph.i657.preheader.unr-lcssa, %.lr.ph.i650.preheader
  %.056.i652.epil.init = phi i32 [ %.pre1079, %.lr.ph.i650.preheader ], [ %i.mr, %.lr.ph.i657.preheader.unr-lcssa ]
  %lcmp.mod1457 = icmp ne i64 %xtraiter1453, 0
  tail call void @llvm.assume(i1 %lcmp.mod1457)
  br label %.lr.ph.i650.epil

.lr.ph.i650.epil:                                 ; preds = %.lr.ph.i650.epil, %.lr.ph.i650.epil.preheader
  %.056.i652.epil = phi i32 [ %i.ms, %.lr.ph.i650.epil ], [ %.056.i652.epil.init, %.lr.ph.i650.epil.preheader ]
  %epil.iter1454 = phi i64 [ %epil.iter1454.next, %.lr.ph.i650.epil ], [ 0, %.lr.ph.i650.epil.preheader ]
  %i.ms = sdiv i32 %.056.i652.epil, 2             ; 2 uses
  %epil.iter1454.next = add i64 %epil.iter1454, 1 ; 2 uses
  %epil.iter1454.cmp.not = icmp eq i64 %epil.iter1454.next, %xtraiter1453
  br i1 %epil.iter1454.cmp.not, label %.lr.ph.i657.preheader, label %.lr.ph.i650.epil, !llvm.loop !56

.lr.ph.i657.preheader:                            ; preds = %.lr.ph.i650.epil, %.lr.ph.i657.preheader.unr-lcssa
  %.lcssa1420 = phi i32 [ %i.mr, %.lr.ph.i657.preheader.unr-lcssa ], [ %i.ms, %.lr.ph.i650.epil ]
  %xtraiter1460 = and i64 %indvars.iv944, 7       ; 3 uses
  %i.mt = icmp samesign ult i64 %indvars.iv944, 8
  br i1 %i.mt, label %.lr.ph.i657.epil.preheader, label %.lr.ph.i657.preheader.new

.lr.ph.i657.preheader.new:                        ; preds = %.lr.ph.i657.preheader
  %unroll_iter1465 = and i64 %indvars.iv944, 9223372036854775800
  br label %.lr.ph.i657

._crit_edge.loopexit.i661.unr-lcssa:              ; preds = %.lr.ph.i657
  %lcmp.mod1462.not = icmp eq i64 %xtraiter1460, 0
  br i1 %lcmp.mod1462.not, label %._crit_edge.loopexit.i661, label %.lr.ph.i657.epil.preheader

.lr.ph.i657.epil.preheader:                       ; preds = %._crit_edge.loopexit.i661.unr-lcssa, %.lr.ph.i657.preheader
  %.056.i659.epil.init = phi i32 [ %.pre1081, %.lr.ph.i657.preheader ], [ %i.mx, %._crit_edge.loopexit.i661.unr-lcssa ]
  %lcmp.mod1464 = icmp ne i64 %xtraiter1460, 0
  tail call void @llvm.assume(i1 %lcmp.mod1464)
  br label %.lr.ph.i657.epil

.lr.ph.i657.epil:                                 ; preds = %.lr.ph.i657.epil, %.lr.ph.i657.epil.preheader
  %.056.i659.epil = phi i32 [ %i.mu, %.lr.ph.i657.epil ], [ %.056.i659.epil.init, %.lr.ph.i657.epil.preheader ]
  %epil.iter1461 = phi i64 [ %epil.iter1461.next, %.lr.ph.i657.epil ], [ 0, %.lr.ph.i657.epil.preheader ]
  %i.mu = sdiv i32 %.056.i659.epil, 2             ; 2 uses
  %epil.iter1461.next = add i64 %epil.iter1461, 1 ; 2 uses
  %epil.iter1461.cmp.not = icmp eq i64 %epil.iter1461.next, %xtraiter1460
  br i1 %epil.iter1461.cmp.not, label %._crit_edge.loopexit.i661, label %.lr.ph.i657.epil, !llvm.loop !57

._crit_edge.loopexit.i661:                        ; preds = %.lr.ph.i657.epil, %._crit_edge.loopexit.i661.unr-lcssa
  %.lcssa1421 = phi i32 [ %i.mx, %._crit_edge.loopexit.i661.unr-lcssa ], [ %i.mu, %.lr.ph.i657.epil ]
  %i.mv = add nsw i32 %.lcssa1420, 1
  %i.mw = add nsw i32 %.lcssa1421, 1
  br label %dl.exit662

.lr.ph.i657:                                      ; preds = %.lr.ph.i657, %.lr.ph.i657.preheader.new
  %.056.i659 = phi i32 [ %.pre1081, %.lr.ph.i657.preheader.new ], [ %i.mx, %.lr.ph.i657 ]
  %niter1466 = phi i64 [ 0, %.lr.ph.i657.preheader.new ], [ %niter1466.next.7, %.lr.ph.i657 ]
  %i.mx = sdiv i32 %.056.i659, 256                ; 3 uses
  %niter1466.next.7 = add i64 %niter1466, 8       ; 2 uses
  %niter1466.ncmp.7 = icmp eq i64 %niter1466.next.7, %unroll_iter1465
  br i1 %niter1466.ncmp.7, label %._crit_edge.loopexit.i661.unr-lcssa, label %.lr.ph.i657
end_hunk_0
begin_hunk_1_@local_laplacian_internal:bb.a
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 96
  store <8 x float> %wide.load1359, ptr %i.nv, align 4, !tbaa !20
  store <8 x float> %wide.load1360, ptr %i.nw, align 4, !tbaa !20
  store <8 x float> %wide.load1361, ptr %i.nx, align 4, !tbaa !20
  store <8 x float> %wide.load1362, ptr %i.ny, align 4, !tbaa !20
  %index.next1363 = add nuw i64 %index1358, 32    ; 2 uses
  %i.nz = icmp eq i64 %index.next1363, %n.vec1356
  br i1 %i.nz, label %middle.block1364, label %vector.body1357, !llvm.loop !58

middle.block1364:                                 ; preds = %vector.body1357
  %cmp.n1365 = icmp eq i64 %i.no, %n.vec1356
  br i1 %cmp.n1365, label %.loopexit, label %vec.epilog.iter.check1369

vec.epilog.iter.check1369:                        ; preds = %middle.block1364
  %min.epilog.iters.check1370 = icmp eq i64 %i.nq, 0
  br i1 %min.epilog.iters.check1370, label %.lr.ph918.preheader, label %vec.epilog.vector.body1373.preheader, !prof !39

vec.epilog.vector.body1373.preheader:             ; preds = %vector.main.loop.iter.check1353, %vec.epilog.iter.check1369
  %index1374.ph = phi i64 [ 0, %vector.main.loop.iter.check1353 ], [ %n.vec1356, %vec.epilog.iter.check1369 ]
  br label %vec.epilog.vector.body1373

.lr.ph918.preheader:                              ; preds = %iter.check1367, %vec.epilog.iter.check1369
  %.0542917.ph = phi i64 [ %n.vec1356, %vec.epilog.iter.check1369 ], [ 0, %iter.check1367 ] ; 3 uses
  %xtraiter1706 = and i64 %i.no, 4                ; 2 uses
  %lcmp.mod1707.not = icmp eq i64 %xtraiter1706, 0
  br i1 %lcmp.mod1707.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol

.lr.ph918.prol:                                   ; preds = %.lr.ph918.preheader, %.lr.ph918.prol
  %.0542917.prol = phi i64 [ %i.od, %.lr.ph918.prol ], [ %.0542917.ph, %.lr.ph918.preheader ] ; 3 uses
  %prol.iter1708 = phi i64 [ %prol.iter1708.next, %.lr.ph918.prol ], [ 0, %.lr.ph918.preheader ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542917.prol
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !20
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542917.prol
  store float %i.ob, ptr %i.oc, align 4, !tbaa !20
  %i.od = add nuw i64 %.0542917.prol, 1           ; 2 uses
  %prol.iter1708.next = add i64 %prol.iter1708, 1 ; 2 uses
  %prol.iter1708.cmp.not = icmp eq i64 %prol.iter1708.next, %xtraiter1706
  br i1 %prol.iter1708.cmp.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol, !llvm.loop !59

.lr.ph918.prol.loopexit:                          ; preds = %.lr.ph918.prol, %.lr.ph918.preheader
  %.0542917.unr = phi i64 [ %.0542917.ph, %.lr.ph918.preheader ], [ %i.od, %.lr.ph918.prol ]
  %i.oe = sub i64 %.0542917.ph, %i.no
  %i.of = icmp ugt i64 %i.oe, -8
  br i1 %i.of, label %.loopexit, label %.lr.ph918

vec.epilog.vector.body1373:                       ; preds = %vec.epilog.vector.body1373.preheader, %vec.epilog.vector.body1373
  %index1374 = phi i64 [ %index.next1376, %vec.epilog.vector.body1373 ], [ %index1374.ph, %vec.epilog.vector.body1373.preheader ] ; 3 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index1374
  %wide.load1375 = load <4 x float>, ptr %i.og, align 4, !tbaa !20
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1374
  store <4 x float> %wide.load1375, ptr %i.oh, align 4, !tbaa !20
  %index.next1376 = add nuw i64 %index1374, 4     ; 2 uses
  %i.oi = icmp eq i64 %index.next1376, %i.no
  br i1 %i.oi, label %.loopexit, label %vec.epilog.vector.body1373, !llvm.loop !60

.critedge638:                                     ; preds = %.critedge638.preheader, %.critedge638
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %.critedge638 ], [ 0, %.critedge638.preheader ] ; 3 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1068
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.ok) #14
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1068
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.om) #14
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1 ; 2 uses
  %exitcond1072.not = icmp eq i64 %indvars.iv.next1069, %wide.trip.count947.pre-phi
  br i1 %exitcond1072.not, label %iter.check1367, label %.critedge638

.lr.ph918:                                        ; preds = %.lr.ph918.prol.loopexit, %.lr.ph918
  %.0542917 = phi i64 [ %i.ps, %.lr.ph918 ], [ %.0542917.unr, %.lr.ph918.prol.loopexit ] ; 10 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542917
  %i.oo = load float, ptr %i.on, align 4, !tbaa !20
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542917
  store float %i.oo, ptr %i.op, align 4, !tbaa !20
  %i.oq = add nuw i64 %.0542917, 1                ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oq
  %i.os = load float, ptr %i.or, align 4, !tbaa !20
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oq
  store float %i.os, ptr %i.ot, align 4, !tbaa !20
  %i.ou = add nuw i64 %.0542917, 2                ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ou
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !20
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ou
  store float %i.ow, ptr %i.ox, align 4, !tbaa !20
  %i.oy = add nuw i64 %.0542917, 3                ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oy
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !20
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oy
  store float %i.pa, ptr %i.pb, align 4, !tbaa !20
  %i.pc = add nuw i64 %.0542917, 4                ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !20
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pc
  store float %i.pe, ptr %i.pf, align 4, !tbaa !20
  %i.pg = add nuw i64 %.0542917, 5                ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pg
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !20
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pg
  store float %i.pi, ptr %i.pj, align 4, !tbaa !20
  %i.pk = add nuw i64 %.0542917, 6                ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pk
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !20
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pk
  store float %i.pm, ptr %i.pn, align 4, !tbaa !20
  %i.po = add nuw i64 %.0542917, 7                ; 2 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.po
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !20
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.po
  store float %i.pq, ptr %i.pr, align 4, !tbaa !20
  %i.ps = add nuw i64 %.0542917, 8                ; 2 uses
  %exitcond1073.not.7 = icmp eq i64 %i.ps, %i.no
  br i1 %exitcond1073.not.7, label %.loopexit, label %.lr.ph918, !llvm.loop !61

._crit_edge877:                                   ; preds = %dl.exit694
  %i.pt = add nsw i32 %.0528797, -1               ; 6 uses
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pu
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !17
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %wide.trip.count952
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !17
  %i.pz = add nsw i32 %.0528797, -2               ; 2 uses
  %xtraiter1483 = and i32 %i.pt, 7                ; 3 uses
  %i.qa = icmp ult i32 %i.pz, 7
  br i1 %i.qa, label %.lr.ph.i665.epil.preheader, label %._crit_edge877.new

._crit_edge877.new:                               ; preds = %._crit_edge877
  %unroll_iter1488 = and i32 %i.pt, -8
  br label %.lr.ph.i665

.lr.ph.i665:                                      ; preds = %.lr.ph.i665, %._crit_edge877.new
  %.056.i667 = phi i32 [ %.pre1079, %._crit_edge877.new ], [ %i.qb, %.lr.ph.i665 ]
  %niter1489 = phi i32 [ 0, %._crit_edge877.new ], [ %niter1489.next.7, %.lr.ph.i665 ]
  %i.qb = sdiv i32 %.056.i667, 256                ; 3 uses
  %niter1489.next.7 = add i32 %niter1489, 8       ; 2 uses
  %niter1489.ncmp.7 = icmp eq i32 %niter1489.next.7, %unroll_iter1488
  br i1 %niter1489.ncmp.7, label %.lr.ph.i673.preheader.unr-lcssa, label %.lr.ph.i665

.lr.ph.i673.preheader.unr-lcssa:                  ; preds = %.lr.ph.i665
  %lcmp.mod1485.not = icmp eq i32 %xtraiter1483, 0
  br i1 %lcmp.mod1485.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil.preheader

.lr.ph.i665.epil.preheader:                       ; preds = %.lr.ph.i673.preheader.unr-lcssa, %._crit_edge877
  %.056.i667.epil.init = phi i32 [ %.pre1079, %._crit_edge877 ], [ %i.qb, %.lr.ph.i673.preheader.unr-lcssa ]
  %lcmp.mod1487 = icmp ne i32 %xtraiter1483, 0
  tail call void @llvm.assume(i1 %lcmp.mod1487)
  br label %.lr.ph.i665.epil

.lr.ph.i665.epil:                                 ; preds = %.lr.ph.i665.epil, %.lr.ph.i665.epil.preheader
  %.056.i667.epil = phi i32 [ %i.qc, %.lr.ph.i665.epil ], [ %.056.i667.epil.init, %.lr.ph.i665.epil.preheader ]
  %epil.iter1484 = phi i32 [ %epil.iter1484.next, %.lr.ph.i665.epil ], [ 0, %.lr.ph.i665.epil.preheader ]
  %i.qc = sdiv i32 %.056.i667.epil, 2             ; 2 uses
  %epil.iter1484.next = add i32 %epil.iter1484, 1 ; 2 uses
  %epil.iter1484.cmp.not = icmp eq i32 %epil.iter1484.next, %xtraiter1483
  br i1 %epil.iter1484.cmp.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil, !llvm.loop !62

.lr.ph.i673.preheader:                            ; preds = %.lr.ph.i665.epil, %.lr.ph.i673.preheader.unr-lcssa
  %.lcssa1417 = phi i32 [ %i.qb, %.lr.ph.i673.preheader.unr-lcssa ], [ %i.qc, %.lr.ph.i665.epil ]
  %xtraiter1490 = and i32 %i.pt, 7                ; 3 uses
  %i.qd = icmp ult i32 %i.pz, 7
  br i1 %i.qd, label %.lr.ph.i673.epil.preheader, label %.lr.ph.i673.preheader.new

.lr.ph.i673.preheader.new:                        ; preds = %.lr.ph.i673.preheader
  %unroll_iter1495 = and i32 %i.pt, -8
  br label %.lr.ph.i673

._crit_edge.loopexit.i677.unr-lcssa:              ; preds = %.lr.ph.i673
  %lcmp.mod1492.not = icmp eq i32 %xtraiter1490, 0
  br i1 %lcmp.mod1492.not, label %._crit_edge.loopexit.i677, label %.lr.ph.i673.epil.preheader

.lr.ph.i673.epil.preheader:                       ; preds = %._crit_edge.loopexit.i677.unr-lcssa, %.lr.ph.i673.preheader
  %.056.i675.epil.init = phi i32 [ %.pre1081, %.lr.ph.i673.preheader ], [ %i.qh, %._crit_edge.loopexit.i677.unr-lcssa ]
  %lcmp.mod1494 = icmp ne i32 %xtraiter1490, 0
  tail call void @llvm.assume(i1 %lcmp.mod1494)
  br label %.lr.ph.i673.epil

.lr.ph.i673.epil:                                 ; preds = %.lr.ph.i673.epil, %.lr.ph.i673.epil.preheader
  %.056.i675.epil = phi i32 [ %i.qe, %.lr.ph.i673.epil ], [ %.056.i675.epil.init, %.lr.ph.i673.epil.preheader ]
  %epil.iter1491 = phi i32 [ %epil.iter1491.next, %.lr.ph.i673.epil ], [ 0, %.lr.ph.i673.epil.preheader ]
  %i.qe = sdiv i32 %.056.i675.epil, 2             ; 2 uses
  %epil.iter1491.next = add i32 %epil.iter1491, 1 ; 2 uses
  %epil.iter1491.cmp.not = icmp eq i32 %epil.iter1491.next, %xtraiter1490
  br i1 %epil.iter1491.cmp.not, label %._crit_edge.loopexit.i677, label %.lr.ph.i673.epil, !llvm.loop !63

._crit_edge.loopexit.i677:                        ; preds = %.lr.ph.i673.epil, %._crit_edge.loopexit.i677.unr-lcssa
  %.lcssa1416 = phi i32 [ %i.qh, %._crit_edge.loopexit.i677.unr-lcssa ], [ %i.qe, %.lr.ph.i673.epil ]
  %i.qf = add nsw i32 %.lcssa1417, 1
  %i.qg = add nsw i32 %.lcssa1416, 1
  br label %dl.exit678

.lr.ph.i673:                                      ; preds = %.lr.ph.i673, %.lr.ph.i673.preheader.new
  %.056.i675 = phi i32 [ %.pre1081, %.lr.ph.i673.preheader.new ], [ %i.qh, %.lr.ph.i673 ]
  %niter1496 = phi i32 [ 0, %.lr.ph.i673.preheader.new ], [ %niter1496.next.7, %.lr.ph.i673 ]
  %i.qh = sdiv i32 %.056.i675, 256                ; 3 uses
  %niter1496.next.7 = add i32 %niter1496, 8       ; 2 uses
  %niter1496.ncmp.7 = icmp eq i32 %niter1496.next.7, %unroll_iter1495
  br i1 %niter1496.ncmp.7, label %._crit_edge.loopexit.i677.unr-lcssa, label %.lr.ph.i673

dl.exit678:                                       ; preds = %._crit_edge877.thread, %._crit_edge.loopexit.i677
  %i.qi = phi ptr [ %i.py, %._crit_edge.loopexit.i677 ], [ %i.nk, %._crit_edge877.thread ] ; 4 uses
  %i.qj = phi ptr [ %i.pw, %._crit_edge.loopexit.i677 ], [ %i.ni, %._crit_edge877.thread ]
  %i.qk = phi i32 [ %i.pt, %._crit_edge.loopexit.i677 ], [ %i.nf, %._crit_edge877.thread ] ; 3 uses
  %.in829 = phi i32 [ %i.qf, %._crit_edge.loopexit.i677 ], [ %.pre, %._crit_edge877.thread ]
  %.05.lcssa.i671 = phi i32 [ %i.qg, %._crit_edge.loopexit.i677 ], [ %.pre1074, %._crit_edge877.thread ]
  %i.ql = sext i32 %.in829 to i64
  %i.qm = sext i32 %.05.lcssa.i671 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.qj, ptr noundef %i.qi, i64 noundef %i.ql, i64 noundef %i.qm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.qn = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store <4 x float> <float f0x3DAAAAAB, float 2.500000e-01, float f0x3ED55556, float f0x3F155555>, ptr %i.g, align 16, !tbaa !20
  %i.qq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store <2 x float> <float 7.500000e-01, float f0x3F6AAAAB>, ptr %i.qq, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.h, i8 0, i64 1440, i1 false)
  br label %bb.o

.lr.ph876:                                        ; preds = %.preheader851, %dl.exit694
  %indvar1467 = phi i64 [ %indvar.next1468, %dl.exit694 ], [ 0, %.preheader851 ] ; 4 uses
  %i.qr = phi ptr [ %i.qv, %dl.exit694 ], [ %storemerge, %.preheader851 ]
  %indvars.iv949 = phi i64 [ %indvars.iv.next950, %dl.exit694 ], [ 1, %.preheader851 ] ; 4 uses
  %i.qs = add i64 %indvar1467, -1                 ; 2 uses
  %i.qt = add nsw i64 %indvars.iv949, -1          ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv949
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !17 ; 2 uses
  %i.qw = icmp samesign ugt i64 %indvars.iv949, 1
  br i1 %i.qw, label %.lr.ph.i681.preheader, label %dl.exit694

.lr.ph.i681.preheader:                            ; preds = %.lr.ph876
  %xtraiter1469 = and i64 %i.qt, 7                ; 3 uses
  %i.qx = icmp ult i64 %i.qs, 7
  br i1 %i.qx, label %.lr.ph.i681.epil.preheader, label %.lr.ph.i681.preheader.new

.lr.ph.i681.preheader.new:                        ; preds = %.lr.ph.i681.preheader
  %unroll_iter1474 = and i64 %i.qt, -8
  br label %.lr.ph.i681

.lr.ph.i681:                                      ; preds = %.lr.ph.i681, %.lr.ph.i681.preheader.new
  %.056.i683 = phi i32 [ %.pre1079, %.lr.ph.i681.preheader.new ], [ %i.qy, %.lr.ph.i681 ]
  %niter1475 = phi i64 [ 0, %.lr.ph.i681.preheader.new ], [ %niter1475.next.7, %.lr.ph.i681 ]
  %i.qy = sdiv i32 %.056.i683, 256                ; 3 uses
  %niter1475.next.7 = add i64 %niter1475, 8       ; 2 uses
  %niter1475.ncmp.7 = icmp eq i64 %niter1475.next.7, %unroll_iter1474
  br i1 %niter1475.ncmp.7, label %.lr.ph.i689.preheader.unr-lcssa, label %.lr.ph.i681

.lr.ph.i689.preheader.unr-lcssa:                  ; preds = %.lr.ph.i681
  %lcmp.mod1471.not = icmp eq i64 %xtraiter1469, 0
  br i1 %lcmp.mod1471.not, label %.lr.ph.i689.preheader, label %.lr.ph.i681.epil.preheader

.lr.ph.i681.epil.preheader:                       ; preds = %.lr.ph.i689.preheader.unr-lcssa, %.lr.ph.i681.preheader
  %.056.i683.epil.init = phi i32 [ %.pre1079, %.lr.ph.i681.preheader ], [ %i.qy, %.lr.ph.i689.preheader.unr-lcssa ]
  %lcmp.mod1473 = icmp ne i64 %xtraiter1469, 0
  tail call void @llvm.assume(i1 %lcmp.mod1473)
  br label %.lr.ph.i681.epil

.lr.ph.i681.epil:                                 ; preds = %.lr.ph.i681.epil, %.lr.ph.i681.epil.preheader
  %.056.i683.epil = phi i32 [ %i.qz, %.lr.ph.i681.epil ], [ %.056.i683.epil.init, %.lr.ph.i681.epil.preheader ]
  %epil.iter1470 = phi i64 [ %epil.iter1470.next, %.lr.ph.i681.epil ], [ 0, %.lr.ph.i681.epil.preheader ]
  %i.qz = sdiv i32 %.056.i683.epil, 2             ; 2 uses
  %epil.iter1470.next = add i64 %epil.iter1470, 1 ; 2 uses
  %epil.iter1470.cmp.not = icmp eq i64 %epil.iter1470.next, %xtraiter1469
  br i1 %epil.iter1470.cmp.not, label %.lr.ph.i689.preheader, label %.lr.ph.i681.epil, !llvm.loop !64

.lr.ph.i689.preheader:                            ; preds = %.lr.ph.i681.epil, %.lr.ph.i689.preheader.unr-lcssa
  %.lcssa1418 = phi i32 [ %i.qy, %.lr.ph.i689.preheader.unr-lcssa ], [ %i.qz, %.lr.ph.i681.epil ]
  %xtraiter1476 = and i64 %indvar1467, 7          ; 3 uses
  %i.ra = icmp ult i64 %i.qs, 7
  br i1 %i.ra, label %.lr.ph.i689.epil.preheader, label %.lr.ph.i689.preheader.new

.lr.ph.i689.preheader.new:                        ; preds = %.lr.ph.i689.preheader
  %unroll_iter1481 = and i64 %indvar1467, -8
  br label %.lr.ph.i689

._crit_edge.loopexit.i693.unr-lcssa:              ; preds = %.lr.ph.i689
  %lcmp.mod1478.not = icmp eq i64 %xtraiter1476, 0
  br i1 %lcmp.mod1478.not, label %._crit_edge.loopexit.i693, label %.lr.ph.i689.epil.preheader

.lr.ph.i689.epil.preheader:                       ; preds = %._crit_edge.loopexit.i693.unr-lcssa, %.lr.ph.i689.preheader
  %.056.i691.epil.init = phi i32 [ %.pre1081, %.lr.ph.i689.preheader ], [ %i.re, %._crit_edge.loopexit.i693.unr-lcssa ]
  %lcmp.mod1480 = icmp ne i64 %xtraiter1476, 0
  tail call void @llvm.assume(i1 %lcmp.mod1480)
  br label %.lr.ph.i689.epil

.lr.ph.i689.epil:                                 ; preds = %.lr.ph.i689.epil, %.lr.ph.i689.epil.preheader
  %.056.i691.epil = phi i32 [ %i.rb, %.lr.ph.i689.epil ], [ %.056.i691.epil.init, %.lr.ph.i689.epil.preheader ]
  %epil.iter1477 = phi i64 [ %epil.iter1477.next, %.lr.ph.i689.epil ], [ 0, %.lr.ph.i689.epil.preheader ]
  %i.rb = sdiv i32 %.056.i691.epil, 2             ; 2 uses
  %epil.iter1477.next = add i64 %epil.iter1477, 1 ; 2 uses
  %epil.iter1477.cmp.not = icmp eq i64 %epil.iter1477.next, %xtraiter1476
  br i1 %epil.iter1477.cmp.not, label %._crit_edge.loopexit.i693, label %.lr.ph.i689.epil, !llvm.loop !65

._crit_edge.loopexit.i693:                        ; preds = %.lr.ph.i689.epil, %._crit_edge.loopexit.i693.unr-lcssa
  %.lcssa1419 = phi i32 [ %i.re, %._crit_edge.loopexit.i693.unr-lcssa ], [ %i.rb, %.lr.ph.i689.epil ]
  %i.rc = add nsw i32 %.lcssa1418, 1
  %i.rd = add nsw i32 %.lcssa1419, 1
  br label %dl.exit694

.lr.ph.i689:                                      ; preds = %.lr.ph.i689, %.lr.ph.i689.preheader.new
  %.056.i691 = phi i32 [ %.pre1081, %.lr.ph.i689.preheader.new ], [ %i.re, %.lr.ph.i689 ]
  %niter1482 = phi i64 [ 0, %.lr.ph.i689.preheader.new ], [ %niter1482.next.7, %.lr.ph.i689 ]
  %i.re = sdiv i32 %.056.i691, 256                ; 3 uses
  %niter1482.next.7 = add i64 %niter1482, 8       ; 2 uses
  %niter1482.ncmp.7 = icmp eq i64 %niter1482.next.7, %unroll_iter1481
  br i1 %niter1482.ncmp.7, label %._crit_edge.loopexit.i693.unr-lcssa, label %.lr.ph.i689

dl.exit694:                                       ; preds = %.lr.ph876, %._crit_edge.loopexit.i693
  %.in834 = phi i32 [ %i.rc, %._crit_edge.loopexit.i693 ], [ %.pre, %.lr.ph876 ]
  %.05.lcssa.i687 = phi i32 [ %i.rd, %._crit_edge.loopexit.i693 ], [ %.pre1074, %.lr.ph876 ]
  %i.rf = sext i32 %.in834 to i64
  %i.rg = sext i32 %.05.lcssa.i687 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.qr, ptr noundef %i.qv, i64 noundef %i.rf, i64 noundef %i.rg)
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 2 uses
  %exitcond953.not = icmp eq i64 %indvars.iv.next950, %wide.trip.count952
  %indvar.next1468 = add i64 %indvar1467, 1
  br i1 %exitcond953.not, label %._crit_edge877, label %.lr.ph876

bb.n:                                             ; preds = %dl.exit710
  %indvars.iv.next959 = add nuw nsw i64 %indvars.iv958, 1 ; 2 uses
  %exitcond962.not = icmp eq i64 %indvars.iv.next959, %wide.trip.count947.pre-phi
  br i1 %exitcond962.not, label %.thread807, label %bb.o

bb.o:                                             ; preds = %dl.exit678, %bb.n
  %indvars.iv958 = phi i64 [ 0, %dl.exit678 ], [ %indvars.iv.next959, %bb.n ] ; 9 uses
  %.not832 = icmp eq i64 %indvars.iv958, 0
  br i1 %.not832, label %dl.exit710, label %.lr.ph.i697.preheader

.lr.ph.i697.preheader:                            ; preds = %bb.o
  %xtraiter1497 = and i64 %indvars.iv958, 7       ; 3 uses
  %i.rh = icmp samesign ult i64 %indvars.iv958, 8
  br i1 %i.rh, label %.lr.ph.i697.epil.preheader, label %.lr.ph.i697.preheader.new

.lr.ph.i697.preheader.new:                        ; preds = %.lr.ph.i697.preheader
  %unroll_iter1502 = and i64 %indvars.iv958, 9223372036854775800
  br label %.lr.ph.i697

.lr.ph.i697:                                      ; preds = %.lr.ph.i697, %.lr.ph.i697.preheader.new
  %.056.i699 = phi i32 [ %.pre1079, %.lr.ph.i697.preheader.new ], [ %i.ri, %.lr.ph.i697 ]
  %niter1503 = phi i64 [ 0, %.lr.ph.i697.preheader.new ], [ %niter1503.next.7, %.lr.ph.i697 ]
  %i.ri = sdiv i32 %.056.i699, 256                ; 3 uses
  %niter1503.next.7 = add i64 %niter1503, 8       ; 2 uses
  %niter1503.ncmp.7 = icmp eq i64 %niter1503.next.7, %unroll_iter1502
  br i1 %niter1503.ncmp.7, label %.lr.ph.i705.preheader.unr-lcssa, label %.lr.ph.i697

.lr.ph.i705.preheader.unr-lcssa:                  ; preds = %.lr.ph.i697
  %lcmp.mod1499.not = icmp eq i64 %xtraiter1497, 0
  br i1 %lcmp.mod1499.not, label %.lr.ph.i705.preheader, label %.lr.ph.i697.epil.preheader

.lr.ph.i697.epil.preheader:                       ; preds = %.lr.ph.i705.preheader.unr-lcssa, %.lr.ph.i697.preheader
  %.056.i699.epil.init = phi i32 [ %.pre1079, %.lr.ph.i697.preheader ], [ %i.ri, %.lr.ph.i705.preheader.unr-lcssa ]
  %lcmp.mod1501 = icmp ne i64 %xtraiter1497, 0
  tail call void @llvm.assume(i1 %lcmp.mod1501)
  br label %.lr.ph.i697.epil

.lr.ph.i697.epil:                                 ; preds = %.lr.ph.i697.epil, %.lr.ph.i697.epil.preheader
  %.056.i699.epil = phi i32 [ %i.rj, %.lr.ph.i697.epil ], [ %.056.i699.epil.init, %.lr.ph.i697.epil.preheader ]
  %epil.iter1498 = phi i64 [ %epil.iter1498.next, %.lr.ph.i697.epil ], [ 0, %.lr.ph.i697.epil.preheader ]
  %i.rj = sdiv i32 %.056.i699.epil, 2             ; 2 uses
  %epil.iter1498.next = add i64 %epil.iter1498, 1 ; 2 uses
  %epil.iter1498.cmp.not = icmp eq i64 %epil.iter1498.next, %xtraiter1497
  br i1 %epil.iter1498.cmp.not, label %.lr.ph.i705.preheader, label %.lr.ph.i697.epil, !llvm.loop !66

.lr.ph.i705.preheader:                            ; preds = %.lr.ph.i697.epil, %.lr.ph.i705.preheader.unr-lcssa
  %.lcssa1414 = phi i32 [ %i.ri, %.lr.ph.i705.preheader.unr-lcssa ], [ %i.rj, %.lr.ph.i697.epil ]
  %xtraiter1519 = and i64 %indvars.iv958, 7       ; 3 uses
  %i.rk = icmp samesign ult i64 %indvars.iv958, 8
  br i1 %i.rk, label %.lr.ph.i705.epil.preheader, label %.lr.ph.i705.preheader.new

.lr.ph.i705.preheader.new:                        ; preds = %.lr.ph.i705.preheader
  %unroll_iter1524 = and i64 %indvars.iv958, 9223372036854775800
  br label %.lr.ph.i705

._crit_edge.loopexit.i709.unr-lcssa:              ; preds = %.lr.ph.i705
  %lcmp.mod1521.not = icmp eq i64 %xtraiter1519, 0
  br i1 %lcmp.mod1521.not, label %._crit_edge.loopexit.i709, label %.lr.ph.i705.epil.preheader

.lr.ph.i705.epil.preheader:                       ; preds = %._crit_edge.loopexit.i709.unr-lcssa, %.lr.ph.i705.preheader
  %.056.i707.epil.init = phi i32 [ %.pre1081, %.lr.ph.i705.preheader ], [ %i.ro, %._crit_edge.loopexit.i709.unr-lcssa ]
  %lcmp.mod1523 = icmp ne i64 %xtraiter1519, 0
  tail call void @llvm.assume(i1 %lcmp.mod1523)
  br label %.lr.ph.i705.epil

.lr.ph.i705.epil:                                 ; preds = %.lr.ph.i705.epil, %.lr.ph.i705.epil.preheader
  %.056.i707.epil = phi i32 [ %i.rl, %.lr.ph.i705.epil ], [ %.056.i707.epil.init, %.lr.ph.i705.epil.preheader ]
  %epil.iter1520 = phi i64 [ %epil.iter1520.next, %.lr.ph.i705.epil ], [ 0, %.lr.ph.i705.epil.preheader ]
  %i.rl = sdiv i32 %.056.i707.epil, 2             ; 2 uses
  %epil.iter1520.next = add i64 %epil.iter1520, 1 ; 2 uses
  %epil.iter1520.cmp.not = icmp eq i64 %epil.iter1520.next, %xtraiter1519
  br i1 %epil.iter1520.cmp.not, label %._crit_edge.loopexit.i709, label %.lr.ph.i705.epil, !llvm.loop !67

._crit_edge.loopexit.i709:                        ; preds = %.lr.ph.i705.epil, %._crit_edge.loopexit.i709.unr-lcssa
  %.lcssa1415 = phi i32 [ %i.ro, %._crit_edge.loopexit.i709.unr-lcssa ], [ %i.rl, %.lr.ph.i705.epil ]
  %i.rm = add nsw i32 %.lcssa1414, 1
  %i.rn = add nsw i32 %.lcssa1415, 1
  br label %dl.exit710

.lr.ph.i705:                                      ; preds = %.lr.ph.i705, %.lr.ph.i705.preheader.new
  %.056.i707 = phi i32 [ %.pre1081, %.lr.ph.i705.preheader.new ], [ %i.ro, %.lr.ph.i705 ]
  %niter1525 = phi i64 [ 0, %.lr.ph.i705.preheader.new ], [ %niter1525.next.7, %.lr.ph.i705 ]
  %i.ro = sdiv i32 %.056.i707, 256                ; 3 uses
  %niter1525.next.7 = add i64 %niter1525, 8       ; 2 uses
  %niter1525.ncmp.7 = icmp eq i64 %niter1525.next.7, %unroll_iter1524
end_hunk_1
begin_hunk_2_@local_laplacian_internal:bb.a
  %.056.i707.5.epil = phi i32 [ %i.wn, %.lr.ph.i705.5.epil ], [ %.056.i707.5.epil.init, %.lr.ph.i705.5.epil.preheader ]
  %epil.iter1605 = phi i64 [ %epil.iter1605.next, %.lr.ph.i705.5.epil ], [ 0, %.lr.ph.i705.5.epil.preheader ]
  %i.wn = sdiv i32 %.056.i707.5.epil, 2           ; 2 uses
  %epil.iter1605.next = add i64 %epil.iter1605, 1 ; 2 uses
  %epil.iter1605.cmp.not = icmp eq i64 %epil.iter1605.next, %xtraiter1604
  br i1 %epil.iter1605.cmp.not, label %._crit_edge.loopexit.i709.5, label %.lr.ph.i705.5.epil, !llvm.loop !81

._crit_edge.loopexit.i709.5:                      ; preds = %.lr.ph.i705.5.epil, %._crit_edge.loopexit.i709.5.unr-lcssa
  %.lcssa1400 = phi i32 [ %i.wm, %._crit_edge.loopexit.i709.5.unr-lcssa ], [ %i.wn, %.lr.ph.i705.5.epil ]
  %i.wo = add nsw i32 %.lcssa1399, 1
  %i.wp = add nsw i32 %.lcssa1400, 1
  br label %dl.exit710.5

dl.exit710.5:                                     ; preds = %._crit_edge.loopexit.i709.5, %bb.x
  %.in833.5 = phi i32 [ %i.wo, %._crit_edge.loopexit.i709.5 ], [ %.pre, %bb.x ]
  %.05.lcssa.i703.5 = phi i32 [ %i.wp, %._crit_edge.loopexit.i709.5 ], [ %.pre1074, %bb.x ]
  %i.wq = sext i32 %.in833.5 to i64
  %i.wr = sext i32 %.05.lcssa.i703.5 to i64
  %i.ws = shl nsw i64 %i.wq, 2
  %i.wt = mul i64 %i.ws, %i.wr
  %i.wu = tail call ptr @dt_alloc_aligned(i64 noundef %i.wt) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.wu, i64 64) ]
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %indvars.iv958.5
  store ptr %i.wu, ptr %i.wv, align 8, !tbaa !17
  %.not620.5 = icmp eq ptr %i.wu, null
  br i1 %.not620.5, label %iter.check1336, label %bb.y

bb.y:                                             ; preds = %dl.exit710.5
  %indvars.iv.next959.5 = add nuw nsw i64 %indvars.iv958.5, 1 ; 2 uses
  %exitcond962.5.not = icmp eq i64 %indvars.iv.next959.5, %wide.trip.count947.pre-phi
  br i1 %exitcond962.5.not, label %.thread807.5, label %bb.x

bb.z:                                             ; preds = %._crit_edge885
  br i1 %.not, label %bb.ag, label %bb.aa

.thread807.5:                                     ; preds = %bb.y, %._crit_edge885
  %indvars.iv1013 = phi i64 [ %indvars.iv.next1014, %._crit_edge885 ], [ 0, %bb.y ] ; 3 uses
  %i.ww = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %indvars.iv1013 ; 2 uses
  %i.wx = load ptr, ptr %i.ww, align 16, !tbaa !17 ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv1013
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !20
  tail call void @apply_curve(ptr noundef %i.wx, ptr noundef %storemerge, i32 noundef %.pre, i32 noundef %.pre1074, i32 noundef %i.ma, float noundef %i.wz, float noundef %4, float noundef %5, float noundef %6, float noundef %7)
  br i1 %.not612871, label %._crit_edge885, label %.lr.ph884

._crit_edge885:                                   ; preds = %dl.exit726, %.thread807.5
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 1 ; 2 uses
  %exitcond1016.not = icmp eq i64 %indvars.iv.next1014, 6
  br i1 %exitcond1016.not, label %bb.z, label %.thread807.5

.lr.ph884:                                        ; preds = %.thread807.5, %dl.exit726
  %indvar1611 = phi i64 [ %indvar.next1612, %dl.exit726 ], [ 0, %.thread807.5 ] ; 4 uses
  %i.xa = phi ptr [ %i.xe, %dl.exit726 ], [ %i.wx, %.thread807.5 ]
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %dl.exit726 ], [ 1, %.thread807.5 ] ; 4 uses
  %i.xb = add i64 %indvar1611, -1                 ; 2 uses
  %i.xc = add nsw i64 %indvars.iv1008, -1         ; 2 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv1008
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !17 ; 2 uses
  %i.xf = icmp samesign ugt i64 %indvars.iv1008, 1
  br i1 %i.xf, label %.lr.ph.i713.preheader, label %dl.exit726

.lr.ph.i713.preheader:                            ; preds = %.lr.ph884
  %xtraiter1613 = and i64 %i.xc, 7                ; 3 uses
  %i.xg = icmp ult i64 %i.xb, 7
  br i1 %i.xg, label %.lr.ph.i713.epil.preheader, label %.lr.ph.i713.preheader.new

.lr.ph.i713.preheader.new:                        ; preds = %.lr.ph.i713.preheader
  %unroll_iter1618 = and i64 %i.xc, -8
  br label %.lr.ph.i713

.lr.ph.i713:                                      ; preds = %.lr.ph.i713, %.lr.ph.i713.preheader.new
  %.056.i715 = phi i32 [ %.pre1079, %.lr.ph.i713.preheader.new ], [ %i.xh, %.lr.ph.i713 ]
  %niter1619 = phi i64 [ 0, %.lr.ph.i713.preheader.new ], [ %niter1619.next.7, %.lr.ph.i713 ]
  %i.xh = sdiv i32 %.056.i715, 256                ; 3 uses
  %niter1619.next.7 = add i64 %niter1619, 8       ; 2 uses
  %niter1619.ncmp.7 = icmp eq i64 %niter1619.next.7, %unroll_iter1618
  br i1 %niter1619.ncmp.7, label %.lr.ph.i721.preheader.unr-lcssa, label %.lr.ph.i713

.lr.ph.i721.preheader.unr-lcssa:                  ; preds = %.lr.ph.i713
  %lcmp.mod1615.not = icmp eq i64 %xtraiter1613, 0
  br i1 %lcmp.mod1615.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil.preheader

.lr.ph.i713.epil.preheader:                       ; preds = %.lr.ph.i721.preheader.unr-lcssa, %.lr.ph.i713.preheader
  %.056.i715.epil.init = phi i32 [ %.pre1079, %.lr.ph.i713.preheader ], [ %i.xh, %.lr.ph.i721.preheader.unr-lcssa ]
  %lcmp.mod1617 = icmp ne i64 %xtraiter1613, 0
  tail call void @llvm.assume(i1 %lcmp.mod1617)
  br label %.lr.ph.i713.epil

.lr.ph.i713.epil:                                 ; preds = %.lr.ph.i713.epil, %.lr.ph.i713.epil.preheader
  %.056.i715.epil = phi i32 [ %i.xi, %.lr.ph.i713.epil ], [ %.056.i715.epil.init, %.lr.ph.i713.epil.preheader ]
  %epil.iter1614 = phi i64 [ %epil.iter1614.next, %.lr.ph.i713.epil ], [ 0, %.lr.ph.i713.epil.preheader ]
  %i.xi = sdiv i32 %.056.i715.epil, 2             ; 2 uses
  %epil.iter1614.next = add i64 %epil.iter1614, 1 ; 2 uses
  %epil.iter1614.cmp.not = icmp eq i64 %epil.iter1614.next, %xtraiter1613
  br i1 %epil.iter1614.cmp.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil, !llvm.loop !82

.lr.ph.i721.preheader:                            ; preds = %.lr.ph.i713.epil, %.lr.ph.i721.preheader.unr-lcssa
  %.lcssa1397 = phi i32 [ %i.xh, %.lr.ph.i721.preheader.unr-lcssa ], [ %i.xi, %.lr.ph.i713.epil ]
  %xtraiter1620 = and i64 %indvar1611, 7          ; 3 uses
  %i.xj = icmp ult i64 %i.xb, 7
  br i1 %i.xj, label %.lr.ph.i721.epil.preheader, label %.lr.ph.i721.preheader.new

.lr.ph.i721.preheader.new:                        ; preds = %.lr.ph.i721.preheader
  %unroll_iter1625 = and i64 %indvar1611, -8
  br label %.lr.ph.i721

._crit_edge.loopexit.i725.unr-lcssa:              ; preds = %.lr.ph.i721
  %lcmp.mod1622.not = icmp eq i64 %xtraiter1620, 0
  br i1 %lcmp.mod1622.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil.preheader

.lr.ph.i721.epil.preheader:                       ; preds = %._crit_edge.loopexit.i725.unr-lcssa, %.lr.ph.i721.preheader
  %.056.i723.epil.init = phi i32 [ %.pre1081, %.lr.ph.i721.preheader ], [ %i.xn, %._crit_edge.loopexit.i725.unr-lcssa ]
  %lcmp.mod1624 = icmp ne i64 %xtraiter1620, 0
  tail call void @llvm.assume(i1 %lcmp.mod1624)
  br label %.lr.ph.i721.epil

.lr.ph.i721.epil:                                 ; preds = %.lr.ph.i721.epil, %.lr.ph.i721.epil.preheader
  %.056.i723.epil = phi i32 [ %i.xk, %.lr.ph.i721.epil ], [ %.056.i723.epil.init, %.lr.ph.i721.epil.preheader ]
  %epil.iter1621 = phi i64 [ %epil.iter1621.next, %.lr.ph.i721.epil ], [ 0, %.lr.ph.i721.epil.preheader ]
  %i.xk = sdiv i32 %.056.i723.epil, 2             ; 2 uses
  %epil.iter1621.next = add i64 %epil.iter1621, 1 ; 2 uses
  %epil.iter1621.cmp.not = icmp eq i64 %epil.iter1621.next, %xtraiter1620
  br i1 %epil.iter1621.cmp.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil, !llvm.loop !83

._crit_edge.loopexit.i725:                        ; preds = %.lr.ph.i721.epil, %._crit_edge.loopexit.i725.unr-lcssa
  %.lcssa1398 = phi i32 [ %i.xn, %._crit_edge.loopexit.i725.unr-lcssa ], [ %i.xk, %.lr.ph.i721.epil ]
  %i.xl = add nsw i32 %.lcssa1397, 1
  %i.xm = add nsw i32 %.lcssa1398, 1
  br label %dl.exit726

.lr.ph.i721:                                      ; preds = %.lr.ph.i721, %.lr.ph.i721.preheader.new
  %.056.i723 = phi i32 [ %.pre1081, %.lr.ph.i721.preheader.new ], [ %i.xn, %.lr.ph.i721 ]
  %niter1626 = phi i64 [ 0, %.lr.ph.i721.preheader.new ], [ %niter1626.next.7, %.lr.ph.i721 ]
  %i.xn = sdiv i32 %.056.i723, 256                ; 3 uses
  %niter1626.next.7 = add i64 %niter1626, 8       ; 2 uses
  %niter1626.ncmp.7 = icmp eq i64 %niter1626.next.7, %unroll_iter1625
  br i1 %niter1626.ncmp.7, label %._crit_edge.loopexit.i725.unr-lcssa, label %.lr.ph.i721

dl.exit726:                                       ; preds = %.lr.ph884, %._crit_edge.loopexit.i725
  %.in831 = phi i32 [ %i.xl, %._crit_edge.loopexit.i725 ], [ %.pre, %.lr.ph884 ]
  %.05.lcssa.i719 = phi i32 [ %i.xm, %._crit_edge.loopexit.i725 ], [ %.pre1074, %.lr.ph884 ]
  %i.xo = sext i32 %.in831 to i64
  %i.xp = sext i32 %.05.lcssa.i719 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.xa, ptr noundef %i.xe, i64 noundef %i.xo, i64 noundef %i.xp)
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %exitcond1012.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count947.pre-phi
  %indvar.next1612 = add i64 %indvar1611, 1
  br i1 %exitcond1012.not, label %._crit_edge885, label %.lr.ph884

bb.aa:                                            ; preds = %bb.z
  %i.xq = load i32, ptr %8, align 8, !tbaa !18
  %i.xr = icmp eq i32 %i.xq, 2
  br i1 %i.xr, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.xs = uitofp nneg i32 %.0528797 to float
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.xs) ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !84
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !85
  %i.xx = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !87
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !88
  %i.yb = sitofp reassoc nsz arcp contract afn i32 %i.ya to float
  %i.yc = fmul reassoc nsz arcp contract afn float %i.xw, %i.yb
  %i.yd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !89
  %i.yf = sitofp reassoc nsz arcp contract afn i32 %i.ye to float
  %i.yg = fmul reassoc nsz arcp contract afn float %exp2, %i.yf
  %i.yh = fdiv reassoc nsz arcp contract afn float %i.yg, %i.yc
  %i.yi = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !16 ; 2 uses
  %i.yk = add nsw i32 %i.yj, -1
  %i.yl = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.yh) ; 2 uses
  %i.ym = insertelement <2 x float> poison, float %i.yl, i64 0
  %i.yn = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yo = fadd reassoc nsz arcp contract afn <2 x float> %i.yn, <float -0.000000e+00, float 1.000000e+00>
  %i.yp = fptosi <2 x float> %i.yo to <2 x i32>   ; 2 uses
  %i.yq = insertelement <2 x i32> poison, i32 %i.yj, i64 0
  %i.yr = shufflevector <2 x i32> %i.yq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ys = icmp sgt <2 x i32> %i.yr, %i.yp
  %i.yt = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yp, <2 x i32> zeroinitializer)
  %i.yu = insertelement <2 x i32> poison, i32 %i.yk, i64 0
  %i.yv = shufflevector <2 x i32> %i.yu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yw = select <2 x i1> %i.ys, <2 x i32> %i.yt, <2 x i32> %i.yv ; 3 uses
  %i.yx = extractelement <2 x i32> %i.yw, i64 0   ; 10 uses
  %i.yy = sitofp reassoc nsz arcp contract afn i32 %i.yx to float
  %i.yz = fsub reassoc nsz arcp contract afn float %i.yl, %i.yy ; 3 uses
  %i.za = fcmp reassoc nsz arcp contract afn ogt float %i.yz, 1.000000e+00
  %i.zb = fcmp reassoc nsz arcp contract afn olt float %i.yz, 0.000000e+00
  %i.zc = select reassoc nsz arcp contract afn i1 %i.zb, float 0.000000e+00, float %i.yz
  %i.zd = select reassoc nsz arcp contract afn i1 %i.za, float 1.000000e+00, float %i.zc
  %i.ze = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ldexp.v2f32.v2i32(<2 x float> splat (float 1.000000e+00), <2 x i32> %i.yw)
  %i.zf = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ze ; 2 uses
  %i.zg = icmp sgt i32 %.0528797, 0
  br i1 %i.zg, label %.lr.ph.i729.preheader, label %dl.exit742

.lr.ph.i729.preheader:                            ; preds = %bb.ab
  %xtraiter1627 = and i32 %.0528797, 7            ; 3 uses
  %i.zh = icmp ult i32 %i.qk, 7
  br i1 %i.zh, label %.lr.ph.i729.epil.preheader, label %.lr.ph.i729.preheader.new

.lr.ph.i729.preheader.new:                        ; preds = %.lr.ph.i729.preheader
  %unroll_iter1632 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i729

.lr.ph.i729:                                      ; preds = %.lr.ph.i729, %.lr.ph.i729.preheader.new
  %.056.i731 = phi i32 [ %.pre1079, %.lr.ph.i729.preheader.new ], [ %i.zi, %.lr.ph.i729 ]
  %niter1633 = phi i32 [ 0, %.lr.ph.i729.preheader.new ], [ %niter1633.next.7, %.lr.ph.i729 ]
  %i.zi = sdiv i32 %.056.i731, 256                ; 3 uses
  %niter1633.next.7 = add nuw nsw i32 %niter1633, 8 ; 2 uses
  %niter1633.ncmp.7 = icmp eq i32 %niter1633.next.7, %unroll_iter1632
  br i1 %niter1633.ncmp.7, label %.lr.ph.i737.preheader.unr-lcssa, label %.lr.ph.i729

.lr.ph.i737.preheader.unr-lcssa:                  ; preds = %.lr.ph.i729
  %lcmp.mod1629.not = icmp eq i32 %xtraiter1627, 0
  br i1 %lcmp.mod1629.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil.preheader

.lr.ph.i729.epil.preheader:                       ; preds = %.lr.ph.i737.preheader.unr-lcssa, %.lr.ph.i729.preheader
  %.056.i731.epil.init = phi i32 [ %.pre1079, %.lr.ph.i729.preheader ], [ %i.zi, %.lr.ph.i737.preheader.unr-lcssa ]
  %lcmp.mod1631 = icmp ne i32 %xtraiter1627, 0
  tail call void @llvm.assume(i1 %lcmp.mod1631)
  br label %.lr.ph.i729.epil

.lr.ph.i729.epil:                                 ; preds = %.lr.ph.i729.epil, %.lr.ph.i729.epil.preheader
  %.056.i731.epil = phi i32 [ %i.zj, %.lr.ph.i729.epil ], [ %.056.i731.epil.init, %.lr.ph.i729.epil.preheader ]
  %epil.iter1628 = phi i32 [ %epil.iter1628.next, %.lr.ph.i729.epil ], [ 0, %.lr.ph.i729.epil.preheader ]
  %i.zj = sdiv i32 %.056.i731.epil, 2             ; 2 uses
  %epil.iter1628.next = add i32 %epil.iter1628, 1 ; 2 uses
  %epil.iter1628.cmp.not = icmp eq i32 %epil.iter1628.next, %xtraiter1627
  br i1 %epil.iter1628.cmp.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil, !llvm.loop !90

.lr.ph.i737.preheader:                            ; preds = %.lr.ph.i729.epil, %.lr.ph.i737.preheader.unr-lcssa
  %.lcssa1396 = phi i32 [ %i.zi, %.lr.ph.i737.preheader.unr-lcssa ], [ %i.zj, %.lr.ph.i729.epil ]
  %xtraiter1634 = and i32 %.0528797, 7            ; 3 uses
  %i.zk = icmp ult i32 %i.qk, 7
  br i1 %i.zk, label %.lr.ph.i737.epil.preheader, label %.lr.ph.i737.preheader.new

.lr.ph.i737.preheader.new:                        ; preds = %.lr.ph.i737.preheader
  %unroll_iter1639 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i737

._crit_edge.loopexit.i741.unr-lcssa:              ; preds = %.lr.ph.i737
  %lcmp.mod1636.not = icmp eq i32 %xtraiter1634, 0
  br i1 %lcmp.mod1636.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil.preheader

.lr.ph.i737.epil.preheader:                       ; preds = %._crit_edge.loopexit.i741.unr-lcssa, %.lr.ph.i737.preheader
  %.056.i739.epil.init = phi i32 [ %.pre1081, %.lr.ph.i737.preheader ], [ %i.zo, %._crit_edge.loopexit.i741.unr-lcssa ]
  %lcmp.mod1638 = icmp ne i32 %xtraiter1634, 0
  tail call void @llvm.assume(i1 %lcmp.mod1638)
  br label %.lr.ph.i737.epil

.lr.ph.i737.epil:                                 ; preds = %.lr.ph.i737.epil, %.lr.ph.i737.epil.preheader
  %.056.i739.epil = phi i32 [ %i.zl, %.lr.ph.i737.epil ], [ %.056.i739.epil.init, %.lr.ph.i737.epil.preheader ]
  %epil.iter1635 = phi i32 [ %epil.iter1635.next, %.lr.ph.i737.epil ], [ 0, %.lr.ph.i737.epil.preheader ]
  %i.zl = sdiv i32 %.056.i739.epil, 2             ; 2 uses
  %epil.iter1635.next = add i32 %epil.iter1635, 1 ; 2 uses
  %epil.iter1635.cmp.not = icmp eq i32 %epil.iter1635.next, %xtraiter1634
  br i1 %epil.iter1635.cmp.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil, !llvm.loop !91

._crit_edge.loopexit.i741:                        ; preds = %.lr.ph.i737.epil, %._crit_edge.loopexit.i741.unr-lcssa
  %.lcssa1395 = phi i32 [ %i.zo, %._crit_edge.loopexit.i741.unr-lcssa ], [ %i.zl, %.lr.ph.i737.epil ]
  %i.zm = add nsw i32 %.lcssa1396, 1
  %i.zn = add nsw i32 %.lcssa1395, 1
  br label %dl.exit742

.lr.ph.i737:                                      ; preds = %.lr.ph.i737, %.lr.ph.i737.preheader.new
  %.056.i739 = phi i32 [ %.pre1081, %.lr.ph.i737.preheader.new ], [ %i.zo, %.lr.ph.i737 ]
  %niter1640 = phi i32 [ 0, %.lr.ph.i737.preheader.new ], [ %niter1640.next.7, %.lr.ph.i737 ]
  %i.zo = sdiv i32 %.056.i739, 256                ; 3 uses
  %niter1640.next.7 = add i32 %niter1640, 8       ; 2 uses
  %niter1640.ncmp.7 = icmp eq i32 %niter1640.next.7, %unroll_iter1639
  br i1 %niter1640.ncmp.7, label %._crit_edge.loopexit.i741.unr-lcssa, label %.lr.ph.i737

dl.exit742:                                       ; preds = %bb.ab, %._crit_edge.loopexit.i741
  %.05.lcssa.i727813 = phi i32 [ %i.zm, %._crit_edge.loopexit.i741 ], [ %.pre, %bb.ab ] ; 4 uses
  %.05.lcssa.i735 = phi i32 [ %i.zn, %._crit_edge.loopexit.i741 ], [ %.pre1074, %bb.ab ] ; 4 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !92 ; 4 uses
  %i.zr = icmp sgt i32 %i.yx, 0
  br i1 %i.zr, label %.lr.ph.preheader.i744, label %dl.exit750

.lr.ph.preheader.i744:                            ; preds = %dl.exit742
  %i.zs = add nsw i32 %i.zq, -1                   ; 2 uses
  %xtraiter1641 = and i32 %i.yx, 7                ; 3 uses
  %i.zt = icmp ult i32 %i.yx, 8
  br i1 %i.zt, label %.lr.ph.i745.epil.preheader, label %.lr.ph.preheader.i744.new

.lr.ph.preheader.i744.new:                        ; preds = %.lr.ph.preheader.i744
  %unroll_iter1646 = and i32 %i.yx, 2147483640
  br label %.lr.ph.i745

.lr.ph.i745:                                      ; preds = %.lr.ph.i745, %.lr.ph.preheader.i744.new
  %.056.i747 = phi i32 [ %i.zs, %.lr.ph.preheader.i744.new ], [ %i.zu, %.lr.ph.i745 ]
  %niter1647 = phi i32 [ 0, %.lr.ph.preheader.i744.new ], [ %niter1647.next.7, %.lr.ph.i745 ]
  %i.zu = sdiv i32 %.056.i747, 256                ; 3 uses
  %niter1647.next.7 = add nuw nsw i32 %niter1647, 8 ; 2 uses
  %niter1647.ncmp.7 = icmp eq i32 %niter1647.next.7, %unroll_iter1646
  br i1 %niter1647.ncmp.7, label %.lr.ph.preheader.i752.unr-lcssa, label %.lr.ph.i745

dl.exit750:                                       ; preds = %dl.exit742
  %i.zv = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !93 ; 2 uses
  %i.zx = insertelement <2 x i32> poison, i32 %i.zq, i64 0
  %i.zy = insertelement <2 x i32> %i.zx, i32 %i.zw, i64 1
  br label %dl.exit758

.lr.ph.preheader.i752.unr-lcssa:                  ; preds = %.lr.ph.i745
  %lcmp.mod1643.not = icmp eq i32 %xtraiter1641, 0
  br i1 %lcmp.mod1643.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil.preheader

.lr.ph.i745.epil.preheader:                       ; preds = %.lr.ph.preheader.i752.unr-lcssa, %.lr.ph.preheader.i744
  %.056.i747.epil.init = phi i32 [ %i.zs, %.lr.ph.preheader.i744 ], [ %i.zu, %.lr.ph.preheader.i752.unr-lcssa ]
  %lcmp.mod1645 = icmp ne i32 %xtraiter1641, 0
  tail call void @llvm.assume(i1 %lcmp.mod1645)
  br label %.lr.ph.i745.epil

.lr.ph.i745.epil:                                 ; preds = %.lr.ph.i745.epil, %.lr.ph.i745.epil.preheader
  %.056.i747.epil = phi i32 [ %i.zz, %.lr.ph.i745.epil ], [ %.056.i747.epil.init, %.lr.ph.i745.epil.preheader ]
  %epil.iter1642 = phi i32 [ %epil.iter1642.next, %.lr.ph.i745.epil ], [ 0, %.lr.ph.i745.epil.preheader ]
  %i.zz = sdiv i32 %.056.i747.epil, 2             ; 2 uses
  %epil.iter1642.next = add i32 %epil.iter1642, 1 ; 2 uses
  %epil.iter1642.cmp.not = icmp eq i32 %epil.iter1642.next, %xtraiter1641
  br i1 %epil.iter1642.cmp.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil, !llvm.loop !94

.lr.ph.preheader.i752:                            ; preds = %.lr.ph.i745.epil, %.lr.ph.preheader.i752.unr-lcssa
  %.lcssa1394 = phi i32 [ %i.zu, %.lr.ph.preheader.i752.unr-lcssa ], [ %i.zz, %.lr.ph.i745.epil ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !93 ; 2 uses
  %i.aac = add nsw i32 %i.aab, -1                 ; 2 uses
  %xtraiter1648 = and i32 %i.yx, 7                ; 3 uses
  %i.aad = icmp ult i32 %i.yx, 8
  br i1 %i.aad, label %.lr.ph.i753.epil.preheader, label %.lr.ph.preheader.i752.new

.lr.ph.preheader.i752.new:                        ; preds = %.lr.ph.preheader.i752
  %unroll_iter1653 = and i32 %i.yx, 2147483640
  br label %.lr.ph.i753

._crit_edge.loopexit.i757.unr-lcssa:              ; preds = %.lr.ph.i753
  %lcmp.mod1650.not = icmp eq i32 %xtraiter1648, 0
  br i1 %lcmp.mod1650.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil.preheader

.lr.ph.i753.epil.preheader:                       ; preds = %._crit_edge.loopexit.i757.unr-lcssa, %.lr.ph.preheader.i752
  %.056.i755.epil.init = phi i32 [ %i.aac, %.lr.ph.preheader.i752 ], [ %i.aai, %._crit_edge.loopexit.i757.unr-lcssa ]
  %lcmp.mod1652 = icmp ne i32 %xtraiter1648, 0
  tail call void @llvm.assume(i1 %lcmp.mod1652)
  br label %.lr.ph.i753.epil

.lr.ph.i753.epil:                                 ; preds = %.lr.ph.i753.epil, %.lr.ph.i753.epil.preheader
  %.056.i755.epil = phi i32 [ %i.aae, %.lr.ph.i753.epil ], [ %.056.i755.epil.init, %.lr.ph.i753.epil.preheader ]
  %epil.iter1649 = phi i32 [ %epil.iter1649.next, %.lr.ph.i753.epil ], [ 0, %.lr.ph.i753.epil.preheader ]
  %i.aae = sdiv i32 %.056.i755.epil, 2            ; 2 uses
  %epil.iter1649.next = add i32 %epil.iter1649, 1 ; 2 uses
  %epil.iter1649.cmp.not = icmp eq i32 %epil.iter1649.next, %xtraiter1648
  br i1 %epil.iter1649.cmp.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil, !llvm.loop !95

._crit_edge.loopexit.i757:                        ; preds = %.lr.ph.i753.epil, %._crit_edge.loopexit.i757.unr-lcssa
  %.lcssa1393 = phi i32 [ %i.aai, %._crit_edge.loopexit.i757.unr-lcssa ], [ %i.aae, %.lr.ph.i753.epil ]
  %i.aaf = insertelement <2 x i32> poison, i32 %.lcssa1394, i64 0
  %i.aag = insertelement <2 x i32> %i.aaf, i32 %.lcssa1393, i64 1
  %i.aah = add nsw <2 x i32> %i.aag, splat (i32 1)
  br label %dl.exit758

.lr.ph.i753:                                      ; preds = %.lr.ph.i753, %.lr.ph.preheader.i752.new
  %.056.i755 = phi i32 [ %i.aac, %.lr.ph.preheader.i752.new ], [ %i.aai, %.lr.ph.i753 ]
  %niter1654 = phi i32 [ 0, %.lr.ph.preheader.i752.new ], [ %niter1654.next.7, %.lr.ph.i753 ]
  %i.aai = sdiv i32 %.056.i755, 256               ; 3 uses
  %niter1654.next.7 = add i32 %niter1654, 8       ; 2 uses
  %niter1654.ncmp.7 = icmp eq i32 %niter1654.next.7, %unroll_iter1653
  br i1 %niter1654.ncmp.7, label %._crit_edge.loopexit.i757.unr-lcssa, label %.lr.ph.i753

dl.exit758:                                       ; preds = %dl.exit750, %._crit_edge.loopexit.i757
  %i.aaj = phi i32 [ %i.zw, %dl.exit750 ], [ %i.aab, %._crit_edge.loopexit.i757 ] ; 2 uses
  %i.aak = phi ptr [ %i.zv, %dl.exit750 ], [ %i.aaa, %._crit_edge.loopexit.i757 ]
  %i.aal = phi <2 x i32> [ %i.zy, %dl.exit750 ], [ %i.aah, %._crit_edge.loopexit.i757 ] ; 5 uses
  %i.aam = extractelement <2 x i32> %i.yw, i64 1  ; 8 uses
  %i.aan = icmp sgt i32 %i.aam, 0
  br i1 %i.aan, label %.lr.ph.preheader.i760, label %dl.exit774

.lr.ph.preheader.i760:                            ; preds = %dl.exit758
  %i.aao = add nsw i32 %i.zq, -1                  ; 2 uses
  %xtraiter1655 = and i32 %i.aam, 7               ; 3 uses
  %i.aap = icmp ult i32 %i.aam, 8
  br i1 %i.aap, label %.lr.ph.i761.epil.preheader, label %.lr.ph.preheader.i760.new

.lr.ph.preheader.i760.new:                        ; preds = %.lr.ph.preheader.i760
  %unroll_iter1660 = and i32 %i.aam, 2147483640
  br label %.lr.ph.i761

.lr.ph.i761:                                      ; preds = %.lr.ph.i761, %.lr.ph.preheader.i760.new
  %.056.i763 = phi i32 [ %i.aao, %.lr.ph.preheader.i760.new ], [ %i.aaq, %.lr.ph.i761 ]
  %niter1661 = phi i32 [ 0, %.lr.ph.preheader.i760.new ], [ %niter1661.next.7, %.lr.ph.i761 ]
  %i.aaq = sdiv i32 %.056.i763, 256               ; 3 uses
  %niter1661.next.7 = add nuw nsw i32 %niter1661, 8 ; 2 uses
  %niter1661.ncmp.7 = icmp eq i32 %niter1661.next.7, %unroll_iter1660
  br i1 %niter1661.ncmp.7, label %.lr.ph.preheader.i768.unr-lcssa, label %.lr.ph.i761

.lr.ph.preheader.i768.unr-lcssa:                  ; preds = %.lr.ph.i761
  %lcmp.mod1657.not = icmp eq i32 %xtraiter1655, 0
  br i1 %lcmp.mod1657.not, label %.lr.ph.preheader.i768, label %.lr.ph.i761.epil.preheader

.lr.ph.i761.epil.preheader:                       ; preds = %.lr.ph.preheader.i768.unr-lcssa, %.lr.ph.preheader.i760
  %.056.i763.epil.init = phi i32 [ %i.aao, %.lr.ph.preheader.i760 ], [ %i.aaq, %.lr.ph.preheader.i768.unr-lcssa ]
  %lcmp.mod1659 = icmp ne i32 %xtraiter1655, 0
  tail call void @llvm.assume(i1 %lcmp.mod1659)
  br label %.lr.ph.i761.epil

.lr.ph.i761.epil:                                 ; preds = %.lr.ph.i761.epil, %.lr.ph.i761.epil.preheader
  %.056.i763.epil = phi i32 [ %i.aar, %.lr.ph.i761.epil ], [ %.056.i763.epil.init, %.lr.ph.i761.epil.preheader ]
  %epil.iter1656 = phi i32 [ %epil.iter1656.next, %.lr.ph.i761.epil ], [ 0, %.lr.ph.i761.epil.preheader ]
  %i.aar = sdiv i32 %.056.i763.epil, 2            ; 2 uses
  %epil.iter1656.next = add i32 %epil.iter1656, 1 ; 2 uses
  %epil.iter1656.cmp.not = icmp eq i32 %epil.iter1656.next, %xtraiter1655
  br i1 %epil.iter1656.cmp.not, label %.lr.ph.preheader.i768, label %.lr.ph.i761.epil, !llvm.loop !96

.lr.ph.preheader.i768:                            ; preds = %.lr.ph.i761.epil, %.lr.ph.preheader.i768.unr-lcssa
  %.lcssa1392 = phi i32 [ %i.aaq, %.lr.ph.preheader.i768.unr-lcssa ], [ %i.aar, %.lr.ph.i761.epil ]
  %i.aas = add nsw i32 %i.aaj, -1                 ; 2 uses
  %xtraiter1662 = and i32 %i.aam, 7               ; 3 uses
  %i.aat = icmp ult i32 %i.aam, 8
  br i1 %i.aat, label %.lr.ph.i769.epil.preheader, label %.lr.ph.preheader.i768.new

.lr.ph.preheader.i768.new:                        ; preds = %.lr.ph.preheader.i768
  %unroll_iter1667 = and i32 %i.aam, 2147483640
  br label %.lr.ph.i769

._crit_edge.loopexit.i773.unr-lcssa:              ; preds = %.lr.ph.i769
  %lcmp.mod1664.not = icmp eq i32 %xtraiter1662, 0
  br i1 %lcmp.mod1664.not, label %._crit_edge.loopexit.i773, label %.lr.ph.i769.epil.preheader

.lr.ph.i769.epil.preheader:                       ; preds = %._crit_edge.loopexit.i773.unr-lcssa, %.lr.ph.preheader.i768
  %.056.i771.epil.init = phi i32 [ %i.aas, %.lr.ph.preheader.i768 ], [ %i.aax, %._crit_edge.loopexit.i773.unr-lcssa ]
  %lcmp.mod1666 = icmp ne i32 %xtraiter1662, 0
  tail call void @llvm.assume(i1 %lcmp.mod1666)
  br label %.lr.ph.i769.epil

end_hunk_2
