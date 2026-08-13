inline.NumInlined: 101
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Wlc_NtkSimulate:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph.i173.prol.loopexit, label %.lr.ph.i173.prol

.lr.ph.i173.prol:                                 ; preds = %.lr.ph.i173.preheader, %.lr.ph.i173.prol
  %indvars.iv.i174.prol = phi i64 [ %indvars.iv.next.i175.prol, %.lr.ph.i173.prol ], [ %indvars.iv.i174.ph, %.lr.ph.i173.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i173.prol ], [ 0, %.lr.ph.i173.preheader ]
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.i174.prol
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !64
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv.i174.prol
  store i64 %i.rx, ptr %i.ry, align 8, !tbaa !64
  %indvars.iv.next.i175.prol = add nuw nsw i64 %indvars.iv.i174.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i173.prol.loopexit, label %.lr.ph.i173.prol, !llvm.loop !97

.lr.ph.i173.prol.loopexit:                        ; preds = %.lr.ph.i173.prol, %.lr.ph.i173.preheader
  %indvars.iv.i174.unr = phi i64 [ %indvars.iv.i174.ph, %.lr.ph.i173.preheader ], [ %indvars.iv.next.i175.prol, %.lr.ph.i173.prol ]
  %i.rz = sub nsw i64 %indvars.iv.i174.ph, %wide.trip.count.i172
  %i.sa = icmp ugt i64 %i.rz, -4
  br i1 %i.sa, label %Wlc_ObjSimAnd.exit, label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %.lr.ph.i173.prol.loopexit, %.lr.ph.i173
  %indvars.iv.i174 = phi i64 [ %indvars.iv.next.i175.3, %.lr.ph.i173 ], [ %indvars.iv.i174.unr, %.lr.ph.i173.prol.loopexit ] ; 6 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.i174
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !64
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv.i174
  store i64 %i.sc, ptr %i.sd, align 8, !tbaa !64
  %indvars.iv.next.i175 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.next.i175
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv.next.i175
  store i64 %i.sf, ptr %i.sg, align 8, !tbaa !64
  %indvars.iv.next.i175.1 = add nuw nsw i64 %indvars.iv.i174, 2 ; 2 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.next.i175.1
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !64
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv.next.i175.1
  store i64 %i.si, ptr %i.sj, align 8, !tbaa !64
  %indvars.iv.next.i175.2 = add nuw nsw i64 %indvars.iv.i174, 3 ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.next.i175.2
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !64
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv.next.i175.2
  store i64 %i.sl, ptr %i.sm, align 8, !tbaa !64
  %indvars.iv.next.i175.3 = add nuw nsw i64 %indvars.iv.i174, 4 ; 2 uses
  %exitcond.not.i176.3 = icmp eq i64 %indvars.iv.next.i175.3, %wide.trip.count.i172
  br i1 %exitcond.not.i176.3, label %Wlc_ObjSimAnd.exit, label %.lr.ph.i173, !llvm.loop !98

Wlc_ObjSimAnd.exit.loopexit249:                   ; preds = %.lr.ph.i164
  %.pre314 = load i32, ptr %i.j, align 8, !tbaa !26
  br label %Wlc_ObjSimAnd.exit

