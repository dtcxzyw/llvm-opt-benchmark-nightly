Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsyswapr?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dsyswapr_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = load i32, ptr %3, align 4, !tbaa !32     ; 17 uses
  %narrow = xor i32 %i.b, -1
  %i.c = sext i32 %narrow to i64                  ; 5 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c ; 16 uses
  %i.e = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #3
  %.not = icmp eq i32 %i.e, 0
  %i.f = load i32, ptr %4, align 4, !tbaa !32     ; 3 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.a, align 4, !tbaa !32
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = mul nsw i32 %i.f, %i.b
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %i.d, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %5, align 4, !tbaa !32
  %i.m = mul nsw i32 %i.l, %i.b
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [8 x i8], ptr %i.d, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 8
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.k, ptr noundef nonnull @c__1, ptr noundef %i.p, ptr noundef nonnull @c__1) #3
  %i.q = load i32, ptr %4, align 4, !tbaa !32     ; 5 uses
  %i.r = add i32 %i.b, 1                          ; 2 uses
  %i.s = mul i32 %i.q, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.t ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !34
  %i.w = load i32, ptr %5, align 4, !tbaa !32     ; 7 uses
  %i.x = mul i32 %i.w, %i.r
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !34
  store double %i.aa, ptr %i.u, align 8, !tbaa !34
  store double %i.v, ptr %i.z, align 8, !tbaa !34
  %i.ab = sub i32 %i.q, %i.w
  %.not149152 = icmp sgt i32 %i.ab, -2
  br i1 %.not149152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ac = mul nsw i32 %i.w, %i.b
  %i.ad = sext i32 %i.q to i64                    ; 9 uses
  %i.ae = sext i32 %i.b to i64                    ; 5 uses
  %i.af = sext i32 %i.ac to i64
  %i.ag = sub i32 %i.w, %i.q
  %wide.trip.count = zext i32 %i.ag to i64        ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.d, i64 %i.ad ; 6 uses
  %invariant.gep188 = getelementptr [8 x i8], ptr %i.d, i64 %i.af ; 6 uses
  %i.ah = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ugt i64 %i.ah, 23
  %ident.check.not = icmp eq i32 %i.b, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ai = shl nsw i64 %i.ad, 4                    ; 2 uses
  %i.aj = getelementptr i8, ptr %2, i64 %i.ai
  %scevgep = getelementptr i8, ptr %i.aj, i64 -8
  %i.ak = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.al = getelementptr i8, ptr %2, i64 %i.ai
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %scevgep203 = getelementptr i8, ptr %i.am, i64 -16
  %i.an = sext i32 %i.w to i64
  %i.ao = add nsw i64 %i.an, %i.ad
  %i.ap = shl nsw i64 %i.ao, 3                    ; 2 uses
  %i.aq = getelementptr i8, ptr %2, i64 %i.ap
  %scevgep204 = getelementptr i8, ptr %i.aq, i64 -8
  %i.ar = getelementptr i8, ptr %2, i64 %i.ap
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ak
  %scevgep205 = getelementptr i8, ptr %i.as, i64 -16
  %bound0 = icmp ult ptr %scevgep, %scevgep205
  %bound1 = icmp ult ptr %scevgep204, %scevgep203
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, -8                      ; 3 uses
  %i.at = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = or disjoint i64 %index, 1
  %i.av = add nsw i64 %i.au, %i.ad                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.av ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 32     ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aw, align 8, !tbaa !34, !alias.scope !35, !noalias !36
  %wide.load206 = load <4 x double>, ptr %i.ax, align 8, !tbaa !34, !alias.scope !35, !noalias !36
  %i.ay = getelementptr [8 x i8], ptr %invariant.gep188, i64 %i.av ; 3 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 32     ; 2 uses
  %wide.load207 = load <4 x double>, ptr %i.ay, align 8, !tbaa !34, !alias.scope !36
  %wide.load208 = load <4 x double>, ptr %i.az, align 8, !tbaa !34, !alias.scope !36
  store <4 x double> %wide.load207, ptr %i.aw, align 8, !tbaa !34, !alias.scope !35, !noalias !36
  store <4 x double> %wide.load208, ptr %i.ax, align 8, !tbaa !34, !alias.scope !35, !noalias !36
  store <4 x double> %wide.load, ptr %i.ay, align 8, !tbaa !34, !alias.scope !36
  store <4 x double> %wide.load206, ptr %i.az, align 8, !tbaa !34, !alias.scope !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.at, %middle.block ] ; 4 uses
  %i.bb = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bc = add nsw i64 %indvars.iv.prol, %i.ad     ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.ae
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bd ; 2 uses
  %i.be = load double, ptr %gep.prol, align 8, !tbaa !34
  %gep189.prol = getelementptr [8 x i8], ptr %invariant.gep188, i64 %i.bc ; 2 uses
  %i.bf = load double, ptr %gep189.prol, align 8, !tbaa !34
  store double %i.bf, ptr %gep.prol, align 8, !tbaa !34
  store double %i.be, ptr %gep189.prol, align 8, !tbaa !34
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !12

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bg = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %i.ad
  %invariant.op292 = add i64 2, %i.ad
  %invariant.op294 = add i64 3, %i.ad
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.bi = add nsw i64 %indvars.iv, %i.ad          ; 2 uses
  %i.bj = mul nsw i64 %i.bi, %i.ae
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bj ; 2 uses
  %i.bk = load double, ptr %gep, align 8, !tbaa !34
  %gep189 = getelementptr [8 x i8], ptr %invariant.gep188, i64 %i.bi ; 2 uses
  %i.bl = load double, ptr %gep189, align 8, !tbaa !34
  store double %i.bl, ptr %gep, align 8, !tbaa !34
  store double %i.bk, ptr %gep189, align 8, !tbaa !34
  %.reass = add i64 %indvars.iv, %invariant.op    ; 2 uses
  %i.bm = mul nsw i64 %.reass, %i.ae
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bm ; 2 uses
  %i.bn = load double, ptr %gep.1, align 8, !tbaa !34
  %gep189.1 = getelementptr [8 x i8], ptr %invariant.gep188, i64 %.reass ; 2 uses
  %i.bo = load double, ptr %gep189.1, align 8, !tbaa !34
  store double %i.bo, ptr %gep.1, align 8, !tbaa !34
  store double %i.bn, ptr %gep189.1, align 8, !tbaa !34
  %.reass293 = add i64 %indvars.iv, %invariant.op292 ; 2 uses
  %i.bp = mul nsw i64 %.reass293, %i.ae
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bp ; 2 uses
  %i.bq = load double, ptr %gep.2, align 8, !tbaa !34
  %gep189.2 = getelementptr [8 x i8], ptr %invariant.gep188, i64 %.reass293 ; 2 uses
  %i.br = load double, ptr %gep189.2, align 8, !tbaa !34
  store double %i.br, ptr %gep.2, align 8, !tbaa !34
  store double %i.bq, ptr %gep189.2, align 8, !tbaa !34
  %.reass295 = add i64 %indvars.iv, %invariant.op294 ; 2 uses
  %i.bs = mul nsw i64 %.reass295, %i.ae
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bs ; 2 uses
  %i.bt = load double, ptr %gep.3, align 8, !tbaa !34
  %gep189.3 = getelementptr [8 x i8], ptr %invariant.gep188, i64 %.reass295 ; 2 uses
  %i.bu = load double, ptr %gep189.3, align 8, !tbaa !34
  store double %i.bu, ptr %gep.3, align 8, !tbaa !34
  store double %i.bt, ptr %gep189.3, align 8, !tbaa !34
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %i.bv = load i32, ptr %1, align 4, !tbaa !32    ; 2 uses
  %.not150.not154 = icmp slt i32 %i.w, %i.bv
  br i1 %.not150.not154, label %.lr.ph157.preheader, label %.loopexit

