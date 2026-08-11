inline.NumInlined: 79
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"S =%2d  D =%2d  C =%2d   \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"x=\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" y=x\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"The %d-variable set family contains %d sets:\0A\00", align 1
@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@.str.7 = private unnamed_addr constant [26 x i8] c"      Verification failed\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%3d : \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%24s  \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"This %d-variable function has %d decomposable variable sets:\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Set %4d : \00", align 1
@s_PPMasks = internal unnamed_addr constant [5 x [6 x [3 x i64]]] [[6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -6510615555426900571, i64 723401728380766730, i64 5787213827046133840], [3 x i64] [i64 -6172840429334713771, i64 47851476196393130, i64 6124988953138320640], [3 x i64] [i64 -6149008514797120171, i64 187647121205930, i64 6148820867675914240], [3 x i64] [i64 -6148914692668172971, i64 2863311530, i64 6148914689804861440]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -3732415143318664141, i64 57421771435671756, i64 3674993371882992384], [3 x i64] [i64 -3689517697150995661, i64 225176545447116, i64 3689292520605548544], [3 x i64] [i64 -3689348817318890701, i64 3435973836, i64 3689348813882916864]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -1085350949055099121, i64 264913582878960, i64 1085086035472220160], [3 x i64] [i64 -1085102596360827121, i64 4042322160, i64 1085102592318504960]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -71777218556133121, i64 4278255360, i64 71777214277877760]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]]], align 16
@s_Truths6Neg = internal unnamed_addr constant [6 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895, i64 4294967295], align 16
@str.1 = private unnamed_addr constant [31 x i8] c"  Decomposition does not exist\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @Dau_DecCheckSetTop5(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [64 x i64]], align 16        ; 8 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %i.c = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = shl nuw i32 1, %2
  %i.e = zext nneg i32 %i.d to i64
  %notmask = shl nsw i64 -1, %i.e
  %i.f = xor i64 %notmask, -1
  %i.g = sub nsw i32 6, %2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.h = shl nuw i32 1, %3
  %i.i = sub nsw i32 %3, %4
  %i.j = shl nuw i32 1, %4                        ; 3 uses
  %i.k = icmp sgt i32 %3, 0
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader134

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %3, 1
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader134.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader134, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader134.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader134.loopexit.unr-lcssa ] ; 3 uses
  %.0108136.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1109.1, %.preheader134.loopexit.unr-lcssa ]
  %.0110135.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1111.1, %.preheader134.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.m = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.n = shl nuw i32 1, %i.m
  %i.o = and i32 %i.n, %5
  %.not125.epil = icmp eq i32 %i.o, 0             ; 2 uses
  %.0110135.sink.epil = select i1 %.not125.epil, i32 -1, i32 %.0110135.epil.init
  %.sink.epil = select i1 %.not125.epil, i32 %.0108136.epil.init, i32 -1
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i32 %.0110135.sink.epil, ptr %i.p, align 4, !tbaa !8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  store i32 %.sink.epil, ptr %i.q, align 4, !tbaa !8
  br label %.preheader134

.preheader134:                                    ; preds = %.lr.ph.epil.preheader, %.preheader134.loopexit.unr-lcssa, %bb.a
  %.not148 = icmp eq i32 %4, 31                   ; 2 uses
  br i1 %.not148, label %.preheader133, label %.lr.ph139

