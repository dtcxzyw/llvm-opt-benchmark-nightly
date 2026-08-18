inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@mca_io_romio_dist_MPIR_Status_set_bytes

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @PMPI_Type_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ADIOI_Flatten_and_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ADIOI_Fill_user_buffer(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree readnone captures(none) %7, ptr nofree readnone captures(none) %8, ptr nofree noundef captures(none) %9, i32 noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %9 to i64                  ; 3 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = mul nsw i32 %10, 3
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.e, i32 noundef 980, ptr noundef nonnull @.str) #6 ; 11 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 3 uses
  %i.h = sext i32 %10 to i64                      ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.h ; 5 uses
  %i.k = icmp sgt i32 %10, 0                      ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %10 to i64     ; 5 uses
  %min.iters.check = icmp ult i32 %10, 44
  br i1 %min.iters.check, label %.lr.ph.preheader560, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.l = shl nuw nsw i64 %i.h, 3
  %i.m = shl nuw nsw i64 %i.h, 2
  %i.n = sub i64 %i.g, %i.a
  %diff.check547 = icmp ugt i64 %i.n, -32
  %i.o = add i64 %i.l, %i.g
  %i.p = sub i64 %i.o, %i.a
  %diff.check551 = icmp ugt i64 %i.p, -32
  %conflict.rdx552 = or i1 %diff.check547, %diff.check551
  %i.q = add i64 %i.m, %i.g
  %i.r = sub i64 %i.a, %i.q
  %diff.check553 = icmp ugt i64 %i.r, -32
  %conflict.rdx554 = or i1 %conflict.rdx552, %diff.check553
  br i1 %conflict.rdx554, label %.lr.ph.preheader560, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> zeroinitializer, ptr %i.s, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.t, align 4, !tbaa !8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> zeroinitializer, ptr %i.u, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.v, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !8
  %wide.load555 = load <4 x i32>, ptr %i.x, align 4, !tbaa !8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !8
  store <4 x i32> %wide.load555, ptr %i.z, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader560

.lr.ph.preheader560:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader560
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.ph
  store i32 0, ptr %i.ab, align 4, !tbaa !8
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.ph
  store i32 0, ptr %i.ac, align 4, !tbaa !8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.ph
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.ph
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !8
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader560
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader560 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %indvars.iv.ph, %i.ag
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 0, ptr %i.ai, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 0, ptr %i.aj, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.al, ptr %i.am, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  store i32 0, ptr %i.an, align 4, !tbaa !8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store i32 0, ptr %i.ao, align 4, !tbaa !8
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.au = icmp sgt i32 %11, 0
  br i1 %i.au, label %.lr.ph492, label %.preheader

.lr.ph492:                                        ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !37
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %wide.trip.count504 = zext nneg i32 %11 to i64
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge481, %._crit_edge
  br i1 %i.k, label %.lr.ph494.preheader, label %._crit_edge495

.lr.ph494.preheader:                              ; preds = %.preheader
  %wide.trip.count509 = zext nneg i32 %10 to i64  ; 2 uses
  %xtraiter561 = and i64 %wide.trip.count509, 1
  %i.ba = icmp eq i32 %10, 1
  br i1 %i.ba, label %.lr.ph494.epil.preheader, label %.lr.ph494.preheader.new

.lr.ph494.preheader.new:                          ; preds = %.lr.ph494.preheader
  %unroll_iter = and i64 %wide.trip.count509, 2147483646
  br label %.lr.ph494

