Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastRegion?download=true
inline.NumInlined: 580
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Z14rcBuildRegionsP9rcContextR20rcCompactHeightfieldiii:bb.a
  %i.ql = phi ptr [ %i.bp, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit215 ], [ %i.ajm, %_ZN13rcScopedTimerD2Ev.exit248 ] ; 2 uses
  %i.qm = phi i64 [ %i.w, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit215 ], [ %i.ajn, %_ZN13rcScopedTimerD2Ev.exit248 ] ; 2 uses
  %.1121 = phi i16 [ %.0120, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit215 ], [ %.5125, %_ZN13rcScopedTimerD2Ev.exit248 ] ; 3 uses
  %.0119 = phi i16 [ %i.ah, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit215 ], [ %i.qo, %_ZN13rcScopedTimerD2Ev.exit248 ] ; 3 uses
  %.0117 = phi i32 [ -1, %_ZL15paintRectRegioniiiitR20rcCompactHeightfieldPt.exit215 ], [ %i.qq, %_ZN13rcScopedTimerD2Ev.exit248 ]
  %.not136 = icmp eq i16 %.0119, 0
  br i1 %.not136, label %bb.cw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not137 = icmp eq i16 %.0119, 1
  %i.qn = add i16 %.0119, -2
  %i.qo = select i1 %.not137, i16 0, i16 %i.qn    ; 4 uses
  %i.qp = add nsw i32 %.0117, 1
  %i.qq = and i32 %i.qp, 7                        ; 4 uses
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.qs = load i32, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.qt = load i32, ptr %i.h, align 4, !tbaa !70  ; 2 uses
  store i64 0, ptr %5, align 16, !tbaa !116
  store i64 0, ptr %i.am, align 8, !tbaa !116
  store i64 0, ptr %i.aq, align 16, !tbaa !116
  store i64 0, ptr %i.au, align 8, !tbaa !116
  store i64 0, ptr %i.ay, align 16, !tbaa !116
  store i64 0, ptr %i.bc, align 8, !tbaa !116
  store i64 0, ptr %i.bg, align 16, !tbaa !116
  store i64 0, ptr %i.bk, align 8, !tbaa !116
  %i.qu = icmp sgt i32 %i.qt, 0
  br i1 %i.qu, label %.preheader.lr.ph.i216, label %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit

.preheader.lr.ph.i216:                            ; preds = %bb.ac
  %i.qv = lshr i16 %i.qo, 1
  %i.qw = icmp sgt i32 %i.qs, 0
  %i.qx = zext nneg i16 %i.qv to i32
  br i1 %i.qw, label %.preheader.preheader.i217, label %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit

.preheader.preheader.i217:                        ; preds = %.preheader.lr.ph.i216
  %i.qy = zext nneg i32 %i.qs to i64              ; 2 uses
  %wide.trip.count69.i = zext nneg i32 %i.qt to i64
  br label %.preheader.i218

.preheader.i218:                                  ; preds = %._crit_edge57.i, %.preheader.preheader.i217
  %indvars.iv66.i = phi i64 [ 0, %.preheader.preheader.i217 ], [ %indvars.iv.next67.i, %._crit_edge57.i ] ; 3 uses
  %i.qz = mul nuw nsw i64 %indvars.iv66.i, %i.qy
  %i.ra = trunc nuw nsw i64 %indvars.iv66.i to i32 ; 2 uses
  br label %bb.ad

._crit_edge57.i:                                  ; preds = %._crit_edge.i223
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit, label %.preheader.i218

bb.ad:                                            ; preds = %._crit_edge.i223, %.preheader.i218
  %indvars.iv63.i = phi i64 [ 0, %.preheader.i218 ], [ %indvars.iv.next64.i, %._crit_edge.i223 ] ; 3 uses
  %i.rb = load ptr, ptr %i.qb, align 8, !tbaa !72
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv63.i
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.qz
  %i.re = load i32, ptr %i.rd, align 4            ; 2 uses
  %i.rf = lshr i32 %i.re, 24                      ; 2 uses
  %.not60.i = icmp eq i32 %i.rf, 0
  br i1 %.not60.i, label %._crit_edge.i223, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ad
  %i.rg = and i32 %i.re, 16777215                 ; 2 uses
  %i.rh = add nuw nsw i32 %i.rg, %i.rf
  %i.ri = zext nneg i32 %i.rg to i64
  %i.rj = zext nneg i32 %i.rh to i64
  %i.rk = trunc nuw nsw i64 %indvars.iv63.i to i32 ; 2 uses
  br label %.lr.ph.i219

