Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_trainFromBuffer_legacy:bb.a
.lr.ph351.i.i.i:                                  ; preds = %._crit_edge348.i.i.i, %.lr.ph351.preheader.i.i.i
  %indvars.iv382.i.i.i = phi i64 [ %i.rj, %.lr.ph351.preheader.i.i.i ], [ %indvars.iv.next383.i.i.i, %._crit_edge348.i.i.i ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv382.i.i.i
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !8  ; 5 uses
  %i.rm = icmp eq i32 %i.rl, %i.lh
  br i1 %i.rm, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph351.i.i.i
  %i.rn = zext i32 %i.rl to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.rn ; 2 uses
  %.011.val21.i298.i.i.i = load i64, ptr %i.ro, align 1, !tbaa !17 ; 2 uses
  %.012.val22.i299.i.i.i = load i64, ptr %i.lj, align 1, !tbaa !17 ; 2 uses
  %.not23.i300.i.i.i = icmp eq i64 %.011.val21.i298.i.i.i, %.012.val22.i299.i.i.i
  br i1 %.not23.i300.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

.lr.ph.i304.i.i.i:                                ; preds = %bb.ap, %.lr.ph.i304.i.i.i
  %.01125.i305.i.i.i = phi ptr [ %i.rq, %.lr.ph.i304.i.i.i ], [ %i.ro, %bb.ap ]
  %.01224.i306.i.i.i = phi ptr [ %i.rp, %.lr.ph.i304.i.i.i ], [ %i.lj, %bb.ap ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.01224.i306.i.i.i, i64 8 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.01125.i305.i.i.i, i64 8 ; 2 uses
  %.011.val.i307.i.i.i = load i64, ptr %i.rq, align 1, !tbaa !17 ; 2 uses
  %.012.val.i308.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !17 ; 2 uses
  %.not.i309.i.i.i = icmp eq i64 %.011.val.i307.i.i.i, %.012.val.i308.i.i.i
  br i1 %.not.i309.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

ZDICT_count.exit310.i.i.i:                        ; preds = %.lr.ph.i304.i.i.i, %bb.ap
  %.012.lcssa.i301.i.i.i = phi ptr [ %i.lj, %bb.ap ], [ %i.rp, %.lr.ph.i304.i.i.i ]
  %.011.val.lcssa.i302.i.i.i = phi i64 [ %.011.val21.i298.i.i.i, %bb.ap ], [ %.011.val.i307.i.i.i, %.lr.ph.i304.i.i.i ]
  %.012.val.lcssa.i303.i.i.i = phi i64 [ %.012.val22.i299.i.i.i, %bb.ap ], [ %.012.val.i308.i.i.i, %.lr.ph.i304.i.i.i ]
  %i.rr = xor i64 %.012.val.lcssa.i303.i.i.i, %.011.val.lcssa.i302.i.i.i
  %i.rs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rr, i1 true)
  %i.rt = lshr i64 %i.rs, 3
  %i.ru = getelementptr inbounds nuw i8, ptr %.012.lcssa.i301.i.i.i, i64 %i.rt
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = sub i64 %i.rv, %i.lk
  %i.rx = trunc i64 %i.rw to i32
  %spec.select251.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0202.i.i.i, i32 %i.rx)
  br label %bb.aq

bb.aq:                                            ; preds = %ZDICT_count.exit310.i.i.i, %.lr.ph351.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select251.i.i.i, %ZDICT_count.exit310.i.i.i ], [ %.0202.i.i.i, %.lr.ph351.i.i.i ] ; 2 uses
  %i.ry = add i32 %.0.i.i.i, %i.rl
  %i.rz = icmp ult i32 %i.rl, %i.ry
  br i1 %i.rz, label %.lr.ph347.preheader.i.i.i, label %._crit_edge348.i.i.i

.lr.ph347.preheader.i.i.i:                        ; preds = %bb.aq
  %i.sa = zext i32 %i.rl to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.sa
  %i.sb = add i32 %.0.i.i.i, -1
  %i.sc = zext i32 %i.sb to i64
  %i.sd = add nuw nsw i64 %i.sc, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.sd, i1 false), !tbaa !21
  br label %._crit_edge348.i.i.i