.lr.ph157.preheader:                              ; preds = %._crit_edge
  %i.bw = sext i32 %i.w to i64                    ; 9 uses
  %i.bx = sext i32 %i.b to i64                    ; 5 uses
  %i.by = sext i32 %i.q to i64                    ; 3 uses
  %wide.trip.count172 = sext i32 %i.bv to i64     ; 6 uses
  %invariant.gep190 = getelementptr [8 x i8], ptr %i.d, i64 %i.by ; 6 uses
  %invariant.gep192 = getelementptr [8 x i8], ptr %i.d, i64 %i.bw ; 6 uses
  %i.bz = sub nsw i64 %wide.trip.count172, %i.bw  ; 3 uses
  %min.iters.check220 = icmp ugt i64 %i.bz, 27
  %ident.check210.not = icmp eq i32 %i.b, 1
  %or.cond279 = select i1 %min.iters.check220, i1 %ident.check210.not, i1 false
  br i1 %or.cond279, label %vector.memcheck211, label %.lr.ph157.preheader281

vector.memcheck211:                               ; preds = %.lr.ph157.preheader
  %i.ca = add nsw i64 %i.by, %i.bw
  %i.cb = shl nsw i64 %i.ca, 3
  %i.cc = getelementptr i8, ptr %2, i64 %i.cb
  %scevgep212 = getelementptr i8, ptr %i.cc, i64 -8
  %i.cd = add nsw i64 %wide.trip.count172, %i.by
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  %scevgep213 = getelementptr i8, ptr %i.cf, i64 -8
  %i.cg = shl nsw i64 %i.bw, 4
  %i.ch = getelementptr i8, ptr %2, i64 %i.cg
  %scevgep214 = getelementptr i8, ptr %i.ch, i64 -8
  %i.ci = add nsw i64 %i.bw, %wide.trip.count172
  %i.cj = shl nsw i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %2, i64 %i.cj
  %scevgep215 = getelementptr i8, ptr %i.ck, i64 -8
  %bound0216 = icmp ult ptr %scevgep212, %scevgep215
  %bound1217 = icmp ult ptr %scevgep214, %scevgep213
  %found.conflict218 = and i1 %bound0216, %bound1217
  br i1 %found.conflict218, label %.lr.ph157.preheader281, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck211
  %n.vec222 = and i64 %i.bz, -8                   ; 3 uses
  %i.cl = add nsw i64 %n.vec222, %i.bw
  %invariant.op296 = add i64 %i.bw, 1
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body223 ] ; 2 uses
  %.reass297 = add i64 %index224, %invariant.op296 ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %invariant.gep190, i64 %.reass297 ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 32     ; 2 uses
  %wide.load225 = load <4 x double>, ptr %i.cm, align 8, !tbaa !34, !alias.scope !41, !noalias !42
  %wide.load226 = load <4 x double>, ptr %i.cn, align 8, !tbaa !34, !alias.scope !41, !noalias !42
  %i.co = getelementptr [8 x i8], ptr %invariant.gep192, i64 %.reass297 ; 3 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 32     ; 2 uses
  %wide.load227 = load <4 x double>, ptr %i.co, align 8, !tbaa !34, !alias.scope !42
  %wide.load228 = load <4 x double>, ptr %i.cp, align 8, !tbaa !34, !alias.scope !42
  store <4 x double> %wide.load227, ptr %i.cm, align 8, !tbaa !34, !alias.scope !41, !noalias !42
  store <4 x double> %wide.load228, ptr %i.cn, align 8, !tbaa !34, !alias.scope !41, !noalias !42
  store <4 x double> %wide.load225, ptr %i.co, align 8, !tbaa !34, !alias.scope !42
  store <4 x double> %wide.load226, ptr %i.cp, align 8, !tbaa !34, !alias.scope !42
  %index.next229 = add nuw i64 %index224, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next229, %n.vec222
  br i1 %i.cq, label %middle.block230, label %vector.body223, !llvm.loop !17

