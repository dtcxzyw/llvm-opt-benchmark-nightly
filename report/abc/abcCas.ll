Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcCas?download=true
inline.NumInlined: 693
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Abc_LutCascadeDumpVerilog:bb.a
  %i.l = icmp sgt i32 %.val53, 0
  br i1 %i.l, label %.lr.ph60.preheader, label %._crit_edge61

.lr.ph60.preheader:                               ; preds = %._crit_edge
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.96, i32 noundef 0) #30 ; 0 uses
  %exitcond73.peel.not = icmp eq i32 %.val53, 1
  br i1 %exitcond73.peel.not, label %._crit_edge61, label %.lr.ph60.peel.next

.lr.ph60.peel.next:                               ; preds = %.lr.ph60.preheader, %.lr.ph60.peel.next
  %.158 = phi i32 [ %i.o, %.lr.ph60.peel.next ], [ 1, %.lr.ph60.preheader ] ; 2 uses
  %fwrite49 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 2, i64 1, ptr nonnull %i.c) ; 0 uses
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.96, i32 noundef %.158) #30 ; 0 uses
  %i.o = add nuw nsw i32 %.158, 1                 ; 2 uses
  %exitcond73.not = icmp eq i32 %i.o, %.val53
  br i1 %exitcond73.not, label %._crit_edge61, label %.lr.ph60.peel.next, !llvm.loop !357

._crit_edge61:                                    ; preds = %.lr.ph60.peel.next, %.lr.ph60.preheader, %._crit_edge
  %fwrite47 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 5, i64 1, ptr nonnull %i.c) ; 0 uses
  %.val5262 = load i32, ptr %i.f, align 4, !tbaa !51 ; 2 uses
  %i.p = icmp sgt i32 %.val5262, 0
  br i1 %i.p, label %.lr.ph68, label %.critedge

