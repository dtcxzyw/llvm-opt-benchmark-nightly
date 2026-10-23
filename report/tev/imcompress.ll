Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/imcompress?download=true
inline.NumInlined: 36
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 58
begin_hunk_0_@fits_uncompress_table:bb.a
  %i.kk = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 2 ; 2 uses
  store ptr %i.kl, ptr %i.v, align 8, !tbaa !52
  %i.km = load i8, ptr %i.kj, align 1, !tbaa !47
  store i8 %i.km, ptr %i.kl, align 1, !tbaa !47
  %i.kn = getelementptr inbounds nuw i8, ptr %.1740, i64 3
  %i.ko = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 2 ; 2 uses
  store ptr %i.kp, ptr %i.v, align 8, !tbaa !52
  %i.kq = load i8, ptr %i.kn, align 1, !tbaa !47
  store i8 %i.kq, ptr %i.kp, align 1, !tbaa !47
  %i.kr = getelementptr inbounds nuw i8, ptr %.1740, i64 4 ; 3 uses
  %i.ks = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 2 ; 3 uses
  store ptr %i.kt, ptr %i.v, align 8, !tbaa !52
  %niter1119.next.3 = add nuw nsw i64 %niter1119, 4 ; 2 uses
  %niter1119.ncmp.3 = icmp eq i64 %niter1119.next.3, %unroll_iter1118
  br i1 %niter1119.ncmp.3, label %._crit_edge743.unr-lcssa, label %.lr.ph742, !llvm.loop !295

._crit_edge743.unr-lcssa:                         ; preds = %.lr.ph742
  br i1 %lcmp.mod1115.not, label %._crit_edge743, label %.lr.ph742.epil.preheader

.lr.ph742.epil.preheader:                         ; preds = %._crit_edge743.unr-lcssa, %.lr.ph742.preheader
  %.epil.init1114 = phi ptr [ %i.kc, %.lr.ph742.preheader ], [ %i.kt, %._crit_edge743.unr-lcssa ]
  %.1740.epil.init = phi ptr [ %.0746, %.lr.ph742.preheader ], [ %i.kr, %._crit_edge743.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1117)
  br label %.lr.ph742.epil

.lr.ph742.epil:                                   ; preds = %.lr.ph742.epil, %.lr.ph742.epil.preheader
  %i.ku = phi ptr [ %i.ky, %.lr.ph742.epil ], [ %.epil.init1114, %.lr.ph742.epil.preheader ]
  %.1740.epil = phi ptr [ %i.kw, %.lr.ph742.epil ], [ %.1740.epil.init, %.lr.ph742.epil.preheader ] ; 2 uses
  %epil.iter1112 = phi i64 [ %epil.iter1112.next, %.lr.ph742.epil ], [ 0, %.lr.ph742.epil.preheader ]
  %i.kv = load i8, ptr %.1740.epil, align 1, !tbaa !47
  store i8 %i.kv, ptr %i.ku, align 1, !tbaa !47
  %i.kw = getelementptr inbounds nuw i8, ptr %.1740.epil, i64 1 ; 2 uses
  %i.kx = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 2 ; 2 uses
  store ptr %i.ky, ptr %i.v, align 8, !tbaa !52
  %epil.iter1112.next = add i64 %epil.iter1112, 1 ; 2 uses
  %epil.iter1112.cmp.not = icmp eq i64 %epil.iter1112.next, %xtraiter1111
  br i1 %epil.iter1112.cmp.not, label %._crit_edge743, label %.lr.ph742.epil, !llvm.loop !296

._crit_edge743:                                   ; preds = %.lr.ph742.epil, %._crit_edge743.unr-lcssa
  %.lcssa991 = phi ptr [ %i.kr, %._crit_edge743.unr-lcssa ], [ %i.kw, %.lr.ph742.epil ] ; 2 uses
  %.pre831 = load i64, ptr %i.o, align 8, !tbaa !37 ; 2 uses
  %i.kz = add nuw nsw i64 %.0476745, 1            ; 2 uses
  %i.la = icmp slt i64 %i.kz, %.pre831
  br i1 %i.la, label %.lr.ph742.preheader, label %.preheader, !llvm.loop !297

.lr.ph752.preheader:                              ; preds = %._crit_edge753, %.lr.ph757
  %.2756 = phi ptr [ %.lcssa991, %.lr.ph757 ], [ %.lcssa992, %._crit_edge753 ] ; 2 uses
  %.1477755 = phi i64 [ 0, %.lr.ph757 ], [ %i.me, %._crit_edge753 ] ; 2 uses
  %i.lb = load i32, ptr %i.p, align 4, !tbaa !18
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.lc
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !46
  %i.lf = mul nsw i64 %i.le, %.1477755
  %i.lg = getelementptr i8, ptr %i.jv, i64 %i.lf
  %i.lh = getelementptr i8, ptr %i.lg, i64 1      ; 3 uses
  store ptr %i.lh, ptr %i.v, align 8, !tbaa !52
  br i1 %i.jw, label %.lr.ph752.epil.preheader, label %.lr.ph752

.lr.ph752:                                        ; preds = %.lr.ph752.preheader, %.lr.ph752
  %i.li = phi ptr [ %i.ly, %.lr.ph752 ], [ %i.lh, %.lr.ph752.preheader ]
  %.3750 = phi ptr [ %i.lw, %.lr.ph752 ], [ %.2756, %.lr.ph752.preheader ] ; 5 uses
  %niter1128 = phi i64 [ %niter1128.next.3, %.lr.ph752 ], [ 0, %.lr.ph752.preheader ]
  %i.lj = load i8, ptr %.3750, align 1, !tbaa !47
  store i8 %i.lj, ptr %i.li, align 1, !tbaa !47
  %i.lk = getelementptr inbounds nuw i8, ptr %.3750, i64 1
  %i.ll = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 2 ; 2 uses
  store ptr %i.lm, ptr %i.v, align 8, !tbaa !52
  %i.ln = load i8, ptr %i.lk, align 1, !tbaa !47
  store i8 %i.ln, ptr %i.lm, align 1, !tbaa !47
  %i.lo = getelementptr inbounds nuw i8, ptr %.3750, i64 2
  %i.lp = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 2 ; 2 uses
  store ptr %i.lq, ptr %i.v, align 8, !tbaa !52
  %i.lr = load i8, ptr %i.lo, align 1, !tbaa !47
  store i8 %i.lr, ptr %i.lq, align 1, !tbaa !47
  %i.ls = getelementptr inbounds nuw i8, ptr %.3750, i64 3
  %i.lt = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 2 ; 2 uses
  store ptr %i.lu, ptr %i.v, align 8, !tbaa !52
  %i.lv = load i8, ptr %i.ls, align 1, !tbaa !47
  store i8 %i.lv, ptr %i.lu, align 1, !tbaa !47
  %i.lw = getelementptr inbounds nuw i8, ptr %.3750, i64 4 ; 3 uses
  %i.lx = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 2 ; 3 uses
  store ptr %i.ly, ptr %i.v, align 8, !tbaa !52
  %niter1128.next.3 = add nuw nsw i64 %niter1128, 4 ; 2 uses
  %niter1128.ncmp.3 = icmp eq i64 %niter1128.next.3, %unroll_iter1127
  br i1 %niter1128.ncmp.3, label %._crit_edge753.unr-lcssa, label %.lr.ph752, !llvm.loop !298

._crit_edge753.unr-lcssa:                         ; preds = %.lr.ph752
  br i1 %lcmp.mod1124.not, label %._crit_edge753, label %.lr.ph752.epil.preheader

.lr.ph752.epil.preheader:                         ; preds = %._crit_edge753.unr-lcssa, %.lr.ph752.preheader
  %.epil.init1123 = phi ptr [ %i.lh, %.lr.ph752.preheader ], [ %i.ly, %._crit_edge753.unr-lcssa ]
  %.3750.epil.init = phi ptr [ %.2756, %.lr.ph752.preheader ], [ %i.lw, %._crit_edge753.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1126)
  br label %.lr.ph752.epil

.lr.ph752.epil:                                   ; preds = %.lr.ph752.epil, %.lr.ph752.epil.preheader
  %i.lz = phi ptr [ %i.md, %.lr.ph752.epil ], [ %.epil.init1123, %.lr.ph752.epil.preheader ]
  %.3750.epil = phi ptr [ %i.mb, %.lr.ph752.epil ], [ %.3750.epil.init, %.lr.ph752.epil.preheader ] ; 2 uses
  %epil.iter1121 = phi i64 [ %epil.iter1121.next, %.lr.ph752.epil ], [ 0, %.lr.ph752.epil.preheader ]
  %i.ma = load i8, ptr %.3750.epil, align 1, !tbaa !47
  store i8 %i.ma, ptr %i.lz, align 1, !tbaa !47
  %i.mb = getelementptr inbounds nuw i8, ptr %.3750.epil, i64 1 ; 2 uses
  %i.mc = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 2 ; 2 uses
  store ptr %i.md, ptr %i.v, align 8, !tbaa !52
  %epil.iter1121.next = add i64 %epil.iter1121, 1 ; 2 uses
  %epil.iter1121.cmp.not = icmp eq i64 %epil.iter1121.next, %xtraiter1120
  br i1 %epil.iter1121.cmp.not, label %._crit_edge753, label %.lr.ph752.epil, !llvm.loop !299

._crit_edge753:                                   ; preds = %.lr.ph752.epil, %._crit_edge753.unr-lcssa
  %.lcssa992 = phi ptr [ %i.lw, %._crit_edge753.unr-lcssa ], [ %i.mb, %.lr.ph752.epil ]
  %.pre832 = load i64, ptr %i.o, align 8, !tbaa !37
  %i.me = add nuw nsw i64 %.1477755, 1            ; 2 uses
  %i.mf = icmp slt i64 %i.me, %.pre832
  br i1 %i.mf, label %.lr.ph752.preheader, label %.loopexit, !llvm.loop !300

bb.bm:                                            ; preds = %bb.bl, %bb.bl
  %i.mg = load i64, ptr %i.o, align 8, !tbaa !37
  %i.mh = icmp sgt i64 %i.mg, 0
  br i1 %i.mh, label %.lr.ph708, label %.loopexit

.lr.ph708:                                        ; preds = %bb.bm
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !46
  %i.mk = getelementptr i8, ptr %i.fa, i64 %i.mj
  %i.ml = load i32, ptr %i.p, align 4, !tbaa !18
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.mm
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !46
  %i.mp = add nsw i64 %i.ih, -1                   ; 4 uses
  %xtraiter1075 = and i64 %i.ih, 3                ; 3 uses
  %i.mq = icmp ult i64 %i.mp, 3
  %unroll_iter1082 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1079.not = icmp eq i64 %xtraiter1075, 0
  %lcmp.mod1081 = icmp ne i64 %xtraiter1075, 0
  br label %.lr.ph702.preheader

.preheader569:                                    ; preds = %._crit_edge703
  %i.mr = icmp sgt i64 %.pre827, 0
  br i1 %i.mr, label %.lr.ph718, label %.loopexit

.lr.ph718:                                        ; preds = %.preheader569
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !46
  %i.mu = getelementptr i8, ptr %i.fa, i64 %i.mt
  %i.mv = load i32, ptr %i.p, align 4, !tbaa !18
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !46
  %xtraiter1084 = and i64 %i.ih, 3                ; 3 uses
  %i.mz = icmp ult i64 %i.mp, 3
  %unroll_iter1091 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1088.not = icmp eq i64 %xtraiter1084, 0
  %lcmp.mod1090 = icmp ne i64 %xtraiter1084, 0
  br label %.lr.ph713.preheader

