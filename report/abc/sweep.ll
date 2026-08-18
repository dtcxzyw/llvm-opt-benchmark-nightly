inline.NumInlined: 129
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@kissat_sweep:bb.a
add_core.exit.i.i:                                ; preds = %._crit_edge88.thread.sink.split.i.i.i, %._crit_edge88.i.i.i, %bb.gj, %bb.gi
  call void @kissat_new_binary_clause(ptr noundef %.val153.i, i32 noundef %i.ajy, i32 noundef %i.akb) #6
  %i.anb = load ptr, ptr %2, align 8, !tbaa !68   ; 4 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 1 ; 2 uses
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !8, !range !59, !noundef !60
  %i.ane = trunc nuw i8 %i.and to i1
  br i1 %i.ane, label %add_core.exit163.i.i, label %bb.gr

bb.gr:                                            ; preds = %add_core.exit.i.i
  %i.anf = load ptr, ptr %i.st, align 8, !tbaa !97
  store ptr %i.anf, ptr %i.su, align 8, !tbaa !98
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anb, i64 200
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !135
  %i.ani = load ptr, ptr %i.sv, align 8, !tbaa !97 ; 3 uses
  %i.anj = load ptr, ptr %i.sw, align 8, !tbaa !98 ; 2 uses
  %.not85.i138.i.i = icmp eq ptr %i.ani, %i.anj
  br i1 %.not85.i138.i.i, label %add_core.exit163.i.i, label %.preheader77.lr.ph.i139.i.i

.preheader77.lr.ph.i139.i.i:                      ; preds = %bb.gr
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anb, i64 4288 ; 2 uses
  br label %.preheader77.i140.i.i

.preheader77.i140.i.i:                            ; preds = %.thread70.i150.i.i, %.preheader77.lr.ph.i139.i.i
  %.05087.i141.i.i = phi ptr [ %i.ani, %.preheader77.lr.ph.i139.i.i ], [ %i.anm, %.thread70.i150.i.i ] ; 3 uses
  %.05286.i142.i.i = phi ptr [ %i.ani, %.preheader77.lr.ph.i139.i.i ], [ %.5.i151.i.i, %.thread70.i150.i.i ] ; 5 uses
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gs, %.preheader77.i140.i.i
  %.151.i143.i.i = phi ptr [ %i.anm, %bb.gs ], [ %.05087.i141.i.i, %.preheader77.i140.i.i ] ; 4 uses
  %i.anl = load i32, ptr %.151.i143.i.i, align 4, !tbaa !76
  %.not59.i144.i.i = icmp eq i32 %i.anl, -1
  %i.anm = getelementptr inbounds nuw i8, ptr %.151.i143.i.i, i64 4 ; 3 uses
  br i1 %.not59.i144.i.i, label %.preheader.i145.i.i, label %bb.gs, !llvm.loop !164

.preheader.i145.i.i:                              ; preds = %bb.gs
  %i.ann = icmp eq ptr %.05087.i141.i.i, %.151.i143.i.i
  br i1 %i.ann, label %.thread74.i162.i.i, label %.lr.ph.i146.i.i

.lr.ph.i146.i.i:                                  ; preds = %.preheader.i145.i.i, %bb.gv
  %.083.i147.i.i = phi ptr [ %i.anu, %bb.gv ], [ %.05087.i141.i.i, %.preheader.i145.i.i ] ; 2 uses
  %.04682.i148.i.i = phi i32 [ %.2.ph.i159.i.i, %bb.gv ], [ -1, %.preheader.i145.i.i ]
  %.15381.i149.i.i = phi ptr [ %.355.ph.i158.i.i, %bb.gv ], [ %.05286.i142.i.i, %.preheader.i145.i.i ] ; 3 uses
  %i.ano = load i32, ptr %.083.i147.i.i, align 4, !tbaa !76 ; 3 uses
  %i.anp = zext i32 %i.ano to i64
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anh, i64 %i.anp
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !134 ; 2 uses
  %i.ans = icmp slt i8 %i.anr, 1
  br i1 %i.ans, label %bb.gt, label %.thread70.i150.i.i

bb.gt:                                            ; preds = %.lr.ph.i146.i.i
  %.not62.i157.i.i = icmp eq i8 %i.anr, 0
  br i1 %.not62.i157.i.i, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.ant = getelementptr inbounds nuw i8, ptr %.15381.i149.i.i, i64 4
  store i32 %i.ano, ptr %.15381.i149.i.i, align 4, !tbaa !76
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.355.ph.i158.i.i = phi ptr [ %i.ant, %bb.gu ], [ %.15381.i149.i.i, %bb.gt ] ; 5 uses
  %.2.ph.i159.i.i = phi i32 [ %i.ano, %bb.gu ], [ %.04682.i148.i.i, %bb.gt ] ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.083.i147.i.i, i64 4 ; 2 uses
  %i.anv = icmp eq ptr %i.anu, %.151.i143.i.i
  br i1 %i.anv, label %._crit_edge.i160.i.i, label %.lr.ph.i146.i.i, !llvm.loop !165

._crit_edge.i160.i.i:                             ; preds = %bb.gv
  %.not63.i161.i.i = icmp eq ptr %.355.ph.i158.i.i, %.05286.i142.i.i
  br i1 %.not63.i161.i.i, label %.thread74.i162.i.i, label %bb.gw