middle.block230:                                  ; preds = %vector.body223
  %cmp.n231 = icmp eq i64 %i.bz, %n.vec222
  br i1 %cmp.n231, label %.loopexit, label %.lr.ph157.preheader281

.lr.ph157.preheader281:                           ; preds = %vector.memcheck211, %.lr.ph157.preheader, %middle.block230
  %indvars.iv169.ph = phi i64 [ %i.bw, %vector.memcheck211 ], [ %i.bw, %.lr.ph157.preheader ], [ %i.cl, %middle.block230 ] ; 4 uses
  %i.cr = sub nsw i64 %wide.trip.count172, %indvars.iv169.ph
  %xtraiter283 = and i64 %i.cr, 3                 ; 2 uses
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol

.lr.ph157.prol:                                   ; preds = %.lr.ph157.preheader281, %.lr.ph157.prol
  %indvars.iv169.prol = phi i64 [ %indvars.iv.next170.prol, %.lr.ph157.prol ], [ %indvars.iv169.ph, %.lr.ph157.preheader281 ]
  %prol.iter285 = phi i64 [ %prol.iter285.next, %.lr.ph157.prol ], [ 0, %.lr.ph157.preheader281 ]
  %indvars.iv.next170.prol = add nsw i64 %indvars.iv169.prol, 1 ; 3 uses
  %i.cs = mul nsw i64 %indvars.iv.next170.prol, %i.bx ; 2 uses
  %gep191.prol = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.cs ; 2 uses
  %i.ct = load double, ptr %gep191.prol, align 8, !tbaa !34
  %gep193.prol = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.cs ; 2 uses
  %i.cu = load double, ptr %gep193.prol, align 8, !tbaa !34
  store double %i.cu, ptr %gep191.prol, align 8, !tbaa !34
  store double %i.ct, ptr %gep193.prol, align 8, !tbaa !34
  %prol.iter285.next = add i64 %prol.iter285, 1   ; 2 uses
  %prol.iter285.cmp.not = icmp eq i64 %prol.iter285.next, %xtraiter283
  br i1 %prol.iter285.cmp.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol, !llvm.loop !18

