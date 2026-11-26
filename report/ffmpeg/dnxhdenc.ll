Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dnxhdenc?download=true
inline.NumInlined: 26
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dnxhd_encode_picture:bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !100
  %i.it = add nsw i32 %i.is, %.196158.i           ; 2 uses
  %i.iu = load ptr, ptr %i.bw, align 8, !tbaa !87
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 %.pre-phi182.i
  store i8 %.087.lcssa.i, ptr %i.iv, align 1, !tbaa !94
  %i.iw = load ptr, ptr %i.bt, align 16, !tbaa !97 ; 2 uses
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %.086.lcssa.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !100
  %i.ja = load ptr, ptr %i.bx, align 16, !tbaa !86
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %.pre-phi182.i
  store i32 %i.iz, ptr %i.jb, align 4, !tbaa !81
  %i.jc = add nuw nsw i32 %.091159.i, 1           ; 2 uses
  %i.jd = load i32, ptr %i.bs, align 4, !tbaa !75 ; 3 uses
  %i.je = icmp slt i32 %i.jc, %i.jd
  br i1 %i.je, label %.lr.ph160.i, label %._crit_edge161.i, !llvm.loop !142

bb.m:                                             ; preds = %bb.m, %.lr.ph155.i.new
  %indvars.iv.i74 = phi i64 [ 1, %.lr.ph155.i.new ], [ %indvars.iv.next.i75.1, %bb.m ] ; 4 uses
  %.086152.i = phi i32 [ 0, %.lr.ph155.i.new ], [ %.1.i.1, %bb.m ]
  %.087151.i = phi i8 [ 1, %.lr.ph155.i.new ], [ %.188.i.1, %bb.m ]
  %.089150.i = phi i32 [ -1, %.lr.ph155.i.new ], [ %.190.i.1, %bb.m ] ; 2 uses
  %niter335 = phi i64 [ 0, %.lr.ph155.i.new ], [ %niter335.next.1, %bb.m ]
  %i.jf = mul nsw i64 %indvars.iv.i74, %i.hz
  %i.jg = add nsw i64 %i.jf, %i.ia                ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !100
  %i.jk = mul nsw i32 %i.jj, %spec.select.i72
  %i.jl = load i32, ptr %i.jh, align 4, !tbaa !101
  %i.jm = shl i32 %i.jl, 10
  %i.jn = add i32 %i.jm, %i.jk                    ; 2 uses
  %i.jo = icmp ult i32 %i.jn, %.089150.i          ; 2 uses
  %.190.i = tail call i32 @llvm.umin.i32(i32 %i.jn, i32 %.089150.i) ; 2 uses
  %i.jp = trunc i64 %indvars.iv.i74 to i8
  %.188.i = select i1 %i.jo, i8 %i.jp, i8 %.087151.i
  %i.jq = trunc nsw i64 %i.jg to i32
  %.1.i = select i1 %i.jo, i32 %i.jq, i32 %.086152.i
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i74, 1 ; 2 uses
  %i.jr = mul nsw i64 %indvars.iv.next.i75, %i.hz
  %i.js = add nsw i64 %i.jr, %i.ia                ; 2 uses
  %i.jt = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %i.js ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !100
  %i.jw = mul nsw i32 %i.jv, %spec.select.i72
  %i.jx = load i32, ptr %i.jt, align 4, !tbaa !101
  %i.jy = shl i32 %i.jx, 10
  %i.jz = add i32 %i.jy, %i.jw                    ; 2 uses
  %i.ka = icmp ult i32 %i.jz, %.190.i             ; 2 uses
  %.190.i.1 = tail call i32 @llvm.umin.i32(i32 %i.jz, i32 %.190.i) ; 2 uses
  %i.kb = trunc i64 %indvars.iv.next.i75 to i8
  %.188.i.1 = select i1 %i.ka, i8 %i.kb, i8 %.188.i ; 3 uses
  %i.kc = trunc nsw i64 %i.js to i32
  %.1.i.1 = select i1 %i.ka, i32 %i.kc, i32 %.1.i ; 3 uses
  %indvars.iv.next.i75.1 = add nuw nsw i64 %indvars.iv.i74, 2 ; 2 uses
  %niter335.next.1 = add nuw i64 %niter335, 2     ; 2 uses
  %niter335.ncmp.1 = icmp eq i64 %niter335.next.1, %unroll_iter334
  br i1 %niter335.ncmp.1, label %._crit_edge156.loopexit.i.unr-lcssa, label %bb.m, !llvm.loop !143