.lr.ph139:                                        ; preds = %.preheader134
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %i.s = zext nneg i32 %smax to i64
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.r, i8 -1, i64 %i.t, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.t, i1 false), !tbaa !9
  br label %.preheader133

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %.0108136 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1109.1, %bb.f ] ; 3 uses
  %.0110135 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1111.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.v, %5
  %.not125 = icmp eq i32 %i.w, 0
  br i1 %.not125, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = add nsw i32 %.0110135, 1
  br label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nsw i32 %.0108136, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b, %bb.c
  %.0110135.sink = phi i32 [ -1, %bb.c ], [ %.0110135, %bb.b ]
  %.sink = phi i32 [ %.0108136, %bb.c ], [ -1, %bb.b ]
  %.1111 = phi i32 [ %.0110135, %bb.c ], [ %i.x, %bb.b ] ; 3 uses
  %.1109 = phi i32 [ %i.y, %bb.c ], [ %.0108136, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %.0110135.sink, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %.sink, ptr %i.aa, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %5
  %.not125.1 = icmp eq i32 %i.ad, 0
  br i1 %.not125.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.ae = add nsw i32 %.1111, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.1
  %i.af = add nsw i32 %.1109, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0110135.sink.1 = phi i32 [ -1, %bb.e ], [ %.1111, %bb.d ]
  %.sink.1 = phi i32 [ %.1109, %bb.e ], [ -1, %bb.d ]
  %.1111.1 = phi i32 [ %.1111, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %.1109.1 = phi i32 [ %i.af, %bb.e ], [ %.1109, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %.0110135.sink.1, ptr %i.ag, align 4, !tbaa !8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 %.sink.1, ptr %i.ah, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader134.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11

.preheader133:                                    ; preds = %.lr.ph139, %.preheader134
  %.not149 = icmp eq i32 %3, 31
  br i1 %.not149, label %._crit_edge, label %.lr.ph144

.lr.ph144:                                        ; preds = %.preheader133
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %.not123 = icmp eq ptr %7, null
  %smax159 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count160 = zext nneg i32 %smax159 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph144, %bb.o
  %indvars.iv156 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next157, %bb.o ] ; 2 uses
  %.0102143 = phi i32 [ 0, %.lr.ph144 ], [ %.1, %bb.o ] ; 4 uses
  %.0103142 = phi i32 [ 0, %.lr.ph144 ], [ %.1104, %bb.o ] ; 3 uses
  %.0105141 = phi i32 [ 0, %.lr.ph144 ], [ %i.bm, %bb.o ] ; 3 uses
  %i.aj = ashr i32 %.0105141, %i.g
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9
  %i.an = shl i32 %.0105141, %2
  %i.ao = and i32 %i.an, 63
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.am, %i.ap
  %i.ar = and i64 %i.aq, %i.f                     ; 4 uses
  %i.as = sext i32 %.0102143 to i64               ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 2 uses
  %.not121 = icmp eq i64 %i.au, -1
  %i.av = icmp eq i64 %i.au, %i.ar
  %or.cond126 = select i1 %.not121, i1 true, i1 %i.av
  br i1 %or.cond126, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !9
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.as ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !9  ; 2 uses
  %.not122 = icmp eq i64 %i.ax, -1
  %i.ay = icmp eq i64 %i.ax, %i.ar
  %or.cond127 = select i1 %.not122, i1 true, i1 %i.ay
  br i1 %or.cond127, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !9
  br i1 %.not123, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = shl i32 %.0102143, %i.i
  %i.ba = add nsw i32 %i.az, %.0103142            ; 2 uses
  %i.bb = and i32 %i.ba, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = ashr i32 %i.ba, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !9
  %i.bi = or i64 %i.bh, %i.bd
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv156
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8  ; 2 uses
  %i.bl = shl nuw i32 1, %i.bk                    ; 2 uses
  %i.bm = xor i32 %i.bl, %.0105141
  %i.bn = and i32 %i.bl, %5
  %.not124 = icmp eq i32 %i.bn, 0
  %i.bo = sext i32 %i.bk to i64                   ; 2 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.br = shl nuw i32 1, %i.bq
  %i.bs = xor i32 %i.br, %.0102143
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bo
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = xor i32 %i.bv, %.0103142
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.1104 = phi i32 [ %.0103142, %bb.m ], [ %i.bw, %bb.n ]
  %.1 = phi i32 [ %i.bs, %bb.m ], [ %.0102143, %bb.n ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count160
  br i1 %exitcond161.not, label %._crit_edge, label %bb.g, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.o, %.preheader133
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.r, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not148, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %smax165 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %wide.trip.count166 = zext nneg i32 %smax165 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph146, %bb.p
  %indvars.iv162 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next163, %bb.p ] ; 5 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv162
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !9  ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv162 to i32 ; 2 uses
  %i.cb = shl i32 %i.ca, %2
  %i.cc = and i32 %i.cb, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl i64 %i.bz, %i.cd
  %i.cf = lshr i32 %i.ca, %i.g
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !9
  %i.cj = or i64 %i.ci, %i.ce
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !9
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv162
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !9  ; 2 uses
  %.not120 = icmp eq i64 %i.cl, -1
  %i.cm = trunc i64 %indvars.iv162 to i32
  %i.cn = add i32 %i.j, %i.cm                     ; 2 uses
  %i.co = shl i32 %i.cn, %2
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = ashr i32 %i.cn, %i.g
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %8, i64 %i.cs ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !9
  %. = select i1 %.not120, i64 %i.bz, i64 %i.cl
  %i.cv = shl i64 %., %i.cq
  %i.cw = or i64 %i.cu, %i.cv
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !9
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge147, label %bb.p, !llvm.loop !14

._crit_edge147:                                   ; preds = %bb.p, %.preheader
  %i.cx = add nsw i32 %4, %2                      ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 5
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge147
  %i.cz = add nsw i32 %i.cx, 1                    ; 6 uses
  %i.da = load i64, ptr %8, align 8, !tbaa !9     ; 7 uses
  %i.db = icmp eq i32 %i.cz, 0
  %i.dc = trunc i64 %i.da to i1
  %i.dd = select i1 %i.dc, i64 3, i64 0
  %i.de = icmp ult i32 %i.cz, 2
  %i.df = and i64 %i.da, 3
  %i.dg = select i1 %i.db, i64 %i.dd, i64 %i.df
  %i.dh = mul nuw nsw i64 %i.dg, 5
  %.126.i = select i1 %i.de, i64 %i.dh, i64 %i.da
  %i.di = icmp ult i32 %i.cz, 3
  %i.dj = and i64 %.126.i, 15
  %i.dk = mul nuw nsw i64 %i.dj, 17
  %.227.i = select i1 %i.di, i64 %i.dk, i64 %i.da
  %i.dl = icmp ult i32 %i.cz, 4
  %i.dm = and i64 %.227.i, 255
  %i.dn = mul nuw nsw i64 %i.dm, 257
  %.328.i = select i1 %i.dl, i64 %i.dn, i64 %i.da
  %i.do = icmp ult i32 %i.cz, 5
  %i.dp = and i64 %.328.i, 65535
  %i.dq = mul nuw nsw i64 %i.dp, 65537
  %.429.i = select i1 %i.do, i64 %i.dq, i64 %i.da
  %i.dr = icmp ult i32 %i.cz, 6
  %i.ds = and i64 %.429.i, 4294967295
  %i.dt = mul nuw i64 %i.ds, 4294967297
  %.5.i = select i1 %i.dr, i64 %i.dt, i64 %i.da
  store i64 %.5.i, ptr %8, align 8, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge147, %bb.q, %._crit_edge
  %i.du = icmp ne ptr %7, null
  %i.dv = icmp slt i32 %3, 6
  %or.cond = and i1 %i.dv, %i.du
  br i1 %or.cond, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.dw = load i64, ptr %7, align 8, !tbaa !9     ; 7 uses
  %i.dx = icmp eq i32 %3, 0
  %i.dy = trunc i64 %i.dw to i1
  %i.dz = select i1 %i.dy, i64 3, i64 0
  %i.ea = icmp ult i32 %3, 2
  %i.eb = and i64 %i.dw, 3
  %i.ec = select i1 %i.dx, i64 %i.dz, i64 %i.eb
  %i.ed = mul nuw nsw i64 %i.ec, 5
  %.126.i128 = select i1 %i.ea, i64 %i.ed, i64 %i.dw
  %i.ee = icmp ult i32 %3, 3
  %i.ef = and i64 %.126.i128, 15
  %i.eg = mul nuw nsw i64 %i.ef, 17
  %.227.i129 = select i1 %i.ee, i64 %i.eg, i64 %i.dw
  %i.eh = icmp ult i32 %3, 4
  %i.ei = and i64 %.227.i129, 255
  %i.ej = mul nuw nsw i64 %i.ei, 257
  %.328.i130 = select i1 %i.eh, i64 %i.ej, i64 %i.dw
  %i.ek = icmp ult i32 %3, 5
  %i.el = and i64 %.328.i130, 65535
  %i.em = mul nuw nsw i64 %i.el, 65537
  %.429.i131 = select i1 %i.ek, i64 %i.em, i64 %i.dw
  %i.en = icmp ult i32 %3, 6
  %i.eo = and i64 %.429.i131, 4294967295
  %i.ep = mul nuw i64 %i.eo, 4294967297
  %.5.i132 = select i1 %i.en, i64 %i.ep, i64 %i.dw
  store i64 %.5.i132, ptr %7, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.r, %bb.s
  %.0 = phi i32 [ 1, %bb.r ], [ 1, %bb.s ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Dau_DecCheckSetTop6(ptr noundef %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x [64 x ptr]], align 16        ; 8 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %i.c = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = icmp slt i32 %2, 7                       ; 3 uses
  %i.e = add nsw i32 %2, -6                       ; 3 uses
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.h = shl nuw i32 1, %3
  %i.i = sub nsw i32 %3, %4
  %i.j = shl nuw i32 1, %4                        ; 3 uses
  %i.k = icmp sgt i32 %3, 0
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader118

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %3, 1
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader118.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader118, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader118.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader118.loopexit.unr-lcssa ] ; 3 uses
  %.095120.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.196.1, %.preheader118.loopexit.unr-lcssa ]
  %.097119.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.198.1, %.preheader118.loopexit.unr-lcssa ]
  %lcmp.mod164 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.m = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.n = shl nuw i32 1, %i.m
  %i.o = and i32 %i.n, %5
  %.not115.epil = icmp eq i32 %i.o, 0             ; 2 uses
  %.097119.sink.epil = select i1 %.not115.epil, i32 -1, i32 %.097119.epil.init
  %.sink.epil = select i1 %.not115.epil, i32 %.095120.epil.init, i32 -1
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i32 %.097119.sink.epil, ptr %i.p, align 4, !tbaa !8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  store i32 %.sink.epil, ptr %i.q, align 4, !tbaa !8
  br label %.preheader118

