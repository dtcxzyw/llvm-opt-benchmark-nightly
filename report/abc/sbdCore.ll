Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCore?download=true
inline.NumInlined: 748
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Sbd_ManExploreCut:Abc_Clock.exit
.lr.ph637.1:                                      ; preds = %._crit_edge638
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ko, ptr nonnull align 16 %i.b, i64 %i.ke, i1 false), !tbaa !8
  br label %._crit_edge638.1

._crit_edge638.1:                                 ; preds = %.lr.ph637.1, %._crit_edge638
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 216
  store i64 0, ptr %i.kp, align 8, !tbaa !310
  %indvars.iv.next801.1 = add nuw nsw i64 %indvars.iv800, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge642.loopexit.unr-lcssa, label %bb.as, !llvm.loop !315

._crit_edge642.loopexit.unr-lcssa:                ; preds = %._crit_edge638.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge642, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge642.loopexit.unr-lcssa, %.lr.ph641
  %indvars.iv800.epil.init = phi i64 [ 0, %.lr.ph641 ], [ %indvars.iv.next801.1, %._crit_edge642.loopexit.unr-lcssa ]
  %lcmp.mod1137 = trunc i32 %i.kb to i1
  call void @llvm.assume(i1 %lcmp.mod1137)
  %i.kq = getelementptr inbounds nuw [56 x i8], ptr %5, i64 %indvars.iv800.epil.init ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 112
  store i32 0, ptr %i.kr, align 8, !tbaa !305
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 116
  store i32 %.5443, ptr %i.ks, align 4, !tbaa !307
  br i1 %i.ju, label %.lr.ph637.epil, label %._crit_edge638.epil

.lr.ph637.epil:                                   ; preds = %.epil.preheader
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kt, ptr nonnull align 16 %i.b, i64 %i.ke, i1 false), !tbaa !8
  br label %._crit_edge638.epil

._crit_edge638.epil:                              ; preds = %.lr.ph637.epil, %.epil.preheader
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 160
  store i64 0, ptr %i.ku, align 8, !tbaa !310
  br label %._crit_edge642

._crit_edge642:                                   ; preds = %._crit_edge638.epil, %._crit_edge642.loopexit.unr-lcssa, %._crit_edge634
  %i.kv = add nsw i32 %i.kb, 2
  store i32 %i.kv, ptr %4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.kw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #33
  %i.kx = icmp slt i32 %i.kw, 0
  br i1 %i.kx, label %Abc_Clock.exit540, label %bb.at

bb.at:                                            ; preds = %._crit_edge642
  %i.ky = load i64, ptr %8, align 8, !tbaa !63
  %.neg567 = mul i64 %i.ky, -1000000
  %i.kz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !65
  %.neg566 = sdiv i64 %i.la, -1000
  %.neg568 = add i64 %.neg566, %.neg567
  br label %Abc_Clock.exit540

