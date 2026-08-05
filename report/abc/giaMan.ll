inline.NumInlined: 920
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Gia_ManPrintNpnClasses:bb.a
  %storemerge328 = phi ptr [ %i.pd, %bb.bh ], [ %i.oz, %Vec_IntGrow.exit.i322 ] ; 2 uses
  %spec.select.sink.i320 = phi i32 [ %i.pa, %bb.bh ], [ 16, %Vec_IntGrow.exit.i322 ]
  store ptr %storemerge328, ptr %i.lq, align 8, !tbaa !34
  store i32 %spec.select.sink.i320, ptr %i.ln, align 8, !tbaa !33
  br label %Vec_IntPush.exit323

Vec_IntPush.exit323:                              ; preds = %Vec_IntPush.exit315.thread, %Vec_IntPush.exit315, %Vec_IntGrow.exit11.sink.split.i319
  %i.pf = phi i32 [ %i.oo, %Vec_IntPush.exit315 ], [ %i.pe, %Vec_IntGrow.exit11.sink.split.i319 ], [ 2, %Vec_IntPush.exit315.thread ]
  %i.pg = phi ptr [ %i.om, %Vec_IntPush.exit315 ], [ %storemerge328, %Vec_IntGrow.exit11.sink.split.i319 ], [ %i.mg, %Vec_IntPush.exit315.thread ] ; 4 uses
  %i.ph = add nsw i32 %i.mi, 3
  %i.pi = sext i32 %i.pf to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.pg, i64 %i.pi
  store i32 1, ptr %i.pj, align 4, !tbaa !102
  %.val275.pre = load ptr, ptr %i.ls, align 8, !tbaa !142
  br label %.critedge8

bb.bi:                                            ; preds = %._crit_edge366
  %i.pk = zext nneg i32 %.0247.lcssa to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !102
  %i.po = add nsw i32 %i.pn, 1
  store i32 %i.po, ptr %i.pm, align 4, !tbaa !102
  %i.pp = icmp sgt i32 %.0247.lcssa, 0
  br i1 %i.pp, label %.lr.ph374.preheader, label %.critedge6

.lr.ph374.preheader:                              ; preds = %bb.bi
  %i.pq = zext nneg i32 %.0247.lcssa to i64
  br label %.lr.ph374

.lr.ph374:                                        ; preds = %.lr.ph374.preheader, %bb.bj
  %indvars.iv423 = phi i64 [ %i.pq, %.lr.ph374.preheader ], [ %indvars.iv.next424, %bb.bj ] ; 4 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv423 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !102 ; 2 uses
  %i.pu = getelementptr i8, ptr %i.pr, i64 -4     ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !102 ; 2 uses
  %i.pw = icmp sgt i32 %i.pt, %i.pv
  br i1 %i.pw, label %bb.bj, label %.critedge6.loopexit

bb.bj:                                            ; preds = %.lr.ph374
  %indvars.iv.next424 = add nsw i64 %indvars.iv423, -3 ; 3 uses
  %i.px = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %indvars.iv.next424 ; 2 uses
  %i.py = load <2 x i32>, ptr %i.pr, align 4, !tbaa !102
  %i.pz = load <2 x i32>, ptr %i.px, align 4, !tbaa !102
  store <2 x i32> %i.pz, ptr %i.pr, align 4, !tbaa !102
  store <2 x i32> %i.py, ptr %i.px, align 4, !tbaa !102
  store i32 %i.pv, ptr %i.ps, align 4, !tbaa !102
  store i32 %i.pt, ptr %i.pu, align 4, !tbaa !102
  %i.qa = icmp sgt i64 %indvars.iv423, 3
  br i1 %i.qa, label %.lr.ph374, label %.critedge6.loopexit, !llvm.loop !163

.critedge6.loopexit:                              ; preds = %bb.bj, %.lr.ph374
  %.1248.lcssa.ph.in = phi i64 [ %indvars.iv423, %.lr.ph374 ], [ %indvars.iv.next424, %bb.bj ]
  %.1248.lcssa.ph = trunc i64 %.1248.lcssa.ph.in to i32
  br label %.critedge6

