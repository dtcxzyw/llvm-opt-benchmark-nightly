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
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.am = getelementptr i8, ptr %2, i64 %i.ai
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 -16
  %i.ap = sext i32 %i.w to i64
  %i.aq = add nsw i64 %i.ap, %i.ad
  %i.ar = shl nsw i64 %i.aq, 3                    ; 2 uses
  %i.as = getelementptr i8, ptr %2, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = getelementptr i8, ptr %2, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 %i.al
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %bound0 = icmp ult ptr %i.ak, %i.aw
  %bound1 = icmp ult ptr %i.at, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, -8                      ; 3 uses
  %i.ax = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = or disjoint i64 %index, 1
  %i.az = add nsw i64 %i.ay, %i.ad                ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.az ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 32     ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ba, align 8, !tbaa !34, !alias.scope !35, !noalias !36
  %wide.load206 = load <4 x double>, ptr %i.bb, align 8, !tbaa !34, !alias.scope !35, !noalias !36
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep188, i64 %i.az ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 32     ; 2 uses
  %wide.load207 = load <4 x double>, ptr %i.bc, align 8, !tbaa !34, !alias.scope !36
  %wide.load208 = load <4 x double>, ptr %i.bd, align 8, !tbaa !34, !alias.scope !36
  store <4 x double> %wide.load207, ptr %i.ba, align 8, !tbaa !34, !alias.scope !35, !noalias !36
  store <4 x double> %wide.load208, ptr %i.bb, align 8, !tbaa !34, !alias.scope !35, !noalias !36
  store <4 x double> %wide.load, ptr %i.bc, align 8, !tbaa !34, !alias.scope !36
  store <4 x double> %wide.load206, ptr %i.bd, align 8, !tbaa !34, !alias.scope !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.ax, %middle.block ] ; 4 uses
  %i.bf = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bg = add nsw i64 %indvars.iv.prol, %i.ad     ; 2 uses
  %i.bh = mul nsw i64 %i.bg, %i.ae
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bh ; 2 uses
  %i.bi = load double, ptr %gep.prol, align 8, !tbaa !34
  %gep189.prol = getelementptr [8 x i8], ptr %invariant.gep188, i64 %i.bg ; 2 uses
  %i.bj = load double, ptr %gep189.prol, align 8, !tbaa !34
  store double %i.bj, ptr %gep.prol, align 8, !tbaa !34
  store double %i.bi, ptr %gep189.prol, align 8, !tbaa !34
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !12

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nsw i64 1, %i.ad
  %invariant.op301 = add nsw i64 2, %i.ad
  %invariant.op303 = add nsw i64 3, %i.ad
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.bm = add nsw i64 %indvars.iv, %i.ad          ; 2 uses
  %i.bn = mul nsw i64 %i.bm, %i.ae
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bn ; 2 uses
  %i.bo = load double, ptr %gep, align 8, !tbaa !34
  %gep189 = getelementptr [8 x i8], ptr %invariant.gep188, i64 %i.bm ; 2 uses
  %i.bp = load double, ptr %gep189, align 8, !tbaa !34
  store double %i.bp, ptr %gep, align 8, !tbaa !34
  store double %i.bo, ptr %gep189, align 8, !tbaa !34
  %.reass = add nsw i64 %indvars.iv, %invariant.op ; 2 uses
  %i.bq = mul nsw i64 %.reass, %i.ae
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bq ; 2 uses
  %i.br = load double, ptr %gep.1, align 8, !tbaa !34
  %gep189.1 = getelementptr [8 x i8], ptr %invariant.gep188, i64 %.reass ; 2 uses
  %i.bs = load double, ptr %gep189.1, align 8, !tbaa !34
  store double %i.bs, ptr %gep.1, align 8, !tbaa !34
  store double %i.br, ptr %gep189.1, align 8, !tbaa !34
  %.reass302 = add nsw i64 %indvars.iv, %invariant.op301 ; 2 uses
  %i.bt = mul nsw i64 %.reass302, %i.ae
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt ; 2 uses
  %i.bu = load double, ptr %gep.2, align 8, !tbaa !34
  %gep189.2 = getelementptr [8 x i8], ptr %invariant.gep188, i64 %.reass302 ; 2 uses
  %i.bv = load double, ptr %gep189.2, align 8, !tbaa !34
  store double %i.bv, ptr %gep.2, align 8, !tbaa !34
  store double %i.bu, ptr %gep189.2, align 8, !tbaa !34
  %.reass304 = add nsw i64 %indvars.iv, %invariant.op303 ; 2 uses
  %i.bw = mul nsw i64 %.reass304, %i.ae
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bw ; 2 uses
  %i.bx = load double, ptr %gep.3, align 8, !tbaa !34
  %gep189.3 = getelementptr [8 x i8], ptr %invariant.gep188, i64 %.reass304 ; 2 uses
  %i.by = load double, ptr %gep189.3, align 8, !tbaa !34
  store double %i.by, ptr %gep.3, align 8, !tbaa !34
  store double %i.bx, ptr %gep189.3, align 8, !tbaa !34
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %i.bz = load i32, ptr %1, align 4, !tbaa !32    ; 2 uses
  %.not150.not154 = icmp slt i32 %i.w, %i.bz
  br i1 %.not150.not154, label %.lr.ph157.preheader, label %.loopexit