._crit_edge.i223:                                 ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i, %bb.ad
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond.not.i224 = icmp eq i64 %indvars.iv.next64.i, %i.qy
  br i1 %exitcond.not.i224, label %._crit_edge57.i, label %bb.ad

.lr.ph.i219:                                      ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i220 = phi i64 [ %i.ri, %.lr.ph.preheader.i ], [ %indvars.iv.next.i222, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i ] ; 6 uses
  %i.rl = load ptr, ptr %i.qc, align 8, !tbaa !74
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %indvars.iv.i220
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !75
  %i.ro = icmp eq i8 %i.rn, 0
  br i1 %i.ro, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i219
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.i220
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !71
  %.not.i221 = icmp eq i16 %i.rq, 0
  br i1 %.not.i221, label %bb.af, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.rr = load ptr, ptr %i.qd, align 8, !tbaa !67
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %indvars.iv.i220
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !71
  %i.ru = lshr i16 %i.rt, 1
  %i.rv = zext nneg i16 %i.ru to i32
  %i.rw = sub nsw i32 %i.qx, %i.rv                ; 2 uses
  %i.rx = icmp sgt i32 %i.rw, 7
  br i1 %i.rx, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.rw, i32 0)
  %i.ry = zext nneg i32 %spec.store.select.i to i64
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.ry ; 7 uses
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !116 ; 10 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 8 ; 2 uses
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !115 ; 4 uses
  %i.sd = icmp slt i64 %i.sa, %i.sc
  br i1 %i.sd, label %bb.ah, label %bb.ai, !prof !107

bb.ah:                                            ; preds = %bb.ag
  %i.se = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !114
  %i.sg = add nsw i64 %i.sa, 1
  store i64 %i.sg, ptr %i.rz, align 8, !tbaa !116
  %i.sh = getelementptr inbounds [12 x i8], ptr %i.sf, i64 %i.sa ; 3 uses
  store i32 %i.rk, ptr %i.sh, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  store i32 %i.ra, ptr %.sroa.5.0..sroa_idx48.i, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.si = trunc nuw nsw i64 %indvars.iv.i220 to i32
  store i32 %i.si, ptr %.sroa.6.0..sroa_idx50.i, align 4, !tbaa !87
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.sj = add nsw i64 %i.sc, 1
  %i.sk = icmp sgt i64 %i.sc, 4611686018427387902
  %i.sl = shl nsw i64 %i.sc, 1
  %..i.i.i = tail call i64 @llvm.smax.i64(i64 %i.sl, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.sj)
  %.0.i.i.i = select i1 %i.sk, i64 9223372036854775807, i64 %..i.i.i, !prof !109 ; 2 uses
  %i.sm = mul i64 %.0.i.i.i, 12
  %i.sn = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.sm, i32 noundef 1) #8 ; 6 uses
  %.not.i.i225 = icmp ne ptr %i.sn, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %.pre295 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !114 ; 4 uses
  %i.so = icmp sgt i64 %i.sa, 0
  %or.cond = and i1 %.not.i.i225, %i.so
  br i1 %or.cond, label %.lr.ph.i.i.i226.preheader, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i

.lr.ph.i.i.i226.preheader:                        ; preds = %bb.ai
  %xtraiter = and i64 %i.sa, 1
  %i.sp = icmp eq i64 %i.sa, 1
  br i1 %i.sp, label %.lr.ph.i.i.i226.epil.preheader, label %.lr.ph.i.i.i226.preheader.new

.lr.ph.i.i.i226.preheader.new:                    ; preds = %.lr.ph.i.i.i226.preheader
  %unroll_iter = and i64 %i.sa, 9223372036854775806
  br label %.lr.ph.i.i.i226

.lr.ph.i.i.i226:                                  ; preds = %.lr.ph.i.i.i226, %.lr.ph.i.i.i226.preheader.new
  %.07.i.i.i227 = phi i64 [ 0, %.lr.ph.i.i.i226.preheader.new ], [ %i.sv, %.lr.ph.i.i.i226 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i226.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i226 ]
  %i.sq = getelementptr inbounds nuw [12 x i8], ptr %i.sn, i64 %.07.i.i.i227
  %i.sr = getelementptr inbounds nuw [12 x i8], ptr %.pre295, i64 %.07.i.i.i227
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sq, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.sr, i64 12, i1 false), !tbaa.struct !117
  %i.ss = or disjoint i64 %.07.i.i.i227, 1        ; 2 uses
  %i.st = getelementptr inbounds nuw [12 x i8], ptr %i.sn, i64 %i.ss
  %i.su = getelementptr inbounds nuw [12 x i8], ptr %.pre295, i64 %i.ss
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.st, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.su, i64 12, i1 false), !tbaa.struct !117
  %i.sv = add nuw nsw i64 %.07.i.i.i227, 2        ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i226

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i226
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i, label %.lr.ph.i.i.i226.epil.preheader