._crit_edge348.i.i.i:                             ; preds = %.lr.ph347.preheader.i.i.i, %bb.aq
  %indvars.iv.next383.i.i.i = add nuw nsw i64 %indvars.iv382.i.i.i, 1 ; 2 uses
  %exitcond389.not.i.i.i = icmp eq i64 %indvars.iv.next383.i.i.i, %i.ll
  br i1 %exitcond389.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph351.i.i.i, !llvm.loop !75

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph357.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.se = add nuw i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !63

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge348.i.i.i, %bb.ao
  %i.sf = shl nuw nsw i64 %i.pt, 32
  %i.sg = or disjoint i64 %i.sf, %i.li            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sh = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %i.sg, i32 %i.rh, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.sh, 0
  br i1 %.not.i111.i.i, label %bb.ar, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.si ; 2 uses
  %.sroa.0.0.copyload.i142.i.i = load i64, ptr %i.sj, align 4
  %.sroa.2.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %.sroa.2.0.copyload.i144.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i143.i.i, align 4
  %i.sk = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i142.i.i, i32 %.sroa.2.0.copyload.i144.i.i, i32 noundef %i.sh, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i145.i.i = icmp eq i32 %i.sk, 0
  br i1 %.not43.i145.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sl = phi i32 [ %i.sx, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sk, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sm = phi i64 [ %i.sv, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.si, %.preheader.i112.preheader.i.i ]
  %.03544.i146.i.i = phi i32 [ %i.sl, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sh, %.preheader.i112.preheader.i.i ] ; 2 uses
  %i.sn = load i32, ptr %i.x, align 4, !tbaa !10  ; 2 uses
  %i.so = add i32 %i.sn, -1                       ; 2 uses
  %i.sp = icmp ult i32 %.03544.i146.i.i, %i.so
  br i1 %i.sp, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sq = mul nuw nsw i64 %i.sm, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.sq ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.sn, %.03544.i146.i.i
  %i.sr = add i32 %reass.sub, -2
  %i.ss = zext i32 %i.sr to i64
  %i.st = mul nuw nsw i64 %i.ss, 12
  %i.su = add nuw nsw i64 %i.st, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.su, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !10
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.so, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !10
  %i.sv = zext i32 %i.sl to i64                   ; 2 uses
  %i.sw = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sv ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.sw, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.sx = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sl, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.sx, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !76

bb.ar:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sy = load i32, ptr %i.x, align 4, !tbaa !10
  %spec.select.i113.i.i = tail call i32 @llvm.umin.i32(i32 %i.sy, i32 %i.fu) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i113.i.i, -1 ; 2 uses
  %i.sz = zext i32 %.03445.i.i.i to i64
  %i.ta = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sz ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !12
  %i.td = icmp ult i32 %i.tc, %i.rh
  br i1 %i.td, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ar, %.lr.ph.i115.i.i
  %i.te = phi ptr [ %i.ti, %.lr.ph.i115.i.i ], [ %i.ta, %bb.ar ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i115.i.i ], [ %.03445.i.i.i, %bb.ar ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i115.i.i ], [ %spec.select.i113.i.i, %bb.ar ]
  %i.tf = zext i32 %.034.in46.i.i.i to i64
  %i.tg = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tg, ptr noundef nonnull align 4 dereferenceable(12) %i.te, i64 12, i1 false), !tbaa.struct !24
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.th = zext i32 %.034.i.i.i to i64
  %i.ti = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !12
  %i.tl = icmp ult i32 %i.tk, %i.rh
  br i1 %i.tl, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i, !llvm.loop !77

._crit_edge.i114.i.i:                             ; preds = %.lr.ph.i115.i.i, %bb.ar
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i113.i.i, %bb.ar ], [ %.03447.i.i.i, %.lr.ph.i115.i.i ]
  %i.tm = zext i32 %.034.in.lcssa.i.i.i to i64
  %i.tn = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tm ; 2 uses
  store i64 %i.sg, ptr %i.tn, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i32 %i.rh, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !8
  %i.to = add nuw i32 %spec.select.i113.i.i, 1
  store i32 %i.to, ptr %i.x, align 4, !tbaa !10
  br label %ZDICT_insertDictItem.exit.i.i