.thread74.i162.i.i:                               ; preds = %._crit_edge.i160.i.i, %.preheader.i145.i.i
  store i8 1, ptr %i.anc, align 1, !tbaa !8
  %i.anw = load ptr, ptr %i.sv, align 8, !tbaa !97
  br label %._crit_edge88.thread.sink.split.i155.i.i

bb.gw:                                            ; preds = %._crit_edge.i160.i.i
  %i.anx = ptrtoint ptr %.355.ph.i158.i.i to i64
  %i.any = ptrtoint ptr %.05286.i142.i.i to i64
  %i.anz = sub i64 %i.anx, %i.any
  %i.aoa = icmp eq i64 %i.anz, 4
  br i1 %i.aoa, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  call void @kissat_assign_unit(ptr noundef %i.anb, i32 noundef %.2.ph.i159.i.i, ptr noundef nonnull @.str.16) #6
  %i.aob = load i64, ptr %i.ank, align 8, !tbaa !67
  %i.aoc = add i64 %i.aob, 1
  store i64 %i.aoc, ptr %i.ank, align 8, !tbaa !67
  br label %.thread70.i150.i.i, !llvm.loop !166

bb.gy:                                            ; preds = %bb.gw
  %i.aod = getelementptr inbounds nuw i8, ptr %.355.ph.i158.i.i, i64 4
  store i32 -1, ptr %.355.ph.i158.i.i, align 4, !tbaa !76
  br label %.thread70.i150.i.i

.thread70.i150.i.i:                               ; preds = %.lr.ph.i146.i.i, %bb.gy, %bb.gx
  %.5.i151.i.i = phi ptr [ %i.aod, %bb.gy ], [ %.05286.i142.i.i, %bb.gx ], [ %.05286.i142.i.i, %.lr.ph.i146.i.i ] ; 3 uses
  %.not.i152.i.i = icmp eq ptr %i.anm, %i.anj
  br i1 %.not.i152.i.i, label %._crit_edge88.i153.i.i, label %.preheader77.i140.i.i

._crit_edge88.i153.i.i:                           ; preds = %.thread70.i150.i.i
  %.pre.i154.i.i = load ptr, ptr %i.sw, align 8, !tbaa !98
  %i.aoe = icmp eq ptr %.5.i151.i.i, %.pre.i154.i.i
  br i1 %i.aoe, label %add_core.exit163.i.i, label %._crit_edge88.thread.sink.split.i155.i.i

._crit_edge88.thread.sink.split.i155.i.i:         ; preds = %._crit_edge88.i153.i.i, %.thread74.i162.i.i
  %.sink.i156.i.i = phi ptr [ %i.anw, %.thread74.i162.i.i ], [ %.5.i151.i.i, %._crit_edge88.i153.i.i ]
  store ptr %.sink.i156.i.i, ptr %i.sw, align 8, !tbaa !98
  br label %add_core.exit163.i.i

add_core.exit163.i.i:                             ; preds = %._crit_edge88.thread.sink.split.i155.i.i, %._crit_edge88.i153.i.i, %bb.gr, %add_core.exit.i.i
  call void @kissat_new_binary_clause(ptr noundef %.val153.i, i32 noundef %i.akc, i32 noundef %i.aka) #6
  %i.aof = load ptr, ptr %2, align 8, !tbaa !68   ; 3 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 1
  %i.aoh = load i8, ptr %i.aog, align 1, !tbaa !8, !range !59, !noundef !60
  %i.aoi = trunc nuw i8 %i.aoh to i1
  br i1 %i.aoi, label %clear_core.exit164.i.i, label %bb.gz

bb.gz:                                            ; preds = %add_core.exit163.i.i
  %i.aoj = load ptr, ptr %i.sv, align 8, !tbaa !97
  store ptr %i.aoj, ptr %i.sw, align 8, !tbaa !98
  br label %clear_core.exit164.i.i

clear_core.exit164.i.i:                           ; preds = %bb.gz, %add_core.exit163.i.i
  %i.aok = icmp ult i32 %i.ajy, %i.aka
  %i.aol = load ptr, ptr %i.ah, align 8, !tbaa !75 ; 4 uses
  br i1 %i.aok, label %bb.ha, label %bb.hg

bb.ha:                                            ; preds = %clear_core.exit164.i.i
  %i.aom = zext i32 %i.aka to i64
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.aom
  store i32 %i.ajy, ptr %i.aon, align 4, !tbaa !76
  %i.aoo = zext i32 %i.akb to i64
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.aoo
  store i32 %i.akc, ptr %i.aop, align 4, !tbaa !76
  call fastcc void @substitute_connected_clauses(ptr nonnull %i.aof, i32 noundef %i.aka, i32 noundef %i.ajy)
  %.val136.i.i = load ptr, ptr %2, align 8, !tbaa !68
  call fastcc void @substitute_connected_clauses(ptr %.val136.i.i, i32 noundef %i.akb, i32 noundef %i.akc)
  %i.aoq = load ptr, ptr %i.sr, align 8, !tbaa !97 ; 6 uses
  %i.aor = ptrtoaddr ptr %i.aoq to i64            ; 2 uses
  %i.aos = load ptr, ptr %i.sp, align 8, !tbaa !98 ; 6 uses
  %i.aot = ptrtoaddr ptr %i.aos to i64
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hb, %bb.ha
  %indvar = phi i64 [ %indvar.next, %bb.hb ], [ 0, %bb.ha ] ; 3 uses
  %.041.i.i.i = phi ptr [ %i.aov, %bb.hb ], [ %i.aoq, %bb.ha ] ; 6 uses
  %i.aou = load i32, ptr %.041.i.i.i, align 4, !tbaa !76
  %.not.i165.i.i = icmp eq i32 %i.aou, %i.aka
  %i.aov = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i165.i.i, label %.preheader50.i.i.i.preheader, label %bb.hb, !llvm.loop !167