.preheader118:                                    ; preds = %.lr.ph.epil.preheader, %.preheader118.loopexit.unr-lcssa, %bb.a
  %.not133 = icmp eq i32 %4, 31
  br i1 %.not133, label %.preheader116, label %.lr.ph123

.lr.ph123:                                        ; preds = %.preheader118
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %i.s = zext nneg i32 %smax to i64
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.r, i8 0, i64 %i.t, i1 false), !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.t, i1 false), !tbaa !15
  br label %.preheader116

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %.095120 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.196.1, %bb.f ] ; 3 uses
  %.097119 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.198.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.v, %5
  %.not115 = icmp eq i32 %i.w, 0
  br i1 %.not115, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = add nsw i32 %.097119, 1
  br label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nsw i32 %.095120, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b, %bb.c
  %.097119.sink = phi i32 [ -1, %bb.c ], [ %.097119, %bb.b ]
  %.sink = phi i32 [ %.095120, %bb.c ], [ -1, %bb.b ]
  %.198 = phi i32 [ %.097119, %bb.c ], [ %i.x, %bb.b ] ; 3 uses
  %.196 = phi i32 [ %i.y, %bb.c ], [ %.095120, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %.097119.sink, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %.sink, ptr %i.aa, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %5
  %.not115.1 = icmp eq i32 %i.ad, 0
  br i1 %.not115.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.ae = add nsw i32 %.198, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.1
  %i.af = add nsw i32 %.196, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.097119.sink.1 = phi i32 [ -1, %bb.e ], [ %.198, %bb.d ]
  %.sink.1 = phi i32 [ %.196, %bb.e ], [ -1, %bb.d ]
  %.198.1 = phi i32 [ %.198, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %.196.1 = phi i32 [ %i.af, %bb.e ], [ %.196, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %.097119.sink.1, ptr %i.ag, align 4, !tbaa !8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 %.sink.1, ptr %i.ah, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader118.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !18

.preheader116:                                    ; preds = %.lr.ph123, %.preheader118
  %.not134 = icmp eq i32 %3, 31
  br i1 %.not134, label %._crit_edge, label %.lr.ph129

.lr.ph129:                                        ; preds = %.preheader116
  %i.ai = select i1 %i.d, i32 0, i32 %i.e
  %i.aj = sext i32 %i.g to i64
  %i.ak = shl nsw i64 %i.aj, 3                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %.not113 = icmp eq ptr %7, null
  %smax143 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count144 = zext nneg i32 %smax143 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph129, %bb.p
  %indvars.iv140 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next141, %bb.p ] ; 2 uses
  %.089127 = phi i32 [ 0, %.lr.ph129 ], [ %.1, %bb.p ] ; 4 uses
  %.090126 = phi i32 [ 0, %.lr.ph129 ], [ %.191, %bb.p ] ; 3 uses
  %.092125 = phi i32 [ 0, %.lr.ph129 ], [ %i.bg, %bb.p ] ; 2 uses
  %i.am = sext i32 %.089127 to i64                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15 ; 2 uses
  %.not108 = icmp eq ptr %i.ao, null
  %.pre = shl i32 %.092125, %i.ai
  %.pre153 = sext i32 %.pre to i64                ; 2 uses
  br i1 %.not108, label %._crit_edge152, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre153 ; 3 uses
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) %i.ap, i64 %i.ak)
  %.not109 = icmp eq i32 %bcmp, 0
  br i1 %.not109, label %._crit_edge152, label %bb.i

