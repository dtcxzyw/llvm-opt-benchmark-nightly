inline.NumInlined: 13
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" !a *!b\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" !a * b\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"  a *!b\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"  a * b\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"  a + b\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%c %c  \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%7d\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"<<abc>d(ef)>\00", align 1
@s_PPMasks = internal unnamed_addr constant [5 x [6 x [3 x i64]]] [[6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -6510615555426900571, i64 723401728380766730, i64 5787213827046133840], [3 x i64] [i64 -6172840429334713771, i64 47851476196393130, i64 6124988953138320640], [3 x i64] [i64 -6149008514797120171, i64 187647121205930, i64 6148820867675914240], [3 x i64] [i64 -6148914692668172971, i64 2863311530, i64 6148914689804861440]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -3732415143318664141, i64 57421771435671756, i64 3674993371882992384], [3 x i64] [i64 -3689517697150995661, i64 225176545447116, i64 3689292520605548544], [3 x i64] [i64 -3689348817318890701, i64 3435973836, i64 3689348813882916864]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -1085350949055099121, i64 264913582878960, i64 1085086035472220160], [3 x i64] [i64 -1085102596360827121, i64 4042322160, i64 1085102592318504960]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -71777218556133121, i64 4278255360, i64 71777214277877760]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]]], align 16

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @Dau_DsdDivisors(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp slt i32 %1, 7                       ; 3 uses
  %i.c = icmp slt i32 %1, 3
  %i.d = add nsw i32 %1, -2
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 2 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) ; 0 uses
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.a
  %i.n = add nsw i32 %1, -6                       ; 4 uses
  %i.o = shl nuw i32 1, %i.n                      ; 7 uses
  %i.p = select i1 %i.b, i32 1, i32 %i.o          ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  %i.r = sext i32 %i.o to i64
  %.idx.i = shl nsw i64 %i.r, 3
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i ; 2 uses
  %.not.i = icmp eq i32 %i.n, 31                  ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %wide.trip.count129.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %i.t = icmp sgt i32 %i.f, 0
  %i.u = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.v = zext nneg i32 %1 to i64
  %wide.trip.count113 = zext nneg i32 %1 to i64   ; 2 uses
  %min.iters.check158 = icmp slt i32 %i.o, 4
  %n.vec160 = and i64 %wide.trip.count129.i, 2147483644
  %exitcond130.not.i = icmp slt i32 %i.o, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %exitcond130.not.i.1 = icmp eq i32 %i.n, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %min.iters.check = icmp slt i32 %i.o, 4
  %n.vec = and i64 %wide.trip.count129.i, 2147483644
  %exitcond130.not.i72 = icmp slt i32 %i.o, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %exitcond130.not.i72.1 = icmp eq i32 %i.n, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %._crit_edge, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge95, label %bb.b, !llvm.loop !8

bb.b:                                             ; preds = %.lr.ph94, %.loopexit
  %indvars.iv110 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next111, %.loopexit ] ; 7 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph94 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 3 uses
  %i.aa = icmp samesign ult i64 %indvars.iv.next111, %i.v
  br i1 %i.aa, label %.lr.ph91, label %.loopexit

.lr.ph91:                                         ; preds = %bb.b
  %i.ab = icmp eq i64 %indvars.iv110, 0
  %i.ac = icmp samesign ult i64 %indvars.iv110, 6
  %i.ad = add nsw i64 %indvars.iv110, -6          ; 3 uses
  %i.ae = trunc nsw i64 %i.ad to i32              ; 2 uses
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = icmp eq i64 %i.ad, 31
  %i.ah = shl i32 2, %i.ae
  %i.ai = sext i32 %i.ah to i64
  %i.aj = zext i32 %i.af to i64                   ; 3 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv110 to i32
  %notmask = shl nsw i32 -1, %i.ak
  %i.al = xor i32 %notmask, -1
  %i.am = getelementptr inbounds nuw [24 x i8], ptr @s_PPMasks, i64 %indvars.iv110 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = zext nneg i32 %i.al to i64              ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %brmerge = select i1 %.not.i, i1 true, i1 %i.ag
  %i.aq = trunc i64 %indvars.iv110 to i32
  %i.ar = add i32 %i.aq, 97
  %min.iters.check178 = icmp eq i64 %i.ad, 0
  %n.vec180 = and i64 %i.aj, 4294967294
  %broadcast.splatinsert167 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat168 = shufflevector <2 x i64> %broadcast.splatinsert167, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph91, %._crit_edge
  %indvars.iv106 = phi i64 [ %indvars.iv, %.lr.ph91 ], [ %indvars.iv.next107, %._crit_edge ] ; 10 uses
  br i1 %i.q, label %.lr.ph.i.preheader, label %Abc_TtCopy.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.u, i1 false), !tbaa !10
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i.preheader, %bb.c
  br i1 %i.ab, label %Abc_TtSwapVars.exit, label %bb.d