.preheader50.i.i.i.preheader:                     ; preds = %bb.hb
  %.not42.i.i.i319 = icmp eq ptr %.041.i.i.i, %i.aoq
  br i1 %.not42.i.i.i319, label %.critedge.i.i.i, label %.lr.ph321

.preheader50.i.i.i:                               ; preds = %.lr.ph321
  %.not42.i.i.i = icmp eq ptr %i.aow, %i.aoq
  br i1 %.not42.i.i.i, label %.critedge.i.i.i, label %.lr.ph321, !llvm.loop !168

.lr.ph321:                                        ; preds = %.preheader50.i.i.i.preheader, %.preheader50.i.i.i
  %.040.i.i.i320 = phi ptr [ %i.aow, %.preheader50.i.i.i ], [ %.041.i.i.i, %.preheader50.i.i.i.preheader ] ; 2 uses
  %i.aow = getelementptr inbounds i8, ptr %.040.i.i.i320, i64 -4 ; 3 uses
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !76
  %.not43.i.i.i = icmp eq i32 %i.aox, -1
  br i1 %.not43.i.i.i, label %..critedge.i.i.i_crit_edge, label %.preheader50.i.i.i, !llvm.loop !168

..critedge.i.i.i_crit_edge:                       ; preds = %.lr.ph321
  br label %.critedge.i.i.i, !llvm.loop !168

.critedge.i.i.i:                                  ; preds = %.preheader50.i.i.i, %..critedge.i.i.i_crit_edge, %.preheader50.i.i.i.preheader
  %.040.lcssa.i.i.i = phi ptr [ %i.aoq, %.preheader50.i.i.i.preheader ], [ %.040.i.i.i320, %..critedge.i.i.i_crit_edge ], [ %i.aoq, %.preheader50.i.i.i ] ; 10 uses
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hc, %.critedge.i.i.i
  %indvar336 = phi i64 [ %indvar.next337, %bb.hc ], [ 0, %.critedge.i.i.i ] ; 3 uses
  %.039.i.i.i = phi ptr [ %i.aoz, %bb.hc ], [ %.041.i.i.i, %.critedge.i.i.i ] ; 3 uses
  %i.aoy = load i32, ptr %.039.i.i.i, align 4, !tbaa !76
  %.not44.i.i.i = icmp eq i32 %i.aoy, -1
  %i.aoz = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 4 ; 6 uses
  %indvar.next337 = add i64 %indvar336, 1
  br i1 %.not44.i.i.i, label %bb.hd, label %bb.hc, !llvm.loop !169

bb.hd:                                            ; preds = %bb.hc
  %i.apa = ptrtoint ptr %.039.i.i.i to i64
  %i.apb = ptrtoint ptr %.040.lcssa.i.i.i to i64  ; 2 uses
  %i.apc = sub i64 %i.apa, %i.apb
  %i.apd = and i64 %i.apc, 17179869180
  %i.ape = icmp eq i64 %i.apd, 8
  br i1 %i.ape, label %.preheader.i167.i.i, label %.preheader48.i.i.i

.preheader48.i.i.i:                               ; preds = %bb.hd
  %.not4551.i.i.i = icmp eq ptr %.040.lcssa.i.i.i, %i.aos
  br i1 %.not4551.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i166.i.i

.preheader.i167.i.i:                              ; preds = %bb.hd
  %.not4755.i.i.i = icmp eq ptr %i.aoz, %i.aos
  br i1 %.not4755.i.i.i, label %.loopexit.i.i.i, label %.lr.ph58.i.i.i.preheader

.lr.ph58.i.i.i.preheader:                         ; preds = %.preheader.i167.i.i
  %i.apf = add i64 %i.aot, -8
  %3 = add i64 %indvar, %indvar336
  %4 = shl i64 %3, 2
  %i.apg = add i64 %4, %i.aor
  %5 = sub i64 %i.apf, %i.apg                     ; 2 uses
  %6 = lshr i64 %5, 2
  %i.aph = add nuw nsw i64 %6, 1                  ; 2 uses
  %min.iters.check339 = icmp ult i64 %5, 76
  br i1 %min.iters.check339, label %.lr.ph58.i.i.i.preheader393, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58.i.i.i.preheader
  %i.api = mul i64 %indvar, -4
  %reass.sub390 = sub i64 %i.api, %i.aor
  %i.apj = add i64 %reass.sub390, -4
  %i.apk = add i64 %i.apj, %i.apb
  %i.apl = shl i64 %indvar336, 2
  %i.apm = sub i64 %i.apl, %i.apk
  %diff.check = icmp ugt i64 %i.apm, -32
  br i1 %diff.check, label %.lr.ph58.i.i.i.preheader393, label %vector.ph340

