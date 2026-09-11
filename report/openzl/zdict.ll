Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_trainFromBuffer_legacy:bb.a
.lr.ph354.i.i.i:                                  ; preds = %._crit_edge351.i.i.i, %.lr.ph354.preheader.i.i.i
  %indvars.iv386.i.i.i = phi i64 [ %i.ri, %.lr.ph354.preheader.i.i.i ], [ %indvars.iv.next387.i.i.i, %._crit_edge351.i.i.i ] ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv386.i.i.i
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !11 ; 3 uses
  %i.rl = zext i32 %i.rk to i64                   ; 3 uses
  %i.rm = icmp eq i64 %i.rl, %i.li
  br i1 %i.rm, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph354.i.i.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.rl ; 2 uses
  %.011.val21.i297.i.i.i = load i64, ptr %i.rn, align 1, !tbaa !20 ; 2 uses
  %.012.val22.i298.i.i.i = load i64, ptr %i.lj, align 1, !tbaa !20 ; 2 uses
  %.not23.i299.i.i.i = icmp eq i64 %.011.val21.i297.i.i.i, %.012.val22.i298.i.i.i
  br i1 %.not23.i299.i.i.i, label %.lr.ph.i303.i.i.i, label %ZDICT_count.exit309.i.i.i

.lr.ph.i303.i.i.i:                                ; preds = %bb.an, %.lr.ph.i303.i.i.i
  %.01125.i304.i.i.i = phi ptr [ %i.rp, %.lr.ph.i303.i.i.i ], [ %i.rn, %bb.an ]
  %.01224.i305.i.i.i = phi ptr [ %i.ro, %.lr.ph.i303.i.i.i ], [ %i.lj, %bb.an ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.01224.i305.i.i.i, i64 8 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.01125.i304.i.i.i, i64 8 ; 2 uses
  %.011.val.i306.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !20 ; 2 uses
  %.012.val.i307.i.i.i = load i64, ptr %i.ro, align 1, !tbaa !20 ; 2 uses
  %.not.i308.i.i.i = icmp eq i64 %.011.val.i306.i.i.i, %.012.val.i307.i.i.i
  br i1 %.not.i308.i.i.i, label %.lr.ph.i303.i.i.i, label %ZDICT_count.exit309.i.i.i

ZDICT_count.exit309.i.i.i:                        ; preds = %.lr.ph.i303.i.i.i, %bb.an
  %.012.lcssa.i300.i.i.i = phi ptr [ %i.lj, %bb.an ], [ %i.ro, %.lr.ph.i303.i.i.i ]
  %.011.val.lcssa.i301.i.i.i = phi i64 [ %.011.val21.i297.i.i.i, %bb.an ], [ %.011.val.i306.i.i.i, %.lr.ph.i303.i.i.i ]
  %.012.val.lcssa.i302.i.i.i = phi i64 [ %.012.val22.i298.i.i.i, %bb.an ], [ %.012.val.i307.i.i.i, %.lr.ph.i303.i.i.i ]
  %i.rq = xor i64 %.012.val.lcssa.i302.i.i.i, %.011.val.lcssa.i301.i.i.i
  %i.rr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rq, i1 true)
  %i.rs = lshr i64 %i.rr, 3
  %i.rt = getelementptr inbounds nuw i8, ptr %.012.lcssa.i300.i.i.i, i64 %i.rs
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = sub i64 %i.ru, %i.lk
  %i.rw = trunc i64 %i.rv to i32
  %spec.select250.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0201.i.i.i, i32 %i.rw)
  br label %bb.ao

bb.ao:                                            ; preds = %ZDICT_count.exit309.i.i.i, %.lr.ph354.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select250.i.i.i, %ZDICT_count.exit309.i.i.i ], [ %.0201.i.i.i, %.lr.ph354.i.i.i ] ; 2 uses
  %i.rx = add i32 %.0.i.i.i, %i.rk
  %i.ry = icmp ult i32 %i.rk, %i.rx
  br i1 %i.ry, label %.lr.ph350.preheader.i.i.i, label %._crit_edge351.i.i.i

.lr.ph350.preheader.i.i.i:                        ; preds = %bb.ao
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.rl
  %i.rz = add i32 %.0.i.i.i, -1
  %i.sa = zext i32 %i.rz to i64
  %i.sb = add nuw nsw i64 %i.sa, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.sb, i1 false), !tbaa !24
  br label %._crit_edge351.i.i.i