.critedge6:                                       ; preds = %.thread, %.critedge6.loopexit, %bb.bi
  %.1248.lcssa = phi i32 [ %.0247.lcssa, %bb.bi ], [ %.1248.lcssa.ph, %.critedge6.loopexit ], [ 0, %.thread ] ; 2 uses
  %i.qb = add nsw i32 %i.mi, -3                   ; 2 uses
  %i.qc = icmp slt i32 %.1248.lcssa, %i.qb
  br i1 %i.qc, label %.lr.ph379.preheader, label %.critedge8

.lr.ph379.preheader:                              ; preds = %.critedge6
  %i.qd = sext i32 %.1248.lcssa to i64
  %i.qe = sext i32 %i.qb to i64
  br label %.lr.ph379

.lr.ph379:                                        ; preds = %.lr.ph379.preheader, %bb.bk
  %indvars.iv427 = phi i64 [ %i.qd, %.lr.ph379.preheader ], [ %indvars.iv.next428, %bb.bk ] ; 2 uses
  %i.qf = getelementptr [4 x i8], ptr %i.mh, i64 %indvars.iv427 ; 4 uses
  %i.qg = getelementptr i8, ptr %i.qf, i64 8      ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !102 ; 2 uses
  %i.qi = getelementptr i8, ptr %i.qf, i64 20     ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !102 ; 2 uses
  %i.qk = icmp slt i32 %i.qh, %i.qj
  br i1 %i.qk, label %bb.bk, label %.critedge8

bb.bk:                                            ; preds = %.lr.ph379
  %indvars.iv.next428 = add nsw i64 %indvars.iv427, 3 ; 3 uses
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %indvars.iv.next428 ; 2 uses
  %i.qm = load <2 x i32>, ptr %i.ql, align 4, !tbaa !102
  %i.qn = load <2 x i32>, ptr %i.qf, align 4, !tbaa !102
  store <2 x i32> %i.qm, ptr %i.qf, align 4, !tbaa !102
  store <2 x i32> %i.qn, ptr %i.ql, align 4, !tbaa !102
  store i32 %i.qj, ptr %i.qg, align 4, !tbaa !102
  store i32 %i.qh, ptr %i.qi, align 4, !tbaa !102
  %i.qo = icmp slt i64 %indvars.iv.next428, %i.qe
  br i1 %i.qo, label %.lr.ph379, label %.critedge8, !llvm.loop !164

.critedge8:                                       ; preds = %bb.bk, %.lr.ph379, %.critedge6, %bb.aw, %Vec_IntPush.exit323
  %.val275 = phi ptr [ %.val275.pre, %Vec_IntPush.exit323 ], [ %.val275469, %bb.aw ], [ %.val275469, %.critedge6 ], [ %.val275469, %.lr.ph379 ], [ %.val275469, %bb.bk ] ; 5 uses
  %i.qp = phi ptr [ %i.pg, %Vec_IntPush.exit323 ], [ %i.mg, %bb.aw ], [ %i.mg, %.critedge6 ], [ %i.mg, %.lr.ph379 ], [ %i.mg, %bb.bk ] ; 2 uses
  %.val284466 = phi ptr [ %i.pg, %Vec_IntPush.exit323 ], [ %i.mh, %bb.aw ], [ %i.mh, %.critedge6 ], [ %i.mh, %.lr.ph379 ], [ %i.mh, %bb.bk ] ; 2 uses
  %.val270462 = phi ptr [ %i.pg, %Vec_IntPush.exit323 ], [ %.val270, %bb.aw ], [ %i.mh, %.critedge6 ], [ %i.mh, %.lr.ph379 ], [ %i.mh, %bb.bk ] ; 2 uses
  %i.qq = phi i32 [ %i.ph, %Vec_IntPush.exit323 ], [ %i.mi, %bb.aw ], [ %i.mi, %.critedge6 ], [ %i.mi, %.lr.ph379 ], [ %i.mi, %bb.bk ] ; 3 uses
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %i.qr = getelementptr i8, ptr %.val275, i64 8
  %.val275.val = load ptr, ptr %i.qr, align 8, !tbaa !34 ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.val275.val, i64 %indvars.iv435
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !102
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [4 x i8], ptr %.val275.val, i64 %i.qu ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !102
  %i.qx = sext i32 %i.qw to i64
  %i.qy = icmp slt i64 %indvars.iv.next432, %i.qx
  br i1 %i.qy, label %bb.at, label %..critedge4.loopexit_crit_edge, !llvm.loop !165

