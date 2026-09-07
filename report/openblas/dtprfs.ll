Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtprfs?download=true
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
@.str.5 = private unnamed_addr constant [7 x i8] c"DTPRFS\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@c__1 = internal global i32 1, align 4
@c_b19 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dtprfs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr noundef %10, ptr nofree noundef writeonly captures(none) %11, ptr noundef %12, ptr noundef %13, ptr nofree noundef captures(none) initializes((0, 4)) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64
  %i.b = ptrtoaddr ptr %12 to i64
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [3 x i32], align 4                ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.g = getelementptr inbounds i8, ptr %5, i64 -8 ; 28 uses
  %i.h = load i32, ptr %7, align 4, !tbaa !68     ; 2 uses
  %narrow = xor i32 %i.h, -1
  %i.i = sext i32 %narrow to i64                  ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %6, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %9, align 4, !tbaa !68     ; 2 uses
  %narrow509 = xor i32 %i.k, -1
  %i.l = sext i32 %narrow509 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %8, i64 %i.l ; 12 uses
  %i.n = getelementptr inbounds i8, ptr %10, i64 -8
  %i.o = getelementptr inbounds i8, ptr %11, i64 -8 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %12, i64 -8 ; 48 uses
  store i32 0, ptr %14, align 4, !tbaa !68
  %i.q = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #7
  %i.r = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %i.s = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %.not = icmp eq i32 %i.q, 0                     ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %.not510 = icmp eq i32 %i.t, 0
  br i1 %.not510, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not511 = icmp eq i32 %i.r, 0                  ; 3 uses
  br i1 %.not511, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %.not512 = icmp eq i32 %i.u, 0
  br i1 %.not512, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  %.not513 = icmp eq i32 %i.v, 0
  br i1 %.not513, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.not514 = icmp eq i32 %i.s, 0                  ; 5 uses
  br i1 %.not514, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #7
  %.not515 = icmp eq i32 %i.w, 0
  br i1 %.not515, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = load i32, ptr %3, align 4, !tbaa !68     ; 4 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %4, align 4, !tbaa !68     ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %7, align 4, !tbaa !68
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.x, i32 1) ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %spec.select
  br i1 %i.ac, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %9, align 4, !tbaa !68
  %i.ae = icmp slt i32 %i.ad, %spec.select
  br i1 %i.ae, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.pr = load i32, ptr %14, align 4, !tbaa !68    ; 2 uses
  %.not516 = icmp eq i32 %.pr, 0
  br i1 %.not516, label %bb.m, label %.thread

.thread.sink.split:                               ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.e ], [ -4, %bb.h ], [ -8, %bb.j ], [ -5, %bb.i ], [ -3, %bb.g ], [ -10, %bb.k ] ; 2 uses
  store i32 %.sink, ptr %14, align 4, !tbaa !68
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.l
  %i.af = phi i32 [ %.pr, %bb.l ], [ %.sink, %.thread.sink.split ]
  %i.ag = sub nsw i32 0, %i.af
  store i32 %i.ag, ptr %i.c, align 4, !tbaa !68
  %i.ah = call i32 @xerbla_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i32 %i.x, 0
  %.not547666 = icmp eq i32 %i.z, 0               ; 2 uses
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not547666, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %.not547666, label %.loopexit, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %bb.o
  %i.aj = zext nneg i32 %i.z to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %i.ak, i1 false), !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 %i.ak, i1 false), !tbaa !70
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %. = select i1 %.not511, i8 78, i8 84
  store i8 %., ptr %i.f, align 1, !tbaa !71
  %i.al = add nuw nsw i32 %i.x, 1
  %i.am = tail call double @dlamch_(ptr noundef nonnull @.str.6) #7 ; 2 uses
  %i.an = tail call double @dlamch_(ptr noundef nonnull @.str.7) #7
  %i.ao = uitofp nneg i32 %i.al to double         ; 2 uses
  %i.ap = fmul double %i.an, %i.ao                ; 9 uses
  %i.aq = fdiv double %i.ap, %i.am                ; 5 uses
  %i.ar = load i32, ptr %4, align 4, !tbaa !68    ; 2 uses
  %.not518662 = icmp slt i32 %i.ar, 1
  br i1 %.not518662, label %.loopexit, label %.lr.ph665

.lr.ph665:                                        ; preds = %bb.p
  %i.as = fmul double %i.am, %i.ao                ; 3 uses
  %i.at = sext i32 %i.k to i64
  %i.au = sext i32 %i.h to i64                    ; 3 uses
  %.pre = load i32, ptr %3, align 4, !tbaa !68
  %i.av = zext nneg i32 %i.ar to i64
  %scevgep = getelementptr i8, ptr %12, i64 -8
  %scevgep967 = getelementptr i8, ptr %5, i64 -8
  %scevgep1014 = getelementptr i8, ptr %12, i64 -8
  %scevgep1016 = getelementptr i8, ptr %5, i64 -8
  %i.aw = add i64 %i.b, -8
  %i.ax = or i64 %i.au, %i.i
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = add i64 %i.ay, %i.a
  %i.ba = sub i64 %i.aw, %i.az
  %i.bb = mul nsw i64 %i.au, -8
  %invariant.op1276 = add i64 %i.ba, -1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aq, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert950 = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat951 = shufflevector <4 x double> %broadcast.splatinsert950, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert952 = insertelement <4 x double> poison, double %i.ap, i64 0
  %broadcast.splat953 = shufflevector <4 x double> %broadcast.splatinsert952, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph665, %._crit_edge660.thread
  %indvar1159 = phi i64 [ 0, %.lr.ph665 ], [ %indvar.next1160, %._crit_edge660.thread ] ; 2 uses
  %i.bc = phi i32 [ %.pre, %.lr.ph665 ], [ %i.aks, %._crit_edge660.thread ]
  %indvars.iv807 = phi i64 [ 1, %.lr.ph665 ], [ %indvars.iv.next808, %._crit_edge660.thread ] ; 7 uses
  %i.bd = mul nsw i64 %indvars.iv807, %i.at       ; 12 uses
  %i.be = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = sext i32 %i.bc to i64
  %i.bh = getelementptr [8 x i8], ptr %i.p, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.bf, ptr noundef nonnull @c__1, ptr noundef %i.bi, ptr noundef nonnull @c__1) #7
  %i.bj = load i32, ptr %3, align 4, !tbaa !68
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.p, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  call void @dtpmv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %i.bm, ptr noundef nonnull @c__1) #7
  %i.bn = mul nsw i64 %indvars.iv807, %i.au       ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.j, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %3, align 4, !tbaa !68
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %i.p, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  call void @daxpy_(ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef %i.bp, ptr noundef nonnull @c__1, ptr noundef %i.bt, ptr noundef nonnull @c__1) #7
  %i.bu = load i32, ptr %3, align 4, !tbaa !68    ; 34 uses
  %.not519569 = icmp slt i32 %i.bu, 1             ; 10 uses
  br i1 %.not519569, label %._crit_edge, label %iter.check1178

iter.check1178:                                   ; preds = %bb.q
  %i.bv = mul i64 %i.bb, %indvar1159
  %i.bw = add nuw i32 %i.bu, 1
  %wide.trip.count = zext i32 %i.bw to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.bn ; 7 uses
  %i.bx = zext nneg i32 %i.bu to i64              ; 5 uses
  %min.iters.check1162 = icmp ult i32 %i.bu, 4
  %.reass1277 = add i64 %i.bv, %invariant.op1276
  %diff.check = icmp ult i64 %.reass1277, 127
  %or.cond = select i1 %min.iters.check1162, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check1163

vector.main.loop.iter.check1163:                  ; preds = %iter.check1178
  %min.iters.check1164 = icmp ult i32 %i.bu, 16
  br i1 %min.iters.check1164, label %vec.epilog.ph1182, label %vector.ph1165

vector.ph1165:                                    ; preds = %vector.main.loop.iter.check1163
  %i.by = and i64 %i.bx, 12
  %n.vec1166 = and i64 %i.bx, 2147483632          ; 4 uses
  %i.bz = or disjoint i64 %n.vec1166, 1
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1165
  %index1168 = phi i64 [ 0, %vector.ph1165 ], [ %index.next1173, %vector.body1167 ] ; 3 uses
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1168 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = getelementptr i8, ptr %i.ca, i64 40
  %i.cd = getelementptr i8, ptr %i.ca, i64 72
  %i.ce = getelementptr i8, ptr %i.ca, i64 104
  %wide.load1169 = load <4 x double>, ptr %i.cb, align 8, !tbaa !70 ; 3 uses
  %wide.load1170 = load <4 x double>, ptr %i.cc, align 8, !tbaa !70 ; 3 uses
  %wide.load1171 = load <4 x double>, ptr %i.cd, align 8, !tbaa !70 ; 3 uses
  %wide.load1172 = load <4 x double>, ptr %i.ce, align 8, !tbaa !70 ; 3 uses
  %i.cf = fcmp oge <4 x double> %wide.load1169, zeroinitializer
  %i.cg = fcmp oge <4 x double> %wide.load1170, zeroinitializer
  %i.ch = fcmp oge <4 x double> %wide.load1171, zeroinitializer
  %i.ci = fcmp oge <4 x double> %wide.load1172, zeroinitializer
  %i.cj = fneg <4 x double> %wide.load1169
  %i.ck = fneg <4 x double> %wide.load1170
  %i.cl = fneg <4 x double> %wide.load1171
  %i.cm = fneg <4 x double> %wide.load1172
  %i.cn = select <4 x i1> %i.cf, <4 x double> %wide.load1169, <4 x double> %i.cj
  %i.co = select <4 x i1> %i.cg, <4 x double> %wide.load1170, <4 x double> %i.ck
  %i.cp = select <4 x i1> %i.ch, <4 x double> %wide.load1171, <4 x double> %i.cl
  %i.cq = select <4 x i1> %i.ci, <4 x double> %wide.load1172, <4 x double> %i.cm
  %i.cr = getelementptr [8 x i8], ptr %12, i64 %index1168 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  store <4 x double> %i.cn, ptr %i.cr, align 8, !tbaa !70
  store <4 x double> %i.co, ptr %i.cs, align 8, !tbaa !70
  store <4 x double> %i.cp, ptr %i.ct, align 8, !tbaa !70
  store <4 x double> %i.cq, ptr %i.cu, align 8, !tbaa !70
  %index.next1173 = add nuw i64 %index1168, 16    ; 2 uses
  %i.cv = icmp eq i64 %index.next1173, %n.vec1166
  br i1 %i.cv, label %middle.block1174, label %vector.body1167, !llvm.loop !8

