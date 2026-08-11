loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DTPTTR\00", align 1

; Function Attrs: nounwind uwtable
define void @dtpttr_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = load i32, ptr %4, align 4, !tbaa !8      ; 3 uses
  %narrow = xor i32 %i.d, -1
  %i.e = sext i32 %narrow to i64                  ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %3, i64 %i.e ; 2 uses
  store i32 0, ptr %5, align 4, !tbaa !8
  %i.g = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #4
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr %1, align 4, !tbaa !8      ; 7 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %4, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1)
  %i.l = icmp slt i32 %i.k, %spec.select
  br i1 %i.l, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.pr = load i32, ptr %5, align 4, !tbaa !8      ; 2 uses
  %.not54 = icmp eq i32 %.pr, 0
  br i1 %.not54, label %bb.f, label %.thread

.thread.sink.split:                               ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -5, %bb.d ] ; 2 uses
  store i32 %.sink, ptr %5, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %i.m = phi i32 [ %.pr, %bb.e ], [ %.sink, %.thread.sink.split ]
  %i.n = sub nsw i32 0, %i.m
  store i32 %i.n, ptr %i.c, align 4, !tbaa !8
  %i.o = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c, i32 noundef 6) #4 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not5569 = icmp eq i32 %i.i, 0                 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not5569, label %.loopexit, label %.preheader60.preheader

.preheader60.preheader:                           ; preds = %bb.g
  %i.p = add nuw i32 %i.i, 1
  %i.q = sext i32 %i.d to i64                     ; 2 uses
  %wide.trip.count84 = zext i32 %i.p to i64       ; 3 uses
  %i.r = shl nsw i64 %i.q, 3                      ; 2 uses
  %i.s = add i64 %i.r, %i.b
  %i.t = shl nsw i64 %i.e, 3
  %i.u = add i64 %i.s, %i.t
  %i.v = add i64 %i.u, 8
  %i.w = add nsw i64 %i.r, 8
  %i.x = zext nneg i32 %i.i to i64
  %i.y = zext nneg i32 %i.i to i64
  br label %iter.check