._crit_edge351.i.i.i:                             ; preds = %.lr.ph350.preheader.i.i.i, %bb.ao
  %indvars.iv.next387.i.i.i = add nuw nsw i64 %indvars.iv386.i.i.i, 1 ; 2 uses
  %exitcond393.not.i.i.i = icmp eq i64 %indvars.iv.next387.i.i.i, %i.ll
  br i1 %exitcond393.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph354.i.i.i, !llvm.loop !78

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph357.i.i.i.prol.loopexit, %.lr.ph357.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph360.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sc = add nuw i32 %.095150.i.i, 1
  br label %bb.au, !llvm.loop !66

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge351.i.i.i, %bb.am
  %i.sd = shl nuw nsw i64 %i.pt, 32
  %i.se = zext i32 %i.lh to i64
  %i.sf = or disjoint i64 %i.sd, %i.se            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sg = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %i.sf, i32 %i.rg, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not.i111.i.i, label %bb.ap, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sh = zext i32 %i.sg to i64                   ; 2 uses
  %i.si = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sh ; 2 uses
  %.sroa.0.0.copyload.i142.i.i = load i64, ptr %i.si, align 4
  %.sroa.2.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %.sroa.2.0.copyload.i144.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i143.i.i, align 4
  %i.sj = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i142.i.i, i32 %.sroa.2.0.copyload.i144.i.i, i32 noundef %i.sg, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i145.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not43.i145.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sk = phi i32 [ %i.sw, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sj, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sl = phi i64 [ %i.su, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sh, %.preheader.i112.preheader.i.i ]
  %.03544.i146.i.i = phi i32 [ %i.sk, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sg, %.preheader.i112.preheader.i.i ] ; 2 uses
  %i.sm = load i32, ptr %i.x, align 4, !tbaa !13  ; 2 uses
  %i.sn = add i32 %i.sm, -1                       ; 2 uses
  %i.so = icmp ult i32 %.03544.i146.i.i, %i.sn
  br i1 %i.so, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sp = mul nuw nsw i64 %i.sl, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.sp ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.sm, %.03544.i146.i.i
  %i.sq = add i32 %reass.sub, -2
  %i.sr = zext i32 %i.sq to i64
  %i.ss = mul nuw nsw i64 %i.sr, 12
  %i.st = add nuw nsw i64 %i.ss, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.st, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !13
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.sn, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !13
  %i.su = zext i32 %i.sk to i64                   ; 2 uses
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.su ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.sv, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.sw = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sk, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.sw, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !79

bb.ap:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sx = load i32, ptr %i.x, align 4, !tbaa !13
  %spec.select.i113.i.i = tail call i32 @llvm.umin.i32(i32 %i.sx, i32 %i.fu) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i113.i.i, -1 ; 2 uses
  %i.sy = zext i32 %.03445.i.i.i to i64
  %i.sz = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sy ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !15
  %i.tc = icmp ult i32 %i.tb, %i.rg
  br i1 %i.tc, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ap, %.lr.ph.i115.i.i
  %i.td = phi ptr [ %i.th, %.lr.ph.i115.i.i ], [ %i.sz, %bb.ap ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i115.i.i ], [ %.03445.i.i.i, %bb.ap ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i115.i.i ], [ %spec.select.i113.i.i, %bb.ap ]
  %i.te = zext i32 %.034.in46.i.i.i to i64
  %i.tf = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.te
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tf, ptr noundef nonnull align 4 dereferenceable(12) %i.td, i64 12, i1 false), !tbaa.struct !27
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.tg = zext i32 %.034.i.i.i to i64
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !15
  %i.tk = icmp ult i32 %i.tj, %i.rg
  br i1 %i.tk, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i, !llvm.loop !80

._crit_edge.i114.i.i:                             ; preds = %.lr.ph.i115.i.i, %bb.ap
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i113.i.i, %bb.ap ], [ %.03447.i.i.i, %.lr.ph.i115.i.i ]
  %i.tl = zext i32 %.034.in.lcssa.i.i.i to i64
  %i.tm = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tl ; 2 uses
  store i64 %i.sf, ptr %i.tm, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store i32 %i.rg, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !11
  %i.tn = add nuw i32 %spec.select.i113.i.i, 1
  store i32 %i.tn, ptr %i.x, align 4, !tbaa !13
  br label %ZDICT_insertDictItem.exit.i.i