bb.d:                                             ; preds = %Abc_TtCopy.exit
  br i1 %i.b, label %Abc_TtSwapVars.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %Abc_TtSwapVars.exit, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.f
  %i.as = load i64, ptr %i.am, align 8, !tbaa !10 ; 4 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !10 ; 4 uses
  %i.au = load i64, ptr %i.ap, align 8, !tbaa !10 ; 4 uses
  br i1 %min.iters.check158, label %scalar.ph157, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph.i53
  %broadcast.splatinsert161 = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat162 = shufflevector <2 x i64> %broadcast.splatinsert161, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert163 = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %broadcast.splat164 = shufflevector <2 x i64> %broadcast.splatinsert163, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat166 = shufflevector <2 x i64> %broadcast.splatinsert165, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph159
  %index170 = phi i64 [ 0, %vector.ph159 ], [ %index.next173, %vector.body169 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index170 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load171 = load <2 x i64>, ptr %i.av, align 16, !tbaa !10 ; 3 uses
  %wide.load172 = load <2 x i64>, ptr %i.aw, align 16, !tbaa !10 ; 3 uses
  %i.ax = and <2 x i64> %wide.load171, %broadcast.splat162
  %i.ay = and <2 x i64> %wide.load172, %broadcast.splat162
  %i.az = and <2 x i64> %wide.load171, %broadcast.splat164
  %i.ba = and <2 x i64> %wide.load172, %broadcast.splat164
  %i.bb = shl <2 x i64> %i.az, %broadcast.splat168
  %i.bc = shl <2 x i64> %i.ba, %broadcast.splat168
  %i.bd = or <2 x i64> %i.bb, %i.ax
  %i.be = or <2 x i64> %i.bc, %i.ay
  %i.bf = and <2 x i64> %wide.load171, %broadcast.splat166
  %i.bg = and <2 x i64> %wide.load172, %broadcast.splat166
  %i.bh = lshr <2 x i64> %i.bf, %broadcast.splat168
  %i.bi = lshr <2 x i64> %i.bg, %broadcast.splat168
  %i.bj = or <2 x i64> %i.bd, %i.bh
  %i.bk = or <2 x i64> %i.be, %i.bi
  store <2 x i64> %i.bj, ptr %i.av, align 16, !tbaa !10
  store <2 x i64> %i.bk, ptr %i.aw, align 16, !tbaa !10
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next173, %n.vec160
  br i1 %i.bl, label %Abc_TtSwapVars.exit, label %vector.body169, !llvm.loop !12

scalar.ph157:                                     ; preds = %.lr.ph.i53
  %i.bm = load i64, ptr %i.a, align 16, !tbaa !10 ; 3 uses
  %i.bn = and i64 %i.bm, %i.as
  %i.bo = and i64 %i.bm, %i.at
  %i.bp = shl i64 %i.bo, %i.ao
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.bm, %i.au
  %i.bs = lshr i64 %i.br, %i.ao
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.a, align 16, !tbaa !10
  br i1 %exitcond130.not.i, label %Abc_TtSwapVars.exit, label %scalar.ph157.1

scalar.ph157.1:                                   ; preds = %scalar.ph157
  %i.bu = load i64, ptr %i.w, align 8, !tbaa !10  ; 3 uses
  %i.bv = and i64 %i.bu, %i.as
  %i.bw = and i64 %i.bu, %i.at
  %i.bx = shl i64 %i.bw, %i.ao
  %i.by = or i64 %i.bx, %i.bv
  %i.bz = and i64 %i.bu, %i.au
  %i.ca = lshr i64 %i.bz, %i.ao
  %i.cb = or i64 %i.by, %i.ca
  store i64 %i.cb, ptr %i.w, align 8, !tbaa !10
  br i1 %exitcond130.not.i.1, label %Abc_TtSwapVars.exit, label %scalar.ph157.2

scalar.ph157.2:                                   ; preds = %scalar.ph157.1
  %i.cc = load i64, ptr %i.x, align 16, !tbaa !10 ; 3 uses
  %i.cd = and i64 %i.cc, %i.as
  %i.ce = and i64 %i.cc, %i.at
  %i.cf = shl i64 %i.ce, %i.ao
  %i.cg = or i64 %i.cf, %i.cd
  %i.ch = and i64 %i.cc, %i.au
  %i.ci = lshr i64 %i.ch, %i.ao
  %i.cj = or i64 %i.cg, %i.ci
  store i64 %i.cj, ptr %i.x, align 16, !tbaa !10
  br label %Abc_TtSwapVars.exit

bb.g:                                             ; preds = %bb.e
  br i1 %brmerge, label %Abc_TtSwapVars.exit, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.g, %._crit_edge.us.i
  %.0120.us.i = phi ptr [ %i.dg, %._crit_edge.us.i ], [ %i.a, %bb.g ] ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.0120.us.i, i64 %i.aj ; 2 uses
  br i1 %min.iters.check178, label %scalar.ph177, label %vector.body181

vector.body181:                                   ; preds = %.preheader.us.i, %vector.body181
  %index182 = phi i64 [ %index.next185, %vector.body181 ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0120.us.i, i64 %index182 ; 2 uses
  %wide.load183 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !10 ; 2 uses
  %i.cl = lshr <2 x i64> %wide.load183, splat (i64 1)
  %i.cm = and <2 x i64> %i.cl, splat (i64 6148914691236517205)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index182 ; 2 uses
  %wide.load184 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !10 ; 2 uses
  %i.co = shl <2 x i64> %wide.load184, splat (i64 1)
  %i.cp = and <2 x i64> %i.co, splat (i64 -6148914691236517206)
  %i.cq = and <2 x i64> %wide.load183, splat (i64 6148914691236517205)
  %i.cr = or disjoint <2 x i64> %i.cp, %i.cq
  store <2 x i64> %i.cr, ptr %i.ck, align 8, !tbaa !10
  %i.cs = and <2 x i64> %wide.load184, splat (i64 -6148914691236517206)
  %i.ct = or disjoint <2 x i64> %i.cs, %i.cm
  store <2 x i64> %i.ct, ptr %i.cn, align 8, !tbaa !10
  %index.next185 = add nuw i64 %index182, 2       ; 2 uses
  %i.cu = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.cu, label %._crit_edge.us.i, label %vector.body181, !llvm.loop !15

scalar.ph177:                                     ; preds = %.preheader.us.i, %scalar.ph177
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51, %scalar.ph177 ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.0120.us.i, i64 %indvars.iv.i50 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !10 ; 2 uses
  %i.cx = lshr i64 %i.cw, 1
  %i.cy = and i64 %i.cx, 6148914691236517205
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i50 ; 2 uses
  %i.cz = load i64, ptr %gep.i, align 8, !tbaa !10 ; 2 uses
  %i.da = shl i64 %i.cz, 1
  %i.db = and i64 %i.da, -6148914691236517206
  %i.dc = and i64 %i.cw, 6148914691236517205
  %i.dd = or disjoint i64 %i.db, %i.dc
  store i64 %i.dd, ptr %i.cv, align 8, !tbaa !10
  %i.de = and i64 %i.cz, -6148914691236517206
  %i.df = or disjoint i64 %i.de, %i.cy
  store i64 %i.df, ptr %gep.i, align 8, !tbaa !10
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %indvars.iv.next.i51, %i.aj
  br i1 %exitcond.not.i52, label %._crit_edge.us.i, label %scalar.ph177, !llvm.loop !16

._crit_edge.us.i:                                 ; preds = %vector.body181, %scalar.ph177
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.0120.us.i, i64 %i.ai ; 2 uses
  %i.dh = icmp ult ptr %i.dg, %i.s
  br i1 %i.dh, label %.preheader.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !17

Abc_TtSwapVars.exit:                              ; preds = %._crit_edge.us.i, %vector.body169, %scalar.ph157, %scalar.ph157.1, %scalar.ph157.2, %bb.g, %Abc_TtCopy.exit, %bb.f
  %i.di = icmp eq i64 %indvars.iv106, 1
  br i1 %i.di, label %Abc_TtSwapVars.exit73, label %bb.h

Abc_TtSwapVars.exit.thread:                       ; preds = %bb.d
  %i.dj = load i64, ptr %i.a, align 16, !tbaa !10 ; 3 uses
  %i.dk = load i64, ptr %i.am, align 8, !tbaa !10
  %i.dl = and i64 %i.dk, %i.dj
  %i.dm = load i64, ptr %i.an, align 8, !tbaa !10
  %i.dn = and i64 %i.dm, %i.dj
  %i.do = shl i64 %i.dn, %i.ao
  %i.dp = or i64 %i.do, %i.dl
  %i.dq = load i64, ptr %i.ap, align 8, !tbaa !10
  %i.dr = and i64 %i.dq, %i.dj
  %i.ds = lshr i64 %i.dr, %i.ao
  %i.dt = or i64 %i.dp, %i.ds                     ; 2 uses
  store i64 %i.dt, ptr %i.a, align 16, !tbaa !10
  %2 = icmp eq i64 %indvars.iv106, 1
  br i1 %2, label %Abc_TtSwapVars.exit73, label %.thread

bb.h:                                             ; preds = %Abc_TtSwapVars.exit
  br i1 %i.b, label %..thread_crit_edge, label %bb.i

..thread_crit_edge:                               ; preds = %bb.h
  %.pre = load i64, ptr %i.a, align 16, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %Abc_TtSwapVars.exit.thread
  %i.du = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.dt, %Abc_TtSwapVars.exit.thread ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @s_PPMasks, i64 144), i64 %indvars.iv106 ; 3 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv106 to i32
  %i.dx = shl nuw i32 1, %i.dw
  %i.dy = add i32 %i.dx, -2
  %i.dz = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.ea = and i64 %i.dz, %i.du
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = and i64 %i.ec, %i.du
  %i.ee = zext i32 %i.dy to i64                   ; 2 uses
  %i.ef = shl i64 %i.ed, %i.ee
  %i.eg = or i64 %i.ef, %i.ea
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !10
  %i.ej = and i64 %i.ei, %i.du
  %i.ek = lshr i64 %i.ej, %i.ee
  %i.el = or i64 %i.eg, %i.ek
  store i64 %i.el, ptr %i.a, align 16, !tbaa !10
  br label %Abc_TtSwapVars.exit73

bb.i:                                             ; preds = %bb.h
  %i.em = icmp samesign ult i64 %indvars.iv106, 6
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %Abc_TtSwapVars.exit73, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %bb.j
  %i.en = trunc nuw nsw i64 %indvars.iv106 to i32
  %i.eo = shl nuw nsw i32 1, %i.en
  %i.ep = add nsw i32 %i.eo, -2
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @s_PPMasks, i64 144), i64 %indvars.iv106 ; 3 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !10 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !10 ; 4 uses
  %i.eu = zext i32 %i.ep to i64                   ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !10 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i67
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert138 = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %broadcast.splat139 = shufflevector <2 x i64> %broadcast.splatinsert138, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert140 = insertelement <2 x i64> poison, i64 %i.eu, i64 0
  %broadcast.splat141 = shufflevector <2 x i64> %broadcast.splatinsert140, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.ew, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ex, align 16, !tbaa !10 ; 3 uses
  %wide.load144 = load <2 x i64>, ptr %i.ey, align 16, !tbaa !10 ; 3 uses
  %i.ez = and <2 x i64> %wide.load, %broadcast.splat
  %i.fa = and <2 x i64> %wide.load144, %broadcast.splat
  %i.fb = and <2 x i64> %wide.load, %broadcast.splat139
  %i.fc = and <2 x i64> %wide.load144, %broadcast.splat139
  %i.fd = shl <2 x i64> %i.fb, %broadcast.splat141
  %i.fe = shl <2 x i64> %i.fc, %broadcast.splat141
  %i.ff = or <2 x i64> %i.fd, %i.ez
  %i.fg = or <2 x i64> %i.fe, %i.fa
  %i.fh = and <2 x i64> %wide.load, %broadcast.splat143
  %i.fi = and <2 x i64> %wide.load144, %broadcast.splat143
  %i.fj = lshr <2 x i64> %i.fh, %broadcast.splat141
  %i.fk = lshr <2 x i64> %i.fi, %broadcast.splat141
  %i.fl = or <2 x i64> %i.ff, %i.fj
  %i.fm = or <2 x i64> %i.fg, %i.fk
  store <2 x i64> %i.fl, ptr %i.ex, align 16, !tbaa !10
  store <2 x i64> %i.fm, ptr %i.ey, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %Abc_TtSwapVars.exit73, label %vector.body, !llvm.loop !18

