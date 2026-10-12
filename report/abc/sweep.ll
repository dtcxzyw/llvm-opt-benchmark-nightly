Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sweep?download=true
inline.NumInlined: 129
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@kissat_sweep:bb.a
  br i1 %i.amj, label %bb.gm, label %.thread70.i.i.i

bb.gm:                                            ; preds = %.lr.ph.i.i205.i
  %.not62.i.i.i = icmp eq i8 %i.ami, 0
  br i1 %.not62.i.i.i, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.amk = getelementptr inbounds nuw i8, ptr %.15381.i.i.i, i64 4
  store i32 %i.amf, ptr %.15381.i.i.i, align 4, !tbaa !72
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.355.ph.i.i.i = phi ptr [ %i.amk, %bb.gn ], [ %.15381.i.i.i, %bb.gm ] ; 5 uses
  %.2.ph.i.i.i = phi i32 [ %i.amf, %bb.gn ], [ %.04682.i.i.i, %bb.gm ] ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.083.i.i.i, i64 4 ; 2 uses
  %i.amm = icmp eq ptr %i.aml, %.151.i.i.i
  br i1 %i.amm, label %._crit_edge.i.i.i, label %.lr.ph.i.i205.i, !llvm.loop !3

._crit_edge.i.i.i:                                ; preds = %bb.go
  %.not63.i.i.i = icmp eq ptr %.355.ph.i.i.i, %.05286.i.i.i
  br i1 %.not63.i.i.i, label %.thread74.i.i.i, label %bb.gp

.thread74.i.i.i:                                  ; preds = %._crit_edge.i.i.i, %.preheader.i.i.i
  store i8 1, ptr %i.alu, align 1, !tbaa !63
  %i.amn = load ptr, ptr %i.so, align 8, !tbaa !78
  br label %._crit_edge88.thread.sink.split.i.i.i

bb.gp:                                            ; preds = %._crit_edge.i.i.i
  %i.amo = ptrtoint ptr %.355.ph.i.i.i to i64
  %i.amp = ptrtoint ptr %.05286.i.i.i to i64
  %i.amq = sub i64 %i.amo, %i.amp
  %i.amr = icmp eq i64 %i.amq, 4
  br i1 %i.amr, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  call void @kissat_assign_unit(ptr noundef %i.alt, i32 noundef %.2.ph.i.i.i, ptr noundef nonnull @.str.16) #6
  %i.ams = load i64, ptr %i.amb, align 8, !tbaa !66
  %i.amt = add i64 %i.ams, 1
  store i64 %i.amt, ptr %i.amb, align 8, !tbaa !66
  br label %.thread70.i.i.i, !llvm.loop !4

bb.gr:                                            ; preds = %bb.gp
  %i.amu = getelementptr inbounds nuw i8, ptr %.355.ph.i.i.i, i64 4
  store i32 -1, ptr %.355.ph.i.i.i, align 4, !tbaa !72
  br label %.thread70.i.i.i

.thread70.i.i.i:                                  ; preds = %.lr.ph.i.i205.i, %bb.gr, %bb.gq
  %.5.i.i.i = phi ptr [ %i.amu, %bb.gr ], [ %.05286.i.i.i, %bb.gq ], [ %.05286.i.i.i, %.lr.ph.i.i205.i ] ; 3 uses
  %.not.i.i206.i = icmp eq ptr %i.amd, %i.ama
  br i1 %.not.i.i206.i, label %._crit_edge88.i.i.i, label %.preheader77.i.i.i

._crit_edge88.i.i.i:                              ; preds = %.thread70.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.sp, align 8, !tbaa !79
  %i.amv = icmp eq ptr %.5.i.i.i, %.pre.i.i.i
  br i1 %i.amv, label %add_core.exit.i.i, label %._crit_edge88.thread.sink.split.i.i.i

._crit_edge88.thread.sink.split.i.i.i:            ; preds = %._crit_edge88.i.i.i, %.thread74.i.i.i
  %.sink.i.i.i = phi ptr [ %i.amn, %.thread74.i.i.i ], [ %.5.i.i.i, %._crit_edge88.i.i.i ]
  store ptr %.sink.i.i.i, ptr %i.sp, align 8, !tbaa !79
  br label %add_core.exit.i.i

add_core.exit.i.i:                                ; preds = %._crit_edge88.thread.sink.split.i.i.i, %._crit_edge88.i.i.i, %bb.gk, %bb.gj
  call void @kissat_new_binary_clause(ptr noundef %.val153.i, i32 noundef %i.ajt, i32 noundef %i.ajw) #6
  %i.amw = load ptr, ptr %2, align 8, !tbaa !70   ; 4 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 1 ; 2 uses
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !63, !range !64, !noundef !65
  %i.amz = trunc nuw i8 %i.amy to i1
  br i1 %i.amz, label %add_core.exit163.i.i, label %bb.gs

bb.gs:                                            ; preds = %add_core.exit.i.i
  %i.ana = load ptr, ptr %i.so, align 8, !tbaa !78
  store ptr %i.ana, ptr %i.sp, align 8, !tbaa !79
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amw, i64 200
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !87
  %i.and = load ptr, ptr %i.sq, align 8, !tbaa !78 ; 3 uses
  %i.ane = load ptr, ptr %i.sr, align 8, !tbaa !79 ; 2 uses
  %.not85.i138.i.i = icmp eq ptr %i.and, %i.ane
  br i1 %.not85.i138.i.i, label %add_core.exit163.i.i, label %.preheader77.lr.ph.i139.i.i