.lr.ph702.preheader:                              ; preds = %._crit_edge703, %.lr.ph708
  %.4706 = phi ptr [ %i.if, %.lr.ph708 ], [ %.lcssa987, %._crit_edge703 ] ; 2 uses
  %.2478705 = phi i64 [ 0, %.lr.ph708 ], [ %i.ny, %._crit_edge703 ] ; 2 uses
  %i.na = mul nsw i64 %i.mo, %.2478705
  %i.nb = getelementptr i8, ptr %i.mk, i64 %i.na  ; 3 uses
  store ptr %i.nb, ptr %i.v, align 8, !tbaa !52
  br i1 %i.mq, label %.lr.ph702.epil.preheader, label %.lr.ph702

.lr.ph702:                                        ; preds = %.lr.ph702.preheader, %.lr.ph702
  %i.nc = phi ptr [ %i.ns, %.lr.ph702 ], [ %i.nb, %.lr.ph702.preheader ]
  %.5700 = phi ptr [ %i.nq, %.lr.ph702 ], [ %.4706, %.lr.ph702.preheader ] ; 5 uses
  %niter1083 = phi i64 [ %niter1083.next.3, %.lr.ph702 ], [ 0, %.lr.ph702.preheader ]
  %i.nd = load i8, ptr %.5700, align 1, !tbaa !47
  store i8 %i.nd, ptr %i.nc, align 1, !tbaa !47
  %i.ne = getelementptr inbounds nuw i8, ptr %.5700, i64 1
  %i.nf = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4 ; 2 uses
  store ptr %i.ng, ptr %i.v, align 8, !tbaa !52
  %i.nh = load i8, ptr %i.ne, align 1, !tbaa !47
  store i8 %i.nh, ptr %i.ng, align 1, !tbaa !47
  %i.ni = getelementptr inbounds nuw i8, ptr %.5700, i64 2
  %i.nj = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 2 uses
  store ptr %i.nk, ptr %i.v, align 8, !tbaa !52
  %i.nl = load i8, ptr %i.ni, align 1, !tbaa !47
  store i8 %i.nl, ptr %i.nk, align 1, !tbaa !47
  %i.nm = getelementptr inbounds nuw i8, ptr %.5700, i64 3
  %i.nn = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 4 ; 2 uses
  store ptr %i.no, ptr %i.v, align 8, !tbaa !52
  %i.np = load i8, ptr %i.nm, align 1, !tbaa !47
  store i8 %i.np, ptr %i.no, align 1, !tbaa !47
  %i.nq = getelementptr inbounds nuw i8, ptr %.5700, i64 4 ; 3 uses
  %i.nr = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 4 ; 3 uses
  store ptr %i.ns, ptr %i.v, align 8, !tbaa !52
  %niter1083.next.3 = add nuw nsw i64 %niter1083, 4 ; 2 uses
  %niter1083.ncmp.3 = icmp eq i64 %niter1083.next.3, %unroll_iter1082
  br i1 %niter1083.ncmp.3, label %._crit_edge703.unr-lcssa, label %.lr.ph702, !llvm.loop !301

._crit_edge703.unr-lcssa:                         ; preds = %.lr.ph702
  br i1 %lcmp.mod1079.not, label %._crit_edge703, label %.lr.ph702.epil.preheader

.lr.ph702.epil.preheader:                         ; preds = %._crit_edge703.unr-lcssa, %.lr.ph702.preheader
  %.epil.init1078 = phi ptr [ %i.nb, %.lr.ph702.preheader ], [ %i.ns, %._crit_edge703.unr-lcssa ]
  %.5700.epil.init = phi ptr [ %.4706, %.lr.ph702.preheader ], [ %i.nq, %._crit_edge703.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1081)
  br label %.lr.ph702.epil

.lr.ph702.epil:                                   ; preds = %.lr.ph702.epil, %.lr.ph702.epil.preheader
  %i.nt = phi ptr [ %i.nx, %.lr.ph702.epil ], [ %.epil.init1078, %.lr.ph702.epil.preheader ]
  %.5700.epil = phi ptr [ %i.nv, %.lr.ph702.epil ], [ %.5700.epil.init, %.lr.ph702.epil.preheader ] ; 2 uses
  %epil.iter1076 = phi i64 [ %epil.iter1076.next, %.lr.ph702.epil ], [ 0, %.lr.ph702.epil.preheader ]
  %i.nu = load i8, ptr %.5700.epil, align 1, !tbaa !47
  store i8 %i.nu, ptr %i.nt, align 1, !tbaa !47
  %i.nv = getelementptr inbounds nuw i8, ptr %.5700.epil, i64 1 ; 2 uses
  %i.nw = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 4 ; 2 uses
  store ptr %i.nx, ptr %i.v, align 8, !tbaa !52
  %epil.iter1076.next = add i64 %epil.iter1076, 1 ; 2 uses
  %epil.iter1076.cmp.not = icmp eq i64 %epil.iter1076.next, %xtraiter1075
  br i1 %epil.iter1076.cmp.not, label %._crit_edge703, label %.lr.ph702.epil, !llvm.loop !302

._crit_edge703:                                   ; preds = %.lr.ph702.epil, %._crit_edge703.unr-lcssa
  %.lcssa987 = phi ptr [ %i.nq, %._crit_edge703.unr-lcssa ], [ %i.nv, %.lr.ph702.epil ] ; 2 uses
  %.pre827 = load i64, ptr %i.o, align 8, !tbaa !37 ; 2 uses
  %i.ny = add nuw nsw i64 %.2478705, 1            ; 2 uses
  %i.nz = icmp slt i64 %i.ny, %.pre827
  br i1 %i.nz, label %.lr.ph702.preheader, label %.preheader569, !llvm.loop !303

.preheader568:                                    ; preds = %._crit_edge714
  %i.oa = icmp sgt i64 %.pre828, 0
  br i1 %i.oa, label %.lr.ph728, label %.loopexit

.lr.ph728:                                        ; preds = %.preheader568
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !46
  %i.od = getelementptr i8, ptr %i.fa, i64 %i.oc
  %i.oe = load i32, ptr %i.p, align 4, !tbaa !18
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.of
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !46
  %xtraiter1093 = and i64 %i.ih, 3                ; 3 uses
  %i.oi = icmp ult i64 %i.mp, 3
  %unroll_iter1100 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1097.not = icmp eq i64 %xtraiter1093, 0
  %lcmp.mod1099 = icmp ne i64 %xtraiter1093, 0
  br label %.lr.ph723.preheader

.lr.ph713.preheader:                              ; preds = %._crit_edge714, %.lr.ph718
  %.6717 = phi ptr [ %.lcssa987, %.lr.ph718 ], [ %.lcssa988, %._crit_edge714 ] ; 2 uses
  %.3479716 = phi i64 [ 0, %.lr.ph718 ], [ %i.pi, %._crit_edge714 ] ; 2 uses
  %i.oj = mul nsw i64 %i.my, %.3479716
  %i.ok = getelementptr i8, ptr %i.mu, i64 %i.oj
  %i.ol = getelementptr i8, ptr %i.ok, i64 1      ; 3 uses
  store ptr %i.ol, ptr %i.v, align 8, !tbaa !52
  br i1 %i.mz, label %.lr.ph713.epil.preheader, label %.lr.ph713

.lr.ph713:                                        ; preds = %.lr.ph713.preheader, %.lr.ph713
  %i.om = phi ptr [ %i.pc, %.lr.ph713 ], [ %i.ol, %.lr.ph713.preheader ]
  %.7711 = phi ptr [ %i.pa, %.lr.ph713 ], [ %.6717, %.lr.ph713.preheader ] ; 5 uses
  %niter1092 = phi i64 [ %niter1092.next.3, %.lr.ph713 ], [ 0, %.lr.ph713.preheader ]
  %i.on = load i8, ptr %.7711, align 1, !tbaa !47
  store i8 %i.on, ptr %i.om, align 1, !tbaa !47
  %i.oo = getelementptr inbounds nuw i8, ptr %.7711, i64 1
  %i.op = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 4 ; 2 uses
  store ptr %i.oq, ptr %i.v, align 8, !tbaa !52
  %i.or = load i8, ptr %i.oo, align 1, !tbaa !47
  store i8 %i.or, ptr %i.oq, align 1, !tbaa !47
  %i.os = getelementptr inbounds nuw i8, ptr %.7711, i64 2
  %i.ot = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 4 ; 2 uses
  store ptr %i.ou, ptr %i.v, align 8, !tbaa !52
  %i.ov = load i8, ptr %i.os, align 1, !tbaa !47
  store i8 %i.ov, ptr %i.ou, align 1, !tbaa !47
  %i.ow = getelementptr inbounds nuw i8, ptr %.7711, i64 3
  %i.ox = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4 ; 2 uses
  store ptr %i.oy, ptr %i.v, align 8, !tbaa !52
  %i.oz = load i8, ptr %i.ow, align 1, !tbaa !47
  store i8 %i.oz, ptr %i.oy, align 1, !tbaa !47
  %i.pa = getelementptr inbounds nuw i8, ptr %.7711, i64 4 ; 3 uses
  %i.pb = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 4 ; 3 uses
  store ptr %i.pc, ptr %i.v, align 8, !tbaa !52
  %niter1092.next.3 = add nuw nsw i64 %niter1092, 4 ; 2 uses
  %niter1092.ncmp.3 = icmp eq i64 %niter1092.next.3, %unroll_iter1091
  br i1 %niter1092.ncmp.3, label %._crit_edge714.unr-lcssa, label %.lr.ph713, !llvm.loop !304

._crit_edge714.unr-lcssa:                         ; preds = %.lr.ph713
  br i1 %lcmp.mod1088.not, label %._crit_edge714, label %.lr.ph713.epil.preheader

.lr.ph713.epil.preheader:                         ; preds = %._crit_edge714.unr-lcssa, %.lr.ph713.preheader
  %.epil.init1087 = phi ptr [ %i.ol, %.lr.ph713.preheader ], [ %i.pc, %._crit_edge714.unr-lcssa ]
  %.7711.epil.init = phi ptr [ %.6717, %.lr.ph713.preheader ], [ %i.pa, %._crit_edge714.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1090)
  br label %.lr.ph713.epil

.lr.ph713.epil:                                   ; preds = %.lr.ph713.epil, %.lr.ph713.epil.preheader
  %i.pd = phi ptr [ %i.ph, %.lr.ph713.epil ], [ %.epil.init1087, %.lr.ph713.epil.preheader ]
  %.7711.epil = phi ptr [ %i.pf, %.lr.ph713.epil ], [ %.7711.epil.init, %.lr.ph713.epil.preheader ] ; 2 uses
  %epil.iter1085 = phi i64 [ %epil.iter1085.next, %.lr.ph713.epil ], [ 0, %.lr.ph713.epil.preheader ]
  %i.pe = load i8, ptr %.7711.epil, align 1, !tbaa !47
  store i8 %i.pe, ptr %i.pd, align 1, !tbaa !47
  %i.pf = getelementptr inbounds nuw i8, ptr %.7711.epil, i64 1 ; 2 uses
  %i.pg = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4 ; 2 uses
  store ptr %i.ph, ptr %i.v, align 8, !tbaa !52
  %epil.iter1085.next = add i64 %epil.iter1085, 1 ; 2 uses
  %epil.iter1085.cmp.not = icmp eq i64 %epil.iter1085.next, %xtraiter1084
  br i1 %epil.iter1085.cmp.not, label %._crit_edge714, label %.lr.ph713.epil, !llvm.loop !305

._crit_edge714:                                   ; preds = %.lr.ph713.epil, %._crit_edge714.unr-lcssa
  %.lcssa988 = phi ptr [ %i.pa, %._crit_edge714.unr-lcssa ], [ %i.pf, %.lr.ph713.epil ] ; 2 uses
  %.pre828 = load i64, ptr %i.o, align 8, !tbaa !37 ; 2 uses
  %i.pi = add nuw nsw i64 %.3479716, 1            ; 2 uses
  %i.pj = icmp slt i64 %i.pi, %.pre828
  br i1 %i.pj, label %.lr.ph713.preheader, label %.preheader568, !llvm.loop !306