vector.ph340:                                     ; preds = %vector.memcheck
  %n.vec341 = and i64 %i.aph, 9223372036854775800 ; 3 uses
  %i.apn = shl i64 %n.vec341, 2                   ; 2 uses
  %i.apo = getelementptr i8, ptr %i.aoz, i64 %i.apn
  %i.app = getelementptr i8, ptr %.040.lcssa.i.i.i, i64 %i.apn ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next346, %vector.body342 ] ; 2 uses
  %i.apq = shl i64 %index343, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aoz, i64 %i.apq ; 2 uses
  %next.gep344 = getelementptr i8, ptr %.040.lcssa.i.i.i, i64 %i.apq ; 2 uses
  %i.apr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !76
  %wide.load345 = load <4 x i32>, ptr %i.apr, align 4, !tbaa !76
  %i.aps = getelementptr i8, ptr %next.gep344, i64 16
  store <4 x i32> %wide.load, ptr %next.gep344, align 4, !tbaa !76
  store <4 x i32> %wide.load345, ptr %i.aps, align 4, !tbaa !76
  %index.next346 = add nuw i64 %index343, 8       ; 2 uses
  %i.apt = icmp eq i64 %index.next346, %n.vec341
  br i1 %i.apt, label %middle.block347, label %vector.body342, !llvm.loop !170

middle.block347:                                  ; preds = %vector.body342
  %cmp.n348 = icmp eq i64 %i.aph, %n.vec341
  br i1 %cmp.n348, label %.loopexit.i.i.i, label %.lr.ph58.i.i.i.preheader393

.lr.ph58.i.i.i.preheader393:                      ; preds = %vector.memcheck, %.lr.ph58.i.i.i.preheader, %middle.block347
  %.03757.i.i.i.ph = phi ptr [ %i.aoz, %vector.memcheck ], [ %i.aoz, %.lr.ph58.i.i.i.preheader ], [ %i.apo, %middle.block347 ]
  %.03856.i.i.i.ph = phi ptr [ %.040.lcssa.i.i.i, %vector.memcheck ], [ %.040.lcssa.i.i.i, %.lr.ph58.i.i.i.preheader ], [ %i.app, %middle.block347 ]
  br label %.lr.ph58.i.i.i

.lr.ph58.i.i.i:                                   ; preds = %.lr.ph58.i.i.i.preheader393, %.lr.ph58.i.i.i
  %.03757.i.i.i = phi ptr [ %.037.i.i.i, %.lr.ph58.i.i.i ], [ %.03757.i.i.i.ph, %.lr.ph58.i.i.i.preheader393 ] ; 2 uses
  %.03856.i.i.i = phi ptr [ %i.apv, %.lr.ph58.i.i.i ], [ %.03856.i.i.i.ph, %.lr.ph58.i.i.i.preheader393 ] ; 2 uses
  %i.apu = load i32, ptr %.03757.i.i.i, align 4, !tbaa !76
  %i.apv = getelementptr inbounds nuw i8, ptr %.03856.i.i.i, i64 4 ; 2 uses
  store i32 %i.apu, ptr %.03856.i.i.i, align 4, !tbaa !76
  %.037.i.i.i = getelementptr inbounds nuw i8, ptr %.03757.i.i.i, i64 4 ; 2 uses
  %.not47.i.i.i = icmp eq ptr %.037.i.i.i, %i.aos
  br i1 %.not47.i.i.i, label %.loopexit.i.i.i, label %.lr.ph58.i.i.i, !llvm.loop !171

.lr.ph.i166.i.i:                                  ; preds = %.preheader48.i.i.i, %bb.hf
  %.053.i.i.i = phi ptr [ %i.apy, %bb.hf ], [ %.040.lcssa.i.i.i, %.preheader48.i.i.i ] ; 3 uses
  %.152.i.i.i = phi ptr [ %.2.i.i.i, %bb.hf ], [ %.040.lcssa.i.i.i, %.preheader48.i.i.i ] ; 3 uses
  %.not46.i.i.i = icmp eq ptr %.053.i.i.i, %.041.i.i.i
  br i1 %.not46.i.i.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %.lr.ph.i166.i.i
  %i.apw = load i32, ptr %.053.i.i.i, align 4, !tbaa !76
  %i.apx = getelementptr inbounds nuw i8, ptr %.152.i.i.i, i64 4
  store i32 %i.apw, ptr %.152.i.i.i, align 4, !tbaa !76
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.lr.ph.i166.i.i
  %.2.i.i.i = phi ptr [ %i.apx, %bb.he ], [ %.152.i.i.i, %.lr.ph.i166.i.i ] ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %.053.i.i.i, i64 4 ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.apy, %i.aos
  br i1 %.not45.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i166.i.i, !llvm.loop !172

.loopexit.i.i.i:                                  ; preds = %bb.hf, %.lr.ph58.i.i.i, %middle.block347, %.preheader.i167.i.i, %.preheader48.i.i.i
  %.3.i.i.i = phi ptr [ %i.apv, %.lr.ph58.i.i.i ], [ %.040.lcssa.i.i.i, %.preheader.i167.i.i ], [ %.040.lcssa.i.i.i, %.preheader48.i.i.i ], [ %i.app, %middle.block347 ], [ %.2.i.i.i, %bb.hf ] ; 2 uses
  %i.apz = icmp eq ptr %.3.i.i.i, %i.aos
  br i1 %i.apz, label %sweep_remove.exit.i.i, label %sweep_remove.exit.sink.split.i.i

