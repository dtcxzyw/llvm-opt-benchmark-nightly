begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: nounwind uwtable
define void @dlaset_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !8      ; 5 uses
  %narrow = xor i32 %i.a, -1
  %i.b = sext i32 %narrow to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %5, i64 %i.b ; 9 uses
  %i.d = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !8      ; 4 uses
  %.not7991 = icmp slt i32 %i.e, 2
  %.pre155 = load i32, ptr %1, align 4, !tbaa !8  ; 5 uses
  br i1 %.not7991, label %.loopexit, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.b
  %i.f = sext i32 %i.a to i64
  %i.g = add nuw i32 %i.e, 1
  %wide.trip.count125 = zext i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph94, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph94 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv122 = phi i64 [ 2, %.lr.ph94 ], [ %indvars.iv.next123, %._crit_edge ] ; 3 uses
  %indvars.iv120 = phi i32 [ 1, %.lr.ph94 ], [ %indvars.iv.next121, %._crit_edge ] ; 2 uses
  %i.h = add i32 %indvar, 1
  %smin168 = tail call i32 @llvm.smin.i32(i32 %.pre155, i32 %i.h)
  %i.i = add nsw i32 %smin168, 1
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, -1                     ; 7 uses
  %i.l = trunc i64 %indvars.iv122 to i32
  %i.m = add i32 %i.l, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %.pre155)
  %.not8389 = icmp slt i32 %., 1
  br i1 %.not8389, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %smin = tail call i32 @llvm.smin.i32(i32 %.pre155, i32 %indvars.iv120)
  %i.n = add nsw i32 %smin, 1
  %i.o = mul nsw i64 %indvars.iv122, %i.f
  %wide.trip.count = zext i32 %i.n to i64
  %.pre = load double, ptr %3, align 8, !tbaa !9  ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.o ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check169 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check169, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.k, 12
  %n.vec = and i64 %i.k, -16                      ; 4 uses
  %i.q = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.pre, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = getelementptr i8, ptr %i.r, i64 40
  %i.u = getelementptr i8, ptr %i.r, i64 72
  %i.v = getelementptr i8, ptr %i.r, i64 104
  store <4 x double> %broadcast.splat, ptr %i.s, align 8, !tbaa !9
  store <4 x double> %broadcast.splat, ptr %i.t, align 8, !tbaa !9
  store <4 x double> %broadcast.splat, ptr %i.u, align 8, !tbaa !9
  store <4 x double> %broadcast.splat, ptr %i.v, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec170 = and i64 %i.k, -4                    ; 3 uses
  %i.x = or disjoint i64 %n.vec170, 1
  %broadcast.splatinsert171 = insertelement <4 x double> poison, double %.pre, i64 0
  %broadcast.splat172 = shufflevector <4 x double> %broadcast.splatinsert171, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index173 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next174, %vec.epilog.vector.body ] ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %invariant.gep, i64 %index173
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store <4 x double> %broadcast.splat172, ptr %i.z, align 8, !tbaa !9
  %index.next174 = add nuw i64 %index173, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next174, %n.vec170
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n175 = icmp eq i64 %i.k, %n.vec170
  br i1 %cmp.n175, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store double %.pre, ptr %gep, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %indvars.iv.next121 = add nuw nsw i32 %indvars.iv120, 1
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !18

bb.d:                                             ; preds = %bb.a
  %i.ab = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #4
  %.not73 = icmp eq i32 %i.ab, 0
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %1, align 4, !tbaa !8     ; 6 uses
  %i.ad = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %.84 = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ad) ; 2 uses
  %.not7799 = icmp slt i32 %.84, 1
  br i1 %.not7799, label %.loopexit, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %bb.e
  %i.ae = add i32 %i.ac, 1
  %i.af = sext i32 %i.a to i64
  %i.ag = sext i32 %i.ac to i64
  %i.ah = add nuw i32 %.84, 1
  %wide.trip.count136 = zext i32 %i.ah to i64
  %i.ai = add i32 %i.ac, -2
  br label %.lr.ph102