ZDICT_insertDictItem.exit.i.i:                    ; preds = %ZDICT_removeDictItem.exit.i.i.i, %._crit_edge.i114.i.i, %.preheader.i112.preheader.i.i
  %i.to = add i32 %.0201.i.i.i, %.095150.i.i      ; 4 uses
  br i1 %i.ax, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %ZDICT_insertDictItem.exit.i.i
  %i.tp = tail call i64 @clock() #16
  %i.tq = sub nsw i64 %i.tp, %.099148.i.i
  %i.tr = icmp sgt i64 %i.tq, 300000
  br i1 %i.tr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ts = tail call i64 @clock() #16
  %i.tt = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.tu = uitofp i32 %i.to to double
  %i.tv = fdiv double %i.tu, %i.fv
  %i.tw = fmul double %i.tv, 1.000000e+02
  %i.tx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.33, double noundef %i.tw) #19 ; 0 uses
  %i.ty = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.tz = tail call i32 @fflush(ptr noundef %i.ty) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1100.i.i = phi i64 [ %i.ts, %bb.ar ], [ %.099148.i.i, %bb.aq ] ; 2 uses
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ua = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ub = tail call i32 @fflush(ptr noundef %i.ua) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %ZDICT_insertDictItem.exit.i.i, %ZDICT_analyzePos.exit.thread.i.i, %bb.p
  %.3.i.i = phi i64 [ %.099148.i.i, %bb.p ], [ %.099148.i.i, %ZDICT_analyzePos.exit.thread.i.i ], [ %.1100.i.i, %bb.at ], [ %.1100.i.i, %bb.as ], [ %.099148.i.i, %ZDICT_insertDictItem.exit.i.i ]
  %.1.i.i = phi i32 [ %i.fz, %bb.p ], [ %i.sc, %ZDICT_analyzePos.exit.thread.i.i ], [ %i.to, %bb.at ], [ %i.to, %bb.as ], [ %i.to, %ZDICT_insertDictItem.exit.i.i ] ; 2 uses
  %i.uc = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.ud = icmp samesign ugt i64 %.093.lcssa.i.i, %i.uc
  br i1 %i.ud, label %bb.o, label %ZDICT_trainBuffer_legacy.exit.loopexit.i

ZDICT_trainBuffer_legacy.exit.loopexit.i:         ; preds = %bb.au
  %.pre.pre.i = load i32, ptr %i.x, align 4, !tbaa !13
  br label %ZDICT_trainBuffer_legacy.exit.i

ZDICT_trainBuffer_legacy.exit.i:                  ; preds = %ZDICT_trainBuffer_legacy.exit.loopexit.i, %.thread.i.i, %bb.k, %bb.g
  %.pre.i = phi i32 [ %.pre.pre.i, %ZDICT_trainBuffer_legacy.exit.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %.thread.i.i ] ; 9 uses
  tail call void @free(ptr noundef %i.as) #16
  tail call void @free(ptr noundef %i.au) #16
  tail call void @free(ptr noundef %i.aw) #16
  %i.ue = icmp ugt i32 %.sroa.5.0.copyload, 2
  br i1 %i.ue, label %bb.av, label %.critedge181.i

bb.av:                                            ; preds = %ZDICT_trainBuffer_legacy.exit.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 25) ; 3 uses
  %i.uf = icmp ugt i32 %.pre.i, 1
  br i1 %i.uf, label %.lr.ph.preheader.i196.i, label %ZDICT_dictSize.exit226.thread.critedge.i

.lr.ph.preheader.i196.i:                          ; preds = %bb.av
  %wide.trip.count.i197.i = zext i32 %.pre.i to i64
  %i.ug = add nsw i64 %wide.trip.count.i197.i, -1 ; 2 uses
  %xtraiter191 = and i64 %i.ug, 3                 ; 3 uses
  %i.uh = add i32 %.pre.i, -2
  %i.ui = icmp ult i32 %i.uh, 3
  br i1 %i.ui, label %.lr.ph.i198.i.epil.preheader, label %.lr.ph.preheader.i196.i.new

.lr.ph.preheader.i196.i.new:                      ; preds = %.lr.ph.preheader.i196.i
  %unroll_iter196 = and i64 %i.ug, -4
  br label %.lr.ph.i198.i

.lr.ph.i198.i:                                    ; preds = %.lr.ph.i198.i, %.lr.ph.preheader.i196.i.new
  %indvars.iv.i199.i = phi i64 [ 1, %.lr.ph.preheader.i196.i.new ], [ %indvars.iv.next.i200.i.3, %.lr.ph.i198.i ] ; 5 uses
  %.08.i.i = phi i32 [ 0, %.lr.ph.preheader.i196.i.new ], [ %i.uy, %.lr.ph.i198.i ]
  %niter197 = phi i64 [ 0, %.lr.ph.preheader.i196.i.new ], [ %niter197.next.3, %.lr.ph.i198.i ]
  %i.uj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !14
  %i.um = add i32 %i.ul, %.08.i.i
  %i.un = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !14
  %i.uq = add i32 %i.up, %i.um
  %i.ur = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 28
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !14
  %i.uu = add i32 %i.ut, %i.uq
  %i.uv = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 40
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !14
  %i.uy = add i32 %i.ux, %i.uu                    ; 3 uses
  %indvars.iv.next.i200.i.3 = add nuw nsw i64 %indvars.iv.i199.i, 4 ; 2 uses
  %niter197.next.3 = add nuw i64 %niter197, 4     ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %.critedge.i.unr-lcssa, label %.lr.ph.i198.i, !llvm.loop !81