scalar.ph:                                        ; preds = %.lr.ph.i67
  %i.fo = load i64, ptr %i.a, align 16, !tbaa !10 ; 3 uses
  %i.fp = and i64 %i.fo, %i.er
  %i.fq = and i64 %i.fo, %i.et
  %i.fr = shl i64 %i.fq, %i.eu
  %i.fs = or i64 %i.fr, %i.fp
  %i.ft = and i64 %i.fo, %i.ew
  %i.fu = lshr i64 %i.ft, %i.eu
  %i.fv = or i64 %i.fs, %i.fu
  store i64 %i.fv, ptr %i.a, align 16, !tbaa !10
  br i1 %exitcond130.not.i72, label %Abc_TtSwapVars.exit73, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.fw = load i64, ptr %i.y, align 8, !tbaa !10  ; 3 uses
  %i.fx = and i64 %i.fw, %i.er
  %i.fy = and i64 %i.fw, %i.et
  %i.fz = shl i64 %i.fy, %i.eu
  %i.ga = or i64 %i.fz, %i.fx
  %i.gb = and i64 %i.fw, %i.ew
  %i.gc = lshr i64 %i.gb, %i.eu
  %i.gd = or i64 %i.ga, %i.gc
  store i64 %i.gd, ptr %i.y, align 8, !tbaa !10
  br i1 %exitcond130.not.i72.1, label %Abc_TtSwapVars.exit73, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.ge = load i64, ptr %i.z, align 16, !tbaa !10 ; 3 uses
  %i.gf = and i64 %i.ge, %i.er
  %i.gg = and i64 %i.ge, %i.et
  %i.gh = shl i64 %i.gg, %i.eu
  %i.gi = or i64 %i.gh, %i.gf
  %i.gj = and i64 %i.ge, %i.ew
  %i.gk = lshr i64 %i.gj, %i.eu
  %i.gl = or i64 %i.gi, %i.gk
  store i64 %i.gl, ptr %i.z, align 16, !tbaa !10
  br label %Abc_TtSwapVars.exit73