.lr.ph.i.i.i226.epil.preheader:                   ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i226.preheader
  %.07.i.i.i227.epil.init = phi i64 [ 0, %.lr.ph.i.i.i226.preheader ], [ %i.sv, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod695 = trunc i64 %i.sa to i1
  tail call void @llvm.assume(i1 %lcmp.mod695)
  %i.sw = getelementptr inbounds nuw [12 x i8], ptr %i.sn, i64 %.07.i.i.i227.epil.init
  %i.sx = getelementptr inbounds nuw [12 x i8], ptr %.pre295, i64 %.07.i.i.i227.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sw, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.sx, i64 12, i1 false), !tbaa.struct !117
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i: ; preds = %.lr.ph.i.i.i226.epil.preheader, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i.loopexit.unr-lcssa, %bb.ai
  %i.sy = getelementptr inbounds [12 x i8], ptr %i.sn, i64 %i.sa ; 3 uses
  store i32 %i.rk, ptr %i.sy, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 4
  store i32 %i.ra, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.sz = trunc nuw nsw i64 %indvars.iv.i220 to i32
  store i32 %i.sz, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !87
  %i.ta = add nsw i64 %i.sa, 1
  store i64 %i.ta, ptr %i.rz, align 8, !tbaa !116
  store i64 %.0.i.i.i, ptr %i.sb, align 8, !tbaa !115
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  tail call void @_Z6rcFreePv(ptr noundef %.pre295) #8
  store ptr %i.sn, ptr %i.tb, align 8, !tbaa !114
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i: ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl.exit.i, %bb.ah, %bb.af, %bb.ae, %.lr.ph.i219
  %indvars.iv.next.i222 = add nuw nsw i64 %indvars.iv.i220, 1 ; 2 uses
  %i.tc = icmp samesign ult i64 %indvars.iv.next.i222, %i.rj
  br i1 %i.tc, label %.lr.ph.i219, label %._crit_edge.i223

bb.aj:                                            ; preds = %bb.ab
  %i.td = zext nneg i32 %i.qq to i64
  %i.te = getelementptr [24 x i8], ptr %5, i64 %i.td ; 8 uses
  %i.tf = getelementptr i8, ptr %i.te, i64 -24    ; 2 uses
  %.val14.i = load i64, ptr %i.tf, align 8, !tbaa !116 ; 2 uses
  %i.tg = icmp sgt i64 %.val14.i, 0
  br i1 %i.tg, label %.lr.ph.i231, label %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit

.lr.ph.i231:                                      ; preds = %bb.aj
  %i.th = getelementptr i8, ptr %i.te, i64 -8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234, %.lr.ph.i231
  %.val.i293 = phi i64 [ %.val14.i, %.lr.ph.i231 ], [ %.val.i, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234 ] ; 3 uses
  %indvars.iv.i232 = phi i64 [ 0, %.lr.ph.i231 ], [ %indvars.iv.next.i235, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234 ] ; 2 uses
  %.val13.i = load ptr, ptr %i.th, align 8, !tbaa !114
  %i.tk = getelementptr inbounds nuw [12 x i8], ptr %.val13.i, i64 %indvars.iv.i232 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !119 ; 2 uses
  %i.tn = icmp slt i32 %i.tm, 0
  br i1 %i.tn, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.to = zext nneg i32 %i.tm to i64
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.to
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !71
  %.not.i233 = icmp eq i16 %i.tq, 0
  br i1 %.not.i233, label %bb.am, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234

bb.am:                                            ; preds = %bb.al
  %i.tr = load i64, ptr %i.te, align 8, !tbaa !116 ; 5 uses
  %i.ts = load i64, ptr %i.ti, align 8, !tbaa !115 ; 4 uses
  %i.tt = icmp slt i64 %i.tr, %i.ts
  br i1 %i.tt, label %bb.an, label %bb.ao, !prof !107