middle.block1174:                                 ; preds = %vector.body1167
  %cmp.n1175 = icmp eq i64 %n.vec1166, %i.bx
  br i1 %cmp.n1175, label %._crit_edge, label %vec.epilog.iter.check1180

vec.epilog.iter.check1180:                        ; preds = %middle.block1174
  %min.epilog.iters.check1181 = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check1181, label %.lr.ph.preheader, label %vec.epilog.ph1182, !prof !75

vec.epilog.ph1182:                                ; preds = %vector.main.loop.iter.check1163, %vec.epilog.iter.check1180
  %vec.epilog.resume.val1176 = phi i64 [ %n.vec1166, %vec.epilog.iter.check1180 ], [ 0, %vector.main.loop.iter.check1163 ]
  %n.vec1183 = and i64 %i.bx, 2147483644          ; 3 uses
  %i.cw = or disjoint i64 %n.vec1183, 1
  br label %vec.epilog.vector.body1184

vec.epilog.vector.body1184:                       ; preds = %vec.epilog.vector.body1184, %vec.epilog.ph1182
  %index1185 = phi i64 [ %vec.epilog.resume.val1176, %vec.epilog.ph1182 ], [ %index.next1187, %vec.epilog.vector.body1184 ] ; 3 uses
  %i.cx = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1185
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %wide.load1186 = load <4 x double>, ptr %i.cy, align 8, !tbaa !70 ; 3 uses
  %i.cz = fcmp oge <4 x double> %wide.load1186, zeroinitializer
  %i.da = fneg <4 x double> %wide.load1186
  %i.db = select <4 x i1> %i.cz, <4 x double> %wide.load1186, <4 x double> %i.da
  %i.dc = getelementptr [8 x i8], ptr %12, i64 %index1185
  store <4 x double> %i.db, ptr %i.dc, align 8, !tbaa !70
  %index.next1187 = add nuw i64 %index1185, 4     ; 2 uses
  %i.dd = icmp eq i64 %index.next1187, %n.vec1183
  br i1 %i.dd, label %vec.epilog.middle.block1188, label %vec.epilog.vector.body1184, !llvm.loop !9

vec.epilog.middle.block1188:                      ; preds = %vec.epilog.vector.body1184
  %cmp.n1189 = icmp eq i64 %n.vec1183, %i.bx
  br i1 %cmp.n1189, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check1178, %vec.epilog.iter.check1180, %vec.epilog.middle.block1188
  %indvars.iv.ph = phi i64 [ 1, %iter.check1178 ], [ %i.bz, %vec.epilog.iter.check1180 ], [ %i.cw, %vec.epilog.middle.block1188 ] ; 4 uses
  %i.de = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.df = zext nneg i32 %i.bu to i64
  %i.dg = sub nsw i64 %i.df, %indvars.iv.ph
  %xtraiter = and i64 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.dh = load double, ptr %gep.prol, align 8, !tbaa !70 ; 3 uses
  %i.di = fcmp oge double %i.dh, 0.000000e+00
  %i.dj = fneg double %i.dh
  %i.dk = select i1 %i.di, double %i.dh, double %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.prol
  store double %i.dk, ptr %i.dl, align 8, !tbaa !70
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !10

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dm = icmp ult i64 %i.dg, 3
  br i1 %i.dm, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dn = load double, ptr %gep, align 8, !tbaa !70 ; 3 uses
  %i.do = fcmp oge double %i.dn, 0.000000e+00
  %i.dp = fneg double %i.dn
  %i.dq = select i1 %i.do, double %i.dn, double %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double %i.dq, ptr %i.dr, align 8, !tbaa !70
  %i.ds = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ds, i64 8
  %i.dt = load double, ptr %gep.1, align 8, !tbaa !70 ; 3 uses
  %i.du = fcmp oge double %i.dt, 0.000000e+00
  %i.dv = fneg double %i.dt
  %i.dw = select i1 %i.du, double %i.dt, double %i.dv
  %i.dx = getelementptr [8 x i8], ptr %12, i64 %indvars.iv
  store double %i.dw, ptr %i.dx, align 8, !tbaa !70
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dy = load double, ptr %gep.2, align 8, !tbaa !70 ; 3 uses
  %i.dz = fcmp oge double %i.dy, 0.000000e+00
  %i.ea = fneg double %i.dy
  %i.eb = select i1 %i.dz, double %i.dy, double %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  store double %i.eb, ptr %i.ec, align 8, !tbaa !70
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ed = load double, ptr %gep.3, align 8, !tbaa !70 ; 3 uses
  %i.ee = fcmp oge double %i.ed, 0.000000e+00
  %i.ef = fneg double %i.ed
  %i.eg = select i1 %i.ee, double %i.ed, double %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  store double %i.eg, ptr %i.eh, align 8, !tbaa !70
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1174, %vec.epilog.middle.block1188, %bb.q
  br i1 %.not511, label %bb.v, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not514, label %.preheader564, label %.preheader566

.preheader566:                                    ; preds = %bb.s
  br i1 %.not519569, label %._crit_edge639.thread, label %.lr.ph575.preheader

.lr.ph575.preheader:                              ; preds = %.preheader566
  %i.ei = add nuw i32 %i.bu, 1
  %wide.trip.count697 = zext i32 %i.ei to i64
  %invariant.gep843 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  br label %iter.check1142

.preheader564:                                    ; preds = %bb.s
  br i1 %.not519569, label %._crit_edge639.thread, label %.lr.ph584.preheader

.lr.ph584.preheader:                              ; preds = %.preheader564
  %i.ej = add nuw i32 %i.bu, 1
  %wide.trip.count707 = zext i32 %i.ej to i64
  %invariant.gep847 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  br label %.lr.ph584

iter.check1142:                                   ; preds = %.lr.ph575.preheader, %.loopexit1192
  %indvar1111 = phi i64 [ 0, %.lr.ph575.preheader ], [ %indvar.next1112, %.loopexit1192 ] ; 2 uses
  %indvars.iv692 = phi i64 [ 1, %.lr.ph575.preheader ], [ %indvars.iv.next693, %.loopexit1192 ] ; 11 uses
  %indvars.iv690 = phi i64 [ 2, %.lr.ph575.preheader ], [ %indvars.iv.next691, %.loopexit1192 ] ; 3 uses
  %.0476574 = phi i32 [ 1, %.lr.ph575.preheader ], [ %i.hu, %.loopexit1192 ] ; 3 uses
  %gep844 = getelementptr [8 x i8], ptr %invariant.gep843, i64 %indvars.iv692
  %i.ek = load double, ptr %gep844, align 8, !tbaa !70 ; 3 uses
  %i.el = fcmp oge double %i.ek, 0.000000e+00
  %i.em = fneg double %i.ek
  %i.en = select i1 %i.el, double %i.ek, double %i.em ; 7 uses
  %i.eo = zext i32 %.0476574 to i64
  %invariant.gep841 = getelementptr [8 x i8], ptr %i.g, i64 %i.eo ; 8 uses
  %min.iters.check1120 = icmp samesign ult i64 %indvars.iv692, 4
  br i1 %min.iters.check1120, label %vec.epilog.scalar.ph1143.preheader, label %vector.memcheck1110

end_hunk_0
begin_hunk_1_@dtprfs_:bb.a
  %min.iters.check1074 = icmp ult i64 %indvar1063, 16
  br i1 %min.iters.check1074, label %vec.epilog.ph1098, label %vector.ph1075

