loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DTRRFS\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@c__1 = internal global i32 1, align 4
@c_b19 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dtrrfs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr nofree noundef writeonly captures(none) %12, ptr noundef %13, ptr noundef %14, ptr nofree noundef captures(none) initializes((0, 4)) %15) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %13 to i64
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [3 x i32], align 4                ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.g = load i32, ptr %6, align 4, !tbaa !8      ; 2 uses
  %narrow509 = xor i32 %i.g, -1
  %i.h = sext i32 %narrow509 to i64               ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %5, i64 %i.h ; 8 uses
  %i.j = load i32, ptr %8, align 4, !tbaa !8      ; 2 uses
  %narrow = xor i32 %i.j, -1
  %i.k = sext i32 %narrow to i64                  ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %7, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %10, align 4, !tbaa !8     ; 2 uses
  %narrow499 = xor i32 %i.m, -1
  %i.n = sext i32 %narrow499 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %9, i64 %i.n ; 12 uses
  %i.p = getelementptr inbounds i8, ptr %11, i64 -8
  %i.q = getelementptr inbounds i8, ptr %12, i64 -8 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %13, i64 -8 ; 48 uses
  store i32 0, ptr %15, align 4, !tbaa !8
  %i.s = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #7
  %i.t = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %i.u = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %.not = icmp eq i32 %i.s, 0                     ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %.not500 = icmp eq i32 %i.v, 0
  br i1 %.not500, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not501 = icmp eq i32 %i.t, 0                  ; 3 uses
  br i1 %.not501, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %.not502 = icmp eq i32 %i.w, 0
  br i1 %.not502, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  %.not503 = icmp eq i32 %i.x, 0
  br i1 %.not503, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.not504 = icmp eq i32 %i.u, 0                  ; 5 uses
  br i1 %.not504, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #7
  %.not505 = icmp eq i32 %i.y, 0
  br i1 %.not505, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = load i32, ptr %3, align 4, !tbaa !8      ; 4 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %4, align 4, !tbaa !8     ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %6, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.z, i32 1) ; 3 uses
  %i.ae = icmp slt i32 %i.ad, %spec.select
  br i1 %i.ae, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %8, align 4, !tbaa !8
  %i.ag = icmp slt i32 %i.af, %spec.select
  br i1 %i.ag, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %10, align 4, !tbaa !8
  %i.ai = icmp slt i32 %i.ah, %spec.select
  br i1 %i.ai, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pr = load i32, ptr %15, align 4, !tbaa !8     ; 2 uses
  %.not506 = icmp eq i32 %.pr, 0
  br i1 %.not506, label %bb.n, label %.thread

.thread.sink.split:                               ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.e ], [ -4, %bb.h ], [ -7, %bb.j ], [ -9, %bb.k ], [ -5, %bb.i ], [ -3, %bb.g ], [ -11, %bb.l ] ; 2 uses
  store i32 %.sink, ptr %15, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  %i.aj = phi i32 [ %.pr, %bb.m ], [ %.sink, %.thread.sink.split ]
  %i.ak = sub nsw i32 0, %i.aj
  store i32 %i.ak, ptr %i.c, align 4, !tbaa !8
  %i.al = call i32 @xerbla_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.am = icmp eq i32 %i.z, 0
  %.not538646 = icmp eq i32 %i.ab, 0              ; 2 uses
  br i1 %i.am, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not538646, label %.loopexit, label %bb.q

bb.p:                                             ; preds = %bb.n
  br i1 %.not538646, label %.loopexit, label %.lr.ph649.preheader

.lr.ph649.preheader:                              ; preds = %bb.p
  %i.an = zext nneg i32 %i.ab to i64
  %i.ao = shl nuw nsw i64 %i.an, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 %i.ao, i1 false), !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %i.ao, i1 false), !tbaa !9
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %. = select i1 %.not501, i8 78, i8 84
  store i8 %., ptr %i.f, align 1, !tbaa !11
  %i.ap = add nuw nsw i32 %i.z, 1
  %i.aq = tail call double @dlamch_(ptr noundef nonnull @.str.6) #7 ; 2 uses
  %i.ar = tail call double @dlamch_(ptr noundef nonnull @.str.7) #7
  %i.as = uitofp nneg i32 %i.ap to double         ; 2 uses
  %i.at = fmul double %i.ar, %i.as                ; 9 uses
  %i.au = fdiv double %i.at, %i.aq                ; 5 uses
  %i.av = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %.not508642 = icmp slt i32 %i.av, 1
  br i1 %.not508642, label %.loopexit, label %.lr.ph645

.lr.ph645:                                        ; preds = %bb.q
  %i.aw = fmul double %i.aq, %i.as                ; 3 uses
  %i.ax = sext i32 %i.g to i64                    ; 16 uses
  %i.ay = sext i32 %i.m to i64
  %i.az = sext i32 %i.j to i64                    ; 3 uses
  %.pre = load i32, ptr %3, align 4, !tbaa !8
  %i.ba = zext nneg i32 %i.av to i64
  %scevgep = getelementptr i8, ptr %13, i64 -8
  %i.bb = shl nsw i64 %i.ax, 3                    ; 2 uses
  %i.bc = shl nsw i64 %i.h, 3                     ; 2 uses
  %16 = shl nsw i64 %i.ax, 3
  %scevgep1001 = getelementptr i8, ptr %13, i64 -8
  %17 = shl nsw i64 %i.ax, 3                      ; 3 uses
  %18 = shl nsw i64 %i.h, 3                       ; 2 uses
  %i.bd = add nsw i64 %17, 8
  %i.be = shl nsw i64 %i.ax, 3
  %i.bf = shl nsw i64 %i.ax, 3
  %i.bg = or i64 %i.ax, %i.h
  %i.bh = shl nsw i64 %i.bg, 3                    ; 2 uses
  %i.bi = add nsw i64 %i.bh, 8                    ; 3 uses
  %i.bj = shl nsw i64 %i.ax, 3
  %i.bk = add nsw i64 %i.bf, 8                    ; 2 uses
  %i.bl = shl nsw i64 %i.ax, 3
  %i.bm = add i64 %i.b, -8
  %i.bn = or i64 %i.az, %i.k
  %i.bo = shl nsw i64 %i.bn, 3
  %i.bp = add i64 %i.bo, %i.a
  %i.bq = sub i64 %i.bm, %i.bp
  %i.br = mul nsw i64 %i.az, -8
  %invariant.op = add i64 %i.bq, -1
  %19 = getelementptr i8, ptr %5, i64 %i.bh
  %20 = getelementptr i8, ptr %19, i64 16
  %21 = getelementptr i8, ptr %5, i64 %i.bi
  %22 = getelementptr i8, ptr %5, i64 %i.bi
  %23 = getelementptr i8, ptr %5, i64 %i.bi
  %i.bs = getelementptr i8, ptr %5, i64 %17
  %i.bt = getelementptr i8, ptr %i.bs, i64 %18
  %i.bu = getelementptr i8, ptr %5, i64 %17
  %i.bv = getelementptr i8, ptr %i.bu, i64 %18
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = getelementptr i8, ptr %5, i64 %i.bb
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bc
  %i.bz = getelementptr i8, ptr %5, i64 %i.bb
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bc
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.au, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert935 = insertelement <4 x double> poison, double %i.aw, i64 0
  %broadcast.splat936 = shufflevector <4 x double> %broadcast.splatinsert935, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert937 = insertelement <4 x double> poison, double %i.at, i64 0
  %broadcast.splat938 = shufflevector <4 x double> %broadcast.splatinsert937, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph645, %._crit_edge640.thread
  %indvar1144 = phi i64 [ 0, %.lr.ph645 ], [ %indvar.next1145, %._crit_edge640.thread ] ; 2 uses
  %i.cc = phi i32 [ %.pre, %.lr.ph645 ], [ %i.agj, %._crit_edge640.thread ]
  %indvars.iv783 = phi i64 [ 1, %.lr.ph645 ], [ %indvars.iv.next784, %._crit_edge640.thread ] ; 7 uses
  %i.cd = mul nsw i64 %indvars.iv783, %i.ay       ; 12 uses
  %i.ce = getelementptr [8 x i8], ptr %i.o, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = sext i32 %i.cc to i64
  %i.ch = getelementptr [8 x i8], ptr %i.r, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.cf, ptr noundef nonnull @c__1, ptr noundef %i.ci, ptr noundef nonnull @c__1) #7
  %i.cj = load i32, ptr %3, align 4, !tbaa !8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %i.r, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  call void @dtrmv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %i.cm, ptr noundef nonnull @c__1) #7
  %i.cn = mul nsw i64 %indvars.iv783, %i.az       ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.l, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %3, align 4, !tbaa !8
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.r, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  call void @daxpy_(ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef %i.cp, ptr noundef nonnull @c__1, ptr noundef %i.ct, ptr noundef nonnull @c__1) #7
  %i.cu = load i32, ptr %3, align 4, !tbaa !8     ; 33 uses
  %.not510561 = icmp slt i32 %i.cu, 1             ; 10 uses
  br i1 %.not510561, label %._crit_edge, label %iter.check1163

iter.check1163:                                   ; preds = %bb.r
  %i.cv = mul i64 %i.br, %indvar1144
  %i.cw = add nuw i32 %i.cu, 1
  %wide.trip.count = zext i32 %i.cw to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.cn ; 7 uses
  %i.cx = zext nneg i32 %i.cu to i64              ; 5 uses
  %min.iters.check1147 = icmp ult i32 %i.cu, 4
  %.reass = add i64 %i.cv, %invariant.op
  %diff.check = icmp ult i64 %.reass, 127
  %or.cond = select i1 %min.iters.check1147, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check1148

vector.main.loop.iter.check1148:                  ; preds = %iter.check1163
  %min.iters.check1149 = icmp ult i32 %i.cu, 16
  br i1 %min.iters.check1149, label %vec.epilog.ph1167, label %vector.ph1150

vector.ph1150:                                    ; preds = %vector.main.loop.iter.check1148
  %i.cy = and i64 %i.cx, 12
  %n.vec1151 = and i64 %i.cx, 2147483632          ; 4 uses
  %i.cz = or disjoint i64 %n.vec1151, 1
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1150
  %index1153 = phi i64 [ 0, %vector.ph1150 ], [ %index.next1158, %vector.body1152 ] ; 3 uses
  %i.da = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1153 ; 4 uses
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %i.dc = getelementptr i8, ptr %i.da, i64 40
  %i.dd = getelementptr i8, ptr %i.da, i64 72
  %i.de = getelementptr i8, ptr %i.da, i64 104
  %wide.load1154 = load <4 x double>, ptr %i.db, align 8, !tbaa !9 ; 3 uses
  %wide.load1155 = load <4 x double>, ptr %i.dc, align 8, !tbaa !9 ; 3 uses
  %wide.load1156 = load <4 x double>, ptr %i.dd, align 8, !tbaa !9 ; 3 uses
  %wide.load1157 = load <4 x double>, ptr %i.de, align 8, !tbaa !9 ; 3 uses
  %i.df = fcmp oge <4 x double> %wide.load1154, zeroinitializer
  %i.dg = fcmp oge <4 x double> %wide.load1155, zeroinitializer
  %i.dh = fcmp oge <4 x double> %wide.load1156, zeroinitializer
  %i.di = fcmp oge <4 x double> %wide.load1157, zeroinitializer
  %i.dj = fneg <4 x double> %wide.load1154
  %i.dk = fneg <4 x double> %wide.load1155
  %i.dl = fneg <4 x double> %wide.load1156
  %i.dm = fneg <4 x double> %wide.load1157
  %i.dn = select <4 x i1> %i.df, <4 x double> %wide.load1154, <4 x double> %i.dj
  %i.do = select <4 x i1> %i.dg, <4 x double> %wide.load1155, <4 x double> %i.dk
  %i.dp = select <4 x i1> %i.dh, <4 x double> %wide.load1156, <4 x double> %i.dl
  %i.dq = select <4 x i1> %i.di, <4 x double> %wide.load1157, <4 x double> %i.dm
  %i.dr = getelementptr [8 x i8], ptr %13, i64 %index1153 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  store <4 x double> %i.dn, ptr %i.dr, align 8, !tbaa !9
  store <4 x double> %i.do, ptr %i.ds, align 8, !tbaa !9
  store <4 x double> %i.dp, ptr %i.dt, align 8, !tbaa !9
  store <4 x double> %i.dq, ptr %i.du, align 8, !tbaa !9
  %index.next1158 = add nuw i64 %index1153, 16    ; 2 uses
  %i.dv = icmp eq i64 %index.next1158, %n.vec1151
  br i1 %i.dv, label %middle.block1159, label %vector.body1152, !llvm.loop !12

middle.block1159:                                 ; preds = %vector.body1152
  %cmp.n1160 = icmp eq i64 %n.vec1151, %i.cx
  br i1 %cmp.n1160, label %._crit_edge, label %vec.epilog.iter.check1165

vec.epilog.iter.check1165:                        ; preds = %middle.block1159
  %min.epilog.iters.check1166 = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check1166, label %.lr.ph.preheader, label %vec.epilog.ph1167, !prof !16

vec.epilog.ph1167:                                ; preds = %vector.main.loop.iter.check1148, %vec.epilog.iter.check1165
  %vec.epilog.resume.val1161 = phi i64 [ %n.vec1151, %vec.epilog.iter.check1165 ], [ 0, %vector.main.loop.iter.check1148 ]
  %n.vec1168 = and i64 %i.cx, 2147483644          ; 3 uses
  %i.dw = or disjoint i64 %n.vec1168, 1
  br label %vec.epilog.vector.body1169