bb.k:                                             ; preds = %bb.i
  %i.gm = add nsw i64 %indvars.iv106, -6          ; 3 uses
  %i.gn = trunc nsw i64 %i.gm to i32              ; 2 uses
  %i.go = shl nuw i32 1, %i.gn
  br i1 %.not.i, label %Abc_TtSwapVars.exit73, label %.preheader.lr.ph.i56

.preheader.lr.ph.i56:                             ; preds = %bb.k
  %i.gp = icmp eq i64 %i.gm, 31
  %i.gq = shl i32 2, %i.gn
  %i.gr = sext i32 %i.gq to i64
  br i1 %i.gp, label %Abc_TtSwapVars.exit73, label %.preheader.lr.ph.split.us.i57

.preheader.lr.ph.split.us.i57:                    ; preds = %.preheader.lr.ph.i56
  %i.gs = zext nneg i32 %i.go to i64              ; 3 uses
  %min.iters.check146 = icmp eq i64 %i.gm, 0
  %n.vec148 = and i64 %i.gs, 2147483646
  br label %.preheader.us.i58

.preheader.us.i58:                                ; preds = %._crit_edge.us.i65, %.preheader.lr.ph.split.us.i57
  %.0120.us.i59 = phi ptr [ %i.a, %.preheader.lr.ph.split.us.i57 ], [ %i.hp, %._crit_edge.us.i65 ] ; 4 uses
  %invariant.gep.i60 = getelementptr inbounds nuw [8 x i8], ptr %.0120.us.i59, i64 %i.gs ; 2 uses
  br i1 %min.iters.check146, label %scalar.ph145, label %vector.body149

