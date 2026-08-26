Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3enc_fixed?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@encode_frame:bb.a
  %i.jw = shl i32 %.0.i.i.i, 9
  %i.jx = tail call i32 @llvm.umin.i32(i32 %i.jw, i32 16777215)
  br label %calc_cpl_coord.exit.i

calc_cpl_coord.exit.i:                            ; preds = %ff_sqrt.exit.i.i, %bb.p
  %.0.i324.i = phi i32 [ %i.jx, %ff_sqrt.exit.i.i ], [ 1048576, %bb.p ]
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv544.i
  store i32 %.0.i324.i, ptr %i.jy, align 4, !tbaa !59
  %indvars.iv.next545.i = add nuw nsw i64 %indvars.iv544.i, 1 ; 2 uses
  %exitcond548.not.i = icmp eq i64 %indvars.iv.next545.i, %wide.trip.count547.i
  br i1 %exitcond548.not.i, label %.loopexit347.i, label %bb.p, !llvm.loop !87

.loopexit347.i:                                   ; preds = %calc_cpl_coord.exit.i, %.preheader346.i, %bb.o
  %indvars.iv.next550.i = add nuw nsw i64 %indvars.iv549.i, 1 ; 2 uses
  %exitcond553.not.i = icmp eq i64 %indvars.iv.next550.i, %wide.trip.count552.i
  br i1 %exitcond553.not.i, label %.loopexit349.i, label %bb.o, !llvm.loop !88

.loopexit349.i:                                   ; preds = %.loopexit347.i, %.preheader348.i, %bb.n
  %indvars.iv.next555.i = add nuw nsw i64 %indvars.iv554.i, 1 ; 2 uses
  %exitcond558.not.i = icmp eq i64 %indvars.iv.next555.i, %wide.trip.count557.i
  br i1 %exitcond558.not.i, label %.preheader345.i, label %bb.n, !llvm.loop !89

.preheader340.i.a:                                ; preds = %.loopexit342.i, %.preheader350.i, %.lr.ph391.split.i
  %i.jz = phi i32 [ %i.du, %.preheader350.i ], [ %i.du, %.lr.ph391.split.i ], [ %i.mg, %.loopexit342.i ] ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 5116 ; 5 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !86 ; 2 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.preheader339.lr.ph.i, label %.preheader336.i

.preheader339.lr.ph.i:                            ; preds = %.preheader340.i.a
  %i.kd = icmp sgt i32 %i.jz, 0
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 5000
  br i1 %i.kd, label %.preheader339.preheader.i, label %apply_channel_coupling.exit

.preheader339.preheader.i:                        ; preds = %.preheader339.lr.ph.i
  %i.kg = zext nneg i32 %i.jz to i64
  %wide.trip.count585.i = zext nneg i32 %i.kb to i64
  br label %.preheader339.i

.preheader345.i:                                  ; preds = %.loopexit349.i, %.loopexit342.i
  %indvars.iv570.i = phi i64 [ %indvars.iv.next571.i, %.loopexit342.i ], [ 0, %.loopexit349.i ] ; 4 uses
  %i.kh = getelementptr inbounds nuw [648 x i8], ptr %i.gx, i64 %indvars.iv570.i ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 592 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ki, i8 0, i64 7, i1 false)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 576
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !60
  %.not308.i.a = icmp eq i32 %i.kk, 0
  br i1 %.not308.i.a, label %.loopexit342.i, label %bb.aa

bb.aa:                                            ; preds = %.preheader345.i
  %.not307.i = icmp eq i64 %indvars.iv570.i, 0
  br i1 %.not307.i, label %._crit_edge607.i, label %bb.ab

._crit_edge607.i:                                 ; preds = %bb.aa
  %.pre608.i = load i32, ptr %i.gy, align 8, !tbaa !62
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kl = getelementptr i8, ptr %i.kh, i64 -72
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !60
  %.not309.i.a = icmp eq i32 %i.km, 0
  %.pre609.i = load i32, ptr %i.gy, align 8, !tbaa !62 ; 3 uses
  br i1 %.not309.i.a, label %bb.ac, label %.preheader343.i

.preheader343.i:                                  ; preds = %bb.ab
  %.not310426.i.a = icmp slt i32 %.pre609.i, 1
  br i1 %.not310426.i.a, label %.loopexit342.i, label %.lr.ph428.i

.lr.ph428.i:                                      ; preds = %.preheader343.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 580
  %i.ko = getelementptr i8, ptr %i.kh, i64 -68
  %i.kp = getelementptr [448 x i8], ptr %i.b, i64 %indvars.iv570.i ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 -448
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %._crit_edge607.i
  %i.kr = phi i32 [ %.pre608.i, %._crit_edge607.i ], [ %.pre609.i, %bb.ab ]
  %.not313429.i = icmp slt i32 %i.kr, 1
  br i1 %.not313429.i, label %.loopexit342.i, label %.lr.ph432.i