vec.epilog.vector.body1169:                       ; preds = %vec.epilog.vector.body1169, %vec.epilog.ph1167
  %index1170 = phi i64 [ %vec.epilog.resume.val1161, %vec.epilog.ph1167 ], [ %index.next1172, %vec.epilog.vector.body1169 ] ; 3 uses
  %i.dx = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1170
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %wide.load1171 = load <4 x double>, ptr %i.dy, align 8, !tbaa !9 ; 3 uses
  %i.dz = fcmp oge <4 x double> %wide.load1171, zeroinitializer
  %i.ea = fneg <4 x double> %wide.load1171
  %i.eb = select <4 x i1> %i.dz, <4 x double> %wide.load1171, <4 x double> %i.ea
  %i.ec = getelementptr [8 x i8], ptr %13, i64 %index1170
  store <4 x double> %i.eb, ptr %i.ec, align 8, !tbaa !9
  %index.next1172 = add nuw i64 %index1170, 4     ; 2 uses
  %i.ed = icmp eq i64 %index.next1172, %n.vec1168
  br i1 %i.ed, label %vec.epilog.middle.block1173, label %vec.epilog.vector.body1169, !llvm.loop !17

vec.epilog.middle.block1173:                      ; preds = %vec.epilog.vector.body1169
  %cmp.n1174 = icmp eq i64 %n.vec1168, %i.cx
  br i1 %cmp.n1174, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check1163, %vec.epilog.iter.check1165, %vec.epilog.middle.block1173
  %indvars.iv.ph = phi i64 [ 1, %iter.check1163 ], [ %i.cz, %vec.epilog.iter.check1165 ], [ %i.dw, %vec.epilog.middle.block1173 ] ; 4 uses
  %i.ee = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.ef = zext nneg i32 %i.cu to i64
  %i.eg = sub nsw i64 %i.ef, %indvars.iv.ph
  %xtraiter = and i64 %i.ee, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.eh = load double, ptr %gep.prol, align 8, !tbaa !9 ; 3 uses
  %i.ei = fcmp oge double %i.eh, 0.000000e+00
  %i.ej = fneg double %i.eh
  %i.ek = select i1 %i.ei, double %i.eh, double %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.prol
  store double %i.ek, ptr %i.el, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !18

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.em = icmp ult i64 %i.eg, 3
  br i1 %i.em, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.en = load double, ptr %gep, align 8, !tbaa !9 ; 3 uses
  %i.eo = fcmp oge double %i.en, 0.000000e+00
  %i.ep = fneg double %i.en
  %i.eq = select i1 %i.eo, double %i.en, double %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store double %i.eq, ptr %i.er, align 8, !tbaa !9
  %i.es = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.es, i64 8
  %i.et = load double, ptr %gep.1, align 8, !tbaa !9 ; 3 uses
  %i.eu = fcmp oge double %i.et, 0.000000e+00
  %i.ev = fneg double %i.et
  %i.ew = select i1 %i.eu, double %i.et, double %i.ev
  %i.ex = getelementptr [8 x i8], ptr %13, i64 %indvars.iv
  store double %i.ew, ptr %i.ex, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ey = load double, ptr %gep.2, align 8, !tbaa !9 ; 3 uses
  %i.ez = fcmp oge double %i.ey, 0.000000e+00
  %i.fa = fneg double %i.ey
  %i.fb = select i1 %i.ez, double %i.ey, double %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.1
  store double %i.fb, ptr %i.fc, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.fd = load double, ptr %gep.3, align 8, !tbaa !9 ; 3 uses
  %i.fe = fcmp oge double %i.fd, 0.000000e+00
  %i.ff = fneg double %i.fd
  %i.fg = select i1 %i.fe, double %i.fd, double %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.2
  store double %i.fg, ptr %i.fh, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1159, %vec.epilog.middle.block1173, %bb.r
  br i1 %.not501, label %bb.v, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not504, label %.preheader556, label %.preheader558

.preheader558:                                    ; preds = %bb.t
  br i1 %.not510561, label %._crit_edge619.thread, label %.lr.ph566.preheader

.lr.ph566.preheader:                              ; preds = %.preheader558
  %i.fi = add nuw i32 %i.cu, 1
  %wide.trip.count677 = zext i32 %i.fi to i64
  %invariant.gep820 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd
  br label %iter.check1127

.preheader556:                                    ; preds = %bb.t
  br i1 %.not510561, label %._crit_edge619.thread, label %.lr.ph574.preheader

.lr.ph574.preheader:                              ; preds = %.preheader556
  %i.fj = add nuw i32 %i.cu, 1
  %wide.trip.count687 = zext i32 %i.fj to i64
  %invariant.gep824 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd
  br label %.lr.ph574

iter.check1127:                                   ; preds = %.lr.ph566.preheader, %.loopexit1177
  %indvar1096 = phi i64 [ 0, %.lr.ph566.preheader ], [ %indvar.next1097, %.loopexit1177 ] ; 4 uses
  %indvars.iv672 = phi i64 [ 1, %.lr.ph566.preheader ], [ %indvars.iv.next673, %.loopexit1177 ] ; 11 uses
  %indvars.iv670 = phi i64 [ 2, %.lr.ph566.preheader ], [ %indvars.iv.next671, %.loopexit1177 ] ; 3 uses
  %gep821 = getelementptr [8 x i8], ptr %invariant.gep820, i64 %indvars.iv672
  %i.fk = load double, ptr %gep821, align 8, !tbaa !9 ; 3 uses
  %i.fl = fcmp oge double %i.fk, 0.000000e+00
  %i.fm = fneg double %i.fk
  %i.fn = select i1 %i.fl, double %i.fk, double %i.fm ; 7 uses
  %i.fo = mul nsw i64 %indvars.iv672, %i.ax
  %invariant.gep818 = getelementptr [8 x i8], ptr %i.i, i64 %i.fo ; 7 uses
  %min.iters.check1105 = icmp samesign ult i64 %indvars.iv672, 4
  br i1 %min.iters.check1105, label %vec.epilog.scalar.ph1128.preheader, label %vector.memcheck1095

vector.memcheck1095:                              ; preds = %iter.check1127
  %i.fp = mul i64 %i.bk, %indvar1096
  %scevgep1100 = getelementptr i8, ptr %20, i64 %i.fp
  %i.fq = mul i64 %i.bl, %indvar1096
  %scevgep1099 = getelementptr i8, ptr %21, i64 %i.fq
  %i.fr = shl nuw nsw i64 %indvar1096, 3
  %i.fs = getelementptr i8, ptr %13, i64 %i.fr
  %scevgep1098 = getelementptr i8, ptr %i.fs, i64 8
  %bound01101 = icmp ult ptr %13, %scevgep1100
  %bound11102 = icmp ult ptr %scevgep1099, %scevgep1098
  %found.conflict1103 = and i1 %bound01101, %bound11102
  br i1 %found.conflict1103, label %vec.epilog.scalar.ph1128.preheader, label %vector.main.loop.iter.check1106

vector.main.loop.iter.check1106:                  ; preds = %vector.memcheck1095
  %min.iters.check1107 = icmp samesign ult i64 %indvars.iv672, 16
  br i1 %min.iters.check1107, label %vec.epilog.ph1131, label %vector.ph1108

vector.ph1108:                                    ; preds = %vector.main.loop.iter.check1106
  %i.ft = and i64 %indvars.iv672, 12
  %n.vec1109 = and i64 %indvars.iv672, 9223372036854775792 ; 4 uses
  %i.fu = or disjoint i64 %n.vec1109, 1
  %broadcast.splatinsert1110 = insertelement <4 x double> poison, double %i.fn, i64 0
  %broadcast.splat1111 = shufflevector <4 x double> %broadcast.splatinsert1110, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1108
  %index1113 = phi i64 [ 0, %vector.ph1108 ], [ %index.next1122, %vector.body1112 ] ; 3 uses
  %i.fv = getelementptr [8 x i8], ptr %invariant.gep818, i64 %index1113 ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = getelementptr i8, ptr %i.fv, i64 40
  %i.fy = getelementptr i8, ptr %i.fv, i64 72
  %i.fz = getelementptr i8, ptr %i.fv, i64 104
  %wide.load1114 = load <4 x double>, ptr %i.fw, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %wide.load1115 = load <4 x double>, ptr %i.fx, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %wide.load1116 = load <4 x double>, ptr %i.fy, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %wide.load1117 = load <4 x double>, ptr %i.fz, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %i.ga = fcmp oge <4 x double> %wide.load1114, zeroinitializer
  %i.gb = fcmp oge <4 x double> %wide.load1115, zeroinitializer
  %i.gc = fcmp oge <4 x double> %wide.load1116, zeroinitializer
  %i.gd = fcmp oge <4 x double> %wide.load1117, zeroinitializer
  %i.ge = fneg <4 x double> %wide.load1114
  %i.gf = fneg <4 x double> %wide.load1115
  %i.gg = fneg <4 x double> %wide.load1116
  %i.gh = fneg <4 x double> %wide.load1117
  %i.gi = select <4 x i1> %i.ga, <4 x double> %wide.load1114, <4 x double> %i.ge
  %i.gj = select <4 x i1> %i.gb, <4 x double> %wide.load1115, <4 x double> %i.gf
  %i.gk = select <4 x i1> %i.gc, <4 x double> %wide.load1116, <4 x double> %i.gg
  %i.gl = select <4 x i1> %i.gd, <4 x double> %wide.load1117, <4 x double> %i.gh
  %i.gm = getelementptr [8 x i8], ptr %13, i64 %index1113 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 64 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 96 ; 2 uses
  %wide.load1118 = load <4 x double>, ptr %i.gm, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %wide.load1119 = load <4 x double>, ptr %i.gn, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %wide.load1120 = load <4 x double>, ptr %i.go, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %wide.load1121 = load <4 x double>, ptr %i.gp, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %i.gq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gi, <4 x double> %broadcast.splat1111, <4 x double> %wide.load1118)
  %i.gr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gj, <4 x double> %broadcast.splat1111, <4 x double> %wide.load1119)
  %i.gs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gk, <4 x double> %broadcast.splat1111, <4 x double> %wide.load1120)
  %i.gt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gl, <4 x double> %broadcast.splat1111, <4 x double> %wide.load1121)
  store <4 x double> %i.gq, ptr %i.gm, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  store <4 x double> %i.gr, ptr %i.gn, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  store <4 x double> %i.gs, ptr %i.go, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  store <4 x double> %i.gt, ptr %i.gp, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %index.next1122 = add nuw i64 %index1113, 16    ; 2 uses
  %i.gu = icmp eq i64 %index.next1122, %n.vec1109
  br i1 %i.gu, label %middle.block1123, label %vector.body1112, !llvm.loop !26

middle.block1123:                                 ; preds = %vector.body1112
  %cmp.n1124 = icmp eq i64 %indvars.iv672, %n.vec1109
  br i1 %cmp.n1124, label %.loopexit1177, label %vec.epilog.iter.check1129

vec.epilog.iter.check1129:                        ; preds = %middle.block1123
  %min.epilog.iters.check1130 = icmp eq i64 %i.ft, 0
  br i1 %min.epilog.iters.check1130, label %vec.epilog.scalar.ph1128.preheader, label %vec.epilog.ph1131, !prof !16

vec.epilog.ph1131:                                ; preds = %vector.main.loop.iter.check1106, %vec.epilog.iter.check1129
  %vec.epilog.resume.val1125 = phi i64 [ %n.vec1109, %vec.epilog.iter.check1129 ], [ 0, %vector.main.loop.iter.check1106 ]
  %n.vec1132 = and i64 %indvars.iv672, 9223372036854775804 ; 3 uses
  %i.gv = or disjoint i64 %n.vec1132, 1
  %broadcast.splatinsert1133 = insertelement <4 x double> poison, double %i.fn, i64 0
  %broadcast.splat1134 = shufflevector <4 x double> %broadcast.splatinsert1133, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1135

vec.epilog.vector.body1135:                       ; preds = %vec.epilog.vector.body1135, %vec.epilog.ph1131
  %index1136 = phi i64 [ %vec.epilog.resume.val1125, %vec.epilog.ph1131 ], [ %index.next1139, %vec.epilog.vector.body1135 ] ; 3 uses
  %i.gw = getelementptr [8 x i8], ptr %invariant.gep818, i64 %index1136
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %wide.load1137 = load <4 x double>, ptr %i.gx, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %i.gy = fcmp oge <4 x double> %wide.load1137, zeroinitializer
  %i.gz = fneg <4 x double> %wide.load1137
  %i.ha = select <4 x i1> %i.gy, <4 x double> %wide.load1137, <4 x double> %i.gz
  %i.hb = getelementptr [8 x i8], ptr %13, i64 %index1136 ; 2 uses
  %wide.load1138 = load <4 x double>, ptr %i.hb, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %i.hc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ha, <4 x double> %broadcast.splat1134, <4 x double> %wide.load1138)
  store <4 x double> %i.hc, ptr %i.hb, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %index.next1139 = add nuw i64 %index1136, 4     ; 2 uses
  %i.hd = icmp eq i64 %index.next1139, %n.vec1132
  br i1 %i.hd, label %vec.epilog.middle.block1140, label %vec.epilog.vector.body1135, !llvm.loop !27

vec.epilog.middle.block1140:                      ; preds = %vec.epilog.vector.body1135
  %cmp.n1141 = icmp eq i64 %indvars.iv672, %n.vec1132
  br i1 %cmp.n1141, label %.loopexit1177, label %vec.epilog.scalar.ph1128.preheader

vec.epilog.scalar.ph1128.preheader:               ; preds = %vector.memcheck1095, %iter.check1127, %vec.epilog.iter.check1129, %vec.epilog.middle.block1140
  %indvars.iv663.ph = phi i64 [ 1, %iter.check1127 ], [ 1, %vector.memcheck1095 ], [ %i.fu, %vec.epilog.iter.check1129 ], [ %i.gv, %vec.epilog.middle.block1140 ] ; 4 uses
  %i.he = sub i64 %indvars.iv670, %indvars.iv663.ph
  %i.hf = sub i64 %indvars.iv672, %indvars.iv663.ph
  %xtraiter1191 = and i64 %i.he, 3                ; 2 uses
  %lcmp.mod1192.not = icmp eq i64 %xtraiter1191, 0
  br i1 %lcmp.mod1192.not, label %vec.epilog.scalar.ph1128.prol.loopexit, label %vec.epilog.scalar.ph1128.prol