.preheader77.lr.ph.i139.i.i:                      ; preds = %bb.gs
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amw, i64 4288 ; 2 uses
  br label %.preheader77.i140.i.i

.preheader77.i140.i.i:                            ; preds = %.thread70.i150.i.i, %.preheader77.lr.ph.i139.i.i
  %.05087.i141.i.i = phi ptr [ %i.and, %.preheader77.lr.ph.i139.i.i ], [ %i.anh, %.thread70.i150.i.i ] ; 3 uses
  %.05286.i142.i.i = phi ptr [ %i.and, %.preheader77.lr.ph.i139.i.i ], [ %.5.i151.i.i, %.thread70.i150.i.i ] ; 5 uses
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gt, %.preheader77.i140.i.i
  %.151.i143.i.i = phi ptr [ %i.anh, %bb.gt ], [ %.05087.i141.i.i, %.preheader77.i140.i.i ] ; 4 uses
  %i.ang = load i32, ptr %.151.i143.i.i, align 4, !tbaa !72
  %.not59.i144.i.i = icmp eq i32 %i.ang, -1
  %i.anh = getelementptr inbounds nuw i8, ptr %.151.i143.i.i, i64 4 ; 3 uses
  br i1 %.not59.i144.i.i, label %.preheader.i145.i.i, label %bb.gt, !llvm.loop !2

.preheader.i145.i.i:                              ; preds = %bb.gt
  %i.ani = icmp eq ptr %.05087.i141.i.i, %.151.i143.i.i
  br i1 %i.ani, label %.thread74.i162.i.i, label %.lr.ph.i146.i.i

.lr.ph.i146.i.i:                                  ; preds = %.preheader.i145.i.i, %bb.gw
  %.083.i147.i.i = phi ptr [ %i.anp, %bb.gw ], [ %.05087.i141.i.i, %.preheader.i145.i.i ] ; 2 uses
  %.04682.i148.i.i = phi i32 [ %.2.ph.i159.i.i, %bb.gw ], [ -1, %.preheader.i145.i.i ]
  %.15381.i149.i.i = phi ptr [ %.355.ph.i158.i.i, %bb.gw ], [ %.05286.i142.i.i, %.preheader.i145.i.i ] ; 3 uses
  %i.anj = load i32, ptr %.083.i147.i.i, align 4, !tbaa !72 ; 3 uses
  %i.ank = zext i32 %i.anj to i64
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.ank
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !86 ; 2 uses
  %i.ann = icmp slt i8 %i.anm, 1
  br i1 %i.ann, label %bb.gu, label %.thread70.i150.i.i

bb.gu:                                            ; preds = %.lr.ph.i146.i.i
  %.not62.i157.i.i = icmp eq i8 %i.anm, 0
  br i1 %.not62.i157.i.i, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.ano = getelementptr inbounds nuw i8, ptr %.15381.i149.i.i, i64 4
  store i32 %i.anj, ptr %.15381.i149.i.i, align 4, !tbaa !72
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %.355.ph.i158.i.i = phi ptr [ %i.ano, %bb.gv ], [ %.15381.i149.i.i, %bb.gu ] ; 5 uses
  %.2.ph.i159.i.i = phi i32 [ %i.anj, %bb.gv ], [ %.04682.i148.i.i, %bb.gu ] ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.083.i147.i.i, i64 4 ; 2 uses
  %i.anq = icmp eq ptr %i.anp, %.151.i143.i.i
  br i1 %i.anq, label %._crit_edge.i160.i.i, label %.lr.ph.i146.i.i, !llvm.loop !3

._crit_edge.i160.i.i:                             ; preds = %bb.gw
  %.not63.i161.i.i = icmp eq ptr %.355.ph.i158.i.i, %.05286.i142.i.i
  br i1 %.not63.i161.i.i, label %.thread74.i162.i.i, label %bb.gx

.thread74.i162.i.i:                               ; preds = %._crit_edge.i160.i.i, %.preheader.i145.i.i
  store i8 1, ptr %i.amx, align 1, !tbaa !63
  %i.anr = load ptr, ptr %i.sq, align 8, !tbaa !78
  br label %._crit_edge88.thread.sink.split.i155.i.i

bb.gx:                                            ; preds = %._crit_edge.i160.i.i
  %i.ans = ptrtoint ptr %.355.ph.i158.i.i to i64
  %i.ant = ptrtoint ptr %.05286.i142.i.i to i64
  %i.anu = sub i64 %i.ans, %i.ant
  %i.anv = icmp eq i64 %i.anu, 4
  br i1 %i.anv, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  call void @kissat_assign_unit(ptr noundef %i.amw, i32 noundef %.2.ph.i159.i.i, ptr noundef nonnull @.str.16) #6
  %i.anw = load i64, ptr %i.anf, align 8, !tbaa !66
  %i.anx = add i64 %i.anw, 1
  store i64 %i.anx, ptr %i.anf, align 8, !tbaa !66
  br label %.thread70.i150.i.i, !llvm.loop !4

bb.gz:                                            ; preds = %bb.gx
  %i.any = getelementptr inbounds nuw i8, ptr %.355.ph.i158.i.i, i64 4
  store i32 -1, ptr %.355.ph.i158.i.i, align 4, !tbaa !72
  br label %.thread70.i150.i.i

.thread70.i150.i.i:                               ; preds = %.lr.ph.i146.i.i, %bb.gz, %bb.gy
  %.5.i151.i.i = phi ptr [ %i.any, %bb.gz ], [ %.05286.i142.i.i, %bb.gy ], [ %.05286.i142.i.i, %.lr.ph.i146.i.i ] ; 3 uses
  %.not.i152.i.i = icmp eq ptr %i.anh, %i.ane
  br i1 %.not.i152.i.i, label %._crit_edge88.i153.i.i, label %.preheader77.i140.i.i

