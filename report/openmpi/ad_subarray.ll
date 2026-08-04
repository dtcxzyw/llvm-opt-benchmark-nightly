loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @ADIO_Type_create_subarray(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca [1 x i64], align 8                ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 4 uses
  %i.e = alloca ptr, align 8                      ; 13 uses
  %i.f = alloca ptr, align 8                      ; 9 uses
  %i.g = alloca [3 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.h = call i32 @PMPI_Type_get_extent(ptr noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.i = icmp eq i32 %4, 1
  %i.j = icmp eq i32 %0, 1                        ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %.loopexit.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8
  %i.m = load i32, ptr %2, align 4, !tbaa !8
  %i.n = load i32, ptr %1, align 4, !tbaa !8
  %i.o = call i32 @PMPI_Type_vector(i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n, ptr noundef %5, ptr noundef nonnull %i.e) #4 ; 0 uses
  %i.p = icmp sgt i32 %0, 2
  br i1 %i.p, label %.lr.ph85.preheader, label %.loopexit75

.lr.ph85.preheader:                               ; preds = %bb.c
  %i.q = load i64, ptr %i.b, align 8, !tbaa !9
  %i.r = load i32, ptr %1, align 4, !tbaa !8
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.q, %i.s
  %wide.trip.count = zext nneg i32 %0 to i64
  %.pre116 = load ptr, ptr %i.e, align 8, !tbaa !11
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %.lr.ph85
  %i.u = phi ptr [ %.pre116, %.lr.ph85.preheader ], [ %i.ae, %.lr.ph85 ]
  %indvars.iv103 = phi i64 [ 2, %.lr.ph85.preheader ], [ %indvars.iv.next104, %.lr.ph85 ] ; 3 uses
  %.06883 = phi i64 [ %i.t, %.lr.ph85.preheader ], [ %i.z, %.lr.ph85 ]
  %i.v = getelementptr [4 x i8], ptr %1, i64 %indvars.iv103
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %.06883, %i.y                ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv103
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = call i32 @PMPI_Type_create_hvector(i32 noundef %i.ab, i32 noundef 1, i64 noundef %i.z, ptr noundef %i.u, ptr noundef nonnull %i.f) #4 ; 0 uses
  %i.ad = call i32 @PMPI_Type_free(ptr noundef nonnull %i.e) #4 ; 0 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !11
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit75.thread, label %.lr.ph85, !llvm.loop !14

.loopexit75.thread:                               ; preds = %.lr.ph85
  %i.af = load i32, ptr %3, align 4, !tbaa !8
  %i.ag = sext i32 %i.af to i64
  br label %.lr.ph90.preheader

.loopexit75:                                      ; preds = %bb.c
  %i.ah = load i32, ptr %3, align 4, !tbaa !8
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp eq i32 %0, 2
  br i1 %i.aj, label %.lr.ph90.preheader, label %.loopexit

.lr.ph90.preheader:                               ; preds = %.loopexit75.thread, %.loopexit75
  %i.ak = phi i64 [ %i.ag, %.loopexit75.thread ], [ %i.ai, %.loopexit75 ] ; 2 uses
  %wide.trip.count109 = zext nneg i32 %0 to i64
  %i.al = add nsw i64 %wide.trip.count109, -1     ; 2 uses
  %xtraiter135 = and i64 %i.al, 3                 ; 3 uses
  %i.am = add i32 %0, -2
  %i.an = icmp ult i32 %i.am, 3
  br i1 %i.an, label %.lr.ph90.epil.preheader, label %.lr.ph90.preheader.new

.lr.ph90.preheader.new:                           ; preds = %.lr.ph90.preheader
  %unroll_iter142 = and i64 %i.al, -4
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90, %.lr.ph90.preheader.new
  %indvars.iv106 = phi i64 [ 1, %.lr.ph90.preheader.new ], [ %indvars.iv.next107.3, %.lr.ph90 ] ; 6 uses
  %.16988 = phi i64 [ 1, %.lr.ph90.preheader.new ], [ %i.bx, %.lr.ph90 ]
  %i.ao = phi i64 [ %i.ak, %.lr.ph90.preheader.new ], [ %i.cc, %.lr.ph90 ]
  %niter143 = phi i64 [ 0, %.lr.ph90.preheader.new ], [ %niter143.next.3, %.lr.ph90 ]
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %indvars.iv106
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %.16988, %i.as              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv106
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.at, %i.aw
  %i.ay = add nsw i64 %i.ax, %i.ao
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next107
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.at, %i.bc                ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next107
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %i.bd, %i.bg
  %i.bi = add nsw i64 %i.bh, %i.ay
  %indvars.iv.next107.1 = add nuw nsw i64 %indvars.iv106, 2 ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next107.1
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.bd, %i.bm                ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next107.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %i.bn, %i.bq
  %i.bs = add nsw i64 %i.br, %i.bi
  %indvars.iv.next107.2 = add nuw nsw i64 %indvars.iv106, 3 ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next107.2
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bn, %i.bw                ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next107.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.bx, %i.ca
  %i.cc = add nsw i64 %i.cb, %i.bs                ; 3 uses
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %niter143.next.3 = add i64 %niter143, 4         ; 2 uses
  %niter143.ncmp.3 = icmp eq i64 %niter143.next.3, %unroll_iter142
  br i1 %niter143.ncmp.3, label %.loopexit.thread.loopexit.unr-lcssa, label %.lr.ph90, !llvm.loop !16

bb.d:                                             ; preds = %bb.a
  br i1 %i.j, label %.loopexit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cd = sext i32 %0 to i64                      ; 3 uses
  %i.ce = getelementptr [4 x i8], ptr %2, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.ch = add nsw i32 %0, -1
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8
  %i.cl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ci ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = call i32 @PMPI_Type_vector(i32 noundef %i.cg, i32 noundef %i.ck, i32 noundef %i.cm, ptr noundef %5, ptr noundef nonnull %i.e) #4 ; 0 uses
  %i.co = icmp sgt i32 %0, 2
  br i1 %i.co, label %.lr.ph.preheader, label %.loopexit77

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.cp = add nsw i32 %0, -3
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !9
  %i.cr = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.cq, %i.cs
  %i.cu = zext nneg i32 %i.cp to i64
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !11
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cv = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.df, %.lr.ph ]
  %indvars.iv = phi i64 [ %i.cu, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.27078 = phi i64 [ %i.ct, %.lr.ph.preheader ], [ %i.da, %.lr.ph ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %.27078, %i.cz              ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = call i32 @PMPI_Type_create_hvector(i32 noundef %i.dc, i32 noundef 1, i64 noundef %i.da, ptr noundef %i.cv, ptr noundef nonnull %i.f) #4 ; 0 uses
  %i.de = call i32 @PMPI_Type_free(ptr noundef nonnull %i.e) #4 ; 0 uses
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  store ptr %i.df, ptr %i.e, align 8, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.loopexit77.thread, label %.lr.ph, !llvm.loop !17

.loopexit77.thread:                               ; preds = %.lr.ph
  %i.dg = getelementptr [4 x i8], ptr %3, i64 %i.cd
  %i.dh = getelementptr i8, ptr %i.dg, i64 -4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  store i64 %i.dj, ptr %i.c, align 8, !tbaa !9
  br label %.lr.ph82.preheader

.loopexit77:                                      ; preds = %bb.e
  %i.dk = getelementptr [4 x i8], ptr %3, i64 %i.cd
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !8
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = icmp eq i32 %0, 2
  br i1 %i.do, label %.lr.ph82.preheader, label %.loopexit

.lr.ph82.preheader:                               ; preds = %.loopexit77.thread, %.loopexit77
  %i.dp = phi i64 [ %i.dj, %.loopexit77.thread ], [ %i.dn, %.loopexit77 ] ; 2 uses
  %i.dq = add i32 %0, -2                          ; 2 uses
  %i.dr = zext i32 %i.dq to i64                   ; 3 uses
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %xtraiter = and i64 %i.ds, 3                    ; 3 uses
  %i.dt = icmp ult i32 %i.dq, 3
  br i1 %i.dt, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter = and i64 %i.ds, 8589934588
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %indvars.iv100 = phi i64 [ %i.dr, %.lr.ph82.preheader.new ], [ %indvars.iv.next101.3, %.lr.ph82 ] ; 6 uses
  %.37180 = phi i64 [ 1, %.lr.ph82.preheader.new ], [ %i.fd, %.lr.ph82 ]
  %i.du = phi i64 [ %i.dp, %.lr.ph82.preheader.new ], [ %i.fi, %.lr.ph82 ]
  %niter = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %niter.next.3, %.lr.ph82 ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv100
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !8
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul nsw i64 %.37180, %i.dy              ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv100
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !8
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul nsw i64 %i.dz, %i.ec
  %i.ee = add nsw i64 %i.ed, %i.du
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next101
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul nsw i64 %i.dz, %i.ei                ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next101
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8
  %i.em = sext i32 %i.el to i64
  %i.en = mul nsw i64 %i.ej, %i.em
  %i.eo = add nsw i64 %i.en, %i.ee
  %indvars.iv.next101.1 = add nsw i64 %indvars.iv100, -2 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next101.1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !8
  %i.es = sext i32 %i.er to i64
  %i.et = mul nsw i64 %i.ej, %i.es                ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next101.1
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !8
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul nsw i64 %i.et, %i.ew
  %i.ey = add nsw i64 %i.ex, %i.eo
  %indvars.iv.next101.2 = add nsw i64 %indvars.iv100, -3 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next101.2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !8
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul nsw i64 %i.et, %i.fc                ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next101.2
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !8
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul nsw i64 %i.fd, %i.fg
  %i.fi = add nsw i64 %i.fh, %i.ey                ; 3 uses
  %indvars.iv.next101.3 = add nsw i64 %indvars.iv100, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.thread.loopexit131.unr-lcssa, label %.lr.ph82, !llvm.loop !18

.loopexit.thread.sink.split:                      ; preds = %bb.d, %bb.b
  %i.fj = load i32, ptr %2, align 4, !tbaa !8
  %i.fk = call i32 @PMPI_Type_contiguous(i32 noundef %i.fj, ptr noundef %5, ptr noundef nonnull %i.e) #4 ; 0 uses
  %i.fl = load i32, ptr %3, align 4, !tbaa !8
  %i.fm = sext i32 %i.fl to i64
  br label %.loopexit.thread

.loopexit.thread.loopexit.unr-lcssa:              ; preds = %.lr.ph90
  %lcmp.mod139.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod139.not, label %.loopexit.thread, label %.lr.ph90.epil.preheader

.lr.ph90.epil.preheader:                          ; preds = %.loopexit.thread.loopexit.unr-lcssa, %.lr.ph90.preheader
  %indvars.iv106.epil.init = phi i64 [ 1, %.lr.ph90.preheader ], [ %indvars.iv.next107.3, %.loopexit.thread.loopexit.unr-lcssa ]
  %.16988.epil.init = phi i64 [ 1, %.lr.ph90.preheader ], [ %i.bx, %.loopexit.thread.loopexit.unr-lcssa ]
  %.epil.init138 = phi i64 [ %i.ak, %.lr.ph90.preheader ], [ %i.cc, %.loopexit.thread.loopexit.unr-lcssa ]
  %lcmp.mod141 = icmp ne i64 %xtraiter135, 0
  call void @llvm.assume(i1 %lcmp.mod141)
  br label %.lr.ph90.epil

.lr.ph90.epil:                                    ; preds = %.lr.ph90.epil, %.lr.ph90.epil.preheader
  %indvars.iv106.epil = phi i64 [ %indvars.iv106.epil.init, %.lr.ph90.epil.preheader ], [ %indvars.iv.next107.epil, %.lr.ph90.epil ] ; 3 uses
  %.16988.epil = phi i64 [ %.16988.epil.init, %.lr.ph90.epil.preheader ], [ %i.fs, %.lr.ph90.epil ]
  %i.fn = phi i64 [ %.epil.init138, %.lr.ph90.epil.preheader ], [ %i.fx, %.lr.ph90.epil ]
  %epil.iter136 = phi i64 [ 0, %.lr.ph90.epil.preheader ], [ %epil.iter136.next, %.lr.ph90.epil ]
  %i.fo = getelementptr [4 x i8], ptr %1, i64 %indvars.iv106.epil
  %i.fp = getelementptr i8, ptr %i.fo, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !8
  %i.fr = sext i32 %i.fq to i64
  %i.fs = mul nsw i64 %.16988.epil, %i.fr         ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv106.epil
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !8
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul nsw i64 %i.fs, %i.fv
  %i.fx = add nsw i64 %i.fw, %i.fn                ; 2 uses
  %indvars.iv.next107.epil = add nuw nsw i64 %indvars.iv106.epil, 1
  %epil.iter136.next = add i64 %epil.iter136, 1   ; 2 uses
  %epil.iter136.cmp.not = icmp eq i64 %epil.iter136.next, %xtraiter135
  br i1 %epil.iter136.cmp.not, label %.loopexit.thread, label %.lr.ph90.epil, !llvm.loop !19

.loopexit.thread.loopexit131.unr-lcssa:           ; preds = %.lr.ph82
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %.loopexit.thread.loopexit131.unr-lcssa, %.lr.ph82.preheader
  %indvars.iv100.epil.init = phi i64 [ %i.dr, %.lr.ph82.preheader ], [ %indvars.iv.next101.3, %.loopexit.thread.loopexit131.unr-lcssa ]
  %.37180.epil.init = phi i64 [ 1, %.lr.ph82.preheader ], [ %i.fd, %.loopexit.thread.loopexit131.unr-lcssa ]
  %.epil.init = phi i64 [ %i.dp, %.lr.ph82.preheader ], [ %i.fi, %.loopexit.thread.loopexit131.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod134)
  br label %.lr.ph82.epil

.lr.ph82.epil:                                    ; preds = %.lr.ph82.epil, %.lr.ph82.epil.preheader
  %indvars.iv100.epil = phi i64 [ %indvars.iv100.epil.init, %.lr.ph82.epil.preheader ], [ %indvars.iv.next101.epil, %.lr.ph82.epil ] ; 3 uses
  %.37180.epil = phi i64 [ %.37180.epil.init, %.lr.ph82.epil.preheader ], [ %i.gd, %.lr.ph82.epil ]
  %i.fy = phi i64 [ %.epil.init, %.lr.ph82.epil.preheader ], [ %i.gi, %.lr.ph82.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph82.epil.preheader ], [ %epil.iter.next, %.lr.ph82.epil ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv100.epil
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul nsw i64 %.37180.epil, %i.gc         ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv100.epil
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !8
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul nsw i64 %i.gd, %i.gg
  %i.gi = add nsw i64 %i.gh, %i.fy                ; 2 uses
  %indvars.iv.next101.epil = add nsw i64 %indvars.iv100.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_0