vec.epilog.scalar.ph1128.prol:                    ; preds = %vec.epilog.scalar.ph1128.preheader, %vec.epilog.scalar.ph1128.prol
  %indvars.iv663.prol = phi i64 [ %indvars.iv.next664.prol, %vec.epilog.scalar.ph1128.prol ], [ %indvars.iv663.ph, %vec.epilog.scalar.ph1128.preheader ] ; 3 uses
  %prol.iter1193 = phi i64 [ %prol.iter1193.next, %vec.epilog.scalar.ph1128.prol ], [ 0, %vec.epilog.scalar.ph1128.preheader ]
  %gep819.prol = getelementptr [8 x i8], ptr %invariant.gep818, i64 %indvars.iv663.prol
  %i.hg = load double, ptr %gep819.prol, align 8, !tbaa !9 ; 3 uses
  %i.hh = fcmp oge double %i.hg, 0.000000e+00
  %i.hi = fneg double %i.hg
  %i.hj = select i1 %i.hh, double %i.hg, double %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv663.prol ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !9
  %i.hm = call double @llvm.fmuladd.f64(double %i.hj, double %i.fn, double %i.hl)
  store double %i.hm, ptr %i.hk, align 8, !tbaa !9
  %indvars.iv.next664.prol = add nuw nsw i64 %indvars.iv663.prol, 1 ; 2 uses
  %prol.iter1193.next = add i64 %prol.iter1193, 1 ; 2 uses
  %prol.iter1193.cmp.not = icmp eq i64 %prol.iter1193.next, %xtraiter1191
  br i1 %prol.iter1193.cmp.not, label %vec.epilog.scalar.ph1128.prol.loopexit, label %vec.epilog.scalar.ph1128.prol, !llvm.loop !28

vec.epilog.scalar.ph1128.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1128.prol, %vec.epilog.scalar.ph1128.preheader
  %indvars.iv663.unr = phi i64 [ %indvars.iv663.ph, %vec.epilog.scalar.ph1128.preheader ], [ %indvars.iv.next664.prol, %vec.epilog.scalar.ph1128.prol ]
  %i.hn = icmp ult i64 %i.hf, 3
  br i1 %i.hn, label %.loopexit1177, label %vec.epilog.scalar.ph1128

vec.epilog.scalar.ph1128:                         ; preds = %vec.epilog.scalar.ph1128.prol.loopexit, %vec.epilog.scalar.ph1128
  %indvars.iv663 = phi i64 [ %indvars.iv.next664.3, %vec.epilog.scalar.ph1128 ], [ %indvars.iv663.unr, %vec.epilog.scalar.ph1128.prol.loopexit ] ; 7 uses
  %gep819 = getelementptr [8 x i8], ptr %invariant.gep818, i64 %indvars.iv663
  %i.ho = load double, ptr %gep819, align 8, !tbaa !9 ; 3 uses
  %i.hp = fcmp oge double %i.ho, 0.000000e+00
  %i.hq = fneg double %i.ho
  %i.hr = select i1 %i.hp, double %i.ho, double %i.hq
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv663 ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !9
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double %i.fn, double %i.ht)
  store double %i.hu, ptr %i.hs, align 8, !tbaa !9
  %i.hv = getelementptr [8 x i8], ptr %invariant.gep818, i64 %indvars.iv663
  %gep819.1 = getelementptr i8, ptr %i.hv, i64 8
  %i.hw = load double, ptr %gep819.1, align 8, !tbaa !9 ; 3 uses
  %i.hx = fcmp oge double %i.hw, 0.000000e+00
  %i.hy = fneg double %i.hw
  %i.hz = select i1 %i.hx, double %i.hw, double %i.hy
  %i.ia = getelementptr [8 x i8], ptr %13, i64 %indvars.iv663 ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !9
  %i.ic = call double @llvm.fmuladd.f64(double %i.hz, double %i.fn, double %i.ib)
  store double %i.ic, ptr %i.ia, align 8, !tbaa !9
  %indvars.iv.next664.1 = add nuw nsw i64 %indvars.iv663, 2 ; 2 uses
  %gep819.2 = getelementptr [8 x i8], ptr %invariant.gep818, i64 %indvars.iv.next664.1
  %i.id = load double, ptr %gep819.2, align 8, !tbaa !9 ; 3 uses
  %i.ie = fcmp oge double %i.id, 0.000000e+00
  %i.if = fneg double %i.id
  %i.ig = select i1 %i.ie, double %i.id, double %i.if
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next664.1 ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !9
  %i.ij = call double @llvm.fmuladd.f64(double %i.ig, double %i.fn, double %i.ii)
  store double %i.ij, ptr %i.ih, align 8, !tbaa !9
  %indvars.iv.next664.2 = add nuw nsw i64 %indvars.iv663, 3 ; 2 uses
  %gep819.3 = getelementptr [8 x i8], ptr %invariant.gep818, i64 %indvars.iv.next664.2
  %i.ik = load double, ptr %gep819.3, align 8, !tbaa !9 ; 3 uses
  %i.il = fcmp oge double %i.ik, 0.000000e+00
  %i.im = fneg double %i.ik
  %i.in = select i1 %i.il, double %i.ik, double %i.im
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next664.2 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !9
  %i.iq = call double @llvm.fmuladd.f64(double %i.in, double %i.fn, double %i.ip)
  store double %i.iq, ptr %i.io, align 8, !tbaa !9
  %indvars.iv.next664.3 = add nuw nsw i64 %indvars.iv663, 4 ; 2 uses
  %exitcond669.not.3 = icmp eq i64 %indvars.iv.next664.3, %indvars.iv670
  br i1 %exitcond669.not.3, label %.loopexit1177, label %vec.epilog.scalar.ph1128, !llvm.loop !29

.loopexit1177:                                    ; preds = %vec.epilog.scalar.ph1128.prol.loopexit, %vec.epilog.scalar.ph1128, %vec.epilog.middle.block1140, %middle.block1123
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1
  %exitcond678.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count677
  %indvar.next1097 = add i64 %indvar1096, 1
  br i1 %exitcond678.not, label %.loopexit545, label %iter.check1127, !llvm.loop !30

.lr.ph574:                                        ; preds = %.lr.ph574.preheader, %._crit_edge571
  %indvar1048 = phi i64 [ 0, %.lr.ph574.preheader ], [ %indvar.next1049, %._crit_edge571 ] ; 12 uses
  %indvars.iv684 = phi i64 [ 1, %.lr.ph574.preheader ], [ %indvars.iv.next685, %._crit_edge571 ] ; 7 uses
  %i.ir = shl nuw nsw i64 %indvar1048, 3
  %scevgep1050 = getelementptr i8, ptr %13, i64 %i.ir
  %i.is = mul i64 %i.bj, %indvar1048
  %scevgep1051 = getelementptr i8, ptr %22, i64 %i.is
  %i.it = mul i64 %i.bk, %indvar1048
  %scevgep1052 = getelementptr i8, ptr %23, i64 %i.it
  %gep825 = getelementptr [8 x i8], ptr %invariant.gep824, i64 %indvars.iv684
  %i.iu = load double, ptr %gep825, align 8, !tbaa !9 ; 3 uses
  %i.iv = fcmp oge double %i.iu, 0.000000e+00
  %i.iw = fneg double %i.iu
  %i.ix = select i1 %i.iv, double %i.iu, double %i.iw ; 8 uses
  %.not528.not567 = icmp samesign ugt i64 %indvars.iv684, 1
  br i1 %.not528.not567, label %iter.check1079, label %._crit_edge571

iter.check1079:                                   ; preds = %.lr.ph574
  %i.iy = mul nsw i64 %indvars.iv684, %i.ax
  %invariant.gep822 = getelementptr [8 x i8], ptr %i.i, i64 %i.iy ; 7 uses
  %min.iters.check1057 = icmp ult i64 %indvar1048, 4
  br i1 %min.iters.check1057, label %vec.epilog.scalar.ph1080.preheader, label %vector.memcheck1047

vector.memcheck1047:                              ; preds = %iter.check1079
  %bound01053 = icmp ult ptr %13, %scevgep1052
  %bound11054 = icmp ult ptr %scevgep1051, %scevgep1050
  %found.conflict1055 = and i1 %bound01053, %bound11054
  br i1 %found.conflict1055, label %vec.epilog.scalar.ph1080.preheader, label %vector.main.loop.iter.check1058

vector.main.loop.iter.check1058:                  ; preds = %vector.memcheck1047
  %min.iters.check1059 = icmp ult i64 %indvar1048, 16
  br i1 %min.iters.check1059, label %vec.epilog.ph1083, label %vector.ph1060

vector.ph1060:                                    ; preds = %vector.main.loop.iter.check1058
  %i.iz = and i64 %indvar1048, 12
  %n.vec1061 = and i64 %indvar1048, -16           ; 4 uses
  %i.ja = or disjoint i64 %n.vec1061, 1
  %broadcast.splatinsert1062 = insertelement <4 x double> poison, double %i.ix, i64 0
  %broadcast.splat1063 = shufflevector <4 x double> %broadcast.splatinsert1062, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %vector.ph1060
  %index1065 = phi i64 [ 0, %vector.ph1060 ], [ %index.next1074, %vector.body1064 ] ; 3 uses
  %i.jb = getelementptr [8 x i8], ptr %invariant.gep822, i64 %index1065 ; 4 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 8
  %i.jd = getelementptr i8, ptr %i.jb, i64 40
  %i.je = getelementptr i8, ptr %i.jb, i64 72
  %i.jf = getelementptr i8, ptr %i.jb, i64 104
  %wide.load1066 = load <4 x double>, ptr %i.jc, align 8, !tbaa !9, !alias.scope !31 ; 3 uses
  %wide.load1067 = load <4 x double>, ptr %i.jd, align 8, !tbaa !9, !alias.scope !31 ; 3 uses
  %wide.load1068 = load <4 x double>, ptr %i.je, align 8, !tbaa !9, !alias.scope !31 ; 3 uses
  %wide.load1069 = load <4 x double>, ptr %i.jf, align 8, !tbaa !9, !alias.scope !31 ; 3 uses
  %i.jg = fcmp oge <4 x double> %wide.load1066, zeroinitializer
  %i.jh = fcmp oge <4 x double> %wide.load1067, zeroinitializer
  %i.ji = fcmp oge <4 x double> %wide.load1068, zeroinitializer
  %i.jj = fcmp oge <4 x double> %wide.load1069, zeroinitializer
  %i.jk = fneg <4 x double> %wide.load1066
  %i.jl = fneg <4 x double> %wide.load1067
  %i.jm = fneg <4 x double> %wide.load1068
  %i.jn = fneg <4 x double> %wide.load1069
  %i.jo = select <4 x i1> %i.jg, <4 x double> %wide.load1066, <4 x double> %i.jk
  %i.jp = select <4 x i1> %i.jh, <4 x double> %wide.load1067, <4 x double> %i.jl
  %i.jq = select <4 x i1> %i.ji, <4 x double> %wide.load1068, <4 x double> %i.jm
  %i.jr = select <4 x i1> %i.jj, <4 x double> %wide.load1069, <4 x double> %i.jn
  %i.js = getelementptr [8 x i8], ptr %13, i64 %index1065 ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 64 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 96 ; 2 uses
  %wide.load1070 = load <4 x double>, ptr %i.js, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  %wide.load1071 = load <4 x double>, ptr %i.jt, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  %wide.load1072 = load <4 x double>, ptr %i.ju, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  %wide.load1073 = load <4 x double>, ptr %i.jv, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  %i.jw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jo, <4 x double> %broadcast.splat1063, <4 x double> %wide.load1070)
  %i.jx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jp, <4 x double> %broadcast.splat1063, <4 x double> %wide.load1071)
  %i.jy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jq, <4 x double> %broadcast.splat1063, <4 x double> %wide.load1072)
  %i.jz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jr, <4 x double> %broadcast.splat1063, <4 x double> %wide.load1073)
  store <4 x double> %i.jw, ptr %i.js, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  store <4 x double> %i.jx, ptr %i.jt, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  store <4 x double> %i.jy, ptr %i.ju, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  store <4 x double> %i.jz, ptr %i.jv, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  %index.next1074 = add nuw i64 %index1065, 16    ; 2 uses
  %i.ka = icmp eq i64 %index.next1074, %n.vec1061
  br i1 %i.ka, label %middle.block1075, label %vector.body1064, !llvm.loop !36

middle.block1075:                                 ; preds = %vector.body1064
  %cmp.n1076 = icmp eq i64 %indvar1048, %n.vec1061
  br i1 %cmp.n1076, label %._crit_edge571, label %vec.epilog.iter.check1081

vec.epilog.iter.check1081:                        ; preds = %middle.block1075
  %min.epilog.iters.check1082 = icmp eq i64 %i.iz, 0
  br i1 %min.epilog.iters.check1082, label %vec.epilog.scalar.ph1080.preheader, label %vec.epilog.ph1083, !prof !16

vec.epilog.ph1083:                                ; preds = %vector.main.loop.iter.check1058, %vec.epilog.iter.check1081
  %vec.epilog.resume.val1077 = phi i64 [ %n.vec1061, %vec.epilog.iter.check1081 ], [ 0, %vector.main.loop.iter.check1058 ]
  %n.vec1084 = and i64 %indvar1048, -4            ; 3 uses
  %i.kb = or disjoint i64 %n.vec1084, 1
  %broadcast.splatinsert1085 = insertelement <4 x double> poison, double %i.ix, i64 0
  %broadcast.splat1086 = shufflevector <4 x double> %broadcast.splatinsert1085, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1087

