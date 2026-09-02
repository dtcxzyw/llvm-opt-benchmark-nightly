Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_trainFromBuffer_legacy:bb.a
  %.val252.i.i.i = load i16, ptr %i.gr, align 1, !tbaa !86
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0226.i.i.i = phi i32 [ 6, %bb.t ], [ %i.gv, %bb.u ] ; 4 uses
  %i.gs = zext i32 %.0226.i.i.i to i64            ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gs
  %.val.i.i.i = load i16, ptr %i.gt, align 1      ; 2 uses
  %i.gu = icmp eq i16 %.val.i.i.i, %.val252.i.i.i
  %i.gv = add i32 %.0226.i.i.i, 2
  br i1 %i.gu, label %bb.u, label %bb.v, !llvm.loop !64

bb.v:                                             ; preds = %bb.u
  %.not359.i.i.i = icmp eq i32 %.0226.i.i.i, 0
  br i1 %.not359.i.i.i, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph357.preheader.i.i.i

.lr.ph357.preheader.i.i.i:                        ; preds = %bb.v
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gs
  %i.gx = getelementptr i8, ptr %i.gw, i64 -1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !21
  %i.gz = trunc i16 %.val.i.i.i to i8
  %i.ha = icmp eq i8 %i.gy, %i.gz
  %i.hb = zext i1 %i.ha to i32
  %scevgep394.i.i.i = getelementptr i8, ptr %i.gh, i64 1
  %i.hc = or disjoint i32 %.0226.i.i.i, %i.hb
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.hc, i32 2)
  %i.hd = add i32 %umax.i.i.i, -1
  %i.he = zext i32 %i.hd to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep394.i.i.i, i8 1, i64 %i.he, i1 false), !tbaa !21
  br label %ZDICT_analyzePos.exit.thread.i.i