bb.hg:                                            ; preds = %clear_core.exit164.i.i
  %i.aqa = zext i32 %i.ajy to i64
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.aqa
  store i32 %i.aka, ptr %i.aqb, align 4, !tbaa !76
  %i.aqc = zext i32 %i.akc to i64
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.aqc
  store i32 %i.akb, ptr %i.aqd, align 4, !tbaa !76
  call fastcc void @substitute_connected_clauses(ptr nonnull %i.aof, i32 noundef %i.ajy, i32 noundef %i.aka)
  %.val134.i.i = load ptr, ptr %2, align 8, !tbaa !68
  call fastcc void @substitute_connected_clauses(ptr %.val134.i.i, i32 noundef %i.akc, i32 noundef %i.akb)
  %i.aqe = load ptr, ptr %i.sr, align 8, !tbaa !97 ; 6 uses
  %i.aqf = ptrtoaddr ptr %i.aqe to i64            ; 2 uses
  %i.aqg = load ptr, ptr %i.sp, align 8, !tbaa !98 ; 6 uses
  %i.aqh = ptrtoaddr ptr %i.aqg to i64
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %bb.hg
  %indvar352 = phi i64 [ %indvar.next353, %bb.hh ], [ 0, %bb.hg ] ; 3 uses
  %.041.i168.i.i = phi ptr [ %i.aqj, %bb.hh ], [ %i.aqe, %bb.hg ] ; 6 uses
  %i.aqi = load i32, ptr %.041.i168.i.i, align 4, !tbaa !76
  %.not.i169.i.i = icmp eq i32 %i.aqi, %i.ajy
  %i.aqj = getelementptr inbounds nuw i8, ptr %.041.i168.i.i, i64 4
  %indvar.next353 = add i64 %indvar352, 1
  br i1 %.not.i169.i.i, label %.preheader50.i170.i.i.preheader, label %bb.hh, !llvm.loop !167

.preheader50.i170.i.i.preheader:                  ; preds = %bb.hh
  %.not42.i172.i.i315 = icmp eq ptr %.041.i168.i.i, %i.aqe
  br i1 %.not42.i172.i.i315, label %.critedge.i174.i.i, label %.lr.ph317

.preheader50.i170.i.i:                            ; preds = %.lr.ph317
  %.not42.i172.i.i = icmp eq ptr %i.aqk, %i.aqe
  br i1 %.not42.i172.i.i, label %.critedge.i174.i.i, label %.lr.ph317, !llvm.loop !168

.lr.ph317:                                        ; preds = %.preheader50.i170.i.i.preheader, %.preheader50.i170.i.i
  %.040.i171.i.i316 = phi ptr [ %i.aqk, %.preheader50.i170.i.i ], [ %.041.i168.i.i, %.preheader50.i170.i.i.preheader ] ; 2 uses
  %i.aqk = getelementptr inbounds i8, ptr %.040.i171.i.i316, i64 -4 ; 3 uses
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !76
  %.not43.i173.i.i = icmp eq i32 %i.aql, -1
  br i1 %.not43.i173.i.i, label %..critedge.i174.i.i_crit_edge, label %.preheader50.i170.i.i, !llvm.loop !168

..critedge.i174.i.i_crit_edge:                    ; preds = %.lr.ph317
  br label %.critedge.i174.i.i, !llvm.loop !168

.critedge.i174.i.i:                               ; preds = %.preheader50.i170.i.i, %..critedge.i174.i.i_crit_edge, %.preheader50.i170.i.i.preheader
  %.040.lcssa.i175.i.i = phi ptr [ %i.aqe, %.preheader50.i170.i.i.preheader ], [ %.040.i171.i.i316, %..critedge.i174.i.i_crit_edge ], [ %i.aqe, %.preheader50.i170.i.i ] ; 10 uses
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hi, %.critedge.i174.i.i
  %indvar354 = phi i64 [ %indvar.next355, %bb.hi ], [ 0, %.critedge.i174.i.i ] ; 3 uses
  %.039.i176.i.i = phi ptr [ %i.aqn, %bb.hi ], [ %.041.i168.i.i, %.critedge.i174.i.i ] ; 3 uses
  %i.aqm = load i32, ptr %.039.i176.i.i, align 4, !tbaa !76
  %.not44.i177.i.i = icmp eq i32 %i.aqm, -1
  %i.aqn = getelementptr inbounds nuw i8, ptr %.039.i176.i.i, i64 4 ; 6 uses
  %indvar.next355 = add i64 %indvar354, 1
  br i1 %.not44.i177.i.i, label %bb.hj, label %bb.hi, !llvm.loop !169

bb.hj:                                            ; preds = %bb.hi
  %i.aqo = ptrtoint ptr %.039.i176.i.i to i64
  %i.aqp = ptrtoint ptr %.040.lcssa.i175.i.i to i64 ; 2 uses
  %i.aqq = sub i64 %i.aqo, %i.aqp
  %i.aqr = and i64 %i.aqq, 17179869180
  %i.aqs = icmp eq i64 %i.aqr, 8
  br i1 %i.aqs, label %.preheader.i188.i.i, label %.preheader48.i178.i.i

