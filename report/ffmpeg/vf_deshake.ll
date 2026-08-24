Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_deshake?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@find_motion:bb.a
  br i1 %i.kr, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ks = fcmp nsz ogt double %.0132.val161.i, %.val159.i
  br i1 %i.ks, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %.0129.val160.i, ptr %i.kq, align 8, !tbaa !69
  br label %.sink.split.i

bb.aa:                                            ; preds = %bb.y
  store double %.0129.val160.i, ptr %.0132187.i, align 8, !tbaa !69
  br label %.sink.split.i

bb.ab:                                            ; preds = %bb.x
  %i.kt = fcmp nsz ogt double %.0129.val160.i, %.val159.i
  br i1 %i.kt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %.0129.val160.i, ptr %i.kq, align 8, !tbaa !69
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ac, %bb.aa, %bb.z
  %.val159.sink.i = phi double [ %.val159.i, %bb.ac ], [ %.val159.i, %bb.z ], [ %.0132.val161.i, %bb.aa ]
  store double %.val159.sink.i, ptr %.0129188.i, align 8, !tbaa !69
  %.val154.i.pre = load double, ptr %i.kq, align 8, !tbaa !69
  %.0132.val155.i.pre = load double, ptr %.0132187.i, align 8, !tbaa !69
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ab
  %.0132.val155.i = phi double [ %.0132.val161.i, %bb.ab ], [ %.0132.val155.i.pre, %.sink.split.i ] ; 3 uses
  %.val154.i = phi double [ %.val159.i, %bb.ab ], [ %.val154.i.pre, %.sink.split.i ] ; 3 uses
  %.0135.i = phi i32 [ 1, %bb.ab ], [ 0, %.sink.split.i ]
  %i.ku = fcmp nsz ogt double %.val154.i, %.0132.val155.i
  br i1 %i.ku, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store double %.val154.i, ptr %.0132187.i, align 8, !tbaa !69
  store double %.0132.val155.i, ptr %i.kq, align 8, !tbaa !69
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.kv = phi double [ %.0132.val155.i, %bb.ae ], [ %.val154.i, %bb.ad ] ; 2 uses
  %.1136.i = phi i32 [ 0, %bb.ae ], [ %.0135.i, %bb.ad ]
  %i.kw = icmp eq ptr %.0129188.i, %i.kk
  br i1 %i.kw, label %.thread.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kx = load double, ptr %i.ki, align 8, !tbaa !69
  store double %i.kx, ptr %i.kq, align 8, !tbaa !69
  store double %i.kv, ptr %i.ki, align 8, !tbaa !69
  %.not147182.i = icmp ugt ptr %i.kl, %i.kk
  br i1 %.not147182.i, label %._crit_edge.i149, label %.preheader.i145

.preheader.i145:                                  ; preds = %bb.ag, %.critedge151.i
  %.0137184.i = phi ptr [ %.2139.i, %.critedge151.i ], [ %i.kk, %bb.ag ] ; 4 uses
  %.0141183.i = phi ptr [ %.2143.i, %.critedge151.i ], [ %i.kl, %bb.ag ]
  %.val153.i = load double, ptr %i.ki, align 8, !tbaa !69 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.preheader.i145
  %.1142179.i = phi ptr [ %.0141183.i, %.preheader.i145 ], [ %i.kz, %bb.ai ] ; 3 uses
  %.1142.val.i = load double, ptr %.1142179.i, align 8, !tbaa !69
  %i.ky = fcmp nsz olt double %.1142.val.i, %.val153.i
  br i1 %i.ky, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  %i.kz = getelementptr inbounds nuw i8, ptr %.1142179.i, i64 8 ; 3 uses
  %.not149.i = icmp ugt ptr %i.kz, %.0137184.i
  br i1 %.not149.i, label %.critedge.i, label %bb.ah, !llvm.loop !89