.lr.ph157.preheader:                              ; preds = %._crit_edge
  %i.ca = sext i32 %i.w to i64                    ; 9 uses
  %i.cb = sext i32 %i.b to i64                    ; 5 uses
  %i.cc = sext i32 %i.q to i64                    ; 3 uses
  %wide.trip.count172 = sext i32 %i.bz to i64     ; 6 uses
  %invariant.gep190 = getelementptr [8 x i8], ptr %i.d, i64 %i.cc ; 6 uses
  %invariant.gep192 = getelementptr [8 x i8], ptr %i.d, i64 %i.ca ; 6 uses
  %i.cd = sub nsw i64 %wide.trip.count172, %i.ca  ; 3 uses
  %min.iters.check219 = icmp ugt i64 %i.cd, 27
  %ident.check210.not = icmp eq i32 %i.b, 1
  %or.cond288 = select i1 %min.iters.check219, i1 %ident.check210.not, i1 false
  br i1 %or.cond288, label %vector.memcheck220, label %.lr.ph157.preheader290

vector.memcheck220:                               ; preds = %.lr.ph157.preheader
  %i.ce = add nsw i64 %i.ca, %i.cc
  %i.cf = shl nsw i64 %i.ce, 3
  %i.cg = getelementptr i8, ptr %2, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  %i.ci = add nsw i64 %i.cc, %wide.trip.count172
  %i.cj = shl nsw i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %2, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = shl nsw i64 %i.ca, 4
  %i.cn = getelementptr i8, ptr %2, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -8
  %i.cp = add nsw i64 %i.ca, %wide.trip.count172
  %i.cq = shl nsw i64 %i.cp, 3
  %i.cr = getelementptr i8, ptr %2, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -8
  %bound0221 = icmp ult ptr %i.ch, %i.cs
  %bound1222 = icmp ult ptr %i.co, %i.cl
  %found.conflict223 = and i1 %bound0221, %bound1222
  br i1 %found.conflict223, label %.lr.ph157.preheader290, label %vector.ph224

vector.ph224:                                     ; preds = %vector.memcheck220
  %n.vec225 = and i64 %i.cd, -8                   ; 3 uses
  %i.ct = add nsw i64 %n.vec225, %i.ca
  %invariant.op305 = add i64 %i.ca, 1
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 2 uses
  %.reass306 = add i64 %index227, %invariant.op305 ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %invariant.gep190, i64 %.reass306 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 32     ; 2 uses
  %wide.load228 = load <4 x double>, ptr %i.cu, align 8, !tbaa !34, !alias.scope !41, !noalias !42
  %wide.load229 = load <4 x double>, ptr %i.cv, align 8, !tbaa !34, !alias.scope !41, !noalias !42
  %i.cw = getelementptr [8 x i8], ptr %invariant.gep192, i64 %.reass306 ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 32     ; 2 uses
  %wide.load230 = load <4 x double>, ptr %i.cw, align 8, !tbaa !34, !alias.scope !42
  %wide.load231 = load <4 x double>, ptr %i.cx, align 8, !tbaa !34, !alias.scope !42
  store <4 x double> %wide.load230, ptr %i.cu, align 8, !tbaa !34, !alias.scope !41, !noalias !42
  store <4 x double> %wide.load231, ptr %i.cv, align 8, !tbaa !34, !alias.scope !41, !noalias !42
  store <4 x double> %wide.load228, ptr %i.cw, align 8, !tbaa !34, !alias.scope !42
  store <4 x double> %wide.load229, ptr %i.cx, align 8, !tbaa !34, !alias.scope !42
  %index.next232 = add nuw i64 %index227, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.cy, label %middle.block233, label %vector.body226, !llvm.loop !17

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %i.cd, %n.vec225
  br i1 %cmp.n234, label %.loopexit, label %.lr.ph157.preheader290