Abc_Clock.exit540:                                ; preds = %._crit_edge642, %bb.at
  %.0.i539.neg = phi i64 [ %.neg568, %bb.at ], [ 1, %._crit_edge642 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !73
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !80
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !91
  %i.lh = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !199
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !90
  %i.lm = load ptr, ptr %i.ef, align 8, !tbaa !93
  %i.ln = load i32, ptr %4, align 4, !tbaa !8
  %i.lo = call i32 @Sbd_ProblemSolve(ptr noundef %i.lc, ptr noundef %i.le, i32 noundef %1, ptr noundef %i.lg, ptr noundef %i.lh, ptr noundef %i.lj, ptr noundef %i.ll, ptr noundef %i.lm, i32 noundef %i.ln, ptr noundef nonnull %5) #33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.lp = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #33
  %i.lq = icmp slt i32 %i.lp, 0
  br i1 %i.lq, label %Abc_Clock.exit542, label %bb.au

bb.au:                                            ; preds = %Abc_Clock.exit540
  %i.lr = load i64, ptr %7, align 8, !tbaa !63
  %i.ls = mul nsw i64 %i.lr, 1000000
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !65
  %i.lv = sdiv i64 %i.lu, 1000
  %i.lw = add nsw i64 %i.lv, %i.ls
  br label %Abc_Clock.exit542

Abc_Clock.exit542:                                ; preds = %Abc_Clock.exit540, %bb.au
  %.0.i541 = phi i64 [ %i.lw, %bb.au ], [ -1, %Abc_Clock.exit540 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.lx = add i64 %.0.i541, %.0.i539.neg
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !316
  %i.ma = add nsw i64 %i.lx, %i.lz
  store i64 %i.ma, ptr %i.ly, align 8, !tbaa !316
  %.not483 = icmp eq i32 %i.lo, 0                 ; 2 uses
  br i1 %.not483, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %Abc_Clock.exit542
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !8
  %i.md = add nsw i32 %i.mc, 1
  store i32 %i.md, ptr %i.mb, align 8, !tbaa !8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %Abc_Clock.exit542
  %.not484643 = icmp eq i32 %.1409, 0
  br i1 %.not484643, label %._crit_edge649, label %.lr.ph648.preheader

.lr.ph648.preheader:                              ; preds = %bb.aw
  %i.me = sext i32 %.5443 to i64                  ; 3 uses
  %i.mf = sext i32 %.5454 to i64                  ; 3 uses
  %i.mg = call i32 @llvm.smax.i32(i32 %.0438.lcssa972, i32 %i.id)
  %i.mh = xor i32 %i.id, -1
  %i.mi = add i32 %i.mg, %i.mh                    ; 2 uses
  %i.mj = zext i32 %i.mi to i64
  %i.mk = add nuw nsw i64 %i.mj, 1                ; 2 uses
  %min.iters.check1033 = icmp ult i32 %i.mi, 7
  br i1 %min.iters.check1033, label %.lr.ph648.preheader1123, label %vector.ph1034

vector.ph1034:                                    ; preds = %.lr.ph648.preheader
  %n.vec1035 = and i64 %i.mk, 8589934584          ; 5 uses
  %i.ml = sub nsw i64 %i.mf, %n.vec1035           ; 2 uses
  %i.mm = add nsw i64 %n.vec1035, %i.me           ; 2 uses
  %i.mn = trunc i64 %n.vec1035 to i32
  %i.mo = sub i32 %.1409, %i.mn
  %invariant.gep1174 = getelementptr [4 x i8], ptr %i.a, i64 %i.mf
  %invariant.gep1176 = getelementptr [4 x i8], ptr %i.b, i64 %i.me
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1034
  %index1037 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1042, %vector.body1036 ] ; 3 uses
  %i.mp = xor i64 %index1037, -1
  %gep1175 = getelementptr [4 x i8], ptr %invariant.gep1174, i64 %i.mp ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %gep1175, i64 -12
  %i.mr = getelementptr inbounds i8, ptr %gep1175, i64 -28
  %wide.load1038 = load <4 x i32>, ptr %i.mq, align 4, !tbaa !8
  %wide.load1039 = load <4 x i32>, ptr %i.mr, align 4, !tbaa !8
  %reverse1040 = shufflevector <4 x i32> %wide.load1038, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1041 = shufflevector <4 x i32> %wide.load1039, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %gep1177 = getelementptr [4 x i8], ptr %invariant.gep1176, i64 %index1037 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %gep1177, i64 16
  store <4 x i32> %reverse1040, ptr %gep1177, align 4, !tbaa !8
  store <4 x i32> %reverse1041, ptr %i.ms, align 4, !tbaa !8
  %index.next1042 = add nuw i64 %index1037, 8     ; 2 uses
  %i.mt = icmp eq i64 %index.next1042, %n.vec1035
  br i1 %i.mt, label %middle.block1043, label %vector.body1036, !llvm.loop !317

middle.block1043:                                 ; preds = %vector.body1036
  %cmp.n1044 = icmp eq i64 %i.mk, %n.vec1035
  br i1 %cmp.n1044, label %._crit_edge649.loopexit, label %.lr.ph648.preheader1123

.lr.ph648.preheader1123:                          ; preds = %.lr.ph648.preheader, %middle.block1043
  %indvars.iv808.ph = phi i64 [ %i.mf, %.lr.ph648.preheader ], [ %i.ml, %middle.block1043 ]
  %indvars.iv806.ph = phi i64 [ %i.me, %.lr.ph648.preheader ], [ %i.mm, %middle.block1043 ]
  %.2410646.ph = phi i32 [ %.1409, %.lr.ph648.preheader ], [ %i.mo, %middle.block1043 ]
  br label %.lr.ph648

.lr.ph648:                                        ; preds = %.lr.ph648.preheader1123, %.lr.ph648
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph648 ], [ %indvars.iv808.ph, %.lr.ph648.preheader1123 ]
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %.lr.ph648 ], [ %indvars.iv806.ph, %.lr.ph648.preheader1123 ] ; 2 uses
  %.2410646 = phi i32 [ %i.mu, %.lr.ph648 ], [ %.2410646.ph, %.lr.ph648.preheader1123 ]
  %i.mu = add nsw i32 %.2410646, -1               ; 2 uses
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, -1 ; 3 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next809
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !8
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, 1 ; 2 uses
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv806
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !8
  %.not484 = icmp eq i32 %i.mu, 0
  br i1 %.not484, label %._crit_edge649.loopexit, label %.lr.ph648, !llvm.loop !318