.critedge.i:                                      ; preds = %bb.ai, %bb.ah
  %.1142.lcssa.i = phi ptr [ %i.kz, %bb.ai ], [ %.1142179.i, %bb.ah ] ; 7 uses
  %.not150180.i = icmp ugt ptr %.1142.lcssa.i, %.0137184.i
  br i1 %.not150180.i, label %.critedge151.i, label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.critedge.i, %bb.aj
  %.1138181.i = phi ptr [ %i.lb, %bb.aj ], [ %.0137184.i, %.critedge.i ] ; 4 uses
  %.1138.val.i = load double, ptr %.1138181.i, align 8, !tbaa !69 ; 2 uses
  %i.la = fcmp nsz ogt double %.1138.val.i, %.val153.i
  br i1 %i.la, label %bb.aj, label %.critedge2.i

bb.aj:                                            ; preds = %.lr.ph.i146
  %i.lb = getelementptr inbounds i8, ptr %.1138181.i, i64 -8 ; 3 uses
  %.not150.i = icmp ugt ptr %.1142.lcssa.i, %i.lb
  br i1 %.not150.i, label %.critedge151.i, label %.lr.ph.i146, !llvm.loop !90

.critedge2.i:                                     ; preds = %.lr.ph.i146
  %i.lc = load double, ptr %.1142.lcssa.i, align 8, !tbaa !69
  store double %i.lc, ptr %.1138181.i, align 8, !tbaa !69
  store double %.1138.val.i, ptr %.1142.lcssa.i, align 8, !tbaa !69
  %i.ld = getelementptr inbounds nuw i8, ptr %.1142.lcssa.i, i64 8
  %i.le = getelementptr inbounds i8, ptr %.1138181.i, i64 -8
  br label %.critedge151.i

.critedge151.i:                                   ; preds = %bb.aj, %.critedge2.i, %.critedge.i
  %.2143.i = phi ptr [ %i.ld, %.critedge2.i ], [ %.1142.lcssa.i, %.critedge.i ], [ %.1142.lcssa.i, %bb.aj ] ; 3 uses
  %.2139.i = phi ptr [ %i.le, %.critedge2.i ], [ %.0137184.i, %.critedge.i ], [ %i.lb, %bb.aj ] ; 3 uses
  %.not147.i = icmp ugt ptr %.2143.i, %.2139.i
  br i1 %.not147.i, label %._crit_edge.loopexit.i147, label %.preheader.i145, !llvm.loop !91

._crit_edge.loopexit.i147:                        ; preds = %.critedge151.i
  %.pre.i148 = load double, ptr %i.ki, align 8, !tbaa !69
  br label %._crit_edge.i149

._crit_edge.i149:                                 ; preds = %._crit_edge.loopexit.i147, %bb.ag
  %i.lf = phi double [ %i.kv, %bb.ag ], [ %.pre.i148, %._crit_edge.loopexit.i147 ]
  %.0141.lcssa.i = phi ptr [ %i.kl, %bb.ag ], [ %.2143.i, %._crit_edge.loopexit.i147 ] ; 7 uses
  %.0137.lcssa.i = phi ptr [ %i.kk, %bb.ag ], [ %.2139.i, %._crit_edge.loopexit.i147 ] ; 2 uses
  %i.lg = load double, ptr %.0141.lcssa.i, align 8, !tbaa !69
  store double %i.lf, ptr %.0141.lcssa.i, align 8, !tbaa !69
  store double %i.lg, ptr %i.ki, align 8, !tbaa !69
  %.not148.i = icmp eq i32 %.1136.i, 0
  br i1 %.not148.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i149
  %i.lh = getelementptr inbounds i8, ptr %.0141.lcssa.i, i64 -8
  %i.li = icmp eq ptr %i.kq, %i.lh
  %i.lj = icmp eq ptr %i.kq, %.0141.lcssa.i
  %or.cond.i = or i1 %i.lj, %i.li
  br i1 %or.cond.i, label %.preheader173.i, label %bb.am