._crit_edge152:                                   ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre153
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !15
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 2 uses
  %.not110 = icmp eq ptr %i.as, null
  br i1 %.not110, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %bcmp111 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) %i.ap, i64 %i.ak)
  %.not112 = icmp eq i32 %bcmp111, 0
  br i1 %.not112, label %bb.k, label %.loopexit117

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !15
  br i1 %.not113, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = shl i32 %.089127, %i.i
  %i.au = add nsw i32 %i.at, %.090126             ; 2 uses
  %i.av = and i32 %i.au, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = ashr i32 %i.au, 6
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %7, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !9
  %i.bc = or i64 %i.bb, %i.ax
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge152
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv140
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8  ; 2 uses
  %i.bf = shl nuw i32 1, %i.be                    ; 2 uses
  %i.bg = xor i32 %i.bf, %.092125
  %i.bh = and i32 %i.bf, %5
  %.not114 = icmp eq i32 %i.bh, 0
  %i.bi = sext i32 %i.be to i64                   ; 2 uses
  br i1 %.not114, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = xor i32 %i.bl, %.089127
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bi
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = xor i32 %i.bp, %.090126
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.191 = phi i32 [ %.090126, %bb.n ], [ %i.bq, %bb.o ]
  %.1 = phi i32 [ %i.bm, %bb.n ], [ %.089127, %bb.o ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count144
  br i1 %exitcond145.not, label %._crit_edge, label %bb.g, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.p, %.preheader116
  %.not = icmp ne ptr %8, null
  %i.br = icmp ne i32 %4, 31
  %or.cond132 = and i1 %.not, %i.br
  br i1 %or.cond132, label %.lr.ph131, label %.loopexit

.lr.ph131:                                        ; preds = %._crit_edge
  %i.bs = select i1 %i.d, i32 0, i32 %i.e         ; 2 uses
  %i.bt = sext i32 %i.g to i64
  %i.bu = shl nsw i64 %i.bt, 3                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %smax149 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %wide.trip.count150 = zext nneg i32 %smax149 to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph131, %bb.q
  %indvars.iv146 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next147, %bb.q ] ; 5 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv146 to i32
  %i.bx = shl i32 %i.bw, %i.bs
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %8, i64 %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv146
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !15 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.bu, i1 false)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv146
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !15 ; 2 uses
  %.not107 = icmp eq ptr %i.cd, null
  %i.ce = trunc i64 %indvars.iv146 to i32
  %i.cf = add i32 %i.j, %i.ce
  %i.cg = shl i32 %i.cf, %i.bs
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ch
  %. = select i1 %.not107, ptr %i.cb, ptr %i.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %., i64 %i.bu, i1 false)
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count150
  br i1 %exitcond151.not, label %.loopexit, label %bb.q, !llvm.loop !20

.loopexit:                                        ; preds = %bb.q, %._crit_edge
  %i.cj = icmp ne ptr %7, null
  %i.ck = icmp slt i32 %3, 6
  %or.cond = and i1 %i.ck, %i.cj
  br i1 %or.cond, label %bb.r, label %.loopexit117