.preheader48.i178.i.i:                            ; preds = %bb.hj
  %.not4551.i179.i.i = icmp eq ptr %.040.lcssa.i175.i.i, %i.aqg
  br i1 %.not4551.i179.i.i, label %.loopexit.i186.i.i, label %.lr.ph.i180.i.i

.preheader.i188.i.i:                              ; preds = %bb.hj
  %.not4755.i189.i.i = icmp eq ptr %i.aqn, %i.aqg
  br i1 %.not4755.i189.i.i, label %.loopexit.i186.i.i, label %.lr.ph58.i190.i.i.preheader

.lr.ph58.i190.i.i.preheader:                      ; preds = %.preheader.i188.i.i
  %i.aqt = add i64 %i.aqh, -8
  %7 = add i64 %indvar352, %indvar354
  %8 = shl i64 %7, 2
  %i.aqu = add i64 %8, %i.aqf
  %9 = sub i64 %i.aqt, %i.aqu                     ; 2 uses
  %10 = lshr i64 %9, 2
  %i.aqv = add nuw nsw i64 %10, 1                 ; 2 uses
  %min.iters.check358 = icmp ult i64 %9, 76
  br i1 %min.iters.check358, label %.lr.ph58.i190.i.i.preheader395, label %vector.memcheck351

vector.memcheck351:                               ; preds = %.lr.ph58.i190.i.i.preheader
  %i.aqw = mul i64 %indvar352, -4
  %reass.sub389 = sub i64 %i.aqw, %i.aqf
  %i.aqx = add i64 %reass.sub389, -4
  %i.aqy = add i64 %i.aqx, %i.aqp
  %i.aqz = shl i64 %indvar354, 2
  %i.ara = sub i64 %i.aqz, %i.aqy
  %diff.check356 = icmp ugt i64 %i.ara, -32
  br i1 %diff.check356, label %.lr.ph58.i190.i.i.preheader395, label %vector.ph359

vector.ph359:                                     ; preds = %vector.memcheck351
  %n.vec360 = and i64 %i.aqv, 9223372036854775800 ; 3 uses
  %i.arb = shl i64 %n.vec360, 2                   ; 2 uses
  %i.arc = getelementptr i8, ptr %i.aqn, i64 %i.arb
  %i.ard = getelementptr i8, ptr %.040.lcssa.i175.i.i, i64 %i.arb ; 2 uses
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph359
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next367, %vector.body361 ] ; 2 uses
  %i.are = shl i64 %index362, 2                   ; 2 uses
  %next.gep363 = getelementptr i8, ptr %i.aqn, i64 %i.are ; 2 uses
  %next.gep364 = getelementptr i8, ptr %.040.lcssa.i175.i.i, i64 %i.are ; 2 uses
  %i.arf = getelementptr i8, ptr %next.gep363, i64 16
  %wide.load365 = load <4 x i32>, ptr %next.gep363, align 4, !tbaa !76
  %wide.load366 = load <4 x i32>, ptr %i.arf, align 4, !tbaa !76
  %i.arg = getelementptr i8, ptr %next.gep364, i64 16
  store <4 x i32> %wide.load365, ptr %next.gep364, align 4, !tbaa !76
  store <4 x i32> %wide.load366, ptr %i.arg, align 4, !tbaa !76
  %index.next367 = add nuw i64 %index362, 8       ; 2 uses
  %i.arh = icmp eq i64 %index.next367, %n.vec360
  br i1 %i.arh, label %middle.block368, label %vector.body361, !llvm.loop !173

middle.block368:                                  ; preds = %vector.body361
  %cmp.n369 = icmp eq i64 %i.aqv, %n.vec360
  br i1 %cmp.n369, label %.loopexit.i186.i.i, label %.lr.ph58.i190.i.i.preheader395

.lr.ph58.i190.i.i.preheader395:                   ; preds = %vector.memcheck351, %.lr.ph58.i190.i.i.preheader, %middle.block368
  %.03757.i191.i.i.ph = phi ptr [ %i.aqn, %vector.memcheck351 ], [ %i.aqn, %.lr.ph58.i190.i.i.preheader ], [ %i.arc, %middle.block368 ]
  %.03856.i192.i.i.ph = phi ptr [ %.040.lcssa.i175.i.i, %vector.memcheck351 ], [ %.040.lcssa.i175.i.i, %.lr.ph58.i190.i.i.preheader ], [ %i.ard, %middle.block368 ]
  br label %.lr.ph58.i190.i.i

.lr.ph58.i190.i.i:                                ; preds = %.lr.ph58.i190.i.i.preheader395, %.lr.ph58.i190.i.i
  %.03757.i191.i.i = phi ptr [ %.037.i193.i.i, %.lr.ph58.i190.i.i ], [ %.03757.i191.i.i.ph, %.lr.ph58.i190.i.i.preheader395 ] ; 2 uses
  %.03856.i192.i.i = phi ptr [ %i.arj, %.lr.ph58.i190.i.i ], [ %.03856.i192.i.i.ph, %.lr.ph58.i190.i.i.preheader395 ] ; 2 uses
  %i.ari = load i32, ptr %.03757.i191.i.i, align 4, !tbaa !76
  %i.arj = getelementptr inbounds nuw i8, ptr %.03856.i192.i.i, i64 4 ; 2 uses
  store i32 %i.ari, ptr %.03856.i192.i.i, align 4, !tbaa !76
  %.037.i193.i.i = getelementptr inbounds nuw i8, ptr %.03757.i191.i.i, i64 4 ; 2 uses
  %.not47.i194.i.i = icmp eq ptr %.037.i193.i.i, %i.aqg
  br i1 %.not47.i194.i.i, label %.loopexit.i186.i.i, label %.lr.ph58.i190.i.i, !llvm.loop !174

