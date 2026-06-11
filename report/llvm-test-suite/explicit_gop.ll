inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@create_hierarchy:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2972
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 2108
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !18
  store i32 1, ptr %i.bb, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i32 0, ptr %i.be, align 4, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 0, ptr %i.bf, align 4, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 %i.ao, ptr %i.bg, align 4, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv.next ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !18
  store i32 1, ptr %i.bh, align 4, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 0, ptr %i.bk, align 4, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 0, ptr %i.bl, align 4, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 %i.ao, ptr %i.bm, align 4, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader67.loopexit.unr-lcssa, label %bb.j, !llvm.loop !45

.preheader66:                                     ; preds = %._crit_edge, %.preheader67
  %i.bn = icmp sgt i32 %i.c, 1
  br i1 %i.bn, label %.preheader65, label %.loopexit

bb.k:                                             ; preds = %.lr.ph74, %._crit_edge
  %.06072 = phi i32 [ 1, %.lr.ph74 ], [ %i.co, %._crit_edge ] ; 5 uses
  %i.bo = shl nuw i32 1, %.06072                  ; 5 uses
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  %i.bq = sub nsw i32 %i.h, %i.bo                 ; 3 uses
  %.not80 = icmp sgt i32 %i.bo, %i.bq
  br i1 %.not80, label %._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.k
  %i.br = load i32, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.bs = load i32, ptr %i.az, align 4, !tbaa !22
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %.lr.ph71.split.us, label %.lr.ph71.split

.lr.ph71.split.us:                                ; preds = %.lr.ph71
  %i.bt = load i32, ptr %i.ba, align 4, !tbaa !23
  %i.bu = add nsw i32 %i.bt, %i.br
  %i.bv = tail call noundef i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bw = zext nneg i32 %i.bp to i64
  %i.bx = sext i32 %i.bo to i64
  %i.by = sext i32 %i.bq to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph71.split.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.l ], [ %i.bw, %.lr.ph71.split.us ] ; 2 uses
  %i.bz = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %indvars.iv86 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 %.06072, ptr %i.ca, align 4, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 2, ptr %i.cb, align 4, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 %i.bv, ptr %i.cc, align 4, !tbaa !24
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, %i.bx ; 2 uses
  %i.cd = icmp slt i64 %indvars.iv.next87, %i.by
  br i1 %i.cd, label %bb.l, label %._crit_edge, !llvm.loop !46

.lr.ph71.split:                                   ; preds = %.lr.ph71
  %i.ce = sub nsw i32 %i.br, %.06072
  %i.cf = tail call noundef i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %i.cg = zext nneg i32 %i.bp to i64
  %i.ch = sext i32 %i.bo to i64
  %i.ci = sext i32 %i.bq to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph71.split, %bb.m
  %indvars.iv83 = phi i64 [ %i.cg, %.lr.ph71.split ], [ %indvars.iv.next84, %bb.m ] ; 2 uses
  %i.cj = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %indvars.iv83 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i32 %.06072, ptr %i.ck, align 4, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i32 2, ptr %i.cl, align 4, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 %i.cf, ptr %i.cm, align 4, !tbaa !24
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, %i.ch ; 2 uses
  %i.cn = icmp slt i64 %indvars.iv.next84, %i.ci
  br i1 %i.cn, label %bb.m, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.m, %bb.l, %bb.k
  %i.co = add nuw nsw i32 %.06072, 1              ; 2 uses
  %exitcond90.not = icmp eq i32 %i.co, %.062
  br i1 %exitcond90.not, label %.preheader66, label %bb.k, !llvm.loop !47

.preheader65:                                     ; preds = %.preheader66, %.critedge
  %.276 = phi i32 [ %i.dd, %.critedge ], [ 1, %.preheader66 ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader65, %bb.o
  %.16175 = phi i32 [ %.276, %.preheader65 ], [ %i.cu, %bb.o ] ; 3 uses
  %i.cp = load ptr, ptr @gop_structure, align 8, !tbaa !8 ; 2 uses
  %i.cq = zext nneg i32 %.16175 to i64            ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !19
  %i.cu = add nsw i32 %.16175, -1                 ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !19
  %i.cz = icmp sgt i32 %i.ct, %i.cy
  br i1 %i.cz, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.cw, i64 24, i1 false), !tbaa.struct !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cw, ptr noundef nonnull align 4 dereferenceable(24) %i.cr, i64 24, i1 false), !tbaa.struct !48
  %i.da = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.db, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !48
  %i.dc = icmp sgt i32 %.16175, 1
  br i1 %i.dc, label %bb.n, label %.critedge, !llvm.loop !49