.critedge.i.unr-lcssa:                            ; preds = %.lr.ph.i198.i
  %lcmp.mod193.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod193.not, label %.critedge.i, label %.lr.ph.i198.i.epil.preheader

.lr.ph.i198.i.epil.preheader:                     ; preds = %.critedge.i.unr-lcssa, %.lr.ph.preheader.i196.i
  %indvars.iv.i199.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i196.i ], [ %indvars.iv.next.i200.i.3, %.critedge.i.unr-lcssa ]
  %.08.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i196.i ], [ %i.uy, %.critedge.i.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter191, 0
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.i198.i.epil

.lr.ph.i198.i.epil:                               ; preds = %.lr.ph.i198.i.epil, %.lr.ph.i198.i.epil.preheader
  %indvars.iv.i199.i.epil = phi i64 [ %indvars.iv.i199.i.epil.init, %.lr.ph.i198.i.epil.preheader ], [ %indvars.iv.next.i200.i.epil, %.lr.ph.i198.i.epil ] ; 2 uses
  %.08.i.i.epil = phi i32 [ %.08.i.i.epil.init, %.lr.ph.i198.i.epil.preheader ], [ %i.vc, %.lr.ph.i198.i.epil ]
  %epil.iter192 = phi i64 [ 0, %.lr.ph.i198.i.epil.preheader ], [ %epil.iter192.next, %.lr.ph.i198.i.epil ]
  %i.uz = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i.epil
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !14
  %i.vc = add i32 %i.vb, %.08.i.i.epil            ; 2 uses
  %indvars.iv.next.i200.i.epil = add nuw nsw i64 %indvars.iv.i199.i.epil, 1
  %epil.iter192.next = add i64 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i64 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %.critedge.i, label %.lr.ph.i198.i.epil, !llvm.loop !82

.critedge.i:                                      ; preds = %.lr.ph.i198.i.epil, %.critedge.i.unr-lcssa
  %.lcssa153 = phi i32 [ %i.uy, %.critedge.i.unr-lcssa ], [ %i.vc, %.lr.ph.i198.i.epil ]
  %i.vd = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ve = add i32 %.pre.i, -1
  %i.vf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vd, ptr noundef nonnull @.str.18, i32 noundef %i.ve, i32 noundef %.lcssa153) #19 ; 0 uses
  %i.vg = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.vh = tail call i32 @fflush(ptr noundef %i.vg) ; 0 uses
  %i.vi = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.vj = add nsw i32 %spec.select.i, -1
  %i.vk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vi, ptr noundef nonnull @.str.19, i32 noundef %i.vj) #19 ; 0 uses
  %i.vl = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.vm = tail call i32 @fflush(ptr noundef %i.vl) ; 0 uses
  %wide.trip.count.i21 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.loopexit.i, %.critedge.i
  %indvars.iv.i23 = phi i64 [ 1, %.critedge.i ], [ %indvars.iv.next.i24, %.loopexit.i ] ; 3 uses
  %i.vn = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i23 ; 3 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !13 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !14 ; 4 uses
  %i.vr = zext i32 %i.vo to i64                   ; 2 uses
  %i.vs = icmp ult i64 %.lcssa126, %i.vr
  %i.vt = add i32 %i.vq, %i.vo
  %i.vu = zext i32 %i.vt to i64
  %i.vv = icmp ult i64 %.lcssa126, %i.vu
  %or.cond175.i = select i1 %i.vs, i1 true, i1 %i.vv
  br i1 %or.cond175.i, label %.thread235.sink.split.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i22
  %i.vw = tail call i32 @llvm.umin.i32(i32 %i.vq, i32 40)
  %i.vx = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !15
  %i.wa = trunc nuw nsw i64 %indvars.iv.i23 to i32
  %i.wb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vx, ptr noundef nonnull @.str.20, i32 noundef %i.wa, i32 noundef %i.vq, i32 noundef %i.vo, i32 noundef %i.vz) #19 ; 0 uses
  %i.wc = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.wd = tail call i32 @fflush(ptr noundef %i.wc) ; 0 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vr
  %i.wf = zext nneg i32 %i.vw to i64
  %.not.i202.i = icmp eq i32 %i.vq, 0
  br i1 %.not.i202.i, label %.loopexit.i, label %.lr.ph.i203.i