bb.an:                                            ; preds = %bb.am
  %i.tu = load ptr, ptr %i.tj, align 8, !tbaa !114
  %i.tv = add nsw i64 %i.tr, 1
  store i64 %i.tv, ptr %i.te, align 8, !tbaa !116
  %i.tw = getelementptr inbounds [12 x i8], ptr %i.tu, i64 %i.tr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tw, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.tk, i64 12, i1 false), !tbaa.struct !117
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234

bb.ao:                                            ; preds = %bb.am
  %i.tx = add nsw i64 %i.ts, 1
  %i.ty = icmp sgt i64 %i.ts, 4611686018427387902
  %i.tz = shl nsw i64 %i.ts, 1
  %..i.i.i236 = tail call i64 @llvm.smax.i64(i64 %i.tz, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.tx)
  %.0.i.i.i237 = select i1 %i.ty, i64 9223372036854775807, i64 %..i.i.i236, !prof !109 ; 2 uses
  %i.ua = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %i.te, i64 noundef %.0.i.i.i237) ; 2 uses
  %i.ub = getelementptr inbounds [12 x i8], ptr %i.ua, i64 %i.tr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ub, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.tk, i64 12, i1 false), !tbaa.struct !117
  %i.uc = add nsw i64 %i.tr, 1
  store i64 %i.uc, ptr %i.te, align 8, !tbaa !116
  store i64 %.0.i.i.i237, ptr %i.ti, align 8, !tbaa !115
  %i.ud = load ptr, ptr %i.tj, align 8, !tbaa !114
  tail call void @_Z6rcFreePv(ptr noundef %i.ud) #8
  store ptr %i.ua, ptr %i.tj, align 8, !tbaa !114
  %.val.i.pre = load i64, ptr %i.tf, align 8, !tbaa !116
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234: ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  %.val.i = phi i64 [ %.val.i.pre, %bb.ao ], [ %.val.i293, %bb.an ], [ %.val.i293, %bb.al ], [ %.val.i293, %bb.ak ] ; 2 uses
  %indvars.iv.next.i235 = add nuw nsw i64 %indvars.iv.i232, 1 ; 2 uses
  %i.ue = icmp sgt i64 %.val.i, %indvars.iv.next.i235
  br i1 %i.ue, label %bb.ak, label %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit

_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit: ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i234, %._crit_edge57.i, %bb.aj, %.preheader.lr.ph.i216, %bb.ac
  %i.uf = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %bb.ap, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238

bb.ap:                                            ; preds = %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit
  %i.uh = load ptr, ptr %0, align 8, !tbaa !21
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 40
  %i.uj = load ptr, ptr %i.ui, align 8
  tail call void %i.uj(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 22) #8, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238: ; preds = %_ZL16sortCellsByLeveltR20rcCompactHeightfieldPKtjP12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEt.exit, %bb.ap
  %i.uk = zext nneg i32 %i.qq to i64
  %i.ul = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.uk ; 3 uses
  call fastcc void @_ZL13expandRegionsitR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEb(i32 noundef 8, i16 noundef zeroext %i.qo, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %i.n, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ul, i1 noundef zeroext false)
  %i.um = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.un = trunc nuw i8 %i.um to i1
  br i1 %i.un, label %_ZN13rcScopedTimerD2Ev.exit, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238
  %i.uo = load ptr, ptr %0, align 8, !tbaa !21
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 48
  %i.uq = load ptr, ptr %i.up, align 8
  tail call void %i.uq(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 22) #8, !call_target !80, !inline_history !3
  %.pre296.a = load i8, ptr %i.a, align 1, !tbaa !17, !range !18
  %i.ur = trunc nuw i8 %.pre296.a to i1
  br i1 %i.ur, label %bb.aq, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239