.critedge:                                        ; preds = %bb.n, %bb.o
  %i.dd = add nuw nsw i32 %.276, 1                ; 2 uses
  %exitcond91.not = icmp eq i32 %i.dd, %i.c
  br i1 %exitcond91.not, label %.loopexit, label %.preheader65, !llvm.loop !50

.loopexit:                                        ; preds = %.critedge, %.preheader66, %._crit_edge79
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @init_gop_structure() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2968
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %.not = icmp eq i32 %i.c, 3
  %.in.v = select i1 %.not, i64 20, i64 2096
  %.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in.v
  %i.d = load i32, ptr %.in, align 4, !tbaa !4
  %i.e = tail call noundef i32 @llvm.smax.i32(i32 %i.d, i32 10)
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 24) #12 ; 2 uses
  store ptr %i.g, ptr @gop_structure, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @clear_gop_structure() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @gop_structure, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @interpret_gop_structure() local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr @input, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2976
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #14
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -2
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.loopexit
  %.082 = phi i32 [ 0, %.preheader ], [ %.1, %.loopexit ] ; 25 uses
  %.05081 = phi i32 [ 0, %.preheader ], [ %.151, %.loopexit ] ; 12 uses
  %.05280 = phi i32 [ 0, %.preheader ], [ %.153, %.loopexit ] ; 8 uses
  %.05479 = phi i32 [ 0, %.preheader ], [ %.155, %.loopexit ] ; 5 uses
  %.05678 = phi i32 [ 0, %.preheader ], [ %.157, %.loopexit ]
  %.05977 = phi i32 [ 0, %.preheader ], [ %i.dg, %.loopexit ] ; 20 uses
  %i.i = icmp eq i32 %.05678, 0
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @input, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2976
  %i.l = sext i32 %.05977 to i64
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51
  switch i8 %i.n, label %bb.g [
    i8 80, label %bb.d
    i8 112, label %bb.d
    i8 66, label %bb.e
    i8 98, label %bb.e
    i8 73, label %bb.f
    i8 105, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.o = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.p = sext i32 %.082 to i64
  %i.q = getelementptr inbounds [24 x i8], ptr %i.o, i64 %i.p
  store i32 0, ptr %i.q, align 4, !tbaa !16
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.r = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.s = sext i32 %.082 to i64
  %i.t = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.s
  store i32 1, ptr %i.t, align 4, !tbaa !16
  br label %.loopexit

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.u = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.v = sext i32 %.082 to i64
  %i.w = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.v
  store i32 2, ptr %i.w, align 4, !tbaa !16
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(86) @errortext, ptr noundef nonnull align 1 dereferenceable(86) @.str.3, i64 86, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.x = icmp eq i32 %.05479, 0
  br i1 %i.x, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @__ctype_b_loc() #15
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.aa = load ptr, ptr @input, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2976
  %i.ac = sext i32 %.05977 to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !51
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !54
  %i.ai = and i16 %i.ah, 2048
  %.not70 = icmp eq i16 %i.ai, 0
  br i1 %.not70, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.al = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.am = sext i32 %.082 to i64
  %i.an = getelementptr inbounds [24 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ak, ptr %i.ao, align 4, !tbaa !18
  %i.ap = icmp sgt i32 %i.ak, -1
  %.pre = load ptr, ptr @input, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %.pre84 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !55 ; 2 uses
  %.not71 = icmp slt i32 %i.ak, %.pre84
  %or.cond = select i1 %i.ap, i1 %.not71, i1 false
  br i1 %or.cond, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %i.aq = add nsw i32 %.pre84, -1
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.5, i32 noundef %i.aq) #13 ; 0 uses
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.as = icmp sgt i32 %.082, 0
  br i1 %i.as, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.k
  %wide.trip.count = zext nneg i32 %.082 to i64
  %.pre86 = load ptr, ptr @gop_structure, align 8, !tbaa !8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %i.at = phi ptr [ %.pre86, %.lr.ph.preheader ], [ %i.ba, %bb.m ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %0 = load i32, ptr %i.av, align 4, !tbaa !18    ; 2 uses
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ax = icmp eq i32 %0, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.6, i32 noundef %0, i32 noundef %.082, i32 noundef %i.ay) #13 ; 0 uses
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  %.pre85 = load ptr, ptr @gop_structure, align 8, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %i.ba = phi ptr [ %i.at, %.lr.ph ], [ %.pre85, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !56

bb.n:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(83) @errortext, ptr noundef nonnull align 1 dereferenceable(83) @.str.7, i64 83, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit

bb.o:                                             ; preds = %bb.h
  %.not95 = icmp eq i32 %.05280, 0
  br i1 %.not95, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bb = tail call ptr @__ctype_b_loc() #15
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !52
  %i.bd = load ptr, ptr @input, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2976
  %i.bf = sext i32 %.05977 to i64
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !51  ; 2 uses
  %i.bi = sext i8 %i.bh to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !54
  %i.bl = and i16 %i.bk, 2048
  %.not = icmp eq i16 %i.bl, 0
  br i1 %.not, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  switch i8 %i.bh, label %bb.t [
    i8 69, label %bb.r
    i8 101, label %bb.r
    i8 82, label %bb.s
    i8 114, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bm = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.bn = sext i32 %.082 to i64
  %i.bo = getelementptr inbounds [24 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 0, ptr %i.bp, align 4, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 0, ptr %i.bq, align 4, !tbaa !19
  br label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.q
  %i.br = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.bs = sext i32 %.082 to i64
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 2, ptr %i.bu, align 4, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i32 1, ptr %i.bv, align 4, !tbaa !19
  %i.bw = load ptr, ptr @img, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 15612
  store i32 2, ptr %i.bx, align 4, !tbaa !27
  br label %.loopexit

bb.t:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(89) @errortext, ptr noundef nonnull align 1 dereferenceable(89) @.str.8, i64 89, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit

bb.u:                                             ; preds = %bb.o
  %i.by = icmp eq i32 %.05081, 0
  %i.bz = tail call ptr @__ctype_b_loc() #15
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !52
  %i.cb = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2976
  %i.cd = sext i32 %.05977 to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !51
  %i.cg = sext i8 %i.cf to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !54
  %i.cj = and i16 %i.ci, 2048
  %.not69 = icmp eq i16 %i.cj, 0                  ; 2 uses
  br i1 %i.by, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %.not69, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ce, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.cl = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.cm = sext i32 %.082 to i64
  %i.cn = getelementptr inbounds [24 x i8], ptr %i.cl, i64 %i.cm ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !16 ; 2 uses
  %i.cp = load ptr, ptr @input, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %switch.selectcmp = icmp eq i32 %i.co, 0
  %switch.select = select i1 %switch.selectcmp, i64 16, i64 2104
  %switch.selectcmp97 = icmp eq i32 %i.co, 2
  %switch.select98 = select i1 %switch.selectcmp97, i64 12, i64 %switch.select
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %switch.select98
  %.sink = load i32, ptr %i.cr, align 4, !tbaa !4 ; 2 uses
  store i32 %.sink, ptr %i.cq, align 4, !tbaa !24
  %i.cs = load ptr, ptr @img, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 15452
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !57
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cx = load i32, ptr %i.a, align 4, !tbaa !4
  %i.cy = add nsw i32 %i.cx, %.sink
  %i.cz = call noundef i32 @llvm.smax.i32(i32 %i.cy, i32 range(i32 -2147483647, -2147483648) %i.cv)
  %i.da = call noundef i32 @llvm.smin.i32(i32 %i.cz, i32 51)
  store i32 %i.da, ptr %i.cw, align 4, !tbaa !24
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) @errortext, ptr noundef nonnull align 1 dereferenceable(75) @.str.9, i64 75, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit

bb.y:                                             ; preds = %bb.u
  %i.db = icmp slt i32 %.05977, %i.h
  %or.cond73 = select i1 %.not69, i1 %i.db, i1 false
  br i1 %or.cond73, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.dc = add nsw i32 %.05977, -1                 ; 2 uses
  %i.dd = add nsw i32 %.082, 1                    ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.df = load i32, ptr %i.de, align 4, !tbaa !55
  %.not68 = icmp slt i32 %i.dd, %i.df
  br i1 %.not68, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(92) @errortext, ptr noundef nonnull align 1 dereferenceable(92) @.str.10, i64 92, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.p, %bb.k, %bb.r, %bb.s, %bb.t, %bb.d, %bb.e, %bb.f, %bb.g, %bb.x, %bb.w, %bb.z, %bb.aa, %bb.y, %bb.n
  %.160 = phi i32 [ %.05977, %bb.d ], [ %.05977, %bb.s ], [ %.05977, %bb.n ], [ %.05977, %bb.w ], [ %.05977, %bb.x ], [ %.05977, %bb.y ], [ %i.dc, %bb.aa ], [ %i.dc, %bb.z ], [ %.05977, %bb.r ], [ %.05977, %bb.p ], [ %.05977, %bb.g ], [ %.05977, %bb.f ], [ %.05977, %bb.e ], [ %.05977, %bb.t ], [ %.05977, %bb.k ], [ %.05977, %bb.m ]
  %.157 = phi i32 [ 1, %bb.d ], [ 1, %bb.s ], [ 1, %bb.n ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 1, %bb.r ], [ 1, %bb.p ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.t ], [ 1, %bb.k ], [ 1, %bb.m ]
  %.155 = phi i32 [ %.05479, %bb.d ], [ 1, %bb.s ], [ 0, %bb.n ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 1, %bb.r ], [ 1, %bb.p ], [ %.05479, %bb.g ], [ %.05479, %bb.f ], [ %.05479, %bb.e ], [ 1, %bb.t ], [ 1, %bb.k ], [ 1, %bb.m ]
  %.153 = phi i32 [ %.05280, %bb.d ], [ 1, %bb.s ], [ %.05280, %bb.n ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 1, %bb.r ], [ 0, %bb.p ], [ %.05280, %bb.g ], [ %.05280, %bb.f ], [ %.05280, %bb.e ], [ 1, %bb.t ], [ %.05280, %bb.k ], [ %.05280, %bb.m ]
  %.151 = phi i32 [ %.05081, %bb.d ], [ %.05081, %bb.s ], [ %.05081, %bb.n ], [ 1, %bb.w ], [ 0, %bb.x ], [ 1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ %.05081, %bb.r ], [ %.05081, %bb.p ], [ %.05081, %bb.g ], [ %.05081, %bb.f ], [ %.05081, %bb.e ], [ %.05081, %bb.t ], [ %.05081, %bb.k ], [ %.05081, %bb.m ]
  %.1 = phi i32 [ %.082, %bb.d ], [ %.082, %bb.s ], [ %.082, %bb.n ], [ %.082, %bb.w ], [ %.082, %bb.x ], [ %.082, %bb.y ], [ %i.dd, %bb.aa ], [ %i.dd, %bb.z ], [ %.082, %bb.r ], [ %.082, %bb.p ], [ %.082, %bb.g ], [ %.082, %bb.f ], [ %.082, %bb.e ], [ %.082, %bb.t ], [ %.082, %bb.k ], [ %.082, %bb.m ] ; 2 uses
  %i.dg = add nsw i32 %.160, 1                    ; 2 uses
  %i.dh = icmp slt i32 %i.dg, %i.f
  br i1 %i.dh, label %bb.b, label %.loopexit75.loopexit, !llvm.loop !58

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(67) @errortext, ptr noundef nonnull align 1 dereferenceable(67) @.str.11, i64 67, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit75

.loopexit75.loopexit:                             ; preds = %.loopexit
  %i.di = add nsw i32 %.1, 1
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %bb.ab
  %.2 = phi i32 [ 1, %bb.ab ], [ %i.di, %.loopexit75.loopexit ]
  %i.dj = load ptr, ptr @input, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2096
  store i32 %.2, ptr %i.dk, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @encode_enhancement_layer() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  %.pre48 = load ptr, ptr @img, align 8, !tbaa !8 ; 15 uses
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %.pre48, align 8, !tbaa !59
  %i.e = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %i.f = icmp sgt i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !60
  %.not4 = icmp eq i32 %i.h, 0
  %spec.select = zext i1 %.not4 to i32
  %i.i = getelementptr inbounds nuw i8, ptr %.pre48, i64 20
end_hunk_0