iter.check:                                       ; preds = %.preheader60.preheader, %.loopexit158
  %indvar = phi i64 [ 0, %.preheader60.preheader ], [ %indvar.next, %.loopexit158 ] ; 3 uses
  %indvars.iv76 = phi i64 [ 1, %.preheader60.preheader ], [ %indvars.iv.next77, %.loopexit158 ] ; 8 uses
  %.066 = phi i64 [ 0, %.preheader60.preheader ], [ %indvars.iv.next.lcssa, %.loopexit158 ] ; 7 uses
  %i.z = sub i64 %i.x, %indvar                    ; 7 uses
  %i.aa = mul nsw i64 %indvars.iv76, %i.q
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.aa ; 11 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %6 = mul i64 %i.w, %indvar
  %i.ab = shl i64 %.066, 3
  %i.ac = add i64 %i.v, %6
  %i.ad = add i64 %i.ab, %i.a
  %i.ae = sub i64 %i.ad, %i.ac
  %diff.check = icmp ugt i64 %i.ae, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check111 = icmp ult i64 %i.z, 16
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 5 uses
  %i.ag = add i64 %indvars.iv76, %n.vec
  %i.ah = add i64 %.066, %n.vec                   ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %2, i64 %.066
  %i.aj = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv76
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %index ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %i.am = getelementptr i8, ptr %i.ak, i64 64
  %i.an = getelementptr i8, ptr %i.ak, i64 96
  %wide.load = load <4 x double>, ptr %i.ak, align 8, !tbaa !9
  %wide.load112 = load <4 x double>, ptr %i.al, align 8, !tbaa !9
  %wide.load113 = load <4 x double>, ptr %i.am, align 8, !tbaa !9
  %wide.load114 = load <4 x double>, ptr %i.an, align 8, !tbaa !9
  %i.ao = getelementptr [8 x i8], ptr %i.aj, i64 %index ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = getelementptr i8, ptr %i.ao, i64 64
  %i.ar = getelementptr i8, ptr %i.ao, i64 96
  store <4 x double> %wide.load, ptr %i.ao, align 8, !tbaa !9
  store <4 x double> %wide.load112, ptr %i.ap, align 8, !tbaa !9
  store <4 x double> %wide.load113, ptr %i.aq, align 8, !tbaa !9
  store <4 x double> %wide.load114, ptr %i.ar, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit158, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %i.z, -4                    ; 4 uses
  %i.at = add i64 %indvars.iv76, %n.vec116
  %i.au = add i64 %.066, %n.vec116                ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %2, i64 %.066
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv76
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %i.av, i64 %index117
  %wide.load118 = load <4 x double>, ptr %i.ax, align 8, !tbaa !9
  %i.ay = getelementptr [8 x i8], ptr %i.aw, i64 %index117
  store <4 x double> %wide.load118, ptr %i.ay, align 8, !tbaa !9
  %index.next119 = add nuw i64 %index117, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next119, %n.vec116
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.z, %n.vec116
  br i1 %cmp.n120, label %.loopexit158, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv78.ph = phi i64 [ %indvars.iv76, %iter.check ], [ %indvars.iv76, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %.066, %iter.check ], [ %.066, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 2 uses
  %i.ba = sub i64 %wide.trip.count84, %indvars.iv78.ph
  %i.bb = sub i64 %i.y, %indvars.iv78.ph
  %xtraiter = and i64 %i.ba, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv78.prol = phi i64 [ %indvars.iv.next79.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv78.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !9
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv78.prol
  store double %i.bd, ptr %gep.prol, align 8, !tbaa !9
  %indvars.iv.next79.prol = add nuw nsw i64 %indvars.iv78.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !17

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.lcssa161.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv78.unr = phi i64 [ %indvars.iv78.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next79.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.be = icmp ult i64 %i.bb, 7
  br i1 %i.be, label %.loopexit158, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.7, %vec.epilog.scalar.ph ], [ %indvars.iv78.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv.a = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.bf = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.a
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !9
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv78
  store double %i.bg, ptr %gep, align 8, !tbaa !9
  %i.bh = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.a
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !9
  %i.bk = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv78
  %gep.1 = getelementptr i8, ptr %i.bk, i64 8
  store double %i.bj, ptr %gep.1, align 8, !tbaa !9
  %i.bl = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.a
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !9
  %i.bo = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv78
  %gep.2 = getelementptr i8, ptr %i.bo, i64 16
  store double %i.bn, ptr %gep.2, align 8, !tbaa !9
  %i.bp = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.a
  %i.bq = getelementptr i8, ptr %i.bp, i64 24
  %i.br = load double, ptr %i.bq, align 8, !tbaa !9
  %i.bs = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv78
  %gep.3 = getelementptr i8, ptr %i.bs, i64 24
  store double %i.br, ptr %gep.3, align 8, !tbaa !9
  %i.bt = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.a
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !9
  %i.bw = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv78
  %gep.4 = getelementptr i8, ptr %i.bw, i64 32
  store double %i.bv, ptr %gep.4, align 8, !tbaa !9
  %i.bx = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.a
  %i.by = getelementptr i8, ptr %i.bx, i64 40
  %i.bz = load double, ptr %i.by, align 8, !tbaa !9
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv78
  %gep.5 = getelementptr i8, ptr %i.ca, i64 40
  store double %i.bz, ptr %gep.5, align 8, !tbaa !9
  %i.cb = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.a
  %i.cc = getelementptr i8, ptr %i.cb, i64 48
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !9
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv78
  %gep.6 = getelementptr i8, ptr %i.ce, i64 48
  store double %i.cd, ptr %gep.6, align 8, !tbaa !9
  %indvars.iv.next.7 = add nsw i64 %indvars.iv.a, 8 ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.a
  %i.cg = getelementptr i8, ptr %i.cf, i64 56
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !9
  %i.ci = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv78
  %gep.7 = getelementptr i8, ptr %i.ci, i64 56
  store double %i.ch, ptr %gep.7, align 8, !tbaa !9
  %indvars.iv.next79.7 = add nuw nsw i64 %indvars.iv78, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next79.7, %wide.trip.count84
  br i1 %exitcond.not.7, label %.loopexit158, label %vec.epilog.scalar.ph, !llvm.loop !19

.loopexit158:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.au, %vec.epilog.middle.block ], [ %i.ah, %middle.block ], [ %indvars.iv.next.lcssa161.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.7, %vec.epilog.scalar.ph ]
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count84
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond85.not, label %.loopexit, label %iter.check, !llvm.loop !20

bb.h:                                             ; preds = %bb.f
  br i1 %.not5569, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %i.cj = sext i32 %i.d to i64                    ; 3 uses
  %i.ck = add nuw i32 %i.i, 1
  %wide.trip.count105 = zext i32 %i.ck to i64
  %i.cl = or i64 %i.cj, %i.e
  %i.cm = shl nsw i64 %i.cl, 3
  %i.cn = add i64 %i.cm, %i.b
  %i.co = add i64 %i.cn, 8
  %i.cp = shl nsw i64 %i.cj, 3
  br label %iter.check143

iter.check143:                                    ; preds = %.preheader.preheader, %.loopexit157
  %indvar124 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next125, %.loopexit157 ] ; 2 uses
  %indvars.iv100 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next101, %.loopexit157 ] ; 10 uses
  %indvars.iv98 = phi i64 [ 2, %.preheader.preheader ], [ %indvars.iv.next99, %.loopexit157 ] ; 3 uses
  %.271 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next88.lcssa, %.loopexit157 ] ; 7 uses
  %i.cq = mul nsw i64 %indvars.iv100, %i.cj
  %invariant.gep108 = getelementptr [8 x i8], ptr %i.f, i64 %i.cq ; 11 uses
  %min.iters.check127 = icmp samesign ult i64 %indvars.iv100, 4
  br i1 %min.iters.check127, label %vec.epilog.scalar.ph144.preheader, label %vector.memcheck123

