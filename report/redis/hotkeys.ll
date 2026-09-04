Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hotkeys?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@hotkeysCommand:bb.a
bb.bf:                                            ; preds = %bb.bd
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 136
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !25 ; 2 uses
  %.not334 = icmp eq i64 %i.ef, 0
  br i1 %.not334, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %bb.bf
  tail call void @_serverAssert(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 505) #12
  tail call void @abort() #13
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !30
  %.not335 = icmp eq i32 %i.eh, 0
  br i1 %.not335, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 128
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !27
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ek = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !60
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !61
  %i.en = sub nsw i64 %i.ek, %i.em
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0254.in = phi i64 [ %i.en, %bb.bj ], [ %i.ej, %bb.bi ]
  %i.eo = and i64 %i.ef, 1
  %.not336 = icmp eq i64 %i.eo, 0
  br i1 %.not336, label %.loopexit386, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.ep = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #12 ; 0 uses
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 80
  %i.es = load i64, ptr %1, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = load i64, ptr %i.er, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = sub i64 %i.es, %i.ev
  %i.ez = sub nsw i64 %i.eu, %i.ex                ; 4 uses
  %i.fa = icmp slt i64 %i.ez, 0
  %i.fb = add nsw i64 %i.ez, 1000000
  %.lobit.i = ashr i64 %i.ez, 63
  %.07.i = add nsw i64 %i.ey, %.lobit.i
  %.0.i = select i1 %i.fa, i64 %i.fb, i64 %i.ez
  %i.fc = mul nsw i64 %.07.i, 1000
  %i.fd = sdiv i64 %.0.i, 1000
  %i.fe = add nsw i64 %i.fc, %i.fd                ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %i.fh = load i64, ptr %i.ff, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = load i64, ptr %i.fg, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = sub i64 %i.fh, %i.fk
  %i.fo = sub nsw i64 %i.fj, %i.fm                ; 4 uses
  %i.fp = icmp slt i64 %i.fo, 0
  %i.fq = add nsw i64 %i.fo, 1000000
  %.lobit.i360 = ashr i64 %i.fo, 63
  %.07.i361 = add nsw i64 %i.fn, %.lobit.i360
  %.0.i362 = select i1 %i.fp, i64 %i.fq, i64 %i.fo
  %i.fr = mul nsw i64 %.07.i361, 1000
  %i.fs = sdiv i64 %.0.i362, 1000
  %i.ft = add nsw i64 %i.fr, %i.fs                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.eq, i64 136
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.pre559 = and i64 %.pre, 1
  %i.fu = icmp eq i64 %.pre559, 0
  br i1 %i.fu, label %.loopexit386, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fv = load ptr, ptr %i.eq, align 8, !tbaa !23
  %i.fw = call ptr @chkTopKList(ptr noundef %i.fv) #12 ; 4 uses
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 112
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !26 ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.preheader, label %.loopexit386

.lr.ph.preheader:                                 ; preds = %bb.bm
  %wide.trip.count = zext nneg i32 %i.fz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bn
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bn ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %indvars.iv
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !120
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %.loopexit386.loopexit.split.loop.exit610, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit386, label %.lr.ph, !llvm.loop !110

.loopexit386.loopexit.split.loop.exit610:         ; preds = %.lr.ph
  %indvars509.le = trunc i64 %indvars.iv to i32
  br label %.loopexit386