vector.body149:                                   ; preds = %.preheader.us.i58, %vector.body149
  %index150 = phi i64 [ %index.next153, %vector.body149 ], [ 0, %.preheader.us.i58 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.0120.us.i59, i64 %index150 ; 2 uses
  %wide.load151 = load <2 x i64>, ptr %i.gt, align 8, !tbaa !10 ; 2 uses
  %i.gu = lshr <2 x i64> %wide.load151, splat (i64 2)
  %i.gv = and <2 x i64> %i.gu, splat (i64 3689348814741910323)
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i60, i64 %index150 ; 2 uses
  %wide.load152 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !10 ; 2 uses
  %i.gx = shl <2 x i64> %wide.load152, splat (i64 2)
  %i.gy = and <2 x i64> %i.gx, splat (i64 -3689348814741910324)
  %i.gz = and <2 x i64> %wide.load151, splat (i64 3689348814741910323)
  %i.ha = or disjoint <2 x i64> %i.gy, %i.gz
  store <2 x i64> %i.ha, ptr %i.gt, align 8, !tbaa !10
  %i.hb = and <2 x i64> %wide.load152, splat (i64 -3689348814741910324)
  %i.hc = or disjoint <2 x i64> %i.hb, %i.gv
  store <2 x i64> %i.hc, ptr %i.gw, align 8, !tbaa !10
  %index.next153 = add nuw i64 %index150, 2       ; 2 uses
  %i.hd = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.hd, label %._crit_edge.us.i65, label %vector.body149, !llvm.loop !19

scalar.ph145:                                     ; preds = %.preheader.us.i58, %scalar.ph145
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i63, %scalar.ph145 ], [ 0, %.preheader.us.i58 ] ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.0120.us.i59, i64 %indvars.iv.i61 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !10 ; 2 uses
  %i.hg = lshr i64 %i.hf, 2
  %i.hh = and i64 %i.hg, 3689348814741910323
  %gep.i62 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i60, i64 %indvars.iv.i61 ; 2 uses
  %i.hi = load i64, ptr %gep.i62, align 8, !tbaa !10 ; 2 uses
  %i.hj = shl i64 %i.hi, 2
  %i.hk = and i64 %i.hj, -3689348814741910324
  %i.hl = and i64 %i.hf, 3689348814741910323
  %i.hm = or disjoint i64 %i.hk, %i.hl
  store i64 %i.hm, ptr %i.he, align 8, !tbaa !10
  %i.hn = and i64 %i.hi, -3689348814741910324
  %i.ho = or disjoint i64 %i.hn, %i.hh
  store i64 %i.ho, ptr %gep.i62, align 8, !tbaa !10
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %i.gs
  br i1 %exitcond.not.i64, label %._crit_edge.us.i65, label %scalar.ph145, !llvm.loop !20