vector.memcheck123:                               ; preds = %iter.check143
  %7 = mul i64 %i.cp, %indvar124
  %i.cr = shl i64 %.271, 3
  %i.cs = add i64 %i.co, %7
  %i.ct = add i64 %i.cr, %i.a
  %i.cu = sub i64 %i.ct, %i.cs
  %diff.check126 = icmp ugt i64 %i.cu, -128
  br i1 %diff.check126, label %vec.epilog.scalar.ph144.preheader, label %vector.main.loop.iter.check128

vector.main.loop.iter.check128:                   ; preds = %vector.memcheck123
  %min.iters.check129 = icmp samesign ult i64 %indvars.iv100, 16
  br i1 %min.iters.check129, label %vec.epilog.ph147, label %vector.ph130

vector.ph130:                                     ; preds = %vector.main.loop.iter.check128
  %i.cv = and i64 %indvars.iv100, 12
  %n.vec131 = and i64 %indvars.iv100, 9223372036854775792 ; 5 uses
  %i.cw = or disjoint i64 %n.vec131, 1
  %i.cx = add i64 %.271, %n.vec131                ; 2 uses
  %i.cy = getelementptr [8 x i8], ptr %2, i64 %.271
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %index133 ; 4 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 32
  %i.db = getelementptr i8, ptr %i.cz, i64 64
  %i.dc = getelementptr i8, ptr %i.cz, i64 96
  %wide.load134 = load <4 x double>, ptr %i.cz, align 8, !tbaa !9
  %wide.load135 = load <4 x double>, ptr %i.da, align 8, !tbaa !9
  %wide.load136 = load <4 x double>, ptr %i.db, align 8, !tbaa !9
  %wide.load137 = load <4 x double>, ptr %i.dc, align 8, !tbaa !9
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep108, i64 %index133 ; 4 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = getelementptr i8, ptr %i.dd, i64 40
  %i.dg = getelementptr i8, ptr %i.dd, i64 72
  %i.dh = getelementptr i8, ptr %i.dd, i64 104
  store <4 x double> %wide.load134, ptr %i.de, align 8, !tbaa !9
  store <4 x double> %wide.load135, ptr %i.df, align 8, !tbaa !9
  store <4 x double> %wide.load136, ptr %i.dg, align 8, !tbaa !9
  store <4 x double> %wide.load137, ptr %i.dh, align 8, !tbaa !9
  %index.next138 = add nuw i64 %index133, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.di, label %middle.block139, label %vector.body132, !llvm.loop !21

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %indvars.iv100, %n.vec131
  br i1 %cmp.n140, label %.loopexit157, label %vec.epilog.iter.check145

vec.epilog.iter.check145:                         ; preds = %middle.block139
  %min.epilog.iters.check146 = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check146, label %vec.epilog.scalar.ph144.preheader, label %vec.epilog.ph147, !prof !15

vec.epilog.ph147:                                 ; preds = %vector.main.loop.iter.check128, %vec.epilog.iter.check145
  %vec.epilog.resume.val141 = phi i64 [ %n.vec131, %vec.epilog.iter.check145 ], [ 0, %vector.main.loop.iter.check128 ]
  %n.vec148 = and i64 %indvars.iv100, 9223372036854775804 ; 4 uses
  %i.dj = or disjoint i64 %n.vec148, 1
  %i.dk = add i64 %.271, %n.vec148                ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %2, i64 %.271
  br label %vec.epilog.vector.body149