ZDICT_insertDictItem.exit.i.i:                    ; preds = %ZDICT_removeDictItem.exit.i.i.i, %._crit_edge.i114.i.i, %.preheader.i112.preheader.i.i
  %i.tp = add i32 %.0202.i.i.i, %.095150.i.i      ; 4 uses
  br i1 %i.ax, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %ZDICT_insertDictItem.exit.i.i
  %i.tq = tail call i64 @clock() #16
  %i.tr = sub nsw i64 %i.tq, %.099148.i.i
  %i.ts = icmp sgt i64 %i.tr, 300000
  br i1 %i.ts, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.tt = tail call i64 @clock() #16
  %i.tu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.tv = uitofp i32 %i.tp to double
  %i.tw = fdiv double %i.tv, %i.fv
  %i.tx = fmul double %i.tw, 1.000000e+02
  %i.ty = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tu, ptr noundef nonnull @.str.33, double noundef %i.tx) #19 ; 0 uses
  %i.tz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ua = tail call i32 @fflush(ptr noundef %i.tz) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1100.i.i = phi i64 [ %i.tt, %bb.at ], [ %.099148.i.i, %bb.as ] ; 2 uses
  br i1 %i.dm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ub = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.uc = tail call i32 @fflush(ptr noundef %i.ub) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %ZDICT_insertDictItem.exit.i.i, %ZDICT_analyzePos.exit.thread.i.i, %bb.p
  %.3.i.i = phi i64 [ %.099148.i.i, %bb.p ], [ %.099148.i.i, %ZDICT_analyzePos.exit.thread.i.i ], [ %.1100.i.i, %bb.av ], [ %.1100.i.i, %bb.au ], [ %.099148.i.i, %ZDICT_insertDictItem.exit.i.i ]
  %.1.i.i = phi i32 [ %i.fz, %bb.p ], [ %i.se, %ZDICT_analyzePos.exit.thread.i.i ], [ %i.tp, %bb.av ], [ %i.tp, %bb.au ], [ %i.tp, %ZDICT_insertDictItem.exit.i.i ] ; 2 uses
  %i.ud = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.ue = icmp samesign ugt i64 %.093.lcssa.i.i, %i.ud
  br i1 %i.ue, label %bb.o, label %ZDICT_trainBuffer_legacy.exit.loopexit.i

ZDICT_trainBuffer_legacy.exit.loopexit.i:         ; preds = %bb.aw
  %.pre.pre.i = load i32, ptr %i.x, align 4, !tbaa !10
  br label %ZDICT_trainBuffer_legacy.exit.i

ZDICT_trainBuffer_legacy.exit.i:                  ; preds = %ZDICT_trainBuffer_legacy.exit.loopexit.i, %.thread.i.i, %bb.k, %bb.g
  %.pre.i = phi i32 [ %.pre.pre.i, %ZDICT_trainBuffer_legacy.exit.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %.thread.i.i ] ; 10 uses
  tail call void @free(ptr noundef %i.as) #16
  tail call void @free(ptr noundef %i.au) #16
  tail call void @free(ptr noundef %i.aw) #16
  %i.uf = icmp ugt i32 %.sroa.5.0.copyload, 2
  br i1 %i.uf, label %bb.ax, label %.critedge181.i

bb.ax:                                            ; preds = %ZDICT_trainBuffer_legacy.exit.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 25) ; 3 uses
  %i.ug = icmp ugt i32 %.pre.i, 1
  br i1 %i.ug, label %.lr.ph.preheader.i196.i, label %ZDICT_dictSize.exit226.thread.critedge.i

.lr.ph.preheader.i196.i:                          ; preds = %bb.ax
  %wide.trip.count.i197.i = zext i32 %.pre.i to i64
  %i.uh = add nsw i64 %wide.trip.count.i197.i, -1 ; 2 uses
  %xtraiter188 = and i64 %i.uh, 3                 ; 3 uses
  %i.ui = add i32 %.pre.i, -2
  %i.uj = icmp ult i32 %i.ui, 3
  br i1 %i.uj, label %.lr.ph.i198.i.epil.preheader, label %.lr.ph.preheader.i196.i.new

.lr.ph.preheader.i196.i.new:                      ; preds = %.lr.ph.preheader.i196.i
  %unroll_iter193 = and i64 %i.uh, -4
  br label %.lr.ph.i198.i