bb.r:                                             ; preds = %.loopexit
  %i.cl = load i64, ptr %7, align 8, !tbaa !9     ; 7 uses
  %i.cm = icmp eq i32 %3, 0
  %i.cn = trunc i64 %i.cl to i1
  %i.co = select i1 %i.cn, i64 3, i64 0
  %i.cp = icmp ult i32 %3, 2
  %i.cq = and i64 %i.cl, 3
  %i.cr = select i1 %i.cm, i64 %i.co, i64 %i.cq
  %i.cs = mul nuw nsw i64 %i.cr, 5
  %.126.i = select i1 %i.cp, i64 %i.cs, i64 %i.cl
  %i.ct = icmp ult i32 %3, 3
  %i.cu = and i64 %.126.i, 15
  %i.cv = mul nuw nsw i64 %i.cu, 17
  %.227.i = select i1 %i.ct, i64 %i.cv, i64 %i.cl
  %i.cw = icmp ult i32 %3, 4
  %i.cx = and i64 %.227.i, 255
  %i.cy = mul nuw nsw i64 %i.cx, 257
  %.328.i = select i1 %i.cw, i64 %i.cy, i64 %i.cl
  %i.cz = icmp ult i32 %3, 5
  %i.da = and i64 %.328.i, 65535
  %i.db = mul nuw nsw i64 %i.da, 65537
  %.429.i = select i1 %i.cz, i64 %i.db, i64 %i.cl
  %i.dc = icmp ult i32 %3, 6
  %i.dd = and i64 %.429.i, 4294967295
  %i.de = mul nuw i64 %i.dd, 4294967297
  %.5.i = select i1 %i.dc, i64 %i.de, i64 %i.cl
  store i64 %.5.i, ptr %7, align 8, !tbaa !9
  br label %.loopexit117