.preheader566:                                    ; preds = %._crit_edge724
  %i.pk = icmp sgt i64 %.pre829, 0
  br i1 %i.pk, label %.lr.ph738, label %.loopexit

.lr.ph738:                                        ; preds = %.preheader566
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !46
  %i.pn = getelementptr i8, ptr %i.fa, i64 %i.pm
  %i.po = load i32, ptr %i.p, align 4, !tbaa !18
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pp
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !46
  %xtraiter1102 = and i64 %i.ih, 3                ; 3 uses
  %i.ps = icmp ult i64 %i.mp, 3
  %unroll_iter1109 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1106.not = icmp eq i64 %xtraiter1102, 0
  %lcmp.mod1108 = icmp ne i64 %xtraiter1102, 0
  br label %.lr.ph733.preheader

.lr.ph723.preheader:                              ; preds = %._crit_edge724, %.lr.ph728
  %.8727 = phi ptr [ %.lcssa988, %.lr.ph728 ], [ %.lcssa989, %._crit_edge724 ] ; 2 uses
  %.4480726 = phi i64 [ 0, %.lr.ph728 ], [ %i.qs, %._crit_edge724 ] ; 2 uses
  %i.pt = mul nsw i64 %i.oh, %.4480726
  %i.pu = getelementptr i8, ptr %i.od, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 2      ; 3 uses
  store ptr %i.pv, ptr %i.v, align 8, !tbaa !52
  br i1 %i.oi, label %.lr.ph723.epil.preheader, label %.lr.ph723

.lr.ph723:                                        ; preds = %.lr.ph723.preheader, %.lr.ph723
  %i.pw = phi ptr [ %i.qm, %.lr.ph723 ], [ %i.pv, %.lr.ph723.preheader ]
  %.9721 = phi ptr [ %i.qk, %.lr.ph723 ], [ %.8727, %.lr.ph723.preheader ] ; 5 uses
  %niter1101 = phi i64 [ %niter1101.next.3, %.lr.ph723 ], [ 0, %.lr.ph723.preheader ]
  %i.px = load i8, ptr %.9721, align 1, !tbaa !47
  store i8 %i.px, ptr %i.pw, align 1, !tbaa !47
  %i.py = getelementptr inbounds nuw i8, ptr %.9721, i64 1
  %i.pz = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 4 ; 2 uses
  store ptr %i.qa, ptr %i.v, align 8, !tbaa !52
  %i.qb = load i8, ptr %i.py, align 1, !tbaa !47
  store i8 %i.qb, ptr %i.qa, align 1, !tbaa !47
  %i.qc = getelementptr inbounds nuw i8, ptr %.9721, i64 2
  %i.qd = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 4 ; 2 uses
  store ptr %i.qe, ptr %i.v, align 8, !tbaa !52
  %i.qf = load i8, ptr %i.qc, align 1, !tbaa !47
  store i8 %i.qf, ptr %i.qe, align 1, !tbaa !47
  %i.qg = getelementptr inbounds nuw i8, ptr %.9721, i64 3
  %i.qh = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 4 ; 2 uses
  store ptr %i.qi, ptr %i.v, align 8, !tbaa !52
  %i.qj = load i8, ptr %i.qg, align 1, !tbaa !47
  store i8 %i.qj, ptr %i.qi, align 1, !tbaa !47
  %i.qk = getelementptr inbounds nuw i8, ptr %.9721, i64 4 ; 3 uses
  %i.ql = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4 ; 3 uses
  store ptr %i.qm, ptr %i.v, align 8, !tbaa !52
  %niter1101.next.3 = add nuw nsw i64 %niter1101, 4 ; 2 uses
  %niter1101.ncmp.3 = icmp eq i64 %niter1101.next.3, %unroll_iter1100
  br i1 %niter1101.ncmp.3, label %._crit_edge724.unr-lcssa, label %.lr.ph723, !llvm.loop !307

._crit_edge724.unr-lcssa:                         ; preds = %.lr.ph723
  br i1 %lcmp.mod1097.not, label %._crit_edge724, label %.lr.ph723.epil.preheader

.lr.ph723.epil.preheader:                         ; preds = %._crit_edge724.unr-lcssa, %.lr.ph723.preheader
  %.epil.init1096 = phi ptr [ %i.pv, %.lr.ph723.preheader ], [ %i.qm, %._crit_edge724.unr-lcssa ]
  %.9721.epil.init = phi ptr [ %.8727, %.lr.ph723.preheader ], [ %i.qk, %._crit_edge724.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1099)
  br label %.lr.ph723.epil

.lr.ph723.epil:                                   ; preds = %.lr.ph723.epil, %.lr.ph723.epil.preheader
  %i.qn = phi ptr [ %i.qr, %.lr.ph723.epil ], [ %.epil.init1096, %.lr.ph723.epil.preheader ]
  %.9721.epil = phi ptr [ %i.qp, %.lr.ph723.epil ], [ %.9721.epil.init, %.lr.ph723.epil.preheader ] ; 2 uses
  %epil.iter1094 = phi i64 [ %epil.iter1094.next, %.lr.ph723.epil ], [ 0, %.lr.ph723.epil.preheader ]
  %i.qo = load i8, ptr %.9721.epil, align 1, !tbaa !47
  store i8 %i.qo, ptr %i.qn, align 1, !tbaa !47
  %i.qp = getelementptr inbounds nuw i8, ptr %.9721.epil, i64 1 ; 2 uses
  %i.qq = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 4 ; 2 uses
  store ptr %i.qr, ptr %i.v, align 8, !tbaa !52
  %epil.iter1094.next = add i64 %epil.iter1094, 1 ; 2 uses
  %epil.iter1094.cmp.not = icmp eq i64 %epil.iter1094.next, %xtraiter1093
  br i1 %epil.iter1094.cmp.not, label %._crit_edge724, label %.lr.ph723.epil, !llvm.loop !308

._crit_edge724:                                   ; preds = %.lr.ph723.epil, %._crit_edge724.unr-lcssa
  %.lcssa989 = phi ptr [ %i.qk, %._crit_edge724.unr-lcssa ], [ %i.qp, %.lr.ph723.epil ] ; 2 uses
  %.pre829 = load i64, ptr %i.o, align 8, !tbaa !37 ; 2 uses
  %i.qs = add nuw nsw i64 %.4480726, 1            ; 2 uses
  %i.qt = icmp slt i64 %i.qs, %.pre829
  br i1 %i.qt, label %.lr.ph723.preheader, label %.preheader566, !llvm.loop !309

.lr.ph733.preheader:                              ; preds = %._crit_edge734, %.lr.ph738
  %.10737 = phi ptr [ %.lcssa989, %.lr.ph738 ], [ %.lcssa990, %._crit_edge734 ] ; 2 uses
  %.5481736 = phi i64 [ 0, %.lr.ph738 ], [ %i.rt, %._crit_edge734 ] ; 2 uses
  %i.qu = mul nsw i64 %i.pr, %.5481736
  %i.qv = getelementptr i8, ptr %i.pn, i64 %i.qu
  %i.qw = getelementptr i8, ptr %i.qv, i64 3      ; 3 uses
  store ptr %i.qw, ptr %i.v, align 8, !tbaa !52
  br i1 %i.ps, label %.lr.ph733.epil.preheader, label %.lr.ph733

.lr.ph733:                                        ; preds = %.lr.ph733.preheader, %.lr.ph733
  %i.qx = phi ptr [ %i.rn, %.lr.ph733 ], [ %i.qw, %.lr.ph733.preheader ]
  %.11731 = phi ptr [ %i.rl, %.lr.ph733 ], [ %.10737, %.lr.ph733.preheader ] ; 5 uses
  %niter1110 = phi i64 [ %niter1110.next.3, %.lr.ph733 ], [ 0, %.lr.ph733.preheader ]
  %i.qy = load i8, ptr %.11731, align 1, !tbaa !47
  store i8 %i.qy, ptr %i.qx, align 1, !tbaa !47
  %i.qz = getelementptr inbounds nuw i8, ptr %.11731, i64 1
  %i.ra = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 4 ; 2 uses
  store ptr %i.rb, ptr %i.v, align 8, !tbaa !52
  %i.rc = load i8, ptr %i.qz, align 1, !tbaa !47
  store i8 %i.rc, ptr %i.rb, align 1, !tbaa !47
  %i.rd = getelementptr inbounds nuw i8, ptr %.11731, i64 2
  %i.re = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4 ; 2 uses
  store ptr %i.rf, ptr %i.v, align 8, !tbaa !52
  %i.rg = load i8, ptr %i.rd, align 1, !tbaa !47
  store i8 %i.rg, ptr %i.rf, align 1, !tbaa !47
  %i.rh = getelementptr inbounds nuw i8, ptr %.11731, i64 3
  %i.ri = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 4 ; 2 uses
  store ptr %i.rj, ptr %i.v, align 8, !tbaa !52
  %i.rk = load i8, ptr %i.rh, align 1, !tbaa !47
  store i8 %i.rk, ptr %i.rj, align 1, !tbaa !47
  %i.rl = getelementptr inbounds nuw i8, ptr %.11731, i64 4 ; 3 uses
  %i.rm = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 4 ; 3 uses
  store ptr %i.rn, ptr %i.v, align 8, !tbaa !52
  %niter1110.next.3 = add nuw nsw i64 %niter1110, 4 ; 2 uses
  %niter1110.ncmp.3 = icmp eq i64 %niter1110.next.3, %unroll_iter1109
  br i1 %niter1110.ncmp.3, label %._crit_edge734.unr-lcssa, label %.lr.ph733, !llvm.loop !310

._crit_edge734.unr-lcssa:                         ; preds = %.lr.ph733
  br i1 %lcmp.mod1106.not, label %._crit_edge734, label %.lr.ph733.epil.preheader

.lr.ph733.epil.preheader:                         ; preds = %._crit_edge734.unr-lcssa, %.lr.ph733.preheader
  %.epil.init1105 = phi ptr [ %i.qw, %.lr.ph733.preheader ], [ %i.rn, %._crit_edge734.unr-lcssa ]
  %.11731.epil.init = phi ptr [ %.10737, %.lr.ph733.preheader ], [ %i.rl, %._crit_edge734.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1108)
  br label %.lr.ph733.epil

.lr.ph733.epil:                                   ; preds = %.lr.ph733.epil, %.lr.ph733.epil.preheader
  %i.ro = phi ptr [ %i.rs, %.lr.ph733.epil ], [ %.epil.init1105, %.lr.ph733.epil.preheader ]
  %.11731.epil = phi ptr [ %i.rq, %.lr.ph733.epil ], [ %.11731.epil.init, %.lr.ph733.epil.preheader ] ; 2 uses
  %epil.iter1103 = phi i64 [ %epil.iter1103.next, %.lr.ph733.epil ], [ 0, %.lr.ph733.epil.preheader ]
  %i.rp = load i8, ptr %.11731.epil, align 1, !tbaa !47
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !47
  %i.rq = getelementptr inbounds nuw i8, ptr %.11731.epil, i64 1 ; 2 uses
  %i.rr = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 4 ; 2 uses
  store ptr %i.rs, ptr %i.v, align 8, !tbaa !52
  %epil.iter1103.next = add i64 %epil.iter1103, 1 ; 2 uses
  %epil.iter1103.cmp.not = icmp eq i64 %epil.iter1103.next, %xtraiter1102
  br i1 %epil.iter1103.cmp.not, label %._crit_edge734, label %.lr.ph733.epil, !llvm.loop !311

._crit_edge734:                                   ; preds = %.lr.ph733.epil, %._crit_edge734.unr-lcssa
  %.lcssa990 = phi ptr [ %i.rl, %._crit_edge734.unr-lcssa ], [ %i.rq, %.lr.ph733.epil ]
  %.pre830 = load i64, ptr %i.o, align 8, !tbaa !37
  %i.rt = add nuw nsw i64 %.5481736, 1            ; 2 uses
  %i.ru = icmp slt i64 %i.rt, %.pre830
  br i1 %i.ru, label %.lr.ph733.preheader, label %.loopexit, !llvm.loop !312