._crit_edge165.i:                                 ; preds = %._crit_edge161.i, %bb.l, %.preheader.lr.ph.i, %bb.k
  %.2.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ 0, %bb.k ], [ %i.hq, %bb.l ], [ %i.hq, %._crit_edge161.i ] ; 2 uses
  %i.kd = load i32, ptr %i.bv, align 16, !tbaa !98 ; 2 uses
  br i1 %.not.i71, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge165.i
  %i.ke = icmp ugt i32 %.2.i, %i.kd
  br i1 %i.ke, label %dnxhd_encode_rdo.exit, label %select.unfold127.i

bb.o:                                             ; preds = %._crit_edge165.i
  %i.kf = icmp ult i32 %.2.i, %i.kd
  br i1 %i.kf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.kg = tail call i32 @llvm.smin.i32(i32 %.0110.i, i32 %.0101.i.ph) ; 3 uses
  %.not125.i = icmp eq i32 %.098.i, 0
  %i.kh = add nsw i32 %.098.i, %.0110.i
  %i.ki = ashr i32 %i.kh, 1
  %i.kj = sub nsw i32 %.0110.i, %.0104.i
  %.2112.i = select i1 %.not125.i, i32 %i.kj, i32 %i.ki
  %i.kk = sext i32 %.0104.i to i64
  %i.kl = mul nsw i64 %i.kk, 5
  %i.km = tail call i64 @llvm.smin.i64(i64 %i.kl, i64 2147483647)
  %i.kn = trunc i64 %i.km to i32
  %i.ko = tail call i32 @llvm.smax.i32(i32 %.2112.i, i32 1) ; 2 uses
  %i.kp = icmp eq i32 %i.ko, %i.kg
  br i1 %i.kp, label %select.unfold127.i, label %.outer

.outer:                                           ; preds = %bb.p, %._crit_edge.i
  %.0110.i.ph = phi i32 [ %i.ko, %bb.p ], [ %i.gx, %._crit_edge.i ]
  %.0107.i.ph = phi i32 [ 1024, %bb.p ], [ 2048, %._crit_edge.i ]
  %.0104.i.ph = phi i32 [ %i.kn, %bb.p ], [ 2048, %._crit_edge.i ]
  %.0101.i.ph = phi i32 [ %i.kg, %bb.p ], [ 2147483647, %._crit_edge.i ] ; 3 uses
  %.098.i.ph = phi i32 [ %.098.i, %bb.p ], [ 0, %._crit_edge.i ]
  %.not124.i = icmp eq i32 %.0101.i.ph, 2147483647
  br label %bb.k

bb.q:                                             ; preds = %bb.o
  %i.kq = tail call i32 @llvm.smax.i32(i32 %.0110.i, i32 %.098.i)
  br i1 %.not124.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kr = add nsw i32 %.0101.i.ph, %.0110.i
  %i.ks = ashr i32 %i.kr, 1
  %.pre180.i = sext i32 %.0107.i to i64
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.kt = sext i32 %.0110.i to i64
  %i.ku = sext i32 %.0107.i to i64                ; 2 uses
  %i.kv = add nsw i64 %i.ku, %i.kt
  %i.kw = icmp sgt i64 %i.kv, 2147483647
  br i1 %i.kw, label %dnxhd_encode_rdo.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kx = add nsw i32 %.0107.i, %.0110.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.pre-phi.i = phi i64 [ %i.ku, %bb.t ], [ %.pre180.i, %bb.r ]
  %.3.i = phi i32 [ %i.kx, %bb.t ], [ %i.ks, %bb.r ]
  %i.ky = mul nsw i64 %.pre-phi.i, 5
  %i.kz = tail call i64 @llvm.smin.i64(i64 %i.ky, i64 2147483647)
  %i.la = trunc i64 %i.kz to i32
  br label %bb.k