..critedge4.loopexit_crit_edge:                   ; preds = %.critedge8
  store i32 %i.qq, ptr %i.lo, align 4
  %.val.pre = load i32, ptr %i.o, align 8, !tbaa !31
  br label %.critedge4

.critedge4:                                       ; preds = %.preheader, %..critedge4.loopexit_crit_edge, %bb.as
  %.val = phi i32 [ %.val471, %.preheader ], [ %.val.pre, %..critedge4.loopexit_crit_edge ], [ %.val471, %bb.as ] ; 2 uses
  %.val275468 = phi ptr [ %.val275467, %.preheader ], [ %.val275, %..critedge4.loopexit_crit_edge ], [ %.val275467, %bb.as ]
  %i.qz = phi ptr [ %i.lt, %.preheader ], [ %i.qp, %..critedge4.loopexit_crit_edge ], [ %i.lt, %bb.as ] ; 4 uses
  %.val284464 = phi ptr [ %.val284463, %.preheader ], [ %.val284466, %..critedge4.loopexit_crit_edge ], [ %.val284463, %bb.as ]
  %.val270460 = phi ptr [ %.val270459, %.preheader ], [ %.val270462, %..critedge4.loopexit_crit_edge ], [ %.val270459, %bb.as ]
  %.promoted458 = phi i32 [ %.promoted, %.preheader ], [ %i.qq, %..critedge4.loopexit_crit_edge ], [ %.promoted, %bb.as ] ; 3 uses
  %.val275381455 = phi ptr [ %.val275381, %.preheader ], [ %.val275, %..critedge4.loopexit_crit_edge ], [ %.val275381, %bb.as ]
  %.val272453 = phi ptr [ %.val275381, %.preheader ], [ %.val275, %..critedge4.loopexit_crit_edge ], [ %.val272, %bb.as ]
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %i.ra = sext i32 %.val to i64
  %i.rb = icmp slt i64 %indvars.iv.next436, %i.ra
  br i1 %i.rb, label %bb.as, label %._crit_edge390, !llvm.loop !166

._crit_edge390:                                   ; preds = %.critedge4
  %i.rc = sdiv i32 %.promoted458, 3
  %i.rd = tail call noundef i32 @llvm.smin.i32(i32 %i.rc, i32 30)
  %i.re = mul nsw i32 %i.rd, 3
  %i.rf = icmp sgt i32 %.promoted458, 2
  br i1 %i.rf, label %.lr.ph393, label %._crit_edge394

.lr.ph393:                                        ; preds = %._crit_edge390, %.lr.ph393
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %.lr.ph393 ], [ 0, %._crit_edge390 ] ; 3 uses
  %i.rg = udiv i64 %indvars.iv439, 3
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv439 ; 3 uses
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !102
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !102
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !102
  %i.rn = trunc nuw i64 %i.rg to i32
  %i.ro = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %i.rn, i32 noundef %i.ri, i32 noundef %i.rk, i32 noundef %i.rm) ; 0 uses
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 3 ; 2 uses
  %i.rp = trunc nuw i64 %indvars.iv.next440 to i32
  %i.rq = icmp sgt i32 %i.re, %i.rp
  br i1 %i.rq, label %.lr.ph393, label %._crit_edge394, !llvm.loop !167

._crit_edge394:                                   ; preds = %.lr.ph393, %bb.ar, %._crit_edge390
  %.val285509 = phi ptr [ %i.lp, %bb.ar ], [ %i.qz, %._crit_edge390 ], [ %i.qz, %.lr.ph393 ] ; 2 uses
  %.not.i324 = icmp eq ptr %.val285509, null
  br i1 %.not.i324, label %Vec_IntFree.exit325, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge394
  tail call void @free(ptr noundef nonnull %.val285509) #29
  br label %Vec_IntFree.exit325

Vec_IntFree.exit325:                              ; preds = %._crit_edge394, %bb.bl
  tail call void @free(ptr noundef nonnull %i.ln) #29
  br label %bb.bm