._crit_edge88.i153.i.i:                           ; preds = %.thread70.i150.i.i
  %.pre.i154.i.i = load ptr, ptr %i.sr, align 8, !tbaa !79
  %i.anz = icmp eq ptr %.5.i151.i.i, %.pre.i154.i.i
  br i1 %i.anz, label %add_core.exit163.i.i, label %._crit_edge88.thread.sink.split.i155.i.i

._crit_edge88.thread.sink.split.i155.i.i:         ; preds = %._crit_edge88.i153.i.i, %.thread74.i162.i.i
  %.sink.i156.i.i = phi ptr [ %i.anr, %.thread74.i162.i.i ], [ %.5.i151.i.i, %._crit_edge88.i153.i.i ]
  store ptr %.sink.i156.i.i, ptr %i.sr, align 8, !tbaa !79
  br label %add_core.exit163.i.i

add_core.exit163.i.i:                             ; preds = %._crit_edge88.thread.sink.split.i155.i.i, %._crit_edge88.i153.i.i, %bb.gs, %add_core.exit.i.i
  call void @kissat_new_binary_clause(ptr noundef %.val153.i, i32 noundef %i.ajx, i32 noundef %i.ajv) #6
  %i.aoa = load ptr, ptr %2, align 8, !tbaa !70   ; 3 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 1
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !63, !range !64, !noundef !65
  %i.aod = trunc nuw i8 %i.aoc to i1
  br i1 %i.aod, label %clear_core.exit164.i.i, label %bb.ha

bb.ha:                                            ; preds = %add_core.exit163.i.i
  %i.aoe = load ptr, ptr %i.sq, align 8, !tbaa !78
  store ptr %i.aoe, ptr %i.sr, align 8, !tbaa !79
  br label %clear_core.exit164.i.i

clear_core.exit164.i.i:                           ; preds = %bb.ha, %add_core.exit163.i.i
  %i.aof = icmp ult i32 %i.ajt, %i.ajv
  %i.aog = load ptr, ptr %i.ah, align 8, !tbaa !71 ; 4 uses
  br i1 %i.aof, label %bb.hb, label %bb.hh

bb.hb:                                            ; preds = %clear_core.exit164.i.i
  %i.aoh = zext i32 %i.ajv to i64
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %i.aoh
  store i32 %i.ajt, ptr %i.aoi, align 4, !tbaa !72
  %i.aoj = zext i32 %i.ajw to i64
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %i.aoj
  store i32 %i.ajx, ptr %i.aok, align 4, !tbaa !72
  call fastcc void @substitute_connected_clauses(ptr nonnull %i.aoa, i32 noundef %i.ajv, i32 noundef %i.ajt)
  %.val136.i.i = load ptr, ptr %2, align 8, !tbaa !70
  call fastcc void @substitute_connected_clauses(ptr %.val136.i.i, i32 noundef %i.ajw, i32 noundef %i.ajx)
  %i.aol = load ptr, ptr %i.sm, align 8, !tbaa !78 ; 6 uses
  %i.aom = ptrtoaddr ptr %i.aol to i64            ; 2 uses
  %i.aon = load ptr, ptr %i.sk, align 8, !tbaa !79 ; 6 uses
  %3 = ptrtoaddr ptr %i.aon to i64
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hc, %bb.hb
  %indvar = phi i64 [ %indvar.next, %bb.hc ], [ 0, %bb.hb ] ; 3 uses
  %.041.i.i.i = phi ptr [ %i.aop, %bb.hc ], [ %i.aol, %bb.hb ] ; 6 uses
  %i.aoo = load i32, ptr %.041.i.i.i, align 4, !tbaa !72
  %.not.i165.i.i = icmp eq i32 %i.aoo, %i.ajv
  %i.aop = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i165.i.i, label %.preheader50.i.i.i.preheader, label %bb.hc, !llvm.loop !125

.preheader50.i.i.i.preheader:                     ; preds = %bb.hc
  %.not42.i.i.i319 = icmp eq ptr %.041.i.i.i, %i.aol
  br i1 %.not42.i.i.i319, label %.critedge.i.i.i, label %.lr.ph321

.preheader50.i.i.i:                               ; preds = %.lr.ph321
  %.not42.i.i.i = icmp eq ptr %i.aoq, %i.aol
  br i1 %.not42.i.i.i, label %.critedge.i.i.i, label %.lr.ph321, !llvm.loop !126

.lr.ph321:                                        ; preds = %.preheader50.i.i.i.preheader, %.preheader50.i.i.i
  %.040.i.i.i320 = phi ptr [ %i.aoq, %.preheader50.i.i.i ], [ %.041.i.i.i, %.preheader50.i.i.i.preheader ] ; 2 uses
  %i.aoq = getelementptr inbounds i8, ptr %.040.i.i.i320, i64 -4 ; 3 uses
  %i.aor = load i32, ptr %i.aoq, align 4, !tbaa !72
  %.not43.i.i.i = icmp eq i32 %i.aor, -1
  br i1 %.not43.i.i.i, label %..critedge.i.i.i_crit_edge, label %.preheader50.i.i.i, !llvm.loop !126

..critedge.i.i.i_crit_edge:                       ; preds = %.lr.ph321
  br label %.critedge.i.i.i, !llvm.loop !126