select.unfold127.i:                               ; preds = %bb.p, %bb.n
  %.5.ph.i = phi i32 [ %i.he, %bb.n ], [ %i.kg, %bb.p ]
  store i32 %.5.ph.i, ptr %i.ch, align 8, !tbaa !170
  br label %.loopexit

bb.v:                                             ; preds = %dnxhd_write_header.exit
  %i.lb = load i32, ptr %i.bq, align 4, !tbaa !96
  %.pre.i.i = load i32, ptr %i.br, align 8, !tbaa !74
  br label %.outer253

.outer253:                                        ; preds = %bb.ab, %bb.v
  %.ph254 = phi i32 [ %i.li, %bb.ab ], [ %.pre.i.i, %bb.v ]
  %.062.i.i.ph = phi i32 [ %.163.i.i, %bb.ab ], [ 1, %bb.v ]
  %.057.i.i.ph = phi i32 [ %i.ok, %bb.ab ], [ 0, %bb.v ] ; 5 uses
  %.055.i.i.ph = phi i32 [ %.055.i.i, %bb.ab ], [ 2147483647, %bb.v ]
  %.054.i.i.ph = phi i32 [ %.2.i.i, %bb.ab ], [ %i.lb, %bb.v ]
  %.not73.i.i = icmp eq i32 %.057.i.i.ph, 0       ; 2 uses
  %i.lc = zext i1 %.not73.i.i to i32
  br label %bb.w