vector.ph1075:                                    ; preds = %vector.main.loop.iter.check1073
  %i.ie = and i64 %indvar1063, 12
  %n.vec1076 = and i64 %indvar1063, -16           ; 4 uses
  %i.if = or disjoint i64 %n.vec1076, 1
  %broadcast.splatinsert1077 = insertelement <4 x double> poison, double %i.ic, i64 0
  %broadcast.splat1078 = shufflevector <4 x double> %broadcast.splatinsert1077, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %vector.ph1075
  %index1080 = phi i64 [ 0, %vector.ph1075 ], [ %index.next1089, %vector.body1079 ] ; 3 uses
  %i.ig = getelementptr [8 x i8], ptr %invariant.gep845, i64 %index1080 ; 4 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 32
  %i.ii = getelementptr i8, ptr %i.ig, i64 64
  %i.ij = getelementptr i8, ptr %i.ig, i64 96
  %wide.load1081 = load <4 x double>, ptr %i.ig, align 8, !tbaa !70, !alias.scope !79 ; 3 uses
  %wide.load1082 = load <4 x double>, ptr %i.ih, align 8, !tbaa !70, !alias.scope !79 ; 3 uses
  %wide.load1083 = load <4 x double>, ptr %i.ii, align 8, !tbaa !70, !alias.scope !79 ; 3 uses
  %wide.load1084 = load <4 x double>, ptr %i.ij, align 8, !tbaa !70, !alias.scope !79 ; 3 uses
  %i.ik = fcmp oge <4 x double> %wide.load1081, zeroinitializer
  %i.il = fcmp oge <4 x double> %wide.load1082, zeroinitializer
  %i.im = fcmp oge <4 x double> %wide.load1083, zeroinitializer
  %i.in = fcmp oge <4 x double> %wide.load1084, zeroinitializer
  %i.io = fneg <4 x double> %wide.load1081
  %i.ip = fneg <4 x double> %wide.load1082
  %i.iq = fneg <4 x double> %wide.load1083
  %i.ir = fneg <4 x double> %wide.load1084
  %i.is = select <4 x i1> %i.ik, <4 x double> %wide.load1081, <4 x double> %i.io
  %i.it = select <4 x i1> %i.il, <4 x double> %wide.load1082, <4 x double> %i.ip
  %i.iu = select <4 x i1> %i.im, <4 x double> %wide.load1083, <4 x double> %i.iq
  %i.iv = select <4 x i1> %i.in, <4 x double> %wide.load1084, <4 x double> %i.ir
  %i.iw = getelementptr [8 x i8], ptr %12, i64 %index1080 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 64 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 96 ; 2 uses
  %wide.load1085 = load <4 x double>, ptr %i.iw, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  %wide.load1086 = load <4 x double>, ptr %i.ix, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  %wide.load1087 = load <4 x double>, ptr %i.iy, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  %wide.load1088 = load <4 x double>, ptr %i.iz, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  %i.ja = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.is, <4 x double> %broadcast.splat1078, <4 x double> %wide.load1085)
  %i.jb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.it, <4 x double> %broadcast.splat1078, <4 x double> %wide.load1086)
  %i.jc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iu, <4 x double> %broadcast.splat1078, <4 x double> %wide.load1087)
  %i.jd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %broadcast.splat1078, <4 x double> %wide.load1088)
  store <4 x double> %i.ja, ptr %i.iw, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  store <4 x double> %i.jb, ptr %i.ix, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  store <4 x double> %i.jc, ptr %i.iy, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  store <4 x double> %i.jd, ptr %i.iz, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  %index.next1089 = add nuw i64 %index1080, 16    ; 2 uses
  %i.je = icmp eq i64 %index.next1089, %n.vec1076
  br i1 %i.je, label %middle.block1090, label %vector.body1079, !llvm.loop !23

middle.block1090:                                 ; preds = %vector.body1079
  %cmp.n1091 = icmp eq i64 %indvar1063, %n.vec1076
  br i1 %cmp.n1091, label %._crit_edge580, label %vec.epilog.iter.check1096

vec.epilog.iter.check1096:                        ; preds = %middle.block1090
  %min.epilog.iters.check1097 = icmp eq i64 %i.ie, 0
  br i1 %min.epilog.iters.check1097, label %.lr.ph579.preheader, label %vec.epilog.ph1098, !prof !75

vec.epilog.ph1098:                                ; preds = %vector.main.loop.iter.check1073, %vec.epilog.iter.check1096
  %vec.epilog.resume.val1092 = phi i64 [ %n.vec1076, %vec.epilog.iter.check1096 ], [ 0, %vector.main.loop.iter.check1073 ]
  %n.vec1099 = and i64 %indvar1063, -4            ; 3 uses
  %i.jf = or disjoint i64 %n.vec1099, 1
  %broadcast.splatinsert1100 = insertelement <4 x double> poison, double %i.ic, i64 0
  %broadcast.splat1101 = shufflevector <4 x double> %broadcast.splatinsert1100, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1102

vec.epilog.vector.body1102:                       ; preds = %vec.epilog.vector.body1102, %vec.epilog.ph1098
  %index1103 = phi i64 [ %vec.epilog.resume.val1092, %vec.epilog.ph1098 ], [ %index.next1106, %vec.epilog.vector.body1102 ] ; 3 uses
  %i.jg = getelementptr [8 x i8], ptr %invariant.gep845, i64 %index1103
  %wide.load1104 = load <4 x double>, ptr %i.jg, align 8, !tbaa !70, !alias.scope !79 ; 3 uses
  %i.jh = fcmp oge <4 x double> %wide.load1104, zeroinitializer
  %i.ji = fneg <4 x double> %wide.load1104
  %i.jj = select <4 x i1> %i.jh, <4 x double> %wide.load1104, <4 x double> %i.ji
  %i.jk = getelementptr [8 x i8], ptr %12, i64 %index1103 ; 2 uses
  %wide.load1105 = load <4 x double>, ptr %i.jk, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  %i.jl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jj, <4 x double> %broadcast.splat1101, <4 x double> %wide.load1105)
  store <4 x double> %i.jl, ptr %i.jk, align 8, !tbaa !70, !alias.scope !80, !noalias !79
  %index.next1106 = add nuw i64 %index1103, 4     ; 2 uses
  %i.jm = icmp eq i64 %index.next1106, %n.vec1099
  br i1 %i.jm, label %vec.epilog.middle.block1107, label %vec.epilog.vector.body1102, !llvm.loop !24

vec.epilog.middle.block1107:                      ; preds = %vec.epilog.vector.body1102
  %cmp.n1108 = icmp eq i64 %indvar1063, %n.vec1099
  br i1 %cmp.n1108, label %._crit_edge580, label %.lr.ph579.preheader

.lr.ph579.preheader:                              ; preds = %vector.memcheck1062, %iter.check1094, %vec.epilog.iter.check1096, %vec.epilog.middle.block1107
  %indvars.iv699.ph = phi i64 [ 1, %iter.check1094 ], [ 1, %vector.memcheck1062 ], [ %i.if, %vec.epilog.iter.check1096 ], [ %i.jf, %vec.epilog.middle.block1107 ] ; 4 uses
  %i.jn = sub i64 %indvars.iv704, %indvars.iv699.ph
  %i.jo = sub i64 %indvar1063, %indvars.iv699.ph
  %xtraiter1211 = and i64 %i.jn, 3                ; 2 uses
  %lcmp.mod1212.not = icmp eq i64 %xtraiter1211, 0
  br i1 %lcmp.mod1212.not, label %.lr.ph579.prol.loopexit, label %.lr.ph579.prol

.lr.ph579.prol:                                   ; preds = %.lr.ph579.preheader, %.lr.ph579.prol
  %indvars.iv699.prol = phi i64 [ %indvars.iv.next700.prol, %.lr.ph579.prol ], [ %indvars.iv699.ph, %.lr.ph579.preheader ] ; 3 uses
  %prol.iter1213 = phi i64 [ %prol.iter1213.next, %.lr.ph579.prol ], [ 0, %.lr.ph579.preheader ]
  %gep846.prol = getelementptr [8 x i8], ptr %invariant.gep845, i64 %indvars.iv699.prol
  %i.jp = getelementptr i8, ptr %gep846.prol, i64 -8
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !70 ; 3 uses
  %i.jr = fcmp oge double %i.jq, 0.000000e+00
  %i.js = fneg double %i.jq
  %i.jt = select i1 %i.jr, double %i.jq, double %i.js
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv699.prol ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !70
  %i.jw = call double @llvm.fmuladd.f64(double %i.jt, double %i.ic, double %i.jv)
  store double %i.jw, ptr %i.ju, align 8, !tbaa !70
  %indvars.iv.next700.prol = add nuw nsw i64 %indvars.iv699.prol, 1 ; 2 uses
  %prol.iter1213.next = add i64 %prol.iter1213, 1 ; 2 uses
  %prol.iter1213.cmp.not = icmp eq i64 %prol.iter1213.next, %xtraiter1211
  br i1 %prol.iter1213.cmp.not, label %.lr.ph579.prol.loopexit, label %.lr.ph579.prol, !llvm.loop !25

.lr.ph579.prol.loopexit:                          ; preds = %.lr.ph579.prol, %.lr.ph579.preheader
  %indvars.iv699.unr = phi i64 [ %indvars.iv699.ph, %.lr.ph579.preheader ], [ %indvars.iv.next700.prol, %.lr.ph579.prol ]
  %i.jx = icmp ult i64 %i.jo, 3
  br i1 %i.jx, label %._crit_edge580, label %.lr.ph579