Wlc_ObjSimAnd.exit:                               ; preds = %.lr.ph.i173.prol.loopexit, %.lr.ph.i173, %.lr.ph.i158.prol.loopexit, %.lr.ph.i158, %.lr.ph31.i.prol.loopexit, %.lr.ph31.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph79.i.prol.loopexit, %.lr.ph79.i, %.lr.ph81.i.prol.loopexit, %.lr.ph81.i, %.lr.ph83.i.prol.loopexit, %.lr.ph83.i, %middle.block490, %middle.block476, %middle.block462, %middle.block448, %middle.block430, %middle.block412, %middle.block394, %Wlc_ObjSimAnd.exit.loopexit249, %bb.ad, %Gia_ObjIsRo.exit, %bb.ae, %.preheader.i162, %.preheader27.i, %.preheader.i, %.preheader71.i, %.preheader73.i, %.preheader75.i
  %i.sn = phi i32 [ %i.gm, %.preheader75.i ], [ %i.gm, %middle.block412 ], [ %.pre314, %Wlc_ObjSimAnd.exit.loopexit249 ], [ %i.gm, %middle.block394 ], [ %i.gm, %middle.block476 ], [ %i.gm, %middle.block462 ], [ %i.gm, %middle.block448 ], [ %i.gm, %middle.block430 ], [ %i.gm, %.preheader73.i ], [ %i.gm, %bb.ad ], [ %i.gm, %Gia_ObjIsRo.exit ], [ %i.gm, %bb.ae ], [ %i.gm, %.preheader.i162 ], [ %i.gm, %.preheader27.i ], [ %i.gm, %.preheader.i ], [ %i.gm, %.preheader71.i ], [ %i.gm, %middle.block490 ], [ %i.gm, %.lr.ph.i158.prol.loopexit ], [ %i.gm, %.lr.ph83.i.prol.loopexit ], [ %i.gm, %.lr.ph81.i.prol.loopexit ], [ %i.gm, %.lr.ph79.i.prol.loopexit ], [ %i.gm, %.lr.ph.i.prol.loopexit ], [ %i.gm, %.lr.ph31.i.prol.loopexit ], [ %i.gm, %.lr.ph83.i ], [ %i.gm, %.lr.ph81.i ], [ %i.gm, %.lr.ph79.i ], [ %i.gm, %.lr.ph.i ], [ %i.gm, %.lr.ph31.i ], [ %i.gm, %.lr.ph.i158 ], [ %i.gm, %.lr.ph.i173 ], [ %i.gm, %.lr.ph.i173.prol.loopexit ] ; 2 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.so = sext i32 %i.sn to i64
  %i.sp = icmp slt i64 %indvars.iv.next258, %i.so
  br i1 %i.sp, label %.lr.ph204, label %.critedge2.preheader, !llvm.loop !99

.split:                                           ; preds = %.split.preheader, %.split215.split
  %indvars.iv264 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next265, %.split215.split ] ; 2 uses
  %.1105227 = phi i32 [ %.0104238, %.split.preheader ], [ %.3.lcssa, %.split215.split ] ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.val121, i64 %indvars.iv264
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !53
  %i.ss = sext i32 %i.sr to i64                   ; 2 uses
  %i.st = getelementptr inbounds [24 x i8], ptr %.val123, i64 %i.ss ; 2 uses
  %i.su = getelementptr i8, ptr %i.st, i64 8
  %.val125 = load i32, ptr %i.su, align 8, !tbaa !59
  %i.sv = getelementptr i8, ptr %i.st, i64 12
  %.val126 = load i32, ptr %i.sv, align 4, !tbaa !61
  %i.sw = sub nsw i32 %.val125, %.val126
  %i.sx = tail call i32 @llvm.abs.i32(i32 %i.sw, i1 true) ; 2 uses
  %i.sy = getelementptr inbounds [4 x i8], ptr %.val120, i64 %i.ss
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !53
  %i.ta = sext i32 %i.sz to i64
  %i.tb = add nuw i32 %i.sx, 1
  %wide.trip.count = zext i32 %i.tb to i64        ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.val119, i64 %i.ta ; 2 uses
  %min.iters.check368 = icmp samesign ult i32 %i.sx, 7
  br i1 %min.iters.check368, label %.loopexit186.preheader, label %vector.ph369