._crit_edge649.loopexit:                          ; preds = %.lr.ph648, %middle.block1043
  %indvars.iv.next809.lcssa = phi i64 [ %i.ml, %middle.block1043 ], [ %indvars.iv.next809, %.lr.ph648 ]
  %indvars.iv.next807.lcssa = phi i64 [ %i.mm, %middle.block1043 ], [ %indvars.iv.next807, %.lr.ph648 ]
  %i.my = trunc nsw i64 %indvars.iv.next809.lcssa to i32
  %i.mz = trunc nsw i64 %indvars.iv.next807.lcssa to i32
  br label %._crit_edge649

._crit_edge649:                                   ; preds = %._crit_edge649.loopexit, %bb.aw
  %.6455.lcssa = phi i32 [ %.5454, %bb.aw ], [ %i.my, %._crit_edge649.loopexit ]
  %.6444.lcssa = phi i32 [ %.5443, %bb.aw ], [ %i.mz, %._crit_edge649.loopexit ]
  br i1 %.not483, label %._crit_edge649..thread552_crit_edge, label %.loopexit585

._crit_edge649..thread552_crit_edge:              ; preds = %._crit_edge649
  %.pre920 = load ptr, ptr %0, align 8, !tbaa !72
  br label %.thread552

.thread552:                                       ; preds = %._crit_edge649..thread552_crit_edge, %bb.ap
  %i.na = phi ptr [ %.pre920, %._crit_edge649..thread552_crit_edge ], [ %i.ei, %bb.ap ] ; 10 uses
  %.7445558 = phi i32 [ %.6444.lcssa, %._crit_edge649..thread552_crit_edge ], [ %.0438.lcssa972, %bb.ap ] ; 5 uses
  %.7456557 = phi i32 [ %.6455.lcssa, %._crit_edge649..thread552_crit_edge ], [ %.0449.lcssa971, %bb.ap ] ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !319
  %i.nd = icmp slt i32 %i.nc, 3
  br i1 %i.nd, label %.loopexit585, label %bb.ax

bb.ax:                                            ; preds = %.thread552
  %i.ne = load ptr, ptr %i.ef, align 8, !tbaa !93
  %i.nf = getelementptr i8, ptr %i.ne, i64 4      ; 2 uses
  %.val504 = load i32, ptr %i.nf, align 4, !tbaa !43
  %i.ng = load i32, ptr %i.na, align 4, !tbaa !78 ; 5 uses
  %i.nh = shl nsw i32 %i.ng, 1                    ; 5 uses
  %i.ni = add nsw i32 %i.nh, -1
  %i.nj = icmp slt i32 %.val504, %i.ni
  br i1 %i.nj, label %.loopexit585, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nk = add nsw i32 %i.ng, -2
  %.not486 = icmp sgt i32 %.7456557, %i.nk
  br i1 %.not486, label %.thread559, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nl = icmp sgt i32 %.7445558, %i.nh
  br i1 %i.nl, label %.preheader579.preheader, label %.loopexit580