.lr.ph432.i:                                      ; preds = %bb.ac, %.lr.ph432.i
  %indvars.iv567.i.a = phi i64 [ %indvars.iv.next568.i.a, %.lr.ph432.i ], [ 1, %bb.ac ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ki, i64 %indvars.iv567.i.a
  store i8 1, ptr %i.ks, align 1, !tbaa !43
  %indvars.iv.next568.i.a = add nuw nsw i64 %indvars.iv567.i.a, 1
  %i.kt = load i32, ptr %i.gy, align 8, !tbaa !62
  %i.ku = sext i32 %i.kt to i64
  %.not313.not.i = icmp slt i64 %indvars.iv567.i.a, %i.ku
  br i1 %.not313.not.i, label %.lr.ph432.i, label %.loopexit342.i, !llvm.loop !90

bb.ad:                                            ; preds = %bb.af, %.lr.ph428.i
  %i.kv = phi i32 [ %.pre609.i, %.lr.ph428.i ], [ %i.me, %bb.af ] ; 2 uses
  %indvars.iv564.i = phi i64 [ 1, %.lr.ph428.i ], [ %indvars.iv.next565.i.a, %bb.af ] ; 7 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 %indvars.iv564.i
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !43
  %.not311.i = icmp eq i8 %i.kx, 0
  br i1 %.not311.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ko, i64 %indvars.iv564.i
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !43
  %.not312.i = icmp eq i8 %i.kz, 0
  br i1 %.not312.i, label %.sink.split.i, label %.preheader341.i

.preheader341.i:                                  ; preds = %bb.ae
  %i.la = load i32, ptr %i.gz, align 4, !tbaa !86 ; 4 uses
  %i.lb = icmp sgt i32 %i.la, 0
  br i1 %i.lb, label %.lr.ph422.i, label %._crit_edge423.i

.lr.ph422.i:                                      ; preds = %.preheader341.i
  %i.lc = getelementptr inbounds nuw [64 x i8], ptr %i.kq, i64 %indvars.iv564.i ; 2 uses
  %i.ld = getelementptr inbounds nuw [64 x i8], ptr %i.kp, i64 %indvars.iv564.i ; 2 uses
  %wide.trip.count562.i = zext nneg i32 %i.la to i64 ; 3 uses
  %min.iters.check91 = icmp ult i32 %i.la, 4
  br i1 %min.iters.check91, label %scalar.ph90.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph422.i
  %n.vec93 = and i64 %wide.trip.count562.i, 2147483644 ; 3 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next101, %vector.body94 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph92 ], [ %i.lo, %vector.body94 ]
  %vec.phi96 = phi <2 x i64> [ zeroinitializer, %vector.ph92 ], [ %i.lp, %vector.body94 ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index95 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %wide.load97 = load <2 x i32>, ptr %i.le, align 16, !tbaa !59
  %wide.load98 = load <2 x i32>, ptr %i.lf, align 8, !tbaa !59
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %index95 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %wide.load99 = load <2 x i32>, ptr %i.lg, align 16, !tbaa !59
  %wide.load100 = load <2 x i32>, ptr %i.lh, align 8, !tbaa !59
  %i.li = sub nsw <2 x i32> %wide.load97, %wide.load99
  %i.lj = sub nsw <2 x i32> %wide.load98, %wide.load100
  %i.lk = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.li, i1 true)
  %i.ll = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.lj, i1 true)
  %i.lm = zext nneg <2 x i32> %i.lk to <2 x i64>
  %i.ln = zext nneg <2 x i32> %i.ll to <2 x i64>
  %i.lo = add <2 x i64> %vec.phi, %i.lm           ; 2 uses
  %i.lp = add <2 x i64> %vec.phi96, %i.ln         ; 2 uses
  %index.next101 = add nuw i64 %index95, 4        ; 2 uses
  %i.lq = icmp eq i64 %index.next101, %n.vec93
  br i1 %i.lq, label %middle.block102, label %vector.body94, !llvm.loop !91

middle.block102:                                  ; preds = %vector.body94
  %bin.rdx = add <2 x i64> %i.lp, %i.lo
  %i.lr = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n103 = icmp eq i64 %n.vec93, %wide.trip.count562.i
  br i1 %cmp.n103, label %._crit_edge423.i, label %scalar.ph90.preheader

scalar.ph90.preheader:                            ; preds = %.lr.ph422.i, %middle.block102
  %indvars.iv559.i.ph = phi i64 [ 0, %.lr.ph422.i ], [ %n.vec93, %middle.block102 ]
  %.0294420.i.ph = phi i64 [ 0, %.lr.ph422.i ], [ %i.lr, %middle.block102 ]
  br label %scalar.ph90