vector.ph369:                                     ; preds = %.split
  %n.vec370 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %i.tc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1105227, i64 0
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next376, %vector.body371 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.tc, %vector.ph369 ], [ %i.tj, %vector.body371 ]
  %vec.phi373 = phi <4 x i32> [ zeroinitializer, %vector.ph369 ], [ %i.tk, %vector.body371 ]
  %i.td = getelementptr [4 x i8], ptr %invariant.gep, i64 %index372 ; 2 uses
  %i.te = getelementptr i8, ptr %i.td, i64 16
  %wide.load374 = load <4 x i32>, ptr %i.td, align 4, !tbaa !53
  %wide.load375 = load <4 x i32>, ptr %i.te, align 4, !tbaa !53
  %i.tf = icmp eq <4 x i32> %wide.load374, splat (i32 -1)
  %i.tg = icmp eq <4 x i32> %wide.load375, splat (i32 -1)
  %i.th = zext <4 x i1> %i.tf to <4 x i32>
  %i.ti = zext <4 x i1> %i.tg to <4 x i32>
  %i.tj = add <4 x i32> %vec.phi, %i.th           ; 2 uses
  %i.tk = add <4 x i32> %vec.phi373, %i.ti        ; 2 uses
  %index.next376 = add nuw i64 %index372, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next376, %n.vec370
  br i1 %i.tl, label %middle.block377, label %vector.body371, !llvm.loop !100

middle.block377:                                  ; preds = %vector.body371
  %bin.rdx = add <4 x i32> %i.tk, %i.tj
  %i.tm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n378 = icmp eq i64 %n.vec370, %wide.trip.count
  br i1 %cmp.n378, label %.split215.split, label %.loopexit186.preheader

.loopexit186.preheader:                           ; preds = %.split, %middle.block377
  %indvars.iv260.ph = phi i64 [ 0, %.split ], [ %n.vec370, %middle.block377 ]
  %.2106209.ph = phi i32 [ %.1105227, %.split ], [ %i.tm, %middle.block377 ]
  br label %.loopexit186

.loopexit186:                                     ; preds = %.loopexit186.preheader, %.loopexit186
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %.loopexit186 ], [ %indvars.iv260.ph, %.loopexit186.preheader ] ; 2 uses
  %.2106209 = phi i32 [ %.3, %.loopexit186 ], [ %.2106209.ph, %.loopexit186.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv260
  %i.tn = load i32, ptr %gep, align 4, !tbaa !53
  %i.to = icmp eq i32 %i.tn, -1
  %i.tp = zext i1 %i.to to i32
  %.3 = add nsw i32 %.2106209, %i.tp              ; 2 uses
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count
  br i1 %exitcond263.not, label %.split215.split, label %.loopexit186, !llvm.loop !101

.split215.split:                                  ; preds = %.loopexit186, %middle.block377
  %.3.lcssa = phi i32 [ %i.tm, %middle.block377 ], [ %.3, %.loopexit186 ] ; 2 uses
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %.critedge4, label %.split, !llvm.loop !75

.critedge4:                                       ; preds = %.split215.split, %.split215.us.us, %.critedge2.preheader
  %.1105.lcssa = phi i32 [ %.0104238, %.critedge2.preheader ], [ %.3.us.us.us, %.split215.us.us ], [ %.3.lcssa, %.split215.split ] ; 3 uses
  %i.tq = icmp eq i64 %indvars.iv307, 0
  %i.tr = icmp ne i32 %.1105.lcssa, 0
  %or.cond = select i1 %i.tq, i1 %i.tr, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge4
  %i.ts = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.1105.lcssa) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge4, %bb.af
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge, label %.preheader, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.ag, %.critedge
  %i.tt = load ptr, ptr %i.b, align 8, !tbaa !21  ; 3 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %Vec_WrdFreeP.exit179, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !23 ; 2 uses
  %.not.i177 = icmp eq ptr %i.tw, null
  br i1 %.not.i177, label %bb.ai, label %.thread.i178

.thread.i178:                                     ; preds = %bb.ah
  tail call void @free(ptr noundef nonnull %i.tw) #13
  %i.tx = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  store ptr null, ptr %i.ty, align 8, !tbaa !23
  br label %bb.ai

bb.ai:                                            ; preds = %.thread.i178, %bb.ah
  %i.tz = phi ptr [ %i.tx, %.thread.i178 ], [ %i.tt, %bb.ah ]
  tail call void @free(ptr noundef nonnull %i.tz) #13
  store ptr null, ptr %i.b, align 8, !tbaa !21
  br label %Vec_WrdFreeP.exit179