.critedge.i.i.i:                                  ; preds = %.preheader50.i.i.i, %..critedge.i.i.i_crit_edge, %.preheader50.i.i.i.preheader
  %.040.lcssa.i.i.i = phi ptr [ %i.aol, %.preheader50.i.i.i.preheader ], [ %.040.i.i.i320, %..critedge.i.i.i_crit_edge ], [ %i.aol, %.preheader50.i.i.i ] ; 10 uses
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %.critedge.i.i.i
  %indvar336 = phi i64 [ %indvar.next337, %bb.hd ], [ 0, %.critedge.i.i.i ] ; 3 uses
  %.039.i.i.i = phi ptr [ %i.aot, %bb.hd ], [ %.041.i.i.i, %.critedge.i.i.i ] ; 3 uses
  %i.aos = load i32, ptr %.039.i.i.i, align 4, !tbaa !72
  %.not44.i.i.i = icmp eq i32 %i.aos, -1
  %i.aot = getelementptr inbounds nuw i8, ptr %.039.i.i.i, i64 4 ; 6 uses
  %indvar.next337 = add i64 %indvar336, 1
  br i1 %.not44.i.i.i, label %bb.he, label %bb.hd, !llvm.loop !127

bb.he:                                            ; preds = %bb.hd
  %i.aou = ptrtoint ptr %.039.i.i.i to i64
  %i.aov = ptrtoint ptr %.040.lcssa.i.i.i to i64  ; 2 uses
  %i.aow = sub i64 %i.aou, %i.aov
  %i.aox = and i64 %i.aow, 17179869180
  %i.aoy = icmp eq i64 %i.aox, 8
  br i1 %i.aoy, label %.preheader.i167.i.i, label %.preheader48.i.i.i

.preheader48.i.i.i:                               ; preds = %bb.he
  %.not4551.i.i.i = icmp eq ptr %.040.lcssa.i.i.i, %i.aon
  br i1 %.not4551.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i166.i.i

.preheader.i167.i.i:                              ; preds = %bb.he
  %.not4755.i.i.i = icmp eq ptr %i.aot, %i.aon
  br i1 %.not4755.i.i.i, label %.loopexit.i.i.i, label %.lr.ph58.i.i.i.preheader

.lr.ph58.i.i.i.preheader:                         ; preds = %.preheader.i167.i.i
  %i.aoz = add i64 %3, -8
  %i.apa = add i64 %indvar, %indvar336
  %i.apb = shl i64 %i.apa, 2
  %i.apc = add i64 %i.apb, %i.aom
  %i.apd = sub i64 %i.aoz, %i.apc                 ; 2 uses
  %i.ape = lshr i64 %i.apd, 2
  %i.apf = add nuw nsw i64 %i.ape, 1              ; 2 uses
  %min.iters.check339 = icmp ult i64 %i.apd, 76
  br i1 %min.iters.check339, label %.lr.ph58.i.i.i.preheader393, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58.i.i.i.preheader
  %i.apg = mul i64 %indvar, -4
  %reass.sub390 = sub i64 %i.apg, %i.aom
  %i.aph = add i64 %reass.sub390, -4
  %i.api = add i64 %i.aph, %i.aov
  %i.apj = shl i64 %indvar336, 2
  %i.apk = sub i64 %i.apj, %i.api
  %diff.check = icmp ugt i64 %i.apk, -32
  br i1 %diff.check, label %.lr.ph58.i.i.i.preheader393, label %vector.ph340

vector.ph340:                                     ; preds = %vector.memcheck
  %n.vec341 = and i64 %i.apf, 9223372036854775800 ; 3 uses
  %i.apl = shl i64 %n.vec341, 2                   ; 2 uses
  %i.apm = getelementptr i8, ptr %i.aot, i64 %i.apl
  %i.apn = getelementptr i8, ptr %.040.lcssa.i.i.i, i64 %i.apl ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next346, %vector.body342 ] ; 2 uses
  %i.apo = shl i64 %index343, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aot, i64 %i.apo ; 2 uses
  %next.gep344 = getelementptr i8, ptr %.040.lcssa.i.i.i, i64 %i.apo ; 2 uses
  %i.app = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !72
  %wide.load345 = load <4 x i32>, ptr %i.app, align 4, !tbaa !72
  %i.apq = getelementptr i8, ptr %next.gep344, i64 16
  store <4 x i32> %wide.load, ptr %next.gep344, align 4, !tbaa !72
  store <4 x i32> %wide.load345, ptr %i.apq, align 4, !tbaa !72
  %index.next346 = add nuw i64 %index343, 8       ; 2 uses
  %i.apr = icmp eq i64 %index.next346, %n.vec341
  br i1 %i.apr, label %middle.block347, label %vector.body342, !llvm.loop !128

middle.block347:                                  ; preds = %vector.body342
  %cmp.n348 = icmp eq i64 %i.apf, %n.vec341
  br i1 %cmp.n348, label %.loopexit.i.i.i, label %.lr.ph58.i.i.i.preheader393

.lr.ph58.i.i.i.preheader393:                      ; preds = %vector.memcheck, %.lr.ph58.i.i.i.preheader, %middle.block347
  %.03757.i.i.i.ph = phi ptr [ %i.aot, %vector.memcheck ], [ %i.aot, %.lr.ph58.i.i.i.preheader ], [ %i.apm, %middle.block347 ]
  %.03856.i.i.i.ph = phi ptr [ %.040.lcssa.i.i.i, %vector.memcheck ], [ %.040.lcssa.i.i.i, %.lr.ph58.i.i.i.preheader ], [ %i.apn, %middle.block347 ]
  br label %.lr.ph58.i.i.i