.preheader173.i:                                  ; preds = %bb.ak, %bb.al
  %.0140.i = phi ptr [ %i.ll, %bb.al ], [ %.0129188.i, %bb.ak ] ; 4 uses
  %i.lk = icmp ult ptr %.0140.i, %.0132187.i
  br i1 %i.lk, label %bb.al, label %.critedge4.i

bb.al:                                            ; preds = %.preheader173.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.0140.i, i64 8 ; 2 uses
  %.0140.val.i = load double, ptr %.0140.i, align 8, !tbaa !69
  %.val.i = load double, ptr %i.ll, align 8, !tbaa !69
  %i.lm = fcmp nsz ule double %.0140.val.i, %.val.i
  br i1 %i.lm, label %.preheader173.i, label %.critedge4.i, !llvm.loop !92

.critedge4.i:                                     ; preds = %bb.al, %.preheader173.i
  %i.ln = icmp eq ptr %.0140.i, %.0132187.i
  br i1 %i.ln, label %.thread.loopexit.i, label %bb.am

bb.am:                                            ; preds = %.critedge4.i, %bb.ak, %._crit_edge.i149
  %i.lo = ptrtoint ptr %.0141.lcssa.i to i64      ; 2 uses
  %i.lp = sub i64 %i.km, %i.lo
  %i.lq = sub i64 %i.lo, %i.kn
  %i.lr = icmp slt i64 %i.lp, %i.lq
  br i1 %i.lr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ls = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.i144 ; 2 uses
  store ptr %.0129188.i, ptr %i.ls, align 16, !tbaa !88
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %.0137.lcssa.i, ptr %i.lt, align 8, !tbaa !88
  %i.lu = getelementptr inbounds nuw i8, ptr %.0141.lcssa.i, i64 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.lv = getelementptr inbounds nuw i8, ptr %.0141.lcssa.i, i64 8
  %i.lw = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.i144 ; 2 uses
  store ptr %i.lv, ptr %i.lw, align 16, !tbaa !88
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr %.0132187.i, ptr %i.lx, align 8, !tbaa !88
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1133.i = phi ptr [ %.0132187.i, %bb.an ], [ %.0137.lcssa.i, %bb.ao ] ; 2 uses
  %.1130.i = phi ptr [ %i.lu, %bb.an ], [ %.0129188.i, %bb.ao ] ; 2 uses
  %indvars.iv.next.i150 = add nsw i64 %indvars.iv.i144, 1 ; 2 uses
  %i.ly = icmp ult ptr %.1130.i, %.1133.i
  br i1 %i.ly, label %.lr.ph191.i, label %.thread.loopexit.i

bb.aq:                                            ; preds = %.lr.ph191.i
  %i.lz = trunc nsw i64 %indvars.iv.i144 to i32   ; 2 uses
  %.0129.val.i = load double, ptr %.0129188.i, align 8, !tbaa !69 ; 2 uses
  %.0132.val.i = load double, ptr %.0132187.i, align 8, !tbaa !69 ; 2 uses
  %i.ma = fcmp nsz ogt double %.0129.val.i, %.0132.val.i
  br i1 %i.ma, label %bb.ar, label %.thread.i140

bb.ar:                                            ; preds = %bb.aq
  store double %.0129.val.i, ptr %.0132187.i, align 8, !tbaa !69
  store double %.0132.val.i, ptr %.0129188.i, align 8, !tbaa !69
  br label %.thread.i140

.thread.loopexit.i:                               ; preds = %bb.ap, %.critedge4.i, %bb.af
  %.1176.ph.in.i = phi i64 [ %indvars.iv.i144, %.critedge4.i ], [ %indvars.iv.i144, %bb.af ], [ %indvars.iv.next.i150, %bb.ap ]
  %.1176.ph.i = trunc i64 %.1176.ph.in.i to i32
  br label %.thread.i140