.loopexit386:                                     ; preds = %bb.bn, %.loopexit386.loopexit.split.loop.exit610, %bb.bk, %bb.bm, %bb.bl
  %.0252592 = phi i64 [ %i.ft, %bb.bl ], [ %i.ft, %bb.bm ], [ 0, %bb.bk ], [ %i.ft, %.loopexit386.loopexit.split.loop.exit610 ], [ %i.ft, %bb.bn ]
  %.0253591 = phi i64 [ %i.fe, %bb.bl ], [ %i.fe, %bb.bm ], [ 0, %bb.bk ], [ %i.fe, %.loopexit386.loopexit.split.loop.exit610 ], [ %i.fe, %bb.bn ]
  %i.ge = phi ptr [ %i.eq, %bb.bl ], [ %i.fx, %bb.bm ], [ %i.ed, %bb.bk ], [ %i.fx, %.loopexit386.loopexit.split.loop.exit610 ], [ %i.fx, %bb.bn ] ; 3 uses
  %.0250 = phi ptr [ null, %bb.bl ], [ %i.fw, %bb.bm ], [ null, %bb.bk ], [ %i.fw, %.loopexit386.loopexit.split.loop.exit610 ], [ %i.fw, %bb.bn ] ; 2 uses
  %.1248 = phi i32 [ 0, %bb.bl ], [ 0, %bb.bm ], [ 0, %bb.bk ], [ %indvars509.le, %.loopexit386.loopexit.split.loop.exit610 ], [ %i.fz, %bb.bn ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 136
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !25
  %i.gh = and i64 %i.gg, 2
  %.not338 = icmp eq i64 %i.gh, 0
  br i1 %.not338, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %.loopexit386
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !24 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 6216
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !122 ; 3 uses
  %i.gm = call ptr @chkTopKList(ptr noundef %i.gj) #12 ; 4 uses
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !26 ; 3 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph442.preheader, label %.loopexit

.lr.ph442.preheader:                              ; preds = %bb.bo
  %wide.trip.count515 = zext nneg i32 %i.gp to i64
  br label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %bb.bp
  %indvars.iv510 = phi i64 [ 0, %.lr.ph442.preheader ], [ %indvars.iv.next511, %bb.bp ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %indvars.iv510
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !120
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %.loopexit.loopexit.split.loop.exit612, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph442
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next511, %wide.trip.count515
  br i1 %exitcond516.not, label %.loopexit, label %.lr.ph442, !llvm.loop !111

.loopexit.loopexit.split.loop.exit612:            ; preds = %.lr.ph442
  %indvars514.le = trunc i64 %indvars.iv510 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bp, %.loopexit.loopexit.split.loop.exit612, %bb.bo, %.loopexit386
  %i.gu = phi ptr [ %i.ge, %.loopexit386 ], [ %i.gn, %bb.bo ], [ %i.gn, %.loopexit.loopexit.split.loop.exit612 ], [ %i.gn, %bb.bp ] ; 2 uses
  %.0251 = phi i64 [ 0, %.loopexit386 ], [ %i.gl, %bb.bo ], [ %i.gl, %.loopexit.loopexit.split.loop.exit612 ], [ %i.gl, %bb.bp ]
  %.0249 = phi ptr [ null, %.loopexit386 ], [ %i.gm, %bb.bo ], [ %i.gm, %.loopexit.loopexit.split.loop.exit612 ], [ %i.gm, %bb.bp ] ; 2 uses
  %.1246 = phi i32 [ 0, %.loopexit386 ], [ 0, %bb.bo ], [ %indvars514.le, %.loopexit.loopexit.split.loop.exit612 ], [ %i.gp, %bb.bp ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !29
  %i.gx = icmp ne ptr %i.gw, null                 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 116
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.ha = icmp sgt i32 %i.gz, 1
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 1) #12
  %i.hb = call ptr @addReplyDeferredLen(ptr noundef %0) #12
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.54) #12
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 120
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !30
  %.not339 = icmp ne i32 %i.he, 0
  %i.hf = zext i1 %.not339 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hf) #12
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.55) #12
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 116
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !28
  %i.hj = sext i32 %i.hi to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hj) #12
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.56) #12
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.hl = getelementptr i8, ptr %i.hk, i64 24
  %.val = load ptr, ptr %i.hl, align 8, !tbaa !29
  call fastcc void @addReplySelectedSlots(ptr noundef %0, ptr %.val)
  %or.cond = select i1 %i.ha, i1 %i.gx, i1 false  ; 2 uses
  br i1 %or.cond, label %.thread375, label %bb.bq