bb.bm:                                            ; preds = %Vec_IntFree.exit325, %bb.aq
  %.not256 = icmp eq ptr %i.q, null
  br i1 %.not256, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @free(ptr noundef nonnull %i.q) #29
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare void @Gia_ManPrintPackingStats(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManPrintLutStats(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManPrintFlopClasses(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManPrintGateClasses(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManPrintObjClasses(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManCheckIntegrityWithBoxes(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Gia_ManDfsSlacksPrint(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Gia_ManDfsSlacks(ptr noundef %0) ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %.val44 = load i32, ptr %i.b, align 4, !tbaa !32 ; 10 uses
  %i.c = icmp eq i32 %.val44, 0
  %i.d = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %.val44, 0                  ; 2 uses
  %.val47 = load ptr, ptr %i.d, align 8, !tbaa !34 ; 17 uses
  br i1 %i.e, label %.lr.ph, label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader
  %i.f = load i32, ptr %.val47, align 4, !tbaa !102
  br label %Vec_IntFindMax.exit

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.val44 to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %.val44, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue99, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue99 ] ; 9 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %index ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !102 ; 5 uses
  %wide.load85 = load <4 x i32>, ptr %1, align 4, !tbaa !102 ; 5 uses
  %2 = icmp ne <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.h = icmp ne <4 x i32> %wide.load85, splat (i32 -1) ; 4 uses
  %i.i = extractelement <4 x i1> %2, i64 0
  br i1 %i.i, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %3 = extractelement <4 x i32> %wide.load, i64 0
  %4 = sdiv i32 %3, 10
  store i32 %4, ptr %i.g, align 4, !tbaa !102
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %5 = extractelement <4 x i1> %2, i64 1
  br i1 %5, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue
  %6 = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %index
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %8 = extractelement <4 x i32> %wide.load, i64 1
  %9 = sdiv i32 %8, 10
  store i32 %9, ptr %7, align 4, !tbaa !102
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue
  %10 = extractelement <4 x i1> %2, i64 2
  br i1 %10, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %11 = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = extractelement <4 x i32> %wide.load, i64 2
  %14 = sdiv i32 %13, 10
  store i32 %14, ptr %12, align 4, !tbaa !102
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %15 = extractelement <4 x i1> %2, i64 3
  br i1 %15, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %16 = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %index
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 12
  %18 = extractelement <4 x i32> %wide.load, i64 3
  %19 = sdiv i32 %18, 10
  store i32 %19, ptr %17, align 4, !tbaa !102
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %20 = extractelement <4 x i1> %i.h, i64 0
  br i1 %20, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  %21 = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %index
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.j = extractelement <4 x i32> %wide.load85, i64 0
  %i.k = sdiv i32 %i.j, 10
  store i32 %i.k, ptr %22, align 4, !tbaa !102
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.l = extractelement <4 x i1> %i.h, i64 1
  br i1 %i.l, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %index
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = extractelement <4 x i32> %wide.load85, i64 1
  %i.p = sdiv i32 %i.o, 10
  store i32 %i.p, ptr %i.n, align 4, !tbaa !102
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.q = extractelement <4 x i1> %i.h, i64 2
  br i1 %i.q, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = extractelement <4 x i32> %wide.load85, i64 2
  %i.u = sdiv i32 %i.t, 10
  store i32 %i.u, ptr %i.s, align 4, !tbaa !102
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.v = extractelement <4 x i1> %i.h, i64 3
  br i1 %i.v, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.y = extractelement <4 x i32> %wide.load85, i64 3
  %i.z = sdiv i32 %i.y, 10
  store i32 %i.z, ptr %i.x, align 4, !tbaa !102
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %pred.store.continue99
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %Vec_IntFree.exit59.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.ab) #29
  br label %Vec_IntFree.exit59.sink.split

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !102 ; 2 uses
  %.not41 = icmp eq i32 %i.ad, -1
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %scalar.ph
  %i.ae = sdiv i32 %i.ad, 10
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %scalar.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %scalar.ph, !llvm.loop !169

.critedge:                                        ; preds = %bb.e, %middle.block
  %i.af = load i32, ptr %.val47, align 4, !tbaa !102 ; 3 uses
  %.not84 = icmp eq i32 %.val44, 1
  br i1 %.not84, label %Vec_IntFindMax.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge
  %wide.trip.count.i = zext nneg i32 %.val44 to i64
  %i.ag = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check101 = icmp ult i32 %.val44, 9
  br i1 %min.iters.check101, label %.lr.ph.i.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.preheader.i
  %n.vec104 = and i64 %i.ag, -8                   ; 3 uses
  %i.ah = or disjoint i64 %n.vec104, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next110, %vector.body105 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph102 ], [ %i.al, %vector.body105 ]
  %vec.phi107 = phi <4 x i32> [ %broadcast.splat, %vector.ph102 ], [ %i.am, %vector.body105 ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %index106 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %wide.load108 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !102
  %wide.load109 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !102
  %i.al = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load108) ; 2 uses
  %i.am = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi107, <4 x i32> %wide.load109) ; 2 uses
  %index.next110 = add nuw i64 %index106, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next110, %n.vec104
  br i1 %i.an, label %middle.block111, label %vector.body105, !llvm.loop !170

middle.block111:                                  ; preds = %vector.body105
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.al, <4 x i32> %i.am)
  %i.ao = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n112 = icmp eq i64 %i.ag, %n.vec104
  br i1 %cmp.n112, label %Vec_IntFindMax.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block111
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.ah, %middle.block111 ]
  %.015.i.ph = phi i32 [ %i.af, %.lr.ph.preheader.i ], [ %i.ao, %middle.block111 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.015.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !102
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.015.i, i32 %i.aq) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFindMax.exit, label %.lr.ph.i, !llvm.loop !171

Vec_IntFindMax.exit:                              ; preds = %.lr.ph.i, %middle.block111, %.critedge.thread, %.critedge
  %.012.i = phi i32 [ %i.af, %.critedge ], [ %i.f, %.critedge.thread ], [ %i.ao, %middle.block111 ], [ %spec.select.i, %.lr.ph.i ] ; 3 uses
  %i.ar = add nsw i32 %.012.i, 1                  ; 5 uses
  %or.cond.i.i = icmp ult i32 %.012.i, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.ar ; 2 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntStart.exit, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %Vec_IntFindMax.exit
  %i.as = sext i32 %spec.store.select.i.i to i64
  %i.at = shl nsw i64 %i.as, 2
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.at) #28 ; 3 uses
  %.not.i50 = icmp eq ptr %i.au, null
  br i1 %.not.i50, label %Vec_IntStart.exit, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.av = sext i32 %i.ar to i64
  %i.aw = shl nsw i64 %i.av, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 %i.aw, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntFindMax.exit, %Vec_IntAlloc.exit.i, %bb.f
  %i.ax = phi ptr [ %i.au, %bb.f ], [ null, %Vec_IntAlloc.exit.i ], [ null, %Vec_IntFindMax.exit ] ; 8 uses
  br i1 %i.e, label %.lr.ph62, label %.critedge2