.lr.ph579:                                        ; preds = %.lr.ph579.prol.loopexit, %.lr.ph579
  %indvars.iv699 = phi i64 [ %indvars.iv.next700.3, %.lr.ph579 ], [ %indvars.iv699.unr, %.lr.ph579.prol.loopexit ] ; 7 uses
  %gep846 = getelementptr [8 x i8], ptr %invariant.gep845, i64 %indvars.iv699
  %i.jy = getelementptr i8, ptr %gep846, i64 -8
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !70 ; 3 uses
  %i.ka = fcmp oge double %i.jz, 0.000000e+00
  %i.kb = fneg double %i.jz
  %i.kc = select i1 %i.ka, double %i.jz, double %i.kb
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv699 ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !70
  %i.kf = call double @llvm.fmuladd.f64(double %i.kc, double %i.ic, double %i.ke)
  store double %i.kf, ptr %i.kd, align 8, !tbaa !70
  %i.kg = getelementptr [8 x i8], ptr %invariant.gep845, i64 %indvars.iv699
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !70 ; 3 uses
  %i.ki = fcmp oge double %i.kh, 0.000000e+00
  %i.kj = fneg double %i.kh
  %i.kk = select i1 %i.ki, double %i.kh, double %i.kj
  %i.kl = getelementptr [8 x i8], ptr %12, i64 %indvars.iv699 ; 2 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !70
  %i.kn = call double @llvm.fmuladd.f64(double %i.kk, double %i.ic, double %i.km)
  store double %i.kn, ptr %i.kl, align 8, !tbaa !70
  %indvars.iv.next700.1 = add nuw nsw i64 %indvars.iv699, 2 ; 2 uses
  %gep846.2 = getelementptr [8 x i8], ptr %invariant.gep845, i64 %indvars.iv.next700.1
  %i.ko = getelementptr i8, ptr %gep846.2, i64 -8
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !70 ; 3 uses
  %i.kq = fcmp oge double %i.kp, 0.000000e+00
  %i.kr = fneg double %i.kp
  %i.ks = select i1 %i.kq, double %i.kp, double %i.kr
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next700.1 ; 2 uses
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !70
  %i.kv = call double @llvm.fmuladd.f64(double %i.ks, double %i.ic, double %i.ku)
  store double %i.kv, ptr %i.kt, align 8, !tbaa !70
  %indvars.iv.next700.2 = add nuw nsw i64 %indvars.iv699, 3 ; 2 uses
  %gep846.3 = getelementptr [8 x i8], ptr %invariant.gep845, i64 %indvars.iv.next700.2
  %i.kw = getelementptr i8, ptr %gep846.3, i64 -8
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !70 ; 3 uses
  %i.ky = fcmp oge double %i.kx, 0.000000e+00
  %i.kz = fneg double %i.kx
  %i.la = select i1 %i.ky, double %i.kx, double %i.kz
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next700.2 ; 2 uses
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !70
  %i.ld = call double @llvm.fmuladd.f64(double %i.la, double %i.ic, double %i.lc)
  store double %i.ld, ptr %i.lb, align 8, !tbaa !70
  %indvars.iv.next700.3 = add nuw nsw i64 %indvars.iv699, 4 ; 2 uses
  %exitcond703.not.3 = icmp eq i64 %indvars.iv.next700.3, %indvars.iv704
  br i1 %exitcond703.not.3, label %._crit_edge580, label %.lr.ph579, !llvm.loop !26

._crit_edge580:                                   ; preds = %.lr.ph579.prol.loopexit, %.lr.ph579, %middle.block1090, %vec.epilog.middle.block1107, %.lr.ph584
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv704 ; 2 uses
  %i.lf = load double, ptr %i.le, align 8, !tbaa !70
  %i.lg = fadd double %i.ic, %i.lf
  store double %i.lg, ptr %i.le, align 8, !tbaa !70
  %i.lh = trunc i64 %indvars.iv704 to i32
  %i.li = add i32 %.1583, %i.lh
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1 ; 2 uses
  %exitcond708.not = icmp eq i64 %indvars.iv.next705, %wide.trip.count707
  %indvar.next1064 = add i64 %indvar1063, 1
  br i1 %exitcond708.not, label %.loopexit553, label %.lr.ph584, !llvm.loop !27

bb.t:                                             ; preds = %bb.r
  br i1 %.not514, label %.preheader560, label %.preheader562

.preheader562:                                    ; preds = %bb.t
  br i1 %.not519569, label %._crit_edge639.thread, label %.lr.ph590

.lr.ph590:                                        ; preds = %.preheader562
  %i.lj = add nuw i32 %i.bu, 1                    ; 2 uses
  %wide.trip.count718 = zext i32 %i.lj to i64     ; 5 uses
  %invariant.gep849 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  %i.lk = add nsw i64 %wide.trip.count718, -2
  %i.ll = shl nuw nsw i64 %wide.trip.count718, 3  ; 2 uses
  %scevgep1015 = getelementptr i8, ptr %scevgep1014, i64 %i.ll
  %i.lm = add nsw i64 %i.ll, -16
  %i.ln = zext nneg i32 %i.bu to i64
  %i.lo = zext nneg i32 %i.bu to i64
  br label %iter.check1046

.preheader560:                                    ; preds = %bb.t
  br i1 %.not519569, label %._crit_edge639.thread, label %.lr.ph600

.lr.ph600:                                        ; preds = %.preheader560
  %i.lp = add nuw i32 %i.bu, 1                    ; 3 uses
  %i.lq = zext nneg i32 %i.bu to i64
  %wide.trip.count730 = zext i32 %i.lp to i64
  %invariant.gep851 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  %i.lr = add nsw i32 %i.bu, -2                   ; 3 uses
  %15 = add nuw i32 %i.bu, 1
  br label %bb.u

iter.check1046:                                   ; preds = %.lr.ph590, %.loopexit1191
  %indvar1010 = phi i64 [ 0, %.lr.ph590 ], [ %indvar.next1011, %.loopexit1191 ] ; 5 uses
  %indvars.iv709 = phi i64 [ 1, %.lr.ph590 ], [ %indvars.iv.next710, %.loopexit1191 ] ; 10 uses
  %.2485.neg589 = phi i32 [ -1, %.lr.ph590 ], [ %i.qi, %.loopexit1191 ] ; 2 uses
  %.2588 = phi i32 [ 1, %.lr.ph590 ], [ %i.qg, %.loopexit1191 ] ; 5 uses
  %i.ls = sub i64 %i.ln, %indvar1010              ; 7 uses
  %i.lt = shl nuw nsw i64 %indvar1010, 3
  %scevgep1013 = getelementptr i8, ptr %12, i64 %i.lt
  %i.lu = sext i32 %.2588 to i64
  %i.lv = shl nsw i64 %i.lu, 3                    ; 2 uses
  %scevgep1017 = getelementptr i8, ptr %scevgep1016, i64 %i.lv
  %i.lw = shl i64 %indvar1010, 3
  %i.lx = sub i64 %i.lm, %i.lw
  %scevgep1018 = getelementptr i8, ptr %5, i64 %i.lx
  %scevgep1019 = getelementptr i8, ptr %scevgep1018, i64 %i.lv
  %gep850 = getelementptr [8 x i8], ptr %invariant.gep849, i64 %indvars.iv709
  %i.ly = load double, ptr %gep850, align 8, !tbaa !70 ; 3 uses
  %i.lz = fcmp oge double %i.ly, 0.000000e+00
  %i.ma = fneg double %i.ly
  %i.mb = select i1 %i.lz, double %i.ly, double %i.ma ; 7 uses
  %i.mc = add i32 %.2588, %.2485.neg589           ; 7 uses
  %min.iters.check1024 = icmp ult i64 %i.ls, 4
  br i1 %min.iters.check1024, label %vec.epilog.scalar.ph1047.preheader, label %vector.scevcheck1009

vector.scevcheck1009:                             ; preds = %iter.check1046
  %i.md = sub i64 %i.lk, %indvar1010              ; 2 uses
  %i.me = trunc i64 %i.md to i32
  %i.mf = add i32 %.2588, %i.me
  %i.mg = icmp slt i32 %i.mf, %.2588
  %i.mh = icmp ugt i64 %i.md, 4294967295
  %i.mi = or i1 %i.mg, %i.mh
  br i1 %i.mi, label %vec.epilog.scalar.ph1047.preheader, label %vector.memcheck1012

vector.memcheck1012:                              ; preds = %vector.scevcheck1009
  %bound01020 = icmp ult ptr %scevgep1013, %scevgep1019
  %bound11021 = icmp ult ptr %scevgep1017, %scevgep1015
  %found.conflict1022 = and i1 %bound01020, %bound11021
  br i1 %found.conflict1022, label %vec.epilog.scalar.ph1047.preheader, label %vector.main.loop.iter.check1025

vector.main.loop.iter.check1025:                  ; preds = %vector.memcheck1012
  %min.iters.check1026 = icmp ult i64 %i.ls, 16
  br i1 %min.iters.check1026, label %vec.epilog.ph1050, label %vector.ph1027