bb.b:                                             ; preds = %.lr.ph492, %._crit_edge481
  %indvars.iv501 = phi i64 [ 0, %.lr.ph492 ], [ %indvars.iv.next502, %._crit_edge481 ] ; 3 uses
  %.0490 = phi i64 [ %i.ay, %.lr.ph492 ], [ %.1.lcssa, %._crit_edge481 ] ; 2 uses
  %.0278489 = phi i32 [ 0, %.lr.ph492 ], [ %.1279.lcssa, %._crit_edge481 ] ; 2 uses
  %.0304488 = phi i64 [ %i.aw, %.lr.ph492 ], [ %.1305.lcssa, %._crit_edge481 ] ; 2 uses
  %.0321487 = phi i32 [ 0, %.lr.ph492 ], [ %.1322.lcssa, %._crit_edge481 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv501
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !37 ; 2 uses
  %.not364472 = icmp eq i64 %i.bc, 0
  br i1 %.not364472, label %._crit_edge481, label %.lr.ph480.preheader

.lr.ph480.preheader:                              ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv501
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !37
  br label %.lr.ph480

.lr.ph480:                                        ; preds = %.lr.ph480.preheader, %.loopexit
  %.1478 = phi i64 [ %.16, %.loopexit ], [ %.0490, %.lr.ph480.preheader ] ; 7 uses
  %.0276477 = phi i64 [ %i.iq, %.loopexit ], [ %i.bc, %.lr.ph480.preheader ] ; 2 uses
  %.0277476 = phi i64 [ %i.ip, %.loopexit ], [ %i.be, %.lr.ph480.preheader ] ; 2 uses
  %.1279475 = phi i32 [ %.23, %.loopexit ], [ %.0278489, %.lr.ph480.preheader ] ; 7 uses
  %.1305474 = phi i64 [ %.16320, %.loopexit ], [ %.0304488, %.lr.ph480.preheader ] ; 7 uses
  %.1322473 = phi i32 [ %.23344, %.loopexit ], [ %.0321487, %.lr.ph480.preheader ] ; 7 uses
  store i64 %.0276477, ptr %i.b, align 8, !tbaa !37
  %i.bf = call i32 @ADIOI_Calc_aggregator(ptr noundef %0, i64 noundef %.0277476, i64 noundef %12, ptr noundef nonnull %i.b, i64 noundef %13, ptr noundef %14, ptr noundef %15) #6
  %i.bg = sext i32 %i.bf to i64                   ; 6 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bg ; 7 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8  ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bg
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8  ; 3 uses
  %i.bl = icmp ult i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.c, label %bb.u

bb.c:                                             ; preds = %.lr.ph480
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bg ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !8  ; 5 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !37  ; 12 uses
  %i.bq = add nsw i64 %i.bp, %i.bo                ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bg
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !8  ; 4 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp sgt i64 %i.bq, %i.bt
  br i1 %i.bu, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.bv = icmp ugt i32 %i.bs, %i.bn
  br i1 %i.bv, label %.lr.ph441.preheader, label %bb.l

.lr.ph441.preheader:                              ; preds = %bb.d
  %i.bw = sub nsw i64 %i.bq, %i.bt                ; 3 uses
  %i.bx = sub i32 %i.bk, %i.bi
  %i.by = zext i32 %i.bx to i64
  %. = call i64 @llvm.smin.i64(i64 %i.bw, i64 %i.by) ; 3 uses
  %i.bz = sub nuw i32 %i.bs, %i.bn
  %i.ca = zext i32 %i.bz to i64
  br label %.lr.ph441

.lr.ph441:                                        ; preds = %.lr.ph441.preheader, %bb.f
  %.2439 = phi i64 [ %.3, %bb.f ], [ %.1478, %.lr.ph441.preheader ]
  %.2280438 = phi i32 [ %.4282, %bb.f ], [ %.1279475, %.lr.ph441.preheader ] ; 2 uses
  %.0297437 = phi i64 [ %i.cu, %bb.f ], [ %i.ca, %.lr.ph441.preheader ] ; 2 uses
  %.2306436 = phi i64 [ %.3307, %bb.f ], [ %.1305474, %.lr.ph441.preheader ] ; 2 uses
  %.2323435 = phi i32 [ %.4325, %bb.f ], [ %.1322473, %.lr.ph441.preheader ] ; 3 uses
  %i.cb = call i64 @llvm.smin.i64(i64 %.0297437, i64 %.2306436) ; 3 uses
  %i.cc = add nsw i64 %.2439, %i.cb
  %i.cd = sub nsw i64 %.2306436, %i.cb            ; 2 uses
  %.not378 = icmp eq i64 %i.cd, 0
  br i1 %.not378, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph441
  %i.ce = sext i32 %.2323435 to i64
  %i.cf = load i64, ptr %i.az, align 8, !tbaa !74
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = icmp sle i64 %i.cg, %i.ce               ; 2 uses
  %i.ci = add nsw i32 %.2323435, 1
  %.3324 = select i1 %i.ch, i32 0, i32 %i.ci      ; 2 uses
  %i.cj = zext i1 %i.ch to i32
  %.3281 = add nsw i32 %.2280438, %i.cj           ; 2 uses
  %i.ck = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.cl = sext i32 %.3324 to i64                  ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !37
  %i.co = sext i32 %.3281 to i64
  %i.cp = mul nsw i64 %16, %i.co
  %i.cq = add nsw i64 %i.cp, %i.cn
  %i.cr = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cl
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph441
  %.4325 = phi i32 [ %.2323435, %.lr.ph441 ], [ %.3324, %bb.e ] ; 3 uses
  %.3307 = phi i64 [ %i.cd, %.lr.ph441 ], [ %i.ct, %bb.e ] ; 3 uses
  %.4282 = phi i32 [ %.2280438, %.lr.ph441 ], [ %.3281, %bb.e ] ; 3 uses
  %.3 = phi i64 [ %i.cc, %.lr.ph441 ], [ %i.cq, %bb.e ] ; 3 uses
  %i.cu = sub nsw i64 %.0297437, %i.cb            ; 2 uses
  %.not373 = icmp eq i64 %i.cu, 0
  br i1 %.not373, label %._crit_edge442, label %.lr.ph441, !llvm.loop !83

._crit_edge442:                                   ; preds = %bb.f
  %i.cv = trunc i64 %. to i32
  %i.cw = add i32 %i.bs, %i.cv
  store i32 %i.cw, ptr %i.bm, align 4, !tbaa !8
  %.not374447 = icmp eq i64 %., 0
  br i1 %.not374447, label %.preheader380, label %.lr.ph455

.lr.ph455:                                        ; preds = %._crit_edge442
  %i.cx = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bg
  %.pre511 = load i32, ptr %i.bh, align 4, !tbaa !8
  br label %bb.g

.preheader380:                                    ; preds = %bb.i, %._crit_edge442
  %.5326.lcssa = phi i32 [ %.4325, %._crit_edge442 ], [ %.7328, %bb.i ] ; 2 uses
  %.4308.lcssa = phi i64 [ %.3307, %._crit_edge442 ], [ %.5309, %bb.i ] ; 2 uses
  %.1298.lcssa = phi i64 [ %i.bw, %._crit_edge442 ], [ %i.ea, %bb.i ] ; 2 uses
  %.5283.lcssa = phi i32 [ %.4282, %._crit_edge442 ], [ %.7285, %bb.i ] ; 2 uses
  %.4.lcssa = phi i64 [ %.3, %._crit_edge442 ], [ %.5, %bb.i ] ; 2 uses
  %.not375461 = icmp eq i64 %.1298.lcssa, 0
  br i1 %.not375461, label %.loopexit, label %.lr.ph467

bb.g:                                             ; preds = %.lr.ph455, %bb.i
  %i.cy = phi i32 [ %.pre511, %.lr.ph455 ], [ %i.dg, %bb.i ]
  %.4453 = phi i64 [ %.3, %.lr.ph455 ], [ %.5, %bb.i ] ; 2 uses
  %.5283452 = phi i32 [ %.4282, %.lr.ph455 ], [ %.7285, %bb.i ] ; 2 uses
  %.0295451 = phi i64 [ %., %.lr.ph455 ], [ %i.dz, %bb.i ] ; 2 uses
  %.1298450 = phi i64 [ %i.bw, %.lr.ph455 ], [ %i.ea, %bb.i ]
  %.4308449 = phi i64 [ %.3307, %.lr.ph455 ], [ %.5309, %bb.i ] ; 2 uses
  %.5326448 = phi i32 [ %.4325, %.lr.ph455 ], [ %.7328, %bb.i ] ; 3 uses
  %i.cz = call i64 @llvm.smin.i64(i64 %.0295451, i64 %.4308449) ; 6 uses
  %i.da = getelementptr inbounds i8, ptr %1, i64 %.4453
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !84
  %i.dc = zext i32 %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.dd, i64 %i.cz, i1 false)
  %i.de = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.df = trunc i64 %i.cz to i32
  %i.dg = add i32 %i.de, %i.df                    ; 2 uses
  store i32 %i.dg, ptr %i.bh, align 4, !tbaa !8
  %i.dh = add nsw i64 %.4453, %i.cz
  %i.di = sub nsw i64 %.4308449, %i.cz            ; 2 uses
  %.not377 = icmp eq i64 %i.di, 0
  br i1 %.not377, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dj = sext i32 %.5326448 to i64
  %i.dk = load i64, ptr %i.az, align 8, !tbaa !74
  %i.dl = add nsw i64 %i.dk, -1
  %i.dm = icmp sle i64 %i.dl, %i.dj               ; 2 uses
  %i.dn = add nsw i32 %.5326448, 1
  %.6327 = select i1 %i.dm, i32 0, i32 %i.dn      ; 2 uses
  %i.do = zext i1 %i.dm to i32
  %.6284 = add nsw i32 %.5283452, %i.do           ; 2 uses
  %i.dp = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.dq = sext i32 %.6327 to i64                  ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !37
  %i.dt = sext i32 %.6284 to i64
  %i.du = mul nsw i64 %16, %i.dt
  %i.dv = add nsw i64 %i.du, %i.ds
  %i.dw = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dq
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.7328 = phi i32 [ %.5326448, %bb.g ], [ %.6327, %bb.h ] ; 2 uses
  %.5309 = phi i64 [ %i.di, %bb.g ], [ %i.dy, %bb.h ] ; 2 uses
  %.7285 = phi i32 [ %.5283452, %bb.g ], [ %.6284, %bb.h ] ; 2 uses
  %.5 = phi i64 [ %i.dh, %bb.g ], [ %i.dv, %bb.h ] ; 2 uses
  %i.dz = sub nsw i64 %.0295451, %i.cz            ; 2 uses
  %i.ea = sub nsw i64 %.1298450, %i.cz            ; 2 uses
  %.not374 = icmp eq i64 %i.dz, 0
  br i1 %.not374, label %.preheader380, label %bb.g, !llvm.loop !85