.lr.ph157.prol.loopexit:                          ; preds = %.lr.ph157.prol, %.lr.ph157.preheader281
  %indvars.iv169.unr = phi i64 [ %indvars.iv169.ph, %.lr.ph157.preheader281 ], [ %indvars.iv.next170.prol, %.lr.ph157.prol ]
  %i.cv = sub nsw i64 %indvars.iv169.ph, %wide.trip.count172
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %.loopexit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157
  %indvars.iv169 = phi i64 [ %indvars.iv.next170.3, %.lr.ph157 ], [ %indvars.iv169.unr, %.lr.ph157.prol.loopexit ] ; 4 uses
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, 1
  %i.cx = mul nsw i64 %indvars.iv.next170, %i.bx  ; 2 uses
  %gep191 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.cx ; 2 uses
  %i.cy = load double, ptr %gep191, align 8, !tbaa !34
  %gep193 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.cx ; 2 uses
  %i.cz = load double, ptr %gep193, align 8, !tbaa !34
  store double %i.cz, ptr %gep191, align 8, !tbaa !34
  store double %i.cy, ptr %gep193, align 8, !tbaa !34
  %indvars.iv.next170.1 = add nsw i64 %indvars.iv169, 2
  %i.da = mul nsw i64 %indvars.iv.next170.1, %i.bx ; 2 uses
  %gep191.1 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.da ; 2 uses
  %i.db = load double, ptr %gep191.1, align 8, !tbaa !34
  %gep193.1 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.da ; 2 uses
  %i.dc = load double, ptr %gep193.1, align 8, !tbaa !34
  store double %i.dc, ptr %gep191.1, align 8, !tbaa !34
  store double %i.db, ptr %gep193.1, align 8, !tbaa !34
  %indvars.iv.next170.2 = add nsw i64 %indvars.iv169, 3
  %i.dd = mul nsw i64 %indvars.iv.next170.2, %i.bx ; 2 uses
  %gep191.2 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.dd ; 2 uses
  %i.de = load double, ptr %gep191.2, align 8, !tbaa !34
  %gep193.2 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.dd ; 2 uses
  %i.df = load double, ptr %gep193.2, align 8, !tbaa !34
  store double %i.df, ptr %gep191.2, align 8, !tbaa !34
  store double %i.de, ptr %gep193.2, align 8, !tbaa !34
  %indvars.iv.next170.3 = add nsw i64 %indvars.iv169, 4 ; 3 uses
  %i.dg = mul nsw i64 %indvars.iv.next170.3, %i.bx ; 2 uses
  %gep191.3 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.dg ; 2 uses
  %i.dh = load double, ptr %gep191.3, align 8, !tbaa !34
  %gep193.3 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.dg ; 2 uses
  %i.di = load double, ptr %gep193.3, align 8, !tbaa !34
  store double %i.di, ptr %gep191.3, align 8, !tbaa !34
  store double %i.dh, ptr %gep193.3, align 8, !tbaa !34
  %exitcond173.not.3 = icmp eq i64 %indvars.iv.next170.3, %wide.trip.count172
  br i1 %exitcond173.not.3, label %.loopexit, label %.lr.ph157, !llvm.loop !19

bb.c:                                             ; preds = %bb.a
  %i.dj = add nsw i32 %i.f, %i.b
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dk
  %i.dm = load i32, ptr %5, align 4, !tbaa !32
  %i.dn = add nsw i32 %i.dm, %i.b
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.do
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.dl, ptr noundef nonnull %3, ptr noundef %i.dp, ptr noundef nonnull %3) #3
  %i.dq = load i32, ptr %4, align 4, !tbaa !32    ; 6 uses
  %i.dr = add i32 %i.b, 1                         ; 2 uses
  %i.ds = mul i32 %i.dq, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dt ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !34
  %i.dw = load i32, ptr %5, align 4, !tbaa !32    ; 7 uses
  %i.dx = mul i32 %i.dw, %i.dr
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dy ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !34
  store double %i.ea, ptr %i.du, align 8, !tbaa !34
  store double %i.dv, ptr %i.dz, align 8, !tbaa !34
  %i.eb = sub i32 %i.dq, %i.dw
  %.not147158 = icmp sgt i32 %i.eb, -2
  br i1 %.not147158, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.c
  %i.ec = mul nsw i32 %i.dq, %i.b
  %i.ed = sext i32 %i.dq to i64                   ; 8 uses
  %i.ee = sext i32 %i.ec to i64
  %i.ef = sext i32 %i.b to i64                    ; 5 uses
  %i.eg = sext i32 %i.dw to i64                   ; 2 uses
  %i.eh = sub i32 %i.dw, %i.dq
  %wide.trip.count177 = zext i32 %i.eh to i64     ; 5 uses
  %invariant.gep194 = getelementptr [8 x i8], ptr %i.d, i64 %i.ee ; 6 uses
  %invariant.gep196 = getelementptr [8 x i8], ptr %i.d, i64 %i.eg ; 6 uses
  %i.ei = add nsw i64 %wide.trip.count177, -1     ; 3 uses
  %min.iters.check244 = icmp ugt i64 %i.ei, 23
  %ident.check234.not = icmp eq i32 %i.b, 1
  %or.cond280 = select i1 %min.iters.check244, i1 %ident.check234.not, i1 false
  br i1 %or.cond280, label %vector.memcheck235, label %scalar.ph243.preheader