.lr.ph.i198.i:                                    ; preds = %.lr.ph.i198.i, %.lr.ph.preheader.i196.i.new
  %indvars.iv.i199.i = phi i64 [ 1, %.lr.ph.preheader.i196.i.new ], [ %indvars.iv.next.i200.i.3, %.lr.ph.i198.i ] ; 5 uses
  %.08.i.i = phi i32 [ 0, %.lr.ph.preheader.i196.i.new ], [ %i.uz, %.lr.ph.i198.i ]
  %niter194 = phi i64 [ 0, %.lr.ph.preheader.i196.i.new ], [ %niter194.next.3, %.lr.ph.i198.i ]
  %i.uk = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !11
  %i.un = add i32 %i.um, %.08.i.i
  %i.uo = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !11
  %i.ur = add i32 %i.uq, %i.un
  %i.us = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 28
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !11
  %i.uv = add i32 %i.uu, %i.ur
  %i.uw = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 40
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !11
  %i.uz = add i32 %i.uy, %i.uv                    ; 3 uses
  %indvars.iv.next.i200.i.3 = add nuw nsw i64 %indvars.iv.i199.i, 4 ; 2 uses
  %niter194.next.3 = add nuw i64 %niter194, 4     ; 2 uses
  %niter194.ncmp.3 = icmp eq i64 %niter194.next.3, %unroll_iter193
  br i1 %niter194.ncmp.3, label %.critedge.i.unr-lcssa, label %.lr.ph.i198.i, !llvm.loop !78

.critedge.i.unr-lcssa:                            ; preds = %.lr.ph.i198.i
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %.critedge.i, label %.lr.ph.i198.i.epil.preheader

.lr.ph.i198.i.epil.preheader:                     ; preds = %.critedge.i.unr-lcssa, %.lr.ph.preheader.i196.i
  %indvars.iv.i199.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i196.i ], [ %indvars.iv.next.i200.i.3, %.critedge.i.unr-lcssa ]
  %.08.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i196.i ], [ %i.uz, %.critedge.i.unr-lcssa ]
  %lcmp.mod192 = icmp ne i64 %xtraiter188, 0
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph.i198.i.epil

.lr.ph.i198.i.epil:                               ; preds = %.lr.ph.i198.i.epil, %.lr.ph.i198.i.epil.preheader
  %indvars.iv.i199.i.epil = phi i64 [ %indvars.iv.i199.i.epil.init, %.lr.ph.i198.i.epil.preheader ], [ %indvars.iv.next.i200.i.epil, %.lr.ph.i198.i.epil ] ; 2 uses
  %.08.i.i.epil = phi i32 [ %.08.i.i.epil.init, %.lr.ph.i198.i.epil.preheader ], [ %i.vd, %.lr.ph.i198.i.epil ]
  %epil.iter189 = phi i64 [ 0, %.lr.ph.i198.i.epil.preheader ], [ %epil.iter189.next, %.lr.ph.i198.i.epil ]
  %i.va = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i199.i.epil
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !11
  %i.vd = add i32 %i.vc, %.08.i.i.epil            ; 2 uses
  %indvars.iv.next.i200.i.epil = add nuw nsw i64 %indvars.iv.i199.i.epil, 1
  %epil.iter189.next = add i64 %epil.iter189, 1   ; 2 uses
  %epil.iter189.cmp.not = icmp eq i64 %epil.iter189.next, %xtraiter188
  br i1 %epil.iter189.cmp.not, label %.critedge.i, label %.lr.ph.i198.i.epil, !llvm.loop !79