.loopexit86:                                      ; preds = %vec.epilog.scalar.ph193, %middle.block189, %vec.epilog.middle.block203, %.lr.ph102
  %indvars.iv.next128 = add nuw i32 %indvars.iv127, 1
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  %indvar.next178 = add i32 %indvar177, 1
  br i1 %exitcond137.not, label %.loopexit, label %.lr.ph102, !llvm.loop !19

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.loopexit86
  %indvar177 = phi i32 [ 0, %.lr.ph102.preheader ], [ %indvar.next178, %.loopexit86 ] ; 2 uses
  %indvars.iv133 = phi i64 [ 1, %.lr.ph102.preheader ], [ %indvars.iv.next134, %.loopexit86 ] ; 3 uses
  %indvars.iv127 = phi i32 [ 2, %.lr.ph102.preheader ], [ %indvars.iv.next128, %.loopexit86 ] ; 2 uses
  %i.aj = sub i32 %i.ai, %indvar177               ; 3 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nuw nsw i64 %i.ak, 1                ; 5 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %.not7895.not = icmp slt i64 %indvars.iv133, %i.ag
  br i1 %.not7895.not, label %iter.check192, label %.loopexit86

iter.check192:                                    ; preds = %.lr.ph102
  %i.am = sext i32 %indvars.iv127 to i64          ; 5 uses
  %i.an = mul nsw i64 %indvars.iv133, %i.af
  %.pre153 = load double, ptr %3, align 8, !tbaa !9 ; 3 uses
  %invariant.gep162 = getelementptr [8 x i8], ptr %i.c, i64 %i.an ; 3 uses
  %min.iters.check179 = icmp ult i32 %i.aj, 3
  br i1 %min.iters.check179, label %vec.epilog.scalar.ph193.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %iter.check192
  %min.iters.check181 = icmp ult i32 %i.aj, 15
  br i1 %min.iters.check181, label %vec.epilog.ph196, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %i.ao = and i64 %i.al, 12
  %n.vec183 = and i64 %i.al, 8589934576           ; 4 uses
  %i.ap = add nsw i64 %n.vec183, %i.am
  %broadcast.splatinsert184 = insertelement <4 x double> poison, double %.pre153, i64 0
  %broadcast.splat185 = shufflevector <4 x double> %broadcast.splatinsert184, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep274 = getelementptr [8 x i8], ptr %invariant.gep162, i64 %i.am
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph182
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next188, %vector.body186 ] ; 2 uses
  %gep275 = getelementptr [8 x i8], ptr %invariant.gep274, i64 %index187 ; 4 uses
  %i.aq = getelementptr i8, ptr %gep275, i64 32
  %i.ar = getelementptr i8, ptr %gep275, i64 64
  %i.as = getelementptr i8, ptr %gep275, i64 96
  store <4 x double> %broadcast.splat185, ptr %gep275, align 8, !tbaa !9
  store <4 x double> %broadcast.splat185, ptr %i.aq, align 8, !tbaa !9
  store <4 x double> %broadcast.splat185, ptr %i.ar, align 8, !tbaa !9
  store <4 x double> %broadcast.splat185, ptr %i.as, align 8, !tbaa !9
  %index.next188 = add nuw i64 %index187, 16      ; 2 uses
  %i.at = icmp eq i64 %index.next188, %n.vec183
  br i1 %i.at, label %middle.block189, label %vector.body186, !llvm.loop !20

middle.block189:                                  ; preds = %vector.body186
  %cmp.n190 = icmp eq i64 %i.al, %n.vec183
  br i1 %cmp.n190, label %.loopexit86, label %vec.epilog.iter.check194

vec.epilog.iter.check194:                         ; preds = %middle.block189
  %min.epilog.iters.check195 = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check195, label %vec.epilog.scalar.ph193.preheader, label %vec.epilog.ph196, !prof !15

