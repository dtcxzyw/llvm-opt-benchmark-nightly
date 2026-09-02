Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSimBase?download=true
inline.NumInlined: 1796
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 129
begin_hunk_0_@Gia_ManSimGen:bb.a
  %.not82 = icmp eq ptr %.val90, null
  br i1 %.not82, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %.lr.ph116
  %.val96 = load i64, ptr %i.ax, align 4          ; 5 uses
  %i.ay = and i64 %.val96, 2147483648
  %.not.i = icmp ne i64 %i.ay, 0
  %i.az = and i64 %.val96, 536870911
  %i.ba = icmp eq i64 %i.az, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ba
  br i1 %narrow.i.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.bb = trunc i64 %.val96 to i32                ; 2 uses
  %i.bc = and i32 %i.bb, 536870912
  %.not86 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not86, i32 32, i32 126
  %i.be = and i32 %i.bb, 536870911
  %i.bf = trunc nuw nsw i64 %indvars.iv124 to i32 ; 12 uses
  %i.bg = sub nsw i32 %i.bf, %i.be
  %i.bh = and i64 %.val96, 2305843009213693952
  %.not87 = icmp eq i64 %i.bh, 0
  %i.bi = select i1 %.not87, i32 126, i32 32
  %i.bj = lshr i64 %.val96, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 536870911
  %i.bm = sub nsw i32 %i.bf, %i.bl
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.63, i32 noundef %i.bf, i32 noundef 0, i32 noundef %i.bd, i32 noundef %i.bg, i32 noundef 0, i32 noundef %i.bi, i32 noundef %i.bm, i32 noundef 0) #35 ; 0 uses
  %.val98.1 = load i64, ptr %i.ax, align 4        ; 3 uses
  %i.bo = trunc i64 %.val98.1 to i32              ; 2 uses
  %i.bp = and i32 %i.bo, 536870912
  %.not86.1 = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not86.1, i32 32, i32 126
  %i.br = and i32 %i.bo, 536870911
  %i.bs = sub nsw i32 %i.bf, %i.br
  %i.bt = and i64 %.val98.1, 2305843009213693952
  %.not87.1 = icmp eq i64 %i.bt, 0
  %i.bu = select i1 %.not87.1, i32 126, i32 32
  %i.bv = lshr i64 %.val98.1, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 536870911
  %i.by = sub nsw i32 %i.bf, %i.bx
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.63, i32 noundef %i.bf, i32 noundef 1, i32 noundef %i.bq, i32 noundef %i.bs, i32 noundef 1, i32 noundef %i.bu, i32 noundef %i.by, i32 noundef 1) #35 ; 0 uses
  %.val98.2 = load i64, ptr %i.ax, align 4        ; 3 uses
  %i.ca = trunc i64 %.val98.2 to i32              ; 2 uses
  %i.cb = and i32 %i.ca, 536870912
  %.not86.2 = icmp eq i32 %i.cb, 0
  %i.cc = select i1 %.not86.2, i32 32, i32 126
  %i.cd = and i32 %i.ca, 536870911
  %i.ce = sub nsw i32 %i.bf, %i.cd
  %i.cf = and i64 %.val98.2, 2305843009213693952
  %.not87.2 = icmp eq i64 %i.cf, 0
  %i.cg = select i1 %.not87.2, i32 126, i32 32
  %i.ch = lshr i64 %.val98.2, 32
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 536870911
  %i.ck = sub nsw i32 %i.bf, %i.cj
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.63, i32 noundef %i.bf, i32 noundef 2, i32 noundef %i.cc, i32 noundef %i.ce, i32 noundef 2, i32 noundef %i.cg, i32 noundef %i.ck, i32 noundef 2) #35 ; 0 uses
  %.val98.3 = load i64, ptr %i.ax, align 4        ; 3 uses
  %i.cm = trunc i64 %.val98.3 to i32              ; 2 uses
  %i.cn = and i32 %i.cm, 536870912
  %.not86.3 = icmp eq i32 %i.cn, 0
  %i.co = select i1 %.not86.3, i32 32, i32 126
  %i.cp = and i32 %i.cm, 536870911
  %i.cq = sub nsw i32 %i.bf, %i.cp
  %i.cr = and i64 %.val98.3, 2305843009213693952
  %.not87.3 = icmp eq i64 %i.cr, 0
  %i.cs = select i1 %.not87.3, i32 126, i32 32
  %i.ct = lshr i64 %.val98.3, 32
  %i.cu = trunc nuw i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 536870911
  %i.cw = sub nsw i32 %i.bf, %i.cv
  %i.cx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.63, i32 noundef %i.bf, i32 noundef 3, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef 3, i32 noundef %i.cs, i32 noundef %i.cw, i32 noundef 3) #35 ; 0 uses
  %.pre = load i32, ptr %i.at, align 8, !tbaa !69
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.c
  %i.cy = phi i32 [ %.pre, %.preheader.preheader ], [ %i.aw, %bb.c ] ; 2 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next125, %i.cz
  br i1 %i.da, label %.lr.ph116, label %.critedge2, !llvm.loop !524