.lr.ph58.i.i.i:                                   ; preds = %.lr.ph58.i.i.i.preheader393, %.lr.ph58.i.i.i
  %.03757.i.i.i = phi ptr [ %.037.i.i.i, %.lr.ph58.i.i.i ], [ %.03757.i.i.i.ph, %.lr.ph58.i.i.i.preheader393 ] ; 2 uses
  %.03856.i.i.i = phi ptr [ %i.apt, %.lr.ph58.i.i.i ], [ %.03856.i.i.i.ph, %.lr.ph58.i.i.i.preheader393 ] ; 2 uses
  %i.aps = load i32, ptr %.03757.i.i.i, align 4, !tbaa !72
  %i.apt = getelementptr inbounds nuw i8, ptr %.03856.i.i.i, i64 4 ; 2 uses
  store i32 %i.aps, ptr %.03856.i.i.i, align 4, !tbaa !72
  %.037.i.i.i = getelementptr inbounds nuw i8, ptr %.03757.i.i.i, i64 4 ; 2 uses
  %.not47.i.i.i = icmp eq ptr %.037.i.i.i, %i.aon
  br i1 %.not47.i.i.i, label %.loopexit.i.i.i, label %.lr.ph58.i.i.i, !llvm.loop !129

.lr.ph.i166.i.i:                                  ; preds = %.preheader48.i.i.i, %bb.hg
  %.053.i.i.i = phi ptr [ %i.apw, %bb.hg ], [ %.040.lcssa.i.i.i, %.preheader48.i.i.i ] ; 3 uses
  %.152.i.i.i = phi ptr [ %.2.i.i.i, %bb.hg ], [ %.040.lcssa.i.i.i, %.preheader48.i.i.i ] ; 3 uses
  %.not46.i.i.i = icmp eq ptr %.053.i.i.i, %.041.i.i.i
  br i1 %.not46.i.i.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph.i166.i.i
  %i.apu = load i32, ptr %.053.i.i.i, align 4, !tbaa !72
  %i.apv = getelementptr inbounds nuw i8, ptr %.152.i.i.i, i64 4
  store i32 %i.apu, ptr %.152.i.i.i, align 4, !tbaa !72
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.lr.ph.i166.i.i
  %.2.i.i.i = phi ptr [ %i.apv, %bb.hf ], [ %.152.i.i.i, %.lr.ph.i166.i.i ] ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %.053.i.i.i, i64 4 ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.apw, %i.aon
  br i1 %.not45.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i166.i.i, !llvm.loop !130

.loopexit.i.i.i:                                  ; preds = %bb.hg, %.lr.ph58.i.i.i, %middle.block347, %.preheader.i167.i.i, %.preheader48.i.i.i
  %.3.i.i.i = phi ptr [ %i.apt, %.lr.ph58.i.i.i ], [ %.040.lcssa.i.i.i, %.preheader.i167.i.i ], [ %.040.lcssa.i.i.i, %.preheader48.i.i.i ], [ %i.apn, %middle.block347 ], [ %.2.i.i.i, %bb.hg ] ; 2 uses
  %i.apx = icmp eq ptr %.3.i.i.i, %i.aon
  br i1 %i.apx, label %sweep_remove.exit.i.i, label %sweep_remove.exit.sink.split.i.i

bb.hh:                                            ; preds = %clear_core.exit164.i.i
  %i.apy = zext i32 %i.ajt to i64
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %i.apy
  store i32 %i.ajv, ptr %i.apz, align 4, !tbaa !72
  %i.aqa = zext i32 %i.ajx to i64
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %i.aqa
  store i32 %i.ajw, ptr %i.aqb, align 4, !tbaa !72
  call fastcc void @substitute_connected_clauses(ptr nonnull %i.aoa, i32 noundef %i.ajt, i32 noundef %i.ajv)
  %.val134.i.i = load ptr, ptr %2, align 8, !tbaa !70
  call fastcc void @substitute_connected_clauses(ptr %.val134.i.i, i32 noundef %i.ajx, i32 noundef %i.ajw)
  %i.aqc = load ptr, ptr %i.sm, align 8, !tbaa !78 ; 6 uses
  %i.aqd = ptrtoaddr ptr %i.aqc to i64            ; 2 uses
  %i.aqe = load ptr, ptr %i.sk, align 8, !tbaa !79 ; 6 uses
  %4 = ptrtoaddr ptr %i.aqe to i64
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hi, %bb.hh
  %indvar352 = phi i64 [ %indvar.next353, %bb.hi ], [ 0, %bb.hh ] ; 3 uses
  %.041.i168.i.i = phi ptr [ %i.aqg, %bb.hi ], [ %i.aqc, %bb.hh ] ; 6 uses
  %i.aqf = load i32, ptr %.041.i168.i.i, align 4, !tbaa !72
  %.not.i169.i.i = icmp eq i32 %i.aqf, %i.ajt
  %i.aqg = getelementptr inbounds nuw i8, ptr %.041.i168.i.i, i64 4
  %indvar.next353 = add i64 %indvar352, 1
  br i1 %.not.i169.i.i, label %.preheader50.i170.i.i.preheader, label %bb.hi, !llvm.loop !125

.preheader50.i170.i.i.preheader:                  ; preds = %bb.hi
  %.not42.i172.i.i315 = icmp eq ptr %.041.i168.i.i, %i.aqc
  br i1 %.not42.i172.i.i315, label %.critedge.i174.i.i, label %.lr.ph317

.preheader50.i170.i.i:                            ; preds = %.lr.ph317
  %.not42.i172.i.i = icmp eq ptr %i.aqh, %i.aqc
  br i1 %.not42.i172.i.i, label %.critedge.i174.i.i, label %.lr.ph317, !llvm.loop !126

