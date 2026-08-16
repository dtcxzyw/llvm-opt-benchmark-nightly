inline.NumInlined: 482
inline.NumDeleted: 73
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Gia_IsoPrintClasses:bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val22 = load i32, ptr %i.c, align 4, !tbaa !39
  %i.d = sdiv i32 %.val22, 2
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.d) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val25 = load i32, ptr %i.g, align 4, !tbaa !39
  %i.h = icmp sgt i32 %.val25, 1
  br i1 %i.h, label %.critedge, label %._crit_edge

.critedge:                                        ; preds = %bb.a, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %bb.a ] ; 3 uses
  %i.i = phi ptr [ %i.r, %.critedge ], [ %i.f, %bb.a ]
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val24 = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val24, i64 %indvars.iv ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = lshr exact i64 %indvars.iv, 1
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.p, i32 noundef %i.l, i32 noundef %i.n) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val = load i32, ptr %i.s, align 4, !tbaa !39
  %i.t = trunc i64 %indvars.iv.next to i32
  %i.u = or disjoint i32 %i.t, 1
  %i.v = icmp slt i32 %i.u, %.val
  br i1 %i.v, label %.critedge, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define void @Gia_IsoPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.i) ; 0 uses
  %i.k = sitofp i64 %2 to float
  %i.l = fdiv float %i.k, 1.000000e+06
  %i.m = fpext float %i.l to double
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.m) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !54
  %i.p = tail call i32 @fflush(ptr noundef %i.o)  ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_IsoPrepare(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 12 uses
  store i32 0, ptr %i.b, align 4, !tbaa !45
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 2 uses
  %.val92131 = load i32, ptr %i.f, align 4, !tbaa !39
  %i.g = icmp sgt i32 %.val92131, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 32
  %.val93 = load ptr, ptr %i.h, align 8, !tbaa !44
  %.not = icmp eq ptr %.val93, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.val94.val = load ptr, ptr %i.i, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val94.val, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val92 = load i32, ptr %i.f, align 4, !tbaa !39
  %i.n = sext i32 %.val92 to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %.critedge, !llvm.loop !57

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph136, label %.critedge2

.lr.ph136:                                        ; preds = %.critedge
  %i.s = getelementptr i8, ptr %i.c, i64 32
  %.val = load ptr, ptr %i.s, align 8, !tbaa !44  ; 2 uses
  %.not86 = icmp eq ptr %.val, null
  br i1 %.not86, label %.critedge2, label %.lr.ph136.split

.lr.ph136.split:                                  ; preds = %.lr.ph136, %bb.d
  %i.t = phi i32 [ %i.am, %bb.d ], [ %i.q, %.lr.ph136 ]
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %bb.d ], [ 0, %.lr.ph136 ] ; 5 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv154
  %.val98 = load i64, ptr %i.u, align 4           ; 4 uses
  %i.v = and i64 %.val98, 2147483648
  %.not.i = icmp ne i64 %i.v, 0
  %i.w = and i64 %.val98, 536870911
  %i.x = icmp eq i64 %i.w, 536870911
  %narrow.i.not = or i1 %.not.i, %i.x
  br i1 %narrow.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph136.split
  %i.y = and i64 %.val98, 536870911
  %i.z = sub nsw i64 %indvars.iv154, %i.y
  %sext = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext, 30
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.ad = lshr i64 %.val98, 32
  %i.ae = and i64 %i.ad, 536870911
  %i.af = sub nsw i64 %indvars.iv154, %i.ae
  %sext194 = shl i64 %i.af, 32
  %i.ag = ashr exact i64 %sext194, 30
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !45
  %i.aj = tail call noundef i32 @llvm.smax.i32(i32 %i.ac, i32 %i.ai)
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv154
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !45
  %.pre = load i32, ptr %i.p, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph136.split
  %i.am = phi i32 [ %.pre, %bb.c ], [ %i.t, %.lr.ph136.split ] ; 2 uses
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next155, %i.an
  br i1 %i.ao, label %.lr.ph136.split, label %.critedge2, !llvm.loop !58

.critedge2:                                       ; preds = %bb.d, %.lr.ph136, %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !59 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 4      ; 2 uses
  %.val91138 = load i32, ptr %i.ar, align 4, !tbaa !39
  %i.as = icmp sgt i32 %.val91138, 0
  br i1 %i.as, label %.lr.ph141, label %.critedge4