scalar.ph90:                                      ; preds = %scalar.ph90.preheader, %scalar.ph90
  %indvars.iv559.i = phi i64 [ %indvars.iv.next560.i, %scalar.ph90 ], [ %indvars.iv559.i.ph, %scalar.ph90.preheader ] ; 3 uses
  %.0294420.i = phi i64 [ %i.lz, %scalar.ph90 ], [ %.0294420.i.ph, %scalar.ph90.preheader ]
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv559.i
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !59
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv559.i
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !59
  %i.lw = sub nsw i32 %i.lt, %i.lv
  %i.lx = tail call i32 @llvm.abs.i32(i32 %i.lw, i1 true)
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = add nuw nsw i64 %.0294420.i, %i.ly      ; 2 uses
  %indvars.iv.next560.i = add nuw nsw i64 %indvars.iv559.i, 1 ; 2 uses
  %exitcond563.not.i = icmp eq i64 %indvars.iv.next560.i, %wide.trip.count562.i
  br i1 %exitcond563.not.i, label %._crit_edge423.i, label %scalar.ph90, !llvm.loop !92

._crit_edge423.i:                                 ; preds = %scalar.ph90, %middle.block102, %.preheader341.i
  %.0294.lcssa.i = phi i64 [ 0, %.preheader341.i ], [ %i.lr, %middle.block102 ], [ %i.lz, %scalar.ph90 ]
  %i.ma = sext i32 %i.la to i64
  %i.mb = sdiv i64 %.0294.lcssa.i, %i.ma
  %i.mc = icmp sgt i64 %i.mb, 503317
  br i1 %i.mc, label %.sink.split.i, label %bb.af

.sink.split.i:                                    ; preds = %._crit_edge423.i, %bb.ae
  %i.md = getelementptr inbounds nuw i8, ptr %i.ki, i64 %indvars.iv564.i
  store i8 1, ptr %i.md, align 1, !tbaa !43
  %.pre = load i32, ptr %i.gy, align 8, !tbaa !62
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i, %._crit_edge423.i, %bb.ad
  %i.me = phi i32 [ %.pre, %.sink.split.i ], [ %i.kv, %._crit_edge423.i ], [ %i.kv, %bb.ad ] ; 2 uses
  %indvars.iv.next565.i.a = add nuw nsw i64 %indvars.iv564.i, 1
  %i.mf = sext i32 %i.me to i64
  %.not310.not.i = icmp slt i64 %indvars.iv564.i, %i.mf
  br i1 %.not310.not.i, label %bb.ad, label %.loopexit342.i, !llvm.loop !93

.loopexit342.i:                                   ; preds = %bb.af, %.lr.ph432.i, %bb.ac, %.preheader343.i, %.preheader345.i
  %indvars.iv.next571.i = add nuw nsw i64 %indvars.iv570.i, 1 ; 2 uses
  %i.mg = load i32, ptr %i.az, align 4, !tbaa !52 ; 2 uses
  %i.mh = sext i32 %i.mg to i64
  %i.mi = icmp slt i64 %indvars.iv.next571.i, %i.mh
  br i1 %i.mi, label %.preheader345.i, label %.preheader340.i.a, !llvm.loop !94

.preheader339.i:                                  ; preds = %._crit_edge459.i, %.preheader339.preheader.i
  %indvars.iv582.i = phi i64 [ 0, %.preheader339.preheader.i ], [ %indvars.iv.next583.i, %._crit_edge459.i ] ; 5 uses
  %.0288463.i = phi i32 [ undef, %.preheader339.preheader.i ], [ %.5293.i, %._crit_edge459.i ]
  %invariant.gep461.i = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv582.i
  %invariant.gep643.i = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv582.i
  br label %bb.ag

.preheader336.i:                                  ; preds = %._crit_edge459.i, %.preheader340.i.a
  %i.mj = icmp sgt i32 %i.jz, 0
  br i1 %i.mj, label %.lr.ph484.i, label %apply_channel_coupling.exit

.lr.ph484.i:                                      ; preds = %.preheader336.i
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 5000 ; 3 uses
  br label %bb.ay

bb.ag:                                            ; preds = %.loopexit338.i, %.preheader339.i
  %.4457.i = phi i32 [ 0, %.preheader339.i ], [ %.5.i, %.loopexit338.i ] ; 3 uses
  %.1289456.i = phi i32 [ %.0288463.i, %.preheader339.i ], [ %.5293.i, %.loopexit338.i ] ; 4 uses
  %i.mn = sext i32 %.4457.i to i64                ; 3 uses
  %i.mo = getelementptr inbounds [648 x i8], ptr %i.ke, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 576
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !60
  %.not302.i.a = icmp eq i32 %i.mq, 0
  br i1 %.not302.i.a, label %bb.ah, label %.preheader337.i

.preheader337.i:                                  ; preds = %bb.ag
  %i.mr = load i32, ptr %i.kf, align 8, !tbaa !62 ; 2 uses
  %.not303449.i = icmp slt i32 %i.mr, 1
  br i1 %.not303449.i, label %.loopexit338.i, label %.lr.ph452.i