.lr.ph317:                                        ; preds = %.preheader50.i170.i.i.preheader, %.preheader50.i170.i.i
  %.040.i171.i.i316 = phi ptr [ %i.aqh, %.preheader50.i170.i.i ], [ %.041.i168.i.i, %.preheader50.i170.i.i.preheader ] ; 2 uses
  %i.aqh = getelementptr inbounds i8, ptr %.040.i171.i.i316, i64 -4 ; 3 uses
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !72
  %.not43.i173.i.i = icmp eq i32 %i.aqi, -1
  br i1 %.not43.i173.i.i, label %..critedge.i174.i.i_crit_edge, label %.preheader50.i170.i.i, !llvm.loop !126

..critedge.i174.i.i_crit_edge:                    ; preds = %.lr.ph317
  br label %.critedge.i174.i.i, !llvm.loop !126

.critedge.i174.i.i:                               ; preds = %.preheader50.i170.i.i, %..critedge.i174.i.i_crit_edge, %.preheader50.i170.i.i.preheader
  %.040.lcssa.i175.i.i = phi ptr [ %i.aqc, %.preheader50.i170.i.i.preheader ], [ %.040.i171.i.i316, %..critedge.i174.i.i_crit_edge ], [ %i.aqc, %.preheader50.i170.i.i ] ; 10 uses
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hj, %.critedge.i174.i.i
  %indvar354 = phi i64 [ %indvar.next355, %bb.hj ], [ 0, %.critedge.i174.i.i ] ; 3 uses
  %.039.i176.i.i = phi ptr [ %i.aqk, %bb.hj ], [ %.041.i168.i.i, %.critedge.i174.i.i ] ; 3 uses
  %i.aqj = load i32, ptr %.039.i176.i.i, align 4, !tbaa !72
  %.not44.i177.i.i = icmp eq i32 %i.aqj, -1
  %i.aqk = getelementptr inbounds nuw i8, ptr %.039.i176.i.i, i64 4 ; 6 uses
  %indvar.next355 = add i64 %indvar354, 1
  br i1 %.not44.i177.i.i, label %bb.hk, label %bb.hj, !llvm.loop !127

bb.hk:                                            ; preds = %bb.hj
  %i.aql = ptrtoint ptr %.039.i176.i.i to i64
  %i.aqm = ptrtoint ptr %.040.lcssa.i175.i.i to i64 ; 2 uses
  %i.aqn = sub i64 %i.aql, %i.aqm
  %i.aqo = and i64 %i.aqn, 17179869180
  %i.aqp = icmp eq i64 %i.aqo, 8
  br i1 %i.aqp, label %.preheader.i188.i.i, label %.preheader48.i178.i.i

.preheader48.i178.i.i:                            ; preds = %bb.hk
  %.not4551.i179.i.i = icmp eq ptr %.040.lcssa.i175.i.i, %i.aqe
  br i1 %.not4551.i179.i.i, label %.loopexit.i186.i.i, label %.lr.ph.i180.i.i

.preheader.i188.i.i:                              ; preds = %bb.hk
  %.not4755.i189.i.i = icmp eq ptr %i.aqk, %i.aqe
  br i1 %.not4755.i189.i.i, label %.loopexit.i186.i.i, label %.lr.ph58.i190.i.i.preheader

.lr.ph58.i190.i.i.preheader:                      ; preds = %.preheader.i188.i.i
  %i.aqq = add i64 %4, -8
  %i.aqr = add i64 %indvar352, %indvar354
  %i.aqs = shl i64 %i.aqr, 2
  %i.aqt = add i64 %i.aqs, %i.aqd
  %i.aqu = sub i64 %i.aqq, %i.aqt                 ; 2 uses
  %i.aqv = lshr i64 %i.aqu, 2
  %i.aqw = add nuw nsw i64 %i.aqv, 1              ; 2 uses
  %min.iters.check358 = icmp ult i64 %i.aqu, 76
  br i1 %min.iters.check358, label %.lr.ph58.i190.i.i.preheader395, label %vector.memcheck351

vector.memcheck351:                               ; preds = %.lr.ph58.i190.i.i.preheader
  %i.aqx = mul i64 %indvar352, -4
  %reass.sub389 = sub i64 %i.aqx, %i.aqd
  %i.aqy = add i64 %reass.sub389, -4
  %i.aqz = add i64 %i.aqy, %i.aqm
  %i.ara = shl i64 %indvar354, 2
  %i.arb = sub i64 %i.ara, %i.aqz
  %diff.check356 = icmp ugt i64 %i.arb, -32
  br i1 %diff.check356, label %.lr.ph58.i190.i.i.preheader395, label %vector.ph359

vector.ph359:                                     ; preds = %vector.memcheck351
  %n.vec360 = and i64 %i.aqw, 9223372036854775800 ; 3 uses
  %i.arc = shl i64 %n.vec360, 2                   ; 2 uses
  %i.ard = getelementptr i8, ptr %i.aqk, i64 %i.arc
  %i.are = getelementptr i8, ptr %.040.lcssa.i175.i.i, i64 %i.arc ; 2 uses
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph359
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next367, %vector.body361 ] ; 2 uses
  %i.arf = shl i64 %index362, 2                   ; 2 uses
  %next.gep363 = getelementptr i8, ptr %i.aqk, i64 %i.arf ; 2 uses
  %next.gep364 = getelementptr i8, ptr %.040.lcssa.i175.i.i, i64 %i.arf ; 2 uses
  %i.arg = getelementptr i8, ptr %next.gep363, i64 16
  %wide.load365 = load <4 x i32>, ptr %next.gep363, align 4, !tbaa !72
  %wide.load366 = load <4 x i32>, ptr %i.arg, align 4, !tbaa !72
  %i.arh = getelementptr i8, ptr %next.gep364, i64 16
  store <4 x i32> %wide.load365, ptr %next.gep364, align 4, !tbaa !72
  store <4 x i32> %wide.load366, ptr %i.arh, align 4, !tbaa !72
  %index.next367 = add nuw i64 %index362, 8       ; 2 uses
  %i.ari = icmp eq i64 %index.next367, %n.vec360
  br i1 %i.ari, label %middle.block368, label %vector.body361, !llvm.loop !131