.lr.ph.i203.i:                                    ; preds = %bb.aw, %.lr.ph.i203.i
  %.010.i.i = phi i64 [ %i.wn, %.lr.ph.i203.i ], [ 0, %bb.aw ] ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 %.010.i.i
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !24  ; 2 uses
  %i.wi = add i8 %i.wh, -127
  %or.cond.i204.i = icmp ult i8 %i.wi, -95
  %spec.store.select.i205.i = select i1 %or.cond.i204.i, i8 46, i8 %i.wh
  %i.wj = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.wk = zext i8 %spec.store.select.i205.i to i32
  %fputc.i.i = tail call i32 @fputc(i32 %i.wk, ptr %i.wj) ; 0 uses
  %i.wl = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.wm = tail call i32 @fflush(ptr noundef %i.wl) ; 0 uses
  %i.wn = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i206.i = icmp eq i64 %i.wn, %i.wf
  br i1 %exitcond.not.i206.i, label %.loopexit.i, label %.lr.ph.i203.i, !llvm.loop !83

.loopexit.i:                                      ; preds = %.lr.ph.i203.i, %bb.aw
  %i.wo = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %i.wo) #20 ; 0 uses
  %i.wp = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.wq = tail call i32 @fflush(ptr noundef %i.wp) ; 0 uses
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i21
  br i1 %exitcond.not.i25, label %.critedge181.i, label %.lr.ph.i22, !llvm.loop !84

.critedge181.i:                                   ; preds = %.loopexit.i, %ZDICT_trainBuffer_legacy.exit.i
  %i.wr = icmp ugt i32 %.pre.i, 1
  br i1 %i.wr, label %.lr.ph.preheader.i219.i, label %.thread235.sink.split.i

.lr.ph.preheader.i219.i:                          ; preds = %.critedge181.i
  %wide.trip.count.i220.i = zext i32 %.pre.i to i64 ; 3 uses
  %i.ws = add nsw i64 %wide.trip.count.i220.i, -1 ; 2 uses
  %xtraiter198 = and i64 %i.ws, 3                 ; 3 uses
  %i.wt = add i32 %.pre.i, -2
  %i.wu = icmp ult i32 %i.wt, 3
  br i1 %i.wu, label %.lr.ph.i221.i.epil.preheader, label %.lr.ph.preheader.i219.i.new

.lr.ph.preheader.i219.i.new:                      ; preds = %.lr.ph.preheader.i219.i
  %unroll_iter203 = and i64 %i.ws, -4
  br label %.lr.ph.i221.i

.lr.ph.i221.i:                                    ; preds = %.lr.ph.i221.i, %.lr.ph.preheader.i219.i.new
  %indvars.iv.i222.i = phi i64 [ 1, %.lr.ph.preheader.i219.i.new ], [ %indvars.iv.next.i224.i.3, %.lr.ph.i221.i ] ; 5 uses
  %.08.i223.i = phi i32 [ 0, %.lr.ph.preheader.i219.i.new ], [ %i.xk, %.lr.ph.i221.i ]
  %niter204 = phi i64 [ 0, %.lr.ph.preheader.i219.i.new ], [ %niter204.next.3, %.lr.ph.i221.i ]
  %i.wv = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !14
  %i.wy = add i32 %i.wx, %.08.i223.i
  %i.wz = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !14
  %i.xc = add i32 %i.xb, %i.wy
  %i.xd = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 28
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !14
  %i.xg = add i32 %i.xf, %i.xc
  %i.xh = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 40
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !14
  %i.xk = add i32 %i.xj, %i.xg                    ; 3 uses
  %indvars.iv.next.i224.i.3 = add nuw nsw i64 %indvars.iv.i222.i, 4 ; 2 uses
  %niter204.next.3 = add nuw i64 %niter204, 4     ; 2 uses
  %niter204.ncmp.3 = icmp eq i64 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %ZDICT_dictSize.exit226.i.unr-lcssa, label %.lr.ph.i221.i, !llvm.loop !81

ZDICT_dictSize.exit226.i.unr-lcssa:               ; preds = %.lr.ph.i221.i
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod200.not, label %ZDICT_dictSize.exit226.i, label %.lr.ph.i221.i.epil.preheader

.lr.ph.i221.i.epil.preheader:                     ; preds = %ZDICT_dictSize.exit226.i.unr-lcssa, %.lr.ph.preheader.i219.i
  %indvars.iv.i222.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i219.i ], [ %indvars.iv.next.i224.i.3, %ZDICT_dictSize.exit226.i.unr-lcssa ]
  %.08.i223.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i219.i ], [ %i.xk, %ZDICT_dictSize.exit226.i.unr-lcssa ]
  %lcmp.mod202 = icmp ne i64 %xtraiter198, 0
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %.lr.ph.i221.i.epil