.lr.ph452.i:                                      ; preds = %.preheader337.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 580
  %gep644.i = getelementptr [896 x i8], ptr %invariant.gep643.i, i64 %i.mn ; 2 uses
  %.3291436.i = add nsw i32 %.4457.i, 1           ; 3 uses
  %i.mt = icmp slt i32 %.3291436.i, %i.jz
  %gep462.i = getelementptr [448 x i8], ptr %invariant.gep461.i, i64 %i.mn
  %i.mu = sext i32 %.3291436.i to i64
  %i.mv = add nuw i32 %i.mr, 1
  %wide.trip.count580.i = zext i32 %i.mv to i64
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.mw = add nsw i32 %.4457.i, 1
  br label %.loopexit338.i, !llvm.loop !95

bb.ai:                                            ; preds = %bb.ax, %.lr.ph452.i
  %indvars.iv577.i = phi i64 [ 1, %.lr.ph452.i ], [ %indvars.iv.next578.i, %bb.ax ] ; 6 uses
  %.2290450.i = phi i32 [ %.1289456.i, %.lr.ph452.i ], [ %.4292.i, %bb.ax ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 %indvars.iv577.i
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !43
  %.not304.i = icmp eq i8 %i.my, 0
  br i1 %.not304.i, label %bb.ax, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mz = load i64, ptr %gep644.i, align 8, !tbaa !80 ; 2 uses
  %gep.i8 = getelementptr inbounds nuw [128 x i8], ptr %gep644.i, i64 %indvars.iv577.i
  %i.na = load i64, ptr %gep.i8, align 8, !tbaa !80 ; 2 uses
  br i1 %i.mt, label %.lr.ph441.i, label %.critedge.i

.lr.ph441.i:                                      ; preds = %bb.aj, %bb.am
  %indvars.iv573.i = phi i64 [ %indvars.iv.next574.i, %bb.am ], [ %i.mu, %bb.aj ] ; 4 uses
  %.0282438.i = phi i64 [ %.1283.i, %bb.am ], [ %i.mz, %bb.aj ] ; 3 uses
  %.0284437.i = phi i64 [ %.1285.i, %bb.am ], [ %i.na, %bb.aj ] ; 3 uses
  %i.nb = getelementptr inbounds [648 x i8], ptr %i.ke, i64 %indvars.iv573.i ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 592
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv577.i
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !43
  %.not305.i = icmp eq i8 %i.ne, 0
  br i1 %.not305.i, label %bb.ak, label %.critedge.loopexit.split.loop.exit639.i

bb.ak:                                            ; preds = %.lr.ph441.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 576
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !60
  %.not306.i = icmp eq i32 %i.ng, 0
  br i1 %.not306.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nh = getelementptr inbounds [896 x i8], ptr %i.c, i64 %indvars.iv573.i ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv582.i
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !80
  %i.nk = add nsw i64 %i.nj, %.0282438.i
  %i.nl = getelementptr inbounds nuw [128 x i8], ptr %i.nh, i64 %indvars.iv577.i
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv582.i
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !80
  %i.no = add nsw i64 %i.nn, %.0284437.i
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1285.i = phi i64 [ %i.no, %bb.al ], [ %.0284437.i, %bb.ak ] ; 2 uses
  %.1283.i = phi i64 [ %i.nk, %bb.al ], [ %.0282438.i, %bb.ak ] ; 2 uses
  %indvars.iv.next574.i = add nsw i64 %indvars.iv573.i, 1 ; 2 uses
  %exitcond576.not.i = icmp eq i64 %indvars.iv.next574.i, %i.kg
  br i1 %exitcond576.not.i, label %.critedge.i, label %.lr.ph441.i, !llvm.loop !96

.critedge.loopexit.split.loop.exit639.i:          ; preds = %.lr.ph441.i
  %i.np = trunc nsw i64 %indvars.iv573.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.am, %.critedge.loopexit.split.loop.exit639.i, %bb.aj
  %.0284.lcssa.i = phi i64 [ %i.na, %bb.aj ], [ %.0284437.i, %.critedge.loopexit.split.loop.exit639.i ], [ %.1285.i, %bb.am ]
  %.0282.lcssa.i = phi i64 [ %i.mz, %bb.aj ], [ %.0282438.i, %.critedge.loopexit.split.loop.exit639.i ], [ %.1283.i, %bb.am ] ; 2 uses
  %.3291.lcssa.i = phi i32 [ %.3291436.i, %bb.aj ], [ %i.np, %.critedge.loopexit.split.loop.exit639.i ], [ %i.jz, %bb.am ]
  %i.nq = icmp slt i64 %.0282.lcssa.i, 16777216
  br i1 %i.nq, label %calc_cpl_coord.exit334.i, label %bb.an

bb.an:                                            ; preds = %.critedge.i
  %i.nr = lshr i64 %.0282.lcssa.i, 24
  %i.ns = sdiv i64 %.0284.lcssa.i, %i.nr          ; 6 uses
  %i.nt = tail call i64 @llvm.umin.i64(i64 %i.ns, i64 1073741824) ; 5 uses
  %i.nu = trunc nuw nsw i64 %i.nt to i32          ; 3 uses
  %i.nv = icmp ult i64 %i.ns, 255
  br i1 %i.nv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.nw = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.nt
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !43
  %i.nz = zext i8 %i.ny to i32
  %i.oa = add nsw i32 %i.nz, -1
  %i.ob = ashr i32 %i.oa, 4
  br label %ff_sqrt.exit.i331.i

bb.ap:                                            ; preds = %bb.an
  %i.oc = icmp ult i64 %i.ns, 4096
  br i1 %i.oc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.od = lshr i64 %i.nt, 4
  %i.oe = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !43
  %i.og = lshr i8 %i.of, 2
  %i.oh = zext nneg i8 %i.og to i32
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %i.oi = icmp ult i64 %i.ns, 16384
  br i1 %i.oi, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.oj = lshr i64 %i.nt, 6
  %i.ok = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !43
  %i.om = lshr i8 %i.ol, 1
  %i.on = zext nneg i8 %i.om to i32
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.oo = icmp ult i64 %i.ns, 65536
  br i1 %i.oo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.op = lshr i64 %i.nt, 8
  %i.oq = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !43
  %i.os = zext i8 %i.or to i32
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %.not.i.i.i325.i = icmp ult i64 %i.ns, 16777216 ; 2 uses
  %spec.select.i.v.i.i326.i = select i1 %.not.i.i.i325.i, i32 16, i32 24
  %spec.select.i.i.i327.i = lshr i32 %i.nu, %spec.select.i.v.i.i326.i
  %spec.select7.i.i.i328.i = select i1 %.not.i.i.i325.i, i32 0, i32 8
  %i.ot = zext nneg i32 %spec.select.i.i.i327.i to i64
  %i.ou = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !43
  %i.ow = zext i8 %i.ov to i32
  %i.ox = add nuw nsw i32 %spec.select7.i.i.i328.i, %i.ow
  %i.oy = lshr i32 %i.ox, 1                       ; 3 uses
  %i.oz = add nuw nsw i32 %i.oy, 2
  %i.pa = lshr i32 %i.nu, %i.oz                   ; 2 uses
  %i.pb = add nuw nsw i32 %i.oy, 8
  %i.pc = lshr i32 %i.pa, %i.pb
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !43  ; 2 uses
  %i.pg = zext i8 %i.pf to i32
  %i.ph = zext nneg i32 %i.pa to i64
  %i.pi = zext i8 %i.pf to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !59
  %i.pl = zext i32 %i.pk to i64
  %i.pm = mul nuw nsw i64 %i.ph, %i.pl
  %i.pn = lshr i64 %i.pm, 32
  %i.po = trunc nuw nsw i64 %i.pn to i32
  %i.pp = shl i32 %i.pg, %i.oy
  %i.pq = add i32 %i.pp, %i.po
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.as, %bb.aq
  %.022.i.i329.i = phi i32 [ %i.oh, %bb.aq ], [ %i.on, %bb.as ], [ %i.os, %bb.au ], [ %i.pq, %bb.av ] ; 3 uses
  %i.pr = mul i32 %.022.i.i329.i, %.022.i.i329.i
  %i.ps = icmp ugt i32 %i.pr, %i.nu
  %.neg.i.i330.i = sext i1 %i.ps to i32
  %i.pt = add i32 %.022.i.i329.i, %.neg.i.i330.i
  br label %ff_sqrt.exit.i331.i

ff_sqrt.exit.i331.i:                              ; preds = %bb.aw, %bb.ao
  %.0.i.i332.i = phi i32 [ %i.ob, %bb.ao ], [ %i.pt, %bb.aw ]
  %i.pu = shl i32 %.0.i.i332.i, 9
  %i.pv = tail call i32 @llvm.umin.i32(i32 %i.pu, i32 16777215)
  br label %calc_cpl_coord.exit334.i

calc_cpl_coord.exit334.i:                         ; preds = %ff_sqrt.exit.i331.i, %.critedge.i
  %.0.i333.i = phi i32 [ %i.pv, %ff_sqrt.exit.i331.i ], [ 1048576, %.critedge.i ]
  %gep455.i = getelementptr inbounds nuw [64 x i8], ptr %gep462.i, i64 %indvars.iv577.i
  store i32 %.0.i333.i, ptr %gep455.i, align 4, !tbaa !59
  br label %bb.ax

bb.ax:                                            ; preds = %calc_cpl_coord.exit334.i, %bb.ai
  %.4292.i = phi i32 [ %.3291.lcssa.i, %calc_cpl_coord.exit334.i ], [ %.2290450.i, %bb.ai ] ; 3 uses
  %indvars.iv.next578.i = add nuw nsw i64 %indvars.iv577.i, 1 ; 2 uses
  %exitcond581.not.i = icmp eq i64 %indvars.iv.next578.i, %wide.trip.count580.i
  br i1 %exitcond581.not.i, label %.loopexit338.i, label %bb.ai, !llvm.loop !97

.loopexit338.i:                                   ; preds = %bb.ax, %bb.ah, %.preheader337.i
  %.5293.i = phi i32 [ %.1289456.i, %bb.ah ], [ %.1289456.i, %.preheader337.i ], [ %.4292.i, %bb.ax ] ; 2 uses
  %.5.i = phi i32 [ %i.mw, %bb.ah ], [ %.1289456.i, %.preheader337.i ], [ %.4292.i, %bb.ax ] ; 2 uses
  %i.pw = icmp slt i32 %.5.i, %i.jz
  br i1 %i.pw, label %bb.ag, label %._crit_edge459.i

._crit_edge459.i:                                 ; preds = %.loopexit338.i
  %indvars.iv.next583.i = add nuw nsw i64 %indvars.iv582.i, 1 ; 2 uses
  %exitcond586.not.i = icmp eq i64 %indvars.iv.next583.i, %wide.trip.count585.i
  br i1 %exitcond586.not.i, label %.preheader336.i, label %.preheader339.i, !llvm.loop !98

bb.ay:                                            ; preds = %.loopexit335.i, %.lr.ph484.i
  %indvars.iv601.i = phi i64 [ 0, %.lr.ph484.i ], [ %indvars.iv.next602.i, %.loopexit335.i ] ; 3 uses
  %i.px = getelementptr inbounds nuw [648 x i8], ptr %i.mk, i64 %indvars.iv601.i ; 6 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 576
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !60
  %.not.i = icmp eq i32 %i.pz, 0
  br i1 %.not.i, label %.loopexit335.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qa = load ptr, ptr %i.ml, align 8, !tbaa !99
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 448
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 456
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !41
  %i.qe = getelementptr inbounds nuw [448 x i8], ptr %i.b, i64 %indvars.iv601.i ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 64
  %i.qg = load i32, ptr %i.mm, align 8, !tbaa !62
  %i.qh = shl nsw i32 %i.qg, 4
  call void %i.qa(ptr noundef %i.qd, ptr noundef nonnull %i.qf, i32 noundef %i.qh) #9, !inline_history !100
  %i.qi = load i32, ptr %i.mm, align 8, !tbaa !62
  %.not300479.i = icmp slt i32 %i.qi, 1
  br i1 %.not300479.i, label %.loopexit335.i, label %.lr.ph482.i

.lr.ph482.i:                                      ; preds = %bb.az
  %i.qj = getelementptr inbounds nuw i8, ptr %i.px, i64 592
  %i.qk = getelementptr inbounds nuw i8, ptr %i.px, i64 599
  %i.ql = getelementptr inbounds nuw i8, ptr %i.px, i64 504
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.i, %.lr.ph482.i
  %indvars.iv598.i = phi i64 [ 1, %.lr.ph482.i ], [ %indvars.iv.next599.i, %.loopexit.i ] ; 7 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 %indvars.iv598.i
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !43
  %.not301.i = icmp eq i8 %i.qn, 0
  br i1 %.not301.i, label %.loopexit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %indvars.iv598.i ; 3 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !41 ; 3 uses
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !43
  %i.qr = zext i8 %i.qq to i32                    ; 5 uses
  %i.qs = load i32, ptr %i.ka, align 4, !tbaa !86 ; 4 uses
  %i.qt = icmp sgt i32 %i.qs, 1
  br i1 %i.qt, label %.lr.ph469.preheader.i, label %._crit_edge470.i

.lr.ph469.preheader.i:                            ; preds = %bb.bb
  %wide.trip.count590.i = zext nneg i32 %i.qs to i64 ; 2 uses
  %i.qu = add nsw i64 %wide.trip.count590.i, -1   ; 2 uses
  %min.iters.check106 = icmp ult i32 %i.qs, 9
  br i1 %min.iters.check106, label %.lr.ph469.i.preheader, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph469.preheader.i
  %n.vec108 = and i64 %i.qu, -8                   ; 3 uses
  %i.qv = or disjoint i64 %n.vec108, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.qr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next117, %vector.body109 ] ; 2 uses
  %vec.phi111 = phi <4 x i32> [ %broadcast.splat, %vector.ph107 ], [ %i.rd, %vector.body109 ]
  %vec.phi112 = phi <4 x i32> [ %broadcast.splat, %vector.ph107 ], [ %i.re, %vector.body109 ]
  %vec.phi113 = phi <4 x i32> [ %broadcast.splat, %vector.ph107 ], [ %i.rb, %vector.body109 ]
  %vec.phi114 = phi <4 x i32> [ %broadcast.splat, %vector.ph107 ], [ %i.rc, %vector.body109 ]
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qp, i64 %index110 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 1
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 5
  %wide.load115 = load <4 x i8>, ptr %i.qx, align 1, !tbaa !43
  %wide.load116 = load <4 x i8>, ptr %i.qy, align 1, !tbaa !43
  %i.qz = zext <4 x i8> %wide.load115 to <4 x i32> ; 2 uses
  %i.ra = zext <4 x i8> %wide.load116 to <4 x i32> ; 2 uses
  %i.rb = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi113, <4 x i32> %i.qz) ; 2 uses
  %i.rc = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi114, <4 x i32> %i.ra) ; 2 uses
  %i.rd = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi111, <4 x i32> %i.qz) ; 2 uses
  %i.re = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi112, <4 x i32> %i.ra) ; 2 uses
  %index.next117 = add nuw i64 %index110, 8       ; 2 uses
  %i.rf = icmp eq i64 %index.next117, %n.vec108
  br i1 %i.rf, label %middle.block118, label %vector.body109, !llvm.loop !101