vector.ph1027:                                    ; preds = %vector.main.loop.iter.check1025
  %i.mj = and i64 %i.ls, 12
  %n.vec1028 = and i64 %i.ls, -16                 ; 4 uses
  %i.mk = add i64 %indvars.iv709, %n.vec1028
  %broadcast.splatinsert1029 = insertelement <4 x double> poison, double %i.mb, i64 0
  %broadcast.splat1030 = shufflevector <4 x double> %broadcast.splatinsert1029, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1027
  %index1032 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1041, %vector.body1031 ] ; 2 uses
  %i.ml = add nuw i64 %indvars.iv709, %index1032  ; 2 uses
  %i.mm = trunc nuw nsw i64 %i.ml to i32
  %i.mn = add i32 %i.mc, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.mo ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 96
  %wide.load1033 = load <4 x double>, ptr %i.mp, align 8, !tbaa !70, !alias.scope !81 ; 3 uses
  %wide.load1034 = load <4 x double>, ptr %i.mq, align 8, !tbaa !70, !alias.scope !81 ; 3 uses
  %wide.load1035 = load <4 x double>, ptr %i.mr, align 8, !tbaa !70, !alias.scope !81 ; 3 uses
  %wide.load1036 = load <4 x double>, ptr %i.ms, align 8, !tbaa !70, !alias.scope !81 ; 3 uses
  %i.mt = fcmp oge <4 x double> %wide.load1033, zeroinitializer
  %i.mu = fcmp oge <4 x double> %wide.load1034, zeroinitializer
  %i.mv = fcmp oge <4 x double> %wide.load1035, zeroinitializer
  %i.mw = fcmp oge <4 x double> %wide.load1036, zeroinitializer
  %i.mx = fneg <4 x double> %wide.load1033
  %i.my = fneg <4 x double> %wide.load1034
  %i.mz = fneg <4 x double> %wide.load1035
  %i.na = fneg <4 x double> %wide.load1036
  %i.nb = select <4 x i1> %i.mt, <4 x double> %wide.load1033, <4 x double> %i.mx
  %i.nc = select <4 x i1> %i.mu, <4 x double> %wide.load1034, <4 x double> %i.my
  %i.nd = select <4 x i1> %i.mv, <4 x double> %wide.load1035, <4 x double> %i.mz
  %i.ne = select <4 x i1> %i.mw, <4 x double> %wide.load1036, <4 x double> %i.na
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ml ; 5 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 32 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 64 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 96 ; 2 uses
  %wide.load1037 = load <4 x double>, ptr %i.nf, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  %wide.load1038 = load <4 x double>, ptr %i.ng, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  %wide.load1039 = load <4 x double>, ptr %i.nh, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  %wide.load1040 = load <4 x double>, ptr %i.ni, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  %i.nj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nb, <4 x double> %broadcast.splat1030, <4 x double> %wide.load1037)
  %i.nk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nc, <4 x double> %broadcast.splat1030, <4 x double> %wide.load1038)
  %i.nl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nd, <4 x double> %broadcast.splat1030, <4 x double> %wide.load1039)
  %i.nm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ne, <4 x double> %broadcast.splat1030, <4 x double> %wide.load1040)
  store <4 x double> %i.nj, ptr %i.nf, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  store <4 x double> %i.nk, ptr %i.ng, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  store <4 x double> %i.nl, ptr %i.nh, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  store <4 x double> %i.nm, ptr %i.ni, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  %index.next1041 = add nuw i64 %index1032, 16    ; 2 uses
  %i.nn = icmp eq i64 %index.next1041, %n.vec1028
  br i1 %i.nn, label %middle.block1042, label %vector.body1031, !llvm.loop !31

middle.block1042:                                 ; preds = %vector.body1031
  %cmp.n1043 = icmp eq i64 %i.ls, %n.vec1028
  br i1 %cmp.n1043, label %.loopexit1191, label %vec.epilog.iter.check1048

vec.epilog.iter.check1048:                        ; preds = %middle.block1042
  %min.epilog.iters.check1049 = icmp eq i64 %i.mj, 0
  br i1 %min.epilog.iters.check1049, label %vec.epilog.scalar.ph1047.preheader, label %vec.epilog.ph1050, !prof !75

vec.epilog.ph1050:                                ; preds = %vector.main.loop.iter.check1025, %vec.epilog.iter.check1048
  %vec.epilog.resume.val1044 = phi i64 [ %n.vec1028, %vec.epilog.iter.check1048 ], [ 0, %vector.main.loop.iter.check1025 ]
  %n.vec1051 = and i64 %i.ls, -4                  ; 3 uses
  %i.no = add i64 %indvars.iv709, %n.vec1051
  %broadcast.splatinsert1052 = insertelement <4 x double> poison, double %i.mb, i64 0
  %broadcast.splat1053 = shufflevector <4 x double> %broadcast.splatinsert1052, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1054

vec.epilog.vector.body1054:                       ; preds = %vec.epilog.vector.body1054, %vec.epilog.ph1050
  %index1055 = phi i64 [ %vec.epilog.resume.val1044, %vec.epilog.ph1050 ], [ %index.next1058, %vec.epilog.vector.body1054 ] ; 2 uses
  %i.np = add nuw i64 %indvars.iv709, %index1055  ; 2 uses
  %i.nq = trunc nuw nsw i64 %i.np to i32
  %i.nr = add i32 %i.mc, %i.nq
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ns
  %wide.load1056 = load <4 x double>, ptr %i.nt, align 8, !tbaa !70, !alias.scope !81 ; 3 uses
  %i.nu = fcmp oge <4 x double> %wide.load1056, zeroinitializer
  %i.nv = fneg <4 x double> %wide.load1056
  %i.nw = select <4 x i1> %i.nu, <4 x double> %wide.load1056, <4 x double> %i.nv
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.np ; 2 uses
  %wide.load1057 = load <4 x double>, ptr %i.nx, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  %i.ny = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nw, <4 x double> %broadcast.splat1053, <4 x double> %wide.load1057)
  store <4 x double> %i.ny, ptr %i.nx, align 8, !tbaa !70, !alias.scope !82, !noalias !81
  %index.next1058 = add nuw i64 %index1055, 4     ; 2 uses
  %i.nz = icmp eq i64 %index.next1058, %n.vec1051
  br i1 %i.nz, label %vec.epilog.middle.block1059, label %vec.epilog.vector.body1054, !llvm.loop !32

vec.epilog.middle.block1059:                      ; preds = %vec.epilog.vector.body1054
  %cmp.n1060 = icmp eq i64 %i.ls, %n.vec1051
  br i1 %cmp.n1060, label %.loopexit1191, label %vec.epilog.scalar.ph1047.preheader

vec.epilog.scalar.ph1047.preheader:               ; preds = %vector.memcheck1012, %vector.scevcheck1009, %iter.check1046, %vec.epilog.iter.check1048, %vec.epilog.middle.block1059
  %indvars.iv711.ph = phi i64 [ %indvars.iv709, %iter.check1046 ], [ %indvars.iv709, %vector.scevcheck1009 ], [ %indvars.iv709, %vector.memcheck1012 ], [ %i.mk, %vec.epilog.iter.check1048 ], [ %i.no, %vec.epilog.middle.block1059 ] ; 4 uses
  %i.oa = sub i64 %wide.trip.count718, %indvars.iv711.ph
  %i.ob = sub i64 %i.lo, %indvars.iv711.ph
  %xtraiter1214 = and i64 %i.oa, 3                ; 2 uses
  %lcmp.mod1215.not = icmp eq i64 %xtraiter1214, 0
  br i1 %lcmp.mod1215.not, label %vec.epilog.scalar.ph1047.prol.loopexit, label %vec.epilog.scalar.ph1047.prol

vec.epilog.scalar.ph1047.prol:                    ; preds = %vec.epilog.scalar.ph1047.preheader, %vec.epilog.scalar.ph1047.prol
  %indvars.iv711.prol = phi i64 [ %indvars.iv.next712.prol, %vec.epilog.scalar.ph1047.prol ], [ %indvars.iv711.ph, %vec.epilog.scalar.ph1047.preheader ] ; 3 uses
  %prol.iter1216 = phi i64 [ %prol.iter1216.next, %vec.epilog.scalar.ph1047.prol ], [ 0, %vec.epilog.scalar.ph1047.preheader ]
  %i.oc = trunc nuw nsw i64 %indvars.iv711.prol to i32
  %i.od = add i32 %i.mc, %i.oc
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.oe
  %i.og = load double, ptr %i.of, align 8, !tbaa !70 ; 3 uses
  %i.oh = fcmp oge double %i.og, 0.000000e+00
  %i.oi = fneg double %i.og
  %i.oj = select i1 %i.oh, double %i.og, double %i.oi
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv711.prol ; 2 uses
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !70
  %i.om = call double @llvm.fmuladd.f64(double %i.oj, double %i.mb, double %i.ol)
  store double %i.om, ptr %i.ok, align 8, !tbaa !70
  %indvars.iv.next712.prol = add nuw nsw i64 %indvars.iv711.prol, 1 ; 2 uses
  %prol.iter1216.next = add i64 %prol.iter1216, 1 ; 2 uses
  %prol.iter1216.cmp.not = icmp eq i64 %prol.iter1216.next, %xtraiter1214
  br i1 %prol.iter1216.cmp.not, label %vec.epilog.scalar.ph1047.prol.loopexit, label %vec.epilog.scalar.ph1047.prol, !llvm.loop !33

vec.epilog.scalar.ph1047.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1047.prol, %vec.epilog.scalar.ph1047.preheader
  %indvars.iv711.unr = phi i64 [ %indvars.iv711.ph, %vec.epilog.scalar.ph1047.preheader ], [ %indvars.iv.next712.prol, %vec.epilog.scalar.ph1047.prol ]
  %i.on = icmp ult i64 %i.ob, 3
  br i1 %i.on, label %.loopexit1191, label %vec.epilog.scalar.ph1047.preheader.new

vec.epilog.scalar.ph1047.preheader.new:           ; preds = %vec.epilog.scalar.ph1047.prol.loopexit
  %invariant.op = add i32 1, %i.mc
  br label %vec.epilog.scalar.ph1047