Vec_WrdFreeP.exit179:                             ; preds = %._crit_edge, %bb.ai
  store i32 0, ptr %i.v, align 8, !tbaa !49
  tail call void @Gia_ManStop(ptr noundef nonnull %i.a) #13
  ret ptr %i.x
}

declare ptr @Wlc_NtkBitBlast(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @Gia_ManRandomW(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define void @Wlc_NtkSimulatePrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader36.lr.ph, label %._crit_edge46

.preheader36.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %0, i64 640
  %i.f = getelementptr i8, ptr %2, i64 8
  br i1 %i.b, label %.preheader36.us, label %.preheader36

.preheader36.us:                                  ; preds = %.preheader36.lr.ph, %._crit_edge.us
  %.045.us = phi i32 [ %i.ak, %._crit_edge.us ], [ 0, %.preheader36.lr.ph ]
  %.02444.us = phi i32 [ %7, %._crit_edge.us ], [ 0, %.preheader36.lr.ph ]
  br label %.preheader35.us

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv49 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next50, %bb.d ] ; 3 uses
  %.val30.us = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val30.us, i64 %indvars.iv49
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %.val31.us = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %.val31.us, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val32.us = load i32, ptr %i.k, align 8, !tbaa !59
  %i.l = getelementptr i8, ptr %i.j, i64 12
  %.val33.us = load i32, ptr %i.l, align 4, !tbaa !61
  %i.m = sub i32 %.val32.us, %.val33.us
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 false)
  %i.o = add nuw i32 %i.n, 1
  %i.p = zext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.val34.us = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val34.us, i64 %indvars.iv49
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val2.i.us = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.t = and i64 %indvars.iv.next, 4294967295
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.us, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ai
  %i.x = load i32, ptr %i.w, align 4, !tbaa !53
  %i.y = lshr i32 %i.x, %i.aj
  %i.z = and i32 %i.y, 1
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.z) ; 0 uses
  %i.ab = trunc nuw i64 %indvars.iv to i32
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.c, label %bb.d, !llvm.loop !103

bb.d:                                             ; preds = %bb.c
  %putchar29.us = tail call i32 @putchar(i32 32)  ; 0 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %.val.us = load i32, ptr %i.c, align 4, !tbaa !50
  %i.ad = sext i32 %.val.us to i64
  %i.ae = icmp slt i64 %indvars.iv.next50, %i.ad
  br i1 %i.ae, label %bb.b, label %.critedge.us, !llvm.loop !104

.critedge.us:                                     ; preds = %bb.d, %.preheader.us
  %i.af = add i32 %.241.us, 1                     ; 2 uses
  %putchar28.us = tail call i32 @putchar(i32 10)  ; 0 uses
  %exitcond53.not = icmp eq i32 %i.af, %7
  br i1 %exitcond53.not, label %5, label %.preheader.us, !llvm.loop !105

5:                                                ; preds = %.critedge.us
  %6 = add nuw nsw i32 %.02343.us, 1              ; 2 uses
  %exitcond54.not = icmp eq i32 %6, %3
  br i1 %exitcond54.not, label %._crit_edge.us, label %.preheader35.us, !llvm.loop !106

.preheader.us:                                    ; preds = %.preheader35.us, %.critedge.us
  %.241.us = phi i32 [ %.142.us, %.preheader35.us ], [ %i.af, %.critedge.us ] ; 3 uses
  %.val38.us = load i32, ptr %i.c, align 4, !tbaa !50
  %i.ag = icmp sgt i32 %.val38.us, 0
  br i1 %i.ag, label %.lr.ph.us, label %.critedge.us

.preheader35.us:                                  ; preds = %.preheader36.us, %5
  %.02343.us = phi i32 [ 0, %.preheader36.us ], [ %6, %5 ]
  %.142.us = phi i32 [ %.02444.us, %.preheader36.us ], [ %7, %5 ] ; 2 uses
  %7 = add i32 %.142.us, 64                       ; 3 uses
  br label %.preheader.us

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.ah = ashr i32 %.241.us, 5
  %i.ai = sext i32 %i.ah to i64
  %i.aj = and i32 %.241.us, 31
  br label %bb.b