.lr.ph467:                                        ; preds = %.preheader380, %bb.k
  %.6466 = phi i64 [ %.7, %bb.k ], [ %.4.lcssa, %.preheader380 ]
  %.8286465 = phi i32 [ %.10288, %bb.k ], [ %.5283.lcssa, %.preheader380 ] ; 2 uses
  %.2299464 = phi i64 [ %i.eu, %bb.k ], [ %.1298.lcssa, %.preheader380 ] ; 2 uses
  %.6310463 = phi i64 [ %.7311, %bb.k ], [ %.4308.lcssa, %.preheader380 ] ; 2 uses
  %.8329462 = phi i32 [ %.10331, %bb.k ], [ %.5326.lcssa, %.preheader380 ] ; 3 uses
  %i.eb = call i64 @llvm.smin.i64(i64 %.2299464, i64 %.6310463) ; 3 uses
  %i.ec = add nsw i64 %.6466, %i.eb
  %i.ed = sub nsw i64 %.6310463, %i.eb            ; 2 uses
  %.not376 = icmp eq i64 %i.ed, 0
  br i1 %.not376, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph467
  %i.ee = sext i32 %.8329462 to i64
  %i.ef = load i64, ptr %i.az, align 8, !tbaa !74
  %i.eg = add nsw i64 %i.ef, -1
  %i.eh = icmp sle i64 %i.eg, %i.ee               ; 2 uses
  %i.ei = add nsw i32 %.8329462, 1
  %.9330 = select i1 %i.eh, i32 0, i32 %i.ei      ; 2 uses
  %i.ej = zext i1 %i.eh to i32
  %.9287 = add nsw i32 %.8286465, %i.ej           ; 2 uses
  %i.ek = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.el = sext i32 %.9330 to i64                  ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !37
  %i.eo = sext i32 %.9287 to i64
  %i.ep = mul nsw i64 %16, %i.eo
  %i.eq = add nsw i64 %i.ep, %i.en
  %i.er = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.el
  %i.et = load i64, ptr %i.es, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph467
  %.10331 = phi i32 [ %.8329462, %.lr.ph467 ], [ %.9330, %bb.j ] ; 2 uses
  %.7311 = phi i64 [ %i.ed, %.lr.ph467 ], [ %i.et, %bb.j ] ; 2 uses
  %.10288 = phi i32 [ %.8286465, %.lr.ph467 ], [ %.9287, %bb.j ] ; 2 uses
  %.7 = phi i64 [ %i.ec, %.lr.ph467 ], [ %i.eq, %bb.j ] ; 2 uses
  %i.eu = sub nsw i64 %.2299464, %i.eb            ; 2 uses
  %.not375 = icmp eq i64 %i.eu, 0
  br i1 %.not375, label %.loopexit, label %.lr.ph467, !llvm.loop !86