.lr.ph68:                                         ; preds = %._crit_edge61
  %i.q = getelementptr i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph68, %bb.ay
  %.val5276 = phi i32 [ %.val5262, %.lr.ph68 ], [ %.val52, %bb.ay ]
  %indvars.iv = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next, %bb.ay ] ; 3 uses
  %.val = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.ay, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 15 uses
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.98, i32 noundef %i.u) #30 ; 0 uses
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !80
  store i32 32, ptr %i.w, align 8, !tbaa !81
  %i.y = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !82
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !72  ; 3 uses
  %.not113.i = icmp eq i64 %i.aa, 0
  br i1 %.not113.i, label %._crit_edge112.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %Vec_IntPushUnique.exit.i
  %.pre123.i = phi i64 [ %.pre124.i, %Vec_IntPushUnique.exit.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ab = phi i64 [ %i.bg, %Vec_IntPushUnique.exit.i ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ac = phi ptr [ %i.bh, %Vec_IntPushUnique.exit.i ], [ %i.y, %bb.g ] ; 4 uses
  %i.ad = phi i32 [ %i.bi, %Vec_IntPushUnique.exit.i ], [ 32, %bb.g ] ; 9 uses
  %i.ae = phi ptr [ %i.bj, %Vec_IntPushUnique.exit.i ], [ %i.y, %bb.g ] ; 7 uses
  %i.af = phi i32 [ %i.bk, %Vec_IntPushUnique.exit.i ], [ 0, %bb.g ] ; 7 uses
  %.083103.i = phi i64 [ %i.bn, %Vec_IntPushUnique.exit.i ], [ 1, %bb.g ] ; 2 uses
  %.084102.i = phi i64 [ %i.bl, %Vec_IntPushUnique.exit.i ], [ 0, %bb.g ]
  %i.ag = getelementptr [8 x i8], ptr %i.s, i64 %.083103.i ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !72
  %i.am = trunc i64 %i.al to i32                  ; 3 uses
  %.not92.i = icmp sgt i32 %1, %i.am
  br i1 %.not92.i, label %Vec_IntPushUnique.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.an = icmp sgt i32 %i.af, 0
  br i1 %i.an, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %wide.trip.count.i.i = zext nneg i32 %i.af to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.j, !llvm.loop !0

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !60
  %i.aq = icmp eq i32 %i.ap, %i.am
  br i1 %i.aq, label %Vec_IntPushUnique.exit.i, label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.ar = icmp eq i32 %i.af, %i.ad
  br i1 %i.ar, label %bb.k, label %Vec_IntPush.exit.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.as = icmp slt i32 %i.ad, 16
  br i1 %i.as, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not9.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.au = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.av = icmp samesign ult i32 %i.ad, 1073741823
  %i.aw = shl nuw nsw i32 %i.ad, 1
  %spec.select.i.i.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.ad, %spec.select.i.i.i
  br i1 %.not.i9.i.i.i, label %bb.p, label %Vec_IntPush.exit.i.i

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i.i.i = icmp eq ptr %i.ae, null
  %i.ax = zext nneg i32 %spec.select.i.i.i to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = tail call ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef %i.ay) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.ay) #31
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.r, %bb.q, %bb.n, %bb.m
  %storemerge.i = phi ptr [ %i.au, %bb.n ], [ %i.at, %bb.m ], [ %i.az, %bb.q ], [ %i.ba, %bb.r ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i.i.i, %bb.q ], [ %spec.select.i.i.i, %bb.r ] ; 2 uses
  store ptr %storemerge.i, ptr %i.z, align 8, !tbaa !82
  store i32 %spec.select.sink.i.i.i, ptr %i.w, align 8, !tbaa !81
  %.pre.pre.i = load i64, ptr %i.s, align 8, !tbaa !72
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.o, %._crit_edge.i.i
  %.pre.i = phi i64 [ %.pre.pre.i, %Vec_IntGrow.exit11.sink.split.i.i.i ], [ %.pre123.i, %bb.o ], [ %.pre123.i, %._crit_edge.i.i ] ; 2 uses
  %i.bb = phi ptr [ %storemerge.i, %Vec_IntGrow.exit11.sink.split.i.i.i ], [ %i.ac, %bb.o ], [ %i.ac, %._crit_edge.i.i ] ; 3 uses
  %i.bc = phi i32 [ %spec.select.sink.i.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ], [ %i.ad, %bb.o ], [ %i.ad, %._crit_edge.i.i ]
  %i.bd = add nsw i32 %i.af, 1                    ; 2 uses
  store i32 %i.bd, ptr %i.x, align 4, !tbaa !80
  %i.be = sext i32 %i.af to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  store i32 %i.am, ptr %i.bf, align 4, !tbaa !60
  br label %Vec_IntPushUnique.exit.i

Vec_IntPushUnique.exit.i:                         ; preds = %bb.j, %Vec_IntPush.exit.i.i, %.lr.ph.i
  %.pre124.i = phi i64 [ %.pre123.i, %.lr.ph.i ], [ %.pre.i, %Vec_IntPush.exit.i.i ], [ %.pre123.i, %bb.j ]
  %i.bg = phi i64 [ %i.ab, %.lr.ph.i ], [ %.pre.i, %Vec_IntPush.exit.i.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.bh = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.bb, %Vec_IntPush.exit.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.bi = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.bc, %Vec_IntPush.exit.i.i ], [ %i.ad, %bb.j ]
  %i.bj = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.bb, %Vec_IntPush.exit.i.i ], [ %i.ae, %bb.j ]
  %i.bk = phi i32 [ %i.af, %.lr.ph.i ], [ %i.bd, %Vec_IntPush.exit.i.i ], [ %i.af, %bb.j ] ; 4 uses
  %i.bl = add nuw i64 %.084102.i, 1               ; 2 uses
  %i.bm = load i64, ptr %i.ag, align 8, !tbaa !72
  %i.bn = add i64 %i.bm, %.083103.i
  %i.bo = icmp ult i64 %i.bl, %i.bg
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !358

._crit_edge.i:                                    ; preds = %Vec_IntPushUnique.exit.i
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.bp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.121, i32 noundef %i.u) #30 ; 0 uses
  %i.bq = icmp sgt i32 %i.bk, 0
  br i1 %i.bq, label %.lr.ph106.i, label %.critedge.i

.lr.ph106.i:                                      ; preds = %bb.s
  %wide.trip.count.i = zext nneg i32 %i.bk to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph106.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph106.i ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !60
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.122, i32 noundef %i.u, i32 noundef %i.bs) #30 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.t, !llvm.loop !359

