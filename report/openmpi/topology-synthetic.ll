inline.NumInlined: 47
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hwloc_synthetic_process_indexes:bb.a
bb.aj:                                            ; preds = %.lr.ph401.split
  %i.co = add i64 %.1248400, 1                    ; 2 uses
  %i.cp = getelementptr inbounds nuw [80 x i8], ptr %i.bs, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !99
  %.not283 = icmp eq i32 %i.cq, 0
  br i1 %.not283, label %.thread509, label %.lr.ph401.split

.loopexit:                                        ; preds = %.lr.ph401.split, %bb.af
  %.us-phi = phi i64 [ %.1248400.us, %bb.af ], [ %.1248400, %.lr.ph401.split ]
  %i.cr = trunc i64 %.us-phi to i32               ; 2 uses
  %i.cs = zext i32 %.2237407 to i64
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %i.cr, ptr %i.cu, align 4, !tbaa !151
  %i.cv = icmp eq i32 %i.cr, -1
  br i1 %i.cv, label %.thread509, label %bb.al

.thread509:                                       ; preds = %.loopexit, %.preheader364, %bb.aj, %bb.ag
  %.not292 = icmp eq i32 %3, 0
  br i1 %.not292, label %.thread353, label %bb.ak

bb.ak:                                            ; preds = %.thread509
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.cx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.53, ptr noundef nonnull %.3409) #28 ; 0 uses
  br label %.thread353

bb.al:                                            ; preds = %.loopexit
  %i.cy = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.3409, i32 noundef 58) #21 ; 3 uses
  %.not286 = icmp eq ptr %i.cy, null
  %i.cz = icmp ugt ptr %i.cy, %i.z
  %or.cond318 = select i1 %.not286, i1 true, i1 %i.cz
  br i1 %or.cond318, label %.preheader363, label %bb.am

.preheader363:                                    ; preds = %bb.al
  %.not450 = icmp eq i32 %.0239.lcssa, 0
  br i1 %.not450, label %._crit_edge420, label %.lr.ph419

.lr.ph419:                                        ; preds = %.preheader363
  %i.da = zext i32 %.0239.lcssa to i64            ; 2 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 3 uses
  %i.dc = add i32 %.2237407, 1
  %i.dd = call i32 @hwloc_type_sscanf(ptr noundef nonnull %i.db, ptr noundef nonnull %i.d, ptr noundef nonnull %4, i64 noundef 40) #22
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %._crit_edge412, label %bb.ae, !llvm.loop !152

bb.an:                                            ; preds = %.lr.ph419, %bb.aw
  %indvars.iv = phi i64 [ 0, %.lr.ph419 ], [ %indvars.iv.next, %bb.aw ] ; 3 uses
  %.4418 = phi i64 [ 1, %.lr.ph419 ], [ %i.ef, %bb.aw ]
  %.5232417 = phi i32 [ %i.y, %.lr.ph419 ], [ %spec.select321, %bb.aw ]
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %indvars.iv ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !151 ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ar
  %.0415 = phi i32 [ 0, %bb.an ], [ %.1, %bb.ar ] ; 2 uses
  %.2249414 = phi i64 [ 0, %bb.an ], [ %i.dq, %bb.ar ] ; 3 uses
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %.2249414
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !151 ; 3 uses
  %i.dl = icmp ne i32 %i.dk, %i.dh
  %.not289 = icmp eq i64 %.2249414, %indvars.iv
  %or.cond319 = or i1 %.not289, %i.dl
  br i1 %or.cond319, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not290 = icmp eq i32 %3, 0
  br i1 %.not290, label %.thread353, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.dn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dm, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.e) #28 ; 0 uses
  br label %.thread353

bb.ar:                                            ; preds = %bb.ao
  %i.do = icmp ult i32 %i.dk, %i.dh
  %i.dp = call i32 @llvm.umax.i32(i32 %i.dk, i32 %.0415)
  %.1 = select i1 %i.do, i32 %i.dp, i32 %.0415    ; 2 uses
  %i.dq = add nuw nsw i64 %.2249414, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.da
  br i1 %exitcond.not, label %bb.as, label %bb.ao, !llvm.loop !153

bb.as:                                            ; preds = %bb.ar
  %i.dr = zext i32 %i.dh to i64
  %i.ds = getelementptr inbounds nuw [80 x i8], ptr %i.bs, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !91 ; 2 uses
  %i.dv = udiv i64 %2, %i.du
  %i.dw = trunc i64 %i.dv to i32                  ; 3 uses
  %i.dx = zext i32 %.1 to i64
  %i.dy = getelementptr inbounds nuw [80 x i8], ptr %i.bs, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !91
  %i.eb = udiv i64 %i.du, %i.ea                   ; 2 uses
  %i.ec = trunc i64 %i.eb to i32                  ; 2 uses
  store i32 %i.dw, ptr %i.df, align 4, !tbaa !72
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !74
  %.not287 = icmp eq i32 %i.ec, 0
  br i1 %.not287, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.4, i32 noundef 259, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_synthetic_process_indexes) #24
  unreachable