bb.l:                                             ; preds = %bb.d
  %i.ev = sub i32 %i.bk, %i.bi
  %i.ew = zext i32 %i.ev to i64
  %.379 = call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.ew) ; 3 uses
  %i.ex = trunc i64 %.379 to i32
  %i.ey = add i32 %i.bn, %i.ex
  store i32 %i.ey, ptr %i.bm, align 4, !tbaa !8
  %.not369409 = icmp eq i64 %.379, 0
  br i1 %.not369409, label %.preheader381, label %.lr.ph417

.lr.ph417:                                        ; preds = %bb.l
  %i.ez = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bg
  %.pre = load i32, ptr %i.bh, align 4, !tbaa !8
  br label %bb.m

.preheader381:                                    ; preds = %bb.o, %bb.l
  %.11332.lcssa = phi i32 [ %.1322473, %bb.l ], [ %.13334, %bb.o ] ; 2 uses
  %.8312.lcssa = phi i64 [ %.1305474, %bb.l ], [ %.9313, %bb.o ] ; 2 uses
  %.3300.lcssa = phi i64 [ %i.bp, %bb.l ], [ %i.gc, %bb.o ] ; 2 uses
  %.11289.lcssa = phi i32 [ %.1279475, %bb.l ], [ %.13291, %bb.o ] ; 2 uses
  %.8.lcssa = phi i64 [ %.1478, %bb.l ], [ %.9, %bb.o ] ; 2 uses
  %.not370423 = icmp eq i64 %.3300.lcssa, 0
  br i1 %.not370423, label %.loopexit, label %.lr.ph429

bb.m:                                             ; preds = %.lr.ph417, %bb.o
  %i.fa = phi i32 [ %.pre, %.lr.ph417 ], [ %i.fi, %bb.o ]
  %.8415 = phi i64 [ %.1478, %.lr.ph417 ], [ %.9, %bb.o ] ; 2 uses
  %.11289414 = phi i32 [ %.1279475, %.lr.ph417 ], [ %.13291, %bb.o ] ; 2 uses
  %.1296413 = phi i64 [ %.379, %.lr.ph417 ], [ %i.gb, %bb.o ] ; 2 uses
  %.3300412 = phi i64 [ %i.bp, %.lr.ph417 ], [ %i.gc, %bb.o ]
  %.8312411 = phi i64 [ %.1305474, %.lr.ph417 ], [ %.9313, %bb.o ] ; 2 uses
  %.11332410 = phi i32 [ %.1322473, %.lr.ph417 ], [ %.13334, %bb.o ] ; 3 uses
  %i.fb = call i64 @llvm.smin.i64(i64 %.1296413, i64 %.8312411) ; 6 uses
  %i.fc = getelementptr inbounds i8, ptr %1, i64 %.8415
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !84
  %i.fe = zext i32 %i.fa to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.ff, i64 %i.fb, i1 false)
  %i.fg = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.fh = trunc i64 %i.fb to i32
  %i.fi = add i32 %i.fg, %i.fh                    ; 2 uses
  store i32 %i.fi, ptr %i.bh, align 4, !tbaa !8
  %i.fj = add nsw i64 %.8415, %i.fb
  %i.fk = sub nsw i64 %.8312411, %i.fb            ; 2 uses
  %.not372 = icmp eq i64 %i.fk, 0
  br i1 %.not372, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fl = sext i32 %.11332410 to i64
  %i.fm = load i64, ptr %i.az, align 8, !tbaa !74
  %i.fn = add nsw i64 %i.fm, -1
  %i.fo = icmp sle i64 %i.fn, %i.fl               ; 2 uses
  %i.fp = add nsw i32 %.11332410, 1
  %.12333 = select i1 %i.fo, i32 0, i32 %i.fp     ; 2 uses
  %i.fq = zext i1 %i.fo to i32
  %.12290 = add nsw i32 %.11289414, %i.fq         ; 2 uses
  %i.fr = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.fs = sext i32 %.12333 to i64                 ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !37
  %i.fv = sext i32 %.12290 to i64
  %i.fw = mul nsw i64 %16, %i.fv
  %i.fx = add nsw i64 %i.fw, %i.fu
  %i.fy = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.fs
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.13334 = phi i32 [ %.11332410, %bb.m ], [ %.12333, %bb.n ] ; 2 uses
  %.9313 = phi i64 [ %i.fk, %bb.m ], [ %i.ga, %bb.n ] ; 2 uses
  %.13291 = phi i32 [ %.11289414, %bb.m ], [ %.12290, %bb.n ] ; 2 uses
  %.9 = phi i64 [ %i.fj, %bb.m ], [ %i.fx, %bb.n ] ; 2 uses
  %i.gb = sub nsw i64 %.1296413, %i.fb            ; 2 uses
  %i.gc = sub nsw i64 %.3300412, %i.fb            ; 2 uses
  %.not369 = icmp eq i64 %i.gb, 0
  br i1 %.not369, label %.preheader381, label %bb.m, !llvm.loop !87