bb.bn:                                            ; preds = %bb.bl, %bb.bl
  %i.rv = load i64, ptr %i.o, align 8, !tbaa !37  ; 9 uses
  %i.rw = icmp sgt i64 %i.rv, 0
  br i1 %i.rw, label %.lr.ph628, label %.loopexit

.lr.ph628:                                        ; preds = %bb.bn
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !46
  %i.rz = getelementptr i8, ptr %i.fa, i64 %i.ry
  %i.sa = load i32, ptr %i.p, align 4, !tbaa !18
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.sb
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !46
  %i.se = add nsw i64 %i.ih, -1                   ; 8 uses
  %xtraiter1005 = and i64 %i.ih, 3                ; 3 uses
  %i.sf = icmp ult i64 %i.se, 3
  %unroll_iter1010 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1007.not = icmp eq i64 %xtraiter1005, 0
  %lcmp.mod1009 = icmp ne i64 %xtraiter1005, 0
  br label %.lr.ph622.preheader

.lr.ph638:                                        ; preds = %._crit_edge623
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !46
  %i.si = getelementptr i8, ptr %i.fa, i64 %i.sh
  %i.sj = load i32, ptr %i.p, align 4, !tbaa !18
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.sk
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !46
  %xtraiter1012 = and i64 %i.ih, 3                ; 3 uses
  %i.sn = icmp ult i64 %i.se, 3
  %unroll_iter1019 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1016.not = icmp eq i64 %xtraiter1012, 0
  %lcmp.mod1018 = icmp ne i64 %xtraiter1012, 0
  br label %.lr.ph633.preheader

.lr.ph622.preheader:                              ; preds = %._crit_edge623, %.lr.ph628
  %.12626 = phi ptr [ %i.if, %.lr.ph628 ], [ %.lcssa979, %._crit_edge623 ] ; 2 uses
  %.6482625 = phi i64 [ 0, %.lr.ph628 ], [ %i.th, %._crit_edge623 ] ; 2 uses
  %i.so = mul nsw i64 %i.sd, %.6482625
  %i.sp = getelementptr i8, ptr %i.rz, i64 %i.so  ; 2 uses
  br i1 %i.sf, label %.lr.ph622.epil.preheader, label %.lr.ph622

.lr.ph622:                                        ; preds = %.lr.ph622.preheader, %.lr.ph622
  %i.sq = phi ptr [ %i.tc, %.lr.ph622 ], [ %i.sp, %.lr.ph622.preheader ] ; 5 uses
  %.13620 = phi ptr [ %i.tb, %.lr.ph622 ], [ %.12626, %.lr.ph622.preheader ] ; 5 uses
  %niter1011 = phi i64 [ %niter1011.next.3, %.lr.ph622 ], [ 0, %.lr.ph622.preheader ]
  %i.sr = load i8, ptr %.13620, align 1, !tbaa !47
  store i8 %i.sr, ptr %i.sq, align 1, !tbaa !47
  %i.ss = getelementptr inbounds nuw i8, ptr %.13620, i64 1
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 2 uses
  store ptr %i.st, ptr %i.v, align 8, !tbaa !52
  %i.su = load i8, ptr %i.ss, align 1, !tbaa !47
  store i8 %i.su, ptr %i.st, align 1, !tbaa !47
  %i.sv = getelementptr inbounds nuw i8, ptr %.13620, i64 2
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 2 uses
  store ptr %i.sw, ptr %i.v, align 8, !tbaa !52
  %i.sx = load i8, ptr %i.sv, align 1, !tbaa !47
  store i8 %i.sx, ptr %i.sw, align 1, !tbaa !47
  %i.sy = getelementptr inbounds nuw i8, ptr %.13620, i64 3
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sq, i64 24 ; 2 uses
  store ptr %i.sz, ptr %i.v, align 8, !tbaa !52
  %i.ta = load i8, ptr %i.sy, align 1, !tbaa !47
  store i8 %i.ta, ptr %i.sz, align 1, !tbaa !47
  %i.tb = getelementptr inbounds nuw i8, ptr %.13620, i64 4 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sq, i64 32 ; 3 uses
  store ptr %i.tc, ptr %i.v, align 8, !tbaa !52
  %niter1011.next.3 = add nuw nsw i64 %niter1011, 4 ; 2 uses
  %niter1011.ncmp.3 = icmp eq i64 %niter1011.next.3, %unroll_iter1010
  br i1 %niter1011.ncmp.3, label %._crit_edge623.unr-lcssa, label %.lr.ph622, !llvm.loop !313

._crit_edge623.unr-lcssa:                         ; preds = %.lr.ph622
  br i1 %lcmp.mod1007.not, label %._crit_edge623, label %.lr.ph622.epil.preheader

.lr.ph622.epil.preheader:                         ; preds = %._crit_edge623.unr-lcssa, %.lr.ph622.preheader
  %.epil.init = phi ptr [ %i.sp, %.lr.ph622.preheader ], [ %i.tc, %._crit_edge623.unr-lcssa ]
  %.13620.epil.init = phi ptr [ %.12626, %.lr.ph622.preheader ], [ %i.tb, %._crit_edge623.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1009)
  br label %.lr.ph622.epil

.lr.ph622.epil:                                   ; preds = %.lr.ph622.epil, %.lr.ph622.epil.preheader
  %i.td = phi ptr [ %i.tg, %.lr.ph622.epil ], [ %.epil.init, %.lr.ph622.epil.preheader ] ; 2 uses
  %.13620.epil = phi ptr [ %i.tf, %.lr.ph622.epil ], [ %.13620.epil.init, %.lr.ph622.epil.preheader ] ; 2 uses
  %epil.iter1006 = phi i64 [ %epil.iter1006.next, %.lr.ph622.epil ], [ 0, %.lr.ph622.epil.preheader ]
  %i.te = load i8, ptr %.13620.epil, align 1, !tbaa !47
  store i8 %i.te, ptr %i.td, align 1, !tbaa !47
  %i.tf = getelementptr inbounds nuw i8, ptr %.13620.epil, i64 1 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  store ptr %i.tg, ptr %i.v, align 8, !tbaa !52
  %epil.iter1006.next = add i64 %epil.iter1006, 1 ; 2 uses
  %epil.iter1006.cmp.not = icmp eq i64 %epil.iter1006.next, %xtraiter1005
  br i1 %epil.iter1006.cmp.not, label %._crit_edge623, label %.lr.ph622.epil, !llvm.loop !314

._crit_edge623:                                   ; preds = %.lr.ph622.epil, %._crit_edge623.unr-lcssa
  %.lcssa979 = phi ptr [ %i.tb, %._crit_edge623.unr-lcssa ], [ %i.tf, %.lr.ph622.epil ] ; 2 uses
  %i.th = add nuw nsw i64 %.6482625, 1            ; 2 uses
  %i.ti = icmp slt i64 %i.th, %i.rv
  br i1 %i.ti, label %.lr.ph622.preheader, label %.lr.ph638, !llvm.loop !315

.lr.ph648:                                        ; preds = %._crit_edge634
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !46
  %i.tl = getelementptr i8, ptr %i.fa, i64 %i.tk
  %i.tm = load i32, ptr %i.p, align 4, !tbaa !18
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.tn
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !46
  %xtraiter1021 = and i64 %i.ih, 3                ; 3 uses
  %i.tq = icmp ult i64 %i.se, 3
  %unroll_iter1028 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1025.not = icmp eq i64 %xtraiter1021, 0
  %lcmp.mod1027 = icmp ne i64 %xtraiter1021, 0
  br label %.lr.ph643.preheader

.lr.ph633.preheader:                              ; preds = %._crit_edge634, %.lr.ph638
  %.14637 = phi ptr [ %.lcssa979, %.lr.ph638 ], [ %.lcssa980, %._crit_edge634 ] ; 2 uses
  %.7483636 = phi i64 [ 0, %.lr.ph638 ], [ %i.ul, %._crit_edge634 ] ; 2 uses
  %i.tr = mul nsw i64 %i.sm, %.7483636
  %i.ts = getelementptr i8, ptr %i.si, i64 %i.tr
  %i.tt = getelementptr i8, ptr %i.ts, i64 1      ; 2 uses
  br i1 %i.sn, label %.lr.ph633.epil.preheader, label %.lr.ph633

.lr.ph633:                                        ; preds = %.lr.ph633.preheader, %.lr.ph633
  %i.tu = phi ptr [ %i.ug, %.lr.ph633 ], [ %i.tt, %.lr.ph633.preheader ] ; 5 uses
  %.15631 = phi ptr [ %i.uf, %.lr.ph633 ], [ %.14637, %.lr.ph633.preheader ] ; 5 uses
  %niter1020 = phi i64 [ %niter1020.next.3, %.lr.ph633 ], [ 0, %.lr.ph633.preheader ]
  %i.tv = load i8, ptr %.15631, align 1, !tbaa !47
  store i8 %i.tv, ptr %i.tu, align 1, !tbaa !47
  %i.tw = getelementptr inbounds nuw i8, ptr %.15631, i64 1
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 8 ; 2 uses
  store ptr %i.tx, ptr %i.v, align 8, !tbaa !52
  %i.ty = load i8, ptr %i.tw, align 1, !tbaa !47
  store i8 %i.ty, ptr %i.tx, align 1, !tbaa !47
  %i.tz = getelementptr inbounds nuw i8, ptr %.15631, i64 2
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 16 ; 2 uses
  store ptr %i.ua, ptr %i.v, align 8, !tbaa !52
  %i.ub = load i8, ptr %i.tz, align 1, !tbaa !47
  store i8 %i.ub, ptr %i.ua, align 1, !tbaa !47
  %i.uc = getelementptr inbounds nuw i8, ptr %.15631, i64 3
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tu, i64 24 ; 2 uses
  store ptr %i.ud, ptr %i.v, align 8, !tbaa !52
  %i.ue = load i8, ptr %i.uc, align 1, !tbaa !47
  store i8 %i.ue, ptr %i.ud, align 1, !tbaa !47
  %i.uf = getelementptr inbounds nuw i8, ptr %.15631, i64 4 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tu, i64 32 ; 3 uses
  store ptr %i.ug, ptr %i.v, align 8, !tbaa !52
  %niter1020.next.3 = add nuw nsw i64 %niter1020, 4 ; 2 uses
  %niter1020.ncmp.3 = icmp eq i64 %niter1020.next.3, %unroll_iter1019
  br i1 %niter1020.ncmp.3, label %._crit_edge634.unr-lcssa, label %.lr.ph633, !llvm.loop !316

._crit_edge634.unr-lcssa:                         ; preds = %.lr.ph633
  br i1 %lcmp.mod1016.not, label %._crit_edge634, label %.lr.ph633.epil.preheader

.lr.ph633.epil.preheader:                         ; preds = %._crit_edge634.unr-lcssa, %.lr.ph633.preheader
  %.epil.init1015 = phi ptr [ %i.tt, %.lr.ph633.preheader ], [ %i.ug, %._crit_edge634.unr-lcssa ]
  %.15631.epil.init = phi ptr [ %.14637, %.lr.ph633.preheader ], [ %i.uf, %._crit_edge634.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1018)
  br label %.lr.ph633.epil