.thread.i140:                                     ; preds = %.thread.loopexit.i, %bb.ar, %bb.aq, %bb.w
  %.1176.i = phi i32 [ %i.lz, %bb.ar ], [ %i.lz, %bb.aq ], [ %i.jz, %bb.w ], [ %.1176.ph.i, %.thread.loopexit.i ] ; 2 uses
  %.not.i141 = icmp eq i32 %.1176.i, 0
  br i1 %.not.i141, label %bb.as, label %bb.w, !llvm.loop !93

bb.as:                                            ; preds = %.thread.i140
  %i.mb = sdiv i32 %.1108.lcssa, %.1112.lcssa     ; 2 uses
  %i.mc = sdiv i32 %.1.lcssa, %.1112.lcssa        ; 2 uses
  %i.md = sdiv i32 %.1112.lcssa, 5                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.me = sub nsw i32 %.1112.lcssa, %i.md         ; 2 uses
  %i.mf = icmp slt i32 %i.md, %i.me
  br i1 %i.mf, label %.lr.ph200.preheader.i, label %clean_mean.exit

.lr.ph200.preheader.i:                            ; preds = %bb.as
  %i.mg = sext i32 %i.md to i64                   ; 4 uses
  %wide.trip.count.i142 = sext i32 %i.me to i64
  %i.mh = sext i32 %.1112.lcssa to i64            ; 2 uses
  %i.mi = shl nsw i64 %i.mg, 1
  %i.mj = sub nsw i64 %i.mh, %i.mi
  %7 = shl nsw i64 %i.mg, 1
  %xtraiter = and i64 %i.mj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol

.lr.ph200.i.prol:                                 ; preds = %.lr.ph200.preheader.i, %.lr.ph200.i.prol
  %indvars.iv210.i.prol = phi i64 [ %indvars.iv.next211.i.prol, %.lr.ph200.i.prol ], [ %i.mg, %.lr.ph200.preheader.i ] ; 2 uses
  %.0198.i.prol = phi double [ %i.mm, %.lr.ph200.i.prol ], [ 0.000000e+00, %.lr.ph200.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.i.prol ], [ 0, %.lr.ph200.preheader.i ]
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %indvars.iv210.i.prol
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !69
  %i.mm = fadd nsz double %.0198.i.prol, %i.ml    ; 3 uses
  %indvars.iv.next211.i.prol = add nsw i64 %indvars.iv210.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol, !llvm.loop !94

.lr.ph200.i.prol.loopexit:                        ; preds = %.lr.ph200.i.prol, %.lr.ph200.preheader.i
  %.lcssa.unr = phi double [ poison, %.lr.ph200.preheader.i ], [ %i.mm, %.lr.ph200.i.prol ]
  %indvars.iv210.i.unr = phi i64 [ %i.mg, %.lr.ph200.preheader.i ], [ %indvars.iv.next211.i.prol, %.lr.ph200.i.prol ]
  %.0198.i.unr = phi double [ 0.000000e+00, %.lr.ph200.preheader.i ], [ %i.mm, %.lr.ph200.i.prol ]
  %i.mn = sub nsw i64 %7, %i.mh
  %i.mo = icmp ugt i64 %i.mn, -8
  br i1 %i.mo, label %clean_mean.exit, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %.lr.ph200.i.prol.loopexit, %.lr.ph200.i
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i.7, %.lr.ph200.i ], [ %indvars.iv210.i.unr, %.lr.ph200.i.prol.loopexit ] ; 9 uses
  %.0198.i = phi double [ %i.nt, %.lr.ph200.i ], [ %.0198.i.unr, %.lr.ph200.i.prol.loopexit ]
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !69
  %i.mr = fadd nsz double %.0198.i, %i.mq
  %i.ms = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.mt = getelementptr i8, ptr %i.ms, i64 8
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !69
  %i.mv = fadd nsz double %i.mr, %i.mu
  %i.mw = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.mx = getelementptr i8, ptr %i.mw, i64 16
  %i.my = load double, ptr %i.mx, align 8, !tbaa !69
  %i.mz = fadd nsz double %i.mv, %i.my
  %i.na = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nb = getelementptr i8, ptr %i.na, i64 24
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !69
  %i.nd = fadd nsz double %i.mz, %i.nc
  %i.ne = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nf = getelementptr i8, ptr %i.ne, i64 32
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !69
  %i.nh = fadd nsz double %i.nd, %i.ng
  %i.ni = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nj = getelementptr i8, ptr %i.ni, i64 40
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !69
  %i.nl = fadd nsz double %i.nh, %i.nk
  %i.nm = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nn = getelementptr i8, ptr %i.nm, i64 48
  %i.no = load double, ptr %i.nn, align 8, !tbaa !69
  %i.np = fadd nsz double %i.nl, %i.no
  %i.nq = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nr = getelementptr i8, ptr %i.nq, i64 56
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !69
  %i.nt = fadd nsz double %i.np, %i.ns            ; 2 uses
  %indvars.iv.next211.i.7 = add nsw i64 %indvars.iv210.i, 8 ; 2 uses
  %exitcond.not.i143.7 = icmp eq i64 %indvars.iv.next211.i.7, %wide.trip.count.i142
  br i1 %exitcond.not.i143.7, label %clean_mean.exit, label %.lr.ph200.i, !llvm.loop !96

