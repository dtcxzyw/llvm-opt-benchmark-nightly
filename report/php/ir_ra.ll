Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_ra?download=true
inline.NumInlined: 87
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ir_reg_alloc:bb.a
  %.not234.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not234.i, label %._crit_edge541.i, label %bb.o, !llvm.loop !193

._crit_edge541.i:                                 ; preds = %ir_ival_spill_for_fuse_load.exit.i, %._crit_edge.i
  %i.gc = load ptr, ptr %.pre740.i.a, align 8, !tbaa !79 ; 4 uses
  %.not235.i = icmp eq ptr %i.gc, null
  br i1 %.not235.i, label %ir_merge_to_unhandled.exit.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge541.i
  %.0..0..0..0..0.403.i = load ptr, ptr %i.g, align 8, !tbaa !79 ; 2 uses
  %i.gd = icmp eq ptr %.0..0..0..0..0.403.i, null
  br i1 %i.gd, label %bb.aj, label %.preheader.i.i

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.gc, ptr %i.g, align 8, !tbaa !79
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.01833.i.i = phi ptr [ %i.gc, %bb.aj ], [ %i.gf, %bb.ak ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01833.i.i, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !112 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.01833.i.i, i64 56
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !181
  %.not23.i.i = icmp eq ptr %i.gf, null
  br i1 %.not23.i.i, label %ir_merge_to_unhandled.exit.i, label %bb.ak, !llvm.loop !194

.preheaderthread-pre-split.i.i:                   ; preds = %.critedge.i285.i
  %.pr.i.i = load ptr, ptr %i.gt, align 8, !tbaa !79
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ai, %.preheaderthread-pre-split.i.i
  %i.gh = phi ptr [ %.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %.0..0..0..0..0.403.i, %bb.ai ] ; 4 uses
  %.032.i.i = phi ptr [ %i.gt, %.preheaderthread-pre-split.i.i ], [ %i.g, %bb.ai ] ; 2 uses
  %.11931.i.i = phi ptr [ %i.gv, %.preheaderthread-pre-split.i.i ], [ %i.gc, %bb.ai ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.11931.i.i, i64 16
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !81 ; 2 uses
  %.not2125.i.i = icmp eq ptr %i.gh, null
  br i1 %.not2125.i.i, label %.critedge.i285.i, label %.lr.ph.i284.preheader.i

.lr.ph.i284.preheader.i:                          ; preds = %.preheader.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !81
  %.not22.i542.i = icmp slt i32 %i.gj, %i.gl
  br i1 %.not22.i542.i, label %.critedge.i285.i, label %.lr.ph543.i

.lr.ph.i284.i:                                    ; preds = %.lr.ph543.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !81
  %.not22.i.i = icmp slt i32 %i.gj, %i.gn
  br i1 %.not22.i.i, label %.critedge.i285.i.loopexit, label %.lr.ph543.i, !llvm.loop !195

.lr.ph543.i:                                      ; preds = %.lr.ph.i284.preheader.i, %.lr.ph.i284.i
  %i.go = phi ptr [ %i.gq, %.lr.ph.i284.i ], [ %i.gh, %.lr.ph.i284.preheader.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !79 ; 4 uses
  %.not21.i.i = icmp eq ptr %i.gq, null
  br i1 %.not21.i.i, label %..critedge.i285.loopexit_crit_edge.i, label %.lr.ph.i284.i, !llvm.loop !195

..critedge.i285.loopexit_crit_edge.i:             ; preds = %.lr.ph543.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  br label %.critedge.i285.i, !llvm.loop !195

.critedge.i285.i.loopexit:                        ; preds = %.lr.ph.i284.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  br label %.critedge.i285.i

.critedge.i285.i:                                 ; preds = %.critedge.i285.i.loopexit, %..critedge.i285.loopexit_crit_edge.i, %.lr.ph.i284.preheader.i, %.preheader.i.i
  %.1.lcssa.i.i = phi ptr [ %.032.i.i, %.preheader.i.i ], [ %.032.i.i, %.lr.ph.i284.preheader.i ], [ %i.gr, %..critedge.i285.loopexit_crit_edge.i ], [ %i.gs, %.critedge.i285.i.loopexit ]
  %.lcssa.i.i = phi ptr [ null, %.preheader.i.i ], [ %i.gh, %.lr.ph.i284.preheader.i ], [ null, %..critedge.i285.loopexit_crit_edge.i ], [ %i.gq, %.critedge.i285.i.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.11931.i.i, i64 56 ; 3 uses
  store ptr %.lcssa.i.i, ptr %i.gt, align 8, !tbaa !181
  store ptr %.11931.i.i, ptr %.1.lcssa.i.i, align 8, !tbaa !79
  %i.gu = getelementptr inbounds nuw i8, ptr %.11931.i.i, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !112 ; 2 uses
  %.not.i286.i = icmp eq ptr %i.gv, null
  br i1 %.not.i286.i, label %ir_merge_to_unhandled.exit.i, label %.preheaderthread-pre-split.i.i, !llvm.loop !196

ir_merge_to_unhandled.exit.i:                     ; preds = %.critedge.i285.i, %bb.ak, %._crit_edge541.i
  %i.gw = sext i32 %i.db to i64                   ; 3 uses
  %i.gx = add i32 %i.db, 35
  %i.gy = call i32 @llvm.smax.i32(i32 %i.db, i32 %i.gx)
  %smax = sext i32 %i.gy to i64                   ; 2 uses
  %i.gz = add nsw i64 %smax, %i.gw
  %i.ha = and i64 %i.gz, 1
  %lcmp.mod697.not.not = icmp eq i64 %i.ha, 0
  br i1 %lcmp.mod697.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %ir_merge_to_unhandled.exit.i
  %indvars.iv.next727.i.prol = add nsw i64 %i.gw, 1 ; 3 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %.pre740.i.a, i64 %indvars.iv.next727.i.prol
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !79 ; 6 uses
  %.not272.i.prol = icmp eq ptr %i.hc, null
  br i1 %.not272.i.prol, label %.prol.loopexit, label %bb.al

bb.al:                                            ; preds = %.prol.preheader
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !197
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  store ptr null, ptr %i.hf, align 8, !tbaa !181
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.al, %ir_merge_to_unhandled.exit.i
  %.1416.i.lcssa.unr = phi ptr [ poison, %ir_merge_to_unhandled.exit.i ], [ null, %.prol.preheader ], [ %i.hc, %bb.al ]
  %indvars.iv726.i.unr = phi i64 [ %i.gw, %ir_merge_to_unhandled.exit.i ], [ %indvars.iv.next727.i.prol, %bb.al ], [ %indvars.iv.next727.i.prol, %.prol.preheader ]
  %.0415548.i.unr = phi ptr [ null, %ir_merge_to_unhandled.exit.i ], [ null, %.prol.preheader ], [ %i.hc, %bb.al ]
  %.not = icmp slt i32 %i.db, 2147483613
  br i1 %.not, label %ir_merge_to_unhandled.exit.i.new, label %.unr-lcssa

ir_merge_to_unhandled.exit.i.new:                 ; preds = %.prol.loopexit, %bb.ap
  %indvars.iv726.i = phi i64 [ %indvars.iv.next727.i.1, %bb.ap ], [ %indvars.iv726.i.unr, %.prol.loopexit ] ; 2 uses
  %.0415548.i = phi ptr [ %.1416.i.1, %bb.ap ], [ %.0415548.i.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv.next727.i = add nsw i64 %indvars.iv726.i, 1 ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %.pre740.i.a, i64 %indvars.iv.next727.i
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !79 ; 5 uses
  %.not272.i = icmp eq ptr %i.hh, null
  br i1 %.not272.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %ir_merge_to_unhandled.exit.i.new
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !197
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  store ptr %.0415548.i, ptr %i.hk, align 8, !tbaa !181
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %ir_merge_to_unhandled.exit.i.new
  %.1416.i = phi ptr [ %.0415548.i, %ir_merge_to_unhandled.exit.i.new ], [ %i.hh, %bb.am ] ; 2 uses
  %indvars.iv.next727.i.1 = add nsw i64 %indvars.iv726.i, 2 ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %.pre740.i.a, i64 %indvars.iv.next727.i.1
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !79 ; 5 uses
  %.not272.i.1 = icmp eq ptr %i.hm, null
  br i1 %.not272.i.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !197
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  store ptr %.1416.i, ptr %i.hp, align 8, !tbaa !181
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1416.i.1 = phi ptr [ %.1416.i, %bb.an ], [ %i.hm, %bb.ao ] ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next727.i, %smax
  br i1 %exitcond.not.1, label %.unr-lcssa, label %ir_merge_to_unhandled.exit.i.new, !llvm.loop !198

.unr-lcssa:                                       ; preds = %bb.ap, %.prol.loopexit
  %.1416.i.lcssa = phi ptr [ %.1416.i.lcssa.unr, %.prol.loopexit ], [ %.1416.i.1, %bb.ap ]
  %i.hq = load i32, ptr %i.u, align 4, !tbaa !50
  %i.hr = and i32 %i.hq, -100663297
  store i32 %i.hr, ptr %i.u, align 4, !tbaa !50
  %.0..0..0..0..0.398601.i = load ptr, ptr %i.g, align 8, !tbaa !79 ; 2 uses
  %.not237602.i = icmp eq ptr %.0..0..0..0..0.398601.i, null
  br i1 %.not237602.i, label %bb.mr, label %.lr.ph608.i

.lr.ph608.i:                                      ; preds = %.unr-lcssa
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.hv = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ii = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.im = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.io = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  br label %bb.aq

bb.aq:                                            ; preds = %bb.lm, %.lr.ph608.i
  %.0735.i = phi ptr [ null, %.lr.ph608.i ], [ %.17.i, %bb.lm ] ; 3 uses
  %.0.398604.i = phi ptr [ %.0..0..0..0..0.398601.i, %.lr.ph608.i ], [ %.0..0..0..0..0.398.i, %bb.lm ] ; 32 uses
  %.2417603.i = phi ptr [ %.1416.i.lcssa, %.lr.ph608.i ], [ %.6421.lcssa.i, %bb.lm ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.398604.i, i64 16 ; 15 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0.398604.i, i64 32
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !197
  %i.it = getelementptr inbounds nuw i8, ptr %.0.398604.i, i64 56 ; 4 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !181 ; 17 uses
  store ptr %i.iu, ptr %i.g, align 8, !tbaa !79
  %i.iv = load i32, ptr %i.ir, align 8, !tbaa !81 ; 8 uses
  %.not255550.i = icmp eq ptr %.0735.i, null
  br i1 %.not255550.i, label %.preheader455.i, label %.lr.ph555.i

.preheader455.i:                                  ; preds = %.cont732.i, %bb.aq
  %.1736.i = phi ptr [ null, %bb.aq ], [ %.5737.i, %.cont732.i ] ; 3 uses
  %.3418.lcssa.i = phi ptr [ %.2417603.i, %bb.aq ], [ %.5420.i, %.cont732.i ] ; 3 uses
  %.not256560.i = icmp eq ptr %.3418.lcssa.i, null
  br i1 %.not256560.i, label %._crit_edge566.i, label %.lr.ph565.i

.lr.ph555.i:                                      ; preds = %bb.aq, %.cont732.i
  %.2.i = phi ptr [ %.5737.i, %.cont732.i ], [ %.0735.i, %bb.aq ] ; 2 uses
  %.0206553.i = phi ptr [ %.2208.i, %.cont732.i ], [ null, %bb.aq ] ; 6 uses
  %.0209552.i = phi ptr [ %.1210.i, %.cont732.i ], [ %.0735.i, %bb.aq ] ; 6 uses
  %.3418551.i = phi ptr [ %.5420.i, %.cont732.i ], [ %.2417603.i, %bb.aq ] ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0209552.i, i64 32 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !197 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !119
  %.not265.i = icmp sgt i32 %i.iz, %i.iv
  br i1 %.not265.i, label %bb.at, label %.preheader448.i

.preheader448.i:                                  ; preds = %.lr.ph555.i, %bb.ar
  %.0199.i = phi ptr [ %i.jb, %bb.ar ], [ %i.ix, %.lr.ph555.i ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.0199.i, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !117 ; 5 uses
  %.not266.i = icmp eq ptr %i.jb, null
  br i1 %.not266.i, label %.critedge276.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader448.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !119
  %.not267.i = icmp sgt i32 %i.jd, %i.iv
  br i1 %.not267.i, label %.critedge.i, label %.preheader448.i, !llvm.loop !199

.critedge276.i:                                   ; preds = %.preheader448.i
  %i.je = getelementptr inbounds nuw i8, ptr %.0209552.i, i64 56
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !181 ; 4 uses
  %.not268.i = icmp eq ptr %.0206553.i, null
  br i1 %.not268.i, label %.cont732.i, label %bb.as, !llvm.loop !200

bb.as:                                            ; preds = %.critedge276.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.0206553.i, i64 56
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !181
  br label %.cont732.i, !llvm.loop !200

.critedge.i:                                      ; preds = %bb.ar
  store ptr %i.jb, ptr %i.iw, align 8, !tbaa !197
  br label %bb.at

bb.at:                                            ; preds = %.critedge.i, %.lr.ph555.i
  %.1200.i = phi ptr [ %i.jb, %.critedge.i ], [ %i.ix, %.lr.ph555.i ]
  %i.jh = load i32, ptr %.1200.i, align 8, !tbaa !118
  %i.ji = icmp slt i32 %i.iv, %i.jh
  br i1 %i.ji, label %bb.au, label %.else733.i

bb.au:                                            ; preds = %bb.at
  %.not269.i = icmp eq ptr %.0206553.i, null
  %i.jj = getelementptr inbounds nuw i8, ptr %.0209552.i, i64 56 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !181 ; 3 uses
  br i1 %.not269.i, label %.thread934.i, label %bb.av

.thread934.i:                                     ; preds = %bb.au
  store ptr %.3418551.i, ptr %i.jj, align 8, !tbaa !181
  br label %.cont732.i

bb.av:                                            ; preds = %bb.au
  %i.jl = getelementptr inbounds nuw i8, ptr %.0206553.i, i64 56
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !181
  store ptr %.3418551.i, ptr %i.jj, align 8, !tbaa !181
  br label %.else733.i

.else733.i:                                       ; preds = %bb.av, %bb.at
  %.1207932.i = phi ptr [ %.0206553.i, %bb.av ], [ %.0209552.i, %bb.at ] ; 2 uses
  %.4419930.i = phi ptr [ %.0209552.i, %bb.av ], [ %.3418551.i, %bb.at ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.1207932.i, i64 56
  %.else.val734.i = load ptr, ptr %i.jm, align 8, !tbaa !79
  br label %.cont732.i

.cont732.i:                                       ; preds = %.else733.i, %.thread934.i, %bb.as, %.critedge276.i
  %.5737.i = phi ptr [ %i.jf, %.critedge276.i ], [ %.2.i, %bb.as ], [ %i.jk, %.thread934.i ], [ %.2.i, %.else733.i ] ; 2 uses
  %.5420.i = phi ptr [ %.3418551.i, %.critedge276.i ], [ %.3418551.i, %bb.as ], [ %.0209552.i, %.thread934.i ], [ %.4419930.i, %.else733.i ] ; 2 uses
  %.1210.i = phi ptr [ %i.jf, %.critedge276.i ], [ %i.jf, %bb.as ], [ %i.jk, %.thread934.i ], [ %.else.val734.i, %.else733.i ] ; 2 uses
  %.2208.i = phi ptr [ null, %.critedge276.i ], [ %.0206553.i, %bb.as ], [ null, %.thread934.i ], [ %.1207932.i, %.else733.i ]
  %.not255.i = icmp eq ptr %.1210.i, null
  br i1 %.not255.i, label %.preheader455.i, label %.lr.ph555.i

.lr.ph565.i:                                      ; preds = %.preheader455.i, %.cont.i
  %.6.i = phi ptr [ %.8.i, %.cont.i ], [ %.1736.i, %.preheader455.i ] ; 3 uses
  %.3564.i = phi ptr [ %.5.i, %.cont.i ], [ null, %.preheader455.i ] ; 6 uses
  %.2211563.i = phi ptr [ %.3212.i, %.cont.i ], [ %.3418.lcssa.i, %.preheader455.i ] ; 8 uses
  %.6421562.i = phi ptr [ %.9.i, %.cont.i ], [ %.3418.lcssa.i, %.preheader455.i ] ; 2 uses
  %.2211559561.i = phi ptr [ %.2211557.i, %.cont.i ], [ %.1736.i, %.preheader455.i ] ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.2211563.i, i64 32 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !197 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !119
  %.not257.i = icmp sgt i32 %i.jq, %i.iv
  br i1 %.not257.i, label %bb.ay, label %.preheader447.i

.preheader447.i:                                  ; preds = %.lr.ph565.i, %bb.aw
  %.0197.i = phi ptr [ %i.js, %bb.aw ], [ %i.jo, %.lr.ph565.i ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.0197.i, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !117 ; 5 uses
  %.not258.i = icmp eq ptr %i.js, null
  br i1 %.not258.i, label %.critedge277.i, label %bb.aw

bb.aw:                                            ; preds = %.preheader447.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !119
  %.not259.i = icmp sgt i32 %i.ju, %i.iv
  br i1 %.not259.i, label %.critedge2.i, label %.preheader447.i, !llvm.loop !201

.critedge277.i:                                   ; preds = %.preheader447.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.2211563.i, i64 56
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !181 ; 4 uses
  %.not260.i = icmp eq ptr %.3564.i, null
  br i1 %.not260.i, label %.cont.i, label %bb.ax, !llvm.loop !202

bb.ax:                                            ; preds = %.critedge277.i
  %i.jx = getelementptr inbounds nuw i8, ptr %.3564.i, i64 56
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !181
  br label %.cont.i, !llvm.loop !202

.critedge2.i:                                     ; preds = %bb.aw
  store ptr %i.js, ptr %i.jn, align 8, !tbaa !197
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge2.i, %.lr.ph565.i
  %.1198.i = phi ptr [ %i.js, %.critedge2.i ], [ %i.jo, %.lr.ph565.i ]
  %i.jy = load i32, ptr %.1198.i, align 8, !tbaa !118
  %.not261.i = icmp slt i32 %i.iv, %i.jy
  br i1 %.not261.i, label %.else.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not262.i = icmp eq ptr %.3564.i, null
  %i.jz = getelementptr inbounds nuw i8, ptr %.2211563.i, i64 56 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !181 ; 3 uses
  br i1 %.not262.i, label %.thread431.i, label %bb.ba

.thread431.i:                                     ; preds = %bb.az
  store ptr %.2211559561.i, ptr %i.jz, align 8, !tbaa !181
  br label %.cont.i

bb.ba:                                            ; preds = %bb.az
  %i.kb = getelementptr inbounds nuw i8, ptr %.3564.i, i64 56
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !181
  store ptr %.2211559561.i, ptr %i.jz, align 8, !tbaa !181
  br label %.else.i

.else.i:                                          ; preds = %bb.ba, %bb.ay
  %.7737.i = phi ptr [ %.6.i, %bb.ay ], [ %.2211563.i, %bb.ba ]
  %.2211558.i = phi ptr [ %.2211559561.i, %bb.ay ], [ %.2211563.i, %bb.ba ]
  %.4429.i = phi ptr [ %.2211563.i, %bb.ay ], [ %.3564.i, %bb.ba ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.4429.i, i64 56
  %.else.val.i = load ptr, ptr %i.kc, align 8, !tbaa !79
  br label %.cont.i

.cont.i:                                          ; preds = %.else.i, %.thread431.i, %bb.ax, %.critedge277.i
  %.8.i = phi ptr [ %.7737.i, %.else.i ], [ %.2211563.i, %.thread431.i ], [ %.6.i, %.critedge277.i ], [ %.6.i, %bb.ax ] ; 2 uses
  %.2211557.i = phi ptr [ %.2211558.i, %.else.i ], [ %.2211563.i, %.thread431.i ], [ %.2211559561.i, %.critedge277.i ], [ %.2211559561.i, %bb.ax ]
  %.9.i = phi ptr [ %.6421562.i, %.else.i ], [ %i.ka, %.thread431.i ], [ %i.jw, %.critedge277.i ], [ %.6421562.i, %bb.ax ] ; 2 uses
  %.3212.i = phi ptr [ %.else.val.i, %.else.i ], [ %i.ka, %.thread431.i ], [ %i.jw, %.critedge277.i ], [ %i.jw, %bb.ax ] ; 2 uses
  %.5.i = phi ptr [ %.4429.i, %.else.i ], [ null, %.thread431.i ], [ null, %.critedge277.i ], [ %.3564.i, %bb.ax ]
  %.not256.i = icmp eq ptr %.3212.i, null
  br i1 %.not256.i, label %._crit_edge566.i, label %.lr.ph565.i

._crit_edge566.i:                                 ; preds = %.cont.i, %.preheader455.i
  %.2211559.lcssa.i = phi ptr [ %.1736.i, %.preheader455.i ], [ %.8.i, %.cont.i ] ; 14 uses
  %.6421.lcssa.i = phi ptr [ null, %.preheader455.i ], [ %.9.i, %.cont.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.kd = load i8, ptr %.0.398604.i, align 8, !tbaa !106
  %i.ke = icmp ugt i8 %i.kd, 11
  br i1 %i.ke, label %.preheader288.preheader.i.i, label %.loopexit289.loopexit352.i.i

.preheader288.preheader.i.i:                      ; preds = %._crit_edge566.i
  store <4 x i32> splat (i32 2147483647), ptr %i.hv, align 16, !tbaa !40
  store <4 x i32> splat (i32 2147483647), ptr %i.hw, align 16, !tbaa !40
  store <4 x i32> splat (i32 2147483647), ptr %i.hx, align 16, !tbaa !40
  store <4 x i32> splat (i32 2147483647), ptr %i.hy, align 16, !tbaa !40
  br label %.loopexit289.i.i

.loopexit289.loopexit352.i.i:                     ; preds = %._crit_edge566.i
  %i.kf = load i32, ptr %i.k, align 8, !tbaa !186
  store <4 x i32> splat (i32 2147483647), ptr %i.f, align 16, !tbaa !40
  store <4 x i32> splat (i32 2147483647), ptr %i.hs, align 16, !tbaa !40
  store <4 x i32> splat (i32 2147483647), ptr %i.ht, align 16, !tbaa !40
  store <4 x i32> splat (i32 2147483647), ptr %i.hu, align 16, !tbaa !40
  %i.kg = and i32 %i.kf, 2048
  %.not.i287.i = icmp eq i32 %i.kg, 0
  %spec.select.i.i = select i1 %.not.i287.i, i32 65519, i32 65487
  br label %.loopexit289.i.i

.loopexit289.i.i:                                 ; preds = %.loopexit289.loopexit352.i.i, %.preheader288.preheader.i.i
  %.1166.i.i = phi i32 [ -65536, %.preheader288.preheader.i.i ], [ %spec.select.i.i, %.loopexit289.loopexit352.i.i ]
  %i.kh = load i64, ptr %i.hz, align 8, !tbaa !203
  %i.ki = trunc i64 %i.kh to i32
  %i.kj = xor i32 %i.ki, -1
  %i.kk = and i32 %.1166.i.i, %i.kj               ; 2 uses
  %.not200305.i.i = icmp eq ptr %.2211559.lcssa.i, null
  br i1 %.not200305.i.i, label %._crit_edge.i.i, label %.lr.ph.i288.i

.lr.ph.i288.i:                                    ; preds = %.loopexit289.i.i, %bb.bd
  %.0168307.i.i = phi ptr [ %.0168.i.i, %bb.bd ], [ %.2211559.lcssa.i, %.loopexit289.i.i ] ; 2 uses
  %.2167306.i.i = phi i32 [ %.3.i.i, %bb.bd ], [ %i.kk, %.loopexit289.i.i ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.0168307.i.i, i64 1
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !107 ; 3 uses
  %i.kn = icmp sgt i8 %i.km, 31
  br i1 %i.kn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i288.i
  %i.ko = zext nneg i8 %i.km to i64
  %i.kp = getelementptr [4 x i8], ptr @ir_scratch_regset, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kp, i64 -128
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !40
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i288.i
  %i.ks = zext nneg i8 %i.km to i32
  %i.kt = shl nuw i32 1, %i.ks
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn.in.i.i = phi i32 [ %i.kr, %bb.bb ], [ %i.kt, %bb.bc ]
  %.pn.i.i = xor i32 %.pn.in.i.i, -1
  %.3.i.i = and i32 %.2167306.i.i, %.pn.i.i       ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0168307.i.i, i64 56
  %.0168.i.i = load ptr, ptr %i.ku, align 8, !tbaa !79 ; 2 uses
  %.not200.i.i = icmp eq ptr %.0168.i.i, null
  br i1 %.not200.i.i, label %._crit_edge.i.i, label %.lr.ph.i288.i, !llvm.loop !204

._crit_edge.i.i:                                  ; preds = %bb.bd, %.loopexit289.i.i
  %.2167.lcssa.i.i = phi i32 [ %i.kk, %.loopexit289.i.i ], [ %.3.i.i, %bb.bd ] ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.398604.i, i64 12 ; 6 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !109 ; 6 uses
  %.not201312.i.i = icmp eq ptr %.6421.lcssa.i, null ; 3 uses
  br i1 %.not201312.i.i, label %._crit_edge317.thread.i.i, label %.lr.ph316.i.i

.lr.ph316.i.i:                                    ; preds = %._crit_edge.i.i, %ir_ivals_overlap.exit.thread.i.i
  %.0163314.i.i = phi i32 [ %.1164.i.i, %ir_ivals_overlap.exit.thread.i.i ], [ 0, %._crit_edge.i.i ] ; 7 uses
  %.1169313.i.i = phi ptr [ %i.mj, %ir_ivals_overlap.exit.thread.i.i ], [ %.6421.lcssa.i, %._crit_edge.i.i ] ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.1169313.i.i, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !197 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !118 ; 2 uses
  %i.la = icmp slt i32 %i.kz, %i.kw
  br i1 %i.la, label %.preheader350.i.i.outer, label %ir_ivals_overlap.exit.thread.i.i

.preheader350.i.i.outer:                          ; preds = %.lr.ph316.i.i, %._crit_edge366.i.i
  %.pre367.i.i.ph = phi i32 [ %.pre.pre.i.i, %._crit_edge366.i.i ], [ %i.kz, %.lr.ph316.i.i ] ; 2 uses
  %.012.i.i.i.ph = phi ptr [ %.012.i.i.i, %._crit_edge366.i.i ], [ %i.ir, %.lr.ph316.i.i ]
  %.0.i.i292.i.ph = phi ptr [ %i.lj, %._crit_edge366.i.i ], [ %i.ky, %.lr.ph316.i.i ] ; 2 uses
  br label %.preheader350.i.i

.preheader350.i.i:                                ; preds = %.preheader350.i.i.outer, %bb.bg
  %.012.i.i.i = phi ptr [ %i.ll, %bb.bg ], [ %.012.i.i.i.ph, %.preheader350.i.i.outer ] ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !119
  %i.ld = icmp slt i32 %.pre367.i.i.ph, %i.lc
  br i1 %i.ld, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.preheader350.i.i
  %i.le = load i32, ptr %.012.i.i.i, align 8, !tbaa !118 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i.i292.i.ph, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !119
  %i.lh = icmp slt i32 %i.le, %i.lg
  br i1 %i.lh, label %ir_ivals_overlap.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.li = getelementptr inbounds nuw i8, ptr %.0.i.i292.i.ph, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !117 ; 3 uses
  %.not19.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not19.i.i.i, label %ir_ivals_overlap.exit.thread.i.i, label %._crit_edge366.i.i

._crit_edge366.i.i:                               ; preds = %bb.bf
  %.pre.pre.i.i = load i32, ptr %i.lj, align 8, !tbaa !118
  br label %.preheader350.i.i.outer

bb.bg:                                            ; preds = %.preheader350.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !117 ; 2 uses
  %.not.i.i293.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i293.i, label %ir_ivals_overlap.exit.thread.i.i, label %.preheader350.i.i

ir_ivals_overlap.exit.i.i:                        ; preds = %bb.be
  %..i.i.i = call i32 @llvm.smax.i32(i32 %i.le, i32 %.pre367.i.i.ph) ; 3 uses
  %.not221.i.i = icmp eq i32 %..i.i.i, 0
  br i1 %.not221.i.i, label %ir_ivals_overlap.exit.thread.i.i, label %bb.bh

bb.bh:                                            ; preds = %ir_ivals_overlap.exit.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.1169313.i.i, i64 1
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !107 ; 4 uses
  %i.lo = icmp sgt i8 %i.ln, 31
  br i1 %i.lo, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lp = zext nneg i8 %i.ln to i64
  %i.lq = getelementptr [4 x i8], ptr @ir_scratch_regset, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 -128
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !40
  %i.lt = and i32 %i.ls, %.2167.lcssa.i.i         ; 3 uses
  %i.lu = or i32 %i.lt, %.0163314.i.i             ; 2 uses
  %.not223308.i.i = icmp eq i32 %i.lt, 0
  br i1 %.not223308.i.i, label %ir_ivals_overlap.exit.thread.i.i, label %.lr.ph311.i.i

.lr.ph311.i.i:                                    ; preds = %bb.bi, %.lr.ph311.i.i
  %.0270309.i.i = phi i32 [ %i.ly, %.lr.ph311.i.i ], [ %i.lt, %bb.bi ] ; 3 uses
  %i.lv = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.0270309.i.i, i1 true)
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = add i32 %.0270309.i.i, -1
  %i.ly = and i32 %i.lx, %.0270309.i.i            ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.lw ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !40
  %spec.store.select.i294.i = call i32 @llvm.smin.i32(i32 %..i.i.i, i32 %i.ma)
  store i32 %spec.store.select.i294.i, ptr %i.lz, align 4
  %.not223.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not223.i.i, label %ir_ivals_overlap.exit.thread.i.i, label %.lr.ph311.i.i, !llvm.loop !205

bb.bj:                                            ; preds = %bb.bh
  %i.mb = zext nneg i8 %i.ln to i32
  %i.mc = shl nuw i32 1, %i.mb                    ; 2 uses
  %i.md = and i32 %i.mc, %.2167.lcssa.i.i
  %.not222.i.i = icmp eq i32 %i.md, 0
  br i1 %.not222.i.i, label %ir_ivals_overlap.exit.thread.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.me = or i32 %i.mc, %.0163314.i.i
  %i.mf = sext i8 %i.ln to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.mf ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !40
  %spec.store.select282.i.i = call i32 @llvm.smin.i32(i32 %..i.i.i, i32 %i.mh)
  store i32 %spec.store.select282.i.i, ptr %i.mg, align 4
  br label %ir_ivals_overlap.exit.thread.i.i

ir_ivals_overlap.exit.thread.i.i:                 ; preds = %bb.bg, %bb.bf, %.lr.ph311.i.i, %bb.bk, %bb.bj, %bb.bi, %ir_ivals_overlap.exit.i.i, %.lr.ph316.i.i
  %.1164.i.i = phi i32 [ %.0163314.i.i, %.lr.ph316.i.i ], [ %i.lu, %bb.bi ], [ %i.me, %bb.bk ], [ %.0163314.i.i, %bb.bj ], [ %.0163314.i.i, %ir_ivals_overlap.exit.i.i ], [ %i.lu, %.lr.ph311.i.i ], [ %.0163314.i.i, %bb.bf ], [ %.0163314.i.i, %bb.bg ] ; 5 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.1169313.i.i, i64 56
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !181 ; 2 uses
  %.not201.i.i = icmp eq ptr %i.mj, null
  br i1 %.not201.i.i, label %._crit_edge317.i.i, label %.lr.ph316.i.i, !llvm.loop !206

._crit_edge317.i.i:                               ; preds = %ir_ivals_overlap.exit.thread.i.i
  %i.mk = xor i32 %.1164.i.i, -1
  %i.ml = and i32 %.2167.lcssa.i.i, %i.mk         ; 2 uses
  %.not202.i.i = icmp eq i32 %i.ml, 0
  br i1 %.not202.i.i, label %.preheader284.i.i, label %bb.bl

._crit_edge317.thread.i.i:                        ; preds = %._crit_edge.i.i
  %.not202410.i.i = icmp eq i32 %.2167.lcssa.i.i, 0
  br i1 %.not202410.i.i, label %._crit_edge332.i.i, label %bb.bl

.preheader284.i.i:                                ; preds = %._crit_edge317.i.i
  %.not203327.i.i = icmp eq i32 %.1164.i.i, 0
  br i1 %.not203327.i.i, label %._crit_edge332.i.i, label %.lr.ph331.i.i

bb.bl:                                            ; preds = %._crit_edge317.thread.i.i, %._crit_edge317.i.i
  %i.mm = phi i32 [ %.2167.lcssa.i.i, %._crit_edge317.thread.i.i ], [ %i.ml, %._crit_edge317.i.i ] ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.398604.i, i64 2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !108 ; 4 uses
  %i.mp = and i16 %i.mo, 12
  %.not210.i.i = icmp eq i16 %i.mp, 0
  br i1 %.not210.i.i, label %ir_try_allocate_preferred_reg.exit.thread.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mq = and i16 %i.mo, 4
  %.not.i226.i.i = icmp eq i16 %i.mq, 0
  br i1 %.not.i226.i.i, label %.loopexit38.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.398604.i, i64 40
end_hunk_0