bb.w:                                             ; preds = %ZDICT_count.exit.i.i.i, %.preheader315.i.i.i
  %indvars.iv391.in.i.i.i = phi i32 [ %i.gc, %.preheader315.i.i.i ], [ %indvars.iv391.i.i.i, %ZDICT_count.exit.i.i.i ] ; 2 uses
  %indvars.iv391.i.i.i = add i32 %indvars.iv391.in.i.i.i, 1 ; 6 uses
  %i.hf = zext i32 %indvars.iv391.i.i.i to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !8
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hi ; 2 uses
  %.011.val21.i.i.i.i = load i64, ptr %i.hj, align 1, !tbaa !17 ; 2 uses
  %.not23.i.i.i.i = icmp eq i64 %.011.val21.i.i.i.i, %.012.val22.i.i.i.i
  br i1 %.not23.i.i.i.i, label %.lr.ph.i.i.i.i, label %ZDICT_count.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.01125.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i ], [ %i.hj, %bb.w ]
  %.01224.i.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i ], [ %i.gi, %bb.w ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.01224.i.i.i.i, i64 8 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.01125.i.i.i.i, i64 8 ; 2 uses
  %.011.val.i.i.i.i = load i64, ptr %i.hl, align 1, !tbaa !17 ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %i.hk, align 1, !tbaa !17 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.011.val.i.i.i.i, %.012.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %ZDICT_count.exit.i.i.i

ZDICT_count.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %bb.w
  %.012.lcssa.i.i.i.i = phi ptr [ %i.gi, %bb.w ], [ %i.hk, %.lr.ph.i.i.i.i ]
  %.011.val.lcssa.i.i.i.i = phi i64 [ %.011.val21.i.i.i.i, %bb.w ], [ %.011.val.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.012.val.lcssa.i.i.i.i = phi i64 [ %.012.val22.i.i.i.i, %bb.w ], [ %.012.val.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.hm = xor i64 %.012.val.lcssa.i.i.i.i, %.011.val.lcssa.i.i.i.i
  %i.hn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hm, i1 true)
  %i.ho = lshr i64 %i.hn, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.lcssa.i.i.i.i, i64 %i.ho
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.hq, %i.gq
  %i.hs = icmp ugt i64 %i.hr, 6
  br i1 %i.hs, label %bb.w, label %.preheader314.i.i.i, !llvm.loop !65

.preheader314.i.i.i:                              ; preds = %ZDICT_count.exit.i.i.i, %ZDICT_count.exit271.i.i.i
  %indvar = phi i32 [ %indvar.next, %ZDICT_count.exit271.i.i.i ], [ 0, %ZDICT_count.exit.i.i.i ] ; 2 uses
  %.0231.i.i.i = phi i32 [ %i.ii, %ZDICT_count.exit271.i.i.i ], [ %i.gc, %ZDICT_count.exit.i.i.i ] ; 5 uses
  %i.ht = zext i32 %.0231.i.i.i to i64            ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !8
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hx ; 2 uses
  %.011.val21.i259.i.i.i = load i64, ptr %i.hy, align 1, !tbaa !17 ; 2 uses
  %.not23.i261.i.i.i = icmp eq i64 %.011.val21.i259.i.i.i, %.012.val22.i.i.i.i
  br i1 %.not23.i261.i.i.i, label %.lr.ph.i265.i.i.i, label %ZDICT_count.exit271.i.i.i

.lr.ph.i265.i.i.i:                                ; preds = %.preheader314.i.i.i, %.lr.ph.i265.i.i.i
  %.01125.i266.i.i.i = phi ptr [ %i.ia, %.lr.ph.i265.i.i.i ], [ %i.hy, %.preheader314.i.i.i ]
  %.01224.i267.i.i.i = phi ptr [ %i.hz, %.lr.ph.i265.i.i.i ], [ %i.gi, %.preheader314.i.i.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.01224.i267.i.i.i, i64 8 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.01125.i266.i.i.i, i64 8 ; 2 uses
  %.011.val.i268.i.i.i = load i64, ptr %i.ia, align 1, !tbaa !17 ; 2 uses
  %.012.val.i269.i.i.i = load i64, ptr %i.hz, align 1, !tbaa !17 ; 2 uses
  %.not.i270.i.i.i = icmp eq i64 %.011.val.i268.i.i.i, %.012.val.i269.i.i.i
  br i1 %.not.i270.i.i.i, label %.lr.ph.i265.i.i.i, label %ZDICT_count.exit271.i.i.i

ZDICT_count.exit271.i.i.i:                        ; preds = %.lr.ph.i265.i.i.i, %.preheader314.i.i.i
  %.012.lcssa.i262.i.i.i = phi ptr [ %i.gi, %.preheader314.i.i.i ], [ %i.hz, %.lr.ph.i265.i.i.i ]
  %.011.val.lcssa.i263.i.i.i = phi i64 [ %.011.val21.i259.i.i.i, %.preheader314.i.i.i ], [ %.011.val.i268.i.i.i, %.lr.ph.i265.i.i.i ]
  %.012.val.lcssa.i264.i.i.i = phi i64 [ %.012.val22.i.i.i.i, %.preheader314.i.i.i ], [ %.012.val.i269.i.i.i, %.lr.ph.i265.i.i.i ]
  %i.ib = xor i64 %.012.val.lcssa.i264.i.i.i, %.011.val.lcssa.i263.i.i.i
  %i.ic = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ib, i1 true)
  %i.id = lshr i64 %i.ic, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %.012.lcssa.i262.i.i.i, i64 %i.id
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = sub i64 %i.if, %i.gq
  %i.ih = icmp ugt i64 %i.ig, 6
  %i.ii = add i32 %.0231.i.i.i, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ih, label %.preheader314.i.i.i, label %bb.x, !llvm.loop !66

bb.x:                                             ; preds = %ZDICT_count.exit271.i.i.i
  %i.ij = sub i32 %indvars.iv391.i.i.i, %.0231.i.i.i ; 3 uses
  %i.ik = icmp ult i32 %i.ij, %spec.store.select.i.i
  br i1 %i.ik, label %.preheader.i.i.i, label %bb.y

.preheader.i.i.i:                                 ; preds = %bb.x
  %i.il = icmp ult i32 %.0231.i.i.i, %indvars.iv391.i.i.i
  br i1 %i.il, label %.lr.ph354.i.i.i.preheader, label %ZDICT_analyzePos.exit.thread.i.i

.lr.ph354.i.i.i.preheader:                        ; preds = %.preheader.i.i.i
  %i.im = sub i32 %indvars.iv391.in.i.i.i, %i.gc
  %i.in = add i32 %indvar, %i.im
  %xtraiter187 = and i32 %i.ij, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph354.i.i.i.prol.loopexit, label %.lr.ph354.i.i.i.prol

.lr.ph354.i.i.i.prol:                             ; preds = %.lr.ph354.i.i.i.preheader, %.lr.ph354.i.i.i.prol
  %indvars.iv388.i.i.i.prol = phi i64 [ %indvars.iv.next389.i.i.i.prol, %.lr.ph354.i.i.i.prol ], [ %i.ht, %.lr.ph354.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph354.i.i.i.prol ], [ 0, %.lr.ph354.i.i.i.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i.prol
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !8
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iq
  store i8 1, ptr %i.ir, align 1, !tbaa !21
  %indvars.iv.next389.i.i.i.prol = add nuw nsw i64 %indvars.iv388.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %.lr.ph354.i.i.i.prol.loopexit, label %.lr.ph354.i.i.i.prol, !llvm.loop !67

.lr.ph354.i.i.i.prol.loopexit:                    ; preds = %.lr.ph354.i.i.i.prol, %.lr.ph354.i.i.i.preheader
  %indvars.iv388.i.i.i.unr = phi i64 [ %i.ht, %.lr.ph354.i.i.i.preheader ], [ %indvars.iv.next389.i.i.i.prol, %.lr.ph354.i.i.i.prol ]
  %i.is = icmp ult i32 %i.in, 3
  br i1 %i.is, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph354.i.i.i

.lr.ph354.i.i.i:                                  ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i
  %indvars.iv388.i.i.i = phi i64 [ %indvars.iv.next389.i.i.i.3, %.lr.ph354.i.i.i ], [ %indvars.iv388.i.i.i.unr, %.lr.ph354.i.i.i.prol.loopexit ] ; 5 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iv
  store i8 1, ptr %i.iw, align 1, !tbaa !21
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !8
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ja
  store i8 1, ptr %i.jb, align 1, !tbaa !21
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !8
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.jf
  store i8 1, ptr %i.jg, align 1, !tbaa !21
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !8
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.jk
  store i8 1, ptr %i.jl, align 1, !tbaa !21
  %indvars.iv.next389.i.i.i.3 = add nuw nsw i64 %indvars.iv388.i.i.i, 4 ; 2 uses
  %lftr.wideiv.i.i.i.3 = trunc i64 %indvars.iv.next389.i.i.i.3 to i32
  %exitcond393.not.i.i.i.3 = icmp eq i32 %indvars.iv391.i.i.i, %lftr.wideiv.i.i.i.3
  br i1 %exitcond393.not.i.i.i.3, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph354.i.i.i, !llvm.loop !68

bb.y:                                             ; preds = %bb.x
  br i1 %i.dn, label %.critedge.i.i.i, label %.critedge245.i.i.i.preheader

.critedge.i.i.i:                                  ; preds = %bb.y
  %i.jm = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc.i.i.i = tail call i32 @fputc(i32 10, ptr %i.jm) ; 0 uses
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.jo = tail call i32 @fflush(ptr noundef %i.jn) ; 0 uses
  %i.jp = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.jq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jp, ptr noundef nonnull @.str.35, i32 noundef %i.ij, i32 noundef 7, i32 noundef %i.gf) #19 ; 0 uses
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.js = tail call i32 @fflush(ptr noundef %i.jr) ; 0 uses
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc241.i.i.i = tail call i32 @fputc(i32 10, ptr %i.jt) ; 0 uses
  %i.ju = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.jv = tail call i32 @fflush(ptr noundef %i.ju) ; 0 uses
  br label %.critedge245.i.i.i.preheader

.critedge245.i.i.i.preheader:                     ; preds = %.critedge.i.i.i, %bb.y
  br label %.critedge245.i.i.i

.critedge245.i.i.i:                               ; preds = %.critedge245.i.i.i.preheader, %bb.ad
  %.0221.i.i.i = phi i32 [ %i.lf, %bb.ad ], [ 7, %.critedge245.i.i.i.preheader ] ; 4 uses
  %.0219.i.i.i = phi i32 [ %spec.select249.i.i.i, %bb.ad ], [ %.0231.i.i.i, %.critedge245.i.i.i.preheader ] ; 12 uses
  %.0217.i.i.i = phi i32 [ %i.le, %bb.ad ], [ %indvars.iv391.i.i.i, %.critedge245.i.i.i.preheader ] ; 2 uses
  %i.jw = icmp ult i32 %.0219.i.i.i, %.0217.i.i.i
  br i1 %i.jw, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.critedge245.i.i.i
  %i.jx = zext i32 %.0219.i.i.i to i64            ; 4 uses
  %wide.trip.count.i.i.i = zext i32 %.0217.i.i.i to i64 ; 2 uses
  %i.jy = sub nsw i64 %wide.trip.count.i.i.i, %i.jx ; 3 uses
  %i.jz = add nsw i64 %wide.trip.count.i.i.i, -1
  %i.ka = icmp eq i64 %i.jz, %i.jx
  br i1 %i.ka, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter179 = and i64 %i.jy, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %i.jx, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.ab ] ; 4 uses
  %.0205332.i.i.i = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i.new ], [ %.2.i.i.i.1, %bb.ab ] ; 2 uses
  %.0206331.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %.2208.i.i.i.1, %bb.ab ] ; 3 uses
  %.0211329.i.i.i = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i.new ], [ %.1212.i.i.i.1, %bb.ab ] ; 2 uses
  %.0213328.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.ks, %bb.ab ] ; 3 uses
  %.0215327.i.i.i = phi i8 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %.1216.i.i.i.1, %bb.ab ] ; 2 uses
  %niter180 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter180.next.1, %bb.ab ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !8
  %i.kd = add i32 %i.kc, %.0221.i.i.i
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !21  ; 2 uses
  %.not243.i.i.i = icmp eq i8 %i.kg, %.0215327.i.i.i
  br i1 %.not243.i.i.i, label %.lr.ph.i.i.i.1, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.kh = icmp ugt i32 %.0213328.i.i.i, %.0206331.i.i.i
  %spec.select246.i.i.i = tail call i32 @llvm.umax.i32(i32 %.0213328.i.i.i, i32 %.0206331.i.i.i)
  %spec.select247.i.i.i = select i1 %i.kh, i32 %.0211329.i.i.i, i32 %.0205332.i.i.i
  %i.ki = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.z, %.lr.ph.i.i.i
  %.1216.i.i.i = phi i8 [ %i.kg, %bb.z ], [ %.0215327.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.1214.i.i.i = phi i32 [ 0, %bb.z ], [ %.0213328.i.i.i, %.lr.ph.i.i.i ]
  %.1212.i.i.i = phi i32 [ %i.ki, %bb.z ], [ %.0211329.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.2208.i.i.i = phi i32 [ %spec.select246.i.i.i, %bb.z ], [ %.0206331.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.2.i.i.i = phi i32 [ %spec.select247.i.i.i, %bb.z ], [ %.0205332.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.kj = add i32 %.1214.i.i.i, 1                 ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !8
  %i.km = add i32 %i.kl, %.0221.i.i.i
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !21  ; 2 uses
  %.not243.i.i.i.1 = icmp eq i8 %i.kp, %.1216.i.i.i
  br i1 %.not243.i.i.i.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.1
  %i.kq = icmp ugt i32 %i.kj, %.2208.i.i.i
  %spec.select246.i.i.i.1 = tail call i32 @llvm.umax.i32(i32 %i.kj, i32 %.2208.i.i.i)
  %spec.select247.i.i.i.1 = select i1 %i.kq, i32 %.1212.i.i.i, i32 %.2.i.i.i
  %i.kr = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.1
  %.1216.i.i.i.1 = phi i8 [ %i.kp, %bb.aa ], [ %.1216.i.i.i, %.lr.ph.i.i.i.1 ] ; 2 uses
  %.1214.i.i.i.1 = phi i32 [ 0, %bb.aa ], [ %i.kj, %.lr.ph.i.i.i.1 ]
  %.1212.i.i.i.1 = phi i32 [ %i.kr, %bb.aa ], [ %.1212.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %.2208.i.i.i.1 = phi i32 [ %spec.select246.i.i.i.1, %bb.aa ], [ %.2208.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %.2.i.i.i.1 = phi i32 [ %spec.select247.i.i.i.1, %bb.aa ], [ %.2.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %i.ks = add i32 %.1214.i.i.i.1, 1               ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !69

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ab
  %7 = trunc i64 %i.jy to i1
  br i1 %7, label %.lr.ph.i.i.i.epil.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ %i.jx, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0205332.i.i.i.epil.init = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i ], [ %.2.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0206331.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %.2208.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0211329.i.i.i.epil.init = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i ], [ %.1212.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0213328.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ks, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0215327.i.i.i.epil.init = phi i8 [ 0, %.lr.ph.preheader.i.i.i ], [ %.1216.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod178 = trunc i64 %i.jy to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.i.epil.init
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !8
  %i.kv = add i32 %i.ku, %.0221.i.i.i
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !21
  %.not243.i.i.i.epil = icmp eq i8 %i.ky, %.0215327.i.i.i.epil.init
  br i1 %.not243.i.i.i.epil, label %._crit_edge.i.i.i.loopexit.epilog-lcssa, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.kz = icmp ugt i32 %.0213328.i.i.i.epil.init, %.0206331.i.i.i.epil.init
  %spec.select246.i.i.i.epil = tail call i32 @llvm.umax.i32(i32 %.0213328.i.i.i.epil.init, i32 %.0206331.i.i.i.epil.init)
  %spec.select247.i.i.i.epil = select i1 %i.kz, i32 %.0211329.i.i.i.epil.init, i32 %.0205332.i.i.i.epil.init
  %i.la = trunc nuw i64 %indvars.iv.i.i.i.epil.init to i32
  br label %._crit_edge.i.i.i.loopexit.epilog-lcssa

._crit_edge.i.i.i.loopexit.epilog-lcssa:          ; preds = %bb.ac, %.lr.ph.i.i.i.epil.preheader
  %.1214.i.i.i.epil = phi i32 [ 0, %bb.ac ], [ %.0213328.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.1212.i.i.i.epil = phi i32 [ %i.la, %bb.ac ], [ %.0211329.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.2208.i.i.i.epil = phi i32 [ %spec.select246.i.i.i.epil, %bb.ac ], [ %.0206331.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.2.i.i.i.epil = phi i32 [ %spec.select247.i.i.i.epil, %bb.ac ], [ %.0205332.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %i.lb = add i32 %.1214.i.i.i.epil, 1
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.epilog-lcssa, %._crit_edge.i.i.i.loopexit.unr-lcssa, %.critedge245.i.i.i
  %.0213.lcssa.i.i.i = phi i32 [ 0, %.critedge245.i.i.i ], [ %i.ks, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %i.lb, %._crit_edge.i.i.i.loopexit.epilog-lcssa ] ; 2 uses
  %.0211.lcssa.i.i.i = phi i32 [ %.0219.i.i.i, %.critedge245.i.i.i ], [ %.1212.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.1212.i.i.i.epil, %._crit_edge.i.i.i.loopexit.epilog-lcssa ]
  %.0206.lcssa.i.i.i = phi i32 [ 0, %.critedge245.i.i.i ], [ %.2208.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.2208.i.i.i.epil, %._crit_edge.i.i.i.loopexit.epilog-lcssa ] ; 2 uses
  %.0205.lcssa.i.i.i = phi i32 [ %.0219.i.i.i, %.critedge245.i.i.i ], [ %.2.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.2.i.i.i.epil, %._crit_edge.i.i.i.loopexit.epilog-lcssa ]
  %spec.select248.i.i.i = tail call i32 @llvm.umax.i32(i32 %.0213.lcssa.i.i.i, i32 %.0206.lcssa.i.i.i) ; 2 uses
  %i.lc = icmp ult i32 %spec.select248.i.i.i, %spec.store.select.i.i
  br i1 %i.lc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.ld = icmp ugt i32 %.0213.lcssa.i.i.i, %.0206.lcssa.i.i.i
  %spec.select249.i.i.i = select i1 %i.ld, i32 %.0211.lcssa.i.i.i, i32 %.0205.lcssa.i.i.i ; 2 uses
  %i.le = add i32 %spec.select249.i.i.i, %spec.select248.i.i.i
  %i.lf = add i32 %.0221.i.i.i, 1
  br label %.critedge245.i.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.lg = zext i32 %.0219.i.i.i to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !8  ; 3 uses
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.lj ; 11 uses
  %.012.val22.i273.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !17 ; 4 uses
  %i.ll = ptrtoint ptr %i.lk to i64               ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %ZDICT_count.exit284.i.i.i, %bb.ae
  %indvars.iv383.in.i.i.i = phi i32 [ %indvars.iv383.i.i.i, %ZDICT_count.exit284.i.i.i ], [ %.0219.i.i.i, %bb.ae ]
  %indvars.iv383.i.i.i = add i32 %indvars.iv383.in.i.i.i, 1 ; 3 uses
  %i.lm = zext i32 %indvars.iv383.i.i.i to i64    ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !8
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.lp ; 2 uses
  %.011.val21.i272.i.i.i = load i64, ptr %i.lq, align 1, !tbaa !17 ; 2 uses
  %.not23.i274.i.i.i = icmp eq i64 %.011.val21.i272.i.i.i, %.012.val22.i273.i.i.i
  br i1 %.not23.i274.i.i.i, label %.lr.ph.i278.i.i.i, label %ZDICT_count.exit284.i.i.i

.lr.ph.i278.i.i.i:                                ; preds = %bb.af, %.lr.ph.i278.i.i.i
  %.01125.i279.i.i.i = phi ptr [ %i.ls, %.lr.ph.i278.i.i.i ], [ %i.lq, %bb.af ]
  %.01224.i280.i.i.i = phi ptr [ %i.lr, %.lr.ph.i278.i.i.i ], [ %i.lk, %bb.af ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.01224.i280.i.i.i, i64 8 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.01125.i279.i.i.i, i64 8 ; 2 uses
  %.011.val.i281.i.i.i = load i64, ptr %i.ls, align 1, !tbaa !17 ; 2 uses
  %.012.val.i282.i.i.i = load i64, ptr %i.lr, align 1, !tbaa !17 ; 2 uses
  %.not.i283.i.i.i = icmp eq i64 %.011.val.i281.i.i.i, %.012.val.i282.i.i.i
  br i1 %.not.i283.i.i.i, label %.lr.ph.i278.i.i.i, label %ZDICT_count.exit284.i.i.i

ZDICT_count.exit284.i.i.i:                        ; preds = %.lr.ph.i278.i.i.i, %bb.af
  %.012.lcssa.i275.i.i.i = phi ptr [ %i.lk, %bb.af ], [ %i.lr, %.lr.ph.i278.i.i.i ]
  %.011.val.lcssa.i276.i.i.i = phi i64 [ %.011.val21.i272.i.i.i, %bb.af ], [ %.011.val.i281.i.i.i, %.lr.ph.i278.i.i.i ]
  %.012.val.lcssa.i277.i.i.i = phi i64 [ %.012.val22.i273.i.i.i, %bb.af ], [ %.012.val.i282.i.i.i, %.lr.ph.i278.i.i.i ]
  %i.lt = xor i64 %.012.val.lcssa.i277.i.i.i, %.011.val.lcssa.i276.i.i.i
  %i.lu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.lt, i1 true)
  %i.lv = lshr i64 %i.lu, 3
  %i.lw = getelementptr inbounds nuw i8, ptr %.012.lcssa.i275.i.i.i, i64 %i.lv
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.lx, %i.ll                    ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ly, i64 63)
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %spec.store.select.i.i.i ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !8
  %i.mb = add i32 %i.ma, 1
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !8
  %i.mc = icmp ugt i64 %i.ly, 6
  br i1 %i.mc, label %bb.af, label %.preheader313.i.i.i, !llvm.loop !70

.preheader313.i.i.i:                              ; preds = %ZDICT_count.exit284.i.i.i
  %.not358.i.i.i = icmp eq i32 %.0219.i.i.i, 0
  br i1 %.not358.i.i.i, label %._crit_edge340.i.i.i, label %.lr.ph339.i.i.i

.lr.ph339.i.i.i:                                  ; preds = %.preheader313.i.i.i, %ZDICT_count.exit297.i.i.i
  %.2233338.i.i.i = phi i32 [ %spec.select250.i.i.i, %ZDICT_count.exit297.i.i.i ], [ %.0219.i.i.i, %.preheader313.i.i.i ] ; 2 uses
  %i.md = add i32 %.2233338.i.i.i, -1             ; 2 uses
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !8
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.mh ; 2 uses
  %.011.val21.i285.i.i.i = load i64, ptr %i.mi, align 1, !tbaa !17 ; 2 uses
  %.not23.i287.i.i.i = icmp eq i64 %.011.val21.i285.i.i.i, %.012.val22.i273.i.i.i
  br i1 %.not23.i287.i.i.i, label %.lr.ph.i291.i.i.i, label %ZDICT_count.exit297.i.i.i

.lr.ph.i291.i.i.i:                                ; preds = %.lr.ph339.i.i.i, %.lr.ph.i291.i.i.i
  %.01125.i292.i.i.i = phi ptr [ %i.mk, %.lr.ph.i291.i.i.i ], [ %i.mi, %.lr.ph339.i.i.i ]
  %.01224.i293.i.i.i = phi ptr [ %i.mj, %.lr.ph.i291.i.i.i ], [ %i.lk, %.lr.ph339.i.i.i ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.01224.i293.i.i.i, i64 8 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.01125.i292.i.i.i, i64 8 ; 2 uses
  %.011.val.i294.i.i.i = load i64, ptr %i.mk, align 1, !tbaa !17 ; 2 uses
  %.012.val.i295.i.i.i = load i64, ptr %i.mj, align 1, !tbaa !17 ; 2 uses
  %.not.i296.i.i.i = icmp eq i64 %.011.val.i294.i.i.i, %.012.val.i295.i.i.i
  br i1 %.not.i296.i.i.i, label %.lr.ph.i291.i.i.i, label %ZDICT_count.exit297.i.i.i

ZDICT_count.exit297.i.i.i:                        ; preds = %.lr.ph.i291.i.i.i, %.lr.ph339.i.i.i
  %.012.lcssa.i288.i.i.i = phi ptr [ %i.lk, %.lr.ph339.i.i.i ], [ %i.mj, %.lr.ph.i291.i.i.i ]
  %.011.val.lcssa.i289.i.i.i = phi i64 [ %.011.val21.i285.i.i.i, %.lr.ph339.i.i.i ], [ %.011.val.i294.i.i.i, %.lr.ph.i291.i.i.i ]
  %.012.val.lcssa.i290.i.i.i = phi i64 [ %.012.val22.i273.i.i.i, %.lr.ph339.i.i.i ], [ %.012.val.i295.i.i.i, %.lr.ph.i291.i.i.i ]
  %i.ml = xor i64 %.012.val.lcssa.i290.i.i.i, %.011.val.lcssa.i289.i.i.i
  %i.mm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ml, i1 true)
  %i.mn = lshr i64 %i.mm, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %.012.lcssa.i288.i.i.i, i64 %i.mn
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = sub i64 %i.mp, %i.ll                    ; 2 uses
  %spec.store.select1.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.mq, i64 63)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %spec.store.select1.i.i.i ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !8
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !8
  %i.mu = icmp ugt i64 %i.mq, 6                   ; 2 uses
  %spec.select250.i.i.i = select i1 %i.mu, i32 %i.md, i32 %.2233338.i.i.i ; 3 uses
  %i.mv = icmp ne i32 %spec.select250.i.i.i, 0
  %i.mw = and i1 %i.mu, %i.mv
  br i1 %i.mw, label %.lr.ph339.i.i.i, label %._crit_edge340.i.i.i, !llvm.loop !71

._crit_edge340.i.i.i:                             ; preds = %ZDICT_count.exit297.i.i.i, %.preheader313.i.i.i
  %.2233.lcssa.i.i.i = phi i32 [ 0, %.preheader313.i.i.i ], [ %spec.select250.i.i.i, %ZDICT_count.exit297.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.mx = load i32, ptr %i.do, align 4, !tbaa !8  ; 2 uses
  store i32 %i.mx, ptr %i.dp, align 4, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %._crit_edge340.i.i.i
  %store_forwarded = phi i32 [ %i.mx, %._crit_edge340.i.i.i ], [ %i.nj, %bb.ag ]
  %indvars.iv370.i.i.i = phi i64 [ 62, %._crit_edge340.i.i.i ], [ %indvars.iv.next371.i.i.i.2, %bb.ag ] ; 5 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv370.i.i.i
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv370.i.i.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !8
  %i.nb = add i32 %i.na, %store_forwarded         ; 2 uses
  store i32 %i.nb, ptr %i.my, align 4, !tbaa !8
  %indvars.iv.next371.i.i.i = add nsw i64 %indvars.iv370.i.i.i, -1 ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next371.i.i.i
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next371.i.i.i
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !8
  %i.nf = add i32 %i.ne, %i.nb                    ; 2 uses
  store i32 %i.nf, ptr %i.nc, align 4, !tbaa !8
  %indvars.iv.next371.i.i.i.1 = add nsw i64 %indvars.iv370.i.i.i, -2 ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next371.i.i.i.1
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next371.i.i.i.1
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !8
  %i.nj = add i32 %i.ni, %i.nf                    ; 2 uses
  store i32 %i.nj, ptr %i.ng, align 4, !tbaa !8
  %indvars.iv.next371.i.i.i.2 = add nsw i64 %indvars.iv370.i.i.i, -3
  %.not406.i.i.i.2 = icmp eq i64 %indvars.iv.next371.i.i.i.1, 0
  br i1 %.not406.i.i.i.2, label %.preheader312.preheader.i.i.i, label %bb.ag, !llvm.loop !72

.preheader312.preheader.i.i.i:                    ; preds = %bb.ag
  %i.nk = load i32, ptr %i.dp, align 4, !tbaa !8
  %.not.i.i.i = icmp ult i32 %i.nk, %spec.store.select.i.i
  br i1 %.not.i.i.i, label %.preheader312.1.i.i.i, label %bb.ah

.preheader312.1.i.i.i:                            ; preds = %.preheader312.preheader.i.i.i
  %i.nl = load i32, ptr %i.dq, align 8, !tbaa !8
  %.not.1.i.i.i = icmp ult i32 %i.nl, %spec.store.select.i.i
  br i1 %.not.1.i.i.i, label %.preheader312.2.i.i.i, label %bb.ah

.preheader312.2.i.i.i:                            ; preds = %.preheader312.1.i.i.i
  %i.nm = load i32, ptr %i.dr, align 4, !tbaa !8
  %.not.2.i.i.i = icmp ult i32 %i.nm, %spec.store.select.i.i
  br i1 %.not.2.i.i.i, label %.preheader312.3.i.i.i, label %bb.ah

.preheader312.3.i.i.i:                            ; preds = %.preheader312.2.i.i.i
  %i.nn = load i32, ptr %i.ds, align 16, !tbaa !8
  %.not.3.i.i.i = icmp ult i32 %i.nn, %spec.store.select.i.i
  br i1 %.not.3.i.i.i, label %.preheader312.4.i.i.i, label %bb.ah

.preheader312.4.i.i.i:                            ; preds = %.preheader312.3.i.i.i
end_hunk_0
begin_hunk_1_@ZDICT_trainFromBuffer_legacy:bb.a
.preheader312.19.i.i.i:                           ; preds = %.preheader312.18.i.i.i
  %i.od = load i32, ptr %i.ei, align 16, !tbaa !8
  %.not.19.i.i.i = icmp ult i32 %i.od, %spec.store.select.i.i
  br i1 %.not.19.i.i.i, label %.preheader312.20.i.i.i, label %bb.ah

.preheader312.20.i.i.i:                           ; preds = %.preheader312.19.i.i.i
  %i.oe = load i32, ptr %i.ej, align 4, !tbaa !8
  %.not.20.i.i.i = icmp ult i32 %i.oe, %spec.store.select.i.i
  br i1 %.not.20.i.i.i, label %.preheader312.21.i.i.i, label %bb.ah

.preheader312.21.i.i.i:                           ; preds = %.preheader312.20.i.i.i
  %i.of = load i32, ptr %i.ek, align 8, !tbaa !8
  %.not.21.i.i.i = icmp ult i32 %i.of, %spec.store.select.i.i
  br i1 %.not.21.i.i.i, label %.preheader312.22.i.i.i, label %bb.ah

.preheader312.22.i.i.i:                           ; preds = %.preheader312.21.i.i.i
  %i.og = load i32, ptr %i.el, align 4, !tbaa !8
  %.not.22.i.i.i = icmp ult i32 %i.og, %spec.store.select.i.i
  br i1 %.not.22.i.i.i, label %.preheader312.23.i.i.i, label %bb.ah

.preheader312.23.i.i.i:                           ; preds = %.preheader312.22.i.i.i
  %i.oh = load i32, ptr %i.em, align 16, !tbaa !8
  %.not.23.i.i.i = icmp ult i32 %i.oh, %spec.store.select.i.i
  br i1 %.not.23.i.i.i, label %.preheader312.24.i.i.i, label %bb.ah

.preheader312.24.i.i.i:                           ; preds = %.preheader312.23.i.i.i
  %i.oi = load i32, ptr %i.en, align 4, !tbaa !8
  %.not.24.i.i.i = icmp ult i32 %i.oi, %spec.store.select.i.i
  br i1 %.not.24.i.i.i, label %.preheader312.25.i.i.i, label %bb.ah

.preheader312.25.i.i.i:                           ; preds = %.preheader312.24.i.i.i
  %i.oj = load i32, ptr %i.eo, align 8, !tbaa !8
  %.not.25.i.i.i = icmp ult i32 %i.oj, %spec.store.select.i.i
  br i1 %.not.25.i.i.i, label %.preheader312.26.i.i.i, label %bb.ah

.preheader312.26.i.i.i:                           ; preds = %.preheader312.25.i.i.i
  %i.ok = load i32, ptr %i.ep, align 4, !tbaa !8
  %.not.26.i.i.i = icmp ult i32 %i.ok, %spec.store.select.i.i
  br i1 %.not.26.i.i.i, label %.preheader312.27.i.i.i, label %bb.ah

.preheader312.27.i.i.i:                           ; preds = %.preheader312.26.i.i.i
  %i.ol = load i32, ptr %i.eq, align 16, !tbaa !8
  %.not.27.i.i.i = icmp ult i32 %i.ol, %spec.store.select.i.i
  br i1 %.not.27.i.i.i, label %.preheader312.28.i.i.i, label %bb.ah

.preheader312.28.i.i.i:                           ; preds = %.preheader312.27.i.i.i
  %i.om = load i32, ptr %i.er, align 4, !tbaa !8
  %.not.28.i.i.i = icmp ult i32 %i.om, %spec.store.select.i.i
  br i1 %.not.28.i.i.i, label %.preheader312.29.i.i.i, label %bb.ah

.preheader312.29.i.i.i:                           ; preds = %.preheader312.28.i.i.i
  %i.on = load i32, ptr %i.es, align 8, !tbaa !8
  %.not.29.i.i.i = icmp ult i32 %i.on, %spec.store.select.i.i
  br i1 %.not.29.i.i.i, label %.preheader312.30.i.i.i, label %bb.ah

.preheader312.30.i.i.i:                           ; preds = %.preheader312.29.i.i.i
  %i.oo = load i32, ptr %i.et, align 4, !tbaa !8
  %.not.30.i.i.i = icmp ult i32 %i.oo, %spec.store.select.i.i
  br i1 %.not.30.i.i.i, label %.preheader312.31.i.i.i, label %bb.ah

.preheader312.31.i.i.i:                           ; preds = %.preheader312.30.i.i.i
  %i.op = load i32, ptr %i.eu, align 16, !tbaa !8
  %.not.31.i.i.i = icmp ult i32 %i.op, %spec.store.select.i.i
  br i1 %.not.31.i.i.i, label %.preheader312.32.i.i.i, label %bb.ah

.preheader312.32.i.i.i:                           ; preds = %.preheader312.31.i.i.i
  %i.oq = load i32, ptr %i.ev, align 4, !tbaa !8
  %.not.32.i.i.i = icmp ult i32 %i.oq, %spec.store.select.i.i
  br i1 %.not.32.i.i.i, label %.preheader312.33.i.i.i, label %bb.ah

.preheader312.33.i.i.i:                           ; preds = %.preheader312.32.i.i.i
  %i.or = load i32, ptr %i.ew, align 8, !tbaa !8
  %.not.33.i.i.i = icmp ult i32 %i.or, %spec.store.select.i.i
  br i1 %.not.33.i.i.i, label %.preheader312.34.i.i.i, label %bb.ah

.preheader312.34.i.i.i:                           ; preds = %.preheader312.33.i.i.i
  %i.os = load i32, ptr %i.ex, align 4, !tbaa !8
  %.not.34.i.i.i = icmp ult i32 %i.os, %spec.store.select.i.i
  br i1 %.not.34.i.i.i, label %.preheader312.35.i.i.i, label %bb.ah

.preheader312.35.i.i.i:                           ; preds = %.preheader312.34.i.i.i
  %i.ot = load i32, ptr %i.ey, align 16, !tbaa !8
  %.not.35.i.i.i = icmp ult i32 %i.ot, %spec.store.select.i.i
  br i1 %.not.35.i.i.i, label %.preheader312.36.i.i.i, label %bb.ah

.preheader312.36.i.i.i:                           ; preds = %.preheader312.35.i.i.i
  %i.ou = load i32, ptr %i.ez, align 4, !tbaa !8
  %.not.36.i.i.i = icmp ult i32 %i.ou, %spec.store.select.i.i
  br i1 %.not.36.i.i.i, label %.preheader312.37.i.i.i, label %bb.ah

.preheader312.37.i.i.i:                           ; preds = %.preheader312.36.i.i.i
  %i.ov = load i32, ptr %i.fa, align 8, !tbaa !8
  %.not.37.i.i.i = icmp ult i32 %i.ov, %spec.store.select.i.i
  br i1 %.not.37.i.i.i, label %.preheader312.38.i.i.i, label %bb.ah

.preheader312.38.i.i.i:                           ; preds = %.preheader312.37.i.i.i
  %i.ow = load i32, ptr %i.fb, align 4, !tbaa !8
  %.not.38.i.i.i = icmp ult i32 %i.ow, %spec.store.select.i.i
  br i1 %.not.38.i.i.i, label %.preheader312.39.i.i.i, label %bb.ah

.preheader312.39.i.i.i:                           ; preds = %.preheader312.38.i.i.i
  %i.ox = load i32, ptr %i.fc, align 16, !tbaa !8
  %.not.39.i.i.i = icmp ult i32 %i.ox, %spec.store.select.i.i
  br i1 %.not.39.i.i.i, label %.preheader312.40.i.i.i, label %bb.ah

.preheader312.40.i.i.i:                           ; preds = %.preheader312.39.i.i.i
  %i.oy = load i32, ptr %i.fd, align 4, !tbaa !8
  %.not.40.i.i.i = icmp ult i32 %i.oy, %spec.store.select.i.i
  br i1 %.not.40.i.i.i, label %.preheader312.41.i.i.i, label %bb.ah

.preheader312.41.i.i.i:                           ; preds = %.preheader312.40.i.i.i
  %i.oz = load i32, ptr %i.fe, align 8, !tbaa !8
  %.not.41.i.i.i = icmp ult i32 %i.oz, %spec.store.select.i.i
  br i1 %.not.41.i.i.i, label %.preheader312.42.i.i.i, label %bb.ah

.preheader312.42.i.i.i:                           ; preds = %.preheader312.41.i.i.i
  %i.pa = load i32, ptr %i.ff, align 4, !tbaa !8
  %.not.42.i.i.i = icmp ult i32 %i.pa, %spec.store.select.i.i
  br i1 %.not.42.i.i.i, label %.preheader312.43.i.i.i, label %bb.ah

.preheader312.43.i.i.i:                           ; preds = %.preheader312.42.i.i.i
  %i.pb = load i32, ptr %i.fg, align 16, !tbaa !8
  %.not.43.i.i.i = icmp ult i32 %i.pb, %spec.store.select.i.i
  br i1 %.not.43.i.i.i, label %.preheader312.44.i.i.i, label %bb.ah

.preheader312.44.i.i.i:                           ; preds = %.preheader312.43.i.i.i
  %i.pc = load i32, ptr %i.fh, align 4, !tbaa !8
  %.not.44.i.i.i = icmp ult i32 %i.pc, %spec.store.select.i.i
  br i1 %.not.44.i.i.i, label %.preheader312.45.i.i.i, label %bb.ah

.preheader312.45.i.i.i:                           ; preds = %.preheader312.44.i.i.i
  %i.pd = load i32, ptr %i.fi, align 8, !tbaa !8
  %.not.45.i.i.i = icmp ult i32 %i.pd, %spec.store.select.i.i
  br i1 %.not.45.i.i.i, label %.preheader312.46.i.i.i, label %bb.ah

.preheader312.46.i.i.i:                           ; preds = %.preheader312.45.i.i.i
  %i.pe = load i32, ptr %i.fj, align 4, !tbaa !8
  %.not.46.i.i.i = icmp ult i32 %i.pe, %spec.store.select.i.i
  br i1 %.not.46.i.i.i, label %.preheader312.47.i.i.i, label %bb.ah

.preheader312.47.i.i.i:                           ; preds = %.preheader312.46.i.i.i
  %i.pf = load i32, ptr %i.fk, align 16, !tbaa !8
  %.not.47.i.i.i = icmp ult i32 %i.pf, %spec.store.select.i.i
  br i1 %.not.47.i.i.i, label %.preheader312.48.i.i.i, label %bb.ah

.preheader312.48.i.i.i:                           ; preds = %.preheader312.47.i.i.i
  %i.pg = load i32, ptr %i.fl, align 4, !tbaa !8
  %.not.48.i.i.i = icmp ult i32 %i.pg, %spec.store.select.i.i
  br i1 %.not.48.i.i.i, label %.preheader312.49.i.i.i, label %bb.ah

.preheader312.49.i.i.i:                           ; preds = %.preheader312.48.i.i.i
  %i.ph = load i32, ptr %i.fm, align 8, !tbaa !8
  %.not.49.i.i.i = icmp ult i32 %i.ph, %spec.store.select.i.i
  br i1 %.not.49.i.i.i, label %.preheader312.50.i.i.i, label %bb.ah

.preheader312.50.i.i.i:                           ; preds = %.preheader312.49.i.i.i
  %i.pi = load i32, ptr %i.fn, align 4, !tbaa !8
  %.not.50.i.i.i = icmp ult i32 %i.pi, %spec.store.select.i.i
  br i1 %.not.50.i.i.i, label %.preheader312.51.i.i.i, label %bb.ah

.preheader312.51.i.i.i:                           ; preds = %.preheader312.50.i.i.i
  %i.pj = load i32, ptr %i.fo, align 16, !tbaa !8
  %.not.51.i.i.i = icmp ult i32 %i.pj, %spec.store.select.i.i
  br i1 %.not.51.i.i.i, label %.preheader312.52.i.i.i, label %bb.ah

.preheader312.52.i.i.i:                           ; preds = %.preheader312.51.i.i.i
  %i.pk = load i32, ptr %i.fp, align 4, !tbaa !8
  %.not.52.i.i.i = icmp ult i32 %i.pk, %spec.store.select.i.i
  br i1 %.not.52.i.i.i, label %.preheader312.53.i.i.i, label %bb.ah

.preheader312.53.i.i.i:                           ; preds = %.preheader312.52.i.i.i
  %i.pl = load i32, ptr %i.fq, align 8, !tbaa !8
  %.not.53.i.i.i = icmp ult i32 %i.pl, %spec.store.select.i.i
  br i1 %.not.53.i.i.i, label %.preheader312.54.i.i.i, label %bb.ah

.preheader312.54.i.i.i:                           ; preds = %.preheader312.53.i.i.i
  %i.pm = load i32, ptr %i.fr, align 4, !tbaa !8
  %.not.54.i.i.i = icmp ult i32 %i.pm, %spec.store.select.i.i
  br i1 %.not.54.i.i.i, label %.preheader312.55.i.i.i, label %bb.ah

.preheader312.55.i.i.i:                           ; preds = %.preheader312.54.i.i.i
  %i.pn = load i32, ptr %i.fs, align 16, !tbaa !8
  %.not.55.i.i.i = icmp ult i32 %i.pn, %spec.store.select.i.i
  br i1 %.not.55.i.i.i, label %.preheader312.56.i.i.i, label %bb.ah

.preheader312.56.i.i.i:                           ; preds = %.preheader312.55.i.i.i
  %i.po = load i32, ptr %i.ft, align 4, !tbaa !8
  %.not.56.i.i.i = icmp ult i32 %i.po, %spec.store.select.i.i
  %spec.select.i.i.i = select i1 %.not.56.i.i.i, i32 6, i32 7
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader312.56.i.i.i, %.preheader312.55.i.i.i, %.preheader312.54.i.i.i, %.preheader312.53.i.i.i, %.preheader312.52.i.i.i, %.preheader312.51.i.i.i, %.preheader312.50.i.i.i, %.preheader312.49.i.i.i, %.preheader312.48.i.i.i, %.preheader312.47.i.i.i, %.preheader312.46.i.i.i, %.preheader312.45.i.i.i, %.preheader312.44.i.i.i, %.preheader312.43.i.i.i, %.preheader312.42.i.i.i, %.preheader312.41.i.i.i, %.preheader312.40.i.i.i, %.preheader312.39.i.i.i, %.preheader312.38.i.i.i, %.preheader312.37.i.i.i, %.preheader312.36.i.i.i, %.preheader312.35.i.i.i, %.preheader312.34.i.i.i, %.preheader312.33.i.i.i, %.preheader312.32.i.i.i, %.preheader312.31.i.i.i, %.preheader312.30.i.i.i, %.preheader312.29.i.i.i, %.preheader312.28.i.i.i, %.preheader312.27.i.i.i, %.preheader312.26.i.i.i, %.preheader312.25.i.i.i, %.preheader312.24.i.i.i, %.preheader312.23.i.i.i, %.preheader312.22.i.i.i, %.preheader312.21.i.i.i, %.preheader312.20.i.i.i, %.preheader312.19.i.i.i, %.preheader312.18.i.i.i, %.preheader312.17.i.i.i, %.preheader312.16.i.i.i, %.preheader312.15.i.i.i, %.preheader312.14.i.i.i, %.preheader312.13.i.i.i, %.preheader312.12.i.i.i, %.preheader312.11.i.i.i, %.preheader312.10.i.i.i, %.preheader312.9.i.i.i, %.preheader312.8.i.i.i, %.preheader312.7.i.i.i, %.preheader312.6.i.i.i, %.preheader312.5.i.i.i, %.preheader312.4.i.i.i, %.preheader312.3.i.i.i, %.preheader312.2.i.i.i, %.preheader312.1.i.i.i, %.preheader312.preheader.i.i.i
  %.0203.lcssa.i.i.i = phi i32 [ 63, %.preheader312.preheader.i.i.i ], [ 24, %.preheader312.39.i.i.i ], [ 62, %.preheader312.1.i.i.i ], [ %spec.select.i.i.i, %.preheader312.56.i.i.i ], [ 61, %.preheader312.2.i.i.i ], [ 34, %.preheader312.29.i.i.i ], [ 60, %.preheader312.3.i.i.i ], [ 8, %.preheader312.55.i.i.i ], [ 59, %.preheader312.4.i.i.i ], [ 21, %.preheader312.42.i.i.i ], [ 58, %.preheader312.5.i.i.i ], [ 9, %.preheader312.54.i.i.i ], [ 57, %.preheader312.6.i.i.i ], [ 33, %.preheader312.30.i.i.i ], [ 56, %.preheader312.7.i.i.i ], [ 10, %.preheader312.53.i.i.i ], [ 55, %.preheader312.8.i.i.i ], [ 27, %.preheader312.36.i.i.i ], [ 54, %.preheader312.9.i.i.i ], [ 11, %.preheader312.52.i.i.i ], [ 53, %.preheader312.10.i.i.i ], [ 32, %.preheader312.31.i.i.i ], [ 52, %.preheader312.11.i.i.i ], [ 12, %.preheader312.51.i.i.i ], [ 51, %.preheader312.12.i.i.i ], [ 22, %.preheader312.41.i.i.i ], [ 50, %.preheader312.13.i.i.i ], [ 13, %.preheader312.50.i.i.i ], [ 49, %.preheader312.14.i.i.i ], [ 31, %.preheader312.32.i.i.i ], [ 48, %.preheader312.15.i.i.i ], [ 14, %.preheader312.49.i.i.i ], [ 47, %.preheader312.16.i.i.i ], [ 25, %.preheader312.38.i.i.i ], [ 46, %.preheader312.17.i.i.i ], [ 15, %.preheader312.48.i.i.i ], [ 45, %.preheader312.18.i.i.i ], [ 30, %.preheader312.33.i.i.i ], [ 44, %.preheader312.19.i.i.i ], [ 16, %.preheader312.47.i.i.i ], [ 43, %.preheader312.20.i.i.i ], [ 23, %.preheader312.40.i.i.i ], [ 42, %.preheader312.21.i.i.i ], [ 17, %.preheader312.46.i.i.i ], [ 41, %.preheader312.22.i.i.i ], [ 29, %.preheader312.34.i.i.i ], [ 40, %.preheader312.23.i.i.i ], [ 18, %.preheader312.45.i.i.i ], [ 39, %.preheader312.24.i.i.i ], [ 26, %.preheader312.37.i.i.i ], [ 38, %.preheader312.25.i.i.i ], [ 19, %.preheader312.44.i.i.i ], [ 37, %.preheader312.26.i.i.i ], [ 28, %.preheader312.35.i.i.i ], [ 36, %.preheader312.27.i.i.i ], [ 20, %.preheader312.43.i.i.i ], [ 35, %.preheader312.28.i.i.i ] ; 2 uses
  %i.pp = zext nneg i32 %.0203.lcssa.i.i.i to i64
  %i.pq = getelementptr i8, ptr %i.lk, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 -1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.0202.i.i.i = phi i32 [ %.0203.lcssa.i.i.i, %bb.ah ], [ %i.py, %bb.ai ] ; 11 uses
  %i.pt = zext i32 %.0202.i.i.i to i64            ; 5 uses
  %i.pu = getelementptr i8, ptr %i.lk, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 -2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !21
  %i.px = icmp eq i8 %i.pw, %i.ps
  %i.py = add i32 %.0202.i.i.i, -1
  br i1 %i.px, label %bb.ai, label %bb.aj, !llvm.loop !73

bb.aj:                                            ; preds = %bb.ai
  %i.pz = icmp ult i32 %.0202.i.i.i, 7
  br i1 %i.pz, label %ZDICT_analyzePos.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.fu, align 4, !tbaa !8
  %i.qa = icmp eq i32 %.0202.i.i.i, 7
  br i1 %i.qa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ak
  %i.qb = and i64 %i.pt, 4294967294
  %i.qc = add nsw i64 %i.qb, -8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.new
  %i.qd = phi i32 [ 0, %.new ], [ %i.qq, %bb.al ]
  %indvars.iv373.i.i.i = phi i64 [ 7, %.new ], [ %indvars.iv.next374.i.i.i.1, %bb.al ] ; 5 uses
  %niter186 = phi i64 [ 0, %.new ], [ %niter186.next.1, %bb.al ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !8
  %i.qg = trunc nuw i64 %indvars.iv373.i.i.i to i32
  %i.qh = add i32 %i.qg, -3
  %i.qi = mul i32 %i.qh, %i.qf
  %i.qj = add i32 %i.qi, %i.qd                    ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i = add nuw nsw i64 %indvars.iv373.i.i.i, 1 ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next374.i.i.i
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !8
  %i.qn = trunc nuw i64 %indvars.iv.next374.i.i.i to i32
  %i.qo = add i32 %i.qn, -3
  %i.qp = mul i32 %i.qo, %i.qm
  %i.qq = add i32 %i.qp, %i.qj                    ; 3 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next374.i.i.i
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i.1 = add nuw nsw i64 %indvars.iv373.i.i.i, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2
  %niter186.ncmp.1 = icmp eq i64 %niter186, %i.qc
  br i1 %niter186.ncmp.1, label %.unr-lcssa, label %bb.al, !llvm.loop !74

.unr-lcssa:                                       ; preds = %bb.al
  %8 = trunc i32 %.0202.i.i.i to i1
  br i1 %8, label %.epil.preheader, label %bb.am

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ak
  %.epil.init = phi i32 [ 0, %bb.ak ], [ %i.qq, %.unr-lcssa ]
  %indvars.iv373.i.i.i.epil.init = phi i64 [ 7, %bb.ak ], [ %indvars.iv.next374.i.i.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod184 = trunc i32 %.0202.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i.epil.init
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !8
  %i.qu = trunc nuw i64 %indvars.iv373.i.i.i.epil.init to i32
  %i.qv = add i32 %i.qu, -3
  %i.qw = mul i32 %i.qv, %i.qt
  %i.qx = add i32 %i.qw, %.epil.init
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i.epil.init
  store i32 %i.qx, ptr %i.qy, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %.unr-lcssa, %.epil.preheader
  br i1 %i.dn, label %bb.an, label %._crit_edge398.i.i.i

._crit_edge398.i.i.i:                             ; preds = %bb.am
  %.phi.trans.insert399.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %.pre400.i.i.i = load i32, ptr %.phi.trans.insert399.i.i.i, align 4, !tbaa !8
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !8  ; 3 uses
  %i.rc = uitofp i32 %i.rb to double
  %i.rd = uitofp i32 %.0202.i.i.i to double
  %i.re = fdiv double %i.rc, %i.rd
  %i.rf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.36, i32 noundef %i.li, i32 noundef %.0202.i.i.i, i32 noundef %i.rb, double noundef %i.re) #19 ; 0 uses
  %i.rg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.rh = tail call i32 @fflush(ptr noundef %i.rg) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge398.i.i.i
  %i.ri = phi i32 [ %.pre400.i.i.i, %._crit_edge398.i.i.i ], [ %i.rb, %bb.an ] ; 4 uses
  %i.rj = icmp ult i32 %.2233.lcssa.i.i.i, %indvars.iv383.i.i.i
  br i1 %i.rj, label %.lr.ph351.preheader.i.i.i, label %ZDICT_analyzePos.exit.i.i

.lr.ph351.preheader.i.i.i:                        ; preds = %bb.ao
  %i.rk = zext i32 %.2233.lcssa.i.i.i to i64
  br label %.lr.ph351.i.i.i

.lr.ph351.i.i.i:                                  ; preds = %._crit_edge348.i.i.i, %.lr.ph351.preheader.i.i.i
  %indvars.iv379.i.i.i = phi i64 [ %i.rk, %.lr.ph351.preheader.i.i.i ], [ %indvars.iv.next380.i.i.i, %._crit_edge348.i.i.i ] ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv379.i.i.i
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !8  ; 5 uses
  %i.rn = icmp eq i32 %i.rm, %i.li
  br i1 %i.rn, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph351.i.i.i
  %i.ro = zext i32 %i.rm to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ro ; 2 uses
  %.011.val21.i298.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !17 ; 2 uses
  %.012.val22.i299.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !17 ; 2 uses
  %.not23.i300.i.i.i = icmp eq i64 %.011.val21.i298.i.i.i, %.012.val22.i299.i.i.i
  br i1 %.not23.i300.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

.lr.ph.i304.i.i.i:                                ; preds = %bb.ap, %.lr.ph.i304.i.i.i
  %.01125.i305.i.i.i = phi ptr [ %i.rr, %.lr.ph.i304.i.i.i ], [ %i.rp, %bb.ap ]
  %.01224.i306.i.i.i = phi ptr [ %i.rq, %.lr.ph.i304.i.i.i ], [ %i.lk, %bb.ap ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.01224.i306.i.i.i, i64 8 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.01125.i305.i.i.i, i64 8 ; 2 uses
  %.011.val.i307.i.i.i = load i64, ptr %i.rr, align 1, !tbaa !17 ; 2 uses
  %.012.val.i308.i.i.i = load i64, ptr %i.rq, align 1, !tbaa !17 ; 2 uses
  %.not.i309.i.i.i = icmp eq i64 %.011.val.i307.i.i.i, %.012.val.i308.i.i.i
  br i1 %.not.i309.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

ZDICT_count.exit310.i.i.i:                        ; preds = %.lr.ph.i304.i.i.i, %bb.ap
  %.012.lcssa.i301.i.i.i = phi ptr [ %i.lk, %bb.ap ], [ %i.rq, %.lr.ph.i304.i.i.i ]
  %.011.val.lcssa.i302.i.i.i = phi i64 [ %.011.val21.i298.i.i.i, %bb.ap ], [ %.011.val.i307.i.i.i, %.lr.ph.i304.i.i.i ]
  %.012.val.lcssa.i303.i.i.i = phi i64 [ %.012.val22.i299.i.i.i, %bb.ap ], [ %.012.val.i308.i.i.i, %.lr.ph.i304.i.i.i ]
  %i.rs = xor i64 %.012.val.lcssa.i303.i.i.i, %.011.val.lcssa.i302.i.i.i
  %i.rt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rs, i1 true)
  %i.ru = lshr i64 %i.rt, 3
  %i.rv = getelementptr inbounds nuw i8, ptr %.012.lcssa.i301.i.i.i, i64 %i.ru
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = sub i64 %i.rw, %i.ll
  %i.ry = trunc i64 %i.rx to i32
  %spec.select251.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0202.i.i.i, i32 %i.ry)
  br label %bb.aq

bb.aq:                                            ; preds = %ZDICT_count.exit310.i.i.i, %.lr.ph351.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select251.i.i.i, %ZDICT_count.exit310.i.i.i ], [ %.0202.i.i.i, %.lr.ph351.i.i.i ] ; 2 uses
  %i.rz = add i32 %.0.i.i.i, %i.rm
  %i.sa = icmp ult i32 %i.rm, %i.rz
  br i1 %i.sa, label %.lr.ph347.preheader.i.i.i, label %._crit_edge348.i.i.i

.lr.ph347.preheader.i.i.i:                        ; preds = %bb.aq
  %i.sb = zext i32 %i.rm to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.sb
  %i.sc = add i32 %.0.i.i.i, -1
  %i.sd = zext i32 %i.sc to i64
  %i.se = add nuw nsw i64 %i.sd, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.se, i1 false), !tbaa !21
  br label %._crit_edge348.i.i.i

._crit_edge348.i.i.i:                             ; preds = %.lr.ph347.preheader.i.i.i, %bb.aq
  %indvars.iv.next380.i.i.i = add nuw nsw i64 %indvars.iv379.i.i.i, 1 ; 2 uses
  %exitcond386.not.i.i.i = icmp eq i64 %indvars.iv.next380.i.i.i, %i.lm
  br i1 %exitcond386.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph351.i.i.i, !llvm.loop !75

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph357.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sf = add i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !63

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge348.i.i.i, %bb.ao
  %i.sg = shl nuw nsw i64 %i.pt, 32
  %i.sh = or disjoint i64 %i.sg, %i.lj            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.si = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %i.sh, i32 %i.ri, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.si, 0
  br i1 %.not.i111.i.i, label %bb.ar, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sj = zext i32 %i.si to i64                   ; 2 uses
  %i.sk = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sj ; 2 uses
  %.sroa.0.0.copyload.i142.i.i = load i64, ptr %i.sk, align 4
  %.sroa.2.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %.sroa.2.0.copyload.i144.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i143.i.i, align 4
  %i.sl = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i142.i.i, i32 %.sroa.2.0.copyload.i144.i.i, i32 noundef %i.si, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i145.i.i = icmp eq i32 %i.sl, 0
  br i1 %.not43.i145.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sm = phi i32 [ %i.sy, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sl, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sn = phi i64 [ %i.sw, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sj, %.preheader.i112.preheader.i.i ]
  %.03544.i146.i.i = phi i32 [ %i.sm, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.si, %.preheader.i112.preheader.i.i ] ; 2 uses
  %i.so = load i32, ptr %i.x, align 4, !tbaa !10  ; 2 uses
  %i.sp = add i32 %i.so, -1                       ; 2 uses
  %i.sq = icmp ult i32 %.03544.i146.i.i, %i.sp
  br i1 %i.sq, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sr = mul nuw nsw i64 %i.sn, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.sr ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.so, %.03544.i146.i.i
  %i.ss = add i32 %reass.sub, -2
  %i.st = zext i32 %i.ss to i64
  %i.su = mul nuw nsw i64 %i.st, 12
  %i.sv = add nuw nsw i64 %i.su, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.sv, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !10
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.sp, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !10
  %i.sw = zext i32 %i.sm to i64                   ; 2 uses
  %i.sx = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sw ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.sx, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.sy = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sm, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.sy, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !76

bb.ar:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sz = load i32, ptr %i.x, align 4, !tbaa !10
  %spec.select.i113.i.i = tail call i32 @llvm.umin.i32(i32 %i.sz, i32 %i.fv) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i113.i.i, -1 ; 2 uses
  %i.ta = zext i32 %.03445.i.i.i to i64
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !12
  %i.te = icmp ult i32 %i.td, %i.ri
  br i1 %i.te, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ar, %.lr.ph.i115.i.i
  %i.tf = phi ptr [ %i.tj, %.lr.ph.i115.i.i ], [ %i.tb, %bb.ar ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i115.i.i ], [ %.03445.i.i.i, %bb.ar ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i115.i.i ], [ %spec.select.i113.i.i, %bb.ar ]
  %i.tg = zext i32 %.034.in46.i.i.i to i64
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.th, ptr noundef nonnull align 4 dereferenceable(12) %i.tf, i64 12, i1 false), !tbaa.struct !24
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.ti = zext i32 %.034.i.i.i to i64
  %i.tj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !12
  %i.tm = icmp ult i32 %i.tl, %i.ri
  br i1 %i.tm, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i, !llvm.loop !77

._crit_edge.i114.i.i:                             ; preds = %.lr.ph.i115.i.i, %bb.ar
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i113.i.i, %bb.ar ], [ %.03447.i.i.i, %.lr.ph.i115.i.i ]
  %i.tn = zext i32 %.034.in.lcssa.i.i.i to i64
  %i.to = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tn ; 2 uses
  store i64 %i.sh, ptr %i.to, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store i32 %i.ri, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !8
  %i.tp = add nuw i32 %spec.select.i113.i.i, 1
end_hunk_1