.lr.ph633.epil:                                   ; preds = %.lr.ph633.epil, %.lr.ph633.epil.preheader
  %i.uh = phi ptr [ %i.uk, %.lr.ph633.epil ], [ %.epil.init1015, %.lr.ph633.epil.preheader ] ; 2 uses
  %.15631.epil = phi ptr [ %i.uj, %.lr.ph633.epil ], [ %.15631.epil.init, %.lr.ph633.epil.preheader ] ; 2 uses
  %epil.iter1013 = phi i64 [ %epil.iter1013.next, %.lr.ph633.epil ], [ 0, %.lr.ph633.epil.preheader ]
  %i.ui = load i8, ptr %.15631.epil, align 1, !tbaa !47
  store i8 %i.ui, ptr %i.uh, align 1, !tbaa !47
  %i.uj = getelementptr inbounds nuw i8, ptr %.15631.epil, i64 1 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 8 ; 2 uses
  store ptr %i.uk, ptr %i.v, align 8, !tbaa !52
  %epil.iter1013.next = add i64 %epil.iter1013, 1 ; 2 uses
  %epil.iter1013.cmp.not = icmp eq i64 %epil.iter1013.next, %xtraiter1012
  br i1 %epil.iter1013.cmp.not, label %._crit_edge634, label %.lr.ph633.epil, !llvm.loop !317

._crit_edge634:                                   ; preds = %.lr.ph633.epil, %._crit_edge634.unr-lcssa
  %.lcssa980 = phi ptr [ %i.uf, %._crit_edge634.unr-lcssa ], [ %i.uj, %.lr.ph633.epil ] ; 2 uses
  %i.ul = add nuw nsw i64 %.7483636, 1            ; 2 uses
  %i.um = icmp slt i64 %i.ul, %i.rv
  br i1 %i.um, label %.lr.ph633.preheader, label %.lr.ph648, !llvm.loop !318

.lr.ph658:                                        ; preds = %._crit_edge644
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !46
  %i.up = getelementptr i8, ptr %i.fa, i64 %i.uo
  %i.uq = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ur
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !46
  %xtraiter1030 = and i64 %i.ih, 3                ; 3 uses
  %i.uu = icmp ult i64 %i.se, 3
  %unroll_iter1037 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1034.not = icmp eq i64 %xtraiter1030, 0
  %lcmp.mod1036 = icmp ne i64 %xtraiter1030, 0
  br label %.lr.ph653.preheader

.lr.ph643.preheader:                              ; preds = %._crit_edge644, %.lr.ph648
  %.16647 = phi ptr [ %.lcssa980, %.lr.ph648 ], [ %.lcssa981, %._crit_edge644 ] ; 2 uses
  %.8484646 = phi i64 [ 0, %.lr.ph648 ], [ %i.vp, %._crit_edge644 ] ; 2 uses
  %i.uv = mul nsw i64 %i.tp, %.8484646
  %i.uw = getelementptr i8, ptr %i.tl, i64 %i.uv
  %i.ux = getelementptr i8, ptr %i.uw, i64 2      ; 2 uses
  br i1 %i.tq, label %.lr.ph643.epil.preheader, label %.lr.ph643

.lr.ph643:                                        ; preds = %.lr.ph643.preheader, %.lr.ph643
  %i.uy = phi ptr [ %i.vk, %.lr.ph643 ], [ %i.ux, %.lr.ph643.preheader ] ; 5 uses
  %.17641 = phi ptr [ %i.vj, %.lr.ph643 ], [ %.16647, %.lr.ph643.preheader ] ; 5 uses
  %niter1029 = phi i64 [ %niter1029.next.3, %.lr.ph643 ], [ 0, %.lr.ph643.preheader ]
  %i.uz = load i8, ptr %.17641, align 1, !tbaa !47
  store i8 %i.uz, ptr %i.uy, align 1, !tbaa !47
  %i.va = getelementptr inbounds nuw i8, ptr %.17641, i64 1
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 8 ; 2 uses
  store ptr %i.vb, ptr %i.v, align 8, !tbaa !52
  %i.vc = load i8, ptr %i.va, align 1, !tbaa !47
  store i8 %i.vc, ptr %i.vb, align 1, !tbaa !47
  %i.vd = getelementptr inbounds nuw i8, ptr %.17641, i64 2
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uy, i64 16 ; 2 uses
  store ptr %i.ve, ptr %i.v, align 8, !tbaa !52
  %i.vf = load i8, ptr %i.vd, align 1, !tbaa !47
  store i8 %i.vf, ptr %i.ve, align 1, !tbaa !47
  %i.vg = getelementptr inbounds nuw i8, ptr %.17641, i64 3
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 24 ; 2 uses
  store ptr %i.vh, ptr %i.v, align 8, !tbaa !52
  %i.vi = load i8, ptr %i.vg, align 1, !tbaa !47
  store i8 %i.vi, ptr %i.vh, align 1, !tbaa !47
  %i.vj = getelementptr inbounds nuw i8, ptr %.17641, i64 4 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uy, i64 32 ; 3 uses
  store ptr %i.vk, ptr %i.v, align 8, !tbaa !52
  %niter1029.next.3 = add nuw nsw i64 %niter1029, 4 ; 2 uses
  %niter1029.ncmp.3 = icmp eq i64 %niter1029.next.3, %unroll_iter1028
  br i1 %niter1029.ncmp.3, label %._crit_edge644.unr-lcssa, label %.lr.ph643, !llvm.loop !319

._crit_edge644.unr-lcssa:                         ; preds = %.lr.ph643
  br i1 %lcmp.mod1025.not, label %._crit_edge644, label %.lr.ph643.epil.preheader

.lr.ph643.epil.preheader:                         ; preds = %._crit_edge644.unr-lcssa, %.lr.ph643.preheader
  %.epil.init1024 = phi ptr [ %i.ux, %.lr.ph643.preheader ], [ %i.vk, %._crit_edge644.unr-lcssa ]
  %.17641.epil.init = phi ptr [ %.16647, %.lr.ph643.preheader ], [ %i.vj, %._crit_edge644.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1027)
  br label %.lr.ph643.epil

.lr.ph643.epil:                                   ; preds = %.lr.ph643.epil, %.lr.ph643.epil.preheader
  %i.vl = phi ptr [ %i.vo, %.lr.ph643.epil ], [ %.epil.init1024, %.lr.ph643.epil.preheader ] ; 2 uses
  %.17641.epil = phi ptr [ %i.vn, %.lr.ph643.epil ], [ %.17641.epil.init, %.lr.ph643.epil.preheader ] ; 2 uses
  %epil.iter1022 = phi i64 [ %epil.iter1022.next, %.lr.ph643.epil ], [ 0, %.lr.ph643.epil.preheader ]
  %i.vm = load i8, ptr %.17641.epil, align 1, !tbaa !47
  store i8 %i.vm, ptr %i.vl, align 1, !tbaa !47
  %i.vn = getelementptr inbounds nuw i8, ptr %.17641.epil, i64 1 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 8 ; 2 uses
  store ptr %i.vo, ptr %i.v, align 8, !tbaa !52
  %epil.iter1022.next = add i64 %epil.iter1022, 1 ; 2 uses
  %epil.iter1022.cmp.not = icmp eq i64 %epil.iter1022.next, %xtraiter1021
  br i1 %epil.iter1022.cmp.not, label %._crit_edge644, label %.lr.ph643.epil, !llvm.loop !320

._crit_edge644:                                   ; preds = %.lr.ph643.epil, %._crit_edge644.unr-lcssa
  %.lcssa981 = phi ptr [ %i.vj, %._crit_edge644.unr-lcssa ], [ %i.vn, %.lr.ph643.epil ] ; 2 uses
  %i.vp = add nuw nsw i64 %.8484646, 1            ; 2 uses
  %i.vq = icmp slt i64 %i.vp, %i.rv
  br i1 %i.vq, label %.lr.ph643.preheader, label %.lr.ph658, !llvm.loop !321

.lr.ph668:                                        ; preds = %._crit_edge654
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !46
  %i.vt = getelementptr i8, ptr %i.fa, i64 %i.vs
  %i.vu = load i32, ptr %i.p, align 4, !tbaa !18
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.vv
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !46
  %xtraiter1039 = and i64 %i.ih, 3                ; 3 uses
  %i.vy = icmp ult i64 %i.se, 3
  %unroll_iter1046 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1043.not = icmp eq i64 %xtraiter1039, 0
  %lcmp.mod1045 = icmp ne i64 %xtraiter1039, 0
  br label %.lr.ph663.preheader

.lr.ph653.preheader:                              ; preds = %._crit_edge654, %.lr.ph658
  %.18657 = phi ptr [ %.lcssa981, %.lr.ph658 ], [ %.lcssa982, %._crit_edge654 ] ; 2 uses
  %.9485656 = phi i64 [ 0, %.lr.ph658 ], [ %i.wt, %._crit_edge654 ] ; 2 uses
  %i.vz = mul nsw i64 %i.ut, %.9485656
  %i.wa = getelementptr i8, ptr %i.up, i64 %i.vz
  %i.wb = getelementptr i8, ptr %i.wa, i64 3      ; 2 uses
  br i1 %i.uu, label %.lr.ph653.epil.preheader, label %.lr.ph653

.lr.ph653:                                        ; preds = %.lr.ph653.preheader, %.lr.ph653
  %i.wc = phi ptr [ %i.wo, %.lr.ph653 ], [ %i.wb, %.lr.ph653.preheader ] ; 5 uses
  %.19651 = phi ptr [ %i.wn, %.lr.ph653 ], [ %.18657, %.lr.ph653.preheader ] ; 5 uses
  %niter1038 = phi i64 [ %niter1038.next.3, %.lr.ph653 ], [ 0, %.lr.ph653.preheader ]
  %i.wd = load i8, ptr %.19651, align 1, !tbaa !47
  store i8 %i.wd, ptr %i.wc, align 1, !tbaa !47
  %i.we = getelementptr inbounds nuw i8, ptr %.19651, i64 1
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 8 ; 2 uses
  store ptr %i.wf, ptr %i.v, align 8, !tbaa !52
  %i.wg = load i8, ptr %i.we, align 1, !tbaa !47
  store i8 %i.wg, ptr %i.wf, align 1, !tbaa !47
  %i.wh = getelementptr inbounds nuw i8, ptr %.19651, i64 2
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wc, i64 16 ; 2 uses
  store ptr %i.wi, ptr %i.v, align 8, !tbaa !52
  %i.wj = load i8, ptr %i.wh, align 1, !tbaa !47
  store i8 %i.wj, ptr %i.wi, align 1, !tbaa !47
  %i.wk = getelementptr inbounds nuw i8, ptr %.19651, i64 3
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wc, i64 24 ; 2 uses
  store ptr %i.wl, ptr %i.v, align 8, !tbaa !52
  %i.wm = load i8, ptr %i.wk, align 1, !tbaa !47
  store i8 %i.wm, ptr %i.wl, align 1, !tbaa !47
  %i.wn = getelementptr inbounds nuw i8, ptr %.19651, i64 4 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wc, i64 32 ; 3 uses
  store ptr %i.wo, ptr %i.v, align 8, !tbaa !52
  %niter1038.next.3 = add nuw nsw i64 %niter1038, 4 ; 2 uses
  %niter1038.ncmp.3 = icmp eq i64 %niter1038.next.3, %unroll_iter1037
  br i1 %niter1038.ncmp.3, label %._crit_edge654.unr-lcssa, label %.lr.ph653, !llvm.loop !322

._crit_edge654.unr-lcssa:                         ; preds = %.lr.ph653
  br i1 %lcmp.mod1034.not, label %._crit_edge654, label %.lr.ph653.epil.preheader

.lr.ph653.epil.preheader:                         ; preds = %._crit_edge654.unr-lcssa, %.lr.ph653.preheader
  %.epil.init1033 = phi ptr [ %i.wb, %.lr.ph653.preheader ], [ %i.wo, %._crit_edge654.unr-lcssa ]
  %.19651.epil.init = phi ptr [ %.18657, %.lr.ph653.preheader ], [ %i.wn, %._crit_edge654.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1036)
  br label %.lr.ph653.epil