vec.epilog.vector.body1087:                       ; preds = %vec.epilog.vector.body1087, %vec.epilog.ph1083
  %index1088 = phi i64 [ %vec.epilog.resume.val1077, %vec.epilog.ph1083 ], [ %index.next1091, %vec.epilog.vector.body1087 ] ; 3 uses
  %i.kc = getelementptr [8 x i8], ptr %invariant.gep822, i64 %index1088
  %i.kd = getelementptr i8, ptr %i.kc, i64 8
  %wide.load1089 = load <4 x double>, ptr %i.kd, align 8, !tbaa !9, !alias.scope !31 ; 3 uses
  %i.ke = fcmp oge <4 x double> %wide.load1089, zeroinitializer
  %i.kf = fneg <4 x double> %wide.load1089
  %i.kg = select <4 x i1> %i.ke, <4 x double> %wide.load1089, <4 x double> %i.kf
  %i.kh = getelementptr [8 x i8], ptr %13, i64 %index1088 ; 2 uses
  %wide.load1090 = load <4 x double>, ptr %i.kh, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  %i.ki = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kg, <4 x double> %broadcast.splat1086, <4 x double> %wide.load1090)
  store <4 x double> %i.ki, ptr %i.kh, align 8, !tbaa !9, !alias.scope !34, !noalias !31
  %index.next1091 = add nuw i64 %index1088, 4     ; 2 uses
  %i.kj = icmp eq i64 %index.next1091, %n.vec1084
  br i1 %i.kj, label %vec.epilog.middle.block1092, label %vec.epilog.vector.body1087, !llvm.loop !37

vec.epilog.middle.block1092:                      ; preds = %vec.epilog.vector.body1087
  %cmp.n1093 = icmp eq i64 %indvar1048, %n.vec1084
  br i1 %cmp.n1093, label %._crit_edge571, label %vec.epilog.scalar.ph1080.preheader

vec.epilog.scalar.ph1080.preheader:               ; preds = %vector.memcheck1047, %iter.check1079, %vec.epilog.iter.check1081, %vec.epilog.middle.block1092
  %indvars.iv679.ph = phi i64 [ 1, %iter.check1079 ], [ 1, %vector.memcheck1047 ], [ %i.ja, %vec.epilog.iter.check1081 ], [ %i.kb, %vec.epilog.middle.block1092 ] ; 4 uses
  %i.kk = sub i64 %indvars.iv684, %indvars.iv679.ph
  %i.kl = sub i64 %indvar1048, %indvars.iv679.ph
  %xtraiter1194 = and i64 %i.kk, 3                ; 2 uses
  %lcmp.mod1195.not = icmp eq i64 %xtraiter1194, 0
  br i1 %lcmp.mod1195.not, label %vec.epilog.scalar.ph1080.prol.loopexit, label %vec.epilog.scalar.ph1080.prol

vec.epilog.scalar.ph1080.prol:                    ; preds = %vec.epilog.scalar.ph1080.preheader, %vec.epilog.scalar.ph1080.prol
  %indvars.iv679.prol = phi i64 [ %indvars.iv.next680.prol, %vec.epilog.scalar.ph1080.prol ], [ %indvars.iv679.ph, %vec.epilog.scalar.ph1080.preheader ] ; 3 uses
  %prol.iter1196 = phi i64 [ %prol.iter1196.next, %vec.epilog.scalar.ph1080.prol ], [ 0, %vec.epilog.scalar.ph1080.preheader ]
  %gep823.prol = getelementptr [8 x i8], ptr %invariant.gep822, i64 %indvars.iv679.prol
  %i.km = load double, ptr %gep823.prol, align 8, !tbaa !9 ; 3 uses
  %i.kn = fcmp oge double %i.km, 0.000000e+00
  %i.ko = fneg double %i.km
  %i.kp = select i1 %i.kn, double %i.km, double %i.ko
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv679.prol ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !9
  %i.ks = call double @llvm.fmuladd.f64(double %i.kp, double %i.ix, double %i.kr)
  store double %i.ks, ptr %i.kq, align 8, !tbaa !9
  %indvars.iv.next680.prol = add nuw nsw i64 %indvars.iv679.prol, 1 ; 2 uses
  %prol.iter1196.next = add i64 %prol.iter1196, 1 ; 2 uses
  %prol.iter1196.cmp.not = icmp eq i64 %prol.iter1196.next, %xtraiter1194
  br i1 %prol.iter1196.cmp.not, label %vec.epilog.scalar.ph1080.prol.loopexit, label %vec.epilog.scalar.ph1080.prol, !llvm.loop !38

vec.epilog.scalar.ph1080.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1080.prol, %vec.epilog.scalar.ph1080.preheader
  %indvars.iv679.unr = phi i64 [ %indvars.iv679.ph, %vec.epilog.scalar.ph1080.preheader ], [ %indvars.iv.next680.prol, %vec.epilog.scalar.ph1080.prol ]
  %i.kt = icmp ult i64 %i.kl, 3
  br i1 %i.kt, label %._crit_edge571, label %vec.epilog.scalar.ph1080

vec.epilog.scalar.ph1080:                         ; preds = %vec.epilog.scalar.ph1080.prol.loopexit, %vec.epilog.scalar.ph1080
  %indvars.iv679 = phi i64 [ %indvars.iv.next680.3, %vec.epilog.scalar.ph1080 ], [ %indvars.iv679.unr, %vec.epilog.scalar.ph1080.prol.loopexit ] ; 7 uses
  %gep823 = getelementptr [8 x i8], ptr %invariant.gep822, i64 %indvars.iv679
  %i.ku = load double, ptr %gep823, align 8, !tbaa !9 ; 3 uses
  %i.kv = fcmp oge double %i.ku, 0.000000e+00
  %i.kw = fneg double %i.ku
  %i.kx = select i1 %i.kv, double %i.ku, double %i.kw
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv679 ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !9
  %i.la = call double @llvm.fmuladd.f64(double %i.kx, double %i.ix, double %i.kz)
  store double %i.la, ptr %i.ky, align 8, !tbaa !9
  %i.lb = getelementptr [8 x i8], ptr %invariant.gep822, i64 %indvars.iv679
  %gep823.1 = getelementptr i8, ptr %i.lb, i64 8
  %i.lc = load double, ptr %gep823.1, align 8, !tbaa !9 ; 3 uses
  %i.ld = fcmp oge double %i.lc, 0.000000e+00
  %i.le = fneg double %i.lc
  %i.lf = select i1 %i.ld, double %i.lc, double %i.le
  %i.lg = getelementptr [8 x i8], ptr %13, i64 %indvars.iv679 ; 2 uses
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !9
  %i.li = call double @llvm.fmuladd.f64(double %i.lf, double %i.ix, double %i.lh)
  store double %i.li, ptr %i.lg, align 8, !tbaa !9
  %indvars.iv.next680.1 = add nuw nsw i64 %indvars.iv679, 2 ; 2 uses
  %gep823.2 = getelementptr [8 x i8], ptr %invariant.gep822, i64 %indvars.iv.next680.1
  %i.lj = load double, ptr %gep823.2, align 8, !tbaa !9 ; 3 uses
  %i.lk = fcmp oge double %i.lj, 0.000000e+00
  %i.ll = fneg double %i.lj
  %i.lm = select i1 %i.lk, double %i.lj, double %i.ll
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next680.1 ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !9
  %i.lp = call double @llvm.fmuladd.f64(double %i.lm, double %i.ix, double %i.lo)
  store double %i.lp, ptr %i.ln, align 8, !tbaa !9
  %indvars.iv.next680.2 = add nuw nsw i64 %indvars.iv679, 3 ; 2 uses
  %gep823.3 = getelementptr [8 x i8], ptr %invariant.gep822, i64 %indvars.iv.next680.2
  %i.lq = load double, ptr %gep823.3, align 8, !tbaa !9 ; 3 uses
  %i.lr = fcmp oge double %i.lq, 0.000000e+00
  %i.ls = fneg double %i.lq
  %i.lt = select i1 %i.lr, double %i.lq, double %i.ls
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next680.2 ; 2 uses
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !9
  %i.lw = call double @llvm.fmuladd.f64(double %i.lt, double %i.ix, double %i.lv)
  store double %i.lw, ptr %i.lu, align 8, !tbaa !9
  %indvars.iv.next680.3 = add nuw nsw i64 %indvars.iv679, 4 ; 2 uses
  %exitcond683.not.3 = icmp eq i64 %indvars.iv.next680.3, %indvars.iv684
  br i1 %exitcond683.not.3, label %._crit_edge571, label %vec.epilog.scalar.ph1080, !llvm.loop !39

._crit_edge571:                                   ; preds = %vec.epilog.scalar.ph1080.prol.loopexit, %vec.epilog.scalar.ph1080, %middle.block1075, %vec.epilog.middle.block1092, %.lr.ph574
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv684 ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !9
  %i.lz = fadd double %i.ix, %i.ly
  store double %i.lz, ptr %i.lx, align 8, !tbaa !9
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %exitcond688.not = icmp eq i64 %indvars.iv.next685, %wide.trip.count687
  %indvar.next1049 = add i64 %indvar1048, 1
  br i1 %exitcond688.not, label %.loopexit545, label %.lr.ph574, !llvm.loop !40

bb.u:                                             ; preds = %bb.s
  br i1 %.not504, label %.preheader552, label %.preheader554

.preheader554:                                    ; preds = %bb.u
  br i1 %.not510561, label %._crit_edge619.thread, label %.lr.ph578.preheader

.lr.ph578.preheader:                              ; preds = %.preheader554
  %i.ma = add nuw i32 %i.cu, 1
  %wide.trip.count697 = zext i32 %i.ma to i64     ; 4 uses
  %invariant.gep828 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd
  %i.mb = shl nuw nsw i64 %wide.trip.count697, 3  ; 2 uses
  %scevgep1002 = getelementptr i8, ptr %scevgep1001, i64 %i.mb
  %i.mc = zext nneg i32 %i.cu to i64
  %i.md = zext nneg i32 %i.cu to i64
  %i.me = getelementptr i8, ptr %i.bt, i64 %i.mb
  br label %iter.check1031

.preheader552:                                    ; preds = %bb.u
  br i1 %.not510561, label %._crit_edge619.thread, label %.lr.ph586.preheader

.lr.ph586.preheader:                              ; preds = %.preheader552
  %i.mf = add nuw i32 %i.cu, 1                    ; 2 uses
  %i.mg = zext nneg i32 %i.cu to i64
  %wide.trip.count708 = zext i32 %i.mf to i64
  %invariant.gep832 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd
  %i.mh = add nsw i32 %i.cu, -2                   ; 2 uses
  %i.mi = add nuw i32 %i.cu, 1
  br label %.lr.ph586

iter.check1031:                                   ; preds = %.lr.ph578.preheader, %.loopexit1176
  %indvar998 = phi i64 [ 0, %.lr.ph578.preheader ], [ %indvar.next999, %.loopexit1176 ] ; 5 uses
  %indvars.iv689 = phi i64 [ 1, %.lr.ph578.preheader ], [ %indvars.iv.next690, %.loopexit1176 ] ; 9 uses
  %i.mj = sub i64 %i.mc, %indvar998               ; 7 uses
  %gep829 = getelementptr [8 x i8], ptr %invariant.gep828, i64 %indvars.iv689
  %i.mk = load double, ptr %gep829, align 8, !tbaa !9 ; 3 uses
  %i.ml = fcmp oge double %i.mk, 0.000000e+00
  %i.mm = fneg double %i.mk
  %i.mn = select i1 %i.ml, double %i.mk, double %i.mm ; 7 uses
  %i.mo = mul nsw i64 %indvars.iv689, %i.ax
  %invariant.gep826 = getelementptr [8 x i8], ptr %i.i, i64 %i.mo ; 7 uses
  %min.iters.check1009 = icmp ult i64 %i.mj, 4
  br i1 %min.iters.check1009, label %vec.epilog.scalar.ph1032.preheader, label %vector.memcheck997

vector.memcheck997:                               ; preds = %iter.check1031
  %i.mp = mul i64 %i.be, %indvar998
  %scevgep1004 = getelementptr i8, ptr %i.me, i64 %i.mp
  %i.mq = mul i64 %i.bd, %indvar998
  %scevgep1003 = getelementptr i8, ptr %i.bw, i64 %i.mq
  %i.mr = shl nuw nsw i64 %indvar998, 3
  %scevgep1000 = getelementptr i8, ptr %13, i64 %i.mr
  %bound01005 = icmp ult ptr %scevgep1000, %scevgep1004
  %bound11006 = icmp ult ptr %scevgep1003, %scevgep1002
  %found.conflict1007 = and i1 %bound01005, %bound11006
  br i1 %found.conflict1007, label %vec.epilog.scalar.ph1032.preheader, label %vector.main.loop.iter.check1010

vector.main.loop.iter.check1010:                  ; preds = %vector.memcheck997
  %min.iters.check1011 = icmp ult i64 %i.mj, 16
  br i1 %min.iters.check1011, label %vec.epilog.ph1035, label %vector.ph1012