middle.block118:                                  ; preds = %vector.body109
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.rd, <4 x i32> %i.re)
  %i.rg = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax119 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.rb, <4 x i32> %i.rc)
  %i.rh = call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax119) ; 2 uses
  %cmp.n120 = icmp eq i64 %i.qu, %n.vec108
  br i1 %cmp.n120, label %._crit_edge470.i, label %.lr.ph469.i.preheader

.lr.ph469.i.preheader:                            ; preds = %.lr.ph469.preheader.i, %middle.block118
  %indvars.iv587.i.ph = phi i64 [ 1, %.lr.ph469.preheader.i ], [ %i.qv, %middle.block118 ]
  %.0273467.i.ph = phi i32 [ %i.qr, %.lr.ph469.preheader.i ], [ %i.rg, %middle.block118 ]
  %.0274466.i.ph = phi i32 [ %i.qr, %.lr.ph469.preheader.i ], [ %i.rh, %middle.block118 ]
  br label %.lr.ph469.i

.lr.ph469.i:                                      ; preds = %.lr.ph469.i.preheader, %.lr.ph469.i
  %indvars.iv587.i = phi i64 [ %indvars.iv.next588.i, %.lr.ph469.i ], [ %indvars.iv587.i.ph, %.lr.ph469.i.preheader ] ; 2 uses
  %.0273467.i = phi i32 [ %i.rm, %.lr.ph469.i ], [ %.0273467.i.ph, %.lr.ph469.i.preheader ]
  %.0274466.i = phi i32 [ %i.rl, %.lr.ph469.i ], [ %.0274466.i.ph, %.lr.ph469.i.preheader ]
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qp, i64 %indvars.iv587.i
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !43
  %i.rk = zext i8 %i.rj to i32                    ; 2 uses
  %i.rl = call i32 @llvm.umin.i32(i32 %.0274466.i, i32 %i.rk) ; 2 uses
  %i.rm = call i32 @llvm.umax.i32(i32 %.0273467.i, i32 %i.rk) ; 2 uses
  %indvars.iv.next588.i = add nuw nsw i64 %indvars.iv587.i, 1 ; 2 uses
  %exitcond591.not.i = icmp eq i64 %indvars.iv.next588.i, %wide.trip.count590.i
  br i1 %exitcond591.not.i, label %._crit_edge470.i, label %.lr.ph469.i, !llvm.loop !102