.preheader579.preheader:                          ; preds = %bb.az
  %i.nm = sext i32 %.7445558 to i64               ; 3 uses
  %i.nn = sext i32 %.7456557 to i64               ; 3 uses
  %i.no = sub i32 %.7445558, %i.nh                ; 2 uses
  %i.np = xor i32 %i.nh, -1
  %i.nq = add i32 %.7445558, %i.np                ; 2 uses
  %i.nr = zext i32 %i.nq to i64
  %i.ns = add nuw nsw i64 %i.nr, 1                ; 2 uses
  %min.iters.check1049 = icmp ult i32 %i.nq, 7
  br i1 %min.iters.check1049, label %.preheader579.preheader1120, label %vector.ph1050

vector.ph1050:                                    ; preds = %.preheader579.preheader
  %n.vec1051 = and i64 %i.ns, 8589934584          ; 5 uses
  %i.nt = add nsw i64 %n.vec1051, %i.nn           ; 2 uses
  %i.nu = sub nsw i64 %i.nm, %n.vec1051           ; 2 uses
  %i.nv = trunc i64 %n.vec1051 to i32
  %invariant.gep1178 = getelementptr [4 x i8], ptr %i.b, i64 %i.nm
  %invariant.gep1180 = getelementptr [4 x i8], ptr %i.a, i64 %i.nn
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1050
  %index1053 = phi i64 [ 0, %vector.ph1050 ], [ %index.next1058, %vector.body1052 ] ; 3 uses
  %i.nw = xor i64 %index1053, -1
  %gep1179 = getelementptr [4 x i8], ptr %invariant.gep1178, i64 %i.nw ; 2 uses
  %i.nx = getelementptr inbounds i8, ptr %gep1179, i64 -12
  %i.ny = getelementptr inbounds i8, ptr %gep1179, i64 -28
  %wide.load1054 = load <4 x i32>, ptr %i.nx, align 4, !tbaa !8
  %wide.load1055 = load <4 x i32>, ptr %i.ny, align 4, !tbaa !8
  %reverse1056 = shufflevector <4 x i32> %wide.load1054, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1057 = shufflevector <4 x i32> %wide.load1055, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %gep1181 = getelementptr [4 x i8], ptr %invariant.gep1180, i64 %index1053 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %gep1181, i64 16
  store <4 x i32> %reverse1056, ptr %gep1181, align 4, !tbaa !8
  store <4 x i32> %reverse1057, ptr %i.nz, align 4, !tbaa !8
  %index.next1058 = add nuw i64 %index1053, 8     ; 2 uses
  %i.oa = icmp eq i64 %index.next1058, %n.vec1051
  br i1 %i.oa, label %middle.block1059, label %vector.body1052, !llvm.loop !320

middle.block1059:                                 ; preds = %vector.body1052
  %cmp.n1060 = icmp eq i64 %i.ns, %n.vec1051
  br i1 %cmp.n1060, label %.loopexit580.loopexit, label %.preheader579.preheader1120

.preheader579.preheader1120:                      ; preds = %.preheader579.preheader, %middle.block1059
  %indvars.iv816.ph = phi i64 [ %i.nn, %.preheader579.preheader ], [ %i.nt, %middle.block1059 ]
  %indvars.iv814.ph = phi i64 [ %i.nm, %.preheader579.preheader ], [ %i.nu, %middle.block1059 ]
  %.0654.ph = phi i32 [ 0, %.preheader579.preheader ], [ %i.nv, %middle.block1059 ]
  br label %.preheader579

.preheader579:                                    ; preds = %.preheader579.preheader1120, %.preheader579
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %.preheader579 ], [ %indvars.iv816.ph, %.preheader579.preheader1120 ] ; 2 uses
  %indvars.iv814 = phi i64 [ %indvars.iv.next815, %.preheader579 ], [ %indvars.iv814.ph, %.preheader579.preheader1120 ]
  %.0654 = phi i32 [ %i.oe, %.preheader579 ], [ %.0654.ph, %.preheader579.preheader1120 ]
  %indvars.iv.next815 = add nsw i64 %indvars.iv814, -1 ; 3 uses
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next815
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !8
  %indvars.iv.next817 = add nsw i64 %indvars.iv816, 1 ; 2 uses
  %i.od = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv816
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !8
  %i.oe = add nuw i32 %.0654, 1                   ; 2 uses
  %exitcond822.not = icmp eq i32 %i.oe, %i.no
  br i1 %exitcond822.not, label %.loopexit580.loopexit, label %.preheader579, !llvm.loop !321