middle.block368:                                  ; preds = %vector.body361
  %cmp.n369 = icmp eq i64 %i.aqw, %n.vec360
  br i1 %cmp.n369, label %.loopexit.i186.i.i, label %.lr.ph58.i190.i.i.preheader395

.lr.ph58.i190.i.i.preheader395:                   ; preds = %vector.memcheck351, %.lr.ph58.i190.i.i.preheader, %middle.block368
  %.03757.i191.i.i.ph = phi ptr [ %i.aqk, %vector.memcheck351 ], [ %i.aqk, %.lr.ph58.i190.i.i.preheader ], [ %i.ard, %middle.block368 ]
  %.03856.i192.i.i.ph = phi ptr [ %.040.lcssa.i175.i.i, %vector.memcheck351 ], [ %.040.lcssa.i175.i.i, %.lr.ph58.i190.i.i.preheader ], [ %i.are, %middle.block368 ]
  br label %.lr.ph58.i190.i.i

.lr.ph58.i190.i.i:                                ; preds = %.lr.ph58.i190.i.i.preheader395, %.lr.ph58.i190.i.i
  %.03757.i191.i.i = phi ptr [ %.037.i193.i.i, %.lr.ph58.i190.i.i ], [ %.03757.i191.i.i.ph, %.lr.ph58.i190.i.i.preheader395 ] ; 2 uses
  %.03856.i192.i.i = phi ptr [ %i.ark, %.lr.ph58.i190.i.i ], [ %.03856.i192.i.i.ph, %.lr.ph58.i190.i.i.preheader395 ] ; 2 uses
  %i.arj = load i32, ptr %.03757.i191.i.i, align 4, !tbaa !72
  %i.ark = getelementptr inbounds nuw i8, ptr %.03856.i192.i.i, i64 4 ; 2 uses
  store i32 %i.arj, ptr %.03856.i192.i.i, align 4, !tbaa !72
  %.037.i193.i.i = getelementptr inbounds nuw i8, ptr %.03757.i191.i.i, i64 4 ; 2 uses
  %.not47.i194.i.i = icmp eq ptr %.037.i193.i.i, %i.aqe
  br i1 %.not47.i194.i.i, label %.loopexit.i186.i.i, label %.lr.ph58.i190.i.i, !llvm.loop !132

.lr.ph.i180.i.i:                                  ; preds = %.preheader48.i178.i.i, %bb.hm
  %.053.i181.i.i = phi ptr [ %i.arn, %bb.hm ], [ %.040.lcssa.i175.i.i, %.preheader48.i178.i.i ] ; 3 uses
  %.152.i182.i.i = phi ptr [ %.2.i184.i.i, %bb.hm ], [ %.040.lcssa.i175.i.i, %.preheader48.i178.i.i ] ; 3 uses
  %.not46.i183.i.i = icmp eq ptr %.053.i181.i.i, %.041.i168.i.i
  br i1 %.not46.i183.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph.i180.i.i
  %i.arl = load i32, ptr %.053.i181.i.i, align 4, !tbaa !72
  %i.arm = getelementptr inbounds nuw i8, ptr %.152.i182.i.i, i64 4
  store i32 %i.arl, ptr %.152.i182.i.i, align 4, !tbaa !72
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %.lr.ph.i180.i.i
  %.2.i184.i.i = phi ptr [ %i.arm, %bb.hl ], [ %.152.i182.i.i, %.lr.ph.i180.i.i ] ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.053.i181.i.i, i64 4 ; 2 uses
  %.not45.i185.i.i = icmp eq ptr %i.arn, %i.aqe
  br i1 %.not45.i185.i.i, label %.loopexit.i186.i.i, label %.lr.ph.i180.i.i, !llvm.loop !130

.loopexit.i186.i.i:                               ; preds = %bb.hm, %.lr.ph58.i190.i.i, %middle.block368, %.preheader.i188.i.i, %.preheader48.i178.i.i
  %.3.i187.i.i = phi ptr [ %i.ark, %.lr.ph58.i190.i.i ], [ %.040.lcssa.i175.i.i, %.preheader.i188.i.i ], [ %.040.lcssa.i175.i.i, %.preheader48.i178.i.i ], [ %i.are, %middle.block368 ], [ %.2.i184.i.i, %bb.hm ] ; 2 uses
  %i.aro = icmp eq ptr %.3.i187.i.i, %i.aqe
  br i1 %i.aro, label %sweep_remove.exit.i.i, label %sweep_remove.exit.sink.split.i.i

sweep_remove.exit.sink.split.i.i:                 ; preds = %.loopexit.i186.i.i, %.loopexit.i.i.i
  %.3.i187.sink.i.i = phi ptr [ %.3.i.i.i, %.loopexit.i.i.i ], [ %.3.i187.i.i, %.loopexit.i186.i.i ]
  %.0118.ph.i.i = phi i32 [ %i.ajt, %.loopexit.i.i.i ], [ %i.ajv, %.loopexit.i186.i.i ]
  store ptr %.3.i187.sink.i.i, ptr %i.sk, align 8, !tbaa !79
  br label %sweep_remove.exit.i.i