._crit_edge470.i:                                 ; preds = %.lr.ph469.i, %middle.block118, %bb.bb
  %.0274.lcssa.i = phi i32 [ %i.qr, %bb.bb ], [ %i.rh, %middle.block118 ], [ %i.rl, %.lr.ph469.i ]
  %.0273.lcssa.i = phi i32 [ %i.qr, %bb.bb ], [ %i.rg, %middle.block118 ], [ %i.rm, %.lr.ph469.i ]
  %i.rn = add nsw i32 %.0273.lcssa.i, -13
  %i.ro = sdiv i32 %i.rn, 3
  %i.rp = call i32 @llvm.smax.i32(i32 %i.ro, i32 0) ; 2 uses
  %i.rq = mul nuw nsw i32 %i.rp, 3                ; 2 uses
  %i.rr = call i32 @llvm.usub.sat.i32(i32 %i.rq, i32 %.0274.lcssa.i)
  %i.rs = add nuw nsw i32 %i.rr, 2
  %i.rt = udiv i32 %i.rs, 3                       ; 2 uses
  %i.ru = sub nsw i32 %i.rp, %i.rt
  %.neg.i = mul nsw i32 %i.rt, -3
  %i.rv = add nsw i32 %.neg.i, %i.rq              ; 2 uses
  %i.rw = icmp sgt i32 %i.qs, 0
  br i1 %i.rw, label %.lr.ph474.i, label %._crit_edge475.i