.critedge2:                                       ; preds = %.lr.ph116, %.loopexit, %.critedge
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !75 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %.val119 = load i32, ptr %i.dd, align 4, !tbaa !60
  %i.de = icmp sgt i32 %.val119, 0
  br i1 %i.de, label %.lr.ph121, label %.critedge4

.lr.ph121:                                        ; preds = %.critedge2, %bb.d
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %bb.d ], [ 0, %.critedge2 ] ; 2 uses
  %i.df = phi ptr [ %i.ej, %bb.d ], [ %i.dc, %.critedge2 ]
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %.val104.val = load ptr, ptr %i.dg, align 8, !tbaa !61
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.val104.val, i64 %indvars.iv127
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !62 ; 6 uses
  %.not83 = icmp eq i32 %i.di, 0
  br i1 %.not83, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.lr.ph121
  %.val103 = load ptr, ptr %i.as, align 8, !tbaa !71
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [12 x i8], ptr %.val103, i64 %i.dj ; 4 uses
  %.val97 = load i64, ptr %i.dk, align 4
  %i.dl = trunc i64 %.val97 to i32                ; 2 uses
  %i.dm = and i32 %i.dl, 536870912
  %.not84 = icmp eq i32 %i.dm, 0
  %i.dn = select i1 %.not84, i32 32, i32 126
  %i.do = and i32 %i.dl, 536870911
  %i.dp = sub nsw i32 %i.di, %i.do
  %i.dq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.64, i32 noundef %i.dn, i32 noundef %i.dp, i32 noundef 0) #35 ; 0 uses
  %.val97.1 = load i64, ptr %i.dk, align 4
  %i.dr = trunc i64 %.val97.1 to i32              ; 2 uses
  %i.ds = and i32 %i.dr, 536870912
  %.not84.1 = icmp eq i32 %i.ds, 0
  %i.dt = select i1 %.not84.1, i32 32, i32 126
  %i.du = and i32 %i.dr, 536870911
  %i.dv = sub nsw i32 %i.di, %i.du
  %i.dw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.64, i32 noundef %i.dt, i32 noundef %i.dv, i32 noundef 1) #35 ; 0 uses
  %.val97.2 = load i64, ptr %i.dk, align 4
  %i.dx = trunc i64 %.val97.2 to i32              ; 2 uses
  %i.dy = and i32 %i.dx, 536870912
  %.not84.2 = icmp eq i32 %i.dy, 0
  %i.dz = select i1 %.not84.2, i32 32, i32 126
  %i.ea = and i32 %i.dx, 536870911
  %i.eb = sub nsw i32 %i.di, %i.ea
  %i.ec = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.64, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef 2) #35 ; 0 uses
  %.val97.3 = load i64, ptr %i.dk, align 4
  %i.ed = trunc i64 %.val97.3 to i32              ; 2 uses
  %i.ee = and i32 %i.ed, 536870912
  %.not84.3 = icmp eq i32 %i.ee, 0
  %i.ef = select i1 %.not84.3, i32 32, i32 126
  %i.eg = and i32 %i.ed, 536870911
  %i.eh = sub nsw i32 %i.di, %i.eg
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.64, i32 noundef %i.ef, i32 noundef %i.eh, i32 noundef 3) #35 ; 0 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.ej = load ptr, ptr %i.db, align 8, !tbaa !75 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 4
  %.val = load i32, ptr %i.ek, align 4, !tbaa !60
  %i.el = sext i32 %.val to i64
  %i.em = icmp slt i64 %indvars.iv.next128, %i.el
  br i1 %i.em, label %.lr.ph121, label %.critedge4, !llvm.loop !525

.critedge4:                                       ; preds = %.lr.ph121, %bb.d, %.critedge2
  %.not.i105 = icmp eq ptr %i.h, null
  br i1 %.not.i105, label %Vec_WrdFree.exit, label %bb.e