.lr.ph.i221.i.epil:                               ; preds = %.lr.ph.i221.i.epil, %.lr.ph.i221.i.epil.preheader
  %indvars.iv.i222.i.epil = phi i64 [ %indvars.iv.i222.i.epil.init, %.lr.ph.i221.i.epil.preheader ], [ %indvars.iv.next.i224.i.epil, %.lr.ph.i221.i.epil ] ; 2 uses
  %.08.i223.i.epil = phi i32 [ %.08.i223.i.epil.init, %.lr.ph.i221.i.epil.preheader ], [ %i.xo, %.lr.ph.i221.i.epil ]
  %epil.iter199 = phi i64 [ 0, %.lr.ph.i221.i.epil.preheader ], [ %epil.iter199.next, %.lr.ph.i221.i.epil ]
  %i.xl = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i.epil
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !14
  %i.xo = add i32 %i.xn, %.08.i223.i.epil         ; 2 uses
  %indvars.iv.next.i224.i.epil = add nuw nsw i64 %indvars.iv.i222.i.epil, 1
  %epil.iter199.next = add i64 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i64 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %ZDICT_dictSize.exit226.i, label %.lr.ph.i221.i.epil, !llvm.loop !85

ZDICT_dictSize.exit226.i:                         ; preds = %.lr.ph.i221.i.epil, %ZDICT_dictSize.exit226.i.unr-lcssa
  %.lcssa = phi i32 [ %i.xk, %ZDICT_dictSize.exit226.i.unr-lcssa ], [ %i.xo, %.lr.ph.i221.i.epil ] ; 4 uses
  %i.xp = icmp ult i32 %.lcssa, 128
  br i1 %i.xp, label %.thread235.sink.split.i, label %bb.ax

ZDICT_dictSize.exit226.thread.critedge.i:         ; preds = %bb.av
  %i.xq = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.xr = add nsw i32 %.pre.i, -1
  %i.xs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xq, ptr noundef nonnull @.str.18, i32 noundef %i.xr, i32 noundef 0) #19 ; 0 uses
  %i.xt = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.xu = tail call i32 @fflush(ptr noundef %i.xt) ; 0 uses
  %i.xv = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.xw = add nsw i32 %spec.select.i, -1
  %i.xx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xv, ptr noundef nonnull @.str.19, i32 noundef %i.xw) #19 ; 0 uses
  %i.xy = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.xz = tail call i32 @fflush(ptr noundef %i.xy) ; 0 uses
  br label %.thread235.sink.split.i

bb.ax:                                            ; preds = %ZDICT_dictSize.exit226.i
  %i.ya = zext i32 %.lcssa to i64                 ; 2 uses
  %i.yb = lshr i64 %1, 2
  %i.yc = icmp samesign ugt i64 %i.yb, %i.ya
  %brmerge241.not.i = and i1 %i.ax, %i.yc
  br i1 %brmerge241.not.i, label %bb.ay, label %.critedge183.i

bb.ay:                                            ; preds = %bb.ax
  %i.yd = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ye = trunc i64 %1 to i32
  %i.yf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yd, ptr noundef nonnull @.str.22, i32 noundef %.lcssa, i32 noundef %i.ye) #19 ; 0 uses
  %i.yg = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.yh = tail call i32 @fflush(ptr noundef %i.yg) ; 0 uses
  %i.yi = mul i64 %1, 10
  %i.yj = icmp ult i64 %.lcssa126, %i.yi
  br i1 %i.yj, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.yk = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.yl = lshr i64 %.lcssa126, 20
  %i.ym = trunc i64 %i.yl to i32
  %i.yn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yk, ptr noundef nonnull @.str.23, i32 noundef %i.ym) #19 ; 0 uses
  %i.yo = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.yp = tail call i32 @fflush(ptr noundef %i.yo) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.yq = icmp ugt i32 %i.al, 4
  br i1 %i.yq, label %bb.bb, label %.critedge183.i

bb.bb:                                            ; preds = %bb.ba
  %i.yr = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ys = add i32 %i.ai, 1
  %i.yt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yr, ptr noundef nonnull @.str.24, i32 noundef %i.ys) #19 ; 0 uses
  %i.yu = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.yv = tail call i32 @fflush(ptr noundef %i.yu) ; 0 uses
  %i.yw = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite169.i = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %i.yw) #20 ; 0 uses
  %i.yx = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.yy = tail call i32 @fflush(ptr noundef %i.yx) ; 0 uses
  br label %.critedge183.i

.critedge183.i:                                   ; preds = %bb.bb, %bb.ba, %bb.ax
  %i.yz = mul i64 %1, 3
  %i.za = icmp ult i64 %i.yz, %i.ya
  %i.zb = icmp ugt i32 %4, 8
  %or.cond.i = and i1 %i.zb, %i.za
  %i.zc = icmp ugt i32 %i.ai, 1
  %or.cond7.i = select i1 %or.cond.i, i1 %i.zc, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %.lr.ph263.i.preheader

