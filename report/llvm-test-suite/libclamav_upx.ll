inline.NumInlined: 49
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@upx_inflate2b:bb.a
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !8
  %i.er = add nuw i64 %indvars.iv274, %indvars.iv
  %i.es = and i64 %i.er, 4294967295
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %i.es
  store i8 %i.eq, ptr %i.et, align 1, !tbaa !8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.eu = trunc nuw i64 %indvars.iv.next275 to i32
  %i.ev = add i32 %i.da, %i.eu
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !8
  %i.ez = add nuw i64 %indvars.iv.next275, %indvars.iv
  %i.fa = and i64 %i.ez, 4294967295
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 %i.fa
  store i8 %i.ey, ptr %i.fb, align 1, !tbaa !8
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next275.1, %i.cv
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fc = add i32 %i.cp, %i.l
  br label %bb.b

bb.ai:                                            ; preds = %bb.r
  %i.fd = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2b.magic, i32 noundef %i.l)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.w, %bb.x, %bb.u, %bb.v, %bb.af, %bb.ag, %bb.ah, %bb.q, %bb.d, %bb.e, %bb.g, %bb.h, %bb.m, %bb.n, %bb.k, %bb.l, %bb.ab, %bb.ac, %bb.z, %bb.aa, %bb.ai
  %.0111 = phi i32 [ %i.fd, %bb.ai ], [ -1, %bb.ab ], [ -1, %bb.m ], [ -1, %bb.d ], [ -1, %bb.aa ], [ -1, %bb.z ], [ -1, %bb.ac ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.q ], [ -1, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %bb.w ]
  ret i32 %.0111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pefromupx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.aq, label %.preheader381