.thread375:                                       ; preds = %.loopexit
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.57) #12
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !86
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ho) #12
  br label %bb.br

bb.bq:                                            ; preds = %.loopexit
  br i1 %i.gx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.thread375, %bb.bq
  %.0242377 = phi i64 [ 9, %.thread375 ], [ 8, %bb.bq ]
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.58) #12
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !84
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hr) #12
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.1 = phi i64 [ %.0242377, %bb.br ], [ 7, %bb.bq ] ; 3 uses
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.59) #12
  %i.hs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !82
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hu) #12
  br i1 %or.cond, label %.thread378, label %bb.bt

.thread378:                                       ; preds = %bb.bs
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.60) #12
  %i.hv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !87
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hx) #12
  %2 = add nuw nsw i64 %.1, 1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.gx, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.thread378, %bb.bt
  %.2380 = phi i64 [ %2, %.thread378 ], [ %.1, %bb.bt ]
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.61) #12
  %i.hy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !85
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ia) #12
  %3 = add nuw nsw i64 %.2380, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.3 = phi i64 [ %3, %bb.bu ], [ %.1, %bb.bt ]   ; 2 uses
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.62) #12
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 72
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !83
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.id) #12
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.63) #12
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !61
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ig) #12
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.64) #12
  %sext340 = shl i64 %.0254.in, 32
  %i.ih = ashr exact i64 %sext340, 32
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ih) #12
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 136
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !25 ; 2 uses
  %i.il = and i64 %i.ik, 1
  %.not341 = icmp eq i64 %i.il, 0
  br i1 %.not341, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.65) #12
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %.0253591) #12
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.66) #12
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %.0252592) #12
  %4 = add nuw nsw i64 %.3, 2
  %.pre549 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %.phi.trans.insert550 = getelementptr inbounds nuw i8, ptr %.pre549, i64 136
  %.pre551 = load i64, ptr %.phi.trans.insert550, align 8, !tbaa !25
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.im = phi i64 [ %.pre551, %bb.bw ], [ %i.ik, %bb.bv ] ; 2 uses
  %.4 = phi i64 [ %4, %bb.bw ], [ %.3, %bb.bv ]   ; 2 uses
  %i.in = and i64 %i.im, 2
  %.not342 = icmp eq i64 %i.in, 0
  br i1 %.not342, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.67) #12
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %.0251) #12
  %5 = add nuw nsw i64 %.4, 1
  %.pre552 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %.phi.trans.insert553 = getelementptr inbounds nuw i8, ptr %.pre552, i64 136
  %.pre554 = load i64, ptr %.phi.trans.insert553, align 8, !tbaa !25
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.io = phi i64 [ %.pre554, %bb.by ], [ %i.im, %bb.bx ] ; 2 uses
  %.5 = phi i64 [ %5, %bb.by ], [ %.4, %bb.bx ]   ; 2 uses
  %i.ip = and i64 %i.io, 1
  %.not343 = icmp eq i64 %i.ip, 0
  br i1 %.not343, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.68) #12
  %i.iq = shl nuw nsw i32 %.1248, 1
  %i.ir = zext nneg i32 %i.iq to i64
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.ir) #12
  %.not486 = icmp eq i32 %.1248, 0
  br i1 %.not486, label %._crit_edge, label %.lr.ph447.preheader

.lr.ph447.preheader:                              ; preds = %bb.ca
  %wide.trip.count520 = zext i32 %.1248 to i64
  br label %.lr.ph447

._crit_edge:                                      ; preds = %sdslen.exit, %bb.ca
  call void @zfree(ptr noundef %.0250) #12
  %6 = add nuw nsw i64 %.5, 1
  %.pre555 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %.phi.trans.insert556 = getelementptr inbounds nuw i8, ptr %.pre555, i64 136
  %.pre557 = load i64, ptr %.phi.trans.insert556, align 8, !tbaa !25
  br label %bb.cg