.lr.ph.i180.i.i:                                  ; preds = %.preheader48.i178.i.i, %bb.hl
  %.053.i181.i.i = phi ptr [ %i.arm, %bb.hl ], [ %.040.lcssa.i175.i.i, %.preheader48.i178.i.i ] ; 3 uses
  %.152.i182.i.i = phi ptr [ %.2.i184.i.i, %bb.hl ], [ %.040.lcssa.i175.i.i, %.preheader48.i178.i.i ] ; 3 uses
  %.not46.i183.i.i = icmp eq ptr %.053.i181.i.i, %.041.i168.i.i
  br i1 %.not46.i183.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph.i180.i.i
  %i.ark = load i32, ptr %.053.i181.i.i, align 4, !tbaa !76
  %i.arl = getelementptr inbounds nuw i8, ptr %.152.i182.i.i, i64 4
  store i32 %i.ark, ptr %.152.i182.i.i, align 4, !tbaa !76
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %.lr.ph.i180.i.i
  %.2.i184.i.i = phi ptr [ %i.arl, %bb.hk ], [ %.152.i182.i.i, %.lr.ph.i180.i.i ] ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.053.i181.i.i, i64 4 ; 2 uses
  %.not45.i185.i.i = icmp eq ptr %i.arm, %i.aqg
  br i1 %.not45.i185.i.i, label %.loopexit.i186.i.i, label %.lr.ph.i180.i.i, !llvm.loop !172

.loopexit.i186.i.i:                               ; preds = %bb.hl, %.lr.ph58.i190.i.i, %middle.block368, %.preheader.i188.i.i, %.preheader48.i178.i.i
  %.3.i187.i.i = phi ptr [ %i.arj, %.lr.ph58.i190.i.i ], [ %.040.lcssa.i175.i.i, %.preheader.i188.i.i ], [ %.040.lcssa.i175.i.i, %.preheader48.i178.i.i ], [ %i.ard, %middle.block368 ], [ %.2.i184.i.i, %bb.hl ] ; 2 uses
  %i.arn = icmp eq ptr %.3.i187.i.i, %i.aqg
  br i1 %i.arn, label %sweep_remove.exit.i.i, label %sweep_remove.exit.sink.split.i.i

sweep_remove.exit.sink.split.i.i:                 ; preds = %.loopexit.i186.i.i, %.loopexit.i.i.i
  %.3.i187.sink.i.i = phi ptr [ %.3.i.i.i, %.loopexit.i.i.i ], [ %.3.i187.i.i, %.loopexit.i186.i.i ]
  %.0118.ph.i.i = phi i32 [ %i.ajy, %.loopexit.i.i.i ], [ %i.aka, %.loopexit.i186.i.i ]
  store ptr %.3.i187.sink.i.i, ptr %i.sp, align 8, !tbaa !98
  br label %sweep_remove.exit.i.i

sweep_remove.exit.i.i:                            ; preds = %sweep_remove.exit.sink.split.i.i, %.loopexit.i186.i.i, %.loopexit.i.i.i
  %.0118.i.i = phi i32 [ %i.aka, %.loopexit.i186.i.i ], [ %i.ajy, %.loopexit.i.i.i ], [ %.0118.ph.i.i, %sweep_remove.exit.sink.split.i.i ]
  %i.aro = lshr i32 %.0118.i.i, 1                 ; 8 uses
  %i.arp = load ptr, ptr %2, align 8, !tbaa !68
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 184
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !96
  %i.ars = zext nneg i32 %i.aro to i64            ; 4 uses
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.ars
  %i.aru = load i16, ptr %i.art, align 4
  %i.arv = trunc i16 %i.aru to i1
  br i1 %i.arv, label %bb.hm, label %sweep_equivalence_candidates.exit.i

bb.hm:                                            ; preds = %sweep_remove.exit.i.i
  %i.arw = load ptr, ptr %i.ba, align 8, !tbaa !83 ; 4 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.ars ; 2 uses
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !76 ; 4 uses
  %.not.i196.i.i = icmp eq i32 %i.ary, -1
  br i1 %.not.i196.i.i, label %bb.hu, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.arz = load ptr, ptr %i.at, align 8, !tbaa !82 ; 2 uses
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.arz, i64 %i.ars ; 2 uses
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !76 ; 3 uses
  %i.asc = zext i32 %i.ary to i64
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.arz, i64 %i.asc
  store i32 %i.asb, ptr %i.asd, align 4, !tbaa !76
  %i.ase = icmp eq i32 %i.asb, -1
  br i1 %i.ase, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  store i32 %i.ary, ptr %i.bf, align 8, !tbaa !85
  br label %bb.hq