.loopexit580.loopexit:                            ; preds = %.preheader579, %middle.block1059
  %indvars.iv.next815.lcssa = phi i64 [ %i.nu, %middle.block1059 ], [ %indvars.iv.next815, %.preheader579 ]
  %indvars.iv.next817.lcssa = phi i64 [ %i.nt, %middle.block1059 ], [ %indvars.iv.next817, %.preheader579 ]
  %i.of = trunc nsw i64 %indvars.iv.next817.lcssa to i32
  %i.og = trunc nsw i64 %indvars.iv.next815.lcssa to i32
  br label %.loopexit580

.loopexit580:                                     ; preds = %.loopexit580.loopexit, %bb.az
  %.9458 = phi i32 [ %.7456557, %bb.az ], [ %i.of, %.loopexit580.loopexit ] ; 7 uses
  %.9447 = phi i32 [ %.7445558, %bb.az ], [ %i.og, %.loopexit580.loopexit ] ; 9 uses
  %.1 = phi i32 [ 0, %bb.az ], [ %i.no, %.loopexit580.loopexit ] ; 5 uses
  store i32 1, ptr %5, align 8, !tbaa !305
  %i.oh = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.ng, ptr %i.oh, align 4, !tbaa !307
  %i.oi = icmp sgt i32 %.9458, 0
  br i1 %i.oi, label %.lr.ph657, label %.preheader578

.lr.ph657:                                        ; preds = %.loopexit580
  %i.oj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ok = zext nneg i32 %.9458 to i64
  %i.ol = shl nuw nsw i64 %i.ok, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.oj, ptr nonnull align 16 %i.a, i64 %i.ol, i1 false), !tbaa !8
  %.pre921 = load i32, ptr %i.na, align 4, !tbaa !78
  br label %.preheader578

.preheader578:                                    ; preds = %.lr.ph657, %.loopexit580
  %i.om = phi i32 [ %i.ng, %.loopexit580 ], [ %.pre921, %.lr.ph657 ] ; 2 uses
  %.9.lcssa = phi i32 [ 0, %.loopexit580 ], [ %.9458, %.lr.ph657 ] ; 2 uses
  %i.on = icmp slt i32 %.9.lcssa, %i.om
  br i1 %i.on, label %.lr.ph660, label %._crit_edge661

.lr.ph660:                                        ; preds = %.preheader578
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.op = zext nneg i32 %.9.lcssa to i64
  %invariant.op1182 = sub i32 1, %.9458
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph660, %bb.ba
  %indvars.iv829 = phi i64 [ %i.op, %.lr.ph660 ], [ %indvars.iv.next830, %bb.ba ] ; 3 uses
  %.val503 = load i32, ptr %i.nf, align 4, !tbaa !43
  %i.oq = trunc nuw nsw i64 %indvars.iv829 to i32
  %.reass989.reass = add i32 %i.oq, %invariant.op1182
  %i.or = add i32 %.reass989.reass, %.val503
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv829
  store i32 %i.or, ptr %i.os, align 4, !tbaa !8
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %i.ot = load i32, ptr %i.na, align 4, !tbaa !78 ; 2 uses
  %i.ou = trunc nuw i64 %indvars.iv.next830 to i32
  %i.ov = icmp sgt i32 %i.ot, %i.ou
  br i1 %i.ov, label %bb.ba, label %._crit_edge661, !llvm.loop !322

._crit_edge661:                                   ; preds = %bb.ba, %.preheader578
  %.lcssa587 = phi i32 [ %i.om, %.preheader578 ], [ %i.ot, %bb.ba ] ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %i.ow, align 8, !tbaa !310
  %i.ox = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 1, ptr %i.ox, align 8, !tbaa !305
  %i.oy = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i32 %.lcssa587, ptr %i.oy, align 4, !tbaa !307
  %i.oz = icmp sgt i32 %.lcssa587, 0
  br i1 %i.oz, label %._crit_edge666, label %._crit_edge666.thread