bb.au:                                            ; preds = %bb.as
  %.not288 = icmp eq i32 %i.dw, 0
  br i1 %.not288, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4, i32 noundef 260, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_synthetic_process_indexes) #24
  unreachable

bb.aw:                                            ; preds = %bb.au
  %spec.select321 = call i32 @llvm.umin.i32(i32 %.5232417, i32 %i.dw) ; 2 uses
  %i.ee = and i64 %i.eb, 4294967295
  %i.ef = mul i64 %i.ee, %.4418                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond478.not = icmp eq i64 %indvars.iv.next, %i.da
  br i1 %exitcond478.not, label %._crit_edge420, label %bb.an, !llvm.loop !154

.thread353:                                       ; preds = %bb.aq, %bb.ap, %.thread509, %bb.ak, %bb.ah, %bb.ai, %._crit_edge412, %bb.ad
  call void @free(ptr noundef %i.ai) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %.thread359

._crit_edge420:                                   ; preds = %bb.aw, %.preheader363
  %.5232.lcssa = phi i32 [ %i.y, %.preheader363 ], [ %spec.select321, %bb.aw ]
  %.4.lcssa = phi i64 [ 1, %.preheader363 ], [ %i.ef, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge420, %.thread343
  %.9 = phi i32 [ %spec.select, %.thread343 ], [ %.5232.lcssa, %._crit_edge420 ] ; 2 uses
  %.7 = phi i64 [ %i.bk, %.thread343 ], [ %.4.lcssa, %._crit_edge420 ] ; 4 uses
  %.not306 = icmp eq i64 %.7, 0
  br i1 %.not306, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.4, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_synthetic_process_indexes) #24
  unreachable

bb.az:                                            ; preds = %bb.ax
  %.not307 = icmp eq i64 %.7, %2
  br i1 %.not307, label %._crit_edge484, label %bb.ba

._crit_edge484:                                   ; preds = %bb.az
  %.pre = zext i32 %.0239.lcssa to i64
  br label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.eg = zext i32 %.9 to i64
  %i.eh = udiv i64 %2, %.7
  %i.ei = icmp eq i64 %i.eh, %i.eg
  br i1 %i.ei, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ej = zext i32 %.0239.lcssa to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.ej ; 2 uses
  store i32 1, ptr %i.ek, align 4, !tbaa !72
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %.9, ptr %i.el, align 4, !tbaa !74
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %.not308 = icmp eq i32 %3, 0
  br i1 %.not308, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.en = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.58, i64 noundef %.7, i64 noundef %2) #28 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @free(ptr noundef nonnull %i.ai) #22
  br label %.thread359

bb.bf:                                            ; preds = %._crit_edge484, %bb.bb
  %.pre-phi485 = phi i64 [ %.pre, %._crit_edge484 ], [ %i.ag, %bb.bb ]
  %.1240 = phi i32 [ %.0239.lcssa, %._crit_edge484 ], [ %i.af, %bb.bb ]
  %i.eo = icmp ne i32 %.1240, 0
  %i.ep = icmp ne i64 %2, 0
  %or.cond449 = and i1 %i.eo, %i.ep
  br i1 %or.cond449, label %.lr.ph434, label %._crit_edge440.split