.lr.ph429:                                        ; preds = %.preheader381, %bb.q
  %.10428 = phi i64 [ %.11, %bb.q ], [ %.8.lcssa, %.preheader381 ]
  %.14292427 = phi i32 [ %.16294, %bb.q ], [ %.11289.lcssa, %.preheader381 ] ; 2 uses
  %.4301426 = phi i64 [ %i.gw, %bb.q ], [ %.3300.lcssa, %.preheader381 ] ; 2 uses
  %.10314425 = phi i64 [ %.11315, %bb.q ], [ %.8312.lcssa, %.preheader381 ] ; 2 uses
  %.14335424 = phi i32 [ %.16337, %bb.q ], [ %.11332.lcssa, %.preheader381 ] ; 3 uses
  %i.gd = call i64 @llvm.smin.i64(i64 %.4301426, i64 %.10314425) ; 3 uses
  %i.ge = add nsw i64 %.10428, %i.gd
  %i.gf = sub nsw i64 %.10314425, %i.gd           ; 2 uses
  %.not371 = icmp eq i64 %i.gf, 0
  br i1 %.not371, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph429
  %i.gg = sext i32 %.14335424 to i64
  %i.gh = load i64, ptr %i.az, align 8, !tbaa !74
  %i.gi = add nsw i64 %i.gh, -1
  %i.gj = icmp sle i64 %i.gi, %i.gg               ; 2 uses
  %i.gk = add nsw i32 %.14335424, 1
  %.15336 = select i1 %i.gj, i32 0, i32 %i.gk     ; 2 uses
  %i.gl = zext i1 %i.gj to i32
  %.15293 = add nsw i32 %.14292427, %i.gl         ; 2 uses
  %i.gm = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.gn = sext i32 %.15336 to i64                 ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !37
  %i.gq = sext i32 %.15293 to i64
  %i.gr = mul nsw i64 %16, %i.gq
  %i.gs = add nsw i64 %i.gr, %i.gp
  %i.gt = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gn
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph429
  %.16337 = phi i32 [ %.14335424, %.lr.ph429 ], [ %.15336, %bb.p ] ; 2 uses
  %.11315 = phi i64 [ %i.gf, %.lr.ph429 ], [ %i.gv, %bb.p ] ; 2 uses
  %.16294 = phi i32 [ %.14292427, %.lr.ph429 ], [ %.15293, %bb.p ] ; 2 uses
  %.11 = phi i64 [ %i.ge, %.lr.ph429 ], [ %i.gs, %bb.p ] ; 2 uses
  %i.gw = sub nsw i64 %.4301426, %i.gd            ; 2 uses
  %.not370 = icmp eq i64 %i.gw, 0
  br i1 %.not370, label %.loopexit, label %.lr.ph429, !llvm.loop !88

bb.r:                                             ; preds = %bb.c
  %i.gx = trunc i64 %i.bp to i32
  %i.gy = add i32 %i.bn, %i.gx
  store i32 %i.gy, ptr %i.bm, align 4, !tbaa !8
  %.not367397 = icmp eq i64 %i.bp, 0
  br i1 %.not367397, label %.loopexit, label %.lr.ph404

.lr.ph404:                                        ; preds = %bb.r, %bb.t
  %.12402 = phi i64 [ %.13, %bb.t ], [ %.1478, %bb.r ]
  %.17401 = phi i32 [ %.19, %bb.t ], [ %.1279475, %bb.r ] ; 2 uses
  %.5302400 = phi i64 [ %i.hs, %bb.t ], [ %i.bp, %bb.r ] ; 2 uses
  %.12316399 = phi i64 [ %.13317, %bb.t ], [ %.1305474, %bb.r ] ; 2 uses
  %.17338398 = phi i32 [ %.19340, %bb.t ], [ %.1322473, %bb.r ] ; 3 uses
  %i.gz = call i64 @llvm.smin.i64(i64 %.5302400, i64 %.12316399) ; 3 uses
  %i.ha = add nsw i64 %.12402, %i.gz
  %i.hb = sub nsw i64 %.12316399, %i.gz           ; 2 uses
  %.not368 = icmp eq i64 %i.hb, 0
  br i1 %.not368, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph404
  %i.hc = sext i32 %.17338398 to i64
  %i.hd = load i64, ptr %i.az, align 8, !tbaa !74
  %i.he = add nsw i64 %i.hd, -1
  %i.hf = icmp sle i64 %i.he, %i.hc               ; 2 uses
  %i.hg = add nsw i32 %.17338398, 1
  %.18339 = select i1 %i.hf, i32 0, i32 %i.hg     ; 2 uses
  %i.hh = zext i1 %i.hf to i32
  %.18 = add nsw i32 %.17401, %i.hh               ; 2 uses
  %i.hi = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.hj = sext i32 %.18339 to i64                 ; 2 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !37
  %i.hm = sext i32 %.18 to i64
  %i.hn = mul nsw i64 %16, %i.hm
  %i.ho = add nsw i64 %i.hn, %i.hl
  %i.hp = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hj
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph404
  %.19340 = phi i32 [ %.17338398, %.lr.ph404 ], [ %.18339, %bb.s ] ; 2 uses
  %.13317 = phi i64 [ %i.hb, %.lr.ph404 ], [ %i.hr, %bb.s ] ; 2 uses
  %.19 = phi i32 [ %.17401, %.lr.ph404 ], [ %.18, %bb.s ] ; 2 uses
  %.13 = phi i64 [ %i.ha, %.lr.ph404 ], [ %i.ho, %bb.s ] ; 2 uses
  %i.hs = sub nsw i64 %.5302400, %i.gz            ; 2 uses
  %.not367 = icmp eq i64 %i.hs, 0
  br i1 %.not367, label %.loopexit, label %.lr.ph404, !llvm.loop !89