._crit_edge.us:                                   ; preds = %5
  %i.ak = add nuw nsw i32 %.045.us, 1             ; 2 uses
  %putchar.us = tail call i32 @putchar(i32 10)    ; 0 uses
  %exitcond55.not = icmp eq i32 %i.ak, %4
  br i1 %exitcond55.not, label %._crit_edge46, label %.preheader36.us, !llvm.loop !107

.preheader36:                                     ; preds = %.preheader36.lr.ph, %.preheader36
  %.045 = phi i32 [ %i.al, %.preheader36 ], [ 0, %.preheader36.lr.ph ]
  %i.al = add nuw nsw i32 %.045, 1                ; 2 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %exitcond.not = icmp eq i32 %i.al, %4
  br i1 %exitcond.not, label %._crit_edge46, label %.preheader36, !llvm.loop !107

._crit_edge46:                                    ; preds = %.preheader36, %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_NtkSimulateTest(ptr noundef %0) local_unnamed_addr #2 {
Vec_IntFree.exit:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 16, ptr %i.a, align 8, !tbaa !108
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !52
  store i32 1, ptr %i.c, align 4, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 2, ptr %i.e, align 4, !tbaa !53
  store i32 3, ptr %i.b, align 4, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 3, ptr %i.f, align 4, !tbaa !53
  %i.g = tail call ptr @Wlc_NtkSimulate(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 2) ; 2 uses
  tail call void @Wlc_NtkSimulatePrint(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.g, i32 noundef 2, i32 noundef 2)
  tail call void @Wlc_NtkDeleteSim(ptr noundef %i.g)
  tail call void @free(ptr noundef nonnull %i.c) #13
  tail call void @free(ptr noundef nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 4}