bb.w:                                             ; preds = %.outer253, %bb.z
  %i.ld = phi i32 [ %i.li, %bb.z ], [ %.ph254, %.outer253 ]
  %.062.i.i = phi i32 [ 1, %bb.z ], [ %.062.i.i.ph, %.outer253 ] ; 2 uses
  %.059.i.i = phi i32 [ %.160.i.i, %bb.z ], [ 1, %.outer253 ] ; 2 uses
  %.055.i.i = phi i32 [ %i.oe, %bb.z ], [ %.055.i.i.ph, %.outer253 ] ; 5 uses
  %.054.i.i = phi i32 [ %spec.store.select.i.i, %bb.z ], [ %.054.i.i.ph, %.outer253 ] ; 12 uses
  store i32 %.054.i.i, ptr %i.bq, align 4, !tbaa !96
  %i.le = load ptr, ptr %i.k, align 8, !tbaa !70  ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 680
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !171
  %i.lh = tail call i32 %i.lg(ptr noundef %i.le, ptr noundef nonnull @dnxhd_calc_bits_thread, ptr noundef null, ptr noundef null, i32 noundef %i.ld) #12, !inline_history !144 ; 0 uses
  %i.li = load i32, ptr %i.br, align 8, !tbaa !74 ; 8 uses
  %i.lj = icmp sgt i32 %i.li, 0                   ; 2 uses
  %.pre87.i.i = load i32, ptr %i.bv, align 16, !tbaa !98 ; 2 uses
  br i1 %i.lj, label %.preheader.lr.ph.i.i, label %._crit_edge78.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.w
  %i.lk = load i32, ptr %i.bs, align 4, !tbaa !75 ; 4 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.preheader.lr.ph.split.us.i.i, label %._crit_edge78.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i.i
  %i.lm = load ptr, ptr %i.bt, align 16, !tbaa !97 ; 7 uses
  %i.ln = load i32, ptr %i.bu, align 4, !tbaa !77
  %i.lo = mul nsw i32 %i.ln, %.054.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.lk to i64 ; 6 uses
  %i.lp = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %min.iters.check = icmp ult i32 %i.lk, 9
  %i.lq = trunc nsw i64 %i.lp to i32
  %i.lr = icmp ugt i64 %i.lp, 4294967295
  %i.ls = and i64 %wide.trip.count.i.i, 7         ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 0
  %i.lu = select i1 %i.lt, i64 8, i64 %i.ls
  %n.vec = sub nsw i64 %wide.trip.count.i.i, %i.lu ; 2 uses
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.lr.ph.split.us.i.i
  %.05377.us.i.i = phi i32 [ 0, %.preheader.lr.ph.split.us.i.i ], [ %i.ny, %._crit_edge.us.i.i ] ; 2 uses
  %.06576.us.i.i = phi i32 [ 0, %.preheader.lr.ph.split.us.i.i ], [ %i.nw, %._crit_edge.us.i.i ] ; 3 uses
  %i.lv = mul nuw nsw i32 %.05377.us.i.i, %i.lk
  %invariant.op.us.i.i = add i32 %i.lv, %i.lo     ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.i.i
  %i.lw = add i32 %invariant.op.us.i.i, %i.lq
  %i.lx = icmp slt i32 %i.lw, %invariant.op.us.i.i
  %i.ly = or i1 %i.lx, %i.lr
  br i1 %i.ly, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.lz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.06576.us.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.lz, %vector.ph ], [ %i.mk, %vector.body ]
  %vec.phi249 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ml, %vector.body ]
  %i.ma = trunc i64 %index to i32                 ; 2 uses
  %i.mb = or disjoint i32 %i.ma, 4
  %i.mc = add i32 %invariant.op.us.i.i, %i.ma
  %i.md = add i32 %invariant.op.us.i.i, %i.mb
  %i.me = sext i32 %i.mc to i64
  %i.mf = sext i32 %i.md to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.me
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.mf
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %wide.vec = load <8 x i32>, ptr %i.mi, align 4, !tbaa !100
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec250 = load <8 x i32>, ptr %i.mj, align 4, !tbaa !100
  %strided.vec251 = shufflevector <8 x i32> %wide.vec250, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.mk = add <4 x i32> %strided.vec, %vec.phi    ; 2 uses
  %i.ml = add <4 x i32> %strided.vec251, %vec.phi249 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mm = icmp eq i64 %index.next, %n.vec
  br i1 %i.mm, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ml, %i.mk
  %i.mn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.us.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.16674.us.i.i.ph = phi i32 [ %.06576.us.i.i, %vector.scevcheck ], [ %.06576.us.i.i, %.preheader.us.i.i ], [ %i.mn, %middle.block ] ; 2 uses
  %i.mo = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i.i.ph
  %xtraiter306 = and i64 %i.mo, 3                 ; 2 uses
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.16674.us.i.i.prol = phi i32 [ %i.mu, %scalar.ph.prol ], [ %.16674.us.i.i.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.mp = trunc nuw nsw i64 %indvars.iv.i.i.prol to i32
  %.reass.us.i.i.prol = add i32 %invariant.op.us.i.i, %i.mp
  %i.mq = sext i32 %.reass.us.i.i.prol to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !100
  %i.mu = add nsw i32 %i.mt, %.16674.us.i.i.prol  ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter306
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !146

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa259.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.mu, %scalar.ph.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %.16674.us.i.i.unr = phi i32 [ %.16674.us.i.i.ph, %scalar.ph.preheader ], [ %i.mu, %scalar.ph.prol ]
  %i.mv = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.mw = icmp ugt i64 %i.mv, -4
  br i1 %i.mw, label %._crit_edge.us.i.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %invariant.op.us.i.i
  %invariant.op384 = add i32 2, %invariant.op.us.i.i
  %invariant.op385 = add i32 3, %invariant.op.us.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.i.3, %scalar.ph ] ; 5 uses
  %.16674.us.i.i = phi i32 [ %.16674.us.i.i.unr, %scalar.ph.preheader.new ], [ %i.nu, %scalar.ph ]
  %i.mx = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.reass.us.i.i = add i32 %invariant.op.us.i.i, %i.mx
  %i.my = sext i32 %.reass.us.i.i to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !100
  %i.nc = add nsw i32 %i.nb, %.16674.us.i.i
  %i.nd = trunc i64 %indvars.iv.i.i to i32
  %.reass.us.i.i.1.reass = add i32 %i.nd, %invariant.op
  %i.ne = sext i32 %.reass.us.i.i.1.reass to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !100
  %i.ni = add nsw i32 %i.nh, %i.nc
  %i.nj = trunc i64 %indvars.iv.i.i to i32
  %.reass.us.i.i.2.reass = add i32 %i.nj, %invariant.op384
  %i.nk = sext i32 %.reass.us.i.i.2.reass to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !100
  %i.no = add nsw i32 %i.nn, %i.ni
  %i.np = trunc i64 %indvars.iv.i.i to i32
  %.reass.us.i.i.3.reass = add i32 %i.np, %invariant.op385
  %i.nq = sext i32 %.reass.us.i.i.3.reass to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !100
  %i.nu = add nsw i32 %i.nt, %i.no                ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.us.i.i, label %scalar.ph, !llvm.loop !147