.lr.ph653.epil:                                   ; preds = %.lr.ph653.epil, %.lr.ph653.epil.preheader
  %i.wp = phi ptr [ %i.ws, %.lr.ph653.epil ], [ %.epil.init1033, %.lr.ph653.epil.preheader ] ; 2 uses
  %.19651.epil = phi ptr [ %i.wr, %.lr.ph653.epil ], [ %.19651.epil.init, %.lr.ph653.epil.preheader ] ; 2 uses
  %epil.iter1031 = phi i64 [ %epil.iter1031.next, %.lr.ph653.epil ], [ 0, %.lr.ph653.epil.preheader ]
  %i.wq = load i8, ptr %.19651.epil, align 1, !tbaa !47
  store i8 %i.wq, ptr %i.wp, align 1, !tbaa !47
  %i.wr = getelementptr inbounds nuw i8, ptr %.19651.epil, i64 1 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 8 ; 2 uses
  store ptr %i.ws, ptr %i.v, align 8, !tbaa !52
  %epil.iter1031.next = add i64 %epil.iter1031, 1 ; 2 uses
  %epil.iter1031.cmp.not = icmp eq i64 %epil.iter1031.next, %xtraiter1030
  br i1 %epil.iter1031.cmp.not, label %._crit_edge654, label %.lr.ph653.epil, !llvm.loop !323

._crit_edge654:                                   ; preds = %.lr.ph653.epil, %._crit_edge654.unr-lcssa
  %.lcssa982 = phi ptr [ %i.wn, %._crit_edge654.unr-lcssa ], [ %i.wr, %.lr.ph653.epil ] ; 2 uses
  %i.wt = add nuw nsw i64 %.9485656, 1            ; 2 uses
  %i.wu = icmp slt i64 %i.wt, %i.rv
  br i1 %i.wu, label %.lr.ph653.preheader, label %.lr.ph668, !llvm.loop !324

.lr.ph678:                                        ; preds = %._crit_edge664
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !46
  %i.wx = getelementptr i8, ptr %i.fa, i64 %i.ww
  %i.wy = load i32, ptr %i.p, align 4, !tbaa !18
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.wz
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !46
  %xtraiter1048 = and i64 %i.ih, 3                ; 3 uses
  %i.xc = icmp ult i64 %i.se, 3
  %unroll_iter1055 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1052.not = icmp eq i64 %xtraiter1048, 0
  %lcmp.mod1054 = icmp ne i64 %xtraiter1048, 0
  br label %.lr.ph673.preheader

.lr.ph663.preheader:                              ; preds = %._crit_edge664, %.lr.ph668
  %.20667 = phi ptr [ %.lcssa982, %.lr.ph668 ], [ %.lcssa983, %._crit_edge664 ] ; 2 uses
  %.10486666 = phi i64 [ 0, %.lr.ph668 ], [ %i.xx, %._crit_edge664 ] ; 2 uses
  %i.xd = mul nsw i64 %i.vx, %.10486666
  %i.xe = getelementptr i8, ptr %i.vt, i64 %i.xd
  %i.xf = getelementptr i8, ptr %i.xe, i64 4      ; 2 uses
  br i1 %i.vy, label %.lr.ph663.epil.preheader, label %.lr.ph663

.lr.ph663:                                        ; preds = %.lr.ph663.preheader, %.lr.ph663
  %i.xg = phi ptr [ %i.xs, %.lr.ph663 ], [ %i.xf, %.lr.ph663.preheader ] ; 5 uses
  %.21661 = phi ptr [ %i.xr, %.lr.ph663 ], [ %.20667, %.lr.ph663.preheader ] ; 5 uses
  %niter1047 = phi i64 [ %niter1047.next.3, %.lr.ph663 ], [ 0, %.lr.ph663.preheader ]
  %i.xh = load i8, ptr %.21661, align 1, !tbaa !47
  store i8 %i.xh, ptr %i.xg, align 1, !tbaa !47
  %i.xi = getelementptr inbounds nuw i8, ptr %.21661, i64 1
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xg, i64 8 ; 2 uses
  store ptr %i.xj, ptr %i.v, align 8, !tbaa !52
  %i.xk = load i8, ptr %i.xi, align 1, !tbaa !47
  store i8 %i.xk, ptr %i.xj, align 1, !tbaa !47
  %i.xl = getelementptr inbounds nuw i8, ptr %.21661, i64 2
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xg, i64 16 ; 2 uses
  store ptr %i.xm, ptr %i.v, align 8, !tbaa !52
  %i.xn = load i8, ptr %i.xl, align 1, !tbaa !47
  store i8 %i.xn, ptr %i.xm, align 1, !tbaa !47
  %i.xo = getelementptr inbounds nuw i8, ptr %.21661, i64 3
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xg, i64 24 ; 2 uses
  store ptr %i.xp, ptr %i.v, align 8, !tbaa !52
  %i.xq = load i8, ptr %i.xo, align 1, !tbaa !47
  store i8 %i.xq, ptr %i.xp, align 1, !tbaa !47
  %i.xr = getelementptr inbounds nuw i8, ptr %.21661, i64 4 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xg, i64 32 ; 3 uses
  store ptr %i.xs, ptr %i.v, align 8, !tbaa !52
  %niter1047.next.3 = add nuw nsw i64 %niter1047, 4 ; 2 uses
  %niter1047.ncmp.3 = icmp eq i64 %niter1047.next.3, %unroll_iter1046
  br i1 %niter1047.ncmp.3, label %._crit_edge664.unr-lcssa, label %.lr.ph663, !llvm.loop !325

._crit_edge664.unr-lcssa:                         ; preds = %.lr.ph663
  br i1 %lcmp.mod1043.not, label %._crit_edge664, label %.lr.ph663.epil.preheader

.lr.ph663.epil.preheader:                         ; preds = %._crit_edge664.unr-lcssa, %.lr.ph663.preheader
  %.epil.init1042 = phi ptr [ %i.xf, %.lr.ph663.preheader ], [ %i.xs, %._crit_edge664.unr-lcssa ]
  %.21661.epil.init = phi ptr [ %.20667, %.lr.ph663.preheader ], [ %i.xr, %._crit_edge664.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1045)
  br label %.lr.ph663.epil

.lr.ph663.epil:                                   ; preds = %.lr.ph663.epil, %.lr.ph663.epil.preheader
  %i.xt = phi ptr [ %i.xw, %.lr.ph663.epil ], [ %.epil.init1042, %.lr.ph663.epil.preheader ] ; 2 uses
  %.21661.epil = phi ptr [ %i.xv, %.lr.ph663.epil ], [ %.21661.epil.init, %.lr.ph663.epil.preheader ] ; 2 uses
  %epil.iter1040 = phi i64 [ %epil.iter1040.next, %.lr.ph663.epil ], [ 0, %.lr.ph663.epil.preheader ]
  %i.xu = load i8, ptr %.21661.epil, align 1, !tbaa !47
  store i8 %i.xu, ptr %i.xt, align 1, !tbaa !47
  %i.xv = getelementptr inbounds nuw i8, ptr %.21661.epil, i64 1 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 8 ; 2 uses
  store ptr %i.xw, ptr %i.v, align 8, !tbaa !52
  %epil.iter1040.next = add i64 %epil.iter1040, 1 ; 2 uses
  %epil.iter1040.cmp.not = icmp eq i64 %epil.iter1040.next, %xtraiter1039
  br i1 %epil.iter1040.cmp.not, label %._crit_edge664, label %.lr.ph663.epil, !llvm.loop !326

._crit_edge664:                                   ; preds = %.lr.ph663.epil, %._crit_edge664.unr-lcssa
  %.lcssa983 = phi ptr [ %i.xr, %._crit_edge664.unr-lcssa ], [ %i.xv, %.lr.ph663.epil ] ; 2 uses
  %i.xx = add nuw nsw i64 %.10486666, 1           ; 2 uses
  %i.xy = icmp slt i64 %i.xx, %i.rv
  br i1 %i.xy, label %.lr.ph663.preheader, label %.lr.ph678, !llvm.loop !327

.lr.ph688:                                        ; preds = %._crit_edge674
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !46
  %i.yb = getelementptr i8, ptr %i.fa, i64 %i.ya
  %i.yc = load i32, ptr %i.p, align 4, !tbaa !18
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.yd
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !46
  %xtraiter1057 = and i64 %i.ih, 3                ; 3 uses
  %i.yg = icmp ult i64 %i.se, 3
  %unroll_iter1064 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1061.not = icmp eq i64 %xtraiter1057, 0
  %lcmp.mod1063 = icmp ne i64 %xtraiter1057, 0
  br label %.lr.ph683.preheader

.lr.ph673.preheader:                              ; preds = %._crit_edge674, %.lr.ph678
  %.22677 = phi ptr [ %.lcssa983, %.lr.ph678 ], [ %.lcssa984, %._crit_edge674 ] ; 2 uses
  %.11487676 = phi i64 [ 0, %.lr.ph678 ], [ %i.zb, %._crit_edge674 ] ; 2 uses
  %i.yh = mul nsw i64 %i.xb, %.11487676
  %i.yi = getelementptr i8, ptr %i.wx, i64 %i.yh
  %i.yj = getelementptr i8, ptr %i.yi, i64 5      ; 2 uses
  br i1 %i.xc, label %.lr.ph673.epil.preheader, label %.lr.ph673

.lr.ph673:                                        ; preds = %.lr.ph673.preheader, %.lr.ph673
  %i.yk = phi ptr [ %i.yw, %.lr.ph673 ], [ %i.yj, %.lr.ph673.preheader ] ; 5 uses
  %.23671 = phi ptr [ %i.yv, %.lr.ph673 ], [ %.22677, %.lr.ph673.preheader ] ; 5 uses
  %niter1056 = phi i64 [ %niter1056.next.3, %.lr.ph673 ], [ 0, %.lr.ph673.preheader ]
  %i.yl = load i8, ptr %.23671, align 1, !tbaa !47
  store i8 %i.yl, ptr %i.yk, align 1, !tbaa !47
  %i.ym = getelementptr inbounds nuw i8, ptr %.23671, i64 1
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  store ptr %i.yn, ptr %i.v, align 8, !tbaa !52
  %i.yo = load i8, ptr %i.ym, align 1, !tbaa !47
  store i8 %i.yo, ptr %i.yn, align 1, !tbaa !47
  %i.yp = getelementptr inbounds nuw i8, ptr %.23671, i64 2
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yk, i64 16 ; 2 uses
  store ptr %i.yq, ptr %i.v, align 8, !tbaa !52
  %i.yr = load i8, ptr %i.yp, align 1, !tbaa !47
  store i8 %i.yr, ptr %i.yq, align 1, !tbaa !47
  %i.ys = getelementptr inbounds nuw i8, ptr %.23671, i64 3
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yk, i64 24 ; 2 uses
  store ptr %i.yt, ptr %i.v, align 8, !tbaa !52
  %i.yu = load i8, ptr %i.ys, align 1, !tbaa !47
  store i8 %i.yu, ptr %i.yt, align 1, !tbaa !47
  %i.yv = getelementptr inbounds nuw i8, ptr %.23671, i64 4 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yk, i64 32 ; 3 uses
  store ptr %i.yw, ptr %i.v, align 8, !tbaa !52
  %niter1056.next.3 = add nuw nsw i64 %niter1056, 4 ; 2 uses
  %niter1056.ncmp.3 = icmp eq i64 %niter1056.next.3, %unroll_iter1055
  br i1 %niter1056.ncmp.3, label %._crit_edge674.unr-lcssa, label %.lr.ph673, !llvm.loop !328

._crit_edge674.unr-lcssa:                         ; preds = %.lr.ph673
  br i1 %lcmp.mod1052.not, label %._crit_edge674, label %.lr.ph673.epil.preheader