.lr.ph141:                                        ; preds = %.critedge2
  %i.at = getelementptr i8, ptr %i.c, i64 32
  %.val102 = load ptr, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %.not87 = icmp eq ptr %.val102, null
  br i1 %.not87, label %.critedge4, label %.lr.ph141.split

.lr.ph141.split:                                  ; preds = %.lr.ph141
  %i.au = getelementptr i8, ptr %i.aq, i64 8
  %.val103.val = load ptr, ptr %i.au, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph141.split, %bb.e
  %indvars.iv157 = phi i64 [ 0, %.lr.ph141.split ], [ %indvars.iv.next158, %bb.e ] ; 2 uses
  %.0140 = phi i32 [ 0, %.lr.ph141.split ], [ %i.bh, %bb.e ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val103.val, i64 %indvars.iv157
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !45 ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [12 x i8], ptr %.val102, i64 %i.ax
  %.val99 = load i64, ptr %i.ay, align 4
  %i.az = trunc i64 %.val99 to i32
  %i.ba = and i32 %i.az, 536870911
  %i.bb = sub nsw i32 %i.aw, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !45
  %i.bf = add nsw i32 %i.be, 1                    ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ax
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !45
  %i.bh = tail call noundef i32 @llvm.smax.i32(i32 %.0140, i32 %i.bf) ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %.val91 = load i32, ptr %i.ar, align 4, !tbaa !39
  %i.bi = sext i32 %.val91 to i64
  %i.bj = icmp slt i64 %indvars.iv.next158, %i.bi
  br i1 %i.bj, label %bb.e, label %.critedge4, !llvm.loop !60

.critedge4:                                       ; preds = %bb.e, %.lr.ph141, %.critedge2
  %.0.lcssa = phi i32 [ 0, %.critedge2 ], [ 0, %.lr.ph141 ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bk = add nuw nsw i32 %.0.lcssa, 1            ; 2 uses
  %1 = zext nneg i32 %i.bk to i64
  %i.bl = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 4) #26 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !33 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %.lr.ph146.preheader, label %._crit_edge

.lr.ph146.preheader:                              ; preds = %.critedge4
  %wide.trip.count = zext nneg i32 %i.bn to i64
  %i.bp = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %i.bq = add nsw i32 %i.bn, -2
  %i.br = icmp ult i32 %i.bq, 3
  br i1 %i.br, label %.lr.ph146.epil.preheader, label %.lr.ph146.preheader.new

.lr.ph146.preheader.new:                          ; preds = %.lr.ph146.preheader
  %unroll_iter = and i64 %i.bp, -4
  br label %.lr.ph146

.lr.ph146:                                        ; preds = %.lr.ph146, %.lr.ph146.preheader.new
  %indvars.iv160 = phi i64 [ 1, %.lr.ph146.preheader.new ], [ %indvars.iv.next161.3, %.lr.ph146 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph146.preheader.new ], [ %niter.next.3, %.lr.ph146 ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv160
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !45
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !45
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !45
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv160
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !45
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !45
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !45
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv160
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !45
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !45
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !45
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv160
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !45
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !45
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !45
  %indvars.iv.next161.3 = add nuw nsw i64 %indvars.iv160, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph146, !llvm.loop !61

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph146
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph146.epil.preheader

.lr.ph146.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph146.preheader
  %indvars.iv160.epil.init = phi i64 [ 1, %.lr.ph146.preheader ], [ %indvars.iv.next161.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph146.epil

.lr.ph146.epil:                                   ; preds = %.lr.ph146.epil, %.lr.ph146.epil.preheader
  %indvars.iv160.epil = phi i64 [ %indvars.iv160.epil.init, %.lr.ph146.epil.preheader ], [ %indvars.iv.next161.epil, %.lr.ph146.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph146.epil.preheader ], [ %epil.iter.next, %.lr.ph146.epil ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv160.epil
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !45
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !45
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !45
  %indvars.iv.next161.epil = add nuw nsw i64 %indvars.iv160.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph146.epil, !llvm.loop !62

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph146.epil, %.critedge4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !42 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 3 uses
  store i32 0, ptr %i.db, align 4, !tbaa !39
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !40
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !41 ; 3 uses
  br i1 %i.dd, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %._crit_edge
  %.not9.i.i = icmp eq ptr %i.df, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.df, i64 noundef 64) #29
  %.pre172.pre = load i32, ptr %i.db, align 4, !tbaa !39
  %.pre173.pre = load ptr, ptr %i.cz, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.dh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.g, %bb.h
  %.pre173 = phi ptr [ %.pre173.pre, %bb.g ], [ %i.da, %bb.h ]
  %.pre172 = phi i32 [ %.pre172.pre, %bb.g ], [ 0, %bb.h ]
  %i.di = phi ptr [ %i.dg, %bb.g ], [ %i.dh, %bb.h ] ; 2 uses
  store ptr %i.di, ptr %i.de, align 8, !tbaa !41
  store i32 16, ptr %i.da, align 8, !tbaa !40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %._crit_edge, %Vec_IntGrow.exit11.sink.split.i
  %i.dj = phi ptr [ %.pre173, %Vec_IntGrow.exit11.sink.split.i ], [ %i.da, %._crit_edge ] ; 6 uses
  %i.dk = phi i32 [ %.pre172, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.dl = phi ptr [ %i.di, %Vec_IntGrow.exit11.sink.split.i ], [ %i.df, %._crit_edge ]
  %i.dm = add nsw i32 %i.dk, 1
  store i32 %i.dm, ptr %i.db, align 4, !tbaa !39
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dn
  store i32 0, ptr %i.do, align 4, !tbaa !45
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !39 ; 7 uses
  %i.dr = load i32, ptr %i.dj, align 8, !tbaa !40
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.i, label %.lr.ph149.preheader

bb.i:                                             ; preds = %Vec_IntPush.exit
  %i.dt = icmp slt i32 %i.dq, 16
  br i1 %i.dt, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i110 = icmp eq ptr %i.dv, null
  br i1 %.not9.i.i110, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dv, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i111

bb.l:                                             ; preds = %bb.j
  %i.dx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i111

Vec_IntGrow.exit.i111:                            ; preds = %bb.l, %bb.k
  %i.dy = phi ptr [ %i.dw, %bb.k ], [ %i.dx, %bb.l ]
  store ptr %i.dy, ptr %i.du, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i108

bb.m:                                             ; preds = %bb.i
  %i.dz = icmp samesign ult i32 %i.dq, 1073741823
  %i.ea = shl nuw nsw i32 %i.dq, 1
  %spec.select.i105 = select i1 %i.dz, i32 %i.ea, i32 2147483647 ; 3 uses
  %.not.i9.i106 = icmp samesign ult i32 %i.dq, %spec.select.i105
  br i1 %.not.i9.i106, label %bb.n, label %.lr.ph149.preheader

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !41 ; 2 uses
  %.not9.i10.i107 = icmp eq ptr %i.ec, null
  %i.ed = zext nneg i32 %spec.select.i105 to i64
  %i.ee = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  br i1 %.not9.i10.i107, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ef = tail call ptr @realloc(ptr noundef nonnull %i.ec, i64 noundef %i.ee) #29
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.eg = tail call noalias ptr @malloc(i64 noundef %i.ee) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.eh = phi ptr [ %i.ef, %bb.o ], [ %i.eg, %bb.p ]
  store ptr %i.eh, ptr %i.eb, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i108

Vec_IntGrow.exit11.sink.split.i108:               ; preds = %bb.q, %Vec_IntGrow.exit.i111
  %spec.select.sink.i109 = phi i32 [ %spec.select.i105, %bb.q ], [ 16, %Vec_IntGrow.exit.i111 ]
  store i32 %spec.select.sink.i109, ptr %i.dj, align 8, !tbaa !40
  %.pre174 = load i32, ptr %i.dp, align 4, !tbaa !39
  br label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %Vec_IntGrow.exit11.sink.split.i108, %bb.m, %Vec_IntPush.exit
  %i.ei = phi i32 [ %i.dq, %Vec_IntPush.exit ], [ %i.dq, %bb.m ], [ %.pre174, %Vec_IntGrow.exit11.sink.split.i108 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !41
  %i.el = add nsw i32 %i.ei, 1
  store i32 %i.el, ptr %i.dp, align 4, !tbaa !39
  %i.em = sext i32 %i.ei to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.em
  store i32 1, ptr %i.en, align 4, !tbaa !45
  %i.eo = add nuw nsw i32 %.0.lcssa, 2
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = tail call noalias ptr @calloc(i64 noundef %i.ep, i64 noundef 4) #26 ; 4 uses
  store i32 1, ptr %i.eq, align 4, !tbaa !45
  %wide.trip.count166 = zext nneg i32 %i.bk to i64
  br label %.lr.ph149

.preheader:                                       ; preds = %Vec_IntPush.exit128
  %i.er = load i32, ptr %i.bm, align 8, !tbaa !33
  %i.es = icmp sgt i32 %i.er, 1
  br i1 %i.es, label %.lr.ph151, label %.loopexit

.lr.ph151:                                        ; preds = %.preheader
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.eu = getelementptr i8, ptr %0, i64 40
  %.val104 = load ptr, ptr %i.eu, align 8, !tbaa !38
  br label %bb.aj

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %Vec_IntPush.exit128
  %i.ev = phi i32 [ 1, %.lr.ph149.preheader ], [ %i.gy, %Vec_IntPush.exit128 ] ; 2 uses
  %indvars.iv163 = phi i64 [ 0, %.lr.ph149.preheader ], [ %indvars.iv.next164, %Vec_IntPush.exit128 ] ; 2 uses
  %i.ew = load ptr, ptr %i.cz, align 8, !tbaa !42 ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !39 ; 7 uses
  %i.ez = load i32, ptr %i.ew, align 8, !tbaa !40
  %i.fa = icmp eq i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.r, label %Vec_IntPush.exit120

bb.r:                                             ; preds = %.lr.ph149
  %i.fb = icmp slt i32 %i.ey, 16
  br i1 %i.fb, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i118 = icmp eq ptr %i.fd, null
  br i1 %.not9.i.i118, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fe = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fd, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i119

bb.u:                                             ; preds = %bb.s
  %i.ff = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i119

Vec_IntGrow.exit.i119:                            ; preds = %bb.u, %bb.t
  %i.fg = phi ptr [ %i.fe, %bb.t ], [ %i.ff, %bb.u ]
  store ptr %i.fg, ptr %i.fc, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i116

bb.v:                                             ; preds = %bb.r
  %i.fh = icmp samesign ult i32 %i.ey, 1073741823
  %i.fi = shl nuw nsw i32 %i.ey, 1
  %spec.select.i113 = select i1 %i.fh, i32 %i.fi, i32 2147483647 ; 3 uses
  %.not.i9.i114 = icmp samesign ult i32 %i.ey, %spec.select.i113
  br i1 %.not.i9.i114, label %bb.w, label %Vec_IntPush.exit120

bb.w:                                             ; preds = %bb.v
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !41 ; 2 uses
  %.not9.i10.i115 = icmp eq ptr %i.fk, null
  %i.fl = zext nneg i32 %spec.select.i113 to i64
  %i.fm = shl nuw nsw i64 %i.fl, 2                ; 2 uses
  br i1 %.not9.i10.i115, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fn = tail call ptr @realloc(ptr noundef nonnull %i.fk, i64 noundef %i.fm) #29
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fo = tail call noalias ptr @malloc(i64 noundef %i.fm) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fp = phi ptr [ %i.fn, %bb.x ], [ %i.fo, %bb.y ]
  store ptr %i.fp, ptr %i.fj, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i116

Vec_IntGrow.exit11.sink.split.i116:               ; preds = %bb.z, %Vec_IntGrow.exit.i119
  %spec.select.sink.i117 = phi i32 [ %spec.select.i113, %bb.z ], [ 16, %Vec_IntGrow.exit.i119 ]
  store i32 %spec.select.sink.i117, ptr %i.ew, align 8, !tbaa !40
  %.pre175 = load i32, ptr %i.ex, align 4, !tbaa !39
  %.pre176 = load ptr, ptr %i.cz, align 8, !tbaa !42
  br label %Vec_IntPush.exit120

Vec_IntPush.exit120:                              ; preds = %.lr.ph149, %bb.v, %Vec_IntGrow.exit11.sink.split.i116
  %i.fq = phi ptr [ %i.ew, %.lr.ph149 ], [ %i.ew, %bb.v ], [ %.pre176, %Vec_IntGrow.exit11.sink.split.i116 ] ; 6 uses
  %i.fr = phi i32 [ %i.ey, %.lr.ph149 ], [ %i.ey, %bb.v ], [ %.pre175, %Vec_IntGrow.exit11.sink.split.i116 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !41
  %i.fu = add nsw i32 %i.fr, 1
  store i32 %i.fu, ptr %i.ex, align 4, !tbaa !39
  %i.fv = sext i32 %i.fr to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fv
  store i32 %i.ev, ptr %i.fw, align 4, !tbaa !45
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv163
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !45 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !39 ; 7 uses
  %i.gb = load i32, ptr %i.fq, align 8, !tbaa !40
  %i.gc = icmp eq i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.aa, label %Vec_IntPush.exit128

bb.aa:                                            ; preds = %Vec_IntPush.exit120
  %i.gd = icmp slt i32 %i.ga, 16
  br i1 %i.gd, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i126 = icmp eq ptr %i.gf, null
  br i1 %.not9.i.i126, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gf, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i127

bb.ad:                                            ; preds = %bb.ab
  %i.gh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i127

Vec_IntGrow.exit.i127:                            ; preds = %bb.ad, %bb.ac
  %i.gi = phi ptr [ %i.gg, %bb.ac ], [ %i.gh, %bb.ad ]
  store ptr %i.gi, ptr %i.ge, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i124

bb.ae:                                            ; preds = %bb.aa
  %i.gj = icmp samesign ult i32 %i.ga, 1073741823
  %i.gk = shl nuw nsw i32 %i.ga, 1
  %spec.select.i121 = select i1 %i.gj, i32 %i.gk, i32 2147483647 ; 3 uses
  %.not.i9.i122 = icmp samesign ult i32 %i.ga, %spec.select.i121
  br i1 %.not.i9.i122, label %bb.af, label %Vec_IntPush.exit128

bb.af:                                            ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !41 ; 2 uses
  %.not9.i10.i123 = icmp eq ptr %i.gm, null
  %i.gn = zext nneg i32 %spec.select.i121 to i64
  %i.go = shl nuw nsw i64 %i.gn, 2                ; 2 uses
  br i1 %.not9.i10.i123, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gp = tail call ptr @realloc(ptr noundef nonnull %i.gm, i64 noundef %i.go) #29
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gq = tail call noalias ptr @malloc(i64 noundef %i.go) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gr = phi ptr [ %i.gp, %bb.ag ], [ %i.gq, %bb.ah ]
  store ptr %i.gr, ptr %i.gl, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i124

Vec_IntGrow.exit11.sink.split.i124:               ; preds = %bb.ai, %Vec_IntGrow.exit.i127
  %spec.select.sink.i125 = phi i32 [ %spec.select.i121, %bb.ai ], [ 16, %Vec_IntGrow.exit.i127 ]
  store i32 %spec.select.sink.i125, ptr %i.fq, align 8, !tbaa !40
  %.pre177 = load i32, ptr %i.fz, align 4, !tbaa !39
  br label %Vec_IntPush.exit128

Vec_IntPush.exit128:                              ; preds = %Vec_IntPush.exit120, %bb.ae, %Vec_IntGrow.exit11.sink.split.i124
  %i.gs = phi i32 [ %i.ga, %Vec_IntPush.exit120 ], [ %i.ga, %bb.ae ], [ %.pre177, %Vec_IntGrow.exit11.sink.split.i124 ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !41
  %i.gv = add nsw i32 %i.gs, 1
  store i32 %i.gv, ptr %i.fz, align 4, !tbaa !39
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gw
  store i32 %i.fy, ptr %i.gx, align 4, !tbaa !45
  %i.gy = add nsw i32 %i.fy, %i.ev                ; 2 uses
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next164
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !45
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %.preheader, label %.lr.ph149, !llvm.loop !63

bb.aj:                                            ; preds = %.lr.ph151, %bb.aj
  %indvars.iv168 = phi i64 [ 1, %.lr.ph151 ], [ %indvars.iv.next169, %bb.aj ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv168
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !45
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.hc ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !45 ; 2 uses
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !45
  %i.hg = sext i32 %i.he to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %.val104, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = trunc nuw nsw i64 %indvars.iv168 to i32
  store i32 %i.hj, ptr %i.hi, align 4, !tbaa !45
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.hk = load i32, ptr %i.bm, align 8, !tbaa !33
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next169, %i.hl
  br i1 %i.hm, label %bb.aj, label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %bb.aj, %.preheader
  tail call void @free(ptr noundef nonnull %i.eq) #28
  tail call void @free(ptr noundef nonnull %i.bl) #28
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_IsoAssignUnique(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #8 {
end_hunk_0