.lr.ph62:                                         ; preds = %Vec_IntStart.exit
  %wide.trip.count69 = zext nneg i32 %.val44 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count69, 1
  %i.ay = icmp eq i32 %.val44, 1
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %wide.trip.count69, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph62.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph62.new ], [ %indvars.iv.next67.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.1, %bb.k ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv66
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !102 ; 2 uses
  %.not = icmp eq i32 %i.ba, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv66
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !102 ; 2 uses
  %.not.1 = icmp eq i32 %i.bh, -1
  br i1 %.not.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !102
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !102
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge2.loopexit.unr-lcssa, label %bb.g, !llvm.loop !172

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next67.1, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod135 = trunc i32 %.val44 to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv66.epil.init
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !102 ; 2 uses
  %.not.epil = icmp eq i32 %i.bn, -1
  br i1 %.not.epil, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %.epil.preheader
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !102
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !102
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit.unr-lcssa, %bb.l, %.epil.preheader, %Vec_IntStart.exit
  %i.bs = icmp sgt i32 %.012.i, -1
  br i1 %i.bs, label %.lr.ph.i51, label %Vec_IntFree.exit57

.lr.ph.i51:                                       ; preds = %.critedge2
  %wide.trip.count.i52 = zext nneg i32 %i.ar to i64 ; 3 uses
  %min.iters.check115 = icmp ult i32 %i.ar, 8
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i51
  %n.vec118 = and i64 %wide.trip.count.i52, 2147483640 ; 3 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph116
  %index120 = phi i64 [ 0, %vector.ph116 ], [ %index.next125, %vector.body119 ] ; 2 uses
end_hunk_0