.preheader.i:                                     ; preds = %.critedge183.i, %.preheader.i
  %.0147.in.i = phi i32 [ %.0147.i, %.preheader.i ], [ %i.ai, %.critedge183.i ]
  %.0147.i = add i32 %.0147.in.i, -1              ; 3 uses
  %i.zd = lshr i32 %4, %.0147.i
  %i.ze = icmp ult i32 %i.zd, 5
  br i1 %i.ze, label %.preheader.i, label %bb.bc, !llvm.loop !86

bb.bc:                                            ; preds = %.preheader.i
  br i1 %i.ax, label %.critedge185.i, label %.lr.ph263.i.preheader

.critedge185.i:                                   ; preds = %bb.bc
  %i.zf = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.zg = trunc i64 %1 to i32
  %i.zh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zf, ptr noundef nonnull @.str.26, i32 noundef %.lcssa, i32 noundef %i.zg) #19 ; 0 uses
  %i.zi = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.zj = tail call i32 @fflush(ptr noundef %i.zi) ; 0 uses
  %i.zk = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.zl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.27, i32 noundef %.0147.i) #19 ; 0 uses
  %i.zm = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.zn = tail call i32 @fflush(ptr noundef %i.zm) ; 0 uses
  %i.zo = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite170.i = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %i.zo) #20 ; 0 uses
  %i.zp = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.zq = tail call i32 @fflush(ptr noundef %i.zp) ; 0 uses
  br label %.lr.ph263.i.preheader

.lr.ph263.i.preheader:                            ; preds = %.critedge185.i, %bb.bc, %.critedge183.i
  br label %.lr.ph263.i

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader, %bb.bd
  %indvars.iv289.i = phi i64 [ %indvars.iv.next290.i, %bb.bd ], [ 1, %.lr.ph263.i.preheader ] ; 4 uses
  %.0146261.i = phi i32 [ %i.zu, %bb.bd ], [ 0, %.lr.ph263.i.preheader ] ; 3 uses
  %i.zr = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv289.i
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !14
  %i.zu = add i32 %i.zt, %.0146261.i              ; 3 uses
  %i.zv = zext i32 %i.zu to i64
  %i.zw = icmp ult i64 %1, %i.zv
  br i1 %i.zw, label %._crit_edge.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph263.i
  %indvars.iv.next290.i = add nuw nsw i64 %indvars.iv289.i, 1 ; 2 uses
  %exitcond293.not.i = icmp eq i64 %indvars.iv.next290.i, %wide.trip.count.i220.i
  br i1 %exitcond293.not.i, label %.lr.ph272.preheader.i, label %.lr.ph263.i, !llvm.loop !87

._crit_edge.i:                                    ; preds = %.lr.ph263.i
  %.not172268.i = icmp samesign ugt i64 %indvars.iv289.i, 1
  br i1 %.not172268.i, label %.lr.ph272.preheader.i, label %._crit_edge273.i

.lr.ph272.preheader.i:                            ; preds = %bb.bd, %._crit_edge.i
  %wide.trip.count297.i.pre-phi = phi i64 [ %indvars.iv289.i, %._crit_edge.i ], [ %wide.trip.count.i220.i, %bb.bd ]
  %.0146.lcssa.ph323.i = phi i32 [ %.0146261.i, %._crit_edge.i ], [ %i.zu, %bb.bd ]
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.lr.ph272.i

.lr.ph272.i:                                      ; preds = %bb.be, %.lr.ph272.preheader.i
  %indvars.iv294.i = phi i64 [ 1, %.lr.ph272.preheader.i ], [ %indvars.iv.next295.i, %bb.be ] ; 2 uses
  %.0270.i = phi ptr [ %7, %.lr.ph272.preheader.i ], [ %i.aac, %bb.be ]
  %i.zx = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv294.i ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !14
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %i.aab = sub nsw i64 0, %i.aaa
  %i.aac = getelementptr inbounds i8, ptr %.0270.i, i64 %i.aab ; 3 uses
  %.not171.i = icmp ult ptr %i.aac, %0
  br i1 %.not171.i, label %.thread235.sink.split.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph272.i
  %i.aad = load i32, ptr %i.zx, align 4, !tbaa !13
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aac, ptr nonnull align 1 %i.aaf, i64 %i.aaa, i1 false)
  %indvars.iv.next295.i = add nuw nsw i64 %indvars.iv294.i, 1 ; 2 uses
  %exitcond298.not.i = icmp eq i64 %indvars.iv.next295.i, %wide.trip.count297.i.pre-phi
  br i1 %exitcond298.not.i, label %._crit_edge273.i, label %.lr.ph272.i, !llvm.loop !88