.lr.ph157.preheader290:                           ; preds = %vector.memcheck220, %.lr.ph157.preheader, %middle.block233
  %indvars.iv169.ph = phi i64 [ %i.ca, %vector.memcheck220 ], [ %i.ca, %.lr.ph157.preheader ], [ %i.ct, %middle.block233 ] ; 4 uses
  %i.cz = sub nsw i64 %wide.trip.count172, %indvars.iv169.ph
  %xtraiter292 = and i64 %i.cz, 3                 ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol

.lr.ph157.prol:                                   ; preds = %.lr.ph157.preheader290, %.lr.ph157.prol
  %indvars.iv169.prol = phi i64 [ %indvars.iv.next170.prol, %.lr.ph157.prol ], [ %indvars.iv169.ph, %.lr.ph157.preheader290 ]
  %prol.iter294 = phi i64 [ %prol.iter294.next, %.lr.ph157.prol ], [ 0, %.lr.ph157.preheader290 ]
  %indvars.iv.next170.prol = add nsw i64 %indvars.iv169.prol, 1 ; 3 uses
  %i.da = mul nsw i64 %indvars.iv.next170.prol, %i.cb ; 2 uses
  %gep191.prol = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.da ; 2 uses
  %i.db = load double, ptr %gep191.prol, align 8, !tbaa !34
  %gep193.prol = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.da ; 2 uses
  %i.dc = load double, ptr %gep193.prol, align 8, !tbaa !34
  store double %i.dc, ptr %gep191.prol, align 8, !tbaa !34
  store double %i.db, ptr %gep193.prol, align 8, !tbaa !34
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol, !llvm.loop !18

.lr.ph157.prol.loopexit:                          ; preds = %.lr.ph157.prol, %.lr.ph157.preheader290
  %indvars.iv169.unr = phi i64 [ %indvars.iv169.ph, %.lr.ph157.preheader290 ], [ %indvars.iv.next170.prol, %.lr.ph157.prol ]
  %i.dd = sub nsw i64 %indvars.iv169.ph, %wide.trip.count172
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %.loopexit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157
  %indvars.iv169 = phi i64 [ %indvars.iv.next170.3, %.lr.ph157 ], [ %indvars.iv169.unr, %.lr.ph157.prol.loopexit ] ; 4 uses
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, 1
  %i.df = mul nsw i64 %indvars.iv.next170, %i.cb  ; 2 uses
  %gep191 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.df ; 2 uses
  %i.dg = load double, ptr %gep191, align 8, !tbaa !34
  %gep193 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.df ; 2 uses
  %i.dh = load double, ptr %gep193, align 8, !tbaa !34
  store double %i.dh, ptr %gep191, align 8, !tbaa !34
  store double %i.dg, ptr %gep193, align 8, !tbaa !34
  %indvars.iv.next170.1 = add nsw i64 %indvars.iv169, 2
  %i.di = mul nsw i64 %indvars.iv.next170.1, %i.cb ; 2 uses
  %gep191.1 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.di ; 2 uses
  %i.dj = load double, ptr %gep191.1, align 8, !tbaa !34
  %gep193.1 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.di ; 2 uses
  %i.dk = load double, ptr %gep193.1, align 8, !tbaa !34
  store double %i.dk, ptr %gep191.1, align 8, !tbaa !34
  store double %i.dj, ptr %gep193.1, align 8, !tbaa !34
  %indvars.iv.next170.2 = add nsw i64 %indvars.iv169, 3
  %i.dl = mul nsw i64 %indvars.iv.next170.2, %i.cb ; 2 uses
  %gep191.2 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.dl ; 2 uses
  %i.dm = load double, ptr %gep191.2, align 8, !tbaa !34
  %gep193.2 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.dl ; 2 uses
  %i.dn = load double, ptr %gep193.2, align 8, !tbaa !34
  store double %i.dn, ptr %gep191.2, align 8, !tbaa !34
  store double %i.dm, ptr %gep193.2, align 8, !tbaa !34
  %indvars.iv.next170.3 = add nsw i64 %indvars.iv169, 4 ; 3 uses
  %i.do = mul nsw i64 %indvars.iv.next170.3, %i.cb ; 2 uses
  %gep191.3 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.do ; 2 uses
  %i.dp = load double, ptr %gep191.3, align 8, !tbaa !34
  %gep193.3 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.do ; 2 uses
  %i.dq = load double, ptr %gep193.3, align 8, !tbaa !34
  store double %i.dq, ptr %gep191.3, align 8, !tbaa !34
  store double %i.dp, ptr %gep193.3, align 8, !tbaa !34
  %exitcond173.not.3 = icmp eq i64 %indvars.iv.next170.3, %wide.trip.count172
  br i1 %exitcond173.not.3, label %.loopexit, label %.lr.ph157, !llvm.loop !19