vector.ph1012:                                    ; preds = %vector.main.loop.iter.check1010
  %i.ms = and i64 %i.mj, 12
  %n.vec1013 = and i64 %i.mj, -16                 ; 4 uses
  %i.mt = add i64 %indvars.iv689, %n.vec1013
  %broadcast.splatinsert1014 = insertelement <4 x double> poison, double %i.mn, i64 0
  %broadcast.splat1015 = shufflevector <4 x double> %broadcast.splatinsert1014, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1012
  %index1017 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1026, %vector.body1016 ] ; 2 uses
  %i.mu = add nuw i64 %indvars.iv689, %index1017  ; 2 uses
  %i.mv = getelementptr [8 x i8], ptr %invariant.gep826, i64 %i.mu ; 4 uses
  %i.mw = getelementptr i8, ptr %i.mv, i64 32
  %i.mx = getelementptr i8, ptr %i.mv, i64 64
  %i.my = getelementptr i8, ptr %i.mv, i64 96
  %wide.load1018 = load <4 x double>, ptr %i.mv, align 8, !tbaa !9, !alias.scope !41 ; 3 uses
  %wide.load1019 = load <4 x double>, ptr %i.mw, align 8, !tbaa !9, !alias.scope !41 ; 3 uses
  %wide.load1020 = load <4 x double>, ptr %i.mx, align 8, !tbaa !9, !alias.scope !41 ; 3 uses
  %wide.load1021 = load <4 x double>, ptr %i.my, align 8, !tbaa !9, !alias.scope !41 ; 3 uses
  %i.mz = fcmp oge <4 x double> %wide.load1018, zeroinitializer
  %i.na = fcmp oge <4 x double> %wide.load1019, zeroinitializer
  %i.nb = fcmp oge <4 x double> %wide.load1020, zeroinitializer
  %i.nc = fcmp oge <4 x double> %wide.load1021, zeroinitializer
  %i.nd = fneg <4 x double> %wide.load1018
  %i.ne = fneg <4 x double> %wide.load1019
  %i.nf = fneg <4 x double> %wide.load1020
  %i.ng = fneg <4 x double> %wide.load1021
  %i.nh = select <4 x i1> %i.mz, <4 x double> %wide.load1018, <4 x double> %i.nd
  %i.ni = select <4 x i1> %i.na, <4 x double> %wide.load1019, <4 x double> %i.ne
  %i.nj = select <4 x i1> %i.nb, <4 x double> %wide.load1020, <4 x double> %i.nf
  %i.nk = select <4 x i1> %i.nc, <4 x double> %wide.load1021, <4 x double> %i.ng
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.mu ; 5 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 32 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 64 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 96 ; 2 uses
  %wide.load1022 = load <4 x double>, ptr %i.nl, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  %wide.load1023 = load <4 x double>, ptr %i.nm, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  %wide.load1024 = load <4 x double>, ptr %i.nn, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  %wide.load1025 = load <4 x double>, ptr %i.no, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  %i.np = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nh, <4 x double> %broadcast.splat1015, <4 x double> %wide.load1022)
  %i.nq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ni, <4 x double> %broadcast.splat1015, <4 x double> %wide.load1023)
  %i.nr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nj, <4 x double> %broadcast.splat1015, <4 x double> %wide.load1024)
  %i.ns = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nk, <4 x double> %broadcast.splat1015, <4 x double> %wide.load1025)
  store <4 x double> %i.np, ptr %i.nl, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  store <4 x double> %i.nq, ptr %i.nm, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  store <4 x double> %i.nr, ptr %i.nn, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  store <4 x double> %i.ns, ptr %i.no, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  %index.next1026 = add nuw i64 %index1017, 16    ; 2 uses
  %i.nt = icmp eq i64 %index.next1026, %n.vec1013
  br i1 %i.nt, label %middle.block1027, label %vector.body1016, !llvm.loop !46

middle.block1027:                                 ; preds = %vector.body1016
  %cmp.n1028 = icmp eq i64 %i.mj, %n.vec1013
  br i1 %cmp.n1028, label %.loopexit1176, label %vec.epilog.iter.check1033

vec.epilog.iter.check1033:                        ; preds = %middle.block1027
  %min.epilog.iters.check1034 = icmp eq i64 %i.ms, 0
  br i1 %min.epilog.iters.check1034, label %vec.epilog.scalar.ph1032.preheader, label %vec.epilog.ph1035, !prof !16

vec.epilog.ph1035:                                ; preds = %vector.main.loop.iter.check1010, %vec.epilog.iter.check1033
  %vec.epilog.resume.val1029 = phi i64 [ %n.vec1013, %vec.epilog.iter.check1033 ], [ 0, %vector.main.loop.iter.check1010 ]
  %n.vec1036 = and i64 %i.mj, -4                  ; 3 uses
  %i.nu = add i64 %indvars.iv689, %n.vec1036
  %broadcast.splatinsert1037 = insertelement <4 x double> poison, double %i.mn, i64 0
  %broadcast.splat1038 = shufflevector <4 x double> %broadcast.splatinsert1037, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1039

vec.epilog.vector.body1039:                       ; preds = %vec.epilog.vector.body1039, %vec.epilog.ph1035
  %index1040 = phi i64 [ %vec.epilog.resume.val1029, %vec.epilog.ph1035 ], [ %index.next1043, %vec.epilog.vector.body1039 ] ; 2 uses
  %i.nv = add nuw i64 %indvars.iv689, %index1040  ; 2 uses
  %i.nw = getelementptr [8 x i8], ptr %invariant.gep826, i64 %i.nv
  %wide.load1041 = load <4 x double>, ptr %i.nw, align 8, !tbaa !9, !alias.scope !41 ; 3 uses
  %i.nx = fcmp oge <4 x double> %wide.load1041, zeroinitializer
  %i.ny = fneg <4 x double> %wide.load1041
  %i.nz = select <4 x i1> %i.nx, <4 x double> %wide.load1041, <4 x double> %i.ny
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.nv ; 2 uses
  %wide.load1042 = load <4 x double>, ptr %i.oa, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  %i.ob = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nz, <4 x double> %broadcast.splat1038, <4 x double> %wide.load1042)
  store <4 x double> %i.ob, ptr %i.oa, align 8, !tbaa !9, !alias.scope !44, !noalias !41
  %index.next1043 = add nuw i64 %index1040, 4     ; 2 uses
  %i.oc = icmp eq i64 %index.next1043, %n.vec1036
  br i1 %i.oc, label %vec.epilog.middle.block1044, label %vec.epilog.vector.body1039, !llvm.loop !47

vec.epilog.middle.block1044:                      ; preds = %vec.epilog.vector.body1039
  %cmp.n1045 = icmp eq i64 %i.mj, %n.vec1036
  br i1 %cmp.n1045, label %.loopexit1176, label %vec.epilog.scalar.ph1032.preheader

vec.epilog.scalar.ph1032.preheader:               ; preds = %vector.memcheck997, %iter.check1031, %vec.epilog.iter.check1033, %vec.epilog.middle.block1044
  %indvars.iv691.ph = phi i64 [ %indvars.iv689, %iter.check1031 ], [ %indvars.iv689, %vector.memcheck997 ], [ %i.mt, %vec.epilog.iter.check1033 ], [ %i.nu, %vec.epilog.middle.block1044 ] ; 4 uses
  %i.od = sub i64 %wide.trip.count697, %indvars.iv691.ph
  %i.oe = sub i64 %i.md, %indvars.iv691.ph
  %xtraiter1197 = and i64 %i.od, 3                ; 2 uses
  %lcmp.mod1198.not = icmp eq i64 %xtraiter1197, 0
  br i1 %lcmp.mod1198.not, label %vec.epilog.scalar.ph1032.prol.loopexit, label %vec.epilog.scalar.ph1032.prol

vec.epilog.scalar.ph1032.prol:                    ; preds = %vec.epilog.scalar.ph1032.preheader, %vec.epilog.scalar.ph1032.prol
  %indvars.iv691.prol = phi i64 [ %indvars.iv.next692.prol, %vec.epilog.scalar.ph1032.prol ], [ %indvars.iv691.ph, %vec.epilog.scalar.ph1032.preheader ] ; 3 uses
  %prol.iter1199 = phi i64 [ %prol.iter1199.next, %vec.epilog.scalar.ph1032.prol ], [ 0, %vec.epilog.scalar.ph1032.preheader ]
  %gep827.prol = getelementptr [8 x i8], ptr %invariant.gep826, i64 %indvars.iv691.prol
  %i.of = load double, ptr %gep827.prol, align 8, !tbaa !9 ; 3 uses
  %i.og = fcmp oge double %i.of, 0.000000e+00
  %i.oh = fneg double %i.of
  %i.oi = select i1 %i.og, double %i.of, double %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv691.prol ; 2 uses
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !9
  %i.ol = call double @llvm.fmuladd.f64(double %i.oi, double %i.mn, double %i.ok)
  store double %i.ol, ptr %i.oj, align 8, !tbaa !9
  %indvars.iv.next692.prol = add nuw nsw i64 %indvars.iv691.prol, 1 ; 2 uses
  %prol.iter1199.next = add i64 %prol.iter1199, 1 ; 2 uses
  %prol.iter1199.cmp.not = icmp eq i64 %prol.iter1199.next, %xtraiter1197
  br i1 %prol.iter1199.cmp.not, label %vec.epilog.scalar.ph1032.prol.loopexit, label %vec.epilog.scalar.ph1032.prol, !llvm.loop !48

vec.epilog.scalar.ph1032.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1032.prol, %vec.epilog.scalar.ph1032.preheader
  %indvars.iv691.unr = phi i64 [ %indvars.iv691.ph, %vec.epilog.scalar.ph1032.preheader ], [ %indvars.iv.next692.prol, %vec.epilog.scalar.ph1032.prol ]
  %i.om = icmp ult i64 %i.oe, 3
  br i1 %i.om, label %.loopexit1176, label %vec.epilog.scalar.ph1032

vec.epilog.scalar.ph1032:                         ; preds = %vec.epilog.scalar.ph1032.prol.loopexit, %vec.epilog.scalar.ph1032
  %indvars.iv691 = phi i64 [ %indvars.iv.next692.3, %vec.epilog.scalar.ph1032 ], [ %indvars.iv691.unr, %vec.epilog.scalar.ph1032.prol.loopexit ] ; 7 uses
  %gep827 = getelementptr [8 x i8], ptr %invariant.gep826, i64 %indvars.iv691
  %i.on = load double, ptr %gep827, align 8, !tbaa !9 ; 3 uses
  %i.oo = fcmp oge double %i.on, 0.000000e+00
  %i.op = fneg double %i.on
  %i.oq = select i1 %i.oo, double %i.on, double %i.op
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv691 ; 2 uses
  %i.os = load double, ptr %i.or, align 8, !tbaa !9
  %i.ot = call double @llvm.fmuladd.f64(double %i.oq, double %i.mn, double %i.os)
  store double %i.ot, ptr %i.or, align 8, !tbaa !9
  %i.ou = getelementptr [8 x i8], ptr %invariant.gep826, i64 %indvars.iv691
  %gep827.1 = getelementptr i8, ptr %i.ou, i64 8
  %i.ov = load double, ptr %gep827.1, align 8, !tbaa !9 ; 3 uses
  %i.ow = fcmp oge double %i.ov, 0.000000e+00
  %i.ox = fneg double %i.ov
  %i.oy = select i1 %i.ow, double %i.ov, double %i.ox
  %i.oz = getelementptr [8 x i8], ptr %13, i64 %indvars.iv691 ; 2 uses
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !9
  %i.pb = call double @llvm.fmuladd.f64(double %i.oy, double %i.mn, double %i.pa)
  store double %i.pb, ptr %i.oz, align 8, !tbaa !9
  %indvars.iv.next692.1 = add nuw nsw i64 %indvars.iv691, 2 ; 2 uses
  %gep827.2 = getelementptr [8 x i8], ptr %invariant.gep826, i64 %indvars.iv.next692.1
  %i.pc = load double, ptr %gep827.2, align 8, !tbaa !9 ; 3 uses
  %i.pd = fcmp oge double %i.pc, 0.000000e+00
  %i.pe = fneg double %i.pc
  %i.pf = select i1 %i.pd, double %i.pc, double %i.pe
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next692.1 ; 2 uses
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !9
  %i.pi = call double @llvm.fmuladd.f64(double %i.pf, double %i.mn, double %i.ph)
  store double %i.pi, ptr %i.pg, align 8, !tbaa !9
  %indvars.iv.next692.2 = add nuw nsw i64 %indvars.iv691, 3 ; 2 uses
  %gep827.3 = getelementptr [8 x i8], ptr %invariant.gep826, i64 %indvars.iv.next692.2
  %i.pj = load double, ptr %gep827.3, align 8, !tbaa !9 ; 3 uses
  %i.pk = fcmp oge double %i.pj, 0.000000e+00
  %i.pl = fneg double %i.pj
  %i.pm = select i1 %i.pk, double %i.pj, double %i.pl
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next692.2 ; 2 uses
  %i.po = load double, ptr %i.pn, align 8, !tbaa !9
  %i.pp = call double @llvm.fmuladd.f64(double %i.pm, double %i.mn, double %i.po)
  store double %i.pp, ptr %i.pn, align 8, !tbaa !9
  %indvars.iv.next692.3 = add nuw nsw i64 %indvars.iv691, 4 ; 2 uses
  %exitcond695.not.3 = icmp eq i64 %indvars.iv.next692.3, %wide.trip.count697
  br i1 %exitcond695.not.3, label %.loopexit1176, label %vec.epilog.scalar.ph1032, !llvm.loop !49

.loopexit1176:                                    ; preds = %vec.epilog.scalar.ph1032.prol.loopexit, %vec.epilog.scalar.ph1032, %vec.epilog.middle.block1044, %middle.block1027
  %indvars.iv.next690 = add nuw nsw i64 %indvars.iv689, 1 ; 2 uses
  %exitcond698.not = icmp eq i64 %indvars.iv.next690, %wide.trip.count697
  %indvar.next999 = add i64 %indvar998, 1
  br i1 %exitcond698.not, label %.loopexit545, label %iter.check1031, !llvm.loop !50

.lr.ph586:                                        ; preds = %.lr.ph586.preheader, %._crit_edge583
  %indvar952 = phi i64 [ 0, %.lr.ph586.preheader ], [ %indvar.next953, %._crit_edge583 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph586.preheader ], [ %indvar.next, %._crit_edge583 ] ; 2 uses
  %indvars.iv705 = phi i64 [ 1, %.lr.ph586.preheader ], [ %indvars.iv.next706, %._crit_edge583 ] ; 5 uses
  %indvars.iv699 = phi i32 [ 2, %.lr.ph586.preheader ], [ %indvars.iv.next700, %._crit_edge583 ] ; 3 uses
  %i.pq = trunc i64 %indvar952 to i32
  %i.pr = sub i32 %i.mh, %i.pq                    ; 3 uses
  %i.ps = zext i32 %i.pr to i64
  %i.pt = add nuw nsw i64 %i.ps, 1                ; 5 uses
  %i.pu = sext i32 %indvars.iv699 to i64          ; 2 uses
  %i.pv = shl nsw i64 %i.pu, 3                    ; 2 uses
  %scevgep950 = getelementptr i8, ptr %scevgep, i64 %i.pv
  %i.pw = sub i32 %i.mh, %indvar
  %i.px = zext i32 %i.pw to i64
  %i.py = add nsw i64 %i.pu, %i.px
  %i.pz = shl nsw i64 %i.py, 3                    ; 2 uses
  %scevgep951 = getelementptr i8, ptr %13, i64 %i.pz
  %i.qa = mul i64 %16, %indvar952                 ; 2 uses
  %scevgep954 = getelementptr i8, ptr %i.by, i64 %i.qa
  %scevgep955 = getelementptr i8, ptr %scevgep954, i64 %i.pv
  %scevgep956 = getelementptr i8, ptr %i.cb, i64 %i.qa
  %scevgep957 = getelementptr i8, ptr %scevgep956, i64 %i.pz
  %gep833 = getelementptr [8 x i8], ptr %invariant.gep832, i64 %indvars.iv705
  %i.qb = load double, ptr %gep833, align 8, !tbaa !9 ; 3 uses
  %i.qc = fcmp oge double %i.qb, 0.000000e+00
  %i.qd = fneg double %i.qb
  %i.qe = select i1 %i.qc, double %i.qb, double %i.qd ; 8 uses
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %.not523579.not = icmp samesign ult i64 %indvars.iv705, %i.mg
  br i1 %.not523579.not, label %iter.check981, label %._crit_edge583