vector.memcheck235:                               ; preds = %.lr.ph161
  %i.ej = shl nsw i64 %i.ed, 4                    ; 2 uses
  %i.ek = getelementptr i8, ptr %2, i64 %i.ej
  %scevgep236 = getelementptr i8, ptr %i.ek, i64 -8
  %i.el = shl nuw nsw i64 %wide.trip.count177, 3  ; 2 uses
  %i.em = getelementptr i8, ptr %2, i64 %i.ej
  %i.en = getelementptr i8, ptr %i.em, i64 %i.el
  %scevgep237 = getelementptr i8, ptr %i.en, i64 -16
  %i.eo = add nsw i64 %i.eg, %i.ed
  %i.ep = shl nsw i64 %i.eo, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %2, i64 %i.ep
  %scevgep238 = getelementptr i8, ptr %i.eq, i64 -8
  %i.er = getelementptr i8, ptr %2, i64 %i.ep
  %i.es = getelementptr i8, ptr %i.er, i64 %i.el
  %scevgep239 = getelementptr i8, ptr %i.es, i64 -16
  %bound0240 = icmp ult ptr %scevgep236, %scevgep239
  %bound1241 = icmp ult ptr %scevgep238, %scevgep237
  %found.conflict242 = and i1 %bound0240, %bound1241
  br i1 %found.conflict242, label %scalar.ph243.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck235
  %n.vec246 = and i64 %i.ei, -8                   ; 3 uses
  %i.et = or disjoint i64 %n.vec246, 1
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next253, %vector.body247 ] ; 2 uses
  %i.eu = or disjoint i64 %index248, 1
  %i.ev = add nsw i64 %i.eu, %i.ed                ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %invariant.gep194, i64 %i.ev ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 32     ; 2 uses
  %wide.load249 = load <4 x double>, ptr %i.ew, align 8, !tbaa !34, !alias.scope !43, !noalias !44
  %wide.load250 = load <4 x double>, ptr %i.ex, align 8, !tbaa !34, !alias.scope !43, !noalias !44
  %i.ey = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.ev ; 3 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 32     ; 2 uses
  %wide.load251 = load <4 x double>, ptr %i.ey, align 8, !tbaa !34, !alias.scope !44
  %wide.load252 = load <4 x double>, ptr %i.ez, align 8, !tbaa !34, !alias.scope !44
  store <4 x double> %wide.load251, ptr %i.ew, align 8, !tbaa !34, !alias.scope !43, !noalias !44
  store <4 x double> %wide.load252, ptr %i.ex, align 8, !tbaa !34, !alias.scope !43, !noalias !44
  store <4 x double> %wide.load249, ptr %i.ey, align 8, !tbaa !34, !alias.scope !44
  store <4 x double> %wide.load250, ptr %i.ez, align 8, !tbaa !34, !alias.scope !44
  %index.next253 = add nuw i64 %index248, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.fa, label %middle.block254, label %vector.body247, !llvm.loop !23

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %i.ei, %n.vec246
  br i1 %cmp.n255, label %._crit_edge162, label %scalar.ph243.preheader

scalar.ph243.preheader:                           ; preds = %vector.memcheck235, %.lr.ph161, %middle.block254
  %indvars.iv174.ph = phi i64 [ 1, %vector.memcheck235 ], [ 1, %.lr.ph161 ], [ %i.et, %middle.block254 ] ; 4 uses
  %i.fb = sub nsw i64 %wide.trip.count177, %indvars.iv174.ph
  %xtraiter286 = and i64 %i.fb, 3                 ; 2 uses
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %scalar.ph243.prol.loopexit, label %scalar.ph243.prol

scalar.ph243.prol:                                ; preds = %scalar.ph243.preheader, %scalar.ph243.prol
  %indvars.iv174.prol = phi i64 [ %indvars.iv.next175.prol, %scalar.ph243.prol ], [ %indvars.iv174.ph, %scalar.ph243.preheader ] ; 2 uses
  %prol.iter288 = phi i64 [ %prol.iter288.next, %scalar.ph243.prol ], [ 0, %scalar.ph243.preheader ]
  %i.fc = add nsw i64 %indvars.iv174.prol, %i.ed  ; 2 uses
  %gep195.prol = getelementptr [8 x i8], ptr %invariant.gep194, i64 %i.fc ; 2 uses
  %i.fd = load double, ptr %gep195.prol, align 8, !tbaa !34
  %i.fe = mul nsw i64 %i.fc, %i.ef
  %gep197.prol = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.fe ; 2 uses
  %i.ff = load double, ptr %gep197.prol, align 8, !tbaa !34
  store double %i.ff, ptr %gep195.prol, align 8, !tbaa !34
  store double %i.fd, ptr %gep197.prol, align 8, !tbaa !34
  %indvars.iv.next175.prol = add nuw nsw i64 %indvars.iv174.prol, 1 ; 2 uses
  %prol.iter288.next = add i64 %prol.iter288, 1   ; 2 uses
  %prol.iter288.cmp.not = icmp eq i64 %prol.iter288.next, %xtraiter286
  br i1 %prol.iter288.cmp.not, label %scalar.ph243.prol.loopexit, label %scalar.ph243.prol, !llvm.loop !24

scalar.ph243.prol.loopexit:                       ; preds = %scalar.ph243.prol, %scalar.ph243.preheader
  %indvars.iv174.unr = phi i64 [ %indvars.iv174.ph, %scalar.ph243.preheader ], [ %indvars.iv.next175.prol, %scalar.ph243.prol ]
  %i.fg = sub nsw i64 %indvars.iv174.ph, %wide.trip.count177
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %._crit_edge162, label %scalar.ph243.preheader.new