.critedge.i:                                      ; preds = %bb.t, %bb.s
  %fputc.i = tail call i32 @fputc(i32 10, ptr nonnull %i.c) ; 0 uses
  %.pre122.i = load i64, ptr %i.s, align 8, !tbaa !72
  br label %bb.u

bb.u:                                             ; preds = %.critedge.i, %._crit_edge.i
  %i.bu = phi i64 [ %.pre122.i, %.critedge.i ], [ %i.bg, %._crit_edge.i ]
  %.not114.i = icmp eq i64 %i.bu, 0
  br i1 %.not114.i, label %._crit_edge112.i, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %bb.u, %Abc_LutCascadeDumpName.exit98.i
  %.1109.i = phi i64 [ %i.in, %Abc_LutCascadeDumpName.exit98.i ], [ 1, %bb.u ] ; 2 uses
  %.185108.i = phi i64 [ %i.il, %Abc_LutCascadeDumpName.exit98.i ], [ 0, %bb.u ] ; 3 uses
  %i.bv = getelementptr [8 x i8], ptr %i.s, i64 %.1109.i ; 8 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8      ; 16 uses
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !72
  %i.cc = trunc i64 %.185108.i to i32             ; 2 uses
  %i.cd = urem i64 %.185108.i, 6
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @Abc_LutCascadeDumpOneVerilog.pBels, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !66
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.123, i32 noundef %i.u, i32 noundef %i.u, i32 noundef %i.cc, ptr noundef %i.cf) #30 ; 0 uses
  %fwrite87.i = tail call i64 @fwrite(ptr nonnull @.str.124, i64 21, i64 1, ptr nonnull %i.c) ; 0 uses
  %i.ch = load i64, ptr %i.ca, align 8, !tbaa !72 ; 2 uses
  %i.ci = lshr i64 %i.ch, 60
  %i.cj = trunc nuw nsw i64 %i.ci to i32          ; 2 uses
  %i.ck = icmp ult i64 %i.ch, -6917529027641081856
  %i.cl = or disjoint i32 %i.cj, 48
  %i.cm = add nuw nsw i32 %i.cj, 55
  %.0.i18.i.i = select i1 %i.ck, i32 %i.cl, i32 %i.cm
  %fputc.i.i = tail call i32 @fputc(i32 %.0.i18.i.i, ptr nonnull %i.c) ; 0 uses
  %i.cn = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.co = lshr i64 %i.cn, 56
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = and i32 %i.cp, 15                       ; 3 uses
  %i.cr = icmp samesign ult i32 %i.cq, 10
  %i.cs = or disjoint i32 %i.cq, 48
  %i.ct = add nuw nsw i32 %i.cq, 55
  %.0.i18.i.1.i = select i1 %i.cr, i32 %i.cs, i32 %i.ct
  %fputc.i.1.i = tail call i32 @fputc(i32 %.0.i18.i.1.i, ptr nonnull %i.c) ; 0 uses
  %i.cu = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.cv = lshr i64 %i.cu, 52
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = and i32 %i.cw, 15                       ; 3 uses
  %i.cy = icmp samesign ult i32 %i.cx, 10
  %i.cz = or disjoint i32 %i.cx, 48
  %i.da = add nuw nsw i32 %i.cx, 55
  %.0.i18.i.2.i = select i1 %i.cy, i32 %i.cz, i32 %i.da
  %fputc.i.2.i = tail call i32 @fputc(i32 %.0.i18.i.2.i, ptr nonnull %i.c) ; 0 uses
  %i.db = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.dc = lshr i64 %i.db, 48
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = and i32 %i.dd, 15                       ; 3 uses
  %i.df = icmp samesign ult i32 %i.de, 10
  %i.dg = or disjoint i32 %i.de, 48
  %i.dh = add nuw nsw i32 %i.de, 55
  %.0.i18.i.3.i = select i1 %i.df, i32 %i.dg, i32 %i.dh
  %fputc.i.3.i = tail call i32 @fputc(i32 %.0.i18.i.3.i, ptr nonnull %i.c) ; 0 uses
  %i.di = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.dj = lshr i64 %i.di, 44
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 15                       ; 3 uses
  %i.dm = icmp samesign ult i32 %i.dl, 10
  %i.dn = or disjoint i32 %i.dl, 48
  %i.do = add nuw nsw i32 %i.dl, 55
  %.0.i18.i.4.i = select i1 %i.dm, i32 %i.dn, i32 %i.do
  %fputc.i.4.i = tail call i32 @fputc(i32 %.0.i18.i.4.i, ptr nonnull %i.c) ; 0 uses
  %i.dp = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.dq = lshr i64 %i.dp, 40
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 15                       ; 3 uses
  %i.dt = icmp samesign ult i32 %i.ds, 10
  %i.du = or disjoint i32 %i.ds, 48
  %i.dv = add nuw nsw i32 %i.ds, 55
  %.0.i18.i.5.i = select i1 %i.dt, i32 %i.du, i32 %i.dv
  %fputc.i.5.i = tail call i32 @fputc(i32 %.0.i18.i.5.i, ptr nonnull %i.c) ; 0 uses
  %i.dw = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.dx = lshr i64 %i.dw, 36
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 15                       ; 3 uses
  %i.ea = icmp samesign ult i32 %i.dz, 10
  %i.eb = or disjoint i32 %i.dz, 48
  %i.ec = add nuw nsw i32 %i.dz, 55
  %.0.i18.i.6.i = select i1 %i.ea, i32 %i.eb, i32 %i.ec
  %fputc.i.6.i = tail call i32 @fputc(i32 %.0.i18.i.6.i, ptr nonnull %i.c) ; 0 uses
  %3 = load i64, ptr %i.ca, align 8, !tbaa !72
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  %i.ed = and i32 %5, 15                          ; 3 uses
  %i.ee = icmp samesign ult i32 %i.ed, 10
  %i.ef = or disjoint i32 %i.ed, 48
  %i.eg = add nuw nsw i32 %i.ed, 55
  %.0.i18.i.7.i = select i1 %i.ee, i32 %i.ef, i32 %i.eg
  %fputc.i.7.i = tail call i32 @fputc(i32 %.0.i18.i.7.i, ptr nonnull %i.c) ; 0 uses
  %i.eh = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.ei = trunc i64 %i.eh to i32                  ; 2 uses
  %i.ej = lshr i32 %i.ei, 28                      ; 2 uses
  %i.ek = icmp ult i32 %i.ei, -1610612736
  %i.el = or disjoint i32 %i.ej, 48
  %i.em = add nuw nsw i32 %i.ej, 55
  %.0.i18.i.8.i = select i1 %i.ek, i32 %i.el, i32 %i.em
  %fputc.i.8.i = tail call i32 @fputc(i32 %.0.i18.i.8.i, ptr nonnull %i.c) ; 0 uses
  %i.en = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.eo = trunc i64 %i.en to i32
  %i.ep = lshr i32 %i.eo, 24
  %i.eq = and i32 %i.ep, 15                       ; 3 uses
  %i.er = icmp samesign ult i32 %i.eq, 10
  %i.es = or disjoint i32 %i.eq, 48
  %i.et = add nuw nsw i32 %i.eq, 55
  %.0.i18.i.9.i = select i1 %i.er, i32 %i.es, i32 %i.et
  %fputc.i.9.i = tail call i32 @fputc(i32 %.0.i18.i.9.i, ptr nonnull %i.c) ; 0 uses
  %i.eu = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = lshr i32 %i.ev, 20
  %i.ex = and i32 %i.ew, 15                       ; 3 uses
  %i.ey = icmp samesign ult i32 %i.ex, 10
  %i.ez = or disjoint i32 %i.ex, 48
  %i.fa = add nuw nsw i32 %i.ex, 55
  %.0.i18.i.10.i = select i1 %i.ey, i32 %i.ez, i32 %i.fa
  %fputc.i.10.i = tail call i32 @fputc(i32 %.0.i18.i.10.i, ptr nonnull %i.c) ; 0 uses
  %i.fb = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = lshr i32 %i.fc, 16
  %i.fe = and i32 %i.fd, 15                       ; 3 uses
  %i.ff = icmp samesign ult i32 %i.fe, 10
  %i.fg = or disjoint i32 %i.fe, 48
  %i.fh = add nuw nsw i32 %i.fe, 55
  %.0.i18.i.11.i = select i1 %i.ff, i32 %i.fg, i32 %i.fh
  %fputc.i.11.i = tail call i32 @fputc(i32 %.0.i18.i.11.i, ptr nonnull %i.c) ; 0 uses
  %i.fi = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = lshr i32 %i.fj, 12
  %i.fl = and i32 %i.fk, 15                       ; 3 uses
  %i.fm = icmp samesign ult i32 %i.fl, 10
  %i.fn = or disjoint i32 %i.fl, 48
  %i.fo = add nuw nsw i32 %i.fl, 55
  %.0.i18.i.12.i = select i1 %i.fm, i32 %i.fn, i32 %i.fo
  %fputc.i.12.i = tail call i32 @fputc(i32 %.0.i18.i.12.i, ptr nonnull %i.c) ; 0 uses
  %i.fp = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = lshr i32 %i.fq, 8
  %i.fs = and i32 %i.fr, 15                       ; 3 uses
  %i.ft = icmp samesign ult i32 %i.fs, 10
  %i.fu = or disjoint i32 %i.fs, 48
  %i.fv = add nuw nsw i32 %i.fs, 55
  %.0.i18.i.13.i = select i1 %i.ft, i32 %i.fu, i32 %i.fv
  %fputc.i.13.i = tail call i32 @fputc(i32 %.0.i18.i.13.i, ptr nonnull %i.c) ; 0 uses
  %i.fw = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = lshr i32 %i.fx, 4
  %i.fz = and i32 %i.fy, 15                       ; 3 uses
  %i.ga = icmp samesign ult i32 %i.fz, 10
  %i.gb = or disjoint i32 %i.fz, 48
  %i.gc = add nuw nsw i32 %i.fz, 55
  %.0.i18.i.14.i = select i1 %i.ga, i32 %i.gb, i32 %i.gc
  %fputc.i.14.i = tail call i32 @fputc(i32 %.0.i18.i.14.i, ptr nonnull %i.c) ; 0 uses
  %i.gd = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = and i32 %i.ge, 15                       ; 3 uses
  %i.gg = icmp samesign ult i32 %i.gf, 10
  %i.gh = or disjoint i32 %i.gf, 48
  %i.gi = add nuw nsw i32 %i.gf, 55
  %.0.i18.i.15.i = select i1 %i.gg, i32 %i.gh, i32 %i.gi
  %fputc.i.15.i = tail call i32 @fputc(i32 %.0.i18.i.15.i, ptr nonnull %i.c) ; 0 uses
  %i.gj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.125, i32 noundef %i.u, i32 noundef %i.cc) #30 ; 0 uses
  %i.gk = shl i64 %i.bx, 32
  %i.gl = ashr exact i64 %i.gk, 32                ; 6 uses
  %i.gm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.126, i32 noundef 0) #30 ; 0 uses
  %i.gn = icmp sgt i64 %i.gl, 0
  br i1 %i.gn, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.lr.ph111.i
  %i.go = load i64, ptr %i.by, align 8, !tbaa !72
  %i.gp = trunc i64 %i.go to i32                  ; 3 uses
  %i.gq = icmp sgt i32 %1, %i.gp
  br i1 %i.gq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.94, i32 noundef %i.gp) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.i