.critedge.i:                                      ; preds = %.lr.ph.i198.i.epil, %.critedge.i.unr-lcssa
  %.lcssa150 = phi i32 [ %i.uz, %.critedge.i.unr-lcssa ], [ %i.vd, %.lr.ph.i198.i.epil ]
  %i.ve = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vf = add i32 %.pre.i, -1
  %i.vg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ve, ptr noundef nonnull @.str.18, i32 noundef %i.vf, i32 noundef %.lcssa150) #19 ; 0 uses
  %i.vh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vi = tail call i32 @fflush(ptr noundef %i.vh) ; 0 uses
  %i.vj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vk = add nsw i32 %spec.select.i, -1
  %i.vl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vj, ptr noundef nonnull @.str.19, i32 noundef %i.vk) #19 ; 0 uses
  %i.vm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vn = tail call i32 @fflush(ptr noundef %i.vm) ; 0 uses
  %wide.trip.count.i21 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.loopexit.i, %.critedge.i
  %indvars.iv.i23 = phi i64 [ 1, %.critedge.i ], [ %indvars.iv.next.i24, %.loopexit.i ] ; 3 uses
  %i.vo = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i23 ; 3 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !10 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 4
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !11 ; 4 uses
  %i.vs = zext i32 %i.vp to i64                   ; 2 uses
  %i.vt = icmp ult i64 %.lcssa126, %i.vs
  %i.vu = add i32 %i.vr, %i.vp
  %i.vv = zext i32 %i.vu to i64
  %i.vw = icmp ult i64 %.lcssa126, %i.vv
  %or.cond175.i = select i1 %i.vt, i1 true, i1 %i.vw
  br i1 %or.cond175.i, label %.thread235.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i22
  %i.vx = tail call i32 @llvm.umin.i32(i32 %i.vr, i32 40)
  %i.vy = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !12
  %i.wb = trunc nuw nsw i64 %indvars.iv.i23 to i32
  %i.wc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vy, ptr noundef nonnull @.str.20, i32 noundef %i.wb, i32 noundef %i.vr, i32 noundef %i.vp, i32 noundef %i.wa) #19 ; 0 uses
  %i.wd = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.we = tail call i32 @fflush(ptr noundef %i.wd) ; 0 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vs
  %i.wg = zext nneg i32 %i.vx to i64
  %.not.i202.i = icmp eq i32 %i.vr, 0
  br i1 %.not.i202.i, label %.loopexit.i, label %.lr.ph.i203.i

.lr.ph.i203.i:                                    ; preds = %bb.ay, %.lr.ph.i203.i
  %.010.i.i = phi i64 [ %i.wo, %.lr.ph.i203.i ], [ 0, %bb.ay ] ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.010.i.i
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !21  ; 2 uses
  %i.wj = add i8 %i.wi, -127
  %or.cond.i204.i = icmp ult i8 %i.wj, -95
  %spec.store.select.i205.i = select i1 %or.cond.i204.i, i8 46, i8 %i.wi
  %i.wk = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wl = zext i8 %spec.store.select.i205.i to i32
  %fputc.i.i = tail call i32 @fputc(i32 %i.wl, ptr %i.wk) ; 0 uses
  %i.wm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wn = tail call i32 @fflush(ptr noundef %i.wm) ; 0 uses
  %i.wo = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i206.i = icmp eq i64 %i.wo, %i.wg
  br i1 %exitcond.not.i206.i, label %.loopexit.i, label %.lr.ph.i203.i, !llvm.loop !80

.loopexit.i:                                      ; preds = %.lr.ph.i203.i, %bb.ay
  %i.wp = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %i.wp) #20 ; 0 uses
  %i.wq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wr = tail call i32 @fflush(ptr noundef %i.wq) ; 0 uses
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond290.not.i = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i21
  br i1 %exitcond290.not.i, label %.critedge181.i, label %.lr.ph.i22, !llvm.loop !81

.critedge181.i:                                   ; preds = %.loopexit.i, %ZDICT_trainBuffer_legacy.exit.i
  %i.ws = icmp ugt i32 %.pre.i, 1
  br i1 %i.ws, label %.lr.ph.preheader.i219.i, label %.thread235.sink.split.i

.lr.ph.preheader.i219.i:                          ; preds = %.critedge181.i
  %wide.trip.count.i220.i = zext i32 %.pre.i to i64 ; 2 uses
  %i.wt = add nsw i64 %wide.trip.count.i220.i, -1 ; 2 uses
  %xtraiter195 = and i64 %i.wt, 3                 ; 3 uses
  %i.wu = add i32 %.pre.i, -2
  %i.wv = icmp ult i32 %i.wu, 3
  br i1 %i.wv, label %.lr.ph.i221.i.epil.preheader, label %.lr.ph.preheader.i219.i.new

.lr.ph.preheader.i219.i.new:                      ; preds = %.lr.ph.preheader.i219.i
  %unroll_iter200 = and i64 %i.wt, -4
  br label %.lr.ph.i221.i