iter.check981:                                    ; preds = %.lr.ph586
  %i.qf = sext i32 %indvars.iv699 to i64          ; 6 uses
  %i.qg = mul nsw i64 %indvars.iv705, %i.ax
  %invariant.gep830 = getelementptr [8 x i8], ptr %i.i, i64 %i.qg ; 7 uses
  %min.iters.check959 = icmp ult i32 %i.pr, 3
  br i1 %min.iters.check959, label %vec.epilog.scalar.ph982.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check981
  %bound0 = icmp ult ptr %scevgep950, %scevgep957
  %bound1 = icmp ult ptr %scevgep955, %scevgep951
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph982.preheader, label %vector.main.loop.iter.check960

vector.main.loop.iter.check960:                   ; preds = %vector.memcheck
  %min.iters.check961 = icmp ult i32 %i.pr, 15
  br i1 %min.iters.check961, label %vec.epilog.ph985, label %vector.ph962

vector.ph962:                                     ; preds = %vector.main.loop.iter.check960
  %i.qh = and i64 %i.pt, 12
  %n.vec963 = and i64 %i.pt, 8589934576           ; 4 uses
  %i.qi = add nsw i64 %n.vec963, %i.qf
  %broadcast.splatinsert964 = insertelement <4 x double> poison, double %i.qe, i64 0
  %broadcast.splat965 = shufflevector <4 x double> %broadcast.splatinsert964, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph962
  %index967 = phi i64 [ 0, %vector.ph962 ], [ %index.next976, %vector.body966 ] ; 2 uses
  %i.qj = add i64 %index967, %i.qf                ; 2 uses
  %i.qk = getelementptr [8 x i8], ptr %invariant.gep830, i64 %i.qj ; 4 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 32
  %i.qm = getelementptr i8, ptr %i.qk, i64 64
  %i.qn = getelementptr i8, ptr %i.qk, i64 96
  %wide.load968 = load <4 x double>, ptr %i.qk, align 8, !tbaa !9, !alias.scope !51 ; 3 uses
  %wide.load969 = load <4 x double>, ptr %i.ql, align 8, !tbaa !9, !alias.scope !51 ; 3 uses
  %wide.load970 = load <4 x double>, ptr %i.qm, align 8, !tbaa !9, !alias.scope !51 ; 3 uses
  %wide.load971 = load <4 x double>, ptr %i.qn, align 8, !tbaa !9, !alias.scope !51 ; 3 uses
  %i.qo = fcmp oge <4 x double> %wide.load968, zeroinitializer
  %i.qp = fcmp oge <4 x double> %wide.load969, zeroinitializer
  %i.qq = fcmp oge <4 x double> %wide.load970, zeroinitializer
  %i.qr = fcmp oge <4 x double> %wide.load971, zeroinitializer
  %i.qs = fneg <4 x double> %wide.load968
  %i.qt = fneg <4 x double> %wide.load969
  %i.qu = fneg <4 x double> %wide.load970
  %i.qv = fneg <4 x double> %wide.load971
  %i.qw = select <4 x i1> %i.qo, <4 x double> %wide.load968, <4 x double> %i.qs
  %i.qx = select <4 x i1> %i.qp, <4 x double> %wide.load969, <4 x double> %i.qt
  %i.qy = select <4 x i1> %i.qq, <4 x double> %wide.load970, <4 x double> %i.qu
  %i.qz = select <4 x i1> %i.qr, <4 x double> %wide.load971, <4 x double> %i.qv
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.qj ; 5 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 32 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 64 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 96 ; 2 uses
  %wide.load972 = load <4 x double>, ptr %i.ra, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  %wide.load973 = load <4 x double>, ptr %i.rb, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  %wide.load974 = load <4 x double>, ptr %i.rc, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  %wide.load975 = load <4 x double>, ptr %i.rd, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  %i.re = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qw, <4 x double> %broadcast.splat965, <4 x double> %wide.load972)
  %i.rf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qx, <4 x double> %broadcast.splat965, <4 x double> %wide.load973)
  %i.rg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qy, <4 x double> %broadcast.splat965, <4 x double> %wide.load974)
  %i.rh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qz, <4 x double> %broadcast.splat965, <4 x double> %wide.load975)
  store <4 x double> %i.re, ptr %i.ra, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  store <4 x double> %i.rf, ptr %i.rb, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  store <4 x double> %i.rg, ptr %i.rc, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  store <4 x double> %i.rh, ptr %i.rd, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  %index.next976 = add nuw i64 %index967, 16      ; 2 uses
  %i.ri = icmp eq i64 %index.next976, %n.vec963
  br i1 %i.ri, label %middle.block977, label %vector.body966, !llvm.loop !56

middle.block977:                                  ; preds = %vector.body966
  %cmp.n978 = icmp eq i64 %i.pt, %n.vec963
  br i1 %cmp.n978, label %._crit_edge583, label %vec.epilog.iter.check983

vec.epilog.iter.check983:                         ; preds = %middle.block977
  %min.epilog.iters.check984 = icmp eq i64 %i.qh, 0
  br i1 %min.epilog.iters.check984, label %vec.epilog.scalar.ph982.preheader, label %vec.epilog.ph985, !prof !16

vec.epilog.ph985:                                 ; preds = %vector.main.loop.iter.check960, %vec.epilog.iter.check983
  %vec.epilog.resume.val979 = phi i64 [ %n.vec963, %vec.epilog.iter.check983 ], [ 0, %vector.main.loop.iter.check960 ]
  %n.vec986 = and i64 %i.pt, 8589934588           ; 3 uses
  %i.rj = add nsw i64 %n.vec986, %i.qf
  %broadcast.splatinsert987 = insertelement <4 x double> poison, double %i.qe, i64 0
  %broadcast.splat988 = shufflevector <4 x double> %broadcast.splatinsert987, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body989

vec.epilog.vector.body989:                        ; preds = %vec.epilog.vector.body989, %vec.epilog.ph985
  %index990 = phi i64 [ %vec.epilog.resume.val979, %vec.epilog.ph985 ], [ %index.next993, %vec.epilog.vector.body989 ] ; 2 uses
  %i.rk = add i64 %index990, %i.qf                ; 2 uses
  %i.rl = getelementptr [8 x i8], ptr %invariant.gep830, i64 %i.rk
  %wide.load991 = load <4 x double>, ptr %i.rl, align 8, !tbaa !9, !alias.scope !51 ; 3 uses
  %i.rm = fcmp oge <4 x double> %wide.load991, zeroinitializer
  %i.rn = fneg <4 x double> %wide.load991
  %i.ro = select <4 x i1> %i.rm, <4 x double> %wide.load991, <4 x double> %i.rn
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.rk ; 2 uses
  %wide.load992 = load <4 x double>, ptr %i.rp, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  %i.rq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ro, <4 x double> %broadcast.splat988, <4 x double> %wide.load992)
  store <4 x double> %i.rq, ptr %i.rp, align 8, !tbaa !9, !alias.scope !54, !noalias !51
  %index.next993 = add nuw i64 %index990, 4       ; 2 uses
  %i.rr = icmp eq i64 %index.next993, %n.vec986
  br i1 %i.rr, label %vec.epilog.middle.block994, label %vec.epilog.vector.body989, !llvm.loop !57

vec.epilog.middle.block994:                       ; preds = %vec.epilog.vector.body989
  %cmp.n995 = icmp eq i64 %i.pt, %n.vec986
  br i1 %cmp.n995, label %._crit_edge583, label %vec.epilog.scalar.ph982.preheader

vec.epilog.scalar.ph982.preheader:                ; preds = %vector.memcheck, %iter.check981, %vec.epilog.iter.check983, %vec.epilog.middle.block994
  %indvars.iv701.ph = phi i64 [ %i.qf, %iter.check981 ], [ %i.qf, %vector.memcheck ], [ %i.qi, %vec.epilog.iter.check983 ], [ %i.rj, %vec.epilog.middle.block994 ] ; 3 uses
  %i.rs = trunc i64 %indvars.iv701.ph to i32      ; 2 uses
  %i.rt = sub i32 %i.mi, %i.rs
  %i.ru = sub i32 %i.cu, %i.rs
  %xtraiter1200 = and i32 %i.rt, 3                ; 2 uses
  %lcmp.mod1201.not = icmp eq i32 %xtraiter1200, 0
  br i1 %lcmp.mod1201.not, label %vec.epilog.scalar.ph982.prol.loopexit, label %vec.epilog.scalar.ph982.prol

vec.epilog.scalar.ph982.prol:                     ; preds = %vec.epilog.scalar.ph982.preheader, %vec.epilog.scalar.ph982.prol
  %indvars.iv701.prol = phi i64 [ %indvars.iv.next702.prol, %vec.epilog.scalar.ph982.prol ], [ %indvars.iv701.ph, %vec.epilog.scalar.ph982.preheader ] ; 3 uses
  %prol.iter1202 = phi i32 [ %prol.iter1202.next, %vec.epilog.scalar.ph982.prol ], [ 0, %vec.epilog.scalar.ph982.preheader ]
  %gep831.prol = getelementptr [8 x i8], ptr %invariant.gep830, i64 %indvars.iv701.prol
  %i.rv = load double, ptr %gep831.prol, align 8, !tbaa !9 ; 3 uses
  %i.rw = fcmp oge double %i.rv, 0.000000e+00
  %i.rx = fneg double %i.rv
  %i.ry = select i1 %i.rw, double %i.rv, double %i.rx
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv701.prol ; 2 uses
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !9
  %i.sb = call double @llvm.fmuladd.f64(double %i.ry, double %i.qe, double %i.sa)
  store double %i.sb, ptr %i.rz, align 8, !tbaa !9
  %indvars.iv.next702.prol = add nsw i64 %indvars.iv701.prol, 1 ; 2 uses
  %prol.iter1202.next = add i32 %prol.iter1202, 1 ; 2 uses
  %prol.iter1202.cmp.not = icmp eq i32 %prol.iter1202.next, %xtraiter1200
  br i1 %prol.iter1202.cmp.not, label %vec.epilog.scalar.ph982.prol.loopexit, label %vec.epilog.scalar.ph982.prol, !llvm.loop !58

vec.epilog.scalar.ph982.prol.loopexit:            ; preds = %vec.epilog.scalar.ph982.prol, %vec.epilog.scalar.ph982.preheader
  %indvars.iv701.unr = phi i64 [ %indvars.iv701.ph, %vec.epilog.scalar.ph982.preheader ], [ %indvars.iv.next702.prol, %vec.epilog.scalar.ph982.prol ]
  %i.sc = icmp ult i32 %i.ru, 3
  br i1 %i.sc, label %._crit_edge583, label %vec.epilog.scalar.ph982

vec.epilog.scalar.ph982:                          ; preds = %vec.epilog.scalar.ph982.prol.loopexit, %vec.epilog.scalar.ph982
  %indvars.iv701 = phi i64 [ %indvars.iv.next702.3, %vec.epilog.scalar.ph982 ], [ %indvars.iv701.unr, %vec.epilog.scalar.ph982.prol.loopexit ] ; 7 uses
  %gep831 = getelementptr [8 x i8], ptr %invariant.gep830, i64 %indvars.iv701
  %i.sd = load double, ptr %gep831, align 8, !tbaa !9 ; 3 uses
  %i.se = fcmp oge double %i.sd, 0.000000e+00
  %i.sf = fneg double %i.sd
  %i.sg = select i1 %i.se, double %i.sd, double %i.sf
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv701 ; 2 uses
  %i.si = load double, ptr %i.sh, align 8, !tbaa !9
  %i.sj = call double @llvm.fmuladd.f64(double %i.sg, double %i.qe, double %i.si)
  store double %i.sj, ptr %i.sh, align 8, !tbaa !9
  %i.sk = getelementptr [8 x i8], ptr %invariant.gep830, i64 %indvars.iv701
  %gep831.1 = getelementptr i8, ptr %i.sk, i64 8
  %i.sl = load double, ptr %gep831.1, align 8, !tbaa !9 ; 3 uses
  %i.sm = fcmp oge double %i.sl, 0.000000e+00
  %i.sn = fneg double %i.sl
  %i.so = select i1 %i.sm, double %i.sl, double %i.sn
  %i.sp = getelementptr [8 x i8], ptr %13, i64 %indvars.iv701 ; 2 uses
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !9
  %i.sr = call double @llvm.fmuladd.f64(double %i.so, double %i.qe, double %i.sq)
  store double %i.sr, ptr %i.sp, align 8, !tbaa !9
  %indvars.iv.next702.1 = add nsw i64 %indvars.iv701, 2 ; 2 uses
  %gep831.2 = getelementptr [8 x i8], ptr %invariant.gep830, i64 %indvars.iv.next702.1
  %i.ss = load double, ptr %gep831.2, align 8, !tbaa !9 ; 3 uses
  %i.st = fcmp oge double %i.ss, 0.000000e+00
  %i.su = fneg double %i.ss
  %i.sv = select i1 %i.st, double %i.ss, double %i.su
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next702.1 ; 2 uses
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !9
  %i.sy = call double @llvm.fmuladd.f64(double %i.sv, double %i.qe, double %i.sx)
  store double %i.sy, ptr %i.sw, align 8, !tbaa !9
  %indvars.iv.next702.2 = add nsw i64 %indvars.iv701, 3 ; 2 uses
  %gep831.3 = getelementptr [8 x i8], ptr %invariant.gep830, i64 %indvars.iv.next702.2
  %i.sz = load double, ptr %gep831.3, align 8, !tbaa !9 ; 3 uses
  %i.ta = fcmp oge double %i.sz, 0.000000e+00
  %i.tb = fneg double %i.sz
  %i.tc = select i1 %i.ta, double %i.sz, double %i.tb
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next702.2 ; 2 uses
  %i.te = load double, ptr %i.td, align 8, !tbaa !9
  %i.tf = call double @llvm.fmuladd.f64(double %i.tc, double %i.qe, double %i.te)
  store double %i.tf, ptr %i.td, align 8, !tbaa !9
  %indvars.iv.next702.3 = add nsw i64 %indvars.iv701, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next702.3 to i32
  %exitcond704.not.3 = icmp eq i32 %i.mf, %lftr.wideiv.3
  br i1 %exitcond704.not.3, label %._crit_edge583, label %vec.epilog.scalar.ph982, !llvm.loop !59