._crit_edge.us.i.i:                               ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %.lcssa259 = phi i32 [ %.lcssa259.unr, %scalar.ph.prol.loopexit ], [ %i.nu, %scalar.ph ]
  %i.nv = add nsw i32 %.lcssa259, 31
  %i.nw = and i32 %i.nv, -32                      ; 3 uses
  %i.nx = icmp ule i32 %i.nw, %.pre87.i.i
  %i.ny = add nuw nsw i32 %.05377.us.i.i, 1       ; 2 uses
  %i.nz = icmp slt i32 %i.ny, %i.li
  %or.cond.i.i = select i1 %i.nx, i1 %i.nz, i1 false
  br i1 %or.cond.i.i, label %.preheader.us.i.i, label %._crit_edge78.i.i, !llvm.loop !148

._crit_edge78.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.lr.ph.i.i, %bb.w
  %.267.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ 0, %bb.w ], [ %i.nw, %._crit_edge.us.i.i ]
  %i.oa = icmp ult i32 %.267.i.i, %.pre87.i.i
  br i1 %i.oa, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %._crit_edge78.i.i
  %i.ob = icmp eq i32 %.054.i.i, 1
  br i1 %i.ob, label %dnxhd_find_qscale.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.oc = add nsw i32 %.054.i.i, -1
  %i.od = icmp eq i32 %.057.i.i.ph, %i.oc
  br i1 %i.od, label %.loopexit255, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.oe = tail call i32 @llvm.smin.i32(i32 %.054.i.i, i32 %.055.i.i)
  %i.of = add nsw i32 %.054.i.i, %.057.i.i.ph
  %i.og = ashr i32 %i.of, 1
  %i.oh = sub nsw i32 %.054.i.i, %.059.i.i
  %.160.i.i = add nuw nsw i32 %.059.i.i, %i.lc
  %.1.i.i = select i1 %.not73.i.i, i32 %i.oh, i32 %i.og
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %.1.i.i, i32 1)
  br label %bb.w

bb.aa:                                            ; preds = %._crit_edge78.i.i
  %i.oi = add nsw i32 %.054.i.i, 1
  %i.oj = icmp eq i32 %.055.i.i, %i.oi
  br i1 %i.oj, label %.loopexit255, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ok = tail call i32 @llvm.smax.i32(i32 %.054.i.i, i32 %.057.i.i.ph)
  %.not.i.i = icmp eq i32 %.055.i.i, 2147483647   ; 2 uses
  %i.ol = add nsw i32 %.054.i.i, %.055.i.i
  %i.om = ashr i32 %i.ol, 1
  %i.on = add nsw i32 %.054.i.i, %.062.i.i
  %i.oo = zext i1 %.not.i.i to i32
  %.163.i.i = add nsw i32 %.062.i.i, %i.oo
  %.2.i.i = select i1 %.not.i.i, i32 %i.on, i32 %i.om ; 2 uses
  %i.op = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 440
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !89
  %.not72.i.i = icmp slt i32 %.2.i.i, %i.or
  br i1 %.not72.i.i, label %.outer253, label %dnxhd_encode_rdo.exit

.loopexit255:                                     ; preds = %bb.aa, %bb.y
  %.4.i.i = phi i32 [ %.057.i.i.ph, %bb.y ], [ %.054.i.i, %bb.aa ]
  store i32 %.4.i.i, ptr %i.bq, align 4, !tbaa !96
  br label %dnxhd_find_qscale.exit.i