.lr.ph.i221.i:                                    ; preds = %.lr.ph.i221.i, %.lr.ph.preheader.i219.i.new
  %indvars.iv.i222.i = phi i64 [ 1, %.lr.ph.preheader.i219.i.new ], [ %indvars.iv.next.i224.i.3, %.lr.ph.i221.i ] ; 5 uses
  %.08.i223.i = phi i32 [ 0, %.lr.ph.preheader.i219.i.new ], [ %i.xl, %.lr.ph.i221.i ]
  %niter201 = phi i64 [ 0, %.lr.ph.preheader.i219.i.new ], [ %niter201.next.3, %.lr.ph.i221.i ]
  %i.ww = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !11
  %i.wz = add i32 %i.wy, %.08.i223.i
  %i.xa = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !11
  %i.xd = add i32 %i.xc, %i.wz
  %i.xe = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 28
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !11
  %i.xh = add i32 %i.xg, %i.xd
  %i.xi = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 40
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !11
  %i.xl = add i32 %i.xk, %i.xh                    ; 3 uses
  %indvars.iv.next.i224.i.3 = add nuw nsw i64 %indvars.iv.i222.i, 4 ; 2 uses
  %niter201.next.3 = add nuw i64 %niter201, 4     ; 2 uses
  %niter201.ncmp.3 = icmp eq i64 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3, label %ZDICT_dictSize.exit226.i.unr-lcssa, label %.lr.ph.i221.i, !llvm.loop !78

ZDICT_dictSize.exit226.i.unr-lcssa:               ; preds = %.lr.ph.i221.i
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %ZDICT_dictSize.exit226.i, label %.lr.ph.i221.i.epil.preheader

.lr.ph.i221.i.epil.preheader:                     ; preds = %ZDICT_dictSize.exit226.i.unr-lcssa, %.lr.ph.preheader.i219.i
  %indvars.iv.i222.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i219.i ], [ %indvars.iv.next.i224.i.3, %ZDICT_dictSize.exit226.i.unr-lcssa ]
  %.08.i223.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i219.i ], [ %i.xl, %ZDICT_dictSize.exit226.i.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter195, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i221.i.epil

.lr.ph.i221.i.epil:                               ; preds = %.lr.ph.i221.i.epil, %.lr.ph.i221.i.epil.preheader
  %indvars.iv.i222.i.epil = phi i64 [ %indvars.iv.i222.i.epil.init, %.lr.ph.i221.i.epil.preheader ], [ %indvars.iv.next.i224.i.epil, %.lr.ph.i221.i.epil ] ; 2 uses
  %.08.i223.i.epil = phi i32 [ %.08.i223.i.epil.init, %.lr.ph.i221.i.epil.preheader ], [ %i.xp, %.lr.ph.i221.i.epil ]
  %epil.iter196 = phi i64 [ 0, %.lr.ph.i221.i.epil.preheader ], [ %epil.iter196.next, %.lr.ph.i221.i.epil ]
  %i.xm = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i222.i.epil
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 4
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !11
  %i.xp = add i32 %i.xo, %.08.i223.i.epil         ; 2 uses
  %indvars.iv.next.i224.i.epil = add nuw nsw i64 %indvars.iv.i222.i.epil, 1
  %epil.iter196.next = add i64 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i64 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %ZDICT_dictSize.exit226.i, label %.lr.ph.i221.i.epil, !llvm.loop !82

ZDICT_dictSize.exit226.i:                         ; preds = %.lr.ph.i221.i.epil, %ZDICT_dictSize.exit226.i.unr-lcssa
  %.lcssa = phi i32 [ %i.xl, %ZDICT_dictSize.exit226.i.unr-lcssa ], [ %i.xp, %.lr.ph.i221.i.epil ] ; 4 uses
  %i.xq = icmp ult i32 %.lcssa, 128
  br i1 %i.xq, label %.thread235.sink.split.i, label %bb.az

ZDICT_dictSize.exit226.thread.critedge.i:         ; preds = %bb.ax
  %i.xr = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xs = add nsw i32 %.pre.i, -1
  %i.xt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xr, ptr noundef nonnull @.str.18, i32 noundef %i.xs, i32 noundef 0) #19 ; 0 uses
  %i.xu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xv = tail call i32 @fflush(ptr noundef %i.xu) ; 0 uses
  %i.xw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.xx = add nsw i32 %spec.select.i, -1
  %i.xy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xw, ptr noundef nonnull @.str.19, i32 noundef %i.xx) #19 ; 0 uses
  %i.xz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ya = tail call i32 @fflush(ptr noundef %i.xz) ; 0 uses
  br label %.thread235.sink.split.i

bb.az:                                            ; preds = %ZDICT_dictSize.exit226.i
  %i.yb = zext i32 %.lcssa to i64                 ; 2 uses
  %i.yc = lshr i64 %1, 2
  %i.yd = icmp samesign ugt i64 %i.yc, %i.yb
  %brmerge241.not.i = and i1 %i.ax, %i.yd
  br i1 %brmerge241.not.i, label %bb.ba, label %.critedge183.i

