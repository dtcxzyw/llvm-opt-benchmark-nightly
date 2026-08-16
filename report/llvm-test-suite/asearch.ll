loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@D_endpos = external local_unnamed_addr global i32, align 4
@Init1 = external local_unnamed_addr global i32, align 4
@NO_ERR_MASK = external local_unnamed_addr global i32, align 4
@Init = external local_unnamed_addr global [0 x i32], align 4
@Mask = external local_unnamed_addr global [0 x i32], align 4
@AND = external local_unnamed_addr global i32, align 4
@endposition = external local_unnamed_addr global i32, align 4
@INVERSE = external local_unnamed_addr global i32, align 4
@FILENAMEONLY = external local_unnamed_addr global i32, align 4
@num_of_matched = external local_unnamed_addr global i32, align 4
@CurrentFileName = external global [0 x i8], align 1
@TRUNCATE = external local_unnamed_addr global i32, align 4
@I = external local_unnamed_addr global i32, align 4
@DELIMITER = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local void @asearch0(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 22 uses
  %i.b = alloca [10 x i32], align 16              ; 23 uses
  %i.c = alloca [98305 x i8], align 16            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 49151
  store i8 10, ptr %i.f, align 1, !tbaa !8
  %i.g = load i32, ptr @D_endpos, align 4, !tbaa !4 ; 5 uses
  %i.h = icmp ugt i32 %i.e, 1
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = add i32 %i.e, -1                         ; 2 uses
  %i.j = add i32 %i.e, -2
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.k = icmp ult i32 %i.j, 7
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.i, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0157186 = phi i32 [ %i.g, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.l = shl i32 %.0157186, 1
  %i.m = or i32 %i.l, %.0157186                   ; 2 uses
  %i.n = shl i32 %i.m, 1
  %i.o = or i32 %i.n, %i.m                        ; 2 uses
  %i.p = shl i32 %i.o, 1
  %i.q = or i32 %i.p, %i.o                        ; 2 uses
  %i.r = shl i32 %i.q, 1
  %i.s = or i32 %i.r, %i.q                        ; 2 uses
  %i.t = shl i32 %i.s, 1
  %i.u = or i32 %i.t, %i.s                        ; 2 uses
  %i.v = shl i32 %i.u, 1
  %i.w = or i32 %i.v, %i.u                        ; 2 uses
  %i.x = shl i32 %i.w, 1
  %i.y = or i32 %i.x, %i.w                        ; 2 uses
  %i.z = shl i32 %i.y, 1
  %i.aa = or i32 %i.z, %i.y                       ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0157186.epil.init = phi i32 [ %i.g, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod295 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod295)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0157186.epil = phi i32 [ %i.ac, %.lr.ph.epil ], [ %.0157186.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ab = shl i32 %.0157186.epil, 1
  %i.ac = or i32 %i.ab, %.0157186.epil            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !11

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0157.lcssa = phi i32 [ %i.g, %bb.a ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil ]
  %i.ad = load i32, ptr @Init1, align 4, !tbaa !4 ; 13 uses
  %i.ae = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !4 ; 12 uses
  %i.af = load i32, ptr @Init, align 4, !tbaa !4  ; 3 uses
  %i.ag = add i32 %2, 1                           ; 4 uses
  %wide.trip.count = zext i32 %i.ag to i64        ; 11 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ah, align 16, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.ai, align 16, !tbaa !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aj, align 16, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.ak, align 16, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %._crit_edge, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block
  %i.am = xor i32 %.0157.lcssa, -1                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 49152 ; 3 uses
  %i.ao = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %i.an, i32 noundef 49152) #7 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph220, label %.loopexit181

.lr.ph220:                                        ; preds = %.preheader
  %sext = shl i64 %i.d, 32
  %i.aq = ashr exact i64 %sext, 32
  %.not164189 = icmp eq i32 %2, 0                 ; 4 uses
  %i.ar = zext i32 %2 to i64                      ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ar
  %i.au = xor i32 %i.e, -1
  %i.av = add nsw i64 %wide.trip.count, -1        ; 12 uses
  %i.aw = add nsw i64 %wide.trip.count, -2        ; 4 uses
  %xtraiter296 = and i64 %i.av, 1
  %i.ax = icmp eq i64 %i.aw, 0
  %unroll_iter302 = and i64 %i.av, -2
  %lcmp.mod300.not = icmp eq i64 %xtraiter296, 0
  %lcmp.mod301 = trunc i64 %i.av to i1
  %min.iters.check281 = icmp ult i32 %i.ag, 8
  %n.vec283 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n290 = icmp eq i64 %n.vec283, %wide.trip.count
  %xtraiter304 = and i64 %i.av, 1
  %i.ay = icmp eq i64 %i.aw, 0
  %unroll_iter312 = and i64 %i.av, -2
  %lcmp.mod310.not = icmp eq i64 %xtraiter304, 0
  %lcmp.mod311 = trunc i64 %i.av to i1
  %xtraiter314 = and i64 %i.av, 1
  %i.az = icmp eq i64 %i.aw, 0
  %unroll_iter322 = and i64 %i.av, -2
  %lcmp.mod320.not = icmp eq i64 %xtraiter314, 0
  %lcmp.mod321 = trunc i64 %i.av to i1
  %min.iters.check269 = icmp ult i32 %i.ag, 8
  %n.vec271 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n278 = icmp eq i64 %n.vec271, %wide.trip.count
  %xtraiter324 = and i64 %i.av, 1
  %i.ba = icmp eq i64 %i.aw, 0
  %unroll_iter332 = and i64 %i.av, -2
  %lcmp.mod330.not = icmp eq i64 %xtraiter324, 0
  %lcmp.mod331 = trunc i64 %i.av to i1
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.af, ptr %i.bb, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.af, ptr %i.bc, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %.preheader, label %scalar.ph, !llvm.loop !16

bb.b:                                             ; preds = %.lr.ph220, %bb.s
  %i.bd = phi i32 [ %i.ao, %.lr.ph220 ], [ %i.kv, %bb.s ] ; 3 uses
  %.0219 = phi i32 [ 0, %.lr.ph220 ], [ %.1.lcssa, %bb.s ] ; 2 uses
  %.0149218 = phi i32 [ 49152, %.lr.ph220 ], [ %.4153, %bb.s ] ; 2 uses
  %.not163217 = phi i32 [ 49151, %.lr.ph220 ], [ 49152, %bb.s ] ; 2 uses
  %i.be = add nuw nsw i32 %i.bd, 49152            ; 4 uses
  %i.bf = icmp samesign ult i32 %i.bd, 49152      ; 2 uses
  br i1 %i.bf, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bg
  %i.bi = call ptr @strncpy(ptr noundef nonnull %i.bh, ptr noundef nonnull %0, i64 noundef %i.aq) #7 ; 0 uses
  %i.bj = add i32 %i.be, %i.e                     ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  store i8 0, ptr %i.bl, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0158 = phi i32 [ %i.bj, %bb.c ], [ %i.be, %bb.b ] ; 2 uses
  %i.bm = icmp ult i32 %.not163217, %.0158
  br i1 %i.bm, label %.lr.ph213, label %._crit_edge214

.lr.ph213:                                        ; preds = %bb.d
  %i.bn = add nuw nsw i32 %i.bd, 49151            ; 2 uses
  %.pre = load i32, ptr %i.b, align 16, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph213, %.loopexit
  %i.bo = phi i32 [ %.pre, %.lr.ph213 ], [ %i.kj, %.loopexit ] ; 4 uses
  %.1211 = phi i32 [ %.0219, %.lr.ph213 ], [ %.3, %.loopexit ] ; 2 uses
  %.2148210 = phi i32 [ %.not163217, %.lr.ph213 ], [ %i.ga, %.loopexit ] ; 4 uses
  %.1150209 = phi i32 [ %.0149218, %.lr.ph213 ], [ %.3152, %.loopexit ] ; 3 uses
  %i.bp = add nuw i32 %.2148210, 1                ; 2 uses
  %i.bq = zext i32 %.2148210 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @Mask, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4  ; 8 uses
  %i.bw = and i32 %i.bo, %i.ad
  %i.bx = lshr i32 %i.bo, 1
  %i.by = and i32 %i.bx, %i.bv
  %i.bz = or i32 %i.by, %i.bw                     ; 5 uses
  store i32 %i.bz, ptr %i.a, align 16, !tbaa !4
  br i1 %.not164189, label %._crit_edge193, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %bb.e
  br i1 %i.ax, label %.lr.ph192.epil.preheader, label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %.lr.ph192
  %i.ca = phi i32 [ %i.cy, %.lr.ph192 ], [ %i.bz, %.lr.ph192.preheader ]
  %i.cb = phi i32 [ %i.cp, %.lr.ph192 ], [ %i.bo, %.lr.ph192.preheader ] ; 2 uses
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.1, %.lr.ph192 ], [ 1, %.lr.ph192.preheader ] ; 4 uses
  %niter303 = phi i64 [ %niter303.next.1, %.lr.ph192 ], [ 0, %.lr.ph192.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv223
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4  ; 4 uses
  %i.ce = and i32 %i.cd, %i.ad
  %i.cf = or i32 %i.ca, %i.cb
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = and i32 %i.cg, %i.ae
  %i.ci = lshr i32 %i.cd, 1
  %i.cj = and i32 %i.ci, %i.bv
  %i.ck = or i32 %i.ce, %i.cj
  %i.cl = or i32 %i.ck, %i.ch
  %i.cm = or i32 %i.cl, %i.cb                     ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv223
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !4
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next224
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4  ; 4 uses
  %i.cq = and i32 %i.cp, %i.ad
  %i.cr = or i32 %i.cm, %i.cd
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = and i32 %i.cs, %i.ae
  %i.cu = lshr i32 %i.cp, 1
  %i.cv = and i32 %i.cu, %i.bv
  %i.cw = or i32 %i.cq, %i.cv
  %i.cx = or i32 %i.cw, %i.ct
  %i.cy = or i32 %i.cx, %i.cd                     ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next224
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next224.1 = add nuw nsw i64 %indvars.iv223, 2 ; 2 uses
  %niter303.next.1 = add nuw i64 %niter303, 2     ; 2 uses
  %niter303.ncmp.1 = icmp eq i64 %niter303.next.1, %unroll_iter302
  br i1 %niter303.ncmp.1, label %._crit_edge193.loopexit.unr-lcssa, label %.lr.ph192, !llvm.loop !17

._crit_edge193.loopexit.unr-lcssa:                ; preds = %.lr.ph192
  br i1 %lcmp.mod300.not, label %._crit_edge193, label %.lr.ph192.epil.preheader

.lr.ph192.epil.preheader:                         ; preds = %._crit_edge193.loopexit.unr-lcssa, %.lr.ph192.preheader
  %.epil.init = phi i32 [ %i.bz, %.lr.ph192.preheader ], [ %i.cy, %._crit_edge193.loopexit.unr-lcssa ]
  %.epil.init299 = phi i32 [ %i.bo, %.lr.ph192.preheader ], [ %i.cp, %._crit_edge193.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv223.epil.init = phi i64 [ 1, %.lr.ph192.preheader ], [ %indvars.iv.next224.1, %._crit_edge193.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod301)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv223.epil.init
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4  ; 2 uses
  %i.dc = and i32 %i.db, %i.ad
  %i.dd = or i32 %.epil.init, %.epil.init299
  %i.de = lshr i32 %i.dd, 1
  %i.df = and i32 %i.de, %i.ae
  %i.dg = lshr i32 %i.db, 1
  %i.dh = and i32 %i.dg, %i.bv
  %i.di = or i32 %i.dc, %i.dh
  %i.dj = or i32 %i.di, %i.df
  %i.dk = or i32 %i.dj, %.epil.init299
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv223.epil.init
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !4
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %.lr.ph192.epil.preheader, %._crit_edge193.loopexit.unr-lcssa, %bb.e
  %i.dm = and i32 %i.bz, %i.g
  %.not165 = icmp eq i32 %i.dm, 0
  br i1 %.not165, label %.loopexit180, label %bb.f

bb.f:                                             ; preds = %._crit_edge193
  %i.dn = add nsw i32 %.1211, 1                   ; 4 uses
  %i.do = load i32, ptr %i.as, align 4, !tbaa !4
  %i.dp = load i32, ptr @AND, align 4, !tbaa !4   ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 1
  %.pre253 = load i32, ptr @endposition, align 4  ; 2 uses
  %i.dr = and i32 %.pre253, %i.do                 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, %.pre253
  %or.cond = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %or.cond, label %bb.g, label %._crit_edge255

._crit_edge255:                                   ; preds = %bb.f
  %i.dt = icmp eq i32 %i.dp, 0
  %i.du = icmp ne i32 %i.dr, 0
  %i.dv = select i1 %i.dt, i1 %i.du, i1 false
  %i.dw = zext i1 %i.dv to i32
  %i.dx = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not166 = icmp eq i32 %i.dx, %i.dw
  br i1 %.not166, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge255
  %i.dy = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not167 = icmp eq i32 %i.dy, 0
  br i1 %.not167, label %bb.h, label %.loopexit181.sink.split

bb.h:                                             ; preds = %bb.g
  %.not168 = icmp slt i32 %.1150209, %i.bn
  br i1 %.not168, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dz = sub i32 %.2148210, %i.e
  call void @output(ptr noundef nonnull %i.c, i32 noundef %.1150209, i32 noundef %i.dz, i32 noundef %i.dn) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %._crit_edge255
  %i.ea = load i32, ptr @Init, align 4, !tbaa !4  ; 2 uses
  br i1 %min.iters.check281, label %scalar.ph280.preheader, label %vector.ph282

vector.ph282:                                     ; preds = %bb.j
  %broadcast.splatinsert284 = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %broadcast.splat285 = shufflevector <4 x i32> %broadcast.splatinsert284, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph282
  %index287 = phi i64 [ 0, %vector.ph282 ], [ %index.next288, %vector.body286 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index287 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x i32> %broadcast.splat285, ptr %i.eb, align 16, !tbaa !4
  store <4 x i32> %broadcast.splat285, ptr %i.ec, align 16, !tbaa !4
  %index.next288 = add nuw i64 %index287, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next288, %n.vec283
  br i1 %i.ed, label %middle.block289, label %vector.body286, !llvm.loop !18

middle.block289:                                  ; preds = %vector.body286
  br i1 %cmp.n290, label %.loopexit293, label %scalar.ph280.preheader

scalar.ph280.preheader:                           ; preds = %bb.j, %middle.block289
  %indvars.iv228.ph = phi i64 [ 0, %bb.j ], [ %n.vec283, %middle.block289 ]
  br label %scalar.ph280

scalar.ph280:                                     ; preds = %scalar.ph280.preheader, %scalar.ph280
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %scalar.ph280 ], [ %indvars.iv228.ph, %scalar.ph280.preheader ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv228
  store i32 %i.ea, ptr %i.ee, align 4, !tbaa !4
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
end_hunk_0