bb.aq:                                            ; preds = %_ZN13rcScopedTimerD2Ev.exit
  %i.us = load ptr, ptr %0, align 8, !tbaa !21
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 40
  %i.uu = load ptr, ptr %i.ut, align 8
  tail call void %i.uu(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 23) #8, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239: ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit238, %_ZN13rcScopedTimerD2Ev.exit, %bb.aq
  %.val = load i64, ptr %i.ul, align 8, !tbaa !116 ; 2 uses
  %.not138278 = icmp sgt i64 %.val, 0
  br i1 %.not138278, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239
  %i.uv = getelementptr i8, ptr %i.ul, i64 16
  %.val139 = load ptr, ptr %i.uv, align 8, !tbaa !114
  %i.uw = tail call i16 @llvm.usub.sat.i16(i16 range(i16 -1, -2) %i.qo, i16 2) ; 4 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %bb.cu
  %i.ux = phi i64 [ %i.qg, %.lr.ph ], [ %i.aja, %bb.cu ] ; 3 uses
  %i.uy = phi i64 [ %i.qh, %.lr.ph ], [ %i.ajb, %bb.cu ] ; 3 uses
  %i.uz = phi i64 [ %i.qi, %.lr.ph ], [ %i.ajc, %bb.cu ] ; 3 uses
  %i.va = phi i64 [ %i.qj, %.lr.ph ], [ %i.ajd, %bb.cu ] ; 3 uses
  %i.vb = phi ptr [ %i.qk, %.lr.ph ], [ %i.aje, %bb.cu ] ; 6 uses
  %i.vc = phi ptr [ %i.ql, %.lr.ph ], [ %i.ajf, %bb.cu ] ; 3 uses
  %i.vd = phi i64 [ %i.qm, %.lr.ph ], [ %i.ajg, %bb.cu ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cu ] ; 2 uses
  %.2122279 = phi i16 [ %.1121, %.lr.ph ], [ %.4124.ph, %bb.cu ] ; 18 uses
  %i.ve = getelementptr inbounds nuw [12 x i8], ptr %.val139, i64 %indvars.iv ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.ve, align 4, !tbaa !87 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !87 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !87 ; 4 uses
  %i.vf = icmp sgt i32 %.sroa.5.0.copyload, -1
  br i1 %i.vf, label %bb.as, label %bb.cu

bb.as:                                            ; preds = %bb.ar
  %i.vg = zext nneg i32 %.sroa.5.0.copyload to i64 ; 3 uses
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.vg ; 2 uses
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !71
  %i.vj = icmp eq i16 %i.vi, 0
  br i1 %i.vj, label %bb.at, label %bb.cu