dnxhd_find_qscale.exit.i:                         ; preds = %bb.x, %.loopexit255
  %.not.i78 = phi i1 [ true, %.loopexit255 ], [ false, %bb.x ]
  br i1 %i.lj, label %.preheader.lr.ph.i82, label %._crit_edge78.i

.preheader.lr.ph.i82:                             ; preds = %dnxhd_find_qscale.exit.i
  %i.os = load i32, ptr %i.bs, align 4, !tbaa !75 ; 2 uses
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %.preheader.i84, label %.preheader.lr.ph.split.us.i83

.preheader.lr.ph.split.us.i83:                    ; preds = %.preheader.lr.ph.i82
  %i.ou = mul i32 %i.li, 31
  br label %._crit_edge78.i

.preheader.i84:                                   ; preds = %.preheader.lr.ph.i82, %._crit_edge.i85
  %i.ov = phi i32 [ %i.oy, %._crit_edge.i85 ], [ %i.li, %.preheader.lr.ph.i82 ]
  %i.ow = phi i32 [ %i.oz, %._crit_edge.i85 ], [ %i.os, %.preheader.lr.ph.i82 ] ; 3 uses
  %.06077.i = phi i32 [ %i.pa, %._crit_edge.i85 ], [ 0, %.preheader.lr.ph.i82 ] ; 2 uses
  %.06276.i = phi i32 [ %i.pb, %._crit_edge.i85 ], [ 0, %.preheader.lr.ph.i82 ] ; 2 uses
  %i.ox = icmp sgt i32 %i.ow, 0
  br i1 %i.ox, label %.lr.ph.i86, label %._crit_edge.i85

._crit_edge78.i:                                  ; preds = %._crit_edge.i85, %.preheader.lr.ph.split.us.i83, %dnxhd_find_qscale.exit.i
  %.060.lcssa.i = phi i32 [ 0, %dnxhd_find_qscale.exit.i ], [ %i.ou, %.preheader.lr.ph.split.us.i83 ], [ %i.pa, %._crit_edge.i85 ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.li, %dnxhd_find_qscale.exit.i ], [ %i.li, %.preheader.lr.ph.split.us.i83 ], [ %i.oy, %._crit_edge.i85 ]
  br i1 %.not.i78, label %bb.ac, label %.loopexit

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i86
  %.pre.i87 = load i32, ptr %i.br, align 8, !tbaa !74
  br label %._crit_edge.i85

._crit_edge.i85:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i84
  %i.oy = phi i32 [ %i.ov, %.preheader.i84 ], [ %.pre.i87, %._crit_edge.loopexit.i ] ; 3 uses
  %i.oz = phi i32 [ %i.ow, %.preheader.i84 ], [ %i.px, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.06077.i, %.preheader.i84 ], [ %i.pv, %._crit_edge.loopexit.i ]
  %i.pa = add nsw i32 %.1.lcssa.i, 31             ; 2 uses
  %i.pb = add nuw nsw i32 %.06276.i, 1            ; 2 uses
  %i.pc = icmp slt i32 %i.pb, %i.oy
  br i1 %i.pc, label %.preheader.i84, label %._crit_edge78.i, !llvm.loop !149

.lr.ph.i86:                                       ; preds = %.preheader.i84, %.lr.ph.i86
  %i.pd = phi i32 [ %i.px, %.lr.ph.i86 ], [ %i.ow, %.preheader.i84 ]
  %.175.i = phi i32 [ %i.pv, %.lr.ph.i86 ], [ %.06077.i, %.preheader.i84 ]
  %.06174.i = phi i32 [ %i.pw, %.lr.ph.i86 ], [ 0, %.preheader.i84 ] ; 2 uses
  %i.pe = mul nuw nsw i32 %i.pd, %.06276.i
  %i.pf = add nsw i32 %.06174.i, %i.pe            ; 2 uses
  %i.pg = load i32, ptr %i.bq, align 4, !tbaa !96 ; 2 uses
end_hunk_0
