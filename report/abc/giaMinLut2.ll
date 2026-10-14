Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMinLut2?download=true
inline.NumInlined: 405
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Abc_TtMinArray:bb.a

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.gu = phi i32 [ %.pre18.i.i, %bb.l ], [ %i.gm, %.lr.ph.i.i ] ; 2 uses
  %i.gv = phi ptr [ %i.gr, %bb.l ], [ %i.gn, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gw = sext i32 %i.gu to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i.i, %i.gw
  br i1 %i.gx, label %.lr.ph.i.i, label %._crit_edge.thread.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %Vec_WrdFree.exit75
  %.not.i.i76 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i76, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.m, %._crit_edge.i.i
  %i.gy = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.gv, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.gy) #27
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.t) #27
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define ptr @Abc_TtSimpleMin_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr noundef %8) local_unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.d = icmp slt i32 %3, 7                       ; 2 uses
  %i.e = add nsw i32 %3, -6                       ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 3 uses
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = add nsw i32 %i.i, %i.g                   ; 3 uses
  store i32 %i.j, ptr %i.h, align 4, !tbaa !40
  %i.k = load i32, ptr %4, align 8, !tbaa !41
  %i.l = icmp sgt i32 %i.j, %i.k
  br i1 %i.l, label %Vec_WrdFetch.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = sext i32 %i.g to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.r
  br label %Vec_WrdFetch.exit

Vec_WrdFetch.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ] ; 49 uses
  %.0.i366 = ptrtoaddr ptr %.0.i to i64           ; 7 uses
  store i32 0, ptr %7, align 4, !tbaa !17
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Vec_WrdFetch.exit
  %i.t = load i64, ptr %1, align 8, !tbaa !26
  %i.u = load i64, ptr %2, align 8, !tbaa !26
  %i.v = tail call fastcc i64 @Abc_TtSimple6Min_rec(ptr noundef %0, i64 noundef %i.t, i64 noundef %i.u, i32 noundef %3, ptr noundef %5, ptr noundef nonnull %7, ptr noundef %8)
  store i64 %i.v, ptr %.0.i, align 8, !tbaa !26
  br label %Abc_TtClear.exit

bb.d:                                             ; preds = %Vec_WrdFetch.exit
  %.not = icmp eq i32 %i.e, 31
  br i1 %.not, label %Abc_TtClear.exit, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %bb.d
  %wide.trip.count35.i = zext nneg i32 %i.f to i64
  br label %.lr.ph25.i

bb.e:                                             ; preds = %.lr.ph25.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %.lr.ph.preheader.i, label %.lr.ph25.i, !llvm.loop !7

.lr.ph25.i:                                       ; preds = %bb.e, %.lr.ph25.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %indvars.iv.next33.i, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !26
  %i.aa = and i64 %i.z, %i.x
  %.not16.i = icmp eq i64 %i.aa, 0
  br i1 %.not16.i, label %bb.e, label %.lr.ph.preheader.i182

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.ab = zext nneg i32 %i.g to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.0.i, i8 0, i64 %i.ac, i1 false), !tbaa !26
  br label %Abc_TtClear.exit

.lr.ph.preheader.i182:                            ; preds = %.lr.ph25.i
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 2 uses
  br label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i184, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i182
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i182 ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.af = xor i64 %i.ae, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !26
  %i.ai = and i64 %i.ah, %i.af
  %.not17.i = icmp eq i64 %i.ai, 0
  br i1 %.not17.i, label %bb.f, label %Abc_TtIntersect.exit183

.lr.ph.preheader.i184:                            ; preds = %bb.f
  store i32 1, ptr %7, align 4, !tbaa !17
  %i.aj = shl nuw nsw i64 %wide.trip.count.i, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.0.i, i8 -1, i64 %i.aj, i1 false), !tbaa !26
  br label %Abc_TtClear.exit