.loopexit117:                                     ; preds = %bb.j, %.loopexit, %bb.r
  %.0 = phi i32 [ 1, %.loopexit ], [ 1, %bb.r ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Dau_DecCheckSetTopOld(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = shl nuw i32 1, %4
  %i.c = icmp eq i32 %4, 0
  br i1 %i.c, label %bb.b, label %.preheader64

.preheader64:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader63

.lr.ph.preheader:                                 ; preds = %.preheader64
  %xtraiter = and i32 %3, 1
  %i.e = icmp eq i32 %3, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %3, 2147483646
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %.not60 = icmp eq ptr %6, null
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %6, align 8, !tbaa !15
  br label %bb.d

end_hunk_0
begin_hunk_1_@Abc_TtMoveVar:bb.a
  %gep168.i = getelementptr [8 x i8], ptr %invariant.gep167.i, i64 %indvars.iv146.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.fh
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader119.us.us.i
  br i1 %i.ff, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119.us.us.i ] ; 3 uses
  %i.fq = getelementptr [8 x i8], ptr %gep.i, i64 %index ; 3 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fq, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  %wide.load51 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  %i.fs = getelementptr [8 x i8], ptr %gep168.i, i64 %index ; 3 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 16     ; 2 uses
  %wide.load52 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !9, !alias.scope !54
  %wide.load53 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !9, !alias.scope !54
  store <2 x i64> %wide.load52, ptr %i.fq, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  store <2 x i64> %wide.load53, ptr %i.fr, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  store <2 x i64> %wide.load, ptr %i.fs, align 8, !tbaa !9, !alias.scope !54
  store <2 x i64> %wide.load51, ptr %i.ft, align 8, !tbaa !9, !alias.scope !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %._crit_edge.us.us.i, label %vector.body, !llvm.loop !56

._crit_edge.us.us.i.loopexit.unr-lcssa:           ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.fv = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !9
  %i.fx = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !9
  store i64 %i.fy, ptr %i.fv, align 8, !tbaa !9
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !9
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.i.loopexit.unr-lcssa
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, %i.ej ; 2 uses
  %i.fz = icmp slt i64 %indvars.iv.next147.i, %i.el
  br i1 %i.fz, label %.preheader119.us.us.i, label %._crit_edge124.us.us.i, !llvm.loop !57

._crit_edge124.us.us.i:                           ; preds = %._crit_edge.us.us.i
  %i.ga = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i, i64 %i.eh ; 2 uses
  %i.gb = icmp ult ptr %i.ga, %i.ck
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gb, label %.preheader120.us.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !58

Abc_TtSwapVars.exit:                              ; preds = %._crit_edge124.us.us.i, %._crit_edge.us.i, %vector.body91, %scalar.ph79, %scalar.ph79.1, %scalar.ph79.2, %bb.c, %bb.e, %bb.g, %.preheader.lr.ph.i, %bb.h, %.preheader120.lr.ph.i
  %i.gc = sext i32 %i.c to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gc ; 5 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gf
  store i32 %5, ptr %i.gg, align 4, !tbaa !8
  %i.gh = sext i32 %5 to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gh ; 4 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !8
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gk
  store i32 %i.c, ptr %i.gl, align 4, !tbaa !8
  %i.gm = load i32, ptr %i.gi, align 4, !tbaa !8
  %i.gn = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.go = xor i32 %i.gn, %i.gm                    ; 2 uses
  store i32 %i.go, ptr %i.gd, align 4, !tbaa !8
  %i.gp = load i32, ptr %i.gi, align 4, !tbaa !8
  %i.gq = xor i32 %i.gp, %i.go                    ; 2 uses
  store i32 %i.gq, ptr %i.gi, align 4, !tbaa !8
  %i.gr = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gs = xor i32 %i.gr, %i.gq
  store i32 %i.gs, ptr %i.gd, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %Abc_TtSwapVars.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Dau_DecFindSets_int(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #9 {
.preheader184:
  %i.a = alloca [2 x [64 x i64]], align 16        ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %i.c = alloca [2 x [64 x ptr]], align 16        ; 5 uses
  %i.d = alloca [16 x i32], align 16              ; 6 uses
  %i.e = alloca [16 x i32], align 16              ; 5 uses
  %i.f = alloca [16 x i32], align 16              ; 6 uses
  %i.g = alloca [16 x i32], align 16              ; 8 uses
  %i.h = alloca [1024 x i64], align 16            ; 10 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  store i32 0, ptr %i.j, align 4, !tbaa !33
  store i32 32, ptr %i.i, align 8, !tbaa !59
  %i.k = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.m = icmp slt i32 %1, 7
  %i.n = add nsw i32 %1, -6
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.r, i1 false)
  %i.s = shl nuw i32 1, %1
  %i.t = icmp sgt i32 %1, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge200.split

.lr.ph.preheader:                                 ; preds = %.preheader184
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader333, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.v, align 16, !tbaa !8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %vec.ind, ptr %i.w, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.x, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader183, label %.lr.ph.preheader333

.lr.ph.preheader333:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader183:                                    ; preds = %.lr.ph, %middle.block
  %i.z = icmp samesign ugt i32 %1, 2
  br i1 %i.z, label %.preheader182.lr.ph, label %._crit_edge200.split

.preheader182.lr.ph:                              ; preds = %.preheader183
  %.not201 = icmp eq i32 %1, 31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 2 uses
  br i1 %.not201, label %._crit_edge200.split, label %.preheader182.preheader

.preheader182.preheader:                          ; preds = %.preheader182.lr.ph
  %i.ac = add nsw i32 %1, -2                      ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %i.ad = zext nneg i32 %1 to i64
  %wide.trip.count217 = zext nneg i32 %i.ac to i64
  br label %.preheader182

.lr.ph:                                           ; preds = %.lr.ph.preheader333, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader333 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.af = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader183, label %.lr.ph, !llvm.loop !61

.preheader182:                                    ; preds = %.preheader182.preheader, %._crit_edge
  %i.ah = phi ptr [ %i.k, %.preheader182.preheader ], [ %i.kq, %._crit_edge ]
  %i.ai = phi i32 [ 32, %.preheader182.preheader ], [ %i.kr, %._crit_edge ]
  %.val11.i231.a = phi ptr [ %i.k, %.preheader182.preheader ], [ %.val11.i234, %._crit_edge ]
  %.val.i224.a = phi i32 [ 0, %.preheader182.preheader ], [ %.val.i226, %._crit_edge ]
  %i.aj = phi ptr [ %i.k, %.preheader182.preheader ], [ %i.ks, %._crit_edge ]
  %i.ak = phi ptr [ %i.k, %.preheader182.preheader ], [ %i.kt, %._crit_edge ]
  %i.al = phi i32 [ 32, %.preheader182.preheader ], [ %i.ku, %._crit_edge ]
  %i.am = phi i32 [ 0, %.preheader182.preheader ], [ %i.kv, %._crit_edge ]
  %indvars.iv212 = phi i64 [ 2, %.preheader182.preheader ], [ %indvars.iv.next213, %._crit_edge ] ; 20 uses
  %indvars.iv208 = phi i32 [ 1, %.preheader182.preheader ], [ %indvars.iv.next209, %._crit_edge ] ; 2 uses
  %indvar203 = phi i64 [ 0, %.preheader182.preheader ], [ %indvar.next204, %._crit_edge ] ; 3 uses
  %i.an = trunc i64 %indvar203 to i32
  %i.ao = sub i32 %i.ac, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 2
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.aq
  %i.ar = shl nuw nsw i64 %indvar203, 2
  %i.as = add nuw nsw i64 %i.ar, 8
  %i.at = sub nsw i64 %i.ad, %indvars.iv212       ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv212 ; 2 uses
  %i.av = icmp slt i64 %i.at, 6                   ; 2 uses
  %i.aw = trunc i64 %i.at to i32
  %i.ax = add i32 %i.aw, -6                       ; 3 uses
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = trunc nuw nsw i64 %indvars.iv212 to i32 ; 2 uses
  %i.ba = shl nuw i32 1, %i.az
  %.not134.i = icmp eq i64 %indvars.iv212, 31     ; 2 uses
  %i.bb = sext i32 %i.ay to i64
  %i.bc = shl nsw i64 %i.bb, 3                    ; 4 uses
  %smax143.i = call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %wide.trip.count144.i = zext nneg i32 %smax143.i to i64 ; 4 uses
  %i.bd = trunc nsw i64 %i.at to i32              ; 3 uses
  %i.be = shl nuw nsw i32 1, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %notmask.i = shl nsw i64 -1, %i.bf
  %i.bg = xor i64 %notmask.i, -1                  ; 2 uses
  %i.bh = sub nsw i64 6, %i.at                    ; 2 uses
  %.not68193 = icmp samesign ult i64 %indvars.iv212, 3
  %i.bi = trunc nsw i64 %i.bh to i32
  %i.bj = trunc nsw i64 %i.bh to i32
  %xtraiter = and i64 %indvars.iv212, 1
  %unroll_iter = and i64 %indvars.iv212, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod335 = trunc i64 %indvars.iv212 to i1
  %xtraiter336 = and i64 %indvars.iv212, 1
  %unroll_iter339 = and i64 %indvars.iv212, 9223372036854775806
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  %lcmp.mod338 = trunc i64 %indvars.iv212 to i1
  %xtraiter342 = and i64 %indvars.iv212, 1
  %unroll_iter345 = and i64 %indvars.iv212, 9223372036854775806
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  %lcmp.mod344 = trunc i64 %indvars.iv212 to i1
  %min.iters.check299 = icmp samesign ult i64 %indvars.iv212, 8
  %n.vec301 = and i64 %indvars.iv212, 9223372036854775800 ; 3 uses
  %cmp.n308 = icmp eq i64 %indvars.iv212, %n.vec301
  br label %bb.a

bb.a:                                             ; preds = %.preheader182, %.loopexit181
  %i.bk = phi ptr [ %i.ah, %.preheader182 ], [ %i.kq, %.loopexit181 ] ; 5 uses
  %i.bl = phi i32 [ %i.ai, %.preheader182 ], [ %i.kr, %.loopexit181 ] ; 5 uses
  %.val11.i233.a = phi ptr [ %.val11.i231.a, %.preheader182 ], [ %.val11.i234, %.loopexit181 ] ; 5 uses
  %.val.i225.a = phi i32 [ %.val.i224.a, %.preheader182 ], [ %.val.i226, %.loopexit181 ] ; 3 uses
  %i.bm = phi ptr [ %i.aj, %.preheader182 ], [ %i.ks, %.loopexit181 ] ; 5 uses
  %i.bn = phi ptr [ %i.ak, %.preheader182 ], [ %i.kt, %.loopexit181 ] ; 7 uses
  %i.bo = phi i32 [ %i.al, %.preheader182 ], [ %i.ku, %.loopexit181 ] ; 10 uses
  %i.bp = phi i32 [ %i.am, %.preheader182 ], [ %i.kv, %.loopexit181 ] ; 6 uses
  %.063196 = phi i32 [ 0, %.preheader182 ], [ %i.kw, %.loopexit181 ] ; 3 uses
  %i.bq = and i32 %.063196, 65535
  %i.br = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.bq)
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = icmp eq i64 %indvars.iv212, %i.bs
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit181

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.013.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.01012.i = phi i32 [ %i.bx, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.bu = shl nuw i32 1, %.01012.i
  %i.bv = and i32 %i.bu, %.063196
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.bw = add nsw i32 %.013.i, 1
  call fastcc void @Abc_TtMoveVar(ptr noundef nonnull %i.h, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %.01012.i, i32 noundef %.013.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %.013.i, %.lr.ph.i ], [ %i.bw, %bb.b ]
  %i.bx = add nuw nsw i32 %.01012.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bx, %1
  br i1 %exitcond.not.i, label %Dau_DecMoveFreeToLSB.exit, label %.lr.ph.i, !llvm.loop !38

Dau_DecMoveFreeToLSB.exit:                        ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.as, i1 false), !tbaa !8
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !62 ; 2 uses
  br i1 %i.av, label %.preheader134.i, label %.preheader118.i

