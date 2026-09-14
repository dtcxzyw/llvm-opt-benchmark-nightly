Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_ra?download=true
inline.NumInlined: 87
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ir_reg_alloc:bb.a

bb.x:                                             ; preds = %bb.w
  %i.ek = and i16 %.fr648.i, 12
  %.not.i283.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i283.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0.402.i, i64 2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !84
  %i.en = and i16 %i.em, 12
  %.not37.i.i = icmp eq i16 %i.en, 0
  br i1 %.not37.i.i, label %ir_add_to_unhandled.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !40
  %i.eq = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0.402.i, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !40
  %i.es = icmp sgt i32 %i.ep, %i.er
  br i1 %i.es, label %ir_add_to_unhandled.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0.402.i, i64 56 ; 5 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !104 ; 5 uses
  %.not3845.i.i = icmp eq ptr %i.eu, null
  br i1 %.not3845.i.i, label %ir_add_to_unhandled.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !71 ; 3 uses
  %i.ey = icmp slt i32 %i.ee, %i.ex
  br i1 %i.ey, label %ir_add_to_unhandled.exit.i, label %.lr.ph521.i

.lr.ph521.i:                                      ; preds = %.lr.ph.i.i
  %i.ez = and i16 %.fr648.i, 12
  %.not39.i.i = icmp eq i16 %i.ez, 0
  br i1 %.not39.i.i, label %.lr.ph521.split.us.i, label %.lr.ph521.split.i

.lr.ph521.split.us.i:                             ; preds = %.lr.ph521.i, %bb.ab
  %i.fa = phi i32 [ %i.fe, %bb.ab ], [ %i.ex, %.lr.ph521.i ]
  %i.fb = phi ptr [ %i.fk, %bb.ab ], [ %i.et, %.lr.ph521.i ]
  %.0.i282520.us.i = phi ptr [ %i.fl, %bb.ab ], [ %i.eu, %.lr.ph521.i ] ; 3 uses
  %i.fc = icmp eq i32 %i.ee, %i.fa
  br i1 %i.fc, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !71 ; 2 uses
  %i.ff = icmp slt i32 %i.ee, %i.fe
  br i1 %i.ff, label %ir_add_to_unhandled.exit.i, label %.lr.ph521.split.us.i, !llvm.loop !190

bb.ac:                                            ; preds = %.lr.ph521.split.us.i
  %i.fg = load i32, ptr %i.ev, align 4, !tbaa !40
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i282520.us.i, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !40
  %i.fj = icmp sgt i32 %i.fg, %i.fi
  br i1 %i.fj, label %ir_add_to_unhandled.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph521.split.us.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i282520.us.i, i64 56 ; 4 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !104 ; 4 uses
  %.not38.i.us.i = icmp eq ptr %i.fl, null
  br i1 %.not38.i.us.i, label %.ir_add_to_unhandled.exit.loopexit_crit_edge.i, label %bb.ab, !llvm.loop !190

bb.ae:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !71 ; 2 uses
  %i.fo = icmp slt i32 %i.ee, %i.fn
  br i1 %i.fo, label %ir_add_to_unhandled.exit.i, label %.lr.ph521.split.i, !llvm.loop !190

.lr.ph521.split.i:                                ; preds = %.lr.ph521.i, %bb.ae
  %i.fp = phi i32 [ %i.fn, %bb.ae ], [ %i.ex, %.lr.ph521.i ]
  %i.fq = phi ptr [ %i.fz, %bb.ae ], [ %i.et, %.lr.ph521.i ] ; 2 uses
  %.0.i282520.i = phi ptr [ %i.ga, %bb.ae ], [ %i.eu, %.lr.ph521.i ] ; 5 uses
  %i.fr = icmp eq i32 %i.ee, %i.fp
  br i1 %i.fr, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph521.split.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i282520.i, i64 2
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !84
  %i.fu = and i16 %i.ft, 12
  %.not40.i.i = icmp eq i16 %i.fu, 0
  br i1 %.not40.i.i, label %ir_add_to_unhandled.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fv = load i32, ptr %i.ev, align 4, !tbaa !40
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i282520.i, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !40
  %i.fy = icmp sgt i32 %i.fv, %i.fx
  br i1 %i.fy, label %ir_add_to_unhandled.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph521.split.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i282520.i, i64 56 ; 4 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !104 ; 4 uses
  %.not38.i.i = icmp eq ptr %i.ga, null
  br i1 %.not38.i.i, label %.ir_add_to_unhandled.exit.loopexit_crit_edge.i, label %bb.ae, !llvm.loop !190