bb.hp:                                            ; preds = %bb.hn
  %i.asf = zext i32 %i.asb to i64
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.asf
  store i32 %i.ary, ptr %i.asg, align 4, !tbaa !76
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.ash = load i32, ptr %i.be, align 4, !tbaa !84 ; 3 uses
  %i.asi = icmp eq i32 %i.ash, -1
  br i1 %i.asi, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  store i32 %i.aro, ptr %i.bf, align 8, !tbaa !85
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %i.asj = zext i32 %i.ash to i64
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.asj
  store i32 %i.aro, ptr %i.ask, align 4, !tbaa !76
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  store i32 %i.ash, ptr %i.asa, align 4, !tbaa !76
  store i32 -1, ptr %i.arx, align 4, !tbaa !76
  store i32 %i.aro, ptr %i.be, align 4, !tbaa !84
  br label %sweep_equivalence_candidates.exit.i

bb.hu:                                            ; preds = %bb.hm
  %i.asl = load i32, ptr %i.be, align 4, !tbaa !84 ; 4 uses
  %.not48.i.i.i57 = icmp eq i32 %i.asl, %i.aro
  br i1 %.not48.i.i.i57, label %sweep_equivalence_candidates.exit.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.asm = icmp eq i32 %i.asl, -1
  br i1 %i.asm, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  store i32 %i.aro, ptr %i.bf, align 8, !tbaa !85
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hv
  %i.asn = zext i32 %i.asl to i64
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.asn
  store i32 %i.aro, ptr %i.aso, align 4, !tbaa !76
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %i.asp = load ptr, ptr %i.at, align 8, !tbaa !82
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %i.asp, i64 %i.ars
  store i32 %i.asl, ptr %i.asq, align 4, !tbaa !76
  store i32 %i.aro, ptr %i.be, align 4, !tbaa !84
  br label %sweep_equivalence_candidates.exit.i

bb.hz:                                            ; preds = %bb.fo
  store ptr %i.ajq, ptr %i.sp, align 8, !tbaa !148
  br label %sweep_equivalence_candidates.exit.i

sweep_equivalence_candidates.exit.i:              ; preds = %bb.hz, %bb.hy, %bb.hu, %bb.ht, %sweep_remove.exit.i.i, %bb.gh, %bb.ge, %.critedge132.i.i, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fx, %bb.fw, %bb.fv, %bb.fu
  %i.asr = load ptr, ptr %i.sr, align 8, !tbaa !158
  %i.ass = load ptr, ptr %i.sp, align 8, !tbaa !148
  %.not146.i = icmp eq ptr %i.asr, %i.ass
  br i1 %.not146.i, label %.loopexit.i, label %.lr.ph244.i, !llvm.loop !175

bb.ia:                                            ; preds = %.critedge262.i
  call fastcc void @save_add_clear_core(ptr noundef nonnull %2)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %sweep_equivalence_candidates.exit.i, %bb.fn, %bb.fm, %kissat_terminated.exit202.i, %bb.ex, %kissat_terminated.exit190.i, %.lr.ph244.i, %bb.ej, %kissat_terminated.exit183.i, %bb.dx, %kissat_terminated.exit.i, %bb.ds, %bb.ia, %bb.es, %.critedge262.i
  %i.ast = load ptr, ptr %2, align 8, !tbaa !68   ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 3768 ; 2 uses
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !86
  call void @kitten_clear(ptr noundef %i.asv) #6
  %i.asw = load ptr, ptr %i.asu, align 8, !tbaa !86
  call void @kitten_track_antecedents(ptr noundef %i.asw) #6
  %i.asx = load ptr, ptr %i.bg, align 8, !tbaa !130 ; 3 uses
  %i.asy = load ptr, ptr %i.se, align 8, !tbaa !128 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.asx, %i.asy
  br i1 %.not36.i.i, label %.critedge.i210.i, label %.lr.ph.i208.i

.lr.ph.i208.i:                                    ; preds = %.loopexit.i
  %i.asz = load ptr, ptr %i.ac, align 8, !tbaa !74
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ib, %.lr.ph.i208.i
  %.03137.i.i = phi ptr [ %i.asx, %.lr.ph.i208.i ], [ %i.atd, %bb.ib ] ; 2 uses
  %i.ata = load i32, ptr %.03137.i.i, align 4, !tbaa !76
  %i.atb = zext i32 %i.ata to i64
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.asz, i64 %i.atb
  store i32 0, ptr %i.atc, align 4, !tbaa !76
  %i.atd = getelementptr inbounds nuw i8, ptr %.03137.i.i, i64 4 ; 2 uses
  %.not.i209.i = icmp eq ptr %i.atd, %i.asy
  br i1 %.not.i209.i, label %.critedge.i210.i, label %bb.ib, !llvm.loop !176

.critedge.i210.i:                                 ; preds = %bb.ib, %.loopexit.i
  store ptr %i.asx, ptr %i.se, align 8, !tbaa !128
  %i.ate = load ptr, ptr %i.sl, align 8, !tbaa !177 ; 3 uses
  %i.atf = load ptr, ptr %i.sj, align 8, !tbaa !143 ; 2 uses
  %.not3238.i.i = icmp eq ptr %i.ate, %i.atf
  br i1 %.not3238.i.i, label %clear_sweeper.exit.i, label %.lr.ph40.i.i
end_hunk_0