vec.epilog.scalar.ph1047:                         ; preds = %vec.epilog.scalar.ph1047, %vec.epilog.scalar.ph1047.preheader.new
  %indvars.iv711 = phi i64 [ %indvars.iv711.unr, %vec.epilog.scalar.ph1047.preheader.new ], [ %indvars.iv.next712.3, %vec.epilog.scalar.ph1047 ] ; 7 uses
  %i.oo = trunc nuw nsw i64 %indvars.iv711 to i32
  %i.op = add i32 %i.mc, %i.oo
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.oq
  %i.os = load double, ptr %i.or, align 8, !tbaa !70 ; 3 uses
  %i.ot = fcmp oge double %i.os, 0.000000e+00
  %i.ou = fneg double %i.os
  %i.ov = select i1 %i.ot, double %i.os, double %i.ou
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv711 ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !70
  %i.oy = call double @llvm.fmuladd.f64(double %i.ov, double %i.mb, double %i.ox)
  store double %i.oy, ptr %i.ow, align 8, !tbaa !70
  %i.oz = trunc i64 %indvars.iv711 to i32
  %.reass = add i32 %i.oz, %invariant.op
  %i.pa = sext i32 %.reass to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.pa
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !70 ; 3 uses
  %i.pd = fcmp oge double %i.pc, 0.000000e+00
  %i.pe = fneg double %i.pc
  %i.pf = select i1 %i.pd, double %i.pc, double %i.pe
  %i.pg = getelementptr [8 x i8], ptr %12, i64 %indvars.iv711 ; 2 uses
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !70
  %i.pi = call double @llvm.fmuladd.f64(double %i.pf, double %i.mb, double %i.ph)
  store double %i.pi, ptr %i.pg, align 8, !tbaa !70
  %indvars.iv.next712.1 = add nuw nsw i64 %indvars.iv711, 2 ; 2 uses
  %i.pj = trunc nuw nsw i64 %indvars.iv.next712.1 to i32
  %i.pk = add i32 %i.mc, %i.pj
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.pl
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !70 ; 3 uses
  %i.po = fcmp oge double %i.pn, 0.000000e+00
  %i.pp = fneg double %i.pn
  %i.pq = select i1 %i.po, double %i.pn, double %i.pp
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next712.1 ; 2 uses
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !70
  %i.pt = call double @llvm.fmuladd.f64(double %i.pq, double %i.mb, double %i.ps)
  store double %i.pt, ptr %i.pr, align 8, !tbaa !70
  %indvars.iv.next712.2 = add nuw nsw i64 %indvars.iv711, 3 ; 2 uses
  %i.pu = trunc nuw nsw i64 %indvars.iv.next712.2 to i32
  %i.pv = add i32 %i.mc, %i.pu
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.pw
  %i.py = load double, ptr %i.px, align 8, !tbaa !70 ; 3 uses
  %i.pz = fcmp oge double %i.py, 0.000000e+00
  %i.qa = fneg double %i.py
  %i.qb = select i1 %i.pz, double %i.py, double %i.qa
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next712.2 ; 2 uses
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !70
  %i.qe = call double @llvm.fmuladd.f64(double %i.qb, double %i.mb, double %i.qd)
  store double %i.qe, ptr %i.qc, align 8, !tbaa !70
  %indvars.iv.next712.3 = add nuw nsw i64 %indvars.iv711, 4 ; 2 uses
  %exitcond715.not.3 = icmp eq i64 %indvars.iv.next712.3, %wide.trip.count718
  br i1 %exitcond715.not.3, label %.loopexit1191, label %vec.epilog.scalar.ph1047, !llvm.loop !34

.loopexit1191:                                    ; preds = %vec.epilog.scalar.ph1047.prol.loopexit, %vec.epilog.scalar.ph1047, %vec.epilog.middle.block1059, %middle.block1042
  %i.qf = add i32 %i.lj, %.2485.neg589
  %i.qg = add i32 %i.qf, %.2588
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %i.qh = trunc i64 %indvars.iv709 to i32
  %i.qi = xor i32 %i.qh, -1
  %exitcond719.not = icmp eq i64 %indvars.iv.next710, %wide.trip.count718
  %indvar.next1011 = add i64 %indvar1010, 1
  br i1 %exitcond719.not, label %.loopexit553, label %iter.check1046, !llvm.loop !35

bb.u:                                             ; preds = %.lr.ph600, %._crit_edge595
  %scev.check.iv = phi i32 [ 2, %.lr.ph600 ], [ %scev.check.iv.next, %._crit_edge595 ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph600 ], [ %indvar.next, %._crit_edge595 ] ; 5 uses
  %indvars.iv726 = phi i64 [ 1, %.lr.ph600 ], [ %indvars.iv.next727, %._crit_edge595 ] ; 5 uses
  %indvars.iv720 = phi i32 [ 2, %.lr.ph600 ], [ %indvars.iv.next721, %._crit_edge595 ] ; 3 uses
  %.3486.neg599 = phi i32 [ -1, %.lr.ph600 ], [ %i.vi, %._crit_edge595 ] ; 2 uses
  %.3598 = phi i32 [ 1, %.lr.ph600 ], [ %i.vg, %._crit_edge595 ] ; 2 uses
  %i.qj = sub i32 %i.lr, %indvar                  ; 3 uses
  %i.qk = zext i32 %i.qj to i64
  %i.ql = add nuw nsw i64 %i.qk, 1                ; 5 uses
  %i.qm = sext i32 %indvars.iv720 to i64
  %i.qn = shl nsw i64 %i.qm, 3                    ; 2 uses
  %scevgep965 = getelementptr i8, ptr %scevgep, i64 %i.qn
  %i.qo = sub i32 %i.lr, %indvar
  %i.qp = zext i32 %i.qo to i64
  %i.qq = shl nuw nsw i64 %i.qp, 3                ; 2 uses
  %i.qr = getelementptr i8, ptr %12, i64 %i.qn
  %scevgep966 = getelementptr i8, ptr %i.qr, i64 %i.qq
  %i.qs = sext i32 %scev.check.iv to i64
  %i.qt = shl nsw i64 %i.qs, 3                    ; 2 uses
  %scevgep968 = getelementptr i8, ptr %scevgep967, i64 %i.qt
  %i.qu = getelementptr i8, ptr %5, i64 %i.qt
  %scevgep969 = getelementptr i8, ptr %i.qu, i64 %i.qq
  %i.qv = sub i32 %i.bu, %indvar
  %gep852 = getelementptr [8 x i8], ptr %invariant.gep851, i64 %indvars.iv726
  %i.qw = load double, ptr %gep852, align 8, !tbaa !70 ; 3 uses
  %i.qx = fcmp oge double %i.qw, 0.000000e+00
  %i.qy = fneg double %i.qw
  %i.qz = select i1 %i.qx, double %i.qw, double %i.qy ; 8 uses
  %indvars.iv.next727 = add nuw nsw i64 %indvars.iv726, 1 ; 2 uses
  %.not532591.not = icmp samesign ult i64 %indvars.iv726, %i.lq
  br i1 %.not532591.not, label %iter.check993, label %._crit_edge595

iter.check993:                                    ; preds = %bb.u
  %i.ra = sub i32 %i.lr, %indvar
  %i.rb = sext i32 %indvars.iv720 to i64          ; 6 uses
  %i.rc = add i32 %.3598, %.3486.neg599           ; 7 uses
  %min.iters.check971 = icmp ult i32 %i.qj, 3
  %i.rd = add i32 %scev.check.iv, %i.ra
  %i.re = icmp slt i32 %i.rd, %scev.check.iv
  %or.cond1194 = select i1 %min.iters.check971, i1 true, i1 %i.re
  br i1 %or.cond1194, label %vec.epilog.scalar.ph994.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check993
  %bound0 = icmp ult ptr %scevgep965, %scevgep969
  %bound1 = icmp ult ptr %scevgep968, %scevgep966
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph994.preheader, label %vector.main.loop.iter.check972

vector.main.loop.iter.check972:                   ; preds = %vector.memcheck
  %min.iters.check973 = icmp ult i32 %i.qj, 15
  br i1 %min.iters.check973, label %vec.epilog.ph997, label %vector.ph974

vector.ph974:                                     ; preds = %vector.main.loop.iter.check972
  %i.rf = and i64 %i.ql, 12
  %n.vec975 = and i64 %i.ql, 8589934576           ; 4 uses
  %i.rg = add nsw i64 %n.vec975, %i.rb
  %broadcast.splatinsert976 = insertelement <4 x double> poison, double %i.qz, i64 0
  %broadcast.splat977 = shufflevector <4 x double> %broadcast.splatinsert976, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %vector.ph974
  %index979 = phi i64 [ 0, %vector.ph974 ], [ %index.next988, %vector.body978 ] ; 2 uses
  %i.rh = add i64 %index979, %i.rb                ; 2 uses
  %i.ri = trunc nsw i64 %i.rh to i32
  %i.rj = add i32 %i.rc, %i.ri
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.rk ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 96
  %wide.load980 = load <4 x double>, ptr %i.rl, align 8, !tbaa !70, !alias.scope !83 ; 3 uses
  %wide.load981 = load <4 x double>, ptr %i.rm, align 8, !tbaa !70, !alias.scope !83 ; 3 uses
  %wide.load982 = load <4 x double>, ptr %i.rn, align 8, !tbaa !70, !alias.scope !83 ; 3 uses
  %wide.load983 = load <4 x double>, ptr %i.ro, align 8, !tbaa !70, !alias.scope !83 ; 3 uses
  %i.rp = fcmp oge <4 x double> %wide.load980, zeroinitializer
  %i.rq = fcmp oge <4 x double> %wide.load981, zeroinitializer
  %i.rr = fcmp oge <4 x double> %wide.load982, zeroinitializer
  %i.rs = fcmp oge <4 x double> %wide.load983, zeroinitializer
  %i.rt = fneg <4 x double> %wide.load980
  %i.ru = fneg <4 x double> %wide.load981
  %i.rv = fneg <4 x double> %wide.load982
  %i.rw = fneg <4 x double> %wide.load983
  %i.rx = select <4 x i1> %i.rp, <4 x double> %wide.load980, <4 x double> %i.rt
  %i.ry = select <4 x i1> %i.rq, <4 x double> %wide.load981, <4 x double> %i.ru
  %i.rz = select <4 x i1> %i.rr, <4 x double> %wide.load982, <4 x double> %i.rv
  %i.sa = select <4 x i1> %i.rs, <4 x double> %wide.load983, <4 x double> %i.rw
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.rh ; 5 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 32 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 64 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 96 ; 2 uses
  %wide.load984 = load <4 x double>, ptr %i.sb, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  %wide.load985 = load <4 x double>, ptr %i.sc, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  %wide.load986 = load <4 x double>, ptr %i.sd, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  %wide.load987 = load <4 x double>, ptr %i.se, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  %i.sf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rx, <4 x double> %broadcast.splat977, <4 x double> %wide.load984)
  %i.sg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ry, <4 x double> %broadcast.splat977, <4 x double> %wide.load985)
  %i.sh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rz, <4 x double> %broadcast.splat977, <4 x double> %wide.load986)
  %i.si = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sa, <4 x double> %broadcast.splat977, <4 x double> %wide.load987)
  store <4 x double> %i.sf, ptr %i.sb, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  store <4 x double> %i.sg, ptr %i.sc, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  store <4 x double> %i.sh, ptr %i.sd, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  store <4 x double> %i.si, ptr %i.se, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  %index.next988 = add nuw i64 %index979, 16      ; 2 uses
  %i.sj = icmp eq i64 %index.next988, %n.vec975
  br i1 %i.sj, label %middle.block989, label %vector.body978, !llvm.loop !39