vec.epilog.ph196:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check194
  %vec.epilog.resume.val191 = phi i64 [ %n.vec183, %vec.epilog.iter.check194 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec197 = and i64 %i.al, 8589934588           ; 3 uses
  %i.au = add nsw i64 %n.vec197, %i.am
  %broadcast.splatinsert198 = insertelement <4 x double> poison, double %.pre153, i64 0
  %broadcast.splat199 = shufflevector <4 x double> %broadcast.splatinsert198, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.gep276 = getelementptr [8 x i8], ptr %invariant.gep162, i64 %i.am
  br label %vec.epilog.vector.body200

vec.epilog.vector.body200:                        ; preds = %vec.epilog.vector.body200, %vec.epilog.ph196
  %index201 = phi i64 [ %vec.epilog.resume.val191, %vec.epilog.ph196 ], [ %index.next202, %vec.epilog.vector.body200 ] ; 2 uses
  %gep277 = getelementptr [8 x i8], ptr %invariant.gep276, i64 %index201
  store <4 x double> %broadcast.splat199, ptr %gep277, align 8, !tbaa !9
  %index.next202 = add nuw i64 %index201, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.av, label %vec.epilog.middle.block203, label %vec.epilog.vector.body200, !llvm.loop !21

vec.epilog.middle.block203:                       ; preds = %vec.epilog.vector.body200
  %cmp.n204 = icmp eq i64 %i.al, %n.vec197
  br i1 %cmp.n204, label %.loopexit86, label %vec.epilog.scalar.ph193.preheader

vec.epilog.scalar.ph193.preheader:                ; preds = %iter.check192, %vec.epilog.iter.check194, %vec.epilog.middle.block203
  %indvars.iv129.ph = phi i64 [ %i.am, %iter.check192 ], [ %i.ap, %vec.epilog.iter.check194 ], [ %i.au, %vec.epilog.middle.block203 ]
  br label %vec.epilog.scalar.ph193

vec.epilog.scalar.ph193:                          ; preds = %vec.epilog.scalar.ph193.preheader, %vec.epilog.scalar.ph193
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %vec.epilog.scalar.ph193 ], [ %indvars.iv129.ph, %vec.epilog.scalar.ph193.preheader ] ; 2 uses
  %gep163 = getelementptr [8 x i8], ptr %invariant.gep162, i64 %indvars.iv129
  store double %.pre153, ptr %gep163, align 8, !tbaa !9
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next130 to i32
  %exitcond132.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond132.not, label %.loopexit86, label %vec.epilog.scalar.ph193, !llvm.loop !22

bb.f:                                             ; preds = %bb.d
  %i.aw = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.not74108 = icmp slt i32 %i.aw, 1
  %.pre156 = load i32, ptr %1, align 4, !tbaa !8  ; 7 uses
  %.not75103 = icmp slt i32 %.pre156, 1
  %or.cond = select i1 %.not74108, i1 true, i1 %.not75103
  br i1 %or.cond, label %.loopexit, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %bb.f
  %i.ax = add nuw i32 %.pre156, 1
  %i.ay = sext i32 %i.a to i64
  %i.az = add nuw i32 %i.aw, 1
  %wide.trip.count146 = zext i32 %i.az to i64
  %wide.trip.count141 = zext i32 %i.ax to i64
  %i.ba = zext nneg i32 %.pre156 to i64           ; 5 uses
  %min.iters.check206 = icmp ult i32 %.pre156, 4
  %min.iters.check208 = icmp ult i32 %.pre156, 16
  %i.bb = and i64 %i.ba, 12
  %n.vec210 = and i64 %i.ba, 2147483632           ; 4 uses
  %i.bc = or disjoint i64 %n.vec210, 1
  %cmp.n217 = icmp eq i64 %n.vec210, %i.ba
  %min.epilog.iters.check222 = icmp eq i64 %i.bb, 0
  %n.vec224 = and i64 %i.ba, 2147483644           ; 3 uses
  %i.bd = or disjoint i64 %n.vec224, 1
  %cmp.n231 = icmp eq i64 %n.vec224, %i.ba
  br label %iter.check219

iter.check219:                                    ; preds = %.lr.ph106.preheader, %._crit_edge107
  %indvars.iv143 = phi i64 [ 1, %.lr.ph106.preheader ], [ %indvars.iv.next144, %._crit_edge107 ] ; 2 uses
  %i.be = mul nsw i64 %indvars.iv143, %i.ay
  %.pre154 = load double, ptr %3, align 8, !tbaa !9 ; 3 uses
  %invariant.gep164 = getelementptr [8 x i8], ptr %i.c, i64 %i.be ; 3 uses
  br i1 %min.iters.check206, label %vec.epilog.scalar.ph220.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %iter.check219
  br i1 %min.iters.check208, label %vec.epilog.ph223, label %vector.ph209