._crit_edge273.i:                                 ; preds = %bb.be, %._crit_edge.i
  %.0146.lcssa.ph322.i = phi i32 [ %.0146261.i, %._crit_edge.i ], [ %.0146.lcssa.ph323.i, %bb.be ]
  %i.aag = zext i32 %.0146.lcssa.ph322.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store <2 x i32> %i.r, ptr %6, align 8, !tbaa !11
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.4..sroa_idx, align 8, !tbaa !11
  %i.aah = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %i.aag, i64 noundef %1, ptr noundef nonnull %i.o, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.thread235.sink.split.i

.thread235.sink.split.i:                          ; preds = %.lr.ph.i22, %.lr.ph272.i, %._crit_edge273.i, %ZDICT_dictSize.exit226.thread.critedge.i, %ZDICT_dictSize.exit226.i, %.critedge181.i, %bb.d, %bb.c
  %.8.ph.i = phi i64 [ -1, %.lr.ph272.i ], [ -34, %ZDICT_dictSize.exit226.i ], [ -34, %bb.d ], [ %i.aah, %._crit_edge273.i ], [ -70, %bb.c ], [ -34, %ZDICT_dictSize.exit226.thread.critedge.i ], [ -34, %.critedge181.i ], [ -1, %.lr.ph.i22 ]
  tail call void @free(ptr noundef nonnull %i.x) #16
  br label %ZDICT_trainFromBuffer_unsafe_legacy.exit

ZDICT_trainFromBuffer_unsafe_legacy.exit:         ; preds = %ZDICT_totalSampleSize.exit.i, %.thread235.sink.split.i
  %.8.i = phi i64 [ -64, %ZDICT_totalSampleSize.exit.i ], [ %.8.ph.i, %.thread235.sink.split.i ]
  tail call void @free(ptr noundef %i.o) #16
  br label %ZDICT_totalSampleSize.exit.thread

ZDICT_totalSampleSize.exit.thread:                ; preds = %bb.a, %bb.b, %ZDICT_totalSampleSize.exit, %ZDICT_trainFromBuffer_unsafe_legacy.exit
  %.0 = phi i64 [ 0, %ZDICT_totalSampleSize.exit ], [ %.8.i, %ZDICT_trainFromBuffer_unsafe_legacy.exit ], [ -64, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZDICT_trainFromBuffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.ZDICT_fastCover_params_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 8, ptr %i.a, align 4, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %i.c, align 4, !tbaa !94
  %i.d = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %i.d
}

declare i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @ZDICT_addEntropyTablesFromBuffer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.ZDICT_params_t, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %i.a = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %6, align 8, !tbaa !13     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #20 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.m = tail call i32 @fflush(ptr noundef %i.l)  ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add i64 %2, -8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.q = sub i64 0, %1
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 3 uses
  %i.s = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %i.n, i64 noundef %i.o, i32 noundef %i.c, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.r, i64 noundef %1, i32 noundef %i.e) ; 3 uses
  %i.t = icmp ult i64 %i.s, -119
  %i.u = add nuw i64 %i.s, 8                      ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge
  store i32 -332356553, ptr %0, align 1, !tbaa !11
  %i.v = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.r, i64 noundef %1, i64 noundef 0) #18
  %i.w = urem i64 %i.v, 2147450880
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 32768
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %.not46 = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not46, i32 %i.y, i32 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.ac, align 1, !tbaa !11
  %i.ad = add i64 %i.u, %1                        ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %2
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.r, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.1 = phi i64 [ %i.ag, %bb.e ], [ %i.s, %.critedge ]
  ret i64 %.1
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #5

declare void @ZSTD_getParams(ptr dead_on_unwind writable sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #5

declare ptr @ZSTD_createCCtx() local_unnamed_addr #5

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

declare i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_compressBlock_deprecated(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_getSeqStore(ptr noundef) local_unnamed_addr #5

declare i32 @ZSTD_seqToCodes(ptr noundef) local_unnamed_addr #5

declare i32 @divsufsort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @ZDICT_tryMerge(ptr nofree noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #12 {
bb.a:
  %.sroa.0102.sroa.0.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %.sroa.0102.sroa.14.0.extract.shift = lshr i64 %1, 32 ; 2 uses
  %.sroa.0102.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.0102.sroa.14.0.extract.shift to i32 ; 7 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !13     ; 3 uses
  %i.b = add i32 %.sroa.0102.sroa.14.0.extract.trunc, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.c = icmp ugt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %3 to i64
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph197:                                        ; preds = %bb.e
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = zext i32 %3 to i64
  %wide.trip.count231 = zext i32 %i.a to i64
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.i = icmp eq i64 %indvars.iv, %i.d
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13   ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !14
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !13
  %i.q = mul i32 %i.m, %2
end_hunk_0