.lr.ph673.epil.preheader:                         ; preds = %._crit_edge674.unr-lcssa, %.lr.ph673.preheader
  %.epil.init1051 = phi ptr [ %i.yj, %.lr.ph673.preheader ], [ %i.yw, %._crit_edge674.unr-lcssa ]
  %.23671.epil.init = phi ptr [ %.22677, %.lr.ph673.preheader ], [ %i.yv, %._crit_edge674.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1054)
  br label %.lr.ph673.epil

.lr.ph673.epil:                                   ; preds = %.lr.ph673.epil, %.lr.ph673.epil.preheader
  %i.yx = phi ptr [ %i.za, %.lr.ph673.epil ], [ %.epil.init1051, %.lr.ph673.epil.preheader ] ; 2 uses
  %.23671.epil = phi ptr [ %i.yz, %.lr.ph673.epil ], [ %.23671.epil.init, %.lr.ph673.epil.preheader ] ; 2 uses
  %epil.iter1049 = phi i64 [ %epil.iter1049.next, %.lr.ph673.epil ], [ 0, %.lr.ph673.epil.preheader ]
  %i.yy = load i8, ptr %.23671.epil, align 1, !tbaa !47
  store i8 %i.yy, ptr %i.yx, align 1, !tbaa !47
  %i.yz = getelementptr inbounds nuw i8, ptr %.23671.epil, i64 1 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 8 ; 2 uses
  store ptr %i.za, ptr %i.v, align 8, !tbaa !52
  %epil.iter1049.next = add i64 %epil.iter1049, 1 ; 2 uses
  %epil.iter1049.cmp.not = icmp eq i64 %epil.iter1049.next, %xtraiter1048
  br i1 %epil.iter1049.cmp.not, label %._crit_edge674, label %.lr.ph673.epil, !llvm.loop !329

._crit_edge674:                                   ; preds = %.lr.ph673.epil, %._crit_edge674.unr-lcssa
  %.lcssa984 = phi ptr [ %i.yv, %._crit_edge674.unr-lcssa ], [ %i.yz, %.lr.ph673.epil ] ; 2 uses
  %i.zb = add nuw nsw i64 %.11487676, 1           ; 2 uses
  %i.zc = icmp slt i64 %i.zb, %i.rv
  br i1 %i.zc, label %.lr.ph673.preheader, label %.lr.ph688, !llvm.loop !330

.lr.ph698:                                        ; preds = %._crit_edge684
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.2495760
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !46
  %i.zf = getelementptr i8, ptr %i.fa, i64 %i.ze
  %i.zg = load i32, ptr %i.p, align 4, !tbaa !18
  %i.zh = sext i32 %i.zg to i64
  %i.zi = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.zh
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !46
  %xtraiter1066 = and i64 %i.ih, 3                ; 3 uses
  %i.zk = icmp ult i64 %i.se, 3
  %unroll_iter1073 = and i64 %i.ih, 9223372036854775804
  %lcmp.mod1070.not = icmp eq i64 %xtraiter1066, 0
  %lcmp.mod1072 = icmp ne i64 %xtraiter1066, 0
  br label %.lr.ph693.preheader

.lr.ph683.preheader:                              ; preds = %._crit_edge684, %.lr.ph688
  %.24687 = phi ptr [ %.lcssa984, %.lr.ph688 ], [ %.lcssa985, %._crit_edge684 ] ; 2 uses
  %.12488686 = phi i64 [ 0, %.lr.ph688 ], [ %i.aaf, %._crit_edge684 ] ; 2 uses
  %i.zl = mul nsw i64 %i.yf, %.12488686
  %i.zm = getelementptr i8, ptr %i.yb, i64 %i.zl
  %i.zn = getelementptr i8, ptr %i.zm, i64 6      ; 2 uses
  br i1 %i.yg, label %.lr.ph683.epil.preheader, label %.lr.ph683

.lr.ph683:                                        ; preds = %.lr.ph683.preheader, %.lr.ph683
  %i.zo = phi ptr [ %i.aaa, %.lr.ph683 ], [ %i.zn, %.lr.ph683.preheader ] ; 5 uses
  %.25681 = phi ptr [ %i.zz, %.lr.ph683 ], [ %.24687, %.lr.ph683.preheader ] ; 5 uses
  %niter1065 = phi i64 [ %niter1065.next.3, %.lr.ph683 ], [ 0, %.lr.ph683.preheader ]
  %i.zp = load i8, ptr %.25681, align 1, !tbaa !47
  store i8 %i.zp, ptr %i.zo, align 1, !tbaa !47
  %i.zq = getelementptr inbounds nuw i8, ptr %.25681, i64 1
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 8 ; 2 uses
  store ptr %i.zr, ptr %i.v, align 8, !tbaa !52
  %i.zs = load i8, ptr %i.zq, align 1, !tbaa !47
  store i8 %i.zs, ptr %i.zr, align 1, !tbaa !47
  %i.zt = getelementptr inbounds nuw i8, ptr %.25681, i64 2
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zo, i64 16 ; 2 uses
  store ptr %i.zu, ptr %i.v, align 8, !tbaa !52
  %i.zv = load i8, ptr %i.zt, align 1, !tbaa !47
  store i8 %i.zv, ptr %i.zu, align 1, !tbaa !47
  %i.zw = getelementptr inbounds nuw i8, ptr %.25681, i64 3
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zo, i64 24 ; 2 uses
  store ptr %i.zx, ptr %i.v, align 8, !tbaa !52
  %i.zy = load i8, ptr %i.zw, align 1, !tbaa !47
  store i8 %i.zy, ptr %i.zx, align 1, !tbaa !47
  %i.zz = getelementptr inbounds nuw i8, ptr %.25681, i64 4 ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zo, i64 32 ; 3 uses
  store ptr %i.aaa, ptr %i.v, align 8, !tbaa !52
  %niter1065.next.3 = add nuw nsw i64 %niter1065, 4 ; 2 uses
  %niter1065.ncmp.3 = icmp eq i64 %niter1065.next.3, %unroll_iter1064
  br i1 %niter1065.ncmp.3, label %._crit_edge684.unr-lcssa, label %.lr.ph683, !llvm.loop !331

._crit_edge684.unr-lcssa:                         ; preds = %.lr.ph683
  br i1 %lcmp.mod1061.not, label %._crit_edge684, label %.lr.ph683.epil.preheader

.lr.ph683.epil.preheader:                         ; preds = %._crit_edge684.unr-lcssa, %.lr.ph683.preheader
  %.epil.init1060 = phi ptr [ %i.zn, %.lr.ph683.preheader ], [ %i.aaa, %._crit_edge684.unr-lcssa ]
  %.25681.epil.init = phi ptr [ %.24687, %.lr.ph683.preheader ], [ %i.zz, %._crit_edge684.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1063)
  br label %.lr.ph683.epil

.lr.ph683.epil:                                   ; preds = %.lr.ph683.epil, %.lr.ph683.epil.preheader
  %i.aab = phi ptr [ %i.aae, %.lr.ph683.epil ], [ %.epil.init1060, %.lr.ph683.epil.preheader ] ; 2 uses
  %.25681.epil = phi ptr [ %i.aad, %.lr.ph683.epil ], [ %.25681.epil.init, %.lr.ph683.epil.preheader ] ; 2 uses
  %epil.iter1058 = phi i64 [ %epil.iter1058.next, %.lr.ph683.epil ], [ 0, %.lr.ph683.epil.preheader ]
  %i.aac = load i8, ptr %.25681.epil, align 1, !tbaa !47
  store i8 %i.aac, ptr %i.aab, align 1, !tbaa !47
  %i.aad = getelementptr inbounds nuw i8, ptr %.25681.epil, i64 1 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aab, i64 8 ; 2 uses
  store ptr %i.aae, ptr %i.v, align 8, !tbaa !52
  %epil.iter1058.next = add i64 %epil.iter1058, 1 ; 2 uses
  %epil.iter1058.cmp.not = icmp eq i64 %epil.iter1058.next, %xtraiter1057
  br i1 %epil.iter1058.cmp.not, label %._crit_edge684, label %.lr.ph683.epil, !llvm.loop !332

._crit_edge684:                                   ; preds = %.lr.ph683.epil, %._crit_edge684.unr-lcssa
  %.lcssa985 = phi ptr [ %i.zz, %._crit_edge684.unr-lcssa ], [ %i.aad, %.lr.ph683.epil ] ; 2 uses
  %i.aaf = add nuw nsw i64 %.12488686, 1          ; 2 uses
  %i.aag = icmp slt i64 %i.aaf, %i.rv
  br i1 %i.aag, label %.lr.ph683.preheader, label %.lr.ph698, !llvm.loop !333

.lr.ph693.preheader:                              ; preds = %._crit_edge694, %.lr.ph698
  %.26697 = phi ptr [ %.lcssa985, %.lr.ph698 ], [ %.lcssa986, %._crit_edge694 ] ; 2 uses
  %.13489696 = phi i64 [ 0, %.lr.ph698 ], [ %i.abb, %._crit_edge694 ] ; 2 uses
  %i.aah = mul nsw i64 %i.zj, %.13489696
  %i.aai = getelementptr i8, ptr %i.zf, i64 %i.aah
  %i.aaj = getelementptr i8, ptr %i.aai, i64 7    ; 2 uses
  br i1 %i.zk, label %.lr.ph693.epil.preheader, label %.lr.ph693

.lr.ph693:                                        ; preds = %.lr.ph693.preheader, %.lr.ph693
  %i.aak = phi ptr [ %i.aaw, %.lr.ph693 ], [ %i.aaj, %.lr.ph693.preheader ] ; 5 uses
  %.27691 = phi ptr [ %i.aav, %.lr.ph693 ], [ %.26697, %.lr.ph693.preheader ] ; 5 uses
  %niter1074 = phi i64 [ %niter1074.next.3, %.lr.ph693 ], [ 0, %.lr.ph693.preheader ]
  %i.aal = load i8, ptr %.27691, align 1, !tbaa !47
  store i8 %i.aal, ptr %i.aak, align 1, !tbaa !47
  %i.aam = getelementptr inbounds nuw i8, ptr %.27691, i64 1
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 2 uses
  store ptr %i.aan, ptr %i.v, align 8, !tbaa !52
  %i.aao = load i8, ptr %i.aam, align 1, !tbaa !47
  store i8 %i.aao, ptr %i.aan, align 1, !tbaa !47
  %i.aap = getelementptr inbounds nuw i8, ptr %.27691, i64 2
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aak, i64 16 ; 2 uses
  store ptr %i.aaq, ptr %i.v, align 8, !tbaa !52
  %i.aar = load i8, ptr %i.aap, align 1, !tbaa !47
  store i8 %i.aar, ptr %i.aaq, align 1, !tbaa !47
  %i.aas = getelementptr inbounds nuw i8, ptr %.27691, i64 3
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aak, i64 24 ; 2 uses
  store ptr %i.aat, ptr %i.v, align 8, !tbaa !52
  %i.aau = load i8, ptr %i.aas, align 1, !tbaa !47
  store i8 %i.aau, ptr %i.aat, align 1, !tbaa !47
  %i.aav = getelementptr inbounds nuw i8, ptr %.27691, i64 4 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aak, i64 32 ; 3 uses
  store ptr %i.aaw, ptr %i.v, align 8, !tbaa !52
  %niter1074.next.3 = add nuw nsw i64 %niter1074, 4 ; 2 uses
  %niter1074.ncmp.3 = icmp eq i64 %niter1074.next.3, %unroll_iter1073
  br i1 %niter1074.ncmp.3, label %._crit_edge694.unr-lcssa, label %.lr.ph693, !llvm.loop !334

._crit_edge694.unr-lcssa:                         ; preds = %.lr.ph693
  br i1 %lcmp.mod1070.not, label %._crit_edge694, label %.lr.ph693.epil.preheader