bb.e:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef nonnull %i.h) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge4, %bb.e
  %i.en = tail call i64 @fwrite(ptr nonnull @.str.65, i64 4, i64 1, ptr %i.n) ; 0 uses
  %i.eo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.66) #35 ; 0 uses
  %i.ep = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.67) #35 ; 0 uses
  %i.eq = tail call i64 @fwrite(ptr nonnull @.str.68, i64 12, i64 1, ptr %i.n) ; 0 uses
  %i.er = tail call i64 @fwrite(ptr nonnull @.str.69, i64 2, i64 1, ptr %i.n) ; 0 uses
  %i.es = tail call i32 @fclose(ptr noundef %i.n) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Gia_ManSimTwo(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #35
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %9, align 8, !tbaa !88
  %.neg75 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !89
  %.neg = sdiv i64 %i.e, -1000
  %.neg76 = add i64 %.neg, %.neg75
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg76, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %10 = zext i32 %4 to i64
  %11 = mul nuw nsw i64 %10, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.f = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #35
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Abc_Clock.exit63, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %8, align 8, !tbaa !88
  %i.i = mul nsw i64 %i.h, 1000000
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !89
  %i.l = sdiv i64 %i.k, 1000
  %i.m = add nsw i64 %i.l, %i.i
  br label %Abc_Clock.exit63

Abc_Clock.exit63:                                 ; preds = %bb.c, %bb.d
  %.0.i62 = phi i64 [ %i.m, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %12 = add i64 %.0.i62, %11
  %13 = trunc i64 %12 to i32
  br label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit, %Abc_Clock.exit63
  %i.n = phi i32 [ %13, %Abc_Clock.exit63 ], [ 0, %Abc_Clock.exit ] ; 2 uses
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %3, i32 noundef %2) ; 0 uses
  %i.p = call i64 @Abc_RandomW(i32 noundef 0) #35 ; 0 uses
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %.lr.ph86, label %.loopexit77.thread

.lr.ph86:                                         ; preds = %bb.e
  %.not51 = icmp eq i32 %i.n, 0
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 72
  %i.x = getelementptr i8, ptr %1, i64 72
  %i.y = sext i32 %2 to i64
  %i.z = shl nsw i64 %i.y, 3
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph86, %Vec_WrdFree.exit69
  %.04685 = phi i32 [ 1, %.lr.ph86 ], [ %.3, %Vec_WrdFree.exit69 ]
  %.04883 = phi i32 [ 0, %.lr.ph86 ], [ %i.bx, %Vec_WrdFree.exit69 ] ; 3 uses
  br i1 %.not51, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.aa = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #35
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %Abc_Clock.exit65, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %7, align 8, !tbaa !88
  %i.ad = mul nsw i64 %i.ac, 1000000
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !89
  %i.af = sdiv i64 %i.ae, 1000
  %i.ag = add nsw i64 %i.af, %i.ad
  br label %Abc_Clock.exit65

Abc_Clock.exit65:                                 ; preds = %bb.g, %bb.h
  %.0.i64 = phi i64 [ %i.ag, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.ah = icmp sgt i64 %.0.i64, %i.s
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Abc_Clock.exit65
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %4, i32 noundef %.04883) ; 0 uses
  br label %.loopexit77

bb.j:                                             ; preds = %Abc_Clock.exit65, %bb.f
  %.val56 = load ptr, ptr %i.t, align 8, !tbaa !59
  %i.aj = getelementptr i8, ptr %.val56, i64 4
  %.val56.val = load i32, ptr %i.aj, align 4, !tbaa !60
  %i.ak = mul nsw i32 %.val56.val, %2             ; 6 uses
  %i.al = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.am = add i32 %i.ak, -1
  %or.cond.i.i.i = icmp ult i32 %i.am, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.ak ; 3 uses
  store i32 %spec.store.select.i.i.i, ptr %i.al, align 8, !tbaa !70
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WrdStart.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = sext i32 %spec.store.select.i.i.i to i64
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = call noalias ptr @malloc(i64 noundef %i.ao) #34
  br label %Vec_WrdStart.exit.i

Vec_WrdStart.exit.i:                              ; preds = %bb.k, %bb.j
  %i.aq = phi ptr [ %i.ap, %bb.k ], [ null, %bb.j ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !65
  store i32 %i.ak, ptr %i.ar, align 4, !tbaa !68
  %i.at = sext i32 %i.ak to i64
  %i.au = shl nsw i64 %i.at, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.au, i1 false)
  %i.av = icmp sgt i32 %i.ak, 0
  br i1 %i.av, label %.lr.ph.preheader.i, label %Vec_WrdStartRandom.exit

.lr.ph.preheader.i:                               ; preds = %Vec_WrdStart.exit.i
  %wide.trip.count.i = zext nneg i32 %i.ak to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.aw = call i64 @Abc_RandomW(i32 noundef 0) #35
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_WrdStartRandom.exit, label %.lr.ph.i, !llvm.loop !1

Vec_WrdStartRandom.exit:                          ; preds = %.lr.ph.i, %Vec_WrdStart.exit.i
  store ptr %i.al, ptr %i.u, align 8, !tbaa !67
  store ptr %i.al, ptr %i.v, align 8, !tbaa !67
  %i.ay = call ptr @Gia_ManSimPatSim(ptr noundef nonnull %0) ; 3 uses
  %i.az = call ptr @Gia_ManSimPatSim(ptr noundef %1) ; 3 uses
  %.val61 = load ptr, ptr %i.w, align 8, !tbaa !75 ; 2 uses
  %i.ba = getelementptr i8, ptr %.val61, i64 4
  %.val61.val = load i32, ptr %i.ba, align 4, !tbaa !60 ; 2 uses
  %i.bb = icmp sgt i32 %.val61.val, 0
  br i1 %i.bb, label %.lr.ph, label %Vec_WrdStartRandom.exit..loopexit_crit_edge

Vec_WrdStartRandom.exit..loopexit_crit_edge:      ; preds = %Vec_WrdStartRandom.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !65
  br label %.loopexit

.lr.ph:                                           ; preds = %Vec_WrdStartRandom.exit
  %i.bc = getelementptr i8, ptr %.val61, i64 8
  %.val60.val = load ptr, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr i8, ptr %i.ay, i64 8
  %.val55 = load ptr, ptr %i.bd, align 8, !tbaa !65 ; 3 uses
  %.val58 = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.be = getelementptr i8, ptr %.val58, i64 8
  %.val58.val = load ptr, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr i8, ptr %i.az, i64 8
  %.val54 = load ptr, ptr %i.bf, align 8, !tbaa !65
  %wide.trip.count = zext nneg i32 %.val61.val to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.val60.val, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !62
  %i.bi = mul nsw i32 %i.bh, %2
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %.val55, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val58.val, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !62
  %i.bn = mul nsw i32 %i.bm, %2
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %.val54, i64 %i.bo
  %bcmp = call i32 @bcmp(ptr %i.bk, ptr %i.bp, i64 %i.z)
  %.not52 = icmp eq i32 %bcmp, 0
  br i1 %.not52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.bq, i32 noundef %.04883) ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !526