vec.epilog.vector.body149:                        ; preds = %vec.epilog.vector.body149, %vec.epilog.ph147
  %index150 = phi i64 [ %vec.epilog.resume.val141, %vec.epilog.ph147 ], [ %index.next152, %vec.epilog.vector.body149 ] ; 3 uses
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %index150
  %wide.load151 = load <4 x double>, ptr %i.dm, align 8, !tbaa !9
  %i.dn = getelementptr [8 x i8], ptr %invariant.gep108, i64 %index150
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  store <4 x double> %wide.load151, ptr %i.do, align 8, !tbaa !9
  %index.next152 = add nuw i64 %index150, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next152, %n.vec148
  br i1 %i.dp, label %vec.epilog.middle.block153, label %vec.epilog.vector.body149, !llvm.loop !22

vec.epilog.middle.block153:                       ; preds = %vec.epilog.vector.body149
  %cmp.n154 = icmp eq i64 %indvars.iv100, %n.vec148
  br i1 %cmp.n154, label %.loopexit157, label %vec.epilog.scalar.ph144.preheader

vec.epilog.scalar.ph144.preheader:                ; preds = %vector.memcheck123, %iter.check143, %vec.epilog.iter.check145, %vec.epilog.middle.block153
  %indvars.iv89.ph = phi i64 [ 1, %iter.check143 ], [ 1, %vector.memcheck123 ], [ %i.cw, %vec.epilog.iter.check145 ], [ %i.dj, %vec.epilog.middle.block153 ] ; 4 uses
  %indvars.iv87.ph = phi i64 [ %.271, %iter.check143 ], [ %.271, %vector.memcheck123 ], [ %i.cx, %vec.epilog.iter.check145 ], [ %i.dk, %vec.epilog.middle.block153 ] ; 2 uses
  %i.dq = sub i64 %indvars.iv98, %indvars.iv89.ph
  %i.dr = sub i64 %indvars.iv100, %indvars.iv89.ph
  %xtraiter162 = and i64 %i.dq, 7                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %vec.epilog.scalar.ph144.prol.loopexit, label %vec.epilog.scalar.ph144.prol

vec.epilog.scalar.ph144.prol:                     ; preds = %vec.epilog.scalar.ph144.preheader, %vec.epilog.scalar.ph144.prol
  %indvars.iv89.prol = phi i64 [ %indvars.iv.next90.prol, %vec.epilog.scalar.ph144.prol ], [ %indvars.iv89.ph, %vec.epilog.scalar.ph144.preheader ] ; 2 uses
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %vec.epilog.scalar.ph144.prol ], [ %indvars.iv87.ph, %vec.epilog.scalar.ph144.preheader ] ; 2 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %vec.epilog.scalar.ph144.prol ], [ 0, %vec.epilog.scalar.ph144.preheader ]
  %indvars.iv.next88.prol = add nsw i64 %indvars.iv87.prol, 1 ; 3 uses
  %i.ds = getelementptr [8 x i8], ptr %2, i64 %indvars.iv87.prol
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !9
  %gep109.prol = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv89.prol
  store double %i.dt, ptr %gep109.prol, align 8, !tbaa !9
  %indvars.iv.next90.prol = add nuw nsw i64 %indvars.iv89.prol, 1 ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %vec.epilog.scalar.ph144.prol.loopexit, label %vec.epilog.scalar.ph144.prol, !llvm.loop !23

vec.epilog.scalar.ph144.prol.loopexit:            ; preds = %vec.epilog.scalar.ph144.prol, %vec.epilog.scalar.ph144.preheader
  %indvars.iv.next88.lcssa159.unr = phi i64 [ poison, %vec.epilog.scalar.ph144.preheader ], [ %indvars.iv.next88.prol, %vec.epilog.scalar.ph144.prol ]
  %indvars.iv89.unr = phi i64 [ %indvars.iv89.ph, %vec.epilog.scalar.ph144.preheader ], [ %indvars.iv.next90.prol, %vec.epilog.scalar.ph144.prol ]
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %vec.epilog.scalar.ph144.preheader ], [ %indvars.iv.next88.prol, %vec.epilog.scalar.ph144.prol ]
  %i.du = icmp ult i64 %i.dr, 7
  br i1 %i.du, label %.loopexit157, label %vec.epilog.scalar.ph144