clean_mean.exit:                                  ; preds = %.lr.ph200.i.prol.loopexit, %.lr.ph200.i, %bb.as
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.as ], [ %.lcssa.unr, %.lr.ph200.i.prol.loopexit ], [ %i.nt, %.lr.ph200.i ]
  %i.nu = shl nsw i32 %i.md, 1
  %i.nv = sub nsw i32 %.1112.lcssa, %i.nu
  %i.nw = sitofp nsz i32 %i.nv to double
  %i.nx = fdiv nsz double %.0.lcssa.i, %i.nw      ; 2 uses
  %i.ny = fcmp nsz olt double %i.nx, 1.000000e-03
  br i1 %i.ny, label %bb.at, label %._crit_edge206.thread

bb.at:                                            ; preds = %clean_mean.exit
  br label %._crit_edge206.thread

._crit_edge206.thread:                            ; preds = %._crit_edge206, %._crit_edge179, %clean_mean.exit, %bb.at
  %.lcssa173290 = phi i32 [ %i.jm, %bb.at ], [ %i.jm, %clean_mean.exit ], [ %i.jm, %._crit_edge206 ], [ %i.z, %._crit_edge179 ] ; 3 uses
  %i.nz = phi i32 [ %i.jo, %bb.at ], [ %i.jo, %clean_mean.exit ], [ %i.jo, %._crit_edge206 ], [ %i.y, %._crit_edge179 ] ; 5 uses
  %i.oa = phi double [ 0.000000e+00, %bb.at ], [ %i.nx, %clean_mean.exit ], [ 0.000000e+00, %._crit_edge206 ], [ 0.000000e+00, %._crit_edge179 ] ; 2 uses
  %.3110 = phi i32 [ %i.mb, %bb.at ], [ %i.mb, %clean_mean.exit ], [ %.1108.lcssa, %._crit_edge206 ], [ 0, %._crit_edge179 ]
  %.3 = phi i32 [ %i.mc, %bb.at ], [ %i.mc, %clean_mean.exit ], [ %.1.lcssa, %._crit_edge206 ], [ 0, %._crit_edge179 ]
  %i.ob = icmp sgt i32 %.lcssa173290, -1
  %i.oc = insertelement <2 x i32> poison, i32 %i.nz, i64 0
  %i.od = insertelement <2 x i32> %i.oc, i32 %.lcssa173290, i64 1 ; 2 uses
  %i.oe = shl <2 x i32> %i.od, splat (i32 1)      ; 3 uses
  br i1 %i.ob, label %.preheader.lr.ph, label %._crit_edge219.split