bb.x:                                             ; preds = %bb.v
  %i.gs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.133, i32 noundef %i.u, i32 noundef %i.gp) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.i

bb.y:                                             ; preds = %.lr.ph111.i
  %fwrite90.i = tail call i64 @fwrite(ptr nonnull @.str.127, i64 4, i64 1, ptr nonnull %i.c) ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.i

Abc_LutCascadeDumpName.exit.i:                    ; preds = %bb.y, %bb.x, %bb.w
  %fwrite91.i = tail call i64 @fwrite(ptr nonnull @.str.128, i64 3, i64 1, ptr nonnull %i.c) ; 0 uses
  %i.gt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.126, i32 noundef 1) #30 ; 0 uses
  %i.gu = icmp sgt i64 %i.gl, 1
  br i1 %i.gu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %Abc_LutCascadeDumpName.exit.i
  %fwrite90.1.i = tail call i64 @fwrite(ptr nonnull @.str.127, i64 4, i64 1, ptr nonnull %i.c) ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.1.i

bb.aa:                                            ; preds = %Abc_LutCascadeDumpName.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !72
  %i.gx = trunc i64 %i.gw to i32                  ; 3 uses
  %i.gy = icmp sgt i32 %1, %i.gx
  br i1 %i.gy, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.133, i32 noundef %i.u, i32 noundef %i.gx) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.1.i