.lr.ph474.i:                                      ; preds = %._crit_edge470.i, %.lr.ph474.i
  %indvars.iv592.i = phi i64 [ %indvars.iv.next593.i.a, %.lr.ph474.i ], [ 0, %._crit_edge470.i ] ; 2 uses
  %i.rx = load ptr, ptr %i.qo, align 8, !tbaa !41
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 %indvars.iv592.i ; 2 uses
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !43
  %i.sa = zext i8 %i.rz to i32
  %i.sb = sub nsw i32 %i.sa, %i.rv
  %i.sc = call i32 @llvm.smax.i32(i32 %i.sb, i32 0)
  %i.sd = call i32 @llvm.umin.i32(i32 %i.sc, i32 15)
  %i.se = trunc nuw nsw i32 %i.sd to i8
  store i8 %i.se, ptr %i.ry, align 1, !tbaa !43
  %indvars.iv.next593.i.a = add nuw nsw i64 %indvars.iv592.i, 1 ; 2 uses
  %i.sf = load i32, ptr %i.ka, align 4, !tbaa !86
  %i.sg = sext i32 %i.sf to i64
  %i.sh = icmp slt i64 %indvars.iv.next593.i.a, %i.sg
  br i1 %i.sh, label %.lr.ph474.i, label %._crit_edge475.i, !llvm.loop !103