.preheader.lr.ph:                                 ; preds = %._crit_edge206.thread
  %.not131211 = icmp slt i32 %i.nz, 0
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.og = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %.not131211, label %._crit_edge219.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.oh = extractelement <2 x i32> %i.oe, i64 0   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.oh, i32 0)
  %i.oi = extractelement <2 x i32> %i.oe, i64 1
  %i.oj = zext i32 %i.oi to i64
  %i.ok = icmp slt i32 %i.oh, 1
  %unroll_iter = zext nneg i32 %smax to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge215
  %indvars.iv241 = phi i64 [ %i.oj, %.preheader.preheader ], [ %indvars.iv.next242, %._crit_edge215 ] ; 3 uses
  %.0115218 = phi i32 [ 0, %.preheader.preheader ], [ %.2117.epil, %._crit_edge215 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %indvars.iv241 ; 3 uses
  %i.ol = trunc nuw i64 %indvars.iv241 to i32     ; 2 uses
  %i.om = sub nsw i32 %i.ol, %.lcssa173290
  %i.on = sitofp nsz i32 %i.om to double          ; 3 uses
  br i1 %i.ok, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.ax
  %indvars.iv238 = phi i64 [ %indvars.iv.next239.1, %bb.ax ], [ 0, %.preheader ] ; 4 uses
  %.1116213 = phi i32 [ %.2117.1, %bb.ax ], [ %.0115218, %.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.ax ], [ 0, %.preheader ]
  %gep = getelementptr inbounds nuw [516 x i8], ptr %invariant.gep, i64 %indvars.iv238
  %i.oo = load i32, ptr %gep, align 4, !tbaa !63  ; 2 uses
  %i.op = icmp sgt i32 %i.oo, %.1116213
  br i1 %i.op, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.preheader.new
  %i.oq = trunc i64 %indvars.iv238 to i32
  %i.or = sub i32 %i.oq, %i.nz
  %i.os = sitofp nsz i32 %i.or to double
  store double %i.os, ptr %6, align 8, !tbaa !66
  store double %i.on, ptr %i.og, align 8, !tbaa !97
  br label %bb.av

bb.av:                                            ; preds = %.preheader.new, %bb.au
  %.2117 = phi i32 [ %i.oo, %bb.au ], [ %.1116213, %.preheader.new ] ; 2 uses
  %indvars.iv.next239 = or disjoint i64 %indvars.iv238, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [516 x i8], ptr %invariant.gep, i64 %indvars.iv.next239
  %i.ot = load i32, ptr %gep.1, align 4, !tbaa !63 ; 2 uses
  %i.ou = icmp sgt i32 %i.ot, %.2117
  br i1 %i.ou, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ov = trunc i64 %indvars.iv.next239 to i32
  %i.ow = sub i32 %i.ov, %i.nz
  %i.ox = sitofp nsz i32 %i.ow to double
  store double %i.ox, ptr %6, align 8, !tbaa !66
  store double %i.on, ptr %i.og, align 8, !tbaa !97
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.2117.1 = phi i32 [ %i.ot, %bb.aw ], [ %.2117, %bb.av ] ; 2 uses
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.epil.preheader, label %.preheader.new, !llvm.loop !98

.epil.preheader:                                  ; preds = %.preheader, %bb.ax
  %indvars.iv238.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next239.1, %bb.ax ] ; 2 uses
  %.1116213.epil.init = phi i32 [ %.0115218, %.preheader ], [ %.2117.1, %bb.ax ] ; 2 uses
  %gep.epil = getelementptr inbounds nuw [516 x i8], ptr %invariant.gep, i64 %indvars.iv238.epil.init
  %i.oy = load i32, ptr %gep.epil, align 4, !tbaa !63 ; 2 uses
  %i.oz = icmp sgt i32 %i.oy, %.1116213.epil.init
  br i1 %i.oz, label %bb.ay, label %._crit_edge215

bb.ay:                                            ; preds = %.epil.preheader
  %i.pa = trunc i64 %indvars.iv238.epil.init to i32
  %i.pb = sub i32 %i.pa, %i.nz
  %i.pc = sitofp nsz i32 %i.pb to double
  store double %i.pc, ptr %6, align 8, !tbaa !66
  store double %i.on, ptr %i.og, align 8, !tbaa !97
  br label %._crit_edge215