middle.block989:                                  ; preds = %vector.body978
  %cmp.n990 = icmp eq i64 %i.ql, %n.vec975
  br i1 %cmp.n990, label %._crit_edge595, label %vec.epilog.iter.check995

vec.epilog.iter.check995:                         ; preds = %middle.block989
  %min.epilog.iters.check996 = icmp eq i64 %i.rf, 0
  br i1 %min.epilog.iters.check996, label %vec.epilog.scalar.ph994.preheader, label %vec.epilog.ph997, !prof !75

vec.epilog.ph997:                                 ; preds = %vector.main.loop.iter.check972, %vec.epilog.iter.check995
  %vec.epilog.resume.val991 = phi i64 [ %n.vec975, %vec.epilog.iter.check995 ], [ 0, %vector.main.loop.iter.check972 ]
  %n.vec998 = and i64 %i.ql, 8589934588           ; 3 uses
  %i.sk = add nsw i64 %n.vec998, %i.rb
  %broadcast.splatinsert999 = insertelement <4 x double> poison, double %i.qz, i64 0
  %broadcast.splat1000 = shufflevector <4 x double> %broadcast.splatinsert999, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1001

vec.epilog.vector.body1001:                       ; preds = %vec.epilog.vector.body1001, %vec.epilog.ph997
  %index1002 = phi i64 [ %vec.epilog.resume.val991, %vec.epilog.ph997 ], [ %index.next1005, %vec.epilog.vector.body1001 ] ; 2 uses
  %i.sl = add i64 %index1002, %i.rb               ; 2 uses
  %i.sm = trunc nsw i64 %i.sl to i32
  %i.sn = add i32 %i.rc, %i.sm
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.so
  %wide.load1003 = load <4 x double>, ptr %i.sp, align 8, !tbaa !70, !alias.scope !83 ; 3 uses
  %i.sq = fcmp oge <4 x double> %wide.load1003, zeroinitializer
  %i.sr = fneg <4 x double> %wide.load1003
  %i.ss = select <4 x i1> %i.sq, <4 x double> %wide.load1003, <4 x double> %i.sr
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.sl ; 2 uses
  %wide.load1004 = load <4 x double>, ptr %i.st, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  %i.su = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ss, <4 x double> %broadcast.splat1000, <4 x double> %wide.load1004)
  store <4 x double> %i.su, ptr %i.st, align 8, !tbaa !70, !alias.scope !84, !noalias !83
  %index.next1005 = add nuw i64 %index1002, 4     ; 2 uses
  %i.sv = icmp eq i64 %index.next1005, %n.vec998
  br i1 %i.sv, label %vec.epilog.middle.block1006, label %vec.epilog.vector.body1001, !llvm.loop !40

vec.epilog.middle.block1006:                      ; preds = %vec.epilog.vector.body1001
  %cmp.n1007 = icmp eq i64 %i.ql, %n.vec998
  br i1 %cmp.n1007, label %._crit_edge595, label %vec.epilog.scalar.ph994.preheader

vec.epilog.scalar.ph994.preheader:                ; preds = %vector.memcheck, %iter.check993, %vec.epilog.iter.check995, %vec.epilog.middle.block1006
  %indvars.iv722.ph = phi i64 [ %i.rb, %iter.check993 ], [ %i.rb, %vector.memcheck ], [ %i.rg, %vec.epilog.iter.check995 ], [ %i.sk, %vec.epilog.middle.block1006 ] ; 3 uses
  %i.sw = trunc i64 %indvars.iv722.ph to i32      ; 2 uses
  %i.sx = sub i32 %15, %i.sw
  %i.sy = sub i32 %i.bu, %i.sw
  %xtraiter1217 = and i32 %i.sx, 3                ; 2 uses
  %lcmp.mod1218.not = icmp eq i32 %xtraiter1217, 0
  br i1 %lcmp.mod1218.not, label %vec.epilog.scalar.ph994.prol.loopexit, label %vec.epilog.scalar.ph994.prol

vec.epilog.scalar.ph994.prol:                     ; preds = %vec.epilog.scalar.ph994.preheader, %vec.epilog.scalar.ph994.prol
  %indvars.iv722.prol = phi i64 [ %indvars.iv.next723.prol, %vec.epilog.scalar.ph994.prol ], [ %indvars.iv722.ph, %vec.epilog.scalar.ph994.preheader ] ; 3 uses
  %prol.iter1219 = phi i32 [ %prol.iter1219.next, %vec.epilog.scalar.ph994.prol ], [ 0, %vec.epilog.scalar.ph994.preheader ]
  %i.sz = trunc nsw i64 %indvars.iv722.prol to i32
  %i.ta = add i32 %i.rc, %i.sz
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.tb
  %i.td = load double, ptr %i.tc, align 8, !tbaa !70 ; 3 uses
  %i.te = fcmp oge double %i.td, 0.000000e+00
  %i.tf = fneg double %i.td
  %i.tg = select i1 %i.te, double %i.td, double %i.tf
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv722.prol ; 2 uses
  %i.ti = load double, ptr %i.th, align 8, !tbaa !70
  %i.tj = call double @llvm.fmuladd.f64(double %i.tg, double %i.qz, double %i.ti)
  store double %i.tj, ptr %i.th, align 8, !tbaa !70
  %indvars.iv.next723.prol = add nsw i64 %indvars.iv722.prol, 1 ; 2 uses
  %prol.iter1219.next = add i32 %prol.iter1219, 1 ; 2 uses
  %prol.iter1219.cmp.not = icmp eq i32 %prol.iter1219.next, %xtraiter1217
  br i1 %prol.iter1219.cmp.not, label %vec.epilog.scalar.ph994.prol.loopexit, label %vec.epilog.scalar.ph994.prol, !llvm.loop !41

vec.epilog.scalar.ph994.prol.loopexit:            ; preds = %vec.epilog.scalar.ph994.prol, %vec.epilog.scalar.ph994.preheader
  %indvars.iv722.unr = phi i64 [ %indvars.iv722.ph, %vec.epilog.scalar.ph994.preheader ], [ %indvars.iv.next723.prol, %vec.epilog.scalar.ph994.prol ]
  %i.tk = icmp ult i32 %i.sy, 3
  br i1 %i.tk, label %._crit_edge595, label %vec.epilog.scalar.ph994.preheader.new

vec.epilog.scalar.ph994.preheader.new:            ; preds = %vec.epilog.scalar.ph994.prol.loopexit
  %invariant.op1274 = add i32 1, %i.rc
  br label %vec.epilog.scalar.ph994