bb.c:                                             ; preds = %bb.a
  %i.dr = add nsw i32 %i.f, %i.b
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ds
  %i.du = load i32, ptr %5, align 4, !tbaa !32
  %i.dv = add nsw i32 %i.du, %i.b
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dw
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.dt, ptr noundef nonnull %3, ptr noundef %i.dx, ptr noundef nonnull %3) #3
  %i.dy = load i32, ptr %4, align 4, !tbaa !32    ; 6 uses
  %i.dz = add i32 %i.b, 1                         ; 2 uses
  %i.ea = mul i32 %i.dy, %i.dz
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.eb ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !34
  %i.ee = load i32, ptr %5, align 4, !tbaa !32    ; 7 uses
  %i.ef = mul i32 %i.ee, %i.dz
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.eg ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !34
  store double %i.ei, ptr %i.ec, align 8, !tbaa !34
  store double %i.ed, ptr %i.eh, align 8, !tbaa !34
  %i.ej = sub i32 %i.dy, %i.ee
  %.not147158 = icmp sgt i32 %i.ej, -2
  br i1 %.not147158, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.c
  %i.ek = mul nsw i32 %i.dy, %i.b
  %i.el = sext i32 %i.dy to i64                   ; 8 uses
  %i.em = sext i32 %i.ek to i64
  %i.en = sext i32 %i.b to i64                    ; 5 uses
  %i.eo = sext i32 %i.ee to i64                   ; 2 uses
  %i.ep = sub i32 %i.ee, %i.dy
  %wide.trip.count177 = zext i32 %i.ep to i64     ; 5 uses
  %invariant.gep194 = getelementptr [8 x i8], ptr %i.d, i64 %i.em ; 6 uses
  %invariant.gep196 = getelementptr [8 x i8], ptr %i.d, i64 %i.eo ; 6 uses
  %i.eq = add nsw i64 %wide.trip.count177, -1     ; 3 uses
  %min.iters.check246 = icmp ugt i64 %i.eq, 23
  %ident.check237.not = icmp eq i32 %i.b, 1
  %or.cond289 = select i1 %min.iters.check246, i1 %ident.check237.not, i1 false
  br i1 %or.cond289, label %vector.memcheck247, label %scalar.ph245.preheader