bb.ba:                                            ; preds = %bb.az
  %i.ye = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yf = trunc i64 %1 to i32
  %i.yg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ye, ptr noundef nonnull @.str.22, i32 noundef %.lcssa, i32 noundef %i.yf) #19 ; 0 uses
  %i.yh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yi = tail call i32 @fflush(ptr noundef %i.yh) ; 0 uses
  %i.yj = mul i64 %1, 10
  %i.yk = icmp ult i64 %.lcssa126, %i.yj
  br i1 %i.yk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.yl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ym = lshr i64 %.lcssa126, 20
  %i.yn = trunc i64 %i.ym to i32
  %i.yo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yl, ptr noundef nonnull @.str.23, i32 noundef %i.yn) #19 ; 0 uses
  %i.yp = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yq = tail call i32 @fflush(ptr noundef %i.yp) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.yr = icmp ugt i32 %i.al, 4
  br i1 %i.yr, label %bb.bd, label %.critedge183.i

bb.bd:                                            ; preds = %bb.bc
  %i.ys = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yt = add i32 %i.ai, 1
  %i.yu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ys, ptr noundef nonnull @.str.24, i32 noundef %i.yt) #19 ; 0 uses
  %i.yv = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yw = tail call i32 @fflush(ptr noundef %i.yv) ; 0 uses
  %i.yx = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite169.i = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %i.yx) #20 ; 0 uses
  %i.yy = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.yz = tail call i32 @fflush(ptr noundef %i.yy) ; 0 uses
  br label %.critedge183.i

.critedge183.i:                                   ; preds = %bb.bd, %bb.bc, %bb.az
  %i.za = mul i64 %1, 3
  %i.zb = icmp ult i64 %i.za, %i.yb
  %i.zc = icmp ugt i32 %4, 8
  %or.cond.i = and i1 %i.zc, %i.zb
  %i.zd = icmp ugt i32 %i.ai, 1
  %or.cond7.i = select i1 %or.cond.i, i1 %i.zd, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %.lr.ph263.i.preheader

.preheader.i:                                     ; preds = %.critedge183.i, %.preheader.i
  %.0147.in.i = phi i32 [ %.0147.i, %.preheader.i ], [ %i.ai, %.critedge183.i ]
  %.0147.i = add i32 %.0147.in.i, -1              ; 3 uses
  %i.ze = lshr i32 %4, %.0147.i
  %i.zf = icmp ult i32 %i.ze, 5
  br i1 %i.zf, label %.preheader.i, label %bb.be, !llvm.loop !83

bb.be:                                            ; preds = %.preheader.i
  br i1 %i.ax, label %.critedge185.i, label %.lr.ph263.i.preheader

.critedge185.i:                                   ; preds = %bb.be
  %i.zg = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zh = trunc i64 %1 to i32
  %i.zi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zg, ptr noundef nonnull @.str.26, i32 noundef %.lcssa, i32 noundef %i.zh) #19 ; 0 uses
  %i.zj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zk = tail call i32 @fflush(ptr noundef %i.zj) ; 0 uses
  %i.zl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.27, i32 noundef %.0147.i) #19 ; 0 uses
  %i.zn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zo = tail call i32 @fflush(ptr noundef %i.zn) ; 0 uses
  %i.zp = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite170.i = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %i.zp) #20 ; 0 uses
  %i.zq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.zr = tail call i32 @fflush(ptr noundef %i.zq) ; 0 uses
  br label %.lr.ph263.i.preheader

.lr.ph263.i.preheader:                            ; preds = %.critedge185.i, %bb.be, %.critedge183.i
  br label %.lr.ph263.i

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader, %bb.bf
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %bb.bf ], [ 1, %.lr.ph263.i.preheader ] ; 3 uses
  %.0146261.i = phi i32 [ %i.zv, %bb.bf ], [ 0, %.lr.ph263.i.preheader ] ; 2 uses
  %i.zs = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv291.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !11
  %i.zv = add i32 %i.zu, %.0146261.i              ; 3 uses
  %i.zw = zext i32 %i.zv to i64
  %i.zx = icmp ult i64 %1, %i.zw
  br i1 %i.zx, label %._crit_edge.split.loop.exit337.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph263.i
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1 ; 2 uses
  %exitcond295.not.i = icmp eq i64 %indvars.iv.next292.i, %wide.trip.count.i220.i
  br i1 %exitcond295.not.i, label %._crit_edge.i, label %.lr.ph263.i, !llvm.loop !84