vector.ph209:                                     ; preds = %vector.main.loop.iter.check207
  %broadcast.splatinsert211 = insertelement <4 x double> poison, double %.pre154, i64 0
  %broadcast.splat212 = shufflevector <4 x double> %broadcast.splatinsert211, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph209
  %index214 = phi i64 [ 0, %vector.ph209 ], [ %index.next215, %vector.body213 ] ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %invariant.gep164, i64 %index214 ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 40
  %i.bi = getelementptr i8, ptr %i.bf, i64 72
  %i.bj = getelementptr i8, ptr %i.bf, i64 104
  store <4 x double> %broadcast.splat212, ptr %i.bg, align 8, !tbaa !9
  store <4 x double> %broadcast.splat212, ptr %i.bh, align 8, !tbaa !9
  store <4 x double> %broadcast.splat212, ptr %i.bi, align 8, !tbaa !9
  store <4 x double> %broadcast.splat212, ptr %i.bj, align 8, !tbaa !9
  %index.next215 = add nuw i64 %index214, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next215, %n.vec210
  br i1 %i.bk, label %middle.block216, label %vector.body213, !llvm.loop !23

middle.block216:                                  ; preds = %vector.body213
  br i1 %cmp.n217, label %._crit_edge107, label %vec.epilog.iter.check221

vec.epilog.iter.check221:                         ; preds = %middle.block216
  br i1 %min.epilog.iters.check222, label %vec.epilog.scalar.ph220.preheader, label %vec.epilog.ph223, !prof !15

vec.epilog.ph223:                                 ; preds = %vector.main.loop.iter.check207, %vec.epilog.iter.check221
  %vec.epilog.resume.val218 = phi i64 [ %n.vec210, %vec.epilog.iter.check221 ], [ 0, %vector.main.loop.iter.check207 ]
  %broadcast.splatinsert225 = insertelement <4 x double> poison, double %.pre154, i64 0
  %broadcast.splat226 = shufflevector <4 x double> %broadcast.splatinsert225, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body227

vec.epilog.vector.body227:                        ; preds = %vec.epilog.vector.body227, %vec.epilog.ph223
  %index228 = phi i64 [ %vec.epilog.resume.val218, %vec.epilog.ph223 ], [ %index.next229, %vec.epilog.vector.body227 ] ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %invariant.gep164, i64 %index228
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  store <4 x double> %broadcast.splat226, ptr %i.bm, align 8, !tbaa !9
  %index.next229 = add nuw i64 %index228, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.bn, label %vec.epilog.middle.block230, label %vec.epilog.vector.body227, !llvm.loop !24

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body227
  br i1 %cmp.n231, label %._crit_edge107, label %vec.epilog.scalar.ph220.preheader

vec.epilog.scalar.ph220.preheader:                ; preds = %iter.check219, %vec.epilog.iter.check221, %vec.epilog.middle.block230
  %indvars.iv138.ph = phi i64 [ 1, %iter.check219 ], [ %i.bc, %vec.epilog.iter.check221 ], [ %i.bd, %vec.epilog.middle.block230 ]
  br label %vec.epilog.scalar.ph220

vec.epilog.scalar.ph220:                          ; preds = %vec.epilog.scalar.ph220.preheader, %vec.epilog.scalar.ph220
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %vec.epilog.scalar.ph220 ], [ %indvars.iv138.ph, %vec.epilog.scalar.ph220.preheader ] ; 2 uses
  %gep165 = getelementptr [8 x i8], ptr %invariant.gep164, i64 %indvars.iv138
  store double %.pre154, ptr %gep165, align 8, !tbaa !9
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge107, label %vec.epilog.scalar.ph220, !llvm.loop !25

._crit_edge107:                                   ; preds = %vec.epilog.scalar.ph220, %vec.epilog.middle.block230, %middle.block216
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %.loopexit, label %iter.check219, !llvm.loop !26