._crit_edge666.thread:                            ; preds = %._crit_edge661
  %i.pa = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 0, ptr %i.pa, align 8, !tbaa !310
  %i.pb = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i32 1, ptr %i.pb, align 8, !tbaa !305
  %i.pc = getelementptr inbounds nuw i8, ptr %5, i64 116
  store i32 %.lcssa587, ptr %i.pc, align 4, !tbaa !307
  br label %._crit_edge670

._crit_edge666:                                   ; preds = %._crit_edge661
  %i.pd = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.pe = zext nneg i32 %.lcssa587 to i64
  %i.pf = shl nuw nsw i64 %i.pe, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.pd, ptr nonnull align 16 %i.b, i64 %i.pf, i1 false), !tbaa !8
  %.pre922 = load i32, ptr %i.na, align 4, !tbaa !78 ; 6 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 0, ptr %i.pg, align 8, !tbaa !310
  %i.ph = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i32 1, ptr %i.ph, align 8, !tbaa !305
  %i.pi = getelementptr inbounds nuw i8, ptr %5, i64 116
  store i32 %.pre922, ptr %i.pi, align 4, !tbaa !307
  %i.pj = icmp sgt i32 %.pre922, 0
  br i1 %i.pj, label %.lr.ph669, label %._crit_edge670

.lr.ph669:                                        ; preds = %._crit_edge666
  %i.pk = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 3 uses
  %wide.trip.count841 = zext nneg i32 %.pre922 to i64 ; 2 uses
  %xtraiter1139 = and i64 %wide.trip.count841, 1
  %i.pl = icmp eq i32 %.pre922, 1
  br i1 %i.pl, label %.epil.preheader1138, label %.lr.ph669.new

.lr.ph669.new:                                    ; preds = %.lr.ph669
  %unroll_iter1142 = and i64 %wide.trip.count841, 2147483646
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph669.new
  %indvars.iv837 = phi i64 [ 0, %.lr.ph669.new ], [ %indvars.iv.next838.1, %bb.bb ] ; 4 uses
  %niter1143 = phi i64 [ 0, %.lr.ph669.new ], [ %niter1143.next.1, %bb.bb ]
  %i.pm = load i32, ptr %i.na, align 4, !tbaa !78
  %i.pn = trunc nuw nsw i64 %indvars.iv837 to i32
  %i.po = add i32 %.9447, %i.pn
  %i.pp = sub i32 %i.po, %i.pm
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !8
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv837
  store i32 %i.ps, ptr %i.pt, align 4, !tbaa !8
  %indvars.iv.next838 = or disjoint i64 %indvars.iv837, 1 ; 2 uses
  %i.pu = load i32, ptr %i.na, align 4, !tbaa !78
  %i.pv = trunc nuw nsw i64 %indvars.iv.next838 to i32
  %i.pw = add i32 %.9447, %i.pv
  %i.px = sub i32 %i.pw, %i.pu
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.py
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !8
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.next838
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !8
  %indvars.iv.next838.1 = add nuw nsw i64 %indvars.iv837, 2 ; 2 uses
  %niter1143.next.1 = add i64 %niter1143, 2       ; 2 uses
  %niter1143.ncmp.1 = icmp eq i64 %niter1143.next.1, %unroll_iter1142
  br i1 %niter1143.ncmp.1, label %._crit_edge670.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !323

._crit_edge670.loopexit.unr-lcssa:                ; preds = %bb.bb
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1139, 0
  br i1 %lcmp.mod1140.not, label %._crit_edge670.loopexit, label %.epil.preheader1138

.epil.preheader1138:                              ; preds = %._crit_edge670.loopexit.unr-lcssa, %.lr.ph669
  %indvars.iv837.epil.init = phi i64 [ 0, %.lr.ph669 ], [ %indvars.iv.next838.1, %._crit_edge670.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1141 = trunc i32 %.pre922 to i1
  call void @llvm.assume(i1 %lcmp.mod1141)
  %i.qc = load i32, ptr %i.na, align 4, !tbaa !78
  %i.qd = trunc nuw nsw i64 %indvars.iv837.epil.init to i32
  %i.qe = add i32 %.9447, %i.qd
  %i.qf = sub i32 %i.qe, %i.qc
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !8
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv837.epil.init
  store i32 %i.qi, ptr %i.qj, align 4, !tbaa !8
  br label %._crit_edge670.loopexit

end_hunk_0
