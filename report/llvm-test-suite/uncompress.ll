Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/uncompress?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"ERROR: Could not find infile.\0A\00", align 1
@size = dso_local global i32 0, align 4
@orgpos = dso_local global i32 0, align 4
@in = dso_local local_unnamed_addr global ptr null, align 8
@deari = dso_local local_unnamed_addr global ptr null, align 8
@derle = dso_local local_unnamed_addr global ptr null, align 8
@debw = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @uncompress(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 13 uses
  %i.b = alloca [256 x i32], align 16             ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = tail call noalias ptr @fopen(ptr noundef %i.d, ptr noundef nonnull @.str) ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.1, i64 30, i64 1, ptr %i.g) #9 ; 0 uses
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i64 @fread(ptr noundef nonnull @size, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.e) ; 0 uses
  %i.j = tail call i64 @fread(ptr noundef nonnull @orgpos, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.e) ; 0 uses
  %i.k = load i32, ptr @size, align 4, !tbaa !4
  %i.l = shl i32 %i.k, 1
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #11 ; 3 uses
  store ptr %i.n, ptr @in, align 8, !tbaa !8
  %2 = load i32, ptr @size, align 4, !tbaa !4
  %3 = shl i32 %2, 1
  %4 = zext i32 %3 to i64
  %i.o = tail call noalias ptr @malloc(i64 noundef %4) #11 ; 2 uses
  store ptr %i.o, ptr @deari, align 8, !tbaa !8
  %5 = load i32, ptr @size, align 4, !tbaa !4
  %6 = shl i32 %5, 1
  %7 = zext i32 %6 to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %7) #11 ; 2 uses
  store ptr %i.p, ptr @derle, align 8, !tbaa !8
  %8 = load i32, ptr @size, align 4, !tbaa !4
  %9 = shl i32 %8, 1
  %10 = zext i32 %9 to i64
  %i.q = tail call noalias ptr @malloc(i64 noundef %10) #11 ; 2 uses
  store ptr %i.q, ptr @debw, align 8, !tbaa !8
  %i.r = insertelement <4 x ptr> poison, ptr %i.n, i64 0
  %i.s = insertelement <4 x ptr> %i.r, ptr %i.o, i64 1
  %i.t = insertelement <4 x ptr> %i.s, ptr %i.p, i64 2
  %i.u = insertelement <4 x ptr> %i.t, ptr %i.q, i64 3
  %i.v = icmp eq <4 x ptr> %i.u, splat (ptr null)
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.2, i64 21, i64 1, ptr %i.y) #9 ; 0 uses
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %11 = load i32, ptr @size, align 4, !tbaa !4
  %12 = shl i32 %11, 1
  %13 = zext i32 %12 to i64
  %i.aa = tail call i64 @fread(ptr noundef nonnull %i.n, i64 noundef 1, i64 noundef %13, ptr noundef nonnull %i.e)
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  %i.ad = tail call i32 @do_deari(i32 noundef %i.ab) #12 ; 2 uses
  %i.ae = load ptr, ptr @in, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.ae) #12
  %.not26.i = icmp eq i32 %i.ad, 0
  %.pre = load ptr, ptr @deari, align 8, !tbaa !8 ; 2 uses
  br i1 %.not26.i, label %do_derle.exit, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %bb.e, %bb.h
  %i.af = phi ptr [ %i.bo, %bb.h ], [ %.pre, %bb.e ] ; 3 uses
  %.022.i = phi i32 [ %.2.i, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %.01721.i = phi i32 [ %.118.i, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.ag = zext i32 %.01721.i to i64               ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13  ; 3 uses
  %.not.i = icmp sgt i8 %i.ai, -1
  br i1 %.not.i, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph24.i
  %i.aj = and i8 %i.ai, 127
  %.not27.i = icmp eq i8 %i.aj, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = add nuw i32 %.01721.i, 1
  %i.al = zext i32 %i.ak to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %i.am = phi ptr [ %i.af, %.lr.ph.i ], [ %i.au, %bb.f ]
  %.120.i = phi i32 [ %.022.i, %.lr.ph.i ], [ %i.aq, %bb.f ] ; 2 uses
  %.01619.i = phi i32 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = load ptr, ptr @derle, align 8, !tbaa !8
  %i.aq = add i32 %.120.i, 1                      ; 2 uses
  %i.ar = zext i32 %.120.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  store i8 %i.ao, ptr %i.as, align 1, !tbaa !13
  %i.at = add nuw nsw i32 %.01619.i, 1            ; 2 uses
  %i.au = load ptr, ptr @deari, align 8, !tbaa !8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ag
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = and i8 %i.aw, 127
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = icmp samesign ult i32 %i.at, %i.ay
  br i1 %i.az, label %bb.f, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %i.ba = phi ptr [ %i.af, %.preheader.i ], [ %i.au, %bb.f ]
  %.1.lcssa.i = phi i32 [ %.022.i, %.preheader.i ], [ %i.aq, %bb.f ]
  %i.bb = add i32 %.01721.i, 2
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph24.i
  %i.bc = load ptr, ptr @derle, align 8, !tbaa !8
  %i.bd = zext i32 %.022.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.bg = zext nneg i8 %i.ai to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 1 %i.bf, i64 %i.bg, i1 false)
  %i.bh = load ptr, ptr @deari, align 8, !tbaa !8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ag
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = add i32 %.022.i, %i.bk
  %i.bm = add nuw i32 %.01721.i, 1
  %i.bn = add i32 %i.bm, %i.bk
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %i.bo = phi ptr [ %i.ba, %._crit_edge.i ], [ %i.bh, %bb.g ] ; 2 uses
  %.118.i = phi i32 [ %i.bb, %._crit_edge.i ], [ %i.bn, %bb.g ] ; 2 uses
  %.2.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.bl, %bb.g ]
  %i.bp = icmp ult i32 %.118.i, %i.ad
  br i1 %i.bp, label %.lr.ph24.i, label %do_derle.exit, !llvm.loop !16