.preheader381:                                    ; preds = %bb.a
  %i.d = load i32, ptr %7, align 4, !tbaa !4      ; 2 uses
  %.not391 = icmp eq i32 %i.d, 0
  %.pre = sub i32 %4, %6                          ; 3 uses
  br i1 %.not391, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader381
  %i.e = add i32 %1, -5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.f = phi i32 [ %i.d, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %i.g = phi i32 [ 1, %.lr.ph ], [ %i.s, %bb.e ]  ; 3 uses
  %i.h = add i32 %i.f, %.pre                      ; 3 uses
  %.not250 = icmp ugt i32 %i.h, %i.e
  br i1 %.not250, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.h, -2
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = icmp eq i8 %i.l, -115
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.h, -1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = icmp eq i8 %i.q, -66
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = add i32 %i.g, 1                          ; 2 uses
  %i.t = zext i32 %i.g to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.e, %.preheader381
  %.lcssa389 = phi i32 [ 1, %.preheader381 ], [ %i.s, %bb.e ] ; 4 uses
  %i.w = add i32 %.pre, 128                       ; 2 uses
  %i.x = add i32 %1, -8                           ; 2 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.f, label %.thread348

bb.f:                                             ; preds = %._crit_edge
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #6
  %i.ab = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ac = sub i32 %1, %.pre
  %i.ad = add i32 %i.ac, -136
  %i.ae = tail call ptr @cli_memstr(ptr noundef %i.aa, i32 noundef %i.ad, ptr noundef nonnull @.str.1, i32 noundef 2) #6 ; 2 uses
  %.not252394 = icmp eq ptr %i.ae, null
  br i1 %.not252394, label %.thread348, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.f, %bb.i
  %i.af = phi ptr [ %i.aw, %bb.i ], [ %i.ae, %bb.f ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp eq i8 %i.ah, -117
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph396
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = icmp eq i8 %i.ak, 7
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = zext i32 %4 to i64
  %i.ao = add i64 %i.ab, %i.an
  %reass.sub = sub i64 %i.am, %i.ao
  %i.ap = trunc i64 %reass.sub to i32
  %i.aq = add i32 %i.ap, 2
  %i.ar = add i32 %i.aq, %6
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %.lr.ph396
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %.neg = sub i64 %i.ab, %i.at
  %i.au = trunc i64 %.neg to i32
  %i.av = add i32 %i.x, %i.au
  %i.aw = tail call ptr @cli_memstr(ptr noundef nonnull %i.as, i32 noundef %i.av, ptr noundef nonnull @.str.1, i32 noundef 2) #6 ; 2 uses
  %.not252 = icmp eq ptr %i.aw, null
  br i1 %.not252, label %.thread348, label %.lr.ph396, !llvm.loop !18

.loopexit:                                        ; preds = %bb.d, %bb.h
  %i.ax = phi i32 [ %.lcssa389, %bb.h ], [ %i.g, %bb.d ] ; 7 uses
  %.0334 = phi i32 [ %i.ar, %bb.h ], [ %i.f, %bb.d ] ; 8 uses
  %i.ay = icmp ne i32 %.0334, 0
  %i.az = icmp ugt i32 %1, 3
  %or.cond5 = and i1 %i.az, %i.ay
  br i1 %or.cond5, label %bb.j, label %.thread348

bb.j:                                             ; preds = %.loopexit
  %i.ba = zext i32 %4 to i64
  %i.bb = zext i32 %6 to i64
  %i.bc = sub nsw i64 %i.ba, %i.bb
  %i.bd = zext i32 %.0334 to i64
  %i.be = add nsw i64 %i.bc, %i.bd                ; 3 uses
  %.not253 = icmp slt i64 %i.be, 0
  %i.bf = zext i32 %1 to i64
  %i.bg = add nuw nsw i64 %i.be, 4
  %.not254 = icmp sgt i64 %i.bg, %i.bf
  %or.cond284 = select i1 %.not253, i1 true, i1 %.not254
  br i1 %or.cond284, label %.thread348, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %.val306 = load i32, ptr %i.bh, align 1         ; 5 uses
  %i.bi = load i32, ptr %3, align 4, !tbaa !4
  %.fr452 = freeze i32 %i.bi                      ; 6 uses
  %.not255 = icmp ult i32 %.val306, %.fr452
  br i1 %.not255, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #6
  br label %.thread348

bb.m:                                             ; preds = %bb.k
  %i.bj = sext i32 %.val306 to i64
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj ; 2 uses
  %i.bl = icmp ult i32 %.fr452, 8
  %.not257405 = icmp slt i32 %.val306, 0
  %or.cond286406 = or i1 %i.bl, %.not257405
  br i1 %or.cond286406, label %.critedge, label %.lr.ph409.split.preheader

.lr.ph409.split.preheader:                        ; preds = %bb.m
  %i.bm = zext i32 %.fr452 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bm ; 3 uses
  br label %.lr.ph409.split

.lr.ph409.split:                                  ; preds = %.lr.ph409.split.preheader, %.critedge7
  %.0205407 = phi ptr [ %i.bu, %.critedge7 ], [ %i.bk, %.lr.ph409.split.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0205407, i64 8 ; 4 uses
  %.not258.not = icmp ugt ptr %i.bo, %i.bn
  br i1 %.not258.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph409.split
  %.0205.val = load i32, ptr %.0205407, align 1
  %.not259 = icmp eq i32 %.0205.val, 0
  br i1 %.not259, label %.critedge, label %.preheader380

.preheader380:                                    ; preds = %bb.n
  %.not263397 = icmp ult ptr %i.bo, %2
  br i1 %.not263397, label %.critedge7, label %.lr.ph399

.lr.ph399:                                        ; preds = %.preheader380, %.critedge9
  %.1206398 = phi ptr [ %i.bt, %.critedge9 ], [ %i.bo, %.preheader380 ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1206398, i64 2
  %.not264.not = icmp ugt ptr %i.bp, %i.bn
  br i1 %.not264.not, label %.critedge7, label %bb.o

bb.o:                                             ; preds = %.lr.ph399
  %i.bq = load i8, ptr %.1206398, align 1, !tbaa !8
  %.not265 = icmp eq i8 %i.bq, 0
  br i1 %.not265, label %.critedge7, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.o
  %scevgep = getelementptr nuw i8, ptr %.1206398, i64 1
  %.not268 = icmp uge ptr %scevgep, %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.p
  %.1206.pn = phi ptr [ %.2, %bb.p ], [ %.1206398, %.preheader.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1206.pn, i64 3
  %.not269 = icmp ule ptr %i.br, %i.bn
  %or.cond451 = select i1 %.not268, i1 %.not269, i1 false
  br i1 %or.cond451, label %bb.p, label %.critedge9

bb.p:                                             ; preds = %.preheader
  %.2 = getelementptr inbounds nuw i8, ptr %.1206.pn, i64 1 ; 2 uses
  %i.bs = load i8, ptr %.2, align 1, !tbaa !8
  %.not270 = icmp eq i8 %i.bs, 0
  br i1 %.not270, label %.critedge9, label %.preheader, !llvm.loop !19

.critedge9:                                       ; preds = %.preheader, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.1206.pn, i64 2 ; 3 uses
  %.not263 = icmp ult ptr %i.bt, %2
  br i1 %.not263, label %.critedge7, label %.lr.ph399, !llvm.loop !20

.critedge7:                                       ; preds = %bb.o, %.lr.ph399, %.critedge9, %.preheader380
  %.1206.lcssa = phi ptr [ %i.bo, %.preheader380 ], [ %i.bt, %.critedge9 ], [ %.1206398, %.lr.ph399 ], [ %.1206398, %bb.o ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.1206.lcssa, i64 1 ; 3 uses
  %.not257 = icmp ult ptr %i.bu, %2
  br i1 %.not257, label %.critedge, label %.lr.ph409.split, !llvm.loop !21

.critedge:                                        ; preds = %bb.n, %.critedge7, %.lr.ph409.split, %bb.m
  %.0205.lcssa = phi ptr [ %i.bk, %bb.m ], [ %.0205407, %.lr.ph409.split ], [ %i.bu, %.critedge7 ], [ %.0205407, %bb.n ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0205.lcssa, i64 4 ; 3 uses
  %i.bw = icmp ult i32 %.fr452, 248
  %.not.i = icmp ult ptr %i.bv, %2
  %or.cond.i = or i1 %i.bw, %.not.i
  br i1 %or.cond.i, label %checkpe.exit, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bx = getelementptr inbounds nuw i8, ptr %.0205.lcssa, i64 252 ; 3 uses
  %i.by = zext i32 %.fr452 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by ; 2 uses
  %.not39.not.i = icmp ugt ptr %i.bx, %i.bz
  br i1 %.not39.not.i, label %checkpe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val49.i = load i32, ptr %i.bv, align 1
  %.not40.i = icmp eq i32 %.val49.i, 17744
  br i1 %.not40.i, label %bb.s, label %checkpe.exit

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %.0205.lcssa, i64 60
  %.val.i = load i32, ptr %i.ca, align 1          ; 4 uses
  %.not41.i = icmp eq i32 %.val.i, 0
  br i1 %.not41.i, label %checkpe.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.0205.lcssa, i64 10
  %i.cc = load i16, ptr %i.cb, align 1            ; 2 uses
  %i.cd = zext i16 %i.cc to i32                   ; 3 uses
  %.not42.i = icmp eq i16 %i.cc, 0
  br i1 %.not42.i, label %checkpe.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = mul nuw nsw i32 %i.cd, 40               ; 2 uses
  %.not43.i = icmp ugt i32 %i.ce, %.fr452
  br i1 %.not43.i, label %checkpe.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cf
  %.not45.not.i = icmp ugt ptr %i.cg, %i.bz
  %spec.select.i = select i1 %.not45.not.i, ptr null, ptr %i.bx
  br label %checkpe.exit

checkpe.exit:                                     ; preds = %.critedge, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.5346 = phi i32 [ %i.ax, %.critedge ], [ %i.ax, %bb.q ], [ %i.ax, %bb.s ], [ 0, %bb.t ], [ %i.cd, %bb.u ], [ %i.cd, %bb.v ], [ %i.ax, %bb.r ]
  %.5339 = phi i32 [ %.0334, %.critedge ], [ %.0334, %bb.q ], [ 0, %bb.s ], [ %.val.i, %bb.t ], [ %.val.i, %bb.u ], [ %.val.i, %bb.v ], [ %.0334, %bb.r ]
  %.0.i = phi ptr [ null, %.critedge ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.u ], [ %spec.select.i, %bb.v ], [ null, %bb.r ] ; 2 uses
  %.not260 = icmp eq ptr %.0.i, null
  %spec.select290 = select i1 %.not260, ptr null, ptr %i.bv
  br label %.thread348

.thread348:                                       ; preds = %bb.i, %bb.f, %._crit_edge, %checkpe.exit, %bb.l, %bb.j, %.loopexit
  %.1342 = phi i32 [ %i.ax, %bb.j ], [ %.5346, %checkpe.exit ], [ %i.ax, %bb.l ], [ %i.ax, %.loopexit ], [ %.lcssa389, %._crit_edge ], [ %.lcssa389, %bb.f ], [ %.lcssa389, %bb.i ] ; 3 uses
  %.1335 = phi i32 [ %.0334, %bb.j ], [ %.5339, %checkpe.exit ], [ %.0334, %bb.l ], [ %.0334, %.loopexit ], [ 0, %._crit_edge ], [ 0, %bb.f ], [ 0, %bb.i ] ; 3 uses
  %.0207 = phi ptr [ undef, %bb.j ], [ %.0.i, %checkpe.exit ], [ undef, %bb.l ], [ undef, %.loopexit ], [ undef, %._crit_edge ], [ undef, %bb.f ], [ undef, %bb.i ]
  %.3 = phi ptr [ null, %bb.j ], [ %spec.select290, %checkpe.exit ], [ null, %bb.l ], [ null, %.loopexit ], [ null, %._crit_edge ], [ null, %bb.f ], [ null, %bb.i ] ; 2 uses
  %.0201 = phi i32 [ 0, %bb.j ], [ %.val306, %checkpe.exit ], [ %.val306, %bb.l ], [ 0, %.loopexit ], [ 0, %._crit_edge ], [ 0, %bb.f ], [ 0, %bb.i ]
  %i.ch = icmp eq ptr %.3, null
  %i.ci = icmp ugt i32 %8, 288
  %or.cond11 = and i1 %i.ci, %i.ch
  br i1 %or.cond11, label %.lr.ph422, label %bb.aa

.lr.ph422:                                        ; preds = %.thread348
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #6
  %i.cj = add i32 %8, -288
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = load i32, ptr %3, align 4, !tbaa !4     ; 3 uses
  %i.cm = icmp ult i32 %i.cl, 248
  %i.cn = zext i32 %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn ; 2 uses
  br i1 %i.cm, label %select.unfold.us.preheader, label %.lr.ph422.split.preheader

.lr.ph422.split.preheader:                        ; preds = %.lr.ph422
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck
  br label %.lr.ph422.split

select.unfold.us.preheader:                       ; preds = %.lr.ph422
  %i.cq = add i64 %i.a, %i.ck
  %i.cr = add i64 %i.cq, -1
  %i.cs = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 %i.cr)
  %i.ct = sub i64 0, %i.cs
  %scevgep470 = getelementptr i8, ptr %2, i64 %i.ct
  br label %checkpe.exit319

.lr.ph422.split:                                  ; preds = %.lr.ph422.split.preheader, %select.unfold
  %.4420 = phi ptr [ %i.dc, %select.unfold ], [ %i.cp, %.lr.ph422.split.preheader ] ; 6 uses
  %.2336419 = phi i32 [ %.6340.ph, %select.unfold ], [ %.1335, %.lr.ph422.split.preheader ] ; 2 uses
  %.2343418 = phi i32 [ %.6347.ph, %select.unfold ], [ %.1342, %.lr.ph422.split.preheader ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.4420, i64 248 ; 3 uses
  %.not39.not.i309 = icmp ugt ptr %i.cu, %i.co
  br i1 %.not39.not.i309, label %select.unfold, label %bb.w

bb.w:                                             ; preds = %.lr.ph422.split
  %.val49.i310 = load i32, ptr %.4420, align 1
  %.not40.i311 = icmp eq i32 %.val49.i310, 17744
  br i1 %.not40.i311, label %bb.x, label %select.unfold

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %.4420, i64 56
  %.val.i313 = load i32, ptr %i.cv, align 1       ; 4 uses
  %.not41.i314 = icmp eq i32 %.val.i313, 0
  br i1 %.not41.i314, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %.4420, i64 6
  %i.cx = load i16, ptr %i.cw, align 1            ; 2 uses
  %.not42.i315 = icmp eq i16 %i.cx, 0
  br i1 %.not42.i315, label %select.unfold, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = zext i16 %i.cx to i32                   ; 3 uses
  %i.cz = mul nuw nsw i32 %i.cy, 40               ; 2 uses
  %.not43.i316 = icmp ugt i32 %i.cz, %i.cl
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.da
  %.not45.not.i317 = icmp ugt ptr %i.db, %i.co
  %or.cond373 = select i1 %.not43.i316, i1 true, i1 %.not45.not.i317
  br i1 %or.cond373, label %select.unfold, label %checkpe.exit319

select.unfold:                                    ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %.lr.ph422.split
  %.6347.ph = phi i32 [ %.2343418, %.lr.ph422.split ], [ %.2343418, %bb.w ], [ %i.cy, %bb.z ], [ 0, %bb.y ], [ %.2343418, %bb.x ] ; 2 uses
  %.6340.ph = phi i32 [ %.2336419, %.lr.ph422.split ], [ %.2336419, %bb.w ], [ %.val.i313, %bb.z ], [ %.val.i313, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.4420, i64 -1 ; 3 uses
  %i.dd = icmp ugt ptr %i.dc, %2
  br i1 %i.dd, label %.lr.ph422.split, label %checkpe.exit319, !llvm.loop !22

checkpe.exit319:                                  ; preds = %select.unfold, %bb.z, %select.unfold.us.preheader
  %.4.lcssa = phi ptr [ %scevgep470, %select.unfold.us.preheader ], [ %.4420, %bb.z ], [ %i.dc, %select.unfold ] ; 2 uses
  %.3344 = phi i32 [ %.1342, %select.unfold.us.preheader ], [ %i.cy, %bb.z ], [ %.6347.ph, %select.unfold ]
  %.3337 = phi i32 [ %.1335, %select.unfold.us.preheader ], [ %.val.i313, %bb.z ], [ %.6340.ph, %select.unfold ]
  %.2209 = phi ptr [ null, %select.unfold.us.preheader ], [ %i.cu, %bb.z ], [ null, %select.unfold ]
  %i.de = ptrtoint ptr %.4.lcssa to i64
  %i.df = ptrtoint ptr %2 to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %.not272 = icmp eq i32 %i.dh, 0
  br i1 %.not272, label %.thread358, label %bb.aa

bb.aa:                                            ; preds = %checkpe.exit319, %.thread348
  %.4345 = phi i32 [ %.3344, %checkpe.exit319 ], [ %.1342, %.thread348 ] ; 8 uses
  %.4338 = phi i32 [ %.3337, %checkpe.exit319 ], [ %.1335, %.thread348 ] ; 9 uses
  %.3210 = phi ptr [ %.2209, %checkpe.exit319 ], [ %.0207, %.thread348 ]
  %.5 = phi ptr [ %.4.lcssa, %checkpe.exit319 ], [ %.3, %.thread348 ] ; 5 uses
  %.1202 = phi i32 [ %i.dh, %checkpe.exit319 ], [ %.0201, %.thread348 ]
  %.1202.fr = freeze i32 %.1202                   ; 3 uses
  %.not273 = icmp eq ptr %.5, null
  br i1 %.not273, label %.thread358, label %bb.ad

.thread358:                                       ; preds = %checkpe.exit319, %bb.aa
  %i.di = and i32 %8, 4095
  %.not274 = icmp eq i32 %i.di, 0
  %i.dj = select i1 %.not274, i32 0, i32 4096
  %i.dk = add i32 %i.dj, %8
  %i.dl = and i32 %i.dk, -4096                    ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #6
  %i.dm = or disjoint i32 %i.dl, 512              ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = tail call ptr @cli_calloc(i64 noundef %i.dn, i64 noundef 1) #6 ; 6 uses
  %.not275 = icmp eq ptr %i.do, null
  br i1 %.not275, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread358
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #6
  br label %bb.aq

bb.ac:                                            ; preds = %.thread358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.do, ptr noundef nonnull align 1 dereferenceable(208) @.str.6, i64 208, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.dp, ptr noundef nonnull align 1 dereferenceable(288) @.str.7, i64 288, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 512
  %i.dr = zext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %2, i64 %i.dr, i1 false)
  %i.ds = add i32 %8, 512
  %i.dt = zext i32 %i.ds to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.do, i64 %i.dt, i1 false)
  tail call void @free(ptr noundef nonnull %i.do) #6
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.dv = add i32 %i.dl, 4096
  store i32 %i.dv, ptr %i.du, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 464
end_hunk_0