scalar.ph243.preheader.new:                       ; preds = %scalar.ph243.prol.loopexit
  %invariant.op298 = add i64 1, %i.ed
  %invariant.op300 = add i64 2, %i.ed
  %invariant.op302 = add i64 3, %i.ed
  br label %scalar.ph243

scalar.ph243:                                     ; preds = %scalar.ph243, %scalar.ph243.preheader.new
  %indvars.iv174 = phi i64 [ %indvars.iv174.unr, %scalar.ph243.preheader.new ], [ %indvars.iv.next175.3, %scalar.ph243 ] ; 5 uses
  %i.fi = add nsw i64 %indvars.iv174, %i.ed       ; 2 uses
  %gep195 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %i.fi ; 2 uses
  %i.fj = load double, ptr %gep195, align 8, !tbaa !34
  %i.fk = mul nsw i64 %i.fi, %i.ef
  %gep197 = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.fk ; 2 uses
  %i.fl = load double, ptr %gep197, align 8, !tbaa !34
  store double %i.fl, ptr %gep195, align 8, !tbaa !34
  store double %i.fj, ptr %gep197, align 8, !tbaa !34
  %.reass299 = add i64 %indvars.iv174, %invariant.op298 ; 2 uses
  %gep195.1 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %.reass299 ; 2 uses
  %i.fm = load double, ptr %gep195.1, align 8, !tbaa !34
  %i.fn = mul nsw i64 %.reass299, %i.ef
  %gep197.1 = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.fn ; 2 uses
  %i.fo = load double, ptr %gep197.1, align 8, !tbaa !34
  store double %i.fo, ptr %gep195.1, align 8, !tbaa !34
  store double %i.fm, ptr %gep197.1, align 8, !tbaa !34
  %.reass301 = add i64 %indvars.iv174, %invariant.op300 ; 2 uses
  %gep195.2 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %.reass301 ; 2 uses
  %i.fp = load double, ptr %gep195.2, align 8, !tbaa !34
  %i.fq = mul nsw i64 %.reass301, %i.ef
  %gep197.2 = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.fq ; 2 uses
  %i.fr = load double, ptr %gep197.2, align 8, !tbaa !34
  store double %i.fr, ptr %gep195.2, align 8, !tbaa !34
  store double %i.fp, ptr %gep197.2, align 8, !tbaa !34
  %.reass303 = add i64 %indvars.iv174, %invariant.op302 ; 2 uses
  %gep195.3 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %.reass303 ; 2 uses
  %i.fs = load double, ptr %gep195.3, align 8, !tbaa !34
  %i.ft = mul nsw i64 %.reass303, %i.ef
  %gep197.3 = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.ft ; 2 uses
  %i.fu = load double, ptr %gep197.3, align 8, !tbaa !34
  store double %i.fu, ptr %gep195.3, align 8, !tbaa !34
  store double %i.fs, ptr %gep197.3, align 8, !tbaa !34
  %indvars.iv.next175.3 = add nuw nsw i64 %indvars.iv174, 4 ; 2 uses
  %exitcond178.not.3 = icmp eq i64 %indvars.iv.next175.3, %wide.trip.count177
  br i1 %exitcond178.not.3, label %._crit_edge162, label %scalar.ph243, !llvm.loop !25

._crit_edge162:                                   ; preds = %scalar.ph243.prol.loopexit, %scalar.ph243, %middle.block254, %bb.c
  %i.fv = load i32, ptr %1, align 4, !tbaa !32    ; 2 uses
  %.not148.not163 = icmp slt i32 %i.dw, %i.fv
  br i1 %.not148.not163, label %.lr.ph166, label %.loopexit

.lr.ph166:                                        ; preds = %._crit_edge162
  %i.fw = mul nsw i32 %i.dq, %i.b
  %i.fx = mul nsw i32 %i.dw, %i.b
  %i.fy = sext i32 %i.dw to i64                   ; 7 uses
  %i.fz = sext i32 %i.fw to i64                   ; 3 uses
  %i.ga = sext i32 %i.fx to i64                   ; 3 uses
  %wide.trip.count182 = sext i32 %i.fv to i64     ; 6 uses
  %invariant.gep198 = getelementptr [8 x i8], ptr %i.d, i64 %i.fz ; 6 uses
  %invariant.gep200 = getelementptr [8 x i8], ptr %i.d, i64 %i.ga ; 6 uses
  %i.gb = sub nsw i64 %wide.trip.count182, %i.fy  ; 3 uses
  %min.iters.check266 = icmp ult i64 %i.gb, 36
  br i1 %min.iters.check266, label %scalar.ph265.preheader, label %vector.memcheck257