._crit_edge.us.i65:                               ; preds = %vector.body149, %scalar.ph145
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.0120.us.i59, i64 %i.gr ; 2 uses
  %i.hq = icmp ult ptr %i.hp, %i.s
  br i1 %i.hq, label %.preheader.us.i58, label %Abc_TtSwapVars.exit73, !llvm.loop !17

Abc_TtSwapVars.exit73:                            ; preds = %._crit_edge.us.i65, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %Abc_TtSwapVars.exit.thread, %Abc_TtSwapVars.exit, %.thread, %bb.j, %bb.k, %.preheader.lr.ph.i56
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_TtSwapVars.exit73, %bb.s
  %i.hr = phi i32 [ %i.im, %bb.s ], [ 0, %Abc_TtSwapVars.exit73 ] ; 6 uses
  %i.hs = phi i32 [ %i.in, %bb.s ], [ 0, %Abc_TtSwapVars.exit73 ] ; 6 uses
  %i.ht = phi i32 [ %i.io, %bb.s ], [ 0, %Abc_TtSwapVars.exit73 ] ; 6 uses
  %i.hu = phi i32 [ %i.ip, %bb.s ], [ 0, %Abc_TtSwapVars.exit73 ] ; 6 uses
  %.179 = phi i32 [ %i.ir, %bb.s ], [ 0, %Abc_TtSwapVars.exit73 ] ; 3 uses
  %i.hv = phi i32 [ %i.iq, %bb.s ], [ 0, %Abc_TtSwapVars.exit73 ] ; 6 uses
  %i.hw = lshr i32 %.179, 4
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !10
  %i.ia = shl i32 %.179, 2
  %i.ib = and i32 %i.ia, 60
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = lshr i64 %i.hz, %i.ic
  %i.ie = trunc i64 %i.id to i32
  %i.if = and i32 %i.ie, 15                       ; 3 uses
  switch i32 %i.if, label %bb.o [
    i32 14, label %bb.l
    i32 1, label %bb.l
    i32 13, label %bb.m
    i32 2, label %bb.m
    i32 11, label %bb.n
    i32 4, label %bb.n
  ]