._crit_edge475.i:                                 ; preds = %.lr.ph474.i, %._crit_edge470.i
  %i.si = trunc nsw i32 %i.ru to i8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qk, i64 %indvars.iv598.i
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !43
  %i.sk = load i32, ptr %i.ka, align 4, !tbaa !86
  %i.sl = icmp sgt i32 %i.sk, 0
  br i1 %i.sl, label %.lr.ph478.i, label %.loopexit.i

.lr.ph478.i:                                      ; preds = %._crit_edge475.i
  %i.sm = getelementptr inbounds nuw [64 x i8], ptr %i.qe, i64 %indvars.iv598.i
  %i.sn = add nsw i32 %i.rv, 5
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv598.i
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph478.i
  %indvars.iv595.i = phi i64 [ 0, %.lr.ph478.i ], [ %indvars.iv.next596.i.a, %bb.bc ] ; 4 uses
  %i.sp = load ptr, ptr %i.qo, align 8, !tbaa !41
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 %indvars.iv595.i
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !43  ; 2 uses
  %i.ss = zext i8 %i.sr to i32
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv595.i
  %i.su = load i32, ptr %i.st, align 4, !tbaa !59
  %i.sv = add nsw i32 %i.sn, %i.ss
  %i.sw = shl i32 %i.su, %i.sv                    ; 2 uses
  %i.sx = icmp eq i8 %i.sr, 15
  %i.sy = ashr i32 %i.sw, 25
  %i.sz = lshr i32 %i.sw, 24
  %i.ta = add nuw nsw i32 %i.sz, 240
  %.0.i = select i1 %i.sx, i32 %i.sy, i32 %i.ta
  %i.tb = trunc i32 %.0.i to i8
  %i.tc = load ptr, ptr %i.so, align 8, !tbaa !41
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 %indvars.iv595.i
  store i8 %i.tb, ptr %i.td, align 1, !tbaa !43
  %indvars.iv.next596.i.a = add nuw nsw i64 %indvars.iv595.i, 1 ; 2 uses
  %i.te = load i32, ptr %i.ka, align 4, !tbaa !86
  %i.tf = sext i32 %i.te to i64
  %i.tg = icmp slt i64 %indvars.iv.next596.i.a, %i.tf
  br i1 %i.tg, label %bb.bc, label %.loopexit.i, !llvm.loop !104

.loopexit.i:                                      ; preds = %bb.bc, %._crit_edge475.i, %bb.ba
  %indvars.iv.next599.i = add nuw nsw i64 %indvars.iv598.i, 1
  %i.th = load i32, ptr %i.mm, align 8, !tbaa !62
  %i.ti = sext i32 %i.th to i64
  %.not300.not.i = icmp slt i64 %indvars.iv598.i, %i.ti
  br i1 %.not300.not.i, label %bb.ba, label %.loopexit335.i, !llvm.loop !105

.loopexit335.i:                                   ; preds = %.loopexit.i, %bb.az, %bb.ay
  %indvars.iv.next602.i = add nuw nsw i64 %indvars.iv601.i, 1 ; 2 uses
  %i.tj = load i32, ptr %i.az, align 4, !tbaa !52
  %i.tk = sext i32 %i.tj to i64
  %i.tl = icmp slt i64 %indvars.iv.next602.i, %i.tk
  br i1 %i.tl, label %bb.ay, label %apply_channel_coupling.exit, !llvm.loop !106

apply_channel_coupling.exit:                      ; preds = %.loopexit335.i, %.preheader339.lr.ph.i, %.preheader336.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.bd

end_hunk_0