bb.u:                                             ; preds = %.lr.ph480
  %i.ht = load i64, ptr %i.b, align 8, !tbaa !37  ; 3 uses
  %.not365386 = icmp eq i64 %i.ht, 0
  br i1 %.not365386, label %.loopexit, label %.lr.ph393

.lr.ph393:                                        ; preds = %bb.u, %bb.w
  %.14391 = phi i64 [ %.15, %bb.w ], [ %.1478, %bb.u ]
  %.20390 = phi i32 [ %.22, %bb.w ], [ %.1279475, %bb.u ] ; 2 uses
  %.6303389 = phi i64 [ %i.in, %bb.w ], [ %i.ht, %bb.u ] ; 2 uses
  %.14318388 = phi i64 [ %.15319, %bb.w ], [ %.1305474, %bb.u ] ; 2 uses
  %.20341387 = phi i32 [ %.22343, %bb.w ], [ %.1322473, %bb.u ] ; 3 uses
  %i.hu = call i64 @llvm.smin.i64(i64 %.6303389, i64 %.14318388) ; 3 uses
  %i.hv = add nsw i64 %.14391, %i.hu
  %i.hw = sub nsw i64 %.14318388, %i.hu           ; 2 uses
  %.not366 = icmp eq i64 %i.hw, 0
  br i1 %.not366, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph393
  %i.hx = sext i32 %.20341387 to i64
  %i.hy = load i64, ptr %i.az, align 8, !tbaa !74
  %i.hz = add nsw i64 %i.hy, -1
  %i.ia = icmp sle i64 %i.hz, %i.hx               ; 2 uses
  %i.ib = add nsw i32 %.20341387, 1
  %.21342 = select i1 %i.ia, i32 0, i32 %i.ib     ; 2 uses
  %i.ic = zext i1 %i.ia to i32
  %.21 = add nsw i32 %.20390, %i.ic               ; 2 uses
  %i.id = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.ie = sext i32 %.21342 to i64                 ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.ie
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !37
  %i.ih = sext i32 %.21 to i64
  %i.ii = mul nsw i64 %16, %i.ih
  %i.ij = add nsw i64 %i.ii, %i.ig