.lr.ph447:                                        ; preds = %.lr.ph447.preheader, %sdslen.exit
  %indvars.iv517 = phi i64 [ 0, %.lr.ph447.preheader ], [ %indvars.iv.next518, %sdslen.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %.0250, i64 %indvars.iv517 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !123 ; 6 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 -1
  %.val.i = load i8, ptr %i.iv, align 1, !tbaa !91 ; 2 uses
  %i.iw = and i8 %.val.i, 7
  switch i8 %i.iw, label %sdslen.exit [
    i8 0, label %bb.cb
    i8 1, label %bb.cc
    i8 2, label %bb.cd
    i8 3, label %bb.ce
    i8 4, label %bb.cf
  ]

bb.cb:                                            ; preds = %.lr.ph447
  %i.ix = lshr i8 %.val.i, 3
  %i.iy = zext nneg i8 %i.ix to i64
  br label %sdslen.exit

bb.cc:                                            ; preds = %.lr.ph447
  %i.iz = getelementptr inbounds i8, ptr %i.iu, i64 -3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !91
  %i.jb = zext i8 %i.ja to i64
  br label %sdslen.exit

bb.cd:                                            ; preds = %.lr.ph447
  %i.jc = getelementptr inbounds i8, ptr %i.iu, i64 -5
  %i.jd = load i16, ptr %i.jc, align 1, !tbaa !93
  %i.je = zext i16 %i.jd to i64
  br label %sdslen.exit

bb.ce:                                            ; preds = %.lr.ph447
  %i.jf = getelementptr inbounds i8, ptr %i.iu, i64 -9
  %i.jg = load i32, ptr %i.jf, align 1, !tbaa !12
  %i.jh = zext i32 %i.jg to i64
  br label %sdslen.exit

bb.cf:                                            ; preds = %.lr.ph447
  %i.ji = getelementptr inbounds i8, ptr %i.iu, i64 -17
  %i.jj = load i64, ptr %i.ji, align 1, !tbaa !62
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph447, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf
  %.0.i363 = phi i64 [ %i.jj, %bb.cf ], [ %i.iy, %bb.cb ], [ %i.jb, %bb.cc ], [ %i.je, %bb.cd ], [ %i.jh, %bb.ce ], [ 0, %.lr.ph447 ]
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.iu, i64 noundef %.0.i363) #12
  %i.jk = load i64, ptr %i.is, align 8, !tbaa !120
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.jk) #12
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %exitcond521.not = icmp eq i64 %indvars.iv.next518, %wide.trip.count520
  br i1 %exitcond521.not, label %._crit_edge, label %.lr.ph447, !llvm.loop !112

bb.cg:                                            ; preds = %._crit_edge, %bb.bz
  %i.jl = phi i64 [ %.pre557, %._crit_edge ], [ %i.io, %bb.bz ]
  %.6 = phi i64 [ %6, %._crit_edge ], [ %.5, %bb.bz ] ; 2 uses
  %i.jm = and i64 %i.jl, 2
  %.not344 = icmp eq i64 %i.jm, 0
  br i1 %.not344, label %bb.cn, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.69) #12
  %i.jn = shl nuw nsw i32 %.1246, 1
  %i.jo = zext nneg i32 %i.jn to i64
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.jo) #12
  %.not487 = icmp eq i32 %.1246, 0
  br i1 %.not487, label %._crit_edge451, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %bb.ch
  %wide.trip.count525 = zext i32 %.1246 to i64
  br label %.lr.ph450