bb.ac:                                            ; preds = %bb.aa
  %i.ha = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.94, i32 noundef %i.gx) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.1.i

Abc_LutCascadeDumpName.exit.1.i:                  ; preds = %bb.ac, %bb.ab, %bb.z
  %fwrite91.1.i = tail call i64 @fwrite(ptr nonnull @.str.128, i64 3, i64 1, ptr nonnull %i.c) ; 0 uses
  %i.hb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.126, i32 noundef 2) #30 ; 0 uses
  %i.hc = icmp sgt i64 %i.gl, 2
  br i1 %i.hc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %Abc_LutCascadeDumpName.exit.1.i
  %fwrite90.2.i = tail call i64 @fwrite(ptr nonnull @.str.127, i64 4, i64 1, ptr nonnull %i.c) ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.2.i

bb.ae:                                            ; preds = %Abc_LutCascadeDumpName.exit.1.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !72
  %i.hf = trunc i64 %i.he to i32                  ; 3 uses
  %i.hg = icmp sgt i32 %1, %i.hf
  br i1 %i.hg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.133, i32 noundef %i.u, i32 noundef %i.hf) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.2.i

bb.ag:                                            ; preds = %bb.ae
  %i.hi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.94, i32 noundef %i.hf) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.2.i

Abc_LutCascadeDumpName.exit.2.i:                  ; preds = %bb.ag, %bb.af, %bb.ad
  %fwrite91.2.i = tail call i64 @fwrite(ptr nonnull @.str.128, i64 3, i64 1, ptr nonnull %i.c) ; 0 uses
  %i.hj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.126, i32 noundef 3) #30 ; 0 uses
  %i.hk = icmp sgt i64 %i.gl, 3
  br i1 %i.hk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %Abc_LutCascadeDumpName.exit.2.i
  %fwrite90.3.i = tail call i64 @fwrite(ptr nonnull @.str.127, i64 4, i64 1, ptr nonnull %i.c) ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.3.i