bb.l:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ig = add nsw i32 %i.hv, 1
  br label %bb.s

bb.m:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ih = add nsw i32 %i.ht, 1
  br label %bb.s

bb.n:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ii = add nsw i32 %i.hu, 1
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph
  %i.ij = add nsw i32 %i.if, -7
  %or.cond7 = icmp ult i32 %i.ij, 2
  br i1 %or.cond7, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ik = add nsw i32 %i.hr, 1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  switch i32 %i.if, label %bb.s [
    i32 9, label %bb.r
    i32 6, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.il = add nsw i32 %i.hs, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.l, %bb.n, %bb.r, %bb.p, %bb.m
  %i.im = phi i32 [ %i.hr, %bb.q ], [ %i.hr, %bb.l ], [ %i.hr, %bb.n ], [ %i.hr, %bb.r ], [ %i.ik, %bb.p ], [ %i.hr, %bb.m ] ; 2 uses
  %i.in = phi i32 [ %i.hs, %bb.q ], [ %i.hs, %bb.l ], [ %i.hs, %bb.n ], [ %i.il, %bb.r ], [ %i.hs, %bb.p ], [ %i.hs, %bb.m ] ; 2 uses
  %i.io = phi i32 [ %i.ht, %bb.q ], [ %i.ht, %bb.l ], [ %i.ht, %bb.n ], [ %i.ht, %bb.r ], [ %i.ht, %bb.p ], [ %i.ih, %bb.m ] ; 2 uses
  %i.ip = phi i32 [ %i.hu, %bb.q ], [ %i.hu, %bb.l ], [ %i.ii, %bb.n ], [ %i.hu, %bb.r ], [ %i.hu, %bb.p ], [ %i.hu, %bb.m ] ; 2 uses
  %i.iq = phi i32 [ %i.hv, %bb.q ], [ %i.ig, %bb.l ], [ %i.hv, %bb.n ], [ %i.hv, %bb.r ], [ %i.hv, %bb.p ], [ %i.hv, %bb.m ] ; 2 uses
  %i.ir = add nuw nsw i32 %.179, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ir, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.s, %Abc_TtSwapVars.exit73
  %.sroa.6.0 = phi i32 [ 0, %Abc_TtSwapVars.exit73 ], [ %i.io, %bb.s ]
  %.sroa.9.0 = phi i32 [ 0, %Abc_TtSwapVars.exit73 ], [ %i.ip, %bb.s ]
  %.sroa.12.0 = phi i32 [ 0, %Abc_TtSwapVars.exit73 ], [ %i.im, %bb.s ]
  %.sroa.15.0 = phi i32 [ 0, %Abc_TtSwapVars.exit73 ], [ %i.in, %bb.s ]
  %.lcssa = phi i32 [ 0, %Abc_TtSwapVars.exit73 ], [ %i.iq, %bb.s ]
  %i.is = trunc i64 %indvars.iv106 to i32
  %i.it = add i32 %i.is, 97
  %i.iu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ar, i32 noundef %i.it) ; 0 uses
  %i.iv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.lcssa) ; 0 uses
  %i.iw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.sroa.6.0) ; 0 uses
  %i.ix = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.sroa.9.0) ; 0 uses
  %i.iy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.sroa.12.0) ; 0 uses
  %i.iz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.sroa.15.0) ; 0 uses
  %putchar49 = call i32 @putchar(i32 10)          ; 0 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count113
  br i1 %exitcond109.not, label %.loopexit, label %bb.c, !llvm.loop !22

._crit_edge95:                                    ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Dau_DsdTest000() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @Dau_Dsd6ToTruth(ptr noundef nonnull @.str.9) #7 ; 0 uses
  ret void
}

declare i64 @Dau_Dsd6ToTruth(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = distinct !{!12, !9, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !9, !13, !14}
!16 = distinct !{!16, !9, !14, !13}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9, !13, !14}
!19 = distinct !{!19, !9, !13, !14}
!20 = distinct !{!20, !9, !14, !13}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
end_hunk_0