Abc_TtIntersect.exit183:                          ; preds = %.lr.ph.i
  %i.ak = ashr i32 %i.g, 1                        ; 16 uses
  %i.al = add nsw i32 %3, -1                      ; 5 uses
  %i.am = add nsw i32 %3, -7                      ; 3 uses
  %i.an = sext i32 %i.f to i64
  %.idx.i = shl nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %.not47.i = icmp eq i32 %i.am, 31
  %i.ap = shl i32 2, %i.am
  %i.aq = sext i32 %i.ap to i64
  br i1 %.not47.i, label %.loopexit305, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %Abc_TtIntersect.exit183
  %i.ar = shl nuw i32 1, %i.am                    ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 1)
  %wide.trip.count.i185 = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.aw, %._crit_edge.us.i ], [ %1, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.as
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i186, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i187, %wide.trip.count.i185
  br i1 %exitcond.not.i188, label %._crit_edge.us.i, label %bb.h, !llvm.loop !4

bb.h:                                             ; preds = %bb.g, %.preheader.us.i
  %indvars.iv.i186 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i187, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i186
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i186
  %i.av = load i64, ptr %gep.i, align 8, !tbaa !26
  %.not.us.i = icmp eq i64 %i.au, %i.av
  br i1 %.not.us.i, label %bb.g, label %Abc_TtHasVar.exit

._crit_edge.us.i:                                 ; preds = %bb.g
  %i.aw = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.aq ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.ao
  br i1 %i.ax, label %.preheader.us.i, label %.loopexit305, !llvm.loop !5

.loopexit305:                                     ; preds = %._crit_edge.us.i, %Abc_TtIntersect.exit183
  %i.ay = icmp eq i32 %i.ak, 0
  br i1 %i.ay, label %Abc_TtCopy.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit305
  %i.az = load i32, ptr %i.h, align 4, !tbaa !40
  %i.ba = add nsw i32 %i.az, %i.ak                ; 3 uses
  store i32 %i.ba, ptr %i.h, align 4, !tbaa !40
  %i.bb = load i32, ptr %4, align 8, !tbaa !41
  %i.bc = icmp sgt i32 %i.ba, %i.bb
  br i1 %i.bc, label %Vec_WrdFetch.exit191, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42
  %i.bf = sext i32 %i.ba to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %narrow = sub nsw i32 0, %i.ak
  %i.bh = sext i32 %narrow to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  br label %Vec_WrdFetch.exit191

Vec_WrdFetch.exit191:                             ; preds = %bb.i, %bb.j
  %.0.i190 = phi ptr [ %i.bi, %bb.j ], [ null, %bb.i ] ; 9 uses
  %.0.i190426 = ptrtoaddr ptr %.0.i190 to i64
  %i.bj = sext i32 %i.ak to i64                   ; 4 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bj ; 6 uses
  %i.bl = icmp sgt i32 %i.ak, 0
  br i1 %i.bl, label %.lr.ph.preheader.i192, label %Abc_TtCopy.exit

.lr.ph.preheader.i192:                            ; preds = %Vec_WrdFetch.exit191
  %wide.trip.count.i193 = zext nneg i32 %i.ak to i64 ; 15 uses
  %min.iters.check430 = icmp ult i32 %i.ak, 14
  br i1 %min.iters.check430, label %.lr.ph.i194.preheader, label %vector.memcheck425

vector.memcheck425:                               ; preds = %.lr.ph.preheader.i192
  %9 = sub i64 %.0.i190426, %i.a                  ; 2 uses
  %10 = shl nuw nsw i64 %i.bj, 3
  %i.bm = sub i64 %10, %9
  %diff.check427 = icmp ugt i64 %i.bm, -32
  %i.bn = add i64 %9, -1
  %diff.check428 = icmp ult i64 %i.bn, 31
  %conflict.rdx = or i1 %diff.check427, %diff.check428
  br i1 %conflict.rdx, label %.lr.ph.i194.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %vector.memcheck425
  %n.vec432 = and i64 %wide.trip.count.i193, 2147483644 ; 3 uses
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next439, %vector.body433 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index434 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load435 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !26
  %wide.load436 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index434 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load437 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !26
  %wide.load438 = load <2 x i64>, ptr %i.br, align 8, !tbaa !26
  %i.bs = or <2 x i64> %wide.load437, %wide.load435
  %i.bt = or <2 x i64> %wide.load438, %wide.load436
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.0.i190, i64 %index434 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x i64> %i.bs, ptr %i.bu, align 8, !tbaa !26
  store <2 x i64> %i.bt, ptr %i.bv, align 8, !tbaa !26
  %index.next439 = add nuw i64 %index434, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next439, %n.vec432
  br i1 %i.bw, label %middle.block440, label %vector.body433, !llvm.loop !165

middle.block440:                                  ; preds = %vector.body433
  %cmp.n441 = icmp eq i64 %n.vec432, %wide.trip.count.i193
  br i1 %cmp.n441, label %.lr.ph18.preheader.i, label %.lr.ph.i194.preheader

.lr.ph.i194.preheader:                            ; preds = %vector.memcheck425, %.lr.ph.preheader.i192, %middle.block440
  %indvars.iv.i195.ph = phi i64 [ 0, %vector.memcheck425 ], [ 0, %.lr.ph.preheader.i192 ], [ %n.vec432, %middle.block440 ] ; 3 uses
  %xtraiter495 = and i64 %wide.trip.count.i193, 3 ; 2 uses
  %lcmp.mod496.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod496.not, label %.lr.ph.i194.prol.loopexit, label %.lr.ph.i194.prol

.lr.ph.i194.prol:                                 ; preds = %.lr.ph.i194.preheader, %.lr.ph.i194.prol
  %indvars.iv.i195.prol = phi i64 [ %indvars.iv.next.i196.prol, %.lr.ph.i194.prol ], [ %indvars.iv.i195.ph, %.lr.ph.i194.preheader ] ; 4 uses
  %prol.iter497 = phi i64 [ %prol.iter497.next, %.lr.ph.i194.prol ], [ 0, %.lr.ph.i194.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i195.prol
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i195.prol
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !26
  %i.cb = or i64 %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0.i190, i64 %indvars.iv.i195.prol
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !26
  %indvars.iv.next.i196.prol = add nuw nsw i64 %indvars.iv.i195.prol, 1 ; 2 uses
  %prol.iter497.next = add i64 %prol.iter497, 1   ; 2 uses
  %prol.iter497.cmp.not = icmp eq i64 %prol.iter497.next, %xtraiter495
  br i1 %prol.iter497.cmp.not, label %.lr.ph.i194.prol.loopexit, label %.lr.ph.i194.prol, !llvm.loop !166

.lr.ph.i194.prol.loopexit:                        ; preds = %.lr.ph.i194.prol, %.lr.ph.i194.preheader
  %indvars.iv.i195.unr = phi i64 [ %indvars.iv.i195.ph, %.lr.ph.i194.preheader ], [ %indvars.iv.next.i196.prol, %.lr.ph.i194.prol ]
  %i.cd = sub nsw i64 %indvars.iv.i195.ph, %wide.trip.count.i193
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %.lr.ph18.preheader.i, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.lr.ph.i194.prol.loopexit, %.lr.ph.i194
  %indvars.iv.i195 = phi i64 [ %indvars.iv.next.i196.3, %.lr.ph.i194 ], [ %indvars.iv.i195.unr, %.lr.ph.i194.prol.loopexit ] ; 7 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i195
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i195
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !26
  %i.cj = or i64 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0.i190, i64 %indvars.iv.i195
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !26
  %indvars.iv.next.i196 = add nuw nsw i64 %indvars.iv.i195, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i196
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i196
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !26
  %i.cp = or i64 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0.i190, i64 %indvars.iv.next.i196
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !26
  %indvars.iv.next.i196.1 = add nuw nsw i64 %indvars.iv.i195, 2 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i196.1
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i196.1
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !26
  %i.cv = or i64 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0.i190, i64 %indvars.iv.next.i196.1
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !26
  %indvars.iv.next.i196.2 = add nuw nsw i64 %indvars.iv.i195, 3 ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i196.2
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i196.2
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !26
  %i.db = or i64 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0.i190, i64 %indvars.iv.next.i196.2
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !26
  %indvars.iv.next.i196.3 = add nuw nsw i64 %indvars.iv.i195, 4 ; 2 uses
  %exitcond.not.i197.3 = icmp eq i64 %indvars.iv.next.i196.3, %wide.trip.count.i193
  br i1 %exitcond.not.i197.3, label %.lr.ph18.preheader.i, label %.lr.ph.i194, !llvm.loop !167

.lr.ph18.preheader.i:                             ; preds = %.lr.ph.i194.prol.loopexit, %.lr.ph.i194, %middle.block440
  %i.dd = tail call ptr @Abc_TtSimpleMin_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i190, i32 noundef %i.al, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8) ; 13 uses
  %i.de = ptrtoaddr ptr %i.dd to i64              ; 2 uses
  %min.iters.check446 = icmp ult i32 %i.ak, 8
  %i.df = sub i64 %i.de, %.0.i366
  %diff.check444 = icmp ugt i64 %i.df, -32
  %or.cond = select i1 %min.iters.check446, i1 true, i1 %diff.check444
  br i1 %or.cond, label %.lr.ph18.i.preheader, label %vector.ph447

vector.ph447:                                     ; preds = %.lr.ph18.preheader.i
  %n.vec448 = and i64 %wide.trip.count.i193, 2147483644 ; 3 uses
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph447
  %index450 = phi i64 [ 0, %vector.ph447 ], [ %index.next453, %vector.body449 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index450 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load451 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !26
  %wide.load452 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !26
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index450 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x i64> %wide.load451, ptr %i.di, align 8, !tbaa !26
  store <2 x i64> %wide.load452, ptr %i.dj, align 8, !tbaa !26
  %index.next453 = add nuw i64 %index450, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next453, %n.vec448
  br i1 %i.dk, label %middle.block454, label %vector.body449, !llvm.loop !168

middle.block454:                                  ; preds = %vector.body449
  %cmp.n455 = icmp eq i64 %n.vec448, %wide.trip.count.i193
  br i1 %cmp.n455, label %.lr.ph18.preheader.i198, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.lr.ph18.preheader.i, %middle.block454
  %indvars.iv21.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i ], [ %n.vec448, %middle.block454 ] ; 3 uses
  %xtraiter498 = and i64 %wide.trip.count.i193, 3 ; 2 uses
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol

.lr.ph18.i.prol:                                  ; preds = %.lr.ph18.i.preheader, %.lr.ph18.i.prol
  %indvars.iv21.i.prol = phi i64 [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ], [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ] ; 3 uses
  %prol.iter500 = phi i64 [ %prol.iter500.next, %.lr.ph18.i.prol ], [ 0, %.lr.ph18.i.preheader ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv21.i.prol
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv21.i.prol
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !26
  %indvars.iv.next22.i.prol = add nuw nsw i64 %indvars.iv21.i.prol, 1 ; 2 uses
  %prol.iter500.next = add i64 %prol.iter500, 1   ; 2 uses
  %prol.iter500.cmp.not = icmp eq i64 %prol.iter500.next, %xtraiter498
  br i1 %prol.iter500.cmp.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol, !llvm.loop !169

.lr.ph18.i.prol.loopexit:                         ; preds = %.lr.ph18.i.prol, %.lr.ph18.i.preheader
  %indvars.iv21.i.unr = phi i64 [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ], [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ]
  %i.do = sub nsw i64 %indvars.iv21.i.ph, %wide.trip.count.i193
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %.lr.ph18.preheader.i198, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i.3, %.lr.ph18.i ], [ %indvars.iv21.i.unr, %.lr.ph18.i.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv21.i
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv21.i
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !26
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next22.i
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next22.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !26
  %indvars.iv.next22.i.1 = add nuw nsw i64 %indvars.iv21.i, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next22.i.1
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next22.i.1
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !26
  %indvars.iv.next22.i.2 = add nuw nsw i64 %indvars.iv21.i, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next22.i.2
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !26
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next22.i.2
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !26
  %indvars.iv.next22.i.3 = add nuw nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %exitcond25.not.i.3 = icmp eq i64 %indvars.iv.next22.i.3, %wide.trip.count.i193
  br i1 %exitcond25.not.i.3, label %.lr.ph18.preheader.i198, label %.lr.ph18.i, !llvm.loop !170

Abc_TtCopy.exit:                                  ; preds = %.loopexit305, %Vec_WrdFetch.exit191
  %.0.i190281.ph = phi ptr [ %.0.i190, %Vec_WrdFetch.exit191 ], [ null, %.loopexit305 ]
  %i.ec = tail call ptr @Abc_TtSimpleMin_rec(ptr noundef %0, ptr noundef %1, ptr noundef %.0.i190281.ph, i32 noundef %i.al, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8) ; 0 uses
  br label %Abc_TtClear.exit

.lr.ph18.preheader.i198:                          ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i, %middle.block454
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.bj ; 6 uses
  %min.iters.check460 = icmp ult i32 %i.ak, 14
  br i1 %min.iters.check460, label %.lr.ph18.i200.preheader, label %vector.memcheck457

vector.memcheck457:                               ; preds = %.lr.ph18.preheader.i198
  %i.ee = shl nuw nsw i64 %i.bj, 3
  %i.ef = add i64 %i.ee, %.0.i366
  %i.eg = sub i64 %i.de, %i.ef
  %diff.check458 = icmp ugt i64 %i.eg, -32
  br i1 %diff.check458, label %.lr.ph18.i200.preheader, label %vector.ph461

vector.ph461:                                     ; preds = %vector.memcheck457
  %n.vec462 = and i64 %wide.trip.count.i193, 2147483644 ; 3 uses
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph461
  %index464 = phi i64 [ 0, %vector.ph461 ], [ %index.next467, %vector.body463 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index464 ; 2 uses
end_hunk_0