bb.ai:                                            ; preds = %Abc_LutCascadeDumpName.exit.2.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !72
  %i.hn = trunc i64 %i.hm to i32                  ; 3 uses
  %i.ho = icmp sgt i32 %1, %i.hn
  br i1 %i.ho, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.133, i32 noundef %i.u, i32 noundef %i.hn) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.3.i

bb.ak:                                            ; preds = %bb.ai
  %i.hq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.94, i32 noundef %i.hn) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.3.i

Abc_LutCascadeDumpName.exit.3.i:                  ; preds = %bb.ak, %bb.aj, %bb.ah
  %fwrite91.3.i = tail call i64 @fwrite(ptr nonnull @.str.128, i64 3, i64 1, ptr nonnull %i.c) ; 0 uses
  %i.hr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.126, i32 noundef 4) #30 ; 0 uses
  %i.hs = icmp sgt i64 %i.gl, 4
  br i1 %i.hs, label %bb.am, label %bb.al

bb.al:                                            ; preds = %Abc_LutCascadeDumpName.exit.3.i
  %fwrite90.4.i = tail call i64 @fwrite(ptr nonnull @.str.127, i64 4, i64 1, ptr nonnull %i.c) ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.4.i

bb.am:                                            ; preds = %Abc_LutCascadeDumpName.exit.3.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !72
  %i.hv = trunc i64 %i.hu to i32                  ; 3 uses
  %i.hw = icmp sgt i32 %1, %i.hv
  br i1 %i.hw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.133, i32 noundef %i.u, i32 noundef %i.hv) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.4.i

bb.ao:                                            ; preds = %bb.am
  %i.hy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.94, i32 noundef %i.hv) #30 ; 0 uses
  br label %Abc_LutCascadeDumpName.exit.4.i

end_hunk_0
