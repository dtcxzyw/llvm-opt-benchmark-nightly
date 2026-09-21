Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/MSalign11?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@penalty = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"prevhiti = %d, lgth1 = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"prevhitj = %d, lgth2 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"hit!\0A\00", align 1
@MSalign11.mi = internal unnamed_addr global float 0.000000e+00, align 4
@MSalign11.m = internal unnamed_addr global ptr null, align 8
@MSalign11.ijp = internal unnamed_addr global ptr null, align 8
@MSalign11.mpi = internal unnamed_addr global i32 0, align 4
@MSalign11.mp = internal unnamed_addr global ptr null, align 8
@MSalign11.w1 = internal unnamed_addr global ptr null, align 8
@MSalign11.w2 = internal unnamed_addr global ptr null, align 8
@MSalign11.match = internal unnamed_addr global ptr null, align 8
@MSalign11.initverticalw = internal unnamed_addr global ptr null, align 8
@MSalign11.lastverticalw = internal unnamed_addr global ptr null, align 8
@MSalign11.mseq1 = internal unnamed_addr global ptr null, align 8
@MSalign11.mseq2 = internal unnamed_addr global ptr null, align 8
@MSalign11.mseq = internal unnamed_addr global ptr null, align 8
@MSalign11.cpmx1 = internal unnamed_addr global ptr null, align 8
@MSalign11.cpmx2 = internal unnamed_addr global ptr null, align 8
@MSalign11.intwork = internal unnamed_addr global ptr null, align 8
@MSalign11.WMMTX = internal unnamed_addr global ptr null, align 8
@MSalign11.floatwork = internal unnamed_addr global ptr null, align 8
@MSalign11.orlgth1 = internal unnamed_addr global i32 0, align 4
@MSalign11.orlgth2 = internal unnamed_addr global i32 0, align 4
@njob = external local_unnamed_addr global i32, align 4
@commonAlloc1 = external local_unnamed_addr global i32, align 4
@commonAlloc2 = external local_unnamed_addr global i32, align 4
@commonIP = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"currentw[0]  = %f, *maxinwpt = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"maxinw[%d] = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"maxinh[%d] = %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"wmmax = %f (%d,%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"wmmax = %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c">MSres\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c">\0A%s\0A\00", align 1
@amino_dis = external local_unnamed_addr global [128 x [128 x i32]], align 16
@.str.13 = private unnamed_addr constant [19 x i8] c"i=%d, prevhiti=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"j=%d, prevhitj=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"l=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"added %c to mseq1, mseq1 = %s \0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"added %c to mseq2, mseq2 = %s \0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @backdp(ptr nofree noundef readonly captures(none) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10, ptr nofree noundef writeonly captures(none) %11, i32 noundef %12, i32 noundef %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef captures(none) %16, ptr nofree noundef captures(none) %17) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %10 to i64
  %i.b = ptrtoaddr ptr %7 to i64
  %i.c = load i32, ptr @penalty, align 4, !tbaa !10
  %i.d = sitofp i32 %i.c to float                 ; 15 uses
  %i.e = add i32 %5, -1                           ; 6 uses
  %.val192 = load ptr, ptr %15, align 8, !tbaa !13 ; 3 uses
  %.val193 = load ptr, ptr %14, align 8, !tbaa !13 ; 3 uses
  %.not3.i = icmp eq i32 %4, 0
  br i1 %.not3.i, label %match_calc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %.val192, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = sext i8 %i.h to i64
  %i.j = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.i ; 5 uses
  %xtraiter = and i32 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.08.i.prol = phi ptr [ %i.l, %.prol.preheader ], [ %.val193, %.lr.ph.i ] ; 2 uses
  %.065.i.prol = phi i32 [ %i.k, %.prol.preheader ], [ %4, %.lr.ph.i ]
  %.074.i.prol = phi ptr [ %i.r, %.prol.preheader ], [ %9, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.k = add nsw i32 %.065.i.prol, -1             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  %i.m = load i8, ptr %.08.i.prol, align 1, !tbaa !14
  %i.n = sext i8 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = sitofp i32 %i.p to float
  %i.r = getelementptr inbounds nuw i8, ptr %.074.i.prol, i64 4 ; 2 uses
  store float %i.q, ptr %.074.i.prol, align 4, !tbaa !16
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !25

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.08.i.unr = phi ptr [ %.val193, %.lr.ph.i ], [ %i.l, %.prol.preheader ]
  %.065.i.unr = phi i32 [ %4, %.lr.ph.i ], [ %i.k, %.prol.preheader ]
  %.074.i.unr = phi ptr [ %9, %.lr.ph.i ], [ %i.r, %.prol.preheader ]
  %i.s = icmp ult i32 %4, 4
  br i1 %i.s, label %match_calc.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.08.i = phi ptr [ %i.ap, %.lr.ph.i.new ], [ %.08.i.unr, %.prol.loopexit ] ; 5 uses
  %.065.i = phi i32 [ %i.ao, %.lr.ph.i.new ], [ %.065.i.unr, %.prol.loopexit ]
  %.074.i = phi ptr [ %i.av, %.lr.ph.i.new ], [ %.074.i.unr, %.prol.loopexit ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.u = load i8, ptr %.08.i, align 1, !tbaa !14
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !10
  %i.y = sitofp i32 %i.x to float
  %i.z = getelementptr inbounds nuw i8, ptr %.074.i, i64 4
  store float %i.y, ptr %.074.i, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !14
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10
  %i.af = sitofp i32 %i.ae to float
  %i.ag = getelementptr inbounds nuw i8, ptr %.074.i, i64 8
  store float %i.af, ptr %i.z, align 4, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = sitofp i32 %i.al to float
  %i.an = getelementptr inbounds nuw i8, ptr %.074.i, i64 12
  store float %i.am, ptr %i.ag, align 4, !tbaa !16
  %i.ao = add nsw i32 %.065.i, -4                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  %i.aq = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10
  %i.au = sitofp i32 %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %.074.i, i64 16
  store float %i.au, ptr %i.an, align 4, !tbaa !16
  %.not.i.3 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.3, label %match_calc.exit, label %.lr.ph.i.new, !llvm.loop !0

match_calc.exit:                                  ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.a
  %i.aw = add i32 %4, -1                          ; 5 uses
  %.not3.i194 = icmp eq i32 %5, 0                 ; 2 uses
  br i1 %.not3.i194, label %match_calc.exit200, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %match_calc.exit
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.val193, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = sext i8 %i.az to i64
  %i.bb = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ba ; 5 uses
  %xtraiter286 = and i32 %5, 3                    ; 2 uses
  %lcmp.mod287.not = icmp eq i32 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %.prol.loopexit285, label %.prol.preheader284

.prol.preheader284:                               ; preds = %.lr.ph.i195, %.prol.preheader284
  %.08.i196.prol = phi ptr [ %i.bd, %.prol.preheader284 ], [ %.val192, %.lr.ph.i195 ] ; 2 uses
  %.065.i197.prol = phi i32 [ %i.bc, %.prol.preheader284 ], [ %5, %.lr.ph.i195 ]
  %.074.i198.prol = phi ptr [ %i.bj, %.prol.preheader284 ], [ %7, %.lr.ph.i195 ] ; 2 uses
  %prol.iter288 = phi i32 [ %prol.iter288.next, %.prol.preheader284 ], [ 0, %.lr.ph.i195 ]
  %i.bc = add nsw i32 %.065.i197.prol, -1         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i196.prol, i64 1 ; 2 uses
  %i.be = load i8, ptr %.08.i196.prol, align 1, !tbaa !14
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !10
  %i.bi = sitofp i32 %i.bh to float
  %i.bj = getelementptr inbounds nuw i8, ptr %.074.i198.prol, i64 4 ; 2 uses
  store float %i.bi, ptr %.074.i198.prol, align 4, !tbaa !16
  %prol.iter288.next = add i32 %prol.iter288, 1   ; 2 uses
  %prol.iter288.cmp.not = icmp eq i32 %prol.iter288.next, %xtraiter286
  br i1 %prol.iter288.cmp.not, label %.prol.loopexit285, label %.prol.preheader284, !llvm.loop !26

.prol.loopexit285:                                ; preds = %.prol.preheader284, %.lr.ph.i195
  %.08.i196.unr = phi ptr [ %.val192, %.lr.ph.i195 ], [ %i.bd, %.prol.preheader284 ]
  %.065.i197.unr = phi i32 [ %5, %.lr.ph.i195 ], [ %i.bc, %.prol.preheader284 ]
  %.074.i198.unr = phi ptr [ %7, %.lr.ph.i195 ], [ %i.bj, %.prol.preheader284 ]
  %i.bk = icmp ult i32 %5, 4
  br i1 %i.bk, label %match_calc.exit200, label %.lr.ph.i195.new

.lr.ph.i195.new:                                  ; preds = %.prol.loopexit285, %.lr.ph.i195.new
  %.08.i196 = phi ptr [ %i.ch, %.lr.ph.i195.new ], [ %.08.i196.unr, %.prol.loopexit285 ] ; 5 uses
  %.065.i197 = phi i32 [ %i.cg, %.lr.ph.i195.new ], [ %.065.i197.unr, %.prol.loopexit285 ]
  %.074.i198 = phi ptr [ %i.cn, %.lr.ph.i195.new ], [ %.074.i198.unr, %.prol.loopexit285 ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i196, i64 1
  %i.bm = load i8, ptr %.08.i196, align 1, !tbaa !14
  %i.bn = sext i8 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !10
  %i.bq = sitofp i32 %i.bp to float
  %i.br = getelementptr inbounds nuw i8, ptr %.074.i198, i64 4
  store float %i.bq, ptr %.074.i198, align 4, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i196, i64 2
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !10
  %i.bx = sitofp i32 %i.bw to float
  %i.by = getelementptr inbounds nuw i8, ptr %.074.i198, i64 8
  store float %i.bx, ptr %i.br, align 4, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i196, i64 3
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !10
  %i.ce = sitofp i32 %i.cd to float
  %i.cf = getelementptr inbounds nuw i8, ptr %.074.i198, i64 12
  store float %i.ce, ptr %i.by, align 4, !tbaa !16
  %i.cg = add nsw i32 %.065.i197, -4              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i196, i64 4
  %i.ci = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cj = sext i8 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !10
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = getelementptr inbounds nuw i8, ptr %.074.i198, i64 16
  store float %i.cm, ptr %i.cf, align 4, !tbaa !16
  %.not.i199.3 = icmp eq i32 %i.cg, 0
  br i1 %.not.i199.3, label %match_calc.exit200, label %.lr.ph.i195.new, !llvm.loop !0

match_calc.exit200:                               ; preds = %.prol.loopexit285, %.lr.ph.i195.new, %match_calc.exit
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.cp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str, i32 noundef %12, i32 noundef %4) #11 ; 0 uses
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cq, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %5) #11 ; 0 uses
  tail call fastcc void @extendmseq(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %12, i32 noundef %13, i32 noundef %4, i32 noundef %5)
  %i.cs = icmp sgt i32 %4, 1                      ; 2 uses
  br i1 %i.cs, label %.lr.ph, label %.preheader210

.lr.ph:                                           ; preds = %match_calc.exit200
  %i.ct = sext i32 %i.e to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aw to i64   ; 2 uses
  %xtraiter289 = and i64 %wide.trip.count, 1
  %i.cu = icmp eq i32 %i.aw, 1
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.preheader210.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %.preheader210, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader210.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader210.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i32 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod291)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.epil.init ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !16
  %i.cx = fadd float %i.cw, %i.d
  store float %i.cx, ptr %i.cv, align 4, !tbaa !16
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !22
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ct ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !16
  %i.dc = fadd float %i.db, %i.d
  store float %i.dc, ptr %i.da, align 4, !tbaa !16
  br label %.preheader210

.preheader210:                                    ; preds = %.epil.preheader, %.preheader210.loopexit.unr-lcssa, %match_calc.exit200
  %i.dd = icmp sgt i32 %5, 1                      ; 2 uses
  br i1 %i.dd, label %.lr.ph213, label %.preheader

.lr.ph213:                                        ; preds = %.preheader210
  %i.de = sext i32 %i.aw to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %0, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !22 ; 6 uses
  %wide.trip.count244 = zext i32 %i.e to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %5, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph213
  %i.dh = shl nuw nsw i64 %wide.trip.count244, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %7, i64 %i.dh
  %scevgep266 = getelementptr i8, ptr %i.dg, i64 %i.dh
  %bound0 = icmp ult ptr %7, %scevgep266
  %bound1 = icmp ult ptr %i.dg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count244, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.di, align 4, !tbaa !16, !alias.scope !38, !noalias !39
  %wide.load267 = load <4 x float>, ptr %i.dj, align 4, !tbaa !16, !alias.scope !38, !noalias !39
  %i.dk = fadd <4 x float> %wide.load, %broadcast.splat
  %i.dl = fadd <4 x float> %wide.load267, %broadcast.splat
  store <4 x float> %i.dk, ptr %i.di, align 4, !tbaa !16, !alias.scope !38, !noalias !39
  store <4 x float> %i.dl, ptr %i.dj, align 4, !tbaa !16, !alias.scope !38, !noalias !39
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %wide.load268 = load <4 x float>, ptr %i.dm, align 4, !tbaa !16, !alias.scope !39
  %wide.load269 = load <4 x float>, ptr %i.dn, align 4, !tbaa !16, !alias.scope !39
  %i.do = fadd <4 x float> %wide.load268, %broadcast.splat
  %i.dp = fadd <4 x float> %wide.load269, %broadcast.splat
  store <4 x float> %i.do, ptr %i.dm, align 4, !tbaa !16, !alias.scope !39
  store <4 x float> %i.dp, ptr %i.dn, align 4, !tbaa !16, !alias.scope !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count244
  br i1 %cmp.n, label %.lr.ph215.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph213, %middle.block
  %indvars.iv241.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph213 ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter292 = and i64 %wide.trip.count244, 1
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv241.ph ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !16
  %i.dt = fadd float %i.ds, %i.d
  store float %i.dt, ptr %i.dr, align 4, !tbaa !16
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv241.ph ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !16
  %i.dw = fadd float %i.dv, %i.d
  store float %i.dw, ptr %i.du, align 4, !tbaa !16
  %indvars.iv.next242.prol = or disjoint i64 %indvars.iv241.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv241.unr = phi i64 [ %indvars.iv241.ph, %scalar.ph.preheader ], [ %indvars.iv.next242.prol, %scalar.ph.prol ]
  %i.dx = add nsw i64 %wide.trip.count244, -1
  %i.dy = icmp eq i64 %indvars.iv241.ph, %i.dx
  br i1 %i.dy, label %.lr.ph215.preheader, label %scalar.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !16
  %i.eb = fadd float %i.ea, %i.d
  store float %i.eb, ptr %i.dz, align 4, !tbaa !16
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !22
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ct ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !16
  %i.eg = fadd float %i.ef, %i.d
  store float %i.eg, ptr %i.ee, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !16
  %i.ej = fadd float %i.ei, %i.d
  store float %i.ej, ptr %i.eh, align 4, !tbaa !16
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !22
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ct ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !16
  %i.eo = fadd float %i.en, %i.d
  store float %i.eo, ptr %i.em, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader210.loopexit.unr-lcssa, label %bb.b, !llvm.loop !31

.lr.ph215.preheader:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ep = zext nneg i32 %i.e to i64               ; 4 uses
  %18 = icmp ne i32 %i.e, 0
  %.neg = sext i1 %18 to i64
  %19 = zext nneg i32 %5 to i64
  %20 = add nsw i64 %.neg, %19                    ; 3 uses
  %min.iters.check272 = icmp ult i64 %20, 8
  br i1 %min.iters.check272, label %.lr.ph215.preheader283, label %vector.memcheck270

vector.memcheck270:                               ; preds = %.lr.ph215.preheader
  %i.eq = sub i64 %i.b, %i.a
  %i.er = add i64 %i.eq, 3
  %diff.check = icmp ult i64 %i.er, 31
  br i1 %diff.check, label %.lr.ph215.preheader283, label %vector.ph273

vector.ph273:                                     ; preds = %vector.memcheck270
  %n.vec274 = and i64 %20, -8                     ; 3 uses
  %i.es = sub nsw i64 %i.ep, %n.vec274
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph273
  %index276 = phi i64 [ 0, %vector.ph273 ], [ %index.next279, %vector.body275 ] ; 2 uses
  %i.et = sub i64 %i.ep, %index276                ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -12
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -28
  %wide.load277 = load <4 x float>, ptr %i.ev, align 4, !tbaa !16
  %wide.load278 = load <4 x float>, ptr %i.ew, align 4, !tbaa !16
  %i.ex = getelementptr [4 x i8], ptr %10, i64 %i.et ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 -16
  %i.ez = getelementptr i8, ptr %i.ex, i64 -32
  store <4 x float> %wide.load277, ptr %i.ey, align 4, !tbaa !16
  store <4 x float> %wide.load278, ptr %i.ez, align 4, !tbaa !16
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.et ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -12
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 -28
  store <4 x i32> zeroinitializer, ptr %i.fb, align 4, !tbaa !10
  store <4 x i32> zeroinitializer, ptr %i.fc, align 4, !tbaa !10
  %index.next279 = add nuw i64 %index276, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next279, %n.vec274
  br i1 %i.fd, label %middle.block280, label %vector.body275, !llvm.loop !32

middle.block280:                                  ; preds = %vector.body275
  %cmp.n281 = icmp eq i64 %20, %n.vec274
  br i1 %cmp.n281, label %.lr.ph217.preheader, label %.lr.ph215.preheader283

.lr.ph215.preheader283:                           ; preds = %vector.memcheck270, %.lr.ph215.preheader, %middle.block280
  %indvars.iv246.ph = phi i64 [ %i.ep, %vector.memcheck270 ], [ %i.ep, %.lr.ph215.preheader ], [ %i.es, %middle.block280 ]
  br label %.lr.ph215

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv241 = phi i64 [ %indvars.iv.next242.1, %scalar.ph ], [ %indvars.iv241.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv241 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !16
  %i.fg = fadd float %i.ff, %i.d
  store float %i.fg, ptr %i.fe, align 4, !tbaa !16
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv241 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !16
  %i.fj = fadd float %i.fi, %i.d
  store float %i.fj, ptr %i.fh, align 4, !tbaa !16
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next242 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !16
  %i.fm = fadd float %i.fl, %i.d
  store float %i.fm, ptr %i.fk, align 4, !tbaa !16
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next242 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !16
  %i.fp = fadd float %i.fo, %i.d
  store float %i.fp, ptr %i.fn, align 4, !tbaa !16
  %indvars.iv.next242.1 = add nuw nsw i64 %indvars.iv241, 2 ; 2 uses
  %exitcond245.not.1 = icmp eq i64 %indvars.iv.next242.1, %wide.trip.count244
  br i1 %exitcond245.not.1, label %.lr.ph215.preheader, label %scalar.ph, !llvm.loop !33

.preheader:                                       ; preds = %.preheader210
  %i.fq = icmp eq i32 %5, 1
  br i1 %i.fq, label %.lr.ph217.preheader, label %._crit_edge

.lr.ph217.preheader:                              ; preds = %.lr.ph215, %middle.block280, %.preheader
  %i.fr = zext nneg i32 %5 to i64
  %i.fs = shl nuw nsw i64 %i.fr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.fs, i1 false), !tbaa !16
  br label %._crit_edge

.lr.ph215:                                        ; preds = %.lr.ph215.preheader283, %.lr.ph215
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %.lr.ph215 ], [ %indvars.iv246.ph, %.lr.ph215.preheader283 ] ; 5 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv246
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !16
  %i.fv = getelementptr [4 x i8], ptr %10, i64 %indvars.iv246
  %i.fw = getelementptr i8, ptr %i.fv, i64 -4
  store float %i.fu, ptr %i.fw, align 4, !tbaa !16
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv246
  store i32 0, ptr %i.fx, align 4, !tbaa !10
  %indvars.iv.next247 = add nsw i64 %indvars.iv246, -1
  %i.fy = icmp samesign ugt i64 %indvars.iv246, 1
  br i1 %i.fy, label %.lr.ph215, label %.lr.ph217.preheader, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph217.preheader, %.preheader
  br i1 %i.cs, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %._crit_edge
  %i.fz = add nsw i32 %4, -2
  %i.ga = sext i32 %i.e to i64                    ; 3 uses
  %i.gb = sext i32 %5 to i64                      ; 4 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %10, i64 %i.gb
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -8
  %i.ge = getelementptr inbounds [4 x i8], ptr %11, i64 %i.gb
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -8
  %i.gg = add i32 %5, -2
  %i.gh = zext i32 %i.gg to i64
  %i.gi = zext nneg i32 %i.fz to i64
  %xtraiter297 = and i32 %5, 3                    ; 2 uses
  %lcmp.mod298.not = icmp eq i32 %xtraiter297, 0
  %i.gj = icmp ult i32 %5, 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph236, %._crit_edge228
  %indvars.iv255 = phi i64 [ %i.gi, %.lr.ph236 ], [ %indvars.iv.next256.pre-phi, %._crit_edge228 ] ; 14 uses
  %.0166234 = phi ptr [ %8, %.lr.ph236 ], [ %.0167233, %._crit_edge228 ] ; 6 uses
  %.0167233 = phi ptr [ %7, %.lr.ph236 ], [ %.0166234, %._crit_edge228 ] ; 3 uses
  %.0168232 = phi i32 [ %13, %.lr.ph236 ], [ %.1169.lcssa, %._crit_edge228 ] ; 2 uses
  %.0170231 = phi i32 [ %12, %.lr.ph236 ], [ %.1171.lcssa, %._crit_edge228 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv255 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !16
  %i.gn = getelementptr inbounds [4 x i8], ptr %.0167233, i64 %i.ga ; 2 uses
  store float %i.gm, ptr %i.gn, align 4, !tbaa !16
  br i1 %.not3.i194, label %match_calc.exit207.thread, label %.lr.ph.i202

match_calc.exit207.thread:                        ; preds = %bb.c
  %i.go = load float, ptr %i.gk, align 4, !tbaa !16
  %i.gp = getelementptr inbounds [4 x i8], ptr %.0166234, i64 %i.ga
  store float %i.go, ptr %i.gp, align 4, !tbaa !16
  br label %match_calc.exit207.._crit_edge228_crit_edge

.lr.ph.i202:                                      ; preds = %bb.c
  %.val189 = load ptr, ptr %15, align 8, !tbaa !13 ; 2 uses
  %.val = load ptr, ptr %14, align 8, !tbaa !13
  %i.gq = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv255
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !14
  %i.gs = sext i8 %i.gr to i64
  %i.gt = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.gs ; 5 uses
  br i1 %lcmp.mod298.not, label %.prol.loopexit296, label %.prol.preheader295

.prol.preheader295:                               ; preds = %.lr.ph.i202, %.prol.preheader295
  %.08.i203.prol = phi ptr [ %i.gv, %.prol.preheader295 ], [ %.val189, %.lr.ph.i202 ] ; 2 uses
  %.065.i204.prol = phi i32 [ %i.gu, %.prol.preheader295 ], [ %5, %.lr.ph.i202 ]
  %.074.i205.prol = phi ptr [ %i.hb, %.prol.preheader295 ], [ %.0166234, %.lr.ph.i202 ] ; 2 uses
  %prol.iter299 = phi i32 [ %prol.iter299.next, %.prol.preheader295 ], [ 0, %.lr.ph.i202 ]
  %i.gu = add nsw i32 %.065.i204.prol, -1         ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.08.i203.prol, i64 1 ; 2 uses
  %i.gw = load i8, ptr %.08.i203.prol, align 1, !tbaa !14
  %i.gx = sext i8 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !10
  %i.ha = sitofp i32 %i.gz to float
  %i.hb = getelementptr inbounds nuw i8, ptr %.074.i205.prol, i64 4 ; 2 uses
  store float %i.ha, ptr %.074.i205.prol, align 4, !tbaa !16
  %prol.iter299.next = add i32 %prol.iter299, 1   ; 2 uses
  %prol.iter299.cmp.not = icmp eq i32 %prol.iter299.next, %xtraiter297
  br i1 %prol.iter299.cmp.not, label %.prol.loopexit296, label %.prol.preheader295, !llvm.loop !35

.prol.loopexit296:                                ; preds = %.prol.preheader295, %.lr.ph.i202
  %.08.i203.unr = phi ptr [ %.val189, %.lr.ph.i202 ], [ %i.gv, %.prol.preheader295 ]
  %.065.i204.unr = phi i32 [ %5, %.lr.ph.i202 ], [ %i.gu, %.prol.preheader295 ]
  %.074.i205.unr = phi ptr [ %.0166234, %.lr.ph.i202 ], [ %i.hb, %.prol.preheader295 ]
  br i1 %i.gj, label %match_calc.exit207, label %.lr.ph.i202.new

.lr.ph.i202.new:                                  ; preds = %.prol.loopexit296, %.lr.ph.i202.new
  %.08.i203 = phi ptr [ %i.hy, %.lr.ph.i202.new ], [ %.08.i203.unr, %.prol.loopexit296 ] ; 5 uses
  %.065.i204 = phi i32 [ %i.hx, %.lr.ph.i202.new ], [ %.065.i204.unr, %.prol.loopexit296 ]
  %.074.i205 = phi ptr [ %i.ie, %.lr.ph.i202.new ], [ %.074.i205.unr, %.prol.loopexit296 ] ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.08.i203, i64 1
  %i.hd = load i8, ptr %.08.i203, align 1, !tbaa !14
  %i.he = sext i8 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !10
  %i.hh = sitofp i32 %i.hg to float
  %i.hi = getelementptr inbounds nuw i8, ptr %.074.i205, i64 4
  store float %i.hh, ptr %.074.i205, align 4, !tbaa !16
  %i.hj = getelementptr inbounds nuw i8, ptr %.08.i203, i64 2
  %i.hk = load i8, ptr %i.hc, align 1, !tbaa !14
  %i.hl = sext i8 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !10
  %i.ho = sitofp i32 %i.hn to float
  %i.hp = getelementptr inbounds nuw i8, ptr %.074.i205, i64 8
  store float %i.ho, ptr %i.hi, align 4, !tbaa !16
  %i.hq = getelementptr inbounds nuw i8, ptr %.08.i203, i64 3
  %i.hr = load i8, ptr %i.hj, align 1, !tbaa !14
  %i.hs = sext i8 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !10
  %i.hv = sitofp i32 %i.hu to float
  %i.hw = getelementptr inbounds nuw i8, ptr %.074.i205, i64 12
  store float %i.hv, ptr %i.hp, align 4, !tbaa !16
  %i.hx = add nsw i32 %.065.i204, -4              ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.08.i203, i64 4
  %i.hz = load i8, ptr %i.hq, align 1, !tbaa !14
  %i.ia = sext i8 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !10
  %i.id = sitofp i32 %i.ic to float
  %i.ie = getelementptr inbounds nuw i8, ptr %.074.i205, i64 16
  store float %i.id, ptr %i.hw, align 4, !tbaa !16
  %.not.i206.3 = icmp eq i32 %i.hx, 0
  br i1 %.not.i206.3, label %match_calc.exit207, label %.lr.ph.i202.new, !llvm.loop !0

match_calc.exit207:                               ; preds = %.lr.ph.i202.new, %.prol.loopexit296
  %i.if = load float, ptr %i.gk, align 4, !tbaa !16
  %i.ig = getelementptr inbounds [4 x i8], ptr %.0166234, i64 %i.ga
  store float %i.if, ptr %i.ig, align 4, !tbaa !16
  br i1 %i.dd, label %.lr.ph227, label %match_calc.exit207.._crit_edge228_crit_edge

match_calc.exit207.._crit_edge228_crit_edge:      ; preds = %match_calc.exit207.thread, %match_calc.exit207
  %.pre = add nsw i64 %indvars.iv255, -1
  br label %._crit_edge228

.lr.ph227:                                        ; preds = %match_calc.exit207
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0167233, i64 %i.gb
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.0166234, i64 %i.gb
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -8
  %i.ik = load float, ptr %i.gn, align 4, !tbaa !16
  %i.il = add nsw i64 %indvars.iv255, -1          ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv255
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv255
  %i.io = trunc nuw nsw i64 %indvars.iv255 to i32 ; 3 uses
  %i.ip = xor i32 %i.io, -1
  %i.iq = trunc nsw i64 %i.il to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph227, %bb.h
  %indvars.iv252 = phi i64 [ %i.gh, %.lr.ph227 ], [ %indvars.iv.next253, %bb.h ] ; 11 uses
  %.pn = phi ptr [ %i.ih, %.lr.ph227 ], [ %.0161226, %bb.h ]
  %.0160225 = phi ptr [ %i.ij, %.lr.ph227 ], [ %i.nj, %bb.h ] ; 3 uses
  %.0162224 = phi ptr [ %i.gd, %.lr.ph227 ], [ %i.nh, %bb.h ] ; 3 uses
  %.0163223 = phi ptr [ %i.gf, %.lr.ph227 ], [ %i.ni, %bb.h ] ; 2 uses
  %.0164222 = phi float [ %i.ik, %.lr.ph227 ], [ %.1165, %bb.h ] ; 3 uses
  %.1169221 = phi i32 [ %.0168232, %.lr.ph227 ], [ %.2, %bb.h ] ; 4 uses
  %.1171220 = phi i32 [ %.0170231, %.lr.ph227 ], [ %.2172, %bb.h ] ; 4 uses
  %.0161226 = getelementptr inbounds i8, ptr %.pn, i64 -4 ; 2 uses
  %i.ir = load float, ptr %.0161226, align 4, !tbaa !16 ; 6 uses
  %i.is = fadd float %.0164222, %i.d              ; 2 uses
  %i.it = fcmp ogt float %i.is, %i.ir
  %.0 = select i1 %i.it, float %i.is, float %i.ir ; 2 uses
end_hunk_0