.ir_add_to_unhandled.exit.loopexit_crit_edge.i:   ; preds = %bb.ah, %bb.ad
  %.us-phi536.i = phi ptr [ %i.fk, %bb.ad ], [ %i.fz, %bb.ah ]
  br label %ir_add_to_unhandled.exit.i, !llvm.loop !190

ir_add_to_unhandled.exit.i:                       ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %.ir_add_to_unhandled.exit.loopexit_crit_edge.i, %.lr.ph.i.i, %bb.aa, %bb.z, %bb.y, %bb.v, %ir_ival_spill_for_fuse_load.exit.thread.i
  %.lcssa.sink.i.i = phi ptr [ null, %ir_ival_spill_for_fuse_load.exit.thread.i ], [ %.0..0..0..0..0.402.i, %bb.z ], [ %.0..0..0..0..0.402.i, %bb.y ], [ %.0..0..0..0..0.402.i, %bb.v ], [ null, %bb.aa ], [ null, %.ir_add_to_unhandled.exit.loopexit_crit_edge.i ], [ %i.eu, %.lr.ph.i.i ], [ %.0.i282520.us.i, %bb.ac ], [ %i.fl, %bb.ab ], [ %i.ga, %bb.ae ], [ %.0.i282520.i, %bb.af ], [ %.0.i282520.i, %bb.ag ]
  %.lcssa43.sink.i.i = phi ptr [ %i.g, %ir_ival_spill_for_fuse_load.exit.thread.i ], [ %i.g, %bb.z ], [ %i.g, %bb.y ], [ %i.g, %bb.v ], [ %i.et, %bb.aa ], [ %.us-phi536.i, %.ir_add_to_unhandled.exit.loopexit_crit_edge.i ], [ %i.et, %.lr.ph.i.i ], [ %i.fb, %bb.ac ], [ %i.fk, %bb.ab ], [ %i.fz, %bb.ae ], [ %i.fq, %bb.af ], [ %i.fq, %bb.ag ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  store ptr %.lcssa.sink.i.i, ptr %i.gb, align 8, !tbaa !104
  store ptr %i.dg, ptr %.lcssa43.sink.i.i, align 8, !tbaa !66
  br label %ir_ival_spill_for_fuse_load.exit.i

ir_ival_spill_for_fuse_load.exit.i:               ; preds = %ir_add_to_unhandled.exit.i, %ir_block_from_live_pos.exit.i.i, %bb.q, %bb.o
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %.not234.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not234.i, label %._crit_edge541.i, label %bb.o, !llvm.loop !191

._crit_edge541.i:                                 ; preds = %ir_ival_spill_for_fuse_load.exit.i, %._crit_edge.i
  %i.gc = load ptr, ptr %.pre739.i, align 8, !tbaa !66 ; 4 uses
  %.not235.i = icmp eq ptr %i.gc, null
  br i1 %.not235.i, label %ir_merge_to_unhandled.exit.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge541.i
  %.0..0..0..0..0.403.i = load ptr, ptr %i.g, align 8, !tbaa !66 ; 2 uses
  %i.gd = icmp eq ptr %.0..0..0..0..0.403.i, null
  br i1 %i.gd, label %bb.aj, label %.preheader.i.i

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.gc, ptr %i.g, align 8, !tbaa !66
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.01833.i.i = phi ptr [ %i.gc, %bb.aj ], [ %i.gf, %bb.ak ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01833.i.i, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !88 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.01833.i.i, i64 56
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !104
  %.not23.i.i = icmp eq ptr %i.gf, null
  br i1 %.not23.i.i, label %ir_merge_to_unhandled.exit.i, label %bb.ak, !llvm.loop !192

.preheaderthread-pre-split.i.i:                   ; preds = %.critedge.i285.i
  %.pr.i.i = load ptr, ptr %i.gt, align 8, !tbaa !66
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ai, %.preheaderthread-pre-split.i.i
  %i.gh = phi ptr [ %.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %.0..0..0..0..0.403.i, %bb.ai ] ; 4 uses
  %.032.i.i = phi ptr [ %i.gt, %.preheaderthread-pre-split.i.i ], [ %i.g, %bb.ai ] ; 2 uses
  %.11931.i.i = phi ptr [ %i.gv, %.preheaderthread-pre-split.i.i ], [ %i.gc, %bb.ai ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.11931.i.i, i64 16
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !71 ; 2 uses
  %.not2125.i.i = icmp eq ptr %i.gh, null
  br i1 %.not2125.i.i, label %.critedge.i285.i, label %.lr.ph.i284.preheader.i

.lr.ph.i284.preheader.i:                          ; preds = %.preheader.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !71
  %.not22.i542.i = icmp slt i32 %i.gj, %i.gl
  br i1 %.not22.i542.i, label %.critedge.i285.i, label %.lr.ph543.i

.lr.ph.i284.i:                                    ; preds = %.lr.ph543.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !71
  %.not22.i.i = icmp slt i32 %i.gj, %i.gn
  br i1 %.not22.i.i, label %.critedge.i285.i.loopexit, label %.lr.ph543.i, !llvm.loop !193

.lr.ph543.i:                                      ; preds = %.lr.ph.i284.preheader.i, %.lr.ph.i284.i
  %i.go = phi ptr [ %i.gq, %.lr.ph.i284.i ], [ %i.gh, %.lr.ph.i284.preheader.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !66 ; 4 uses
  %.not21.i.i = icmp eq ptr %i.gq, null
  br i1 %.not21.i.i, label %..critedge.i285.loopexit_crit_edge.i, label %.lr.ph.i284.i, !llvm.loop !193

..critedge.i285.loopexit_crit_edge.i:             ; preds = %.lr.ph543.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  br label %.critedge.i285.i, !llvm.loop !193

.critedge.i285.i.loopexit:                        ; preds = %.lr.ph.i284.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  br label %.critedge.i285.i

.critedge.i285.i:                                 ; preds = %.critedge.i285.i.loopexit, %..critedge.i285.loopexit_crit_edge.i, %.lr.ph.i284.preheader.i, %.preheader.i.i
  %.1.lcssa.i.i = phi ptr [ %.032.i.i, %.preheader.i.i ], [ %.032.i.i, %.lr.ph.i284.preheader.i ], [ %i.gr, %..critedge.i285.loopexit_crit_edge.i ], [ %i.gs, %.critedge.i285.i.loopexit ]
  %.lcssa.i.i = phi ptr [ null, %.preheader.i.i ], [ %i.gh, %.lr.ph.i284.preheader.i ], [ null, %..critedge.i285.loopexit_crit_edge.i ], [ %i.gq, %.critedge.i285.i.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.11931.i.i, i64 56 ; 3 uses
  store ptr %.lcssa.i.i, ptr %i.gt, align 8, !tbaa !104
  store ptr %.11931.i.i, ptr %.1.lcssa.i.i, align 8, !tbaa !66
  %i.gu = getelementptr inbounds nuw i8, ptr %.11931.i.i, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !88 ; 2 uses
  %.not.i286.i = icmp eq ptr %i.gv, null
  br i1 %.not.i286.i, label %ir_merge_to_unhandled.exit.i, label %.preheaderthread-pre-split.i.i, !llvm.loop !194

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
  %indvars.iv.next726.i.prol = add nsw i64 %i.gw, 1 ; 3 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %.pre739.i, i64 %indvars.iv.next726.i.prol
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !66 ; 6 uses
  %.not272.i.prol = icmp eq ptr %i.hc, null
  br i1 %.not272.i.prol, label %.prol.loopexit, label %bb.al

bb.al:                                            ; preds = %.prol.preheader
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !246
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  store ptr null, ptr %i.hf, align 8, !tbaa !104
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.al, %ir_merge_to_unhandled.exit.i
  %.1416.i.lcssa.unr = phi ptr [ poison, %ir_merge_to_unhandled.exit.i ], [ null, %.prol.preheader ], [ %i.hc, %bb.al ]
  %indvars.iv725.i.unr = phi i64 [ %i.gw, %ir_merge_to_unhandled.exit.i ], [ %indvars.iv.next726.i.prol, %bb.al ], [ %indvars.iv.next726.i.prol, %.prol.preheader ]
  %.0415548.i.unr = phi ptr [ null, %ir_merge_to_unhandled.exit.i ], [ null, %.prol.preheader ], [ %i.hc, %bb.al ]
  %.not = icmp slt i32 %i.db, 2147483613
  br i1 %.not, label %ir_merge_to_unhandled.exit.i.new, label %.unr-lcssa

ir_merge_to_unhandled.exit.i.new:                 ; preds = %.prol.loopexit, %bb.ap
  %indvars.iv725.i = phi i64 [ %indvars.iv.next726.i.1, %bb.ap ], [ %indvars.iv725.i.unr, %.prol.loopexit ] ; 2 uses
  %.0415548.i = phi ptr [ %.1416.i.1, %bb.ap ], [ %.0415548.i.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv.next726.i = add nsw i64 %indvars.iv725.i, 1 ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %.pre739.i, i64 %indvars.iv.next726.i
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !66 ; 5 uses
  %.not272.i = icmp eq ptr %i.hh, null
  br i1 %.not272.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %ir_merge_to_unhandled.exit.i.new
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !246
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  store ptr %.0415548.i, ptr %i.hk, align 8, !tbaa !104
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %ir_merge_to_unhandled.exit.i.new
  %.1416.i = phi ptr [ %.0415548.i, %ir_merge_to_unhandled.exit.i.new ], [ %i.hh, %bb.am ] ; 2 uses
  %indvars.iv.next726.i.1 = add nsw i64 %indvars.iv725.i, 2 ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %.pre739.i, i64 %indvars.iv.next726.i.1
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !66 ; 5 uses
  %.not272.i.1 = icmp eq ptr %i.hm, null
  br i1 %.not272.i.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !246
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  store ptr %.1416.i, ptr %i.hp, align 8, !tbaa !104
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1416.i.1 = phi ptr [ %.1416.i, %bb.an ], [ %i.hm, %bb.ao ] ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next726.i, %smax
  br i1 %exitcond.not.1, label %.unr-lcssa, label %ir_merge_to_unhandled.exit.i.new, !llvm.loop !195

.unr-lcssa:                                       ; preds = %bb.ap, %.prol.loopexit
  %.1416.i.lcssa = phi ptr [ %.1416.i.lcssa.unr, %.prol.loopexit ], [ %.1416.i.1, %bb.ap ]
  %i.hq = load i32, ptr %i.u, align 4, !tbaa !49
  %i.hr = and i32 %i.hq, -100663297
  store i32 %i.hr, ptr %i.u, align 4, !tbaa !49
  %.0..0..0..0..0.398600.i = load ptr, ptr %i.g, align 8, !tbaa !66 ; 2 uses
  %.not237601.i = icmp eq ptr %.0..0..0..0..0.398600.i, null
  br i1 %.not237601.i, label %bb.mr, label %.lr.ph607.i

.lr.ph607.i:                                      ; preds = %.unr-lcssa
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

bb.aq:                                            ; preds = %bb.lm, %.lr.ph607.i
  %.0734.i = phi ptr [ null, %.lr.ph607.i ], [ %.21.i, %bb.lm ] ; 3 uses
  %.0.398603.i = phi ptr [ %.0..0..0..0..0.398600.i, %.lr.ph607.i ], [ %.0..0..0..0..0.398.i, %bb.lm ] ; 32 uses
  %.2417602.i = phi ptr [ %.1416.i.lcssa, %.lr.ph607.i ], [ %.6421.lcssa.i, %bb.lm ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.398603.i, i64 16 ; 15 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0.398603.i, i64 32
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !246
  %i.it = getelementptr inbounds nuw i8, ptr %.0.398603.i, i64 56 ; 4 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !104 ; 17 uses
  store ptr %i.iu, ptr %i.g, align 8, !tbaa !66
  %i.iv = load i32, ptr %i.ir, align 8, !tbaa !71 ; 8 uses
  %.not255550.i = icmp eq ptr %.0734.i, null
  br i1 %.not255550.i, label %.preheader455.i, label %.lr.ph555.i

.preheader455.i:                                  ; preds = %.cont731.i, %bb.aq
  %.1735.i = phi ptr [ null, %bb.aq ], [ %.5736.i, %.cont731.i ] ; 3 uses
  %.3418.lcssa.i = phi ptr [ %.2417602.i, %bb.aq ], [ %.5420.i, %.cont731.i ] ; 3 uses
  %.not256560.i = icmp eq ptr %.3418.lcssa.i, null
  br i1 %.not256560.i, label %._crit_edge566.i, label %.lr.ph565.i

.lr.ph555.i:                                      ; preds = %bb.aq, %.cont731.i
  %.2.i = phi ptr [ %.5736.i, %.cont731.i ], [ %.0734.i, %bb.aq ] ; 2 uses
  %.0206553.i = phi ptr [ %.2208.i, %.cont731.i ], [ null, %bb.aq ] ; 6 uses
  %.0209552.i = phi ptr [ %.1210.i, %.cont731.i ], [ %.0734.i, %bb.aq ] ; 6 uses
  %.3418551.i = phi ptr [ %.5420.i, %.cont731.i ], [ %.2417602.i, %bb.aq ] ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0209552.i, i64 32 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !246 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !92
  %.not265.i = icmp sgt i32 %i.iz, %i.iv
  br i1 %.not265.i, label %bb.at, label %.preheader448.i

.preheader448.i:                                  ; preds = %.lr.ph555.i, %bb.ar
  %.0199.i = phi ptr [ %i.jb, %bb.ar ], [ %i.ix, %.lr.ph555.i ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.0199.i, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !90 ; 5 uses
  %.not266.i = icmp eq ptr %i.jb, null
  br i1 %.not266.i, label %.critedge276.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader448.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !92
  %.not267.i = icmp sgt i32 %i.jd, %i.iv
  br i1 %.not267.i, label %.critedge.i, label %.preheader448.i, !llvm.loop !196

.critedge276.i:                                   ; preds = %.preheader448.i
  %i.je = getelementptr inbounds nuw i8, ptr %.0209552.i, i64 56
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !104 ; 4 uses
  %.not268.i = icmp eq ptr %.0206553.i, null
  br i1 %.not268.i, label %.cont731.i, label %bb.as, !llvm.loop !197

bb.as:                                            ; preds = %.critedge276.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.0206553.i, i64 56
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !104
  br label %.cont731.i, !llvm.loop !197

.critedge.i:                                      ; preds = %bb.ar
  store ptr %i.jb, ptr %i.iw, align 8, !tbaa !246
  br label %bb.at

bb.at:                                            ; preds = %.critedge.i, %.lr.ph555.i
  %.1200.i = phi ptr [ %i.jb, %.critedge.i ], [ %i.ix, %.lr.ph555.i ]
  %i.jh = load i32, ptr %.1200.i, align 8, !tbaa !91
  %i.ji = icmp slt i32 %i.iv, %i.jh
  br i1 %i.ji, label %bb.au, label %.else732.i

bb.au:                                            ; preds = %bb.at
  %.not269.i = icmp eq ptr %.0206553.i, null
  %i.jj = getelementptr inbounds nuw i8, ptr %.0209552.i, i64 56 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !104 ; 3 uses
  br i1 %.not269.i, label %.thread933.i, label %bb.av

.thread933.i:                                     ; preds = %bb.au
  store ptr %.3418551.i, ptr %i.jj, align 8, !tbaa !104
  br label %.cont731.i

bb.av:                                            ; preds = %bb.au
  %i.jl = getelementptr inbounds nuw i8, ptr %.0206553.i, i64 56
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !104
  store ptr %.3418551.i, ptr %i.jj, align 8, !tbaa !104
  br label %.else732.i

.else732.i:                                       ; preds = %bb.av, %bb.at
  %.1207931.i = phi ptr [ %.0206553.i, %bb.av ], [ %.0209552.i, %bb.at ] ; 2 uses
  %.4419929.i = phi ptr [ %.0209552.i, %bb.av ], [ %.3418551.i, %bb.at ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.1207931.i, i64 56
  %.else.val733.i = load ptr, ptr %i.jm, align 8, !tbaa !66
  br label %.cont731.i

.cont731.i:                                       ; preds = %.else732.i, %.thread933.i, %bb.as, %.critedge276.i
  %.5736.i = phi ptr [ %i.jf, %.critedge276.i ], [ %.2.i, %bb.as ], [ %i.jk, %.thread933.i ], [ %.2.i, %.else732.i ] ; 2 uses
  %.5420.i = phi ptr [ %.3418551.i, %.critedge276.i ], [ %.3418551.i, %bb.as ], [ %.0209552.i, %.thread933.i ], [ %.4419929.i, %.else732.i ] ; 2 uses
  %.1210.i = phi ptr [ %i.jf, %.critedge276.i ], [ %i.jf, %bb.as ], [ %i.jk, %.thread933.i ], [ %.else.val733.i, %.else732.i ] ; 2 uses
  %.2208.i = phi ptr [ null, %.critedge276.i ], [ %.0206553.i, %bb.as ], [ null, %.thread933.i ], [ %.1207931.i, %.else732.i ]
  %.not255.i = icmp eq ptr %.1210.i, null
  br i1 %.not255.i, label %.preheader455.i, label %.lr.ph555.i

.lr.ph565.i:                                      ; preds = %.preheader455.i, %.cont.i
  %.6.i = phi ptr [ %.8.i, %.cont.i ], [ %.1735.i, %.preheader455.i ] ; 3 uses
  %.3564.i = phi ptr [ %.5.i, %.cont.i ], [ null, %.preheader455.i ] ; 6 uses
  %.2211563.i = phi ptr [ %.3212.i, %.cont.i ], [ %.3418.lcssa.i, %.preheader455.i ] ; 8 uses
  %.6421562.i = phi ptr [ %.9.i, %.cont.i ], [ %.3418.lcssa.i, %.preheader455.i ] ; 2 uses
  %.2211559561.i = phi ptr [ %.2211557.i, %.cont.i ], [ %.1735.i, %.preheader455.i ] ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.2211563.i, i64 32 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !246 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !92
  %.not257.i = icmp sgt i32 %i.jq, %i.iv
  br i1 %.not257.i, label %bb.ay, label %.preheader447.i

.preheader447.i:                                  ; preds = %.lr.ph565.i, %bb.aw
  %.0197.i = phi ptr [ %i.js, %bb.aw ], [ %i.jo, %.lr.ph565.i ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.0197.i, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !90 ; 5 uses
  %.not258.i = icmp eq ptr %i.js, null
  br i1 %.not258.i, label %.critedge277.i, label %bb.aw

bb.aw:                                            ; preds = %.preheader447.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !92
  %.not259.i = icmp sgt i32 %i.ju, %i.iv
  br i1 %.not259.i, label %.critedge2.i, label %.preheader447.i, !llvm.loop !198

.critedge277.i:                                   ; preds = %.preheader447.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.2211563.i, i64 56
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !104 ; 4 uses
  %.not260.i = icmp eq ptr %.3564.i, null
  br i1 %.not260.i, label %.cont.i, label %bb.ax, !llvm.loop !199

bb.ax:                                            ; preds = %.critedge277.i
  %i.jx = getelementptr inbounds nuw i8, ptr %.3564.i, i64 56
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !104
  br label %.cont.i, !llvm.loop !199

.critedge2.i:                                     ; preds = %bb.aw
  store ptr %i.js, ptr %i.jn, align 8, !tbaa !246
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge2.i, %.lr.ph565.i
  %.1198.i = phi ptr [ %i.js, %.critedge2.i ], [ %i.jo, %.lr.ph565.i ]
  %i.jy = load i32, ptr %.1198.i, align 8, !tbaa !91
  %.not261.i = icmp slt i32 %i.iv, %i.jy
  br i1 %.not261.i, label %.else.i, label %bb.az

end_hunk_0