._crit_edge215:                                   ; preds = %.epil.preheader, %bb.ay
  %.2117.epil = phi i32 [ %i.oy, %bb.ay ], [ %.1116213.epil.init, %.epil.preheader ]
  %indvars.iv.next242 = add nsw i64 %indvars.iv241, -1
  %i.pd = icmp sgt i32 %i.ol, 0
  br i1 %i.pd, label %.preheader, label %._crit_edge219.split, !llvm.loop !99

._crit_edge219.split:                             ; preds = %._crit_edge215, %._crit_edge206.thread, %.preheader.lr.ph
  %i.pe = sitofp nsz i32 %.3110 to double
  %i.pf = sitofp nsz i32 %3 to double
  %i.pg = fmul nnan nsz double %i.pf, 5.000000e-01
  %i.ph = fsub nsz double %i.pe, %i.pg
  %i.pi = sitofp nsz i32 %.3 to double
  %i.pj = sitofp nsz i32 %4 to double
  %i.pk = fmul nnan nsz double %i.pj, 5.000000e-01
  %i.pl = fsub nsz double %i.pi, %i.pk            ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.oa) ; 2 uses
  %cos = extractvalue { double, double } %sincos, 1
  %i.pn = fneg nsz double %i.pl
  %i.po = mul <2 x i32> %i.od, splat (i32 -2)
  %i.pp = sitofp <2 x i32> %i.oe to <2 x float>   ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 2 uses
  %i.pq = insertelement <2 x double> poison, double %cos, i64 0
  %i.pr = insertelement <2 x double> %i.pq, double %sin, i64 1
  %i.ps = fadd nsz <2 x double> %i.pr, <double -1.000000e+00, double -0.000000e+00> ; 2 uses
  %i.pt = extractelement <2 x double> %i.ps, i64 0
  %i.pu = fmul nsz double %i.pl, %i.pt
  %i.pv = fmul nsz double %sin, %i.pn
  %i.pw = insertelement <2 x double> poison, double %i.ph, i64 0
  %i.px = shufflevector <2 x double> %i.pw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.py = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.pz = insertelement <2 x double> %i.py, double %i.pu, i64 1
  %i.qa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> %i.px, <2 x double> %i.pz)
  %i.qb = load <2 x double>, ptr %6, align 8, !tbaa !69
  %i.qc = fadd nsz <2 x double> %i.qb, %i.qa
  %i.qd = fptrunc <2 x double> %i.qc to <2 x float> ; 2 uses
  %i.qe = sitofp <2 x i32> %i.po to <2 x float>   ; 2 uses
  %i.qf = fcmp nsz ogt <2 x float> %i.qd, %i.qe
  %i.qg = select <2 x i1> %i.qf, <2 x float> %i.qd, <2 x float> %i.qe ; 2 uses
  %i.qh = fcmp nsz ogt <2 x float> %i.qg, %i.pp
  %i.qi = select <2 x i1> %i.qh, <2 x float> %i.pp, <2 x float> %i.qg
  %i.qj = fpext <2 x float> %i.qi to <2 x double>
  store <2 x double> %i.qj, ptr %6, align 8, !tbaa !69
  %i.qk = fptrunc nsz double %i.oa to float       ; 2 uses
  %i.ql = fcmp nsz ogt float %i.qk, -1.000000e-01
  %i.qm = select nsz i1 %i.ql, float %i.qk, float -1.000000e-01 ; 2 uses
  %i.qn = fcmp nsz ogt float %i.qm, 1.000000e-01
  %..i = select nsz i1 %i.qn, float 1.000000e-01, float %i.qm
  %i.qo = fpext nsz float %..i to double
  store double %i.qo, ptr %i.pm, align 8, !tbaa !100
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3
end_hunk_0