._crit_edge583:                                   ; preds = %vec.epilog.scalar.ph982.prol.loopexit, %vec.epilog.scalar.ph982, %middle.block977, %vec.epilog.middle.block994, %.lr.ph586
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv705 ; 2 uses
  %i.th = load double, ptr %i.tg, align 8, !tbaa !9
  %i.ti = fadd double %i.qe, %i.th
  store double %i.ti, ptr %i.tg, align 8, !tbaa !9
  %indvars.iv.next700 = add nuw i32 %indvars.iv699, 1
  %exitcond709.not = icmp eq i64 %indvars.iv.next706, %wide.trip.count708
  %indvar.next = add i32 %indvar, 1
  %indvar.next953 = add i64 %indvar952, 1
  br i1 %exitcond709.not, label %.loopexit545, label %.lr.ph586, !llvm.loop !60

bb.v:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not504, label %.preheader548, label %.preheader550

.preheader550:                                    ; preds = %bb.w
  br i1 %.not510561, label %._crit_edge619.thread, label %.preheader543.preheader

.preheader543.preheader:                          ; preds = %.preheader550
  %i.tj = add nuw i32 %i.cu, 1
  %wide.trip.count724 = zext i32 %i.tj to i64
  %invariant.gep836 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd ; 5 uses
  br label %.preheader543

.preheader548:                                    ; preds = %bb.w
  br i1 %.not510561, label %._crit_edge619.thread, label %.lr.ph599.preheader

.lr.ph599.preheader:                              ; preds = %.preheader548
  %i.tk = add nuw i32 %i.cu, 1
  %wide.trip.count734 = zext i32 %i.tk to i64
  %invariant.gep842 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd
  %invariant.gep840 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd ; 5 uses
  br label %.lr.ph599

.preheader543:                                    ; preds = %.preheader543.preheader, %.epilog-lcssa
  %indvar1203 = phi i64 [ 0, %.preheader543.preheader ], [ %indvar.next1204, %.epilog-lcssa ] ; 3 uses
  %indvars.iv719 = phi i64 [ 1, %.preheader543.preheader ], [ %indvars.iv.next720, %.epilog-lcssa ] ; 3 uses
  %i.tl = add nuw nsw i64 %indvar1203, 1          ; 2 uses
  %i.tm = mul nsw i64 %indvars.iv719, %i.ax
  %invariant.gep834 = getelementptr [8 x i8], ptr %i.i, i64 %i.tm ; 5 uses
  %xtraiter1205 = and i64 %i.tl, 3                ; 3 uses
  %i.tn = icmp ult i64 %indvar1203, 3
  br i1 %i.tn, label %.epil.preheader, label %.preheader543.new

.preheader543.new:                                ; preds = %.preheader543
  %unroll_iter = and i64 %i.tl, -4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader543.new
  %indvars.iv710 = phi i64 [ 1, %.preheader543.new ], [ %indvars.iv.next711.3, %bb.x ] ; 6 uses
  %.0473588 = phi double [ 0.000000e+00, %.preheader543.new ], [ %i.ux, %bb.x ]
  %niter = phi i64 [ 0, %.preheader543.new ], [ %niter.next.3, %bb.x ]
  %gep835 = getelementptr [8 x i8], ptr %invariant.gep834, i64 %indvars.iv710
  %i.to = load double, ptr %gep835, align 8, !tbaa !9 ; 3 uses
  %i.tp = fcmp oge double %i.to, 0.000000e+00
  %i.tq = fneg double %i.to
  %i.tr = select i1 %i.tp, double %i.to, double %i.tq
  %gep837 = getelementptr [8 x i8], ptr %invariant.gep836, i64 %indvars.iv710
  %i.ts = load double, ptr %gep837, align 8, !tbaa !9 ; 3 uses
  %i.tt = fcmp oge double %i.ts, 0.000000e+00
  %i.tu = fneg double %i.ts
  %i.tv = select i1 %i.tt, double %i.ts, double %i.tu
  %i.tw = call double @llvm.fmuladd.f64(double %i.tr, double %i.tv, double %.0473588)
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %gep835.1 = getelementptr [8 x i8], ptr %invariant.gep834, i64 %indvars.iv.next711
  %i.tx = load double, ptr %gep835.1, align 8, !tbaa !9 ; 3 uses
  %i.ty = fcmp oge double %i.tx, 0.000000e+00
  %i.tz = fneg double %i.tx
  %i.ua = select i1 %i.ty, double %i.tx, double %i.tz
  %gep837.1 = getelementptr [8 x i8], ptr %invariant.gep836, i64 %indvars.iv.next711
  %i.ub = load double, ptr %gep837.1, align 8, !tbaa !9 ; 3 uses
  %i.uc = fcmp oge double %i.ub, 0.000000e+00
  %i.ud = fneg double %i.ub
  %i.ue = select i1 %i.uc, double %i.ub, double %i.ud
  %i.uf = call double @llvm.fmuladd.f64(double %i.ua, double %i.ue, double %i.tw)
  %indvars.iv.next711.1 = add nuw nsw i64 %indvars.iv710, 2 ; 2 uses
  %gep835.2 = getelementptr [8 x i8], ptr %invariant.gep834, i64 %indvars.iv.next711.1
  %i.ug = load double, ptr %gep835.2, align 8, !tbaa !9 ; 3 uses
  %i.uh = fcmp oge double %i.ug, 0.000000e+00
  %i.ui = fneg double %i.ug
  %i.uj = select i1 %i.uh, double %i.ug, double %i.ui
  %gep837.2 = getelementptr [8 x i8], ptr %invariant.gep836, i64 %indvars.iv.next711.1
  %i.uk = load double, ptr %gep837.2, align 8, !tbaa !9 ; 3 uses
  %i.ul = fcmp oge double %i.uk, 0.000000e+00
  %i.um = fneg double %i.uk
  %i.un = select i1 %i.ul, double %i.uk, double %i.um
  %i.uo = call double @llvm.fmuladd.f64(double %i.uj, double %i.un, double %i.uf)
  %indvars.iv.next711.2 = add nuw nsw i64 %indvars.iv710, 3 ; 2 uses
  %gep835.3 = getelementptr [8 x i8], ptr %invariant.gep834, i64 %indvars.iv.next711.2
  %i.up = load double, ptr %gep835.3, align 8, !tbaa !9 ; 3 uses
  %i.uq = fcmp oge double %i.up, 0.000000e+00
  %i.ur = fneg double %i.up
  %i.us = select i1 %i.uq, double %i.up, double %i.ur
  %gep837.3 = getelementptr [8 x i8], ptr %invariant.gep836, i64 %indvars.iv.next711.2
  %i.ut = load double, ptr %gep837.3, align 8, !tbaa !9 ; 3 uses
  %i.uu = fcmp oge double %i.ut, 0.000000e+00
  %i.uv = fneg double %i.ut
  %i.uw = select i1 %i.uu, double %i.ut, double %i.uv
  %i.ux = call double @llvm.fmuladd.f64(double %i.us, double %i.uw, double %i.uo) ; 3 uses
  %indvars.iv.next711.3 = add nuw nsw i64 %indvars.iv710, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.x, !llvm.loop !61