do_derle.exit:                                    ; preds = %bb.h, %bb.e
  %i.bq = phi ptr [ %.pre, %bb.e ], [ %i.bo, %bb.h ]
  tail call void @free(ptr noundef %i.bq) #12
  %i.br = load ptr, ptr @derle, align 8, !tbaa !8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bs = load i32, ptr @size, align 4, !tbaa !4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bu) #11 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false), !tbaa !4
  %14 = load i32, ptr @size, align 4, !tbaa !4    ; 7 uses
  %.not.i13 = icmp eq i32 %14, 0                  ; 2 uses
  br i1 %.not.i13, label %.preheader35.i.preheader, label %.lr.ph.preheader.i

.preheader35.i.preheader.loopexit.unr-lcssa:      ; preds = %.lr.ph.i14
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader35.i.preheader, label %.lr.ph.i14.epil.preheader

.lr.ph.i14.epil.preheader:                        ; preds = %.preheader35.i.preheader.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.preheader35.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i14.epil

.lr.ph.i14.epil:                                  ; preds = %.lr.ph.i14.epil, %.lr.ph.i14.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i14.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i14.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i14.epil.preheader ], [ %epil.iter.next, %.lr.ph.i14.epil ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.i.epil
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader35.i.preheader, label %.lr.ph.i14.epil, !llvm.loop !17

.preheader35.i.preheader:                         ; preds = %.preheader35.i.preheader.loopexit.unr-lcssa, %.lr.ph.i14.epil, %do_derle.exit
  br label %.preheader35.i

.lr.ph.preheader.i:                               ; preds = %do_derle.exit
  %wide.trip.count.i = zext i32 %14 to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %.lr.ph.i14.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i14 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i14 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader35.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i14, !llvm.loop !19

.preheader.i15:                                   ; preds = %.preheader35.i
  br i1 %.not.i13, label %._crit_edge.i16, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader.i15
  %wide.trip.count57.i = zext i32 %14 to i64      ; 2 uses
  %xtraiter33 = and i64 %wide.trip.count57.i, 1
  %i.dd = icmp eq i32 %14, 1
  br i1 %i.dd, label %.lr.ph42.i.epil.preheader, label %.lr.ph42.preheader.i.new

.lr.ph42.preheader.i.new:                         ; preds = %.lr.ph42.preheader.i
  %unroll_iter37 = and i64 %wide.trip.count57.i, 4294967294
  br label %.lr.ph42.i

.preheader35.i:                                   ; preds = %.preheader35.i, %.preheader35.i.preheader
  %indvars.iv50.i = phi i64 [ 0, %.preheader35.i.preheader ], [ %indvars.iv.next51.i.1, %.preheader35.i ] ; 4 uses
  %.040.i = phi i32 [ 0, %.preheader35.i.preheader ], [ %i.dl, %.preheader35.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv50.i
  store i32 %.040.i, ptr %i.de, align 8, !tbaa !4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv50.i ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !4
  %i.dh = add i32 %i.dg, %.040.i                  ; 2 uses
  store i32 0, ptr %i.df, align 8, !tbaa !4
  %indvars.iv.next51.i = or disjoint i64 %indvars.iv50.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next51.i
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next51.i ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = add i32 %i.dk, %i.dh
  store i32 0, ptr %i.dj, align 4, !tbaa !4
  %indvars.iv.next51.i.1 = add nuw nsw i64 %indvars.iv50.i, 2 ; 2 uses
  %exitcond53.not.i.1 = icmp eq i64 %indvars.iv.next51.i.1, 256
  br i1 %exitcond53.not.i.1, label %.preheader.i15, label %.preheader35.i, !llvm.loop !20

.lr.ph42.i:                                       ; preds = %.lr.ph42.i, %.lr.ph42.preheader.i.new
  %indvars.iv54.i = phi i64 [ 0, %.lr.ph42.preheader.i.new ], [ %indvars.iv.next55.i.1, %.lr.ph42.i ] ; 4 uses
  %niter38 = phi i64 [ 0, %.lr.ph42.preheader.i.new ], [ %niter38.next.1, %.lr.ph42.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv54.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.do = zext i8 %i.dn to i64                    ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4  ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.do
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dt = add i32 %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv54.i
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !4
  %i.dv = add i32 %i.dq, 1
  store i32 %i.dv, ptr %i.dp, align 4, !tbaa !4
  %indvars.iv.next55.i = or disjoint i64 %indvars.iv54.i, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.next55.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  %i.dy = zext i8 %i.dx to i64                    ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4  ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dy
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  %i.ed = add i32 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next55.i
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !4
  %i.ef = add i32 %i.ea, 1
  store i32 %i.ef, ptr %i.dz, align 4, !tbaa !4
  %indvars.iv.next55.i.1 = add nuw nsw i64 %indvars.iv54.i, 2 ; 2 uses
  %niter38.next.1 = add i64 %niter38, 2           ; 2 uses
  %niter38.ncmp.1 = icmp eq i64 %niter38.next.1, %unroll_iter37
  br i1 %niter38.ncmp.1, label %._crit_edge.i16.loopexit.unr-lcssa, label %.lr.ph42.i, !llvm.loop !21

._crit_edge.i16.loopexit.unr-lcssa:               ; preds = %.lr.ph42.i
  %lcmp.mod35.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod35.not, label %._crit_edge.i16, label %.lr.ph42.i.epil.preheader

.lr.ph42.i.epil.preheader:                        ; preds = %._crit_edge.i16.loopexit.unr-lcssa, %.lr.ph42.preheader.i
  %indvars.iv54.i.epil.init = phi i64 [ 0, %.lr.ph42.preheader.i ], [ %indvars.iv.next55.i.1, %._crit_edge.i16.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod36 = trunc i32 %14 to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv54.i.epil.init
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !13
  %i.ei = zext i8 %i.eh to i64                    ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4  ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ei
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = add i32 %i.em, %i.ek
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv54.i.epil.init
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !4
  %i.ep = add i32 %i.ek, 1
  store i32 %i.ep, ptr %i.ej, align 4, !tbaa !4
  br label %._crit_edge.i16

._crit_edge.i16:                                  ; preds = %.lr.ph42.i.epil.preheader, %._crit_edge.i16.loopexit.unr-lcssa, %.preheader.i15
  %i.eq = load i32, ptr @orgpos, align 4, !tbaa !4
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !13
  %i.eu = load ptr, ptr @debw, align 8, !tbaa !8
  %i.ev = add i32 %14, -1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ew
  store i8 %i.et, ptr %i.ex, align 1, !tbaa !13
  %i.ey = load i32, ptr @size, align 4, !tbaa !4  ; 2 uses
  %i.ez = icmp ugt i32 %i.ey, 1
  br i1 %i.ez, label %.lr.ph45.preheader.i, label %do_debwe.exit

.lr.ph45.preheader.i:                             ; preds = %._crit_edge.i16
  %.pre.i17 = load i32, ptr @orgpos, align 4, !tbaa !4
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i, %.lr.ph45.preheader.i
  %i.fa = phi i32 [ %i.fq, %.lr.ph45.i ], [ %.pre.i17, %.lr.ph45.preheader.i ]
  %i.fb = phi i32 [ %i.fs, %.lr.ph45.i ], [ %i.ey, %.lr.ph45.preheader.i ]
  %.243.i = phi i32 [ %i.fr, %.lr.ph45.i ], [ 1, %.lr.ph45.preheader.i ] ; 2 uses
  %i.fc = zext i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !13
  %i.fi = load ptr, ptr @debw, align 8, !tbaa !8
  %i.fj = xor i32 %.243.i, -1
  %i.fk = add i32 %i.fb, %i.fj
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fl
  store i8 %i.fh, ptr %i.fm, align 1, !tbaa !13
  %i.fn = load i32, ptr @orgpos, align 4, !tbaa !4
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4  ; 2 uses
  store i32 %i.fq, ptr @orgpos, align 4, !tbaa !4
  %i.fr = add nuw i32 %.243.i, 1                  ; 2 uses
  %i.fs = load i32, ptr @size, align 4, !tbaa !4  ; 2 uses
  %i.ft = icmp ult i32 %i.fr, %i.fs
  br i1 %i.ft, label %.lr.ph45.i, label %do_debwe.exit, !llvm.loop !22

do_debwe.exit:                                    ; preds = %.lr.ph45.i, %._crit_edge.i16
  tail call void @free(ptr noundef %i.bv) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.fu = load ptr, ptr @derle, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.fu) #12
  %i.fv = load ptr, ptr @debw, align 8, !tbaa !8
  %i.fw = load i32, ptr @size, align 4, !tbaa !4
  %i.fx = zext i32 %i.fw to i64
  %i.fy = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.fz = tail call i64 @fwrite(ptr noundef %i.fv, i64 noundef 1, i64 noundef %i.fx, ptr noundef %i.fy) ; 0 uses
  %i.ga = load ptr, ptr @debw, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.ga) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @do_deari(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
end_hunk_0