bb.at:                                            ; preds = %bb.as
  %i.vk = load i32, ptr %1, align 8, !tbaa !69    ; 10 uses
  %i.vl = load ptr, ptr %i.qc, align 8, !tbaa !74
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vg
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !75  ; 12 uses
  store i64 0, ptr %6, align 8, !tbaa !116
  %i.vo = icmp sgt i64 %i.vd, 0
  br i1 %i.vo, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240, !prof !107

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i: ; preds = %bb.at
  store i32 %.sroa.0.0.copyload, ptr %i.vb, align 4, !tbaa !87
  %.sroa.5145.0..sroa_idx146.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.5145.0..sroa_idx146.i, align 4, !tbaa !87
  %.sroa.6148.0..sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.6148.0..sroa_idx149.i, align 4, !tbaa !87
  br label %.lr.ph.i242

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240: ; preds = %bb.at
  %i.vp = add nsw i64 %i.vd, 1                    ; 7 uses
  %i.vq = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.vp) ; 5 uses
  store i32 %.sroa.0.0.copyload, ptr %i.vq, align 4, !tbaa !87
  %.sroa.5145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.5145.0..sroa_idx.i, align 4, !tbaa !87
  %.sroa.6148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.6148.0..sroa_idx.i, align 4, !tbaa !87
  store i64 %i.vp, ptr %i.bo, align 8, !tbaa !115
  tail call void @_Z6rcFreePv(ptr noundef %i.vc) #8
  store ptr %i.vq, ptr %i.qe, align 8, !tbaa !114
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i
  %i.vr = phi i64 [ %i.ux, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  %i.vs = phi i64 [ %i.uy, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  %i.vt = phi i64 [ %i.uz, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  %i.vu = phi i64 [ %i.va, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  %i.vv = phi ptr [ %i.vb, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vq, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ] ; 6 uses
  %i.vw = phi i64 [ %i.vd, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.thread.i ], [ %i.vp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit.i240 ]
  store i16 %.2122279, ptr %i.vh, align 2, !tbaa !71
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.vg
  store i16 0, ptr %i.vx, align 2, !tbaa !71
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.i244, %.lr.ph.i242
  %i.vy = phi i64 [ %i.vr, %.lr.ph.i242 ], [ %i.aim, %.loopexit.i244 ] ; 6 uses
  %i.vz = phi i64 [ %i.vs, %.lr.ph.i242 ], [ %i.ain, %.loopexit.i244 ] ; 6 uses
  %i.wa = phi i64 [ %i.vt, %.lr.ph.i242 ], [ %i.aio, %.loopexit.i244 ] ; 6 uses
  %i.wb = phi i64 [ %i.vu, %.lr.ph.i242 ], [ %i.aip, %.loopexit.i244 ] ; 11 uses
  %i.wc = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.aiq, %.loopexit.i244 ] ; 7 uses
  %i.wd = phi i64 [ %i.vw, %.lr.ph.i242 ], [ %i.air, %.loopexit.i244 ] ; 5 uses
  %i.we = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.ais, %.loopexit.i244 ] ; 6 uses
  %i.wf = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.ait, %.loopexit.i244 ] ; 6 uses
  %i.wg = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.aiu, %.loopexit.i244 ] ; 6 uses
  %i.wh = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %i.aiv, %.loopexit.i244 ] ; 8 uses
  %.val134.i = phi ptr [ %i.vv, %.lr.ph.i242 ], [ %.val134176.i, %.loopexit.i244 ] ; 6 uses
  %.val168.i = phi i64 [ 1, %.lr.ph.i242 ], [ %.val.i245, %.loopexit.i244 ] ; 7 uses
  %.0115167.i = phi i32 [ 0, %.lr.ph.i242 ], [ %.1116.i, %.loopexit.i244 ] ; 2 uses
  %i.wi = getelementptr [12 x i8], ptr %.val134.i, i64 %.val168.i ; 3 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 -12
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !120 ; 14 uses
  %i.wl = getelementptr i8, ptr %i.wi, i64 -8
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !121 ; 14 uses
  %i.wn = getelementptr i8, ptr %i.wi, i64 -4
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !119
  %i.wp = add nsw i64 %.val168.i, -1              ; 8 uses
  store i64 %i.wp, ptr %6, align 8, !tbaa !116
  %i.wq = load ptr, ptr %i.qf, align 8, !tbaa !73 ; 5 uses
  %i.wr = sext i32 %i.wo to i64                   ; 2 uses
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.wr
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 4 ; 4 uses
  %i.wu = load i32, ptr %i.wt, align 4            ; 4 uses
  %i.wv = and i32 %i.wu, 63                       ; 3 uses
  %.not.i243 = icmp eq i32 %i.wv, 63              ; 2 uses
  br i1 %.not.i243, label %.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ww = add nsw i32 %i.wk, -1                   ; 2 uses
  %i.wx = load ptr, ptr %i.qb, align 8, !tbaa !72 ; 2 uses
  %i.wy = mul nsw i32 %i.wm, %i.vk
  %i.wz = add nsw i32 %i.wy, %i.ww
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wx, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4
  %i.xd = and i32 %i.xc, 16777215
  %i.xe = add nuw nsw i32 %i.xd, %i.wv
  %i.xf = load ptr, ptr %i.qc, align 8, !tbaa !74 ; 2 uses
  %i.xg = zext nneg i32 %i.xe to i64              ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !75
  %.not120.i = icmp eq i8 %i.xi, %i.vn
  br i1 %.not120.i, label %bb.aw, label %.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.xg
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !71 ; 3 uses
  %.not121.i = icmp sgt i16 %i.xk, -1
  br i1 %.not121.i, label %bb.ax, label %.thread.i

bb.ax:                                            ; preds = %bb.aw
  %.not122.i = icmp eq i16 %i.xk, 0
  %.not123.i = icmp eq i16 %i.xk, %.2122279
  %or.cond.i = or i1 %.not122.i, %.not123.i
  br i1 %or.cond.i, label %bb.ay, label %.thread161.i

bb.ay:                                            ; preds = %bb.ax
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.xg
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xn = load i32, ptr %i.xm, align 4
  %i.xo = lshr i32 %i.xn, 6
  %i.xp = and i32 %i.xo, 63                       ; 2 uses
  %.not124.i = icmp eq i32 %i.xp, 63
  br i1 %.not124.i, label %.thread.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.xq = add nsw i32 %i.wm, 1
  %i.xr = mul nsw i32 %i.xq, %i.vk
  %i.xs = add nsw i32 %i.xr, %i.ww
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.wx, i64 %i.xt
  %i.xv = load i32, ptr %i.xu, align 4
  %i.xw = and i32 %i.xv, 16777215
  %i.xx = add nuw nsw i32 %i.xw, %i.xp
  %i.xy = zext nneg i32 %i.xx to i64              ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !75
  %.not125.i = icmp eq i8 %i.ya, %i.vn
end_hunk_0