vector.memcheck247:                               ; preds = %.lr.ph161
  %i.er = shl nsw i64 %i.el, 4                    ; 2 uses
  %i.es = getelementptr i8, ptr %2, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -8
  %i.eu = shl nuw nsw i64 %wide.trip.count177, 3  ; 2 uses
  %i.ev = getelementptr i8, ptr %2, i64 %i.er
  %i.ew = getelementptr i8, ptr %i.ev, i64 %i.eu
  %i.ex = getelementptr i8, ptr %i.ew, i64 -16
  %i.ey = add nsw i64 %i.eo, %i.el
  %i.ez = shl nsw i64 %i.ey, 3                    ; 2 uses
  %i.fa = getelementptr i8, ptr %2, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 -8
  %i.fc = getelementptr i8, ptr %2, i64 %i.ez
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.eu
  %i.fe = getelementptr i8, ptr %i.fd, i64 -16
  %bound0248 = icmp ult ptr %i.et, %i.fe
  %bound1249 = icmp ult ptr %i.fb, %i.ex
  %found.conflict250 = and i1 %bound0248, %bound1249
  br i1 %found.conflict250, label %scalar.ph245.preheader, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck247
  %n.vec252 = and i64 %i.eq, -8                   ; 3 uses
  %i.ff = or disjoint i64 %n.vec252, 1
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next259, %vector.body253 ] ; 2 uses
  %i.fg = or disjoint i64 %index254, 1
  %i.fh = add nsw i64 %i.fg, %i.el                ; 2 uses
  %i.fi = getelementptr [8 x i8], ptr %invariant.gep194, i64 %i.fh ; 3 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 32     ; 2 uses
  %wide.load255 = load <4 x double>, ptr %i.fi, align 8, !tbaa !34, !alias.scope !43, !noalias !44
  %wide.load256 = load <4 x double>, ptr %i.fj, align 8, !tbaa !34, !alias.scope !43, !noalias !44
  %i.fk = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.fh ; 3 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 32     ; 2 uses
  %wide.load257 = load <4 x double>, ptr %i.fk, align 8, !tbaa !34, !alias.scope !44
  %wide.load258 = load <4 x double>, ptr %i.fl, align 8, !tbaa !34, !alias.scope !44
  store <4 x double> %wide.load257, ptr %i.fi, align 8, !tbaa !34, !alias.scope !43, !noalias !44
  store <4 x double> %wide.load258, ptr %i.fj, align 8, !tbaa !34, !alias.scope !43, !noalias !44
  store <4 x double> %wide.load255, ptr %i.fk, align 8, !tbaa !34, !alias.scope !44
  store <4 x double> %wide.load256, ptr %i.fl, align 8, !tbaa !34, !alias.scope !44
  %index.next259 = add nuw i64 %index254, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.fm, label %middle.block260, label %vector.body253, !llvm.loop !23

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.eq, %n.vec252
  br i1 %cmp.n261, label %._crit_edge162, label %scalar.ph245.preheader

scalar.ph245.preheader:                           ; preds = %vector.memcheck247, %.lr.ph161, %middle.block260
  %indvars.iv174.ph = phi i64 [ 1, %vector.memcheck247 ], [ 1, %.lr.ph161 ], [ %i.ff, %middle.block260 ] ; 4 uses
  %i.fn = sub nsw i64 %wide.trip.count177, %indvars.iv174.ph
  %xtraiter295 = and i64 %i.fn, 3                 ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %scalar.ph245.prol.loopexit, label %scalar.ph245.prol

scalar.ph245.prol:                                ; preds = %scalar.ph245.preheader, %scalar.ph245.prol
  %indvars.iv174.prol = phi i64 [ %indvars.iv.next175.prol, %scalar.ph245.prol ], [ %indvars.iv174.ph, %scalar.ph245.preheader ] ; 2 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %scalar.ph245.prol ], [ 0, %scalar.ph245.preheader ]
  %i.fo = add nsw i64 %indvars.iv174.prol, %i.el  ; 2 uses
  %gep195.prol = getelementptr [8 x i8], ptr %invariant.gep194, i64 %i.fo ; 2 uses
  %i.fp = load double, ptr %gep195.prol, align 8, !tbaa !34
  %i.fq = mul nsw i64 %i.fo, %i.en
  %gep197.prol = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.fq ; 2 uses
  %i.fr = load double, ptr %gep197.prol, align 8, !tbaa !34
  store double %i.fr, ptr %gep195.prol, align 8, !tbaa !34
  store double %i.fp, ptr %gep197.prol, align 8, !tbaa !34
  %indvars.iv.next175.prol = add nuw nsw i64 %indvars.iv174.prol, 1 ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %scalar.ph245.prol.loopexit, label %scalar.ph245.prol, !llvm.loop !24