vector.memcheck257:                               ; preds = %.lr.ph166
  %i.gc = add nsw i64 %i.fy, %i.fz
  %i.gd = add nsw i64 %i.gc, %i.c
  %i.ge = shl nsw i64 %i.gd, 3
  %i.gf = getelementptr i8, ptr %2, i64 %i.ge
  %scevgep258 = getelementptr i8, ptr %i.gf, i64 8
  %i.gg = add nsw i64 %wide.trip.count182, %i.fz
  %i.gh = add nsw i64 %i.gg, %i.c
  %i.gi = shl nsw i64 %i.gh, 3
  %i.gj = getelementptr i8, ptr %2, i64 %i.gi
  %scevgep259 = getelementptr i8, ptr %i.gj, i64 8
  %i.gk = add nsw i64 %i.fy, %i.ga
  %i.gl = add nsw i64 %i.gk, %i.c
  %i.gm = shl nsw i64 %i.gl, 3
  %i.gn = getelementptr i8, ptr %2, i64 %i.gm
  %scevgep260 = getelementptr i8, ptr %i.gn, i64 8
  %i.go = add nsw i64 %wide.trip.count182, %i.ga
  %i.gp = add nsw i64 %i.go, %i.c
  %i.gq = shl nsw i64 %i.gp, 3
  %i.gr = getelementptr i8, ptr %2, i64 %i.gq
  %scevgep261 = getelementptr i8, ptr %i.gr, i64 8
  %bound0262 = icmp ult ptr %scevgep258, %scevgep261
  %bound1263 = icmp ult ptr %scevgep260, %scevgep259
  %found.conflict264 = and i1 %bound0262, %bound1263
  br i1 %found.conflict264, label %scalar.ph265.preheader, label %vector.ph267

vector.ph267:                                     ; preds = %vector.memcheck257
  %n.vec268 = and i64 %i.gb, -8                   ; 3 uses
  %i.gs = add nsw i64 %n.vec268, %i.fy
  %invariant.op304 = add i64 %i.fy, 1
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next275, %vector.body269 ] ; 2 uses
  %.reass305 = add i64 %index270, %invariant.op304 ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %invariant.gep198, i64 %.reass305 ; 3 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 32     ; 2 uses
  %wide.load271 = load <4 x double>, ptr %i.gt, align 8, !tbaa !34, !alias.scope !45, !noalias !46
  %wide.load272 = load <4 x double>, ptr %i.gu, align 8, !tbaa !34, !alias.scope !45, !noalias !46
  %i.gv = getelementptr [8 x i8], ptr %invariant.gep200, i64 %.reass305 ; 3 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 32     ; 2 uses
  %wide.load273 = load <4 x double>, ptr %i.gv, align 8, !tbaa !34, !alias.scope !46
  %wide.load274 = load <4 x double>, ptr %i.gw, align 8, !tbaa !34, !alias.scope !46
  store <4 x double> %wide.load273, ptr %i.gt, align 8, !tbaa !34, !alias.scope !45, !noalias !46
  store <4 x double> %wide.load274, ptr %i.gu, align 8, !tbaa !34, !alias.scope !45, !noalias !46
  store <4 x double> %wide.load271, ptr %i.gv, align 8, !tbaa !34, !alias.scope !46
  store <4 x double> %wide.load272, ptr %i.gw, align 8, !tbaa !34, !alias.scope !46
  %index.next275 = add nuw i64 %index270, 8       ; 2 uses
  %i.gx = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.gx, label %middle.block276, label %vector.body269, !llvm.loop !29

middle.block276:                                  ; preds = %vector.body269
  %cmp.n277 = icmp eq i64 %i.gb, %n.vec268
  br i1 %cmp.n277, label %.loopexit, label %scalar.ph265.preheader

scalar.ph265.preheader:                           ; preds = %vector.memcheck257, %.lr.ph166, %middle.block276
  %indvars.iv179.ph = phi i64 [ %i.fy, %vector.memcheck257 ], [ %i.fy, %.lr.ph166 ], [ %i.gs, %middle.block276 ] ; 4 uses
  %i.gy = sub nsw i64 %wide.trip.count182, %indvars.iv179.ph
  %xtraiter289 = and i64 %i.gy, 3                 ; 2 uses
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %scalar.ph265.prol.loopexit, label %scalar.ph265.prol

scalar.ph265.prol:                                ; preds = %scalar.ph265.preheader, %scalar.ph265.prol
  %indvars.iv179.prol = phi i64 [ %indvars.iv.next180.prol, %scalar.ph265.prol ], [ %indvars.iv179.ph, %scalar.ph265.preheader ]
  %prol.iter291 = phi i64 [ %prol.iter291.next, %scalar.ph265.prol ], [ 0, %scalar.ph265.preheader ]
  %indvars.iv.next180.prol = add nsw i64 %indvars.iv179.prol, 1 ; 4 uses
  %gep199.prol = getelementptr [8 x i8], ptr %invariant.gep198, i64 %indvars.iv.next180.prol ; 2 uses
  %i.gz = load double, ptr %gep199.prol, align 8, !tbaa !34
  %gep201.prol = getelementptr [8 x i8], ptr %invariant.gep200, i64 %indvars.iv.next180.prol ; 2 uses
  %i.ha = load double, ptr %gep201.prol, align 8, !tbaa !34
  store double %i.ha, ptr %gep199.prol, align 8, !tbaa !34
  store double %i.gz, ptr %gep201.prol, align 8, !tbaa !34
  %prol.iter291.next = add i64 %prol.iter291, 1   ; 2 uses
  %prol.iter291.cmp.not = icmp eq i64 %prol.iter291.next, %xtraiter289
  br i1 %prol.iter291.cmp.not, label %scalar.ph265.prol.loopexit, label %scalar.ph265.prol, !llvm.loop !30