vec.epilog.scalar.ph144:                          ; preds = %vec.epilog.scalar.ph144.prol.loopexit, %vec.epilog.scalar.ph144
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.7, %vec.epilog.scalar.ph144 ], [ %indvars.iv89.unr, %vec.epilog.scalar.ph144.prol.loopexit ] ; 9 uses
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.7, %vec.epilog.scalar.ph144 ], [ %indvars.iv87.unr, %vec.epilog.scalar.ph144.prol.loopexit ] ; 9 uses
  %i.dv = getelementptr [8 x i8], ptr %2, i64 %indvars.iv87
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !9
  %gep109 = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv89
  store double %i.dw, ptr %gep109, align 8, !tbaa !9
  %i.dx = getelementptr [8 x i8], ptr %2, i64 %indvars.iv87
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !9
  %i.ea = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv89
  %gep109.1 = getelementptr i8, ptr %i.ea, i64 8
  store double %i.dz, ptr %gep109.1, align 8, !tbaa !9
  %i.eb = getelementptr [8 x i8], ptr %2, i64 %indvars.iv87
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !9
  %i.ee = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv89
  %gep109.2 = getelementptr i8, ptr %i.ee, i64 16
  store double %i.ed, ptr %gep109.2, align 8, !tbaa !9
  %i.ef = getelementptr [8 x i8], ptr %2, i64 %indvars.iv87
  %i.eg = getelementptr i8, ptr %i.ef, i64 24
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !9
  %i.ei = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv89
  %gep109.3 = getelementptr i8, ptr %i.ei, i64 24
  store double %i.eh, ptr %gep109.3, align 8, !tbaa !9
  %i.ej = getelementptr [8 x i8], ptr %2, i64 %indvars.iv87
  %i.ek = getelementptr i8, ptr %i.ej, i64 32
  %i.el = load double, ptr %i.ek, align 8, !tbaa !9
  %i.em = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv89
  %gep109.4 = getelementptr i8, ptr %i.em, i64 32
  store double %i.el, ptr %gep109.4, align 8, !tbaa !9
  %i.en = getelementptr [8 x i8], ptr %2, i64 %indvars.iv87
  %i.eo = getelementptr i8, ptr %i.en, i64 40
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !9
  %i.eq = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv89
  %gep109.5 = getelementptr i8, ptr %i.eq, i64 40
  store double %i.ep, ptr %gep109.5, align 8, !tbaa !9
  %i.er = getelementptr [8 x i8], ptr %2, i64 %indvars.iv87
  %i.es = getelementptr i8, ptr %i.er, i64 48
  %i.et = load double, ptr %i.es, align 8, !tbaa !9
  %i.eu = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv89
  %gep109.6 = getelementptr i8, ptr %i.eu, i64 48
  store double %i.et, ptr %gep109.6, align 8, !tbaa !9
  %indvars.iv.next88.7 = add nsw i64 %indvars.iv87, 8 ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %2, i64 %indvars.iv87
  %i.ew = getelementptr i8, ptr %i.ev, i64 56
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !9
  %i.ey = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv89
  %gep109.7 = getelementptr i8, ptr %i.ey, i64 56
  store double %i.ex, ptr %gep109.7, align 8, !tbaa !9
  %indvars.iv.next90.7 = add nuw nsw i64 %indvars.iv89, 8 ; 2 uses
  %exitcond97.not.7 = icmp eq i64 %indvars.iv.next90.7, %indvars.iv98
  br i1 %exitcond97.not.7, label %.loopexit157, label %vec.epilog.scalar.ph144, !llvm.loop !24

.loopexit157:                                     ; preds = %vec.epilog.scalar.ph144.prol.loopexit, %vec.epilog.scalar.ph144, %vec.epilog.middle.block153, %middle.block139
  %indvars.iv.next88.lcssa = phi i64 [ %i.dk, %vec.epilog.middle.block153 ], [ %i.cx, %middle.block139 ], [ %indvars.iv.next88.lcssa159.unr, %vec.epilog.scalar.ph144.prol.loopexit ], [ %indvars.iv.next88.7, %vec.epilog.scalar.ph144 ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count105
  %indvar.next125 = add i64 %indvar124, 1
  br i1 %exitcond106.not, label %.loopexit, label %iter.check143, !llvm.loop !25

.loopexit:                                        ; preds = %.loopexit158, %.loopexit157, %bb.g, %bb.h, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12, !13, !14}
!22 = distinct !{!22, !12, !13, !14}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !12, !13}
!25 = distinct !{!25, !12}
end_hunk_0