._crit_edge451:                                   ; preds = %sdslen.exit366, %bb.ch
  call void @zfree(ptr noundef %.0249) #12
  %7 = add nuw nsw i64 %.6, 1
  br label %bb.cn

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %sdslen.exit366
  %indvars.iv522 = phi i64 [ 0, %.lr.ph450.preheader ], [ %indvars.iv.next523, %sdslen.exit366 ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %.0249, i64 %indvars.iv522 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !123 ; 6 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 -1
  %.val.i364 = load i8, ptr %i.js, align 1, !tbaa !91 ; 2 uses
  %i.jt = and i8 %.val.i364, 7
  switch i8 %i.jt, label %sdslen.exit366 [
    i8 0, label %bb.ci
    i8 1, label %bb.cj
    i8 2, label %bb.ck
    i8 3, label %bb.cl
    i8 4, label %bb.cm
  ]

bb.ci:                                            ; preds = %.lr.ph450
  %i.ju = lshr i8 %.val.i364, 3
  %i.jv = zext nneg i8 %i.ju to i64
  br label %sdslen.exit366

bb.cj:                                            ; preds = %.lr.ph450
  %i.jw = getelementptr inbounds i8, ptr %i.jr, i64 -3
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !91
  %i.jy = zext i8 %i.jx to i64
  br label %sdslen.exit366

bb.ck:                                            ; preds = %.lr.ph450
  %i.jz = getelementptr inbounds i8, ptr %i.jr, i64 -5
  %i.ka = load i16, ptr %i.jz, align 1, !tbaa !93
  %i.kb = zext i16 %i.ka to i64
  br label %sdslen.exit366

bb.cl:                                            ; preds = %.lr.ph450
  %i.kc = getelementptr inbounds i8, ptr %i.jr, i64 -9
  %i.kd = load i32, ptr %i.kc, align 1, !tbaa !12
  %i.ke = zext i32 %i.kd to i64
  br label %sdslen.exit366

bb.cm:                                            ; preds = %.lr.ph450
  %i.kf = getelementptr inbounds i8, ptr %i.jr, i64 -17
  %i.kg = load i64, ptr %i.kf, align 1, !tbaa !62
  br label %sdslen.exit366

sdslen.exit366:                                   ; preds = %.lr.ph450, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm
  %.0.i365 = phi i64 [ %i.kg, %bb.cm ], [ %i.jv, %bb.ci ], [ %i.jy, %bb.cj ], [ %i.kb, %bb.ck ], [ %i.ke, %bb.cl ], [ 0, %.lr.ph450 ]
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.jr, i64 noundef %.0.i365) #12
  %i.kh = load i64, ptr %i.jp, align 8, !tbaa !120
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.kh) #12
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %exitcond526.not = icmp eq i64 %indvars.iv.next523, %wide.trip.count525
  br i1 %exitcond526.not, label %._crit_edge451, label %.lr.ph450, !llvm.loop !113

bb.cn:                                            ; preds = %._crit_edge451, %bb.cg
  %.7 = phi i64 [ %7, %._crit_edge451 ], [ %.6, %bb.cg ]
  call void @setDeferredMapLen(ptr noundef %0, ptr noundef %i.hb, i64 noundef %.7) #12
  br label %bb.cw

bb.co:                                            ; preds = %bb.ba
  %i.ki = tail call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.23) #15
  %.not345 = icmp eq i32 %i.ki, 0
  br i1 %.not345, label %bb.cp, label %bb.cv

bb.cp:                                            ; preds = %bb.co
  %.not346 = icmp eq i32 %i.j, 2
  br i1 %.not346, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #12
  br label %bb.cw

bb.cr:                                            ; preds = %bb.cp
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115 ; 3 uses
  %.not347 = icmp eq ptr %i.kj, null
  br i1 %.not347, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 120
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !30
  %.not348 = icmp eq i32 %i.kl, 0
  br i1 %.not348, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.71) #12
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cs, %bb.cr
  tail call void @hotkeyStatsRelease(ptr noundef %i.kj)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !115
  %i.km = load ptr, ptr @shared, align 8, !tbaa !118
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.km) #12
  br label %bb.cw