.lr.ph693.epil.preheader:                         ; preds = %._crit_edge694.unr-lcssa, %.lr.ph693.preheader
  %.epil.init1069 = phi ptr [ %i.aaj, %.lr.ph693.preheader ], [ %i.aaw, %._crit_edge694.unr-lcssa ]
  %.27691.epil.init = phi ptr [ %.26697, %.lr.ph693.preheader ], [ %i.aav, %._crit_edge694.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1072)
  br label %.lr.ph693.epil

.lr.ph693.epil:                                   ; preds = %.lr.ph693.epil, %.lr.ph693.epil.preheader
  %i.aax = phi ptr [ %i.aba, %.lr.ph693.epil ], [ %.epil.init1069, %.lr.ph693.epil.preheader ] ; 2 uses
  %.27691.epil = phi ptr [ %i.aaz, %.lr.ph693.epil ], [ %.27691.epil.init, %.lr.ph693.epil.preheader ] ; 2 uses
  %epil.iter1067 = phi i64 [ %epil.iter1067.next, %.lr.ph693.epil ], [ 0, %.lr.ph693.epil.preheader ]
  %i.aay = load i8, ptr %.27691.epil, align 1, !tbaa !47
  store i8 %i.aay, ptr %i.aax, align 1, !tbaa !47
  %i.aaz = getelementptr inbounds nuw i8, ptr %.27691.epil, i64 1 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 8 ; 2 uses
  store ptr %i.aba, ptr %i.v, align 8, !tbaa !52
  %epil.iter1067.next = add i64 %epil.iter1067, 1 ; 2 uses
  %epil.iter1067.cmp.not = icmp eq i64 %epil.iter1067.next, %xtraiter1066
  br i1 %epil.iter1067.cmp.not, label %._crit_edge694, label %.lr.ph693.epil, !llvm.loop !335

._crit_edge694:                                   ; preds = %.lr.ph693.epil, %._crit_edge694.unr-lcssa
  %.lcssa986 = phi ptr [ %i.aav, %._crit_edge694.unr-lcssa ], [ %i.aaz, %.lr.ph693.epil ]
  %i.abb = add nuw nsw i64 %.13489696, 1          ; 2 uses
  %i.abc = icmp slt i64 %i.abb, %i.rv
  br i1 %i.abc, label %.lr.ph693.preheader, label %.loopexit, !llvm.loop !336

bb.bo:                                            ; preds = %bb.bl
  call void @ffpmsg(ptr noundef nonnull @.str.265) #23
  store i32 414, ptr %2, align 4, !tbaa !18
  call void @free(ptr noundef %i.fa) #23
  call void @free(ptr noundef %i.ez) #23
  br label %bb.dd

bb.bp:                                            ; preds = %bb.bp, %.lr.ph617.new
  %.28616 = phi ptr [ %i.if, %.lr.ph617.new ], [ %i.abr, %bb.bp ] ; 2 uses
  %.14490615 = phi i64 [ 0, %.lr.ph617.new ], [ %i.abs, %bb.bp ] ; 5 uses
  %niter1004 = phi i64 [ 0, %.lr.ph617.new ], [ %niter1004.next.3, %bb.bp ]
  %i.abd = mul nsw i64 %i.je, %.14490615
  %i.abe = getelementptr i8, ptr %i.jf, i64 %i.abd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abe, ptr align 1 %.28616, i64 %i.jh, i1 false)
  %i.abf = getelementptr inbounds i8, ptr %.28616, i64 %i.jh ; 2 uses
  %i.abg = or disjoint i64 %.14490615, 1
  %i.abh = mul nsw i64 %i.je, %i.abg
  %i.abi = getelementptr i8, ptr %i.jf, i64 %i.abh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abi, ptr align 1 %i.abf, i64 %i.jh, i1 false)
  %i.abj = getelementptr inbounds i8, ptr %i.abf, i64 %i.jh ; 2 uses
  %i.abk = or disjoint i64 %.14490615, 2
  %i.abl = mul nsw i64 %i.je, %i.abk
  %i.abm = getelementptr i8, ptr %i.jf, i64 %i.abl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abm, ptr align 1 %i.abj, i64 %i.jh, i1 false)
  %i.abn = getelementptr inbounds i8, ptr %i.abj, i64 %i.jh ; 2 uses
  %i.abo = or disjoint i64 %.14490615, 3
  %i.abp = mul nsw i64 %i.je, %i.abo
  %i.abq = getelementptr i8, ptr %i.jf, i64 %i.abp ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abq, ptr align 1 %i.abn, i64 %i.jh, i1 false)
  %i.abr = getelementptr inbounds i8, ptr %i.abn, i64 %i.jh ; 2 uses
  %i.abs = add nuw nsw i64 %.14490615, 4          ; 2 uses
  %niter1004.next.3 = add nuw nsw i64 %niter1004, 4 ; 2 uses
  %niter1004.ncmp.3 = icmp eq i64 %niter1004.next.3, %unroll_iter1003
  br i1 %niter1004.ncmp.3, label %..loopexit579_crit_edge.unr-lcssa, label %bb.bp, !llvm.loop !337

bb.bq:                                            ; preds = %bb.bq, %.lr.ph608.new
  %.29607 = phi ptr [ %i.if, %.lr.ph608.new ], [ %i.ach, %bb.bq ] ; 2 uses
  %.15491606 = phi i64 [ 0, %.lr.ph608.new ], [ %i.aci, %bb.bq ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph608.new ], [ %niter.next.3, %bb.bq ]
  %i.abt = mul nsw i64 %i.ir, %.15491606
  %i.abu = getelementptr i8, ptr %i.is, i64 %i.abt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abu, ptr align 1 %.29607, i64 %i.iu, i1 false)
  %i.abv = getelementptr inbounds i8, ptr %.29607, i64 %i.iu ; 2 uses
  %i.abw = or disjoint i64 %.15491606, 1
  %i.abx = mul nsw i64 %i.ir, %i.abw
  %i.aby = getelementptr i8, ptr %i.is, i64 %i.abx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aby, ptr align 1 %i.abv, i64 %i.iu, i1 false)
  %i.abz = getelementptr inbounds i8, ptr %i.abv, i64 %i.iu ; 2 uses
  %i.aca = or disjoint i64 %.15491606, 2
  %i.acb = mul nsw i64 %i.ir, %i.aca
  %i.acc = getelementptr i8, ptr %i.is, i64 %i.acb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acc, ptr align 1 %i.abz, i64 %i.iu, i1 false)
  %i.acd = getelementptr inbounds i8, ptr %i.abz, i64 %i.iu ; 2 uses
  %i.ace = or disjoint i64 %.15491606, 3
  %i.acf = mul nsw i64 %i.ir, %i.ace
  %i.acg = getelementptr i8, ptr %i.is, i64 %i.acf ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acg, ptr align 1 %i.acd, i64 %i.iu, i1 false)
  %i.ach = getelementptr inbounds i8, ptr %i.acd, i64 %i.iu ; 2 uses
  %i.aci = add nuw nsw i64 %.15491606, 4          ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge609.unr-lcssa, label %bb.bq, !llvm.loop !338

._crit_edge609.unr-lcssa:                         ; preds = %bb.bq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge609, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge609.unr-lcssa, %.lr.ph608
  %.29607.epil.init = phi ptr [ %i.if, %.lr.ph608 ], [ %i.ach, %._crit_edge609.unr-lcssa ]
  %.15491606.epil.init = phi i64 [ 0, %.lr.ph608 ], [ %i.aci, %._crit_edge609.unr-lcssa ]
  %lcmp.mod996 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod996)
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.epil.preheader
  %.29607.epil = phi ptr [ %.29607.epil.init, %.epil.preheader ], [ %i.acl, %bb.br ] ; 2 uses
  %.15491606.epil = phi i64 [ %.15491606.epil.init, %.epil.preheader ], [ %i.acm, %bb.br ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.br ]
  %i.acj = mul nsw i64 %i.ir, %.15491606.epil
  %i.ack = getelementptr i8, ptr %i.is, i64 %i.acj ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ack, ptr align 1 %.29607.epil, i64 %i.iu, i1 false)
  %i.acl = getelementptr inbounds i8, ptr %.29607.epil, i64 %i.iu
  %i.acm = add nuw nsw i64 %.15491606.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge609, label %bb.br, !llvm.loop !339

._crit_edge609:                                   ; preds = %bb.br, %._crit_edge609.unr-lcssa
  %.lcssa973 = phi ptr [ %i.acg, %._crit_edge609.unr-lcssa ], [ %i.ack, %bb.br ]
  store ptr %.lcssa973, ptr %i.v, align 8, !tbaa !52
  br label %bb.bs

bb.bs:                                            ; preds = %.preheader581._crit_edge, %._crit_edge609
  %i.acn = phi i64 [ %.pre825, %.preheader581._crit_edge ], [ %i.iu, %._crit_edge609 ] ; 3 uses
  switch i64 %i.acn, label %bb.bv [
    i64 8, label %bb.bt
    i64 16, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.aco = shl nsw i64 %i.im, 1
  call void @ffswap4(ptr noundef nonnull %i.if, i64 noundef %i.aco) #23
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %i.acp = shl nsw i64 %i.im, 1
  call void @ffswap8(ptr noundef nonnull %i.if, i64 noundef %i.acp) #23
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs
  call void @ffpmsg(ptr noundef nonnull @.str.266) #23
  call void @free(ptr noundef %i.fa) #23
  call void @free(ptr noundef %i.ez) #23
  store i32 414, ptr %2, align 4, !tbaa !18
  br label %bb.dd

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %.2508 = phi ptr [ %.1507758, %bb.bt ], [ %i.if, %bb.bu ] ; 4 uses
  %.2498 = phi ptr [ %i.if, %bb.bt ], [ %.1497759, %bb.bu ] ; 4 uses
  %i.acq = load i64, ptr %i.o, align 8, !tbaa !37 ; 2 uses
  %i.acr = mul nsw i64 %i.acq, %i.acn
  %i.acs = getelementptr inbounds i8, ptr %i.if, i64 %i.acr ; 3 uses
  %i.act = shl nsw i64 %i.acq, 1
  call void @ffswap8(ptr noundef nonnull %i.acs, i64 noundef %i.act) #23
  %i.acu = load i64, ptr %i.o, align 8, !tbaa !37 ; 2 uses
  %i.acv = icmp sgt i64 %i.acu, 0
  br i1 %i.acv, label %.lr.ph614, label %.loopexit

.lr.ph614:                                        ; preds = %bb.bw
  %i.acw = icmp eq i64 %i.acn, 8
  %.nonneg = sub i32 0, %i.ik
  %i.acx = udiv i32 %.nonneg, 10
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.2495760
  %.off = add nsw i32 %i.ik, 29
  %i.ada = icmp ult i32 %.off, 10
  %.off552 = add nsw i32 %i.ik, 49
  %i.adb = icmp ult i32 %.off552, 10
  %.off553 = add nsw i32 %i.ik, 89
  %i.adc = icmp ult i32 %.off553, 10
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph614, %bb.cx
  %i.add = phi i64 [ %i.acu, %.lr.ph614 ], [ %i.agb, %bb.cx ]
  %.16492612 = phi i64 [ 0, %.lr.ph614 ], [ %i.agc, %bb.cx ] ; 2 uses
  %i.ade = shl nuw nsw i64 %.16492612, 1          ; 4 uses
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %i.ade
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !46 ; 9 uses
  %i.adh = or disjoint i64 %i.ade, 1              ; 3 uses
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %i.adh
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !46
  %i.adk = icmp sgt i64 %i.adg, 0
  br i1 %i.adk, label %bb.by, label %bb.cx

bb.by:                                            ; preds = %bb.bx
  br i1 %i.acw, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.2498, i64 %i.ade
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !18
  %i.adn = sext i32 %i.adm to i64
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.2498, i64 %i.adh
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !18
  %i.adq = sext i32 %i.adp to i64
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %.2508, i64 %i.ade
  %i.ads = load i64, ptr %i.adr, align 8, !tbaa !46
end_hunk_0