.unr-lcssa:                                       ; preds = %bb.x
  %lcmp.mod1206.not = icmp eq i64 %xtraiter1205, 0
  br i1 %lcmp.mod1206.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader543
  %indvars.iv710.epil.init = phi i64 [ 1, %.preheader543 ], [ %indvars.iv.next711.3, %.unr-lcssa ]
  %.0473588.epil.init = phi double [ 0.000000e+00, %.preheader543 ], [ %i.ux, %.unr-lcssa ]
  %lcmp.mod1208 = icmp ne i64 %xtraiter1205, 0
  call void @llvm.assume(i1 %lcmp.mod1208)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv710.epil = phi i64 [ %indvars.iv710.epil.init, %.epil.preheader ], [ %indvars.iv.next711.epil, %bb.y ] ; 3 uses
  %.0473588.epil = phi double [ %.0473588.epil.init, %.epil.preheader ], [ %i.vg, %bb.y ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %gep835.epil = getelementptr [8 x i8], ptr %invariant.gep834, i64 %indvars.iv710.epil
  %i.uy = load double, ptr %gep835.epil, align 8, !tbaa !9 ; 3 uses
  %i.uz = fcmp oge double %i.uy, 0.000000e+00
  %i.va = fneg double %i.uy
  %i.vb = select i1 %i.uz, double %i.uy, double %i.va
  %gep837.epil = getelementptr [8 x i8], ptr %invariant.gep836, i64 %indvars.iv710.epil
  %i.vc = load double, ptr %gep837.epil, align 8, !tbaa !9 ; 3 uses
  %i.vd = fcmp oge double %i.vc, 0.000000e+00
  %i.ve = fneg double %i.vc
  %i.vf = select i1 %i.vd, double %i.vc, double %i.ve
  %i.vg = call double @llvm.fmuladd.f64(double %i.vb, double %i.vf, double %.0473588.epil) ; 2 uses
  %indvars.iv.next711.epil = add nuw nsw i64 %indvars.iv710.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1205
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.y, !llvm.loop !62

.epilog-lcssa:                                    ; preds = %bb.y, %.unr-lcssa
  %.lcssa = phi double [ %i.ux, %.unr-lcssa ], [ %i.vg, %bb.y ]
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv719 ; 2 uses
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !9
  %i.vj = fadd double %.lcssa, %i.vi
  store double %i.vj, ptr %i.vh, align 8, !tbaa !9
  %indvars.iv.next720 = add nuw nsw i64 %indvars.iv719, 1 ; 2 uses
  %exitcond725.not = icmp eq i64 %indvars.iv.next720, %wide.trip.count724
  %indvar.next1204 = add i64 %indvar1203, 1
  br i1 %exitcond725.not, label %.loopexit545, label %.preheader543, !llvm.loop !63

.lr.ph599:                                        ; preds = %.lr.ph599.preheader, %._crit_edge596
  %indvar1210 = phi i64 [ 0, %.lr.ph599.preheader ], [ %indvar.next1211, %._crit_edge596 ] ; 4 uses
  %indvars.iv731 = phi i64 [ 1, %.lr.ph599.preheader ], [ %indvars.iv.next732, %._crit_edge596 ] ; 5 uses
  %gep843 = getelementptr [8 x i8], ptr %invariant.gep842, i64 %indvars.iv731
  %i.vk = load double, ptr %gep843, align 8, !tbaa !9 ; 3 uses
  %i.vl = fcmp oge double %i.vk, 0.000000e+00
  %i.vm = fneg double %i.vk
  %i.vn = select i1 %i.vl, double %i.vk, double %i.vm ; 3 uses
  %.not518.not591 = icmp samesign ugt i64 %indvars.iv731, 1
  br i1 %.not518.not591, label %.lr.ph595, label %._crit_edge596

.lr.ph595:                                        ; preds = %.lr.ph599
  %i.vo = add nsw i64 %indvar1210, -1
  %i.vp = mul nsw i64 %indvars.iv731, %i.ax
  %invariant.gep838 = getelementptr [8 x i8], ptr %i.i, i64 %i.vp ; 5 uses
  %xtraiter1212 = and i64 %indvar1210, 3          ; 3 uses
  %i.vq = icmp ult i64 %i.vo, 3
  br i1 %i.vq, label %.epil.preheader1209, label %.lr.ph595.new

.lr.ph595.new:                                    ; preds = %.lr.ph595
  %unroll_iter1217 = and i64 %indvar1210, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph595.new
  %indvars.iv726 = phi i64 [ 1, %.lr.ph595.new ], [ %indvars.iv.next727.3, %bb.z ] ; 6 uses
  %.1593 = phi double [ %i.vn, %.lr.ph595.new ], [ %i.xa, %bb.z ]
  %niter1218 = phi i64 [ 0, %.lr.ph595.new ], [ %niter1218.next.3, %bb.z ]
  %gep839 = getelementptr [8 x i8], ptr %invariant.gep838, i64 %indvars.iv726
  %i.vr = load double, ptr %gep839, align 8, !tbaa !9 ; 3 uses
  %i.vs = fcmp oge double %i.vr, 0.000000e+00
  %i.vt = fneg double %i.vr
  %i.vu = select i1 %i.vs, double %i.vr, double %i.vt
  %gep841 = getelementptr [8 x i8], ptr %invariant.gep840, i64 %indvars.iv726
  %i.vv = load double, ptr %gep841, align 8, !tbaa !9 ; 3 uses
  %i.vw = fcmp oge double %i.vv, 0.000000e+00
  %i.vx = fneg double %i.vv
  %i.vy = select i1 %i.vw, double %i.vv, double %i.vx
  %i.vz = call double @llvm.fmuladd.f64(double %i.vu, double %i.vy, double %.1593)
  %indvars.iv.next727 = add nuw nsw i64 %indvars.iv726, 1 ; 2 uses
  %gep839.1 = getelementptr [8 x i8], ptr %invariant.gep838, i64 %indvars.iv.next727
  %i.wa = load double, ptr %gep839.1, align 8, !tbaa !9 ; 3 uses
  %i.wb = fcmp oge double %i.wa, 0.000000e+00
  %i.wc = fneg double %i.wa
  %i.wd = select i1 %i.wb, double %i.wa, double %i.wc
  %gep841.1 = getelementptr [8 x i8], ptr %invariant.gep840, i64 %indvars.iv.next727
  %i.we = load double, ptr %gep841.1, align 8, !tbaa !9 ; 3 uses
  %i.wf = fcmp oge double %i.we, 0.000000e+00
  %i.wg = fneg double %i.we
  %i.wh = select i1 %i.wf, double %i.we, double %i.wg
  %i.wi = call double @llvm.fmuladd.f64(double %i.wd, double %i.wh, double %i.vz)
  %indvars.iv.next727.1 = add nuw nsw i64 %indvars.iv726, 2 ; 2 uses
  %gep839.2 = getelementptr [8 x i8], ptr %invariant.gep838, i64 %indvars.iv.next727.1
  %i.wj = load double, ptr %gep839.2, align 8, !tbaa !9 ; 3 uses
  %i.wk = fcmp oge double %i.wj, 0.000000e+00
  %i.wl = fneg double %i.wj
  %i.wm = select i1 %i.wk, double %i.wj, double %i.wl
  %gep841.2 = getelementptr [8 x i8], ptr %invariant.gep840, i64 %indvars.iv.next727.1
  %i.wn = load double, ptr %gep841.2, align 8, !tbaa !9 ; 3 uses
  %i.wo = fcmp oge double %i.wn, 0.000000e+00
  %i.wp = fneg double %i.wn
  %i.wq = select i1 %i.wo, double %i.wn, double %i.wp
  %i.wr = call double @llvm.fmuladd.f64(double %i.wm, double %i.wq, double %i.wi)
  %indvars.iv.next727.2 = add nuw nsw i64 %indvars.iv726, 3 ; 2 uses
  %gep839.3 = getelementptr [8 x i8], ptr %invariant.gep838, i64 %indvars.iv.next727.2
  %i.ws = load double, ptr %gep839.3, align 8, !tbaa !9 ; 3 uses
  %i.wt = fcmp oge double %i.ws, 0.000000e+00
  %i.wu = fneg double %i.ws
  %i.wv = select i1 %i.wt, double %i.ws, double %i.wu
  %gep841.3 = getelementptr [8 x i8], ptr %invariant.gep840, i64 %indvars.iv.next727.2
  %i.ww = load double, ptr %gep841.3, align 8, !tbaa !9 ; 3 uses
  %i.wx = fcmp oge double %i.ww, 0.000000e+00
  %i.wy = fneg double %i.ww
  %i.wz = select i1 %i.wx, double %i.ww, double %i.wy
  %i.xa = call double @llvm.fmuladd.f64(double %i.wv, double %i.wz, double %i.wr) ; 3 uses
  %indvars.iv.next727.3 = add nuw nsw i64 %indvars.iv726, 4 ; 2 uses
  %niter1218.next.3 = add i64 %niter1218, 4       ; 2 uses
  %niter1218.ncmp.3 = icmp eq i64 %niter1218.next.3, %unroll_iter1217
  br i1 %niter1218.ncmp.3, label %._crit_edge596.loopexit.unr-lcssa, label %bb.z, !llvm.loop !64

._crit_edge596.loopexit.unr-lcssa:                ; preds = %bb.z
  %lcmp.mod1214.not = icmp eq i64 %xtraiter1212, 0
  br i1 %lcmp.mod1214.not, label %._crit_edge596, label %.epil.preheader1209

.epil.preheader1209:                              ; preds = %._crit_edge596.loopexit.unr-lcssa, %.lr.ph595
  %indvars.iv726.epil.init = phi i64 [ 1, %.lr.ph595 ], [ %indvars.iv.next727.3, %._crit_edge596.loopexit.unr-lcssa ]
  %.1593.epil.init = phi double [ %i.vn, %.lr.ph595 ], [ %i.xa, %._crit_edge596.loopexit.unr-lcssa ]
  %lcmp.mod1216 = icmp ne i64 %xtraiter1212, 0
  call void @llvm.assume(i1 %lcmp.mod1216)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader1209
  %indvars.iv726.epil = phi i64 [ %indvars.iv726.epil.init, %.epil.preheader1209 ], [ %indvars.iv.next727.epil, %bb.aa ] ; 3 uses
  %.1593.epil = phi double [ %.1593.epil.init, %.epil.preheader1209 ], [ %i.xj, %bb.aa ]
  %epil.iter1213 = phi i64 [ 0, %.epil.preheader1209 ], [ %epil.iter1213.next, %bb.aa ]
  %gep839.epil = getelementptr [8 x i8], ptr %invariant.gep838, i64 %indvars.iv726.epil
  %i.xb = load double, ptr %gep839.epil, align 8, !tbaa !9 ; 3 uses
  %i.xc = fcmp oge double %i.xb, 0.000000e+00
  %i.xd = fneg double %i.xb
  %i.xe = select i1 %i.xc, double %i.xb, double %i.xd
  %gep841.epil = getelementptr [8 x i8], ptr %invariant.gep840, i64 %indvars.iv726.epil
  %i.xf = load double, ptr %gep841.epil, align 8, !tbaa !9 ; 3 uses
  %i.xg = fcmp oge double %i.xf, 0.000000e+00
  %i.xh = fneg double %i.xf
  %i.xi = select i1 %i.xg, double %i.xf, double %i.xh
  %i.xj = call double @llvm.fmuladd.f64(double %i.xe, double %i.xi, double %.1593.epil) ; 2 uses
  %indvars.iv.next727.epil = add nuw nsw i64 %indvars.iv726.epil, 1
  %epil.iter1213.next = add i64 %epil.iter1213, 1 ; 2 uses
  %epil.iter1213.cmp.not = icmp eq i64 %epil.iter1213.next, %xtraiter1212
  br i1 %epil.iter1213.cmp.not, label %._crit_edge596, label %bb.aa, !llvm.loop !65

._crit_edge596:                                   ; preds = %._crit_edge596.loopexit.unr-lcssa, %bb.aa, %.lr.ph599
  %.1.lcssa = phi double [ %i.vn, %.lr.ph599 ], [ %i.xa, %._crit_edge596.loopexit.unr-lcssa ], [ %i.xj, %bb.aa ]
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv731 ; 2 uses
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !9
  %i.xm = fadd double %.1.lcssa, %i.xl
  store double %i.xm, ptr %i.xk, align 8, !tbaa !9
  %indvars.iv.next732 = add nuw nsw i64 %indvars.iv731, 1 ; 2 uses
  %exitcond735.not = icmp eq i64 %indvars.iv.next732, %wide.trip.count734
  %indvar.next1211 = add i64 %indvar1210, 1
  br i1 %exitcond735.not, label %.loopexit545, label %.lr.ph599, !llvm.loop !66

bb.ab:                                            ; preds = %bb.v
  br i1 %.not504, label %.preheader544, label %.preheader546

.preheader546:                                    ; preds = %bb.ab
  br i1 %.not510561, label %._crit_edge619.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader546
  %i.xn = add nuw i32 %i.cu, 1
  %wide.trip.count744 = zext i32 %i.xn to i64     ; 3 uses
  %invariant.gep846 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd ; 5 uses
  %i.xo = zext nneg i32 %i.cu to i64
  %i.xp = add nsw i64 %wide.trip.count744, -2
  br label %.preheader

.preheader544:                                    ; preds = %bb.ab
  br i1 %.not510561, label %._crit_edge619.thread, label %.lr.ph613.preheader

.lr.ph613.preheader:                              ; preds = %.preheader544
  %i.xq = add nuw i32 %i.cu, 1                    ; 2 uses
  %i.xr = zext nneg i32 %i.cu to i64
  %wide.trip.count756 = zext i32 %i.xq to i64
  %invariant.gep852 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd
  %invariant.gep850 = getelementptr [8 x i8], ptr %i.o, i64 %i.cd ; 5 uses
  %i.xs = add nsw i32 %i.cu, -2
  br label %.lr.ph613

.preheader:                                       ; preds = %.preheader.preheader, %.unr-lcssa1224
  %indvar1219 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next1220, %.unr-lcssa1224 ] ; 3 uses
  %indvars.iv736 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next737, %.unr-lcssa1224 ] ; 5 uses
  %i.xt = sub i64 %i.xo, %indvar1219
  %i.xu = sub i64 %i.xp, %indvar1219
  %i.xv = mul nsw i64 %indvars.iv736, %i.ax
  %invariant.gep844 = getelementptr [8 x i8], ptr %i.i, i64 %i.xv ; 5 uses
  %xtraiter1221 = and i64 %i.xt, 3                ; 2 uses
  %lcmp.mod1222.not = icmp eq i64 %xtraiter1221, 0
  br i1 %lcmp.mod1222.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader, %.prol.preheader
  %indvars.iv738.prol = phi i64 [ %indvars.iv.next739.prol, %.prol.preheader ], [ %indvars.iv736, %.preheader ] ; 3 uses
  %.2601.prol = phi double [ %i.ye, %.prol.preheader ], [ 0.000000e+00, %.preheader ]
  %prol.iter1223 = phi i64 [ %prol.iter1223.next, %.prol.preheader ], [ 0, %.preheader ]
  %gep845.prol = getelementptr [8 x i8], ptr %invariant.gep844, i64 %indvars.iv738.prol
  %i.xw = load double, ptr %gep845.prol, align 8, !tbaa !9 ; 3 uses
  %i.xx = fcmp oge double %i.xw, 0.000000e+00
  %i.xy = fneg double %i.xw
  %i.xz = select i1 %i.xx, double %i.xw, double %i.xy
  %gep847.prol = getelementptr [8 x i8], ptr %invariant.gep846, i64 %indvars.iv738.prol
  %i.ya = load double, ptr %gep847.prol, align 8, !tbaa !9 ; 3 uses
  %i.yb = fcmp oge double %i.ya, 0.000000e+00
  %i.yc = fneg double %i.ya
  %i.yd = select i1 %i.yb, double %i.ya, double %i.yc
  %i.ye = call double @llvm.fmuladd.f64(double %i.xz, double %i.yd, double %.2601.prol) ; 3 uses
  %indvars.iv.next739.prol = add nuw nsw i64 %indvars.iv738.prol, 1 ; 2 uses
  %prol.iter1223.next = add i64 %prol.iter1223, 1 ; 2 uses
  %prol.iter1223.cmp.not = icmp eq i64 %prol.iter1223.next, %xtraiter1221
  br i1 %prol.iter1223.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !67

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %.lcssa1186.unr = phi double [ poison, %.preheader ], [ %i.ye, %.prol.preheader ]
  %indvars.iv738.unr = phi i64 [ %indvars.iv736, %.preheader ], [ %indvars.iv.next739.prol, %.prol.preheader ]
  %.2601.unr = phi double [ 0.000000e+00, %.preheader ], [ %i.ye, %.prol.preheader ]
  %i.yf = icmp ult i64 %i.xu, 3
  br i1 %i.yf, label %.unr-lcssa1224, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %indvars.iv738 = phi i64 [ %indvars.iv.next739.3, %.preheader.new ], [ %indvars.iv738.unr, %.prol.loopexit ] ; 6 uses
  %.2601 = phi double [ %i.zp, %.preheader.new ], [ %.2601.unr, %.prol.loopexit ]
  %gep845 = getelementptr [8 x i8], ptr %invariant.gep844, i64 %indvars.iv738
  %i.yg = load double, ptr %gep845, align 8, !tbaa !9 ; 3 uses
  %i.yh = fcmp oge double %i.yg, 0.000000e+00
  %i.yi = fneg double %i.yg
  %i.yj = select i1 %i.yh, double %i.yg, double %i.yi
  %gep847 = getelementptr [8 x i8], ptr %invariant.gep846, i64 %indvars.iv738
  %i.yk = load double, ptr %gep847, align 8, !tbaa !9 ; 3 uses
  %i.yl = fcmp oge double %i.yk, 0.000000e+00
  %i.ym = fneg double %i.yk
  %i.yn = select i1 %i.yl, double %i.yk, double %i.ym
  %i.yo = call double @llvm.fmuladd.f64(double %i.yj, double %i.yn, double %.2601)
  %indvars.iv.next739 = add nuw nsw i64 %indvars.iv738, 1 ; 2 uses
  %gep845.1 = getelementptr [8 x i8], ptr %invariant.gep844, i64 %indvars.iv.next739
  %i.yp = load double, ptr %gep845.1, align 8, !tbaa !9 ; 3 uses
  %i.yq = fcmp oge double %i.yp, 0.000000e+00
  %i.yr = fneg double %i.yp
  %i.ys = select i1 %i.yq, double %i.yp, double %i.yr
  %gep847.1 = getelementptr [8 x i8], ptr %invariant.gep846, i64 %indvars.iv.next739
  %i.yt = load double, ptr %gep847.1, align 8, !tbaa !9 ; 3 uses
  %i.yu = fcmp oge double %i.yt, 0.000000e+00
  %i.yv = fneg double %i.yt
  %i.yw = select i1 %i.yu, double %i.yt, double %i.yv
  %i.yx = call double @llvm.fmuladd.f64(double %i.ys, double %i.yw, double %i.yo)
  %indvars.iv.next739.1 = add nuw nsw i64 %indvars.iv738, 2 ; 2 uses
  %gep845.2 = getelementptr [8 x i8], ptr %invariant.gep844, i64 %indvars.iv.next739.1
end_hunk_0