!9 = !{!"Vec_Vec_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 8}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !5, i64 4}
!15 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!16 = !{!15, !10, i64 8}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!23 = !{!24, !25, i64 8}
!24 = !{!"Vec_Wrd_t_", !5, i64 0, !5, i64 4, !25, i64 8}
!25 = !{!"p1 long", !11, i64 0}
!26 = !{!27, !5, i64 24}
!27 = !{!"Gia_Man_t_", !28, i64 0, !28, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !29, i64 32, !30, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !31, i64 64, !31, i64 72, !32, i64 80, !32, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !32, i64 128, !30, i64 144, !30, i64 152, !31, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !30, i64 184, !33, i64 192, !30, i64 200, !30, i64 208, !30, i64 216, !5, i64 224, !5, i64 228, !30, i64 232, !5, i64 240, !31, i64 248, !31, i64 256, !31, i64 264, !34, i64 272, !34, i64 280, !31, i64 288, !11, i64 296, !31, i64 304, !31, i64 312, !35, i64 320, !28, i64 328, !31, i64 336, !31, i64 344, !31, i64 352, !31, i64 360, !31, i64 368, !36, i64 376, !36, i64 384, !37, i64 392, !32, i64 400, !32, i64 416, !31, i64 432, !31, i64 440, !31, i64 448, !31, i64 456, !31, i64 464, !31, i64 472, !31, i64 480, !31, i64 488, !31, i64 496, !31, i64 504, !31, i64 512, !28, i64 520, !38, i64 528, !39, i64 536, !40, i64 544, !40, i64 552, !31, i64 560, !31, i64 568, !31, i64 576, !31, i64 584, !31, i64 592, !5, i64 600, !41, i64 604, !41, i64 608, !31, i64 616, !30, i64 624, !5, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !31, i64 664, !31, i64 672, !31, i64 680, !31, i64 688, !31, i64 696, !31, i64 704, !31, i64 712, !31, i64 720, !31, i64 728, !42, i64 736, !40, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !43, i64 776, !43, i64 784, !11, i64 792, !30, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !22, i64 856, !22, i64 864, !22, i64 872, !22, i64 880, !31, i64 888, !31, i64 896, !31, i64 904, !44, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !31, i64 936, !5, i64 944, !5, i64 948, !31, i64 952, !31, i64 960, !37, i64 968, !22, i64 976, !31, i64 984, !31, i64 992, !5, i64 1000, !5, i64 1004, !22, i64 1008, !32, i64 1016, !32, i64 1032, !32, i64 1048, !45, i64 1064, !35, i64 1072, !35, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !35, i64 1104, !31, i64 1112, !31, i64 1120, !31, i64 1128, !37, i64 1136}
!28 = !{!"p1 omnipotent char", !11, i64 0}
!29 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!30 = !{!"p1 int", !11, i64 0}
!31 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!32 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !30, i64 8}
!33 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!34 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!35 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!36 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!37 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!38 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!39 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!40 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!41 = !{!"float", !6, i64 0}
!42 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!43 = !{!"long", !6, i64 0}
!44 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!45 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!46 = !{!24, !5, i64 0}
!47 = !{!24, !5, i64 4}
!48 = !{!27, !22, i64 856}
!49 = !{!27, !5, i64 840}
!50 = !{!32, !5, i64 4}
!51 = !{!15, !5, i64 0}
!52 = !{!32, !30, i64 8}
!53 = !{!5, !5, i64 0}
!54 = !{!55, !56, i64 640}
!55 = !{!"Wlc_Ntk_t_", !28, i64 0, !28, i64 8, !32, i64 16, !32, i64 32, !32, i64 48, !32, i64 64, !32, i64 80, !32, i64 96, !31, i64 112, !31, i64 120, !28, i64 128, !6, i64 136, !6, i64 376, !5, i64 616, !5, i64 620, !5, i64 624, !5, i64 628, !5, i64 632, !56, i64 640, !5, i64 648, !5, i64 652, !57, i64 656, !57, i64 664, !37, i64 672, !22, i64 680, !58, i64 688, !32, i64 696, !32, i64 712, !5, i64 728, !32, i64 736, !32, i64 752, !32, i64 768, !32, i64 784, !32, i64 800, !32, i64 816}
!56 = !{!"p1 _ZTS10Wlc_Obj_t_", !11, i64 0}
!57 = !{!"p1 _ZTS11Mem_Flex_t_", !11, i64 0}
!58 = !{!"p1 _ZTS10Abc_Nam_t_", !11, i64 0}
!59 = !{!60, !5, i64 8}
!60 = !{!"Wlc_Obj_t_", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16}
!61 = !{!60, !5, i64 12}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = !{!43, !43, i64 0}
!65 = distinct !{!65, !18, !66, !67}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !18, !66, !67}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !18, !66}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18, !66}
!75 = distinct !{!75, !18}
!76 = !{!27, !29, i64 32}
!77 = distinct !{!77, !18, !66, !67}
!78 = distinct !{!78, !18, !66, !67}
!79 = distinct !{!79, !18, !66}
!80 = distinct !{!80, !18, !66}
!81 = distinct !{!81, !18, !66, !67}
!82 = distinct !{!82, !18, !66, !67}
!83 = distinct !{!83, !69}
!84 = distinct !{!84, !18, !66}
!85 = distinct !{!85, !18, !66}
!86 = distinct !{!86, !18, !66, !67}
!87 = distinct !{!87, !69}
!88 = distinct !{!88, !18, !66, !67}
!89 = distinct !{!89, !69}
!90 = distinct !{!90, !18, !66}
!91 = distinct !{!91, !18, !66}
!92 = !{!27, !5, i64 16}
!93 = !{!27, !31, i64 64}
!94 = distinct !{!94, !18}
!95 = !{!27, !31, i64 72}
!96 = distinct !{!96, !18, !66, !67}
!97 = distinct !{!97, !69}
!98 = distinct !{!98, !18, !66}
!99 = distinct !{!99, !18}
!100 = distinct !{!100, !18, !66, !67}
!101 = distinct !{!101, !18, !67, !66}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !18}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18}
!107 = distinct !{!107, !18}
!108 = !{!32, !5, i64 0}
end_hunk_0