scalar.ph245.prol.loopexit:                       ; preds = %scalar.ph245.prol, %scalar.ph245.preheader
  %indvars.iv174.unr = phi i64 [ %indvars.iv174.ph, %scalar.ph245.preheader ], [ %indvars.iv.next175.prol, %scalar.ph245.prol ]
  %i.fs = sub nsw i64 %indvars.iv174.ph, %wide.trip.count177
  %i.ft = icmp ugt i64 %i.fs, -4
  br i1 %i.ft, label %._crit_edge162, label %scalar.ph245.preheader.new

scalar.ph245.preheader.new:                       ; preds = %scalar.ph245.prol.loopexit
  %invariant.op307 = add nsw i64 1, %i.el
  %invariant.op309 = add nsw i64 2, %i.el
  %invariant.op311 = add nsw i64 3, %i.el
  br label %scalar.ph245

scalar.ph245:                                     ; preds = %scalar.ph245, %scalar.ph245.preheader.new
  %indvars.iv174 = phi i64 [ %indvars.iv174.unr, %scalar.ph245.preheader.new ], [ %indvars.iv.next175.3, %scalar.ph245 ] ; 5 uses
  %i.fu = add nsw i64 %indvars.iv174, %i.el       ; 2 uses
  %gep195 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %i.fu ; 2 uses
  %i.fv = load double, ptr %gep195, align 8, !tbaa !34
  %i.fw = mul nsw i64 %i.fu, %i.en
  %gep197 = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.fw ; 2 uses
  %i.fx = load double, ptr %gep197, align 8, !tbaa !34
  store double %i.fx, ptr %gep195, align 8, !tbaa !34
  store double %i.fv, ptr %gep197, align 8, !tbaa !34
  %.reass308 = add nsw i64 %indvars.iv174, %invariant.op307 ; 2 uses
  %gep195.1 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %.reass308 ; 2 uses
  %i.fy = load double, ptr %gep195.1, align 8, !tbaa !34
  %i.fz = mul nsw i64 %.reass308, %i.en
  %gep197.1 = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.fz ; 2 uses
  %i.ga = load double, ptr %gep197.1, align 8, !tbaa !34
  store double %i.ga, ptr %gep195.1, align 8, !tbaa !34
  store double %i.fy, ptr %gep197.1, align 8, !tbaa !34
  %.reass310 = add nsw i64 %indvars.iv174, %invariant.op309 ; 2 uses
  %gep195.2 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %.reass310 ; 2 uses
  %i.gb = load double, ptr %gep195.2, align 8, !tbaa !34
  %i.gc = mul nsw i64 %.reass310, %i.en
  %gep197.2 = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.gc ; 2 uses
  %i.gd = load double, ptr %gep197.2, align 8, !tbaa !34
  store double %i.gd, ptr %gep195.2, align 8, !tbaa !34
  store double %i.gb, ptr %gep197.2, align 8, !tbaa !34
  %.reass312 = add nsw i64 %indvars.iv174, %invariant.op311 ; 2 uses
  %gep195.3 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %.reass312 ; 2 uses
  %i.ge = load double, ptr %gep195.3, align 8, !tbaa !34
  %i.gf = mul nsw i64 %.reass312, %i.en
  %gep197.3 = getelementptr [8 x i8], ptr %invariant.gep196, i64 %i.gf ; 2 uses
  %i.gg = load double, ptr %gep197.3, align 8, !tbaa !34
  store double %i.gg, ptr %gep195.3, align 8, !tbaa !34
  store double %i.ge, ptr %gep197.3, align 8, !tbaa !34
  %indvars.iv.next175.3 = add nuw nsw i64 %indvars.iv174, 4 ; 2 uses
  %exitcond178.not.3 = icmp eq i64 %indvars.iv.next175.3, %wide.trip.count177
  br i1 %exitcond178.not.3, label %._crit_edge162, label %scalar.ph245, !llvm.loop !25

._crit_edge162:                                   ; preds = %scalar.ph245.prol.loopexit, %scalar.ph245, %middle.block260, %bb.c
  %i.gh = load i32, ptr %1, align 4, !tbaa !32    ; 2 uses
  %.not148.not163 = icmp slt i32 %i.ee, %i.gh
  br i1 %.not148.not163, label %.lr.ph166, label %.loopexit