._crit_edge.split.loop.exit337.i:                 ; preds = %.lr.ph263.i
  %7 = trunc nuw i64 %indvars.iv291.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bf, %._crit_edge.split.loop.exit337.i
  %.0146.lcssa.ph.i = phi i32 [ %.0146261.i, %._crit_edge.split.loop.exit337.i ], [ %i.zv, %bb.bf ]
  %.0145.lcssa.ph.i = phi i32 [ %7, %._crit_edge.split.loop.exit337.i ], [ %.pre.i, %bb.bf ] ; 2 uses
  %.not172268.i = icmp ugt i32 %.0145.lcssa.ph.i, 1
  br i1 %.not172268.i, label %.lr.ph272.preheader.i, label %._crit_edge273.i

.lr.ph272.preheader.i:                            ; preds = %._crit_edge.i
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %wide.trip.count299.i = zext i32 %.0145.lcssa.ph.i to i64
  br label %.lr.ph272.i

.lr.ph272.i:                                      ; preds = %bb.bg, %.lr.ph272.preheader.i
  %indvars.iv296.i = phi i64 [ 1, %.lr.ph272.preheader.i ], [ %indvars.iv.next297.i, %bb.bg ] ; 2 uses
  %.0270.i = phi ptr [ %8, %.lr.ph272.preheader.i ], [ %i.aad, %bb.bg ]
  %i.zy = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv296.i ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 4
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !11
  %i.aab = zext i32 %i.aaa to i64                 ; 2 uses
  %i.aac = sub nsw i64 0, %i.aab
  %i.aad = getelementptr inbounds i8, ptr %.0270.i, i64 %i.aac ; 3 uses
  %.not171.i = icmp ult ptr %i.aad, %0
  br i1 %.not171.i, label %.thread235.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph272.i
  %i.aae = load i32, ptr %i.zy, align 4, !tbaa !10
  %i.aaf = zext i32 %i.aae to i64
  %i.aag = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aaf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aad, ptr nonnull align 1 %i.aag, i64 %i.aab, i1 false)
  %indvars.iv.next297.i = add nuw nsw i64 %indvars.iv296.i, 1 ; 2 uses
  %exitcond300.not.i = icmp eq i64 %indvars.iv.next297.i, %wide.trip.count299.i
  br i1 %exitcond300.not.i, label %._crit_edge273.i, label %.lr.ph272.i, !llvm.loop !85

._crit_edge273.i:                                 ; preds = %bb.bg, %._crit_edge.i
  %i.aah = zext i32 %.0146.lcssa.ph.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store <2 x i32> %i.r, ptr %6, align 8, !tbaa !8
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.4..sroa_idx, align 8, !tbaa !8
  %i.aai = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %i.aah, i64 noundef %1, ptr noundef nonnull %i.o, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.thread235.sink.split.i

.thread235.sink.split.i:                          ; preds = %.lr.ph.i22, %.lr.ph272.i, %._crit_edge273.i, %ZDICT_dictSize.exit226.thread.critedge.i, %ZDICT_dictSize.exit226.i, %.critedge181.i, %bb.d, %bb.c
  %.8.ph.i = phi i64 [ -1, %.lr.ph272.i ], [ -34, %ZDICT_dictSize.exit226.i ], [ -34, %bb.d ], [ %i.aai, %._crit_edge273.i ], [ -70, %bb.c ], [ -34, %ZDICT_dictSize.exit226.thread.critedge.i ], [ -34, %.critedge181.i ], [ -1, %.lr.ph.i22 ]
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
  store i32 8, ptr %i.a, align 4, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %i.c, align 4, !tbaa !91
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
  %i.a = load i32, ptr %6, align 8, !tbaa !10     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #20 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !15
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
  store i32 -332356553, ptr %0, align 1, !tbaa !8
  %i.v = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.r, i64 noundef %1, i64 noundef 0) #18
  %i.w = urem i64 %i.v, 2147450880
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 32768
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %.not46 = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not46, i32 %i.y, i32 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.ac, align 1, !tbaa !8
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
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
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
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10   ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !11
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !10
  %i.q = mul i32 %i.m, %2
end_hunk_0