scalar.ph265.prol.loopexit:                       ; preds = %scalar.ph265.prol, %scalar.ph265.preheader
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %scalar.ph265.preheader ], [ %indvars.iv.next180.prol, %scalar.ph265.prol ]
  %i.hb = sub nsw i64 %indvars.iv179.ph, %wide.trip.count182
  %i.hc = icmp ugt i64 %i.hb, -4
  br i1 %i.hc, label %.loopexit, label %scalar.ph265

scalar.ph265:                                     ; preds = %scalar.ph265.prol.loopexit, %scalar.ph265
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.3, %scalar.ph265 ], [ %indvars.iv179.unr, %scalar.ph265.prol.loopexit ] ; 4 uses
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %gep199 = getelementptr [8 x i8], ptr %invariant.gep198, i64 %indvars.iv.next180 ; 2 uses
  %i.hd = load double, ptr %gep199, align 8, !tbaa !34
  %gep201 = getelementptr [8 x i8], ptr %invariant.gep200, i64 %indvars.iv.next180 ; 2 uses
  %i.he = load double, ptr %gep201, align 8, !tbaa !34
  store double %i.he, ptr %gep199, align 8, !tbaa !34
  store double %i.hd, ptr %gep201, align 8, !tbaa !34
  %indvars.iv.next180.1 = add nsw i64 %indvars.iv179, 2 ; 2 uses
  %gep199.1 = getelementptr [8 x i8], ptr %invariant.gep198, i64 %indvars.iv.next180.1 ; 2 uses
  %i.hf = load double, ptr %gep199.1, align 8, !tbaa !34
  %gep201.1 = getelementptr [8 x i8], ptr %invariant.gep200, i64 %indvars.iv.next180.1 ; 2 uses
  %i.hg = load double, ptr %gep201.1, align 8, !tbaa !34
  store double %i.hg, ptr %gep199.1, align 8, !tbaa !34
  store double %i.hf, ptr %gep201.1, align 8, !tbaa !34
  %indvars.iv.next180.2 = add nsw i64 %indvars.iv179, 3 ; 2 uses
  %gep199.2 = getelementptr [8 x i8], ptr %invariant.gep198, i64 %indvars.iv.next180.2 ; 2 uses
  %i.hh = load double, ptr %gep199.2, align 8, !tbaa !34
  %gep201.2 = getelementptr [8 x i8], ptr %invariant.gep200, i64 %indvars.iv.next180.2 ; 2 uses
  %i.hi = load double, ptr %gep201.2, align 8, !tbaa !34
  store double %i.hi, ptr %gep199.2, align 8, !tbaa !34
  store double %i.hh, ptr %gep201.2, align 8, !tbaa !34
  %indvars.iv.next180.3 = add nsw i64 %indvars.iv179, 4 ; 4 uses
  %gep199.3 = getelementptr [8 x i8], ptr %invariant.gep198, i64 %indvars.iv.next180.3 ; 2 uses
  %i.hj = load double, ptr %gep199.3, align 8, !tbaa !34
  %gep201.3 = getelementptr [8 x i8], ptr %invariant.gep200, i64 %indvars.iv.next180.3 ; 2 uses
  %i.hk = load double, ptr %gep201.3, align 8, !tbaa !34
  store double %i.hk, ptr %gep199.3, align 8, !tbaa !34
  store double %i.hj, ptr %gep201.3, align 8, !tbaa !34
  %exitcond183.not.3 = icmp eq i64 %indvars.iv.next180.3, %wide.trip.count182
  br i1 %exitcond183.not.3, label %.loopexit, label %scalar.ph265, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157, %scalar.ph265.prol.loopexit, %scalar.ph265, %middle.block230, %middle.block276, %._crit_edge, %._crit_edge162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !37, !38, !39}
!12 = distinct !{!12, !40}
!13 = distinct !{!13, !37, !38}
!14 = distinct !{!14, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !37, !38, !39}
!18 = distinct !{!18, !40}
!19 = distinct !{!19, !37, !38}
!20 = distinct !{!20, !"LVerDomain"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !37, !38, !39}
!24 = distinct !{!24, !40}
!25 = distinct !{!25, !37, !38}
!26 = distinct !{!26, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !37, !38, !39}
!30 = distinct !{!30, !40}
!31 = distinct !{!31, !37, !38}
end_hunk_0