bb.cv:                                            ; preds = %bb.co
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #12
  br label %bb.cw

.critedge359.sink.split:                          ; preds = %bb.q, %bb.n, %._crit_edge457, %._crit_edge457.thread, %.thread583
  %.str.36.sink = phi ptr [ @.str.36, %.thread583 ], [ @.str.35, %._crit_edge457.thread ], [ @.str.35, %._crit_edge457 ], [ @.str.34, %bb.q ], [ @.str.32, %bb.n ]
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull %.str.36.sink) #12
  br label %.critedge359

.critedge359:                                     ; preds = %.critedge359.sink.split, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.cw

bb.cw:                                            ; preds = %.critedge357, %bb.h, %bb.k, %bb.av, %bb.ay, %bb.bc, %bb.be, %bb.cq, %bb.ct, %.critedge359, %bb.cn, %bb.cv, %bb.cu, %bb.az, %bb.d, %bb.b
  ret void
}

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare void @addReplyHelp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare i32 @getRangeLongFromObjectOrReply(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #4

declare i32 @getSlotOrReply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @clusterNodeCoversSlot(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @getMyClusterNode() local_unnamed_addr #1

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @slotCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %i.c = sub nsw i32 %i.a, %i.b
  ret i32 %i.c
}

declare ptr @slotRangeArrayAppend(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyNull(ptr noundef) local_unnamed_addr #1

declare ptr @chkTopKList(ptr noundef) local_unnamed_addr #1

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @addReplyDeferredLen(ptr noundef) local_unnamed_addr #1

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @addReplySelectedSlots(ptr noundef %0, ptr nofree readonly captures(address_is_null) %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %.24.val, null
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @clusterGetLocalSlotRanges() #12 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.d) #12
  %i.e = load i32, ptr %i.b, align 4, !tbaa !12
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %addReplySlotRangeArray.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i ; 4 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !127
  %i.l = icmp eq i16 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 1) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #12
  %i.m = load i16, ptr %i.h, align 4, !tbaa !126
  %i.n = zext i16 %i.m to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.n) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink21.in.i = phi ptr [ %i.h, %bb.d ], [ %i.j, %bb.e ]
  %.sink21.i = load i16, ptr %.sink21.in.i, align 2, !tbaa !93
  %i.o = zext i16 %.sink21.i to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.o) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !12
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next.i, %i.q
  br i1 %i.r, label %bb.c, label %addReplySlotRangeArray.exit, !llvm.loop !124

addReplySlotRangeArray.exit:                      ; preds = %bb.f, %bb.b
  tail call void @slotRangeArrayFree(ptr noundef nonnull %i.b) #12
  br label %addReplySlotRangeArray.exit11

bb.g:                                             ; preds = %bb.a
  %i.s = load i32, ptr %.24.val, align 4, !tbaa !12
  %i.t = sext i32 %i.s to i64
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.t) #12
  %i.u = load i32, ptr %.24.val, align 4, !tbaa !12
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i6, label %addReplySlotRangeArray.exit11

.lr.ph.i6:                                        ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.24.val, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i6
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i6 ], [ %indvars.iv.next.i10, %bb.k ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i7 ; 4 uses
  %i.y = load i16, ptr %i.x, align 4, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !127
  %i.ab = icmp eq i16 %i.y, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 1) #12
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #12
  %i.ac = load i16, ptr %i.x, align 4, !tbaa !126
  %i.ad = zext i16 %i.ac to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ad) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink21.in.i8 = phi ptr [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  %.sink21.i9 = load i16, ptr %.sink21.in.i8, align 2, !tbaa !93
  %i.ae = zext i16 %.sink21.i9 to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ae) #12
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %i.af = load i32, ptr %.24.val, align 4, !tbaa !12
  %i.ag = sext i32 %i.af to i64
end_hunk_0