.lr.ph434:                                        ; preds = %bb.bf, %._crit_edge435
  %.0220437 = phi i32 [ %i.fb, %._crit_edge435 ], [ 1, %bb.bf ] ; 2 uses
  %.3250436 = phi i64 [ %i.fc, %._crit_edge435 ], [ 0, %bb.bf ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %.3250436 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !72
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !74 ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph434, %bb.bg
  %indvars.iv479 = phi i64 [ 0, %.lr.ph434 ], [ %6, %bb.bg ]
  %.0221432 = phi i32 [ 0, %.lr.ph434 ], [ %5, %bb.bg ] ; 2 uses
  %i.eu = udiv i32 %.0221432, %i.er
  %i.ev = urem i32 %i.eu, %i.et
  %i.ew = mul i32 %i.ev, %.0220437
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv479 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !65
  %i.ez = add i32 %i.ey, %i.ew
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !65
  %5 = add i32 %.0221432, 1                       ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.fa = icmp ugt i64 %2, %6
  br i1 %i.fa, label %bb.bg, label %._crit_edge435, !llvm.loop !155

._crit_edge435:                                   ; preds = %bb.bg
  %i.fb = mul i32 %i.et, %.0220437
  %i.fc = add nuw nsw i64 %.3250436, 1            ; 2 uses
  %exitcond482.not = icmp eq i64 %i.fc, %.pre-phi485
  br i1 %exitcond482.not, label %._crit_edge440.split, label %.lr.ph434, !llvm.loop !156

._crit_edge440.split:                             ; preds = %._crit_edge435, %bb.bf
  call void @free(ptr noundef nonnull %i.ai) #22
  %.not451 = icmp eq i64 %2, 0
  br i1 %.not451, label %._crit_edge444, label %.lr.ph443

bb.bh:                                            ; preds = %bb.bk
  %i.fd = add i32 %.1222441, 1                    ; 2 uses
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = icmp ugt i64 %2, %i.fe
  br i1 %i.ff, label %.lr.ph443, label %._crit_edge444, !llvm.loop !157

.lr.ph443:                                        ; preds = %._crit_edge440.split, %bb.bh
  %i.fg = phi i64 [ %i.fe, %bb.bh ], [ 0, %._crit_edge440.split ]
  %.1222441 = phi i32 [ %i.fd, %bb.bh ], [ 0, %._crit_edge440.split ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !65 ; 3 uses
  %i.fj = zext i32 %i.fi to i64
  %.not309 = icmp ugt i64 %2, %i.fj
  br i1 %.not309, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph443
  %.not311 = icmp eq i32 %3, 0
  br i1 %.not311, label %.thread359, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.fl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.59, i32 noundef %i.fi) #28 ; 0 uses
  br label %.thread359

bb.bk:                                            ; preds = %.lr.ph443
  %i.fm = icmp eq i32 %i.fi, 0
  %i.fn = icmp ne i32 %.1222441, 0
  %or.cond12 = and i1 %i.fn, %i.fm
  br i1 %or.cond12, label %bb.bl, label %bb.bh

bb.bl:                                            ; preds = %bb.bk
  %.not310 = icmp eq i32 %3, 0
  br i1 %.not310, label %.thread359, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.fp = call i64 @fwrite(ptr nonnull @.str.60, i64 60, i64 1, ptr %i.fo) #23 ; 0 uses
  br label %.thread359

._crit_edge444:                                   ; preds = %bb.bh, %._crit_edge440.split
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.h, ptr %i.fq, align 8, !tbaa !149
  br label %bb.bn

.thread359:                                       ; preds = %bb.bl, %bb.bm, %bb.bj, %.thread353, %bb.ab, %bb.be, %bb.bi, %._crit_edge, %.thread
  call void @free(ptr noundef %i.h) #22
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge444, %.thread359, %bb.d, %bb.c, %._crit_edge448, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc i64 @hwloc_synthetic_parse_memory_attr(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call i64 @__isoc23_strtoull(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0) #22 ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !86   ; 9 uses
  %i.d = call i32 @strncasecmp(ptr noundef readonly %i.c, ptr noundef nonnull @.str.39, i64 noundef 2) #21
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %i.b, 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = call i32 @strncasecmp(ptr noundef readonly %i.c, ptr noundef nonnull @.str.40, i64 noundef 2) #21
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.b, 30
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = call i32 @strncasecmp(ptr noundef readonly %i.c, ptr noundef nonnull @.str.41, i64 noundef 2) #21
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = shl i64 %i.b, 20
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = call i32 @strncasecmp(ptr noundef readonly %i.c, ptr noundef nonnull @.str.42, i64 noundef 2) #21
  %.not8 = icmp eq i32 %i.m, 0
  br i1 %.not8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = shl i64 %i.b, 10
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.h, %bb.f, %bb.b
  %i.p = phi ptr [ %i.c, %bb.g ], [ %i.o, %bb.h ], [ %i.l, %bb.f ], [ %i.i, %bb.d ], [ %i.f, %bb.b ]
  %.0 = phi i64 [ %i.b, %bb.g ], [ %i.n, %bb.h ], [ %i.k, %bb.f ], [ %i.h, %bb.d ], [ %i.e, %bb.b ]
  store ptr %i.p, ptr %1, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare noalias ptr @hwloc_bitmap_alloc() local_unnamed_addr #6

declare void @hwloc_alloc_root_sets(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @hwloc_synthetic_set_attr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !57
  switch i32 %i.a, label %bb.e [
    i32 12, label %bb.b
    i32 0, label %bb.f
    i32 13, label %bb.c
    i32 1, label %bb.f
    i32 19, label %bb.f
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 8, label %bb.d
    i32 9, label %bb.d
    i32 10, label %bb.d
    i32 11, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 10, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !158
  %i.g = add i32 %i.f, -1
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.g, ptr %i.i, align 8, !tbaa !61
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !144
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  store i64 %i.k, ptr %i.m, align 8, !tbaa !61
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !61
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %i.r, align 8, !tbaa !61
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61
end_hunk_0