.loopexit:                                        ; preds = %._crit_edge, %.loopexit86, %._crit_edge107, %bb.b, %bb.e, %bb.f
  %i.bo = phi i32 [ %i.aw, %bb.f ], [ %i.aw, %._crit_edge107 ], [ %i.ad, %.loopexit86 ], [ %i.e, %bb.b ], [ %i.ad, %bb.e ], [ %i.e, %._crit_edge ]
  %i.bp = phi i32 [ %.pre156, %bb.f ], [ %.pre156, %._crit_edge107 ], [ %i.ac, %.loopexit86 ], [ %.pre155, %bb.b ], [ %i.ac, %bb.e ], [ %.pre155, %._crit_edge ]
  %.85 = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.bo) ; 5 uses
  %.not81112 = icmp slt i32 %.85, 1
  br i1 %.not81112, label %._crit_edge116, label %iter.check251

iter.check251:                                    ; preds = %.loopexit
  %i.bq = add i32 %i.a, 1                         ; 3 uses
  %i.br = add nuw i32 %.85, 1
  %wide.trip.count151 = zext i32 %i.br to i64
  %.pre157 = load double, ptr %4, align 8, !tbaa !9 ; 3 uses
  %i.bs = zext nneg i32 %.85 to i64               ; 5 uses
  %min.iters.check233 = icmp ult i32 %.85, 4
  br i1 %min.iters.check233, label %vec.epilog.scalar.ph252.prol.loopexit, label %vector.main.loop.iter.check234

vector.main.loop.iter.check234:                   ; preds = %iter.check251
  %min.iters.check235 = icmp ult i32 %.85, 16
  br i1 %min.iters.check235, label %vec.epilog.ph255, label %vector.ph236

vector.ph236:                                     ; preds = %vector.main.loop.iter.check234
  %i.bt = and i64 %i.bs, 12
  %n.vec237 = and i64 %i.bs, 2147483632           ; 4 uses
  %i.bu = or disjoint i64 %n.vec237, 1            ; 2 uses
  %broadcast.splatinsert238 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat239 = shufflevector <4 x i32> %broadcast.splatinsert238, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert240 = insertelement <4 x double> poison, double %.pre157, i64 0
  %broadcast.splat241 = shufflevector <4 x double> %broadcast.splatinsert240, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph236
  %index243 = phi i64 [ 0, %vector.ph236 ], [ %index.next247, %vector.body242 ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph236 ], [ %vec.ind.next, %vector.body242 ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.bv = mul <4 x i32> %broadcast.splat239, %vec.ind
  %i.bw = mul <4 x i32> %broadcast.splat239, %step.add
  %i.bx = mul <4 x i32> %broadcast.splat239, %step.add.2
  %i.by = mul <4 x i32> %broadcast.splat239, %step.add.3
  %i.bz = sext <4 x i32> %i.bv to <4 x i64>
  %i.ca = sext <4 x i32> %i.bw to <4 x i64>
  %i.cb = sext <4 x i32> %i.bx to <4 x i64>
  %i.cc = sext <4 x i32> %i.by to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.c, <4 x i64> %i.bz
  %wide.gep244 = getelementptr inbounds [8 x i8], ptr %i.c, <4 x i64> %i.ca
  %wide.gep245 = getelementptr inbounds [8 x i8], ptr %i.c, <4 x i64> %i.cb
  %wide.gep246 = getelementptr inbounds [8 x i8], ptr %i.c, <4 x i64> %i.cc
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %broadcast.splat241, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !9
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %broadcast.splat241, <4 x ptr> align 8 %wide.gep244, <4 x i1> splat (i1 true)), !tbaa !9
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %broadcast.splat241, <4 x ptr> align 8 %wide.gep245, <4 x i1> splat (i1 true)), !tbaa !9
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %broadcast.splat241, <4 x ptr> align 8 %wide.gep246, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next247 = add nuw i64 %index243, 16      ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.cd = icmp eq i64 %index.next247, %n.vec237
  br i1 %i.cd, label %middle.block248, label %vector.body242, !llvm.loop !27

middle.block248:                                  ; preds = %vector.body242
  %cmp.n249 = icmp eq i64 %n.vec237, %i.bs
  br i1 %cmp.n249, label %._crit_edge116, label %vec.epilog.iter.check253

vec.epilog.iter.check253:                         ; preds = %middle.block248
  %min.epilog.iters.check254 = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check254, label %vec.epilog.scalar.ph252.prol.loopexit, label %vec.epilog.ph255, !prof !15