sweep_remove.exit.i.i:                            ; preds = %sweep_remove.exit.sink.split.i.i, %.loopexit.i186.i.i, %.loopexit.i.i.i
  %.0118.i.i = phi i32 [ %i.ajv, %.loopexit.i186.i.i ], [ %i.ajt, %.loopexit.i.i.i ], [ %.0118.ph.i.i, %sweep_remove.exit.sink.split.i.i ]
  %i.arp = lshr i32 %.0118.i.i, 1                 ; 8 uses
  %i.arq = load ptr, ptr %2, align 8, !tbaa !70
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 184
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !159
  %i.art = zext nneg i32 %i.arp to i64            ; 4 uses
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %i.art
  %i.arv = load i16, ptr %i.aru, align 4
  %i.arw = trunc i16 %i.arv to i1
  br i1 %i.arw, label %bb.hn, label %sweep_equivalence_candidates.exit.i

bb.hn:                                            ; preds = %sweep_remove.exit.i.i
  %i.arx = load ptr, ptr %i.ba, align 8, !tbaa !148 ; 4 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.art ; 2 uses
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !72 ; 4 uses
  %.not.i196.i.i = icmp eq i32 %i.arz, -1
  br i1 %.not.i196.i.i, label %bb.hv, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.asa = load ptr, ptr %i.at, align 8, !tbaa !147 ; 2 uses
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %i.art ; 2 uses
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !72 ; 3 uses
  %i.asd = zext i32 %i.arz to i64
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %i.asd
  store i32 %i.asc, ptr %i.ase, align 4, !tbaa !72
  %i.asf = icmp eq i32 %i.asc, -1
  br i1 %i.asf, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  store i32 %i.arz, ptr %i.bf, align 8, !tbaa !150
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.asg = zext i32 %i.asc to i64
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.asg
  store i32 %i.arz, ptr %i.ash, align 4, !tbaa !72
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.asi = load i32, ptr %i.be, align 4, !tbaa !149 ; 3 uses
  %i.asj = icmp eq i32 %i.asi, -1
  br i1 %i.asj, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  store i32 %i.arp, ptr %i.bf, align 8, !tbaa !150
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hr
  %i.ask = zext i32 %i.asi to i64
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.ask
  store i32 %i.arp, ptr %i.asl, align 4, !tbaa !72
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  store i32 %i.asi, ptr %i.asb, align 4, !tbaa !72
  store i32 -1, ptr %i.ary, align 4, !tbaa !72
  store i32 %i.arp, ptr %i.be, align 4, !tbaa !149
  br label %sweep_equivalence_candidates.exit.i

bb.hv:                                            ; preds = %bb.hn
  %i.asm = load i32, ptr %i.be, align 4, !tbaa !149 ; 4 uses
  %.not48.i.i.i57 = icmp eq i32 %i.asm, %i.arp
  br i1 %.not48.i.i.i57, label %sweep_equivalence_candidates.exit.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.asn = icmp eq i32 %i.asm, -1
  br i1 %i.asn, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store i32 %i.arp, ptr %i.bf, align 8, !tbaa !150
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw
  %i.aso = zext i32 %i.asm to i64
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.aso
  store i32 %i.arp, ptr %i.asp, align 4, !tbaa !72
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.asq = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.asq, i64 %i.art
  store i32 %i.asm, ptr %i.asr, align 4, !tbaa !72
  store i32 %i.arp, ptr %i.be, align 4, !tbaa !149
  br label %sweep_equivalence_candidates.exit.i

bb.ia:                                            ; preds = %bb.fp
  store ptr %i.ajl, ptr %i.sk, align 8, !tbaa !90
  br label %sweep_equivalence_candidates.exit.i

sweep_equivalence_candidates.exit.i:              ; preds = %bb.ia, %bb.hz, %bb.hv, %bb.hu, %sweep_remove.exit.i.i, %bb.gi, %bb.gf, %.critedge132.i.i, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.fy, %bb.fx, %bb.fw, %bb.fv
  %i.ass = load ptr, ptr %i.sm, align 8, !tbaa !93
  %i.ast = load ptr, ptr %i.sk, align 8, !tbaa !90
  %.not146.i = icmp eq ptr %i.ass, %i.ast
  br i1 %.not146.i, label %.loopexit.i, label %.lr.ph244.i, !llvm.loop !133

bb.ib:                                            ; preds = %.critedge262.i
  call fastcc void @save_add_clear_core(ptr noundef nonnull %2)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %sweep_equivalence_candidates.exit.i, %bb.fo, %bb.fn, %kissat_terminated.exit202.i, %bb.ey, %kissat_terminated.exit190.i, %.lr.ph244.i, %bb.ek, %kissat_terminated.exit183.i, %bb.dy, %kissat_terminated.exit.i, %bb.dt, %bb.ib, %bb.et, %.critedge262.i
  %i.asu = load ptr, ptr %2, align 8, !tbaa !70   ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 3768 ; 2 uses
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !76
  call void @kitten_clear(ptr noundef %i.asw) #6
  %i.asx = load ptr, ptr %i.asv, align 8, !tbaa !76
  call void @kitten_track_antecedents(ptr noundef %i.asx) #6
  %i.asy = load ptr, ptr %i.bg, align 8, !tbaa !172 ; 3 uses
  %i.asz = load ptr, ptr %i.rz, align 8, !tbaa !170 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.asy, %i.asz
end_hunk_0