.loopexit:                                        ; preds = %bb.n, %Vec_WrdStartRandom.exit..loopexit_crit_edge, %bb.m
  %i.bs = phi ptr [ %.val55, %bb.m ], [ %.pre, %Vec_WrdStartRandom.exit..loopexit_crit_edge ], [ %.val55, %bb.n ] ; 2 uses
  %i.bt = phi i1 [ false, %bb.m ], [ true, %Vec_WrdStartRandom.exit..loopexit_crit_edge ], [ true, %bb.n ]
  %.3 = phi i32 [ 0, %bb.m ], [ 1, %Vec_WrdStartRandom.exit..loopexit_crit_edge ], [ 1, %bb.n ] ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  call void @free(ptr noundef nonnull %i.bs) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.loopexit, %bb.o
  call void @free(ptr noundef nonnull %i.ay) #35
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !65 ; 2 uses
  %.not.i66 = icmp eq ptr %i.bv, null
  br i1 %.not.i66, label %Vec_WrdFree.exit67, label %bb.p

bb.p:                                             ; preds = %Vec_WrdFree.exit
  call void @free(ptr noundef nonnull %i.bv) #35
  br label %Vec_WrdFree.exit67

Vec_WrdFree.exit67:                               ; preds = %Vec_WrdFree.exit, %bb.p
  call void @free(ptr noundef nonnull %i.az) #35
  %i.bw = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %.not.i68 = icmp eq ptr %i.bw, null
  br i1 %.not.i68, label %Vec_WrdFree.exit69, label %bb.q

bb.q:                                             ; preds = %Vec_WrdFree.exit67
  call void @free(ptr noundef nonnull %i.bw) #35
  br label %Vec_WrdFree.exit69

Vec_WrdFree.exit69:                               ; preds = %Vec_WrdFree.exit67, %bb.q
  call void @free(ptr noundef nonnull %i.al) #35
  store ptr null, ptr %i.u, align 8, !tbaa !67
  store ptr null, ptr %i.v, align 8, !tbaa !67
  %i.bx = add nuw nsw i32 %.04883, 1              ; 2 uses
  %i.by = icmp slt i32 %i.bx, %3
  %i.bz = select i1 %i.bt, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.f, label %.loopexit77, !llvm.loop !527

.loopexit77:                                      ; preds = %Vec_WrdFree.exit69, %bb.i
  %.04680 = phi i32 [ %.04685, %bb.i ], [ %.3, %Vec_WrdFree.exit69 ]
  %i.ca = icmp eq i32 %.04680, 1
  br i1 %i.ca, label %.loopexit77.thread, label %bb.r

.loopexit77.thread:                               ; preds = %bb.e, %.loopexit77
  %i.cb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.loopexit77.thread, %.loopexit77
  %.0468098 = phi i32 [ 1, %.loopexit77.thread ], [ 0, %.loopexit77 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.cc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #35
end_hunk_0