.lr.ph166:                                        ; preds = %._crit_edge162
  %i.gi = mul nsw i32 %i.dy, %i.b
  %i.gj = mul nsw i32 %i.ee, %i.b
  %i.gk = sext i32 %i.ee to i64                   ; 7 uses
  %i.gl = sext i32 %i.gi to i64                   ; 3 uses
  %i.gm = sext i32 %i.gj to i64                   ; 3 uses
  %wide.trip.count182 = sext i32 %i.gh to i64     ; 6 uses
  %invariant.gep198 = getelementptr [8 x i8], ptr %i.d, i64 %i.gl ; 6 uses
  %invariant.gep200 = getelementptr [8 x i8], ptr %i.d, i64 %i.gm ; 6 uses
  %i.gn = sub nsw i64 %wide.trip.count182, %i.gk  ; 3 uses
  %min.iters.check271 = icmp ult i64 %i.gn, 36
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph166
  %i.go = add nsw i64 %i.gk, %i.gl
  %i.gp = add nsw i64 %i.go, %i.c
  %i.gq = shl nsw i64 %i.gp, 3
  %i.gr = getelementptr i8, ptr %2, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = add nsw i64 %wide.trip.count182, %i.gl
  %i.gu = add nsw i64 %i.gt, %i.c
  %i.gv = shl nsw i64 %i.gu, 3
  %i.gw = getelementptr i8, ptr %2, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %i.gy = add nsw i64 %i.gk, %i.gm
  %i.gz = add nsw i64 %i.gy, %i.c
  %i.ha = shl nsw i64 %i.gz, 3
  %i.hb = getelementptr i8, ptr %2, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %i.hd = add nsw i64 %wide.trip.count182, %i.gm
  %i.he = add nsw i64 %i.hd, %i.c
  %i.hf = shl nsw i64 %i.he, 3
  %i.hg = getelementptr i8, ptr %2, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  %bound0273 = icmp ult ptr %i.gs, %i.hh
  %bound1274 = icmp ult ptr %i.hc, %i.gx
  %found.conflict275 = and i1 %bound0273, %bound1274
  br i1 %found.conflict275, label %scalar.ph270.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck272
  %n.vec277 = and i64 %i.gn, -8                   ; 3 uses
  %i.hi = add nsw i64 %n.vec277, %i.gk
  %invariant.op313 = add i64 %i.gk, 1
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 2 uses
  %.reass314 = add i64 %index279, %invariant.op313 ; 2 uses
  %i.hj = getelementptr [8 x i8], ptr %invariant.gep198, i64 %.reass314 ; 3 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 32     ; 2 uses
  %wide.load280 = load <4 x double>, ptr %i.hj, align 8, !tbaa !34, !alias.scope !45, !noalias !46
  %wide.load281 = load <4 x double>, ptr %i.hk, align 8, !tbaa !34, !alias.scope !45, !noalias !46
  %i.hl = getelementptr [8 x i8], ptr %invariant.gep200, i64 %.reass314 ; 3 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 32     ; 2 uses
  %wide.load282 = load <4 x double>, ptr %i.hl, align 8, !tbaa !34, !alias.scope !46
  %wide.load283 = load <4 x double>, ptr %i.hm, align 8, !tbaa !34, !alias.scope !46
  store <4 x double> %wide.load282, ptr %i.hj, align 8, !tbaa !34, !alias.scope !45, !noalias !46
  store <4 x double> %wide.load283, ptr %i.hk, align 8, !tbaa !34, !alias.scope !45, !noalias !46
  store <4 x double> %wide.load280, ptr %i.hl, align 8, !tbaa !34, !alias.scope !46
  store <4 x double> %wide.load281, ptr %i.hm, align 8, !tbaa !34, !alias.scope !46
  %index.next284 = add nuw i64 %index279, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.hn, label %middle.block285, label %vector.body278, !llvm.loop !29

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %i.gn, %n.vec277
  br i1 %cmp.n286, label %.loopexit, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %vector.memcheck272, %.lr.ph166, %middle.block285
end_hunk_0