.preheader134.i:                                  ; preds = %Dau_DecMoveFreeToLSB.exit
  br i1 %.not134.i, label %.lr.ph.i71.preheader, label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %.preheader134.i, %bb.e
  %i.bz = phi i64 [ %i.cm, %bb.e ], [ -1, %.preheader134.i ] ; 3 uses
  %i.ca = phi i64 [ %i.cn, %bb.e ], [ -1, %.preheader134.i ] ; 3 uses
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %bb.e ], [ 0, %.preheader134.i ] ; 2 uses
  %.0105141.i = phi i32 [ %i.cr, %bb.e ], [ 0, %.preheader134.i ] ; 3 uses
  %i.cb = ashr i32 %.0105141.i, %i.bi
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !9
  %i.cf = shl i32 %.0105141.i, %i.bd
  %i.cg = and i32 %i.cf, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = lshr i64 %i.ce, %i.ch
  %i.cj = and i64 %i.ci, %i.bg                    ; 4 uses
  %.not121.i = icmp eq i64 %i.ca, -1
  %i.ck = icmp eq i64 %i.ca, %i.cj
  %or.cond126.i = select i1 %.not121.i, i1 true, i1 %i.ck
  br i1 %or.cond126.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph144.i
  %.not122.i = icmp eq i64 %i.bz, -1
  %i.cl = icmp eq i64 %i.bz, %i.cj
  %or.cond127.i = select i1 %.not122.i, i1 true, i1 %i.cl
  br i1 %or.cond127.i, label %bb.e, label %Dau_DecCheckSetTop.exit