end_hunk_0
begin_hunk_1_@ADIOI_R_Exchange_data:bb.a
  %.2152185 = phi i32 [ 0, %.lr.ph186 ], [ %.3, %bb.h ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv206
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8  ; 2 uses
  %.not162 = icmp eq i32 %i.cz, 0
  br i1 %.not162, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv206
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !84
  %i.dc = trunc nuw nsw i64 %indvars.iv206 to i32 ; 2 uses
  %i.dd = add i32 %i.by, %i.dc
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.df = sext i32 %.2152185 to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.df
  %i.dh = tail call i32 @PMPI_Irecv(ptr noundef %i.db, i32 noundef %i.cz, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.dc, i32 noundef %i.dd, ptr noundef %i.de, ptr noundef %i.dg) #6 ; 0 uses
  %i.di = add nsw i32 %.2152185, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.3 = phi i32 [ %i.di, %bb.g ], [ %.2152185, %bb.f ]
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.loopexit, label %bb.f, !llvm.loop !100

.loopexit:                                        ; preds = %bb.d, %bb.h
  %.0141 = phi ptr [ %i.bk, %bb.h ], [ null, %bb.d ] ; 2 uses
  br i1 %i.e, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %.loopexit
  %i.dj = mul nsw i32 %20, 100
  %i.dk = add i32 %i.dj, %12
  %i.dl = zext nneg i32 %.0143.lcssa to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.dl
  %wide.trip.count214 = zext nneg i32 %11 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph192, %bb.o
  %indvars.iv211 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next212, %bb.o ] ; 11 uses
  %.0145190 = phi i32 [ 0, %.lr.ph192 ], [ %.2, %bb.o ] ; 2 uses
  %.0147189 = phi i32 [ 0, %.lr.ph192 ], [ %.2149, %bb.o ] ; 2 uses
  %.4188 = phi i32 [ 0, %.lr.ph192 ], [ %.5, %bb.o ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv211
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8
  %.not164 = icmp eq i32 %i.do, 0
  br i1 %.not164, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv211 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !8  ; 2 uses
  %.not165 = icmp eq i32 %i.dq, 0
  br i1 %.not165, label %._crit_edge216, label %bb.k

._crit_edge216:                                   ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv211
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !8
  %.phi.trans.insert217 = getelementptr inbounds nuw [32 x i8], ptr %19, i64 %indvars.iv211
  %.phi.trans.insert218 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert217, i64 8
  %.pre219 = load ptr, ptr %.phi.trans.insert218, align 8, !tbaa !56
  %.phi.trans.insert220 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv211
  %.pre221 = load i32, ptr %.phi.trans.insert220, align 4, !tbaa !8
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv211
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8  ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv211
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8  ; 2 uses
  %i.dv = add i32 %i.ds, -1
  %i.dw = add i32 %i.dv, %i.du                    ; 2 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %19, i64 %indvars.iv211
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !56 ; 2 uses
  %i.ea = sext i32 %i.dw to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !37
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = sext i32 %i.dq to i64
  store i64 %i.ee, ptr %i.eb, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge216, %bb.k
  %i.ef = phi i32 [ %i.ds, %bb.k ], [ %.pre221, %._crit_edge216 ]
  %i.eg = phi ptr [ %i.dz, %bb.k ], [ %.pre219, %._crit_edge216 ]
  %i.eh = phi i32 [ %i.du, %bb.k ], [ %.pre, %._crit_edge216 ]
  %.1148 = phi i32 [ %i.dw, %bb.k ], [ %.0147189, %._crit_edge216 ] ; 2 uses
  %.1146 = phi i32 [ %i.ed, %bb.k ], [ %.0145190, %._crit_edge216 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %19, i64 %indvars.iv211 ; 2 uses
  %i.ej = sext i32 %i.ef to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !60
  %i.en = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.ej
  %i.eo = call i32 @ADIOI_Type_create_hindexed_x(i32 noundef %i.eh, ptr noundef %i.ek, ptr noundef %i.en, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.ep = call i32 @PMPI_Type_commit(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.er = trunc nuw nsw i64 %indvars.iv211 to i32 ; 2 uses
  %i.es = add i32 %i.dk, %i.er
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.eu = sext i32 %.4188 to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.eu
  %i.ew = call i32 @PMPI_Isend(ptr noundef null, i32 noundef 1, ptr noundef %i.eq, i32 noundef %i.er, i32 noundef %i.es, ptr noundef %i.et, ptr noundef %i.ev) #6 ; 0 uses
  %i.ex = call i32 @PMPI_Type_free(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.ey = load i32, ptr %i.dp, align 4, !tbaa !8
  %.not166 = icmp eq i32 %i.ey, 0
  br i1 %.not166, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.fa = sext i32 %.1146 to i64
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !56
  %i.fc = sext i32 %.1148 to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  store i64 %i.fa, ptr %i.fd, align 8, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fe = add nsw i32 %.4188, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n
  %.5 = phi i32 [ %i.fe, %bb.n ], [ %.4188, %bb.i ]
  %.2149 = phi i32 [ %.1148, %bb.n ], [ %.0147189, %bb.i ]
  %.2 = phi i32 [ %.1146, %bb.n ], [ %.0145190, %bb.i ]
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge193, label %bb.i, !llvm.loop !102

._crit_edge193:                                   ; preds = %bb.o, %.loopexit
  %.not163 = icmp eq i32 %.0143.lcssa, 0
  br i1 %.not163, label %bb.r, label %bb.p

._crit_edge193.thread235:                         ; preds = %.preheader
  %.not163237 = icmp eq i32 %.0143.lcssa, 0
  br i1 %.not163237, label %bb.r, label %.thread238

.thread238:                                       ; preds = %._crit_edge193.thread235
  %i.ff = tail call i32 @PMPI_Waitall(i32 noundef %.0143.lcssa, ptr noundef %i.ap, ptr noundef null) #6 ; 0 uses
  br label %bb.q

._crit_edge193.thread:                            ; preds = %.preheader170
  %.not163231 = icmp eq i32 %.0143.lcssa, 0
  br i1 %.not163231, label %bb.r, label %.thread

.thread:                                          ; preds = %._crit_edge193.thread
  %i.fg = tail call i32 @PMPI_Waitall(i32 noundef %.0143.lcssa, ptr noundef %i.ap, ptr noundef null) #6 ; 0 uses
  br label %.critedge

bb.p:                                             ; preds = %._crit_edge193
  %i.fh = call i32 @PMPI_Waitall(i32 noundef %.0143.lcssa, ptr noundef %i.ap, ptr noundef null) #6 ; 0 uses
  br i1 %.not, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.thread238, %bb.p
  %.0141229232240 = phi ptr [ %i.bk, %.thread238 ], [ %.0141, %bb.p ] ; 2 uses
  call void @ADIOI_Fill_user_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %.0141229232240, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr poison, ptr poison, ptr noundef %10, i32 noundef %11, i32 noundef %14, i64 noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18, i64 noundef %21)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge193.thread235, %._crit_edge193.thread, %bb.q, %._crit_edge193
  %.0141229233 = phi ptr [ null, %._crit_edge193.thread ], [ %.0141229232240, %bb.q ], [ %.0141, %._crit_edge193 ], [ %i.bk, %._crit_edge193.thread235 ] ; 2 uses
  %i.fi = zext nneg i32 %.0143.lcssa to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.fi
  %i.fk = call i32 @PMPI_Waitall(i32 noundef %.0142.lcssa, ptr noundef %i.fj, ptr noundef null) #6 ; 0 uses
  call void @ADIOI_Free_fn(ptr noundef %i.ap, i32 noundef 891, ptr noundef nonnull @.str) #6
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fl = load ptr, ptr %.0141229233, align 8, !tbaa !84
  call void @ADIOI_Free_fn(ptr noundef %i.fl, i32 noundef 894, ptr noundef nonnull @.str) #6
  call void @ADIOI_Free_fn(ptr noundef nonnull %.0141229233, i32 noundef 895, ptr noundef nonnull @.str) #6
  br label %bb.t

.critedge:                                        ; preds = %.thread, %bb.p
  %i.fm = zext nneg i32 %.0143.lcssa to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.fm
  %i.fo = call i32 @PMPI_Waitall(i32 noundef %.0142.lcssa, ptr noundef nonnull %i.fn, ptr noundef null) #6 ; 0 uses
  call void @ADIOI_Free_fn(ptr noundef %i.ap, i32 noundef 891, ptr noundef nonnull @.str) #6
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare i32 @PMPI_Alltoall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Irecv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ADIOI_Type_create_hindexed_x(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_commit(ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Isend(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_free(ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Waitall(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 long long", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 long", !11, i64 0}
!14 = !{!15, !22, i64 136}
!15 = !{!"ADIOI_FileD", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !16, i64 32, !17, i64 40, !17, i64 48, !18, i64 56, !19, i64 64, !5, i64 72, !5, i64 76, !20, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !17, i64 104, !21, i64 112, !21, i64 120, !17, i64 128, !22, i64 136, !23, i64 144, !5, i64 152, !24, i64 160, !21, i64 184, !20, i64 192, !25, i64 200, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !26, i64 224, !11, i64 232, !10, i64 240, !27, i64 248, !5, i64 256, !20, i64 264, !29, i64 272, !5, i64 280, !29, i64 288, !5, i64 296}
!16 = !{!"long", !6, i64 0}
!17 = !{!"long long", !6, i64 0}
!18 = !{!"p1 _ZTS16ADIOI_Fns_struct", !11, i64 0}
!19 = !{!"p1 _ZTS19ompi_communicator_t", !11, i64 0}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!"p1 _ZTS15ompi_datatype_t", !11, i64 0}
!22 = !{!"p1 _ZTS18ADIOI_Hints_struct", !11, i64 0}
!23 = !{!"p1 _ZTS11ompi_info_t", !11, i64 0}
!24 = !{!"ompi_status_public_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !16, i64 16}
!25 = !{!"p1 _ZTS11ADIOI_FileD", !11, i64 0}
!26 = !{!"p1 _ZTS17ompi_errhandler_t", !11, i64 0}
!27 = !{!"p2 _ZTS15ompi_datatype_t", !28, i64 0}
!28 = !{!"any p2 pointer", !11, i64 0}
!29 = !{!"p1 _ZTS10ompi_win_t", !11, i64 0}
!30 = !{!31, !5, i64 28}
!31 = !{!"ADIOI_Hints_struct", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !20, i64 80, !32, i64 88, !6, i64 96}
!32 = !{!"p1 int", !11, i64 0}
!33 = !{!15, !19, i64 64}
!34 = !{!31, !5, i64 20}
!35 = !{!15, !17, i64 40}
!36 = !{!31, !5, i64 12}
!37 = !{!17, !17, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!15, !21, i64 120}
!41 = !{!15, !17, i64 104}
!42 = !{!15, !17, i64 128}
!43 = !{!15, !18, i64 56}
!44 = !{!45, !11, i64 16}
!45 = !{!"ADIOI_Fns_struct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !20, i64 192, !11, i64 200, !11, i64 208, !11, i64 216}
!46 = !{!45, !11, i64 72}
!47 = !{!31, !5, i64 76}
!48 = !{!31, !5, i64 8}
!49 = !{!32, !32, i64 0}
!50 = !{!11, !11, i64 0}
!51 = !{!52, !10, i64 0}
!52 = !{!"", !10, i64 0, !10, i64 8, !13, i64 16, !5, i64 24}
!53 = !{!31, !5, i64 24}
!54 = distinct !{!54, !39}
!55 = !{!52, !5, i64 24}
!56 = !{!52, !10, i64 8}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !39}
!59 = !{!15, !20, i64 264}
!60 = !{!52, !13, i64 16}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !39, !64, !65}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = distinct !{!66, !39, !65, !64}
!67 = distinct !{null}
!68 = !{!16, !16, i64 0}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, !39}
!71 = !{!15, !17, i64 48}
!72 = !{!73, !10, i64 24}
!73 = !{!"ADIOI_Fl_node", !21, i64 0, !17, i64 8, !10, i64 16, !10, i64 24, !17, i64 32, !17, i64 40, !5, i64 48, !5, i64 52}
!74 = !{!73, !17, i64 8}
!75 = !{!73, !10, i64 16}
!76 = distinct !{!76, !39}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39}
!79 = distinct !{!79, !39}
!80 = distinct !{!80, !39}
!81 = distinct !{!81, !39, !64, !65}
!82 = distinct !{!82, !39, !64}
!83 = distinct !{!83, !39}
!84 = !{!20, !20, i64 0}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !39}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !39}
!94 = distinct !{!94, !39, !64, !65}
!95 = distinct !{!95, !39, !65, !64}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = !{!21, !21, i64 0}
!102 = distinct !{!102, !39}
end_hunk_1