vec.epilog.scalar.ph994:                          ; preds = %vec.epilog.scalar.ph994, %vec.epilog.scalar.ph994.preheader.new
  %indvars.iv722 = phi i64 [ %indvars.iv722.unr, %vec.epilog.scalar.ph994.preheader.new ], [ %indvars.iv.next723.3, %vec.epilog.scalar.ph994 ] ; 7 uses
  %i.tl = trunc nsw i64 %indvars.iv722 to i32
  %i.tm = add i32 %i.rc, %i.tl
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.tn
  %i.tp = load double, ptr %i.to, align 8, !tbaa !70 ; 3 uses
  %i.tq = fcmp oge double %i.tp, 0.000000e+00
  %i.tr = fneg double %i.tp
  %i.ts = select i1 %i.tq, double %i.tp, double %i.tr
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv722 ; 2 uses
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !70
  %i.tv = call double @llvm.fmuladd.f64(double %i.ts, double %i.qz, double %i.tu)
  store double %i.tv, ptr %i.tt, align 8, !tbaa !70
  %i.tw = trunc i64 %indvars.iv722 to i32
  %.reass1275 = add i32 %i.tw, %invariant.op1274
  %i.tx = sext i32 %.reass1275 to i64
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.tx
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !70 ; 3 uses
  %i.ua = fcmp oge double %i.tz, 0.000000e+00
  %i.ub = fneg double %i.tz
  %i.uc = select i1 %i.ua, double %i.tz, double %i.ub
  %i.ud = getelementptr [8 x i8], ptr %12, i64 %indvars.iv722 ; 2 uses
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !70
  %i.uf = call double @llvm.fmuladd.f64(double %i.uc, double %i.qz, double %i.ue)
  store double %i.uf, ptr %i.ud, align 8, !tbaa !70
  %indvars.iv.next723.1 = add nsw i64 %indvars.iv722, 2 ; 2 uses
  %i.ug = trunc nsw i64 %indvars.iv.next723.1 to i32
  %i.uh = add i32 %i.rc, %i.ug
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ui
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !70 ; 3 uses
  %i.ul = fcmp oge double %i.uk, 0.000000e+00
  %i.um = fneg double %i.uk
  %i.un = select i1 %i.ul, double %i.uk, double %i.um
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next723.1 ; 2 uses
  %i.up = load double, ptr %i.uo, align 8, !tbaa !70
  %i.uq = call double @llvm.fmuladd.f64(double %i.un, double %i.qz, double %i.up)
  store double %i.uq, ptr %i.uo, align 8, !tbaa !70
  %indvars.iv.next723.2 = add nsw i64 %indvars.iv722, 3 ; 2 uses
  %i.ur = trunc nsw i64 %indvars.iv.next723.2 to i32
  %i.us = add i32 %i.rc, %i.ur
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ut
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !70 ; 3 uses
  %i.uw = fcmp oge double %i.uv, 0.000000e+00
  %i.ux = fneg double %i.uv
  %i.uy = select i1 %i.uw, double %i.uv, double %i.ux
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next723.2 ; 2 uses
  %i.va = load double, ptr %i.uz, align 8, !tbaa !70
  %i.vb = call double @llvm.fmuladd.f64(double %i.uy, double %i.qz, double %i.va)
  store double %i.vb, ptr %i.uz, align 8, !tbaa !70
  %indvars.iv.next723.3 = add nsw i64 %indvars.iv722, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next723.3 to i32
  %exitcond725.not.3 = icmp eq i32 %i.lp, %lftr.wideiv.3
  br i1 %exitcond725.not.3, label %._crit_edge595, label %vec.epilog.scalar.ph994, !llvm.loop !42

._crit_edge595:                                   ; preds = %vec.epilog.scalar.ph994.prol.loopexit, %vec.epilog.scalar.ph994, %middle.block989, %vec.epilog.middle.block1006, %bb.u
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv726 ; 2 uses
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !70
  %i.ve = fadd double %i.qz, %i.vd
  store double %i.ve, ptr %i.vc, align 8, !tbaa !70
  %i.vf = add i32 %i.lp, %.3486.neg599
  %i.vg = add i32 %i.vf, %.3598
  %indvars.iv.next721 = add nuw i32 %indvars.iv720, 1
  %i.vh = trunc i64 %indvars.iv726 to i32
  %i.vi = xor i32 %i.vh, -1
  %exitcond731.not = icmp eq i64 %indvars.iv.next727, %wide.trip.count730
  %indvar.next = add i32 %indvar, 1
  %scev.check.iv.next = add i32 %scev.check.iv, %i.qv
  br i1 %exitcond731.not, label %.loopexit553, label %bb.u, !llvm.loop !43

bb.v:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not514, label %.preheader556, label %.preheader558

.preheader558:                                    ; preds = %bb.w
  br i1 %.not519569, label %._crit_edge639.thread, label %.preheader551.preheader

.preheader551.preheader:                          ; preds = %.preheader558
  %i.vj = add nuw i32 %i.bu, 1
  %wide.trip.count746 = zext i32 %i.vj to i64
  %invariant.gep855 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd ; 5 uses
  br label %.preheader551

.preheader556:                                    ; preds = %bb.w
  br i1 %.not519569, label %._crit_edge639.thread, label %.lr.ph615.preheader

.lr.ph615.preheader:                              ; preds = %.preheader556
  %i.vk = add nuw i32 %i.bu, 1
  %wide.trip.count756 = zext i32 %i.vk to i64
  %invariant.gep861 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  %invariant.gep859 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd ; 5 uses
  br label %.lr.ph615

.preheader551:                                    ; preds = %.preheader551.preheader, %.epilog-lcssa
  %indvar1220 = phi i64 [ 0, %.preheader551.preheader ], [ %indvar.next1221, %.epilog-lcssa ] ; 3 uses
  %indvars.iv741 = phi i64 [ 1, %.preheader551.preheader ], [ %indvars.iv.next742, %.epilog-lcssa ] ; 3 uses
  %.4605 = phi i32 [ 1, %.preheader551.preheader ], [ %i.xq, %.epilog-lcssa ] ; 2 uses
  %i.vl = add i64 %indvar1220, 1                  ; 2 uses
  %i.vm = sext i32 %.4605 to i64
  %invariant.gep853 = getelementptr [8 x i8], ptr %i.g, i64 %i.vm ; 5 uses
  %xtraiter1222 = and i64 %i.vl, 3                ; 3 uses
  %i.vn = icmp ult i64 %indvar1220, 3
  br i1 %i.vn, label %.epil.preheader, label %.preheader551.new

.preheader551.new:                                ; preds = %.preheader551
  %unroll_iter = and i64 %i.vl, -4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader551.new
  %indvars.iv732 = phi i64 [ 1, %.preheader551.new ], [ %indvars.iv.next733.3, %bb.x ] ; 6 uses
  %.0477602 = phi double [ 0.000000e+00, %.preheader551.new ], [ %i.xb, %bb.x ]
  %niter = phi i64 [ 0, %.preheader551.new ], [ %niter.next.3, %bb.x ]
  %gep854 = getelementptr [8 x i8], ptr %invariant.gep853, i64 %indvars.iv732
  %i.vo = getelementptr i8, ptr %gep854, i64 -8
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !70 ; 3 uses
  %i.vq = fcmp oge double %i.vp, 0.000000e+00
  %i.vr = fneg double %i.vp
  %i.vs = select i1 %i.vq, double %i.vp, double %i.vr
  %gep856 = getelementptr [8 x i8], ptr %invariant.gep855, i64 %indvars.iv732
  %i.vt = load double, ptr %gep856, align 8, !tbaa !70 ; 3 uses
  %i.vu = fcmp oge double %i.vt, 0.000000e+00
  %i.vv = fneg double %i.vt
  %i.vw = select i1 %i.vu, double %i.vt, double %i.vv
  %i.vx = call double @llvm.fmuladd.f64(double %i.vs, double %i.vw, double %.0477602)
  %indvars.iv.next733 = add nuw nsw i64 %indvars.iv732, 1 ; 2 uses
  %gep854.1 = getelementptr [8 x i8], ptr %invariant.gep853, i64 %indvars.iv.next733
  %i.vy = getelementptr i8, ptr %gep854.1, i64 -8
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !70 ; 3 uses
  %i.wa = fcmp oge double %i.vz, 0.000000e+00
  %i.wb = fneg double %i.vz
  %i.wc = select i1 %i.wa, double %i.vz, double %i.wb
  %gep856.1 = getelementptr [8 x i8], ptr %invariant.gep855, i64 %indvars.iv.next733
  %i.wd = load double, ptr %gep856.1, align 8, !tbaa !70 ; 3 uses
  %i.we = fcmp oge double %i.wd, 0.000000e+00
  %i.wf = fneg double %i.wd
  %i.wg = select i1 %i.we, double %i.wd, double %i.wf
  %i.wh = call double @llvm.fmuladd.f64(double %i.wc, double %i.wg, double %i.vx)
  %indvars.iv.next733.1 = add nuw nsw i64 %indvars.iv732, 2 ; 2 uses
  %gep854.2 = getelementptr [8 x i8], ptr %invariant.gep853, i64 %indvars.iv.next733.1
  %i.wi = getelementptr i8, ptr %gep854.2, i64 -8
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !70 ; 3 uses
  %i.wk = fcmp oge double %i.wj, 0.000000e+00
  %i.wl = fneg double %i.wj
  %i.wm = select i1 %i.wk, double %i.wj, double %i.wl
  %gep856.2 = getelementptr [8 x i8], ptr %invariant.gep855, i64 %indvars.iv.next733.1
  %i.wn = load double, ptr %gep856.2, align 8, !tbaa !70 ; 3 uses
  %i.wo = fcmp oge double %i.wn, 0.000000e+00
  %i.wp = fneg double %i.wn
  %i.wq = select i1 %i.wo, double %i.wn, double %i.wp
  %i.wr = call double @llvm.fmuladd.f64(double %i.wm, double %i.wq, double %i.wh)
  %indvars.iv.next733.2 = add nuw nsw i64 %indvars.iv732, 3 ; 2 uses
  %gep854.3 = getelementptr [8 x i8], ptr %invariant.gep853, i64 %indvars.iv.next733.2
  %i.ws = getelementptr i8, ptr %gep854.3, i64 -8
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !70 ; 3 uses
  %i.wu = fcmp oge double %i.wt, 0.000000e+00
  %i.wv = fneg double %i.wt
  %i.ww = select i1 %i.wu, double %i.wt, double %i.wv
  %gep856.3 = getelementptr [8 x i8], ptr %invariant.gep855, i64 %indvars.iv.next733.2
  %i.wx = load double, ptr %gep856.3, align 8, !tbaa !70 ; 3 uses
  %i.wy = fcmp oge double %i.wx, 0.000000e+00
  %i.wz = fneg double %i.wx
  %i.xa = select i1 %i.wy, double %i.wx, double %i.wz
end_hunk_1