bb.e:                                             ; preds = %bb.d, %.lr.ph144.i
  %i.cm = phi i64 [ %i.bz, %.lr.ph144.i ], [ %i.cj, %bb.d ]
  %i.cn = phi i64 [ %i.cj, %.lr.ph144.i ], [ %i.ca, %bb.d ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv156.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = shl nuw i32 1, %i.cp
  %i.cr = xor i32 %i.cq, %.0105141.i
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next157.i, %wide.trip.count144.i
  br i1 %exitcond161.not.i, label %.lr.ph.i71.preheader, label %.lr.ph144.i, !llvm.loop !13

.preheader118.i:                                  ; preds = %Dau_DecMoveFreeToLSB.exit
  br i1 %.not134.i, label %.lr.ph.i71.preheader, label %.lr.ph129.i

.lr.ph129.i:                                      ; preds = %.preheader118.i, %bb.i
  %i.cs = phi ptr [ %i.cw, %bb.i ], [ null, %.preheader118.i ] ; 3 uses
  %i.ct = phi ptr [ %i.cx, %bb.i ], [ null, %.preheader118.i ] ; 4 uses
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %bb.i ], [ 0, %.preheader118.i ] ; 2 uses
  %.092125.i = phi i32 [ %i.db, %bb.i ], [ 0, %.preheader118.i ] ; 2 uses
  %.not108.i = icmp eq ptr %i.ct, null
  %.pre.i = shl i32 %.092125.i, %i.ax
  %.pre153.i = sext i32 %.pre.i to i64            ; 2 uses
  br i1 %.not108.i, label %._crit_edge152.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph129.i
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre153.i ; 4 uses
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.ct, ptr noundef nonnull dereferenceable(1) %i.cu, i64 %i.bc)
  %.not109.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not109.i, label %._crit_edge152.i, label %bb.g

._crit_edge152.i:                                 ; preds = %bb.f, %.lr.ph129.i
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre153.i
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not110.i = icmp eq ptr %i.cs, null
  br i1 %.not110.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %bcmp111.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull dereferenceable(1) %i.cu, i64 %i.bc)
  %.not112.i = icmp eq i32 %bcmp111.i, 0
  br i1 %.not112.i, label %bb.i, label %Dau_DecCheckSetTop.exit

bb.i:                                             ; preds = %bb.g, %bb.h, %._crit_edge152.i
  %i.cw = phi ptr [ %i.cs, %._crit_edge152.i ], [ %i.cu, %bb.h ], [ %i.cu, %bb.g ]
  %i.cx = phi ptr [ %i.cv, %._crit_edge152.i ], [ %i.ct, %bb.h ], [ %i.ct, %bb.g ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv140.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8
  %i.da = shl nuw i32 1, %i.cz
  %i.db = xor i32 %i.da, %.092125.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count144.i
  br i1 %exitcond145.not.i, label %.lr.ph.i71.preheader, label %.lr.ph129.i, !llvm.loop !19

.lr.ph.i71.preheader:                             ; preds = %bb.i, %bb.e, %.preheader134.i, %.preheader118.i
  br i1 %min.iters.check299, label %.lr.ph.i71.preheader310, label %vector.body302

vector.body302:                                   ; preds = %.lr.ph.i71.preheader, %vector.body302
  %index303 = phi i64 [ %index.next306, %vector.body302 ], [ 0, %.lr.ph.i71.preheader ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.di, %vector.body302 ], [ zeroinitializer, %.lr.ph.i71.preheader ]
  %vec.phi304 = phi <4 x i32> [ %i.dj, %vector.body302 ], [ zeroinitializer, %.lr.ph.i71.preheader ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index303 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <4 x i32>, ptr %i.dc, align 16, !tbaa !8
  %wide.load305 = load <4 x i32>, ptr %i.dd, align 16, !tbaa !8
  %i.de = shl <4 x i32> %wide.load, splat (i32 1)
  %i.df = shl <4 x i32> %wide.load305, splat (i32 1)
  %i.dg = shl nuw <4 x i32> splat (i32 1), %i.de
  %i.dh = shl nuw <4 x i32> splat (i32 1), %i.df
  %i.di = or <4 x i32> %i.dg, %vec.phi            ; 2 uses
  %i.dj = or <4 x i32> %i.dh, %vec.phi304         ; 2 uses
  %index.next306 = add nuw i64 %index303, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next306, %n.vec301
  br i1 %i.dk, label %middle.block307, label %vector.body302, !llvm.loop !63

middle.block307:                                  ; preds = %vector.body302
  %bin.rdx = or <4 x i32> %i.dj, %i.di
  %i.dl = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n308, label %Dau_DecCreateSet.exit, label %.lr.ph.i71.preheader310

.lr.ph.i71.preheader310:                          ; preds = %.lr.ph.i71.preheader, %middle.block307
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i71.preheader ], [ %n.vec301, %middle.block307 ]
  %.01112.i.ph = phi i32 [ 0, %.lr.ph.i71.preheader ], [ %i.dl, %middle.block307 ]
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader310, %.lr.ph.i71
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i71 ], [ %indvars.iv.i.ph, %.lr.ph.i71.preheader310 ] ; 2 uses
  %.01112.i = phi i32 [ %.1.i73, %.lr.ph.i71 ], [ %.01112.i.ph, %.lr.ph.i71.preheader310 ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !8
  %i.do = shl i32 %i.dn, 1
  %i.dp = shl nuw i32 1, %i.do
  %.1.i73 = or i32 %i.dp, %.01112.i               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i, %indvars.iv212
  br i1 %exitcond.not.i74, label %Dau_DecCreateSet.exit, label %.lr.ph.i71, !llvm.loop !64

Dau_DecCreateSet.exit:                            ; preds = %.lr.ph.i71, %middle.block307
  %.1.i73.lcssa = phi i32 [ %i.dl, %middle.block307 ], [ %.1.i73, %.lr.ph.i71 ]
  %i.dq = icmp eq i32 %i.bp, %i.bo
  br i1 %i.dq, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %Dau_DecCreateSet.exit
  %i.dr = icmp slt i32 %i.bo, 16
  br i1 %i.dr, label %bb.k, label %bb.n

end_hunk_1