vec.epilog.ph255:                                 ; preds = %vector.main.loop.iter.check234, %vec.epilog.iter.check253
  %vec.epilog.resume.val250 = phi i64 [ %n.vec237, %vec.epilog.iter.check253 ], [ 0, %vector.main.loop.iter.check234 ]
  %bc.resume.val = phi i64 [ %i.bu, %vec.epilog.iter.check253 ], [ 1, %vector.main.loop.iter.check234 ]
  %n.vec256 = and i64 %i.bs, 2147483644           ; 3 uses
  %i.ce = or disjoint i64 %n.vec256, 1
  %broadcast.splatinsert257 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat258 = shufflevector <4 x i32> %broadcast.splatinsert257, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert259 = insertelement <4 x double> poison, double %.pre157, i64 0
  %broadcast.splat260 = shufflevector <4 x double> %broadcast.splatinsert259, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cf = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert261 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat262 = shufflevector <4 x i32> %broadcast.splatinsert261, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat262, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body263

vec.epilog.vector.body263:                        ; preds = %vec.epilog.vector.body263, %vec.epilog.ph255
  %index264 = phi i64 [ %vec.epilog.resume.val250, %vec.epilog.ph255 ], [ %index.next267, %vec.epilog.vector.body263 ]
  %vec.ind265 = phi <4 x i32> [ %induction, %vec.epilog.ph255 ], [ %vec.ind.next268, %vec.epilog.vector.body263 ] ; 2 uses
  %i.cg = mul <4 x i32> %broadcast.splat258, %vec.ind265
  %i.ch = sext <4 x i32> %i.cg to <4 x i64>
  %wide.gep266 = getelementptr inbounds [8 x i8], ptr %i.c, <4 x i64> %i.ch
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %broadcast.splat260, <4 x ptr> align 8 %wide.gep266, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next267 = add nuw i64 %index264, 4       ; 2 uses
  %vec.ind.next268 = add <4 x i32> %vec.ind265, splat (i32 4)
  %i.ci = icmp eq i64 %index.next267, %n.vec256
  br i1 %i.ci, label %vec.epilog.scalar.ph252.prol, label %vec.epilog.vector.body263, !llvm.loop !28

vec.epilog.scalar.ph252.prol:                     ; preds = %vec.epilog.vector.body263
  %prol.iter.cmp.not = icmp eq i64 %n.vec256, %i.bs
  br i1 %prol.iter.cmp.not, label %._crit_edge116, label %vec.epilog.scalar.ph252.prol.loopexit

vec.epilog.scalar.ph252.prol.loopexit:            ; preds = %iter.check251, %vec.epilog.iter.check253, %vec.epilog.scalar.ph252.prol
  %indvars.iv148.ph = phi i64 [ 1, %iter.check251 ], [ %i.bu, %vec.epilog.iter.check253 ], [ %i.ce, %vec.epilog.scalar.ph252.prol ]
  br label %vec.epilog.scalar.ph252

vec.epilog.scalar.ph252:                          ; preds = %vec.epilog.scalar.ph252.prol.loopexit, %vec.epilog.scalar.ph252
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.7, %vec.epilog.scalar.ph252 ], [ %indvars.iv148.ph, %vec.epilog.scalar.ph252.prol.loopexit ] ; 2 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv148 to i32
  %i.ck = mul i32 %i.bq, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cl
  store double %.pre157, ptr %i.cm, align 8, !tbaa !9
  %indvars.iv.next149.7 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not.7 = icmp eq i64 %indvars.iv.next149.7, %wide.trip.count151
  br i1 %exitcond152.not.7, label %._crit_edge116, label %vec.epilog.scalar.ph252, !llvm.loop !29

._crit_edge116:                                   ; preds = %vec.epilog.scalar.ph252, %middle.block248, %vec.epilog.scalar.ph252.prol, %.loopexit
  ret void
}

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(write) }
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
!17 = distinct !{!17, !12, !14, !13}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12, !13, !14}
!21 = distinct !{!21, !12, !13, !14}
!22 = distinct !{!22, !12, !14, !13}
!23 = distinct !{!23, !12, !13, !14}
!24 = distinct !{!24, !12, !13, !14}
!25 = distinct !{!25, !12, !14, !13}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12, !13, !14}
!28 = distinct !{!28, !12, !13, !14}
!29 = distinct !{!29, !12, !14, !13}
end_hunk_0
