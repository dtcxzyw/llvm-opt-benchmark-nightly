loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { [2 x i64] }

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @CRYPTO_xts128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon, align 16               ; 17 uses
  %7 = alloca %union.anon, align 16               ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.a = icmp ult i64 %4, 16
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  call void %i.c(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %i.e) #3
  %.not = icmp ne i32 %5, 0                       ; 2 uses
  %i.f = and i64 %4, 15
  %.not65 = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not, %.not65
  %i.g = add i64 %4, -16
  %spec.select = select i1 %or.cond, i64 %4, i64 %i.g ; 3 uses
  %i.h = icmp ugt i64 %spec.select, 15
  br i1 %i.h, label %.lr.ph, label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <2 x i64>, ptr %6, align 16, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.05672 = phi ptr [ %2, %.lr.ph ], [ %i.ab, %select.unfold ] ; 2 uses
  %.05771 = phi ptr [ %3, %.lr.ph ], [ %i.aa, %select.unfold ] ; 3 uses
  %.170 = phi i64 [ %spec.select, %.lr.ph ], [ %i.y, %select.unfold ]
  %i.m = phi <2 x i64> [ %i.l, %.lr.ph ], [ %i.ai, %select.unfold ]
  %i.n = load <2 x i64>, ptr %.05672, align 1, !tbaa !14
  %i.o = xor <2 x i64> %i.m, %i.n
  store <2 x i64> %i.o, ptr %7, align 16, !tbaa !13
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.q = load ptr, ptr %0, align 8, !tbaa !17
  call void %i.p(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.q) #3
  %i.r = load i64, ptr %6, align 16, !tbaa !13    ; 3 uses
  %i.s = load i64, ptr %7, align 16, !tbaa !13
  %i.t = xor i64 %i.s, %i.r                       ; 3 uses
  store i64 %i.t, ptr %7, align 16, !tbaa !13
  store i64 %i.t, ptr %.05771, align 1, !tbaa !14
  %i.u = load i64, ptr %i.i, align 8              ; 3 uses
  %i.v = load i64, ptr %i.j, align 8, !tbaa !13
  %i.w = xor i64 %i.v, %i.u                       ; 3 uses
  store i64 %i.w, ptr %i.j, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.05771, i64 8
  store i64 %i.w, ptr %i.x, align 1, !tbaa !14
  %i.y = add i64 %.170, -16                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit, label %select.unfold

select.unfold:                                    ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.05771, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05672, i64 16 ; 2 uses
  %isneg66 = icmp slt i64 %i.u, 0
  %i.ac = select i1 %isneg66, i64 135, i64 0
  %i.ad = shl i64 %i.r, 1
  %i.ae = xor i64 %i.ac, %i.ad                    ; 2 uses
  store i64 %i.ae, ptr %6, align 16, !tbaa !13
  %i.af = call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.r, i64 1) ; 2 uses
  store i64 %i.af, ptr %i.i, align 8, !tbaa !13
  %i.ag = icmp ugt i64 %i.y, 15
  %i.ah = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %i.ai = insertelement <2 x i64> %i.ah, i64 %i.af, i64 1
  br i1 %i.ag, label %bb.c, label %select.unfold._crit_edge, !llvm.loop !18

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.b
  %i.aj = phi i64 [ undef, %bb.b ], [ %i.w, %select.unfold ]
  %i.ak = phi i64 [ undef, %bb.b ], [ %i.t, %select.unfold ]
  %.1.lcssa = phi i64 [ %spec.select, %bb.b ], [ %i.y, %select.unfold ] ; 20 uses
  %.057.lcssa = phi ptr [ %3, %bb.b ], [ %i.aa, %select.unfold ] ; 15 uses
  %.056.lcssa = phi ptr [ %2, %bb.b ], [ %i.ab, %select.unfold ] ; 15 uses
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %select.unfold._crit_edge
  %.not81 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not81, label %._crit_edge79, label %iter.check164

iter.check164:                                    ; preds = %.preheader
  %min.iters.check148 = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check148, label %.lr.ph78.preheader.a, label %vector.memcheck133

vector.memcheck133:                               ; preds = %iter.check164
  %scevgep134.a = getelementptr i8, ptr %.057.lcssa, i64 %.1.lcssa ; 2 uses
  %scevgep135 = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %scevgep136 = getelementptr i8, ptr %.056.lcssa, i64 %.1.lcssa ; 2 uses
  %bound0137 = icmp ult ptr %.057.lcssa, %scevgep135
  %bound1138 = icmp ult ptr %7, %scevgep134.a
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0140 = icmp ult ptr %.057.lcssa, %scevgep136
  %bound1141 = icmp ult ptr %.056.lcssa, %scevgep134.a
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx143 = or i1 %found.conflict139, %found.conflict142
  %bound0144 = icmp ult ptr %7, %scevgep136
  %bound1145 = icmp ult ptr %.056.lcssa, %scevgep135
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx143, %found.conflict146
  br i1 %conflict.rdx147, label %.lr.ph78.preheader.a, label %vec.epilog.ph168

vec.epilog.ph168:                                 ; preds = %vector.memcheck133
  %n.vec170 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body171

vec.epilog.vector.body171:                        ; preds = %vec.epilog.vector.body171, %vec.epilog.ph168
  %index172 = phi i64 [ 0, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body171 ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.056.lcssa, i64 %index172
  %wide.load173 = load <4 x i8>, ptr %i.al, align 1, !tbaa !13, !alias.scope !20
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 %index172 ; 2 uses
  %wide.load174 = load <4 x i8>, ptr %i.am, align 4, !tbaa !13, !alias.scope !23, !noalias !20
  %i.an = getelementptr inbounds nuw i8, ptr %.057.lcssa, i64 %index172
  store <4 x i8> %wide.load174, ptr %i.an, align 1, !tbaa !13, !alias.scope !25, !noalias !27
  store <4 x i8> %wide.load173, ptr %i.am, align 4, !tbaa !13, !alias.scope !23, !noalias !20
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.ao, label %vec.epilog.middle.block176, label %vec.epilog.vector.body171, !llvm.loop !28

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body171
  %cmp.n177 = icmp eq i64 %.1.lcssa, %n.vec170
  br i1 %cmp.n177, label %._crit_edge79.loopexit, label %.lr.ph78.preheader.a

.lr.ph78.preheader.a:                             ; preds = %vector.memcheck133, %iter.check164, %vec.epilog.middle.block176
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck133 ], [ 0, %iter.check164 ], [ %n.vec170, %vec.epilog.middle.block176 ] ; 6 uses
  %.neg188 = or disjoint i64 %indvars.iv86.ph, 1
  %xtraiter186 = and i64 %.1.lcssa, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol

.lr.ph78.prol:                                    ; preds = %.lr.ph78.preheader.a
  %8 = getelementptr inbounds nuw i8, ptr %.056.lcssa, i64 %indvars.iv86.ph
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv86.ph ; 2 uses
  %11 = load i8, ptr %10, align 4, !tbaa !13
  %12 = getelementptr inbounds nuw i8, ptr %.057.lcssa, i64 %indvars.iv86.ph
  store i8 %11, ptr %12, align 1, !tbaa !13
  store i8 %9, ptr %10, align 4, !tbaa !13
  %indvars.iv.next87.prol = or disjoint i64 %indvars.iv86.ph, 1
  br label %.lr.ph78.prol.loopexit

.lr.ph78.prol.loopexit:                           ; preds = %.lr.ph78.prol, %.lr.ph78.preheader.a
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %.lr.ph78.preheader.a ], [ %indvars.iv.next87.prol, %.lr.ph78.prol ]
  %13 = icmp eq i64 %.1.lcssa, %.neg188
  br i1 %13, label %._crit_edge79.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.1, %.lr.ph78 ], [ %indvars.iv86.unr, %.lr.ph78.prol.loopexit ] ; 5 uses
  %14 = getelementptr inbounds nuw i8, ptr %.056.lcssa, i64 %indvars.iv86
  %15 = load i8, ptr %14, align 1, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv86 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %16 = getelementptr inbounds nuw i8, ptr %.057.lcssa, i64 %indvars.iv86
  store i8 %i.aq, ptr %16, align 1, !tbaa !13
  store i8 %15, ptr %i.ap, align 1, !tbaa !13
  %indvars.iv.next87 = add nuw i64 %indvars.iv86, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.056.lcssa, i64 %indvars.iv.next87
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next87 ; 2 uses
  %17 = load i8, ptr %i.at, align 1, !tbaa !13
  %18 = getelementptr inbounds nuw i8, ptr %.057.lcssa, i64 %indvars.iv.next87
  store i8 %17, ptr %18, align 1, !tbaa !13
  store i8 %i.as, ptr %i.at, align 1, !tbaa !13
  %indvars.iv.next87.1 = add nuw i64 %indvars.iv86, 2 ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %indvars.iv.next87.1, %.1.lcssa
  br i1 %exitcond89.not.1, label %._crit_edge79.loopexit, label %.lr.ph78, !llvm.loop !31

._crit_edge79.loopexit:                           ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78, %vec.epilog.middle.block176
  %.pre93 = load i64, ptr %7, align 16, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre94 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %._crit_edge79

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit, %.preheader
  %i.au = phi i64 [ %.pre94, %._crit_edge79.loopexit ], [ %i.aj, %.preheader ]
  %i.av = phi i64 [ %.pre93, %._crit_edge79.loopexit ], [ %i.ak, %.preheader ]
  %i.aw = load i64, ptr %6, align 16, !tbaa !13
  %i.ax = xor i64 %i.av, %i.aw
  store i64 %i.ax, ptr %7, align 16, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = xor i64 %i.au, %i.az
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  %i.be = load ptr, ptr %0, align 8, !tbaa !17
  call void %i.bd(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.be) #3
  %i.bf = load <2 x i64>, ptr %6, align 16, !tbaa !13
  %i.bg = load <2 x i64>, ptr %7, align 16, !tbaa !13
  %i.bh = xor <2 x i64> %i.bg, %i.bf
  store <2 x i64> %i.bh, ptr %7, align 16, !tbaa !13
  %i.bi = getelementptr inbounds i8, ptr %.057.lcssa, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bi, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %select.unfold._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !13
  %isneg = icmp slt i32 %i.bk, 0
  %i.bl = select i1 %isneg, i64 135, i64 0
  %i.bm = load i64, ptr %6, align 16, !tbaa !13   ; 2 uses
  %i.bn = shl i64 %i.bm, 1
  %i.bo = xor i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !13
  %i.br = call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bm, i64 1) ; 2 uses
  %i.bs = load i64, ptr %.056.lcssa, align 1, !tbaa !14
  %i.bt = xor i64 %i.bs, %i.bo
  store i64 %i.bt, ptr %7, align 16, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.056.lcssa, i64 8
  %i.bv = load i64, ptr %i.bu, align 1, !tbaa !14
  %i.bw = xor i64 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !16
  %i.ca = load ptr, ptr %0, align 8, !tbaa !17
  call void %i.bz(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.ca) #3
  %i.cb = load i64, ptr %7, align 16, !tbaa !13
  %i.cc = xor i64 %i.cb, %i.bo                    ; 2 uses
  store i64 %i.cc, ptr %7, align 16, !tbaa !13
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !13
  %i.ce = xor i64 %i.cd, %i.br                    ; 2 uses
  store i64 %i.ce, ptr %i.bx, align 8, !tbaa !13
  %.not80 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not80, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph76.preheader.a, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %19 = add nsw i64 %.1.lcssa, -1                 ; 2 uses
  %20 = and i64 %19, 4294967280
  %21 = icmp eq i64 %20, 4294967280
  %22 = icmp ugt i64 %19, 4294967295
  %23 = or i1 %21, %22
  br i1 %23, label %.lr.ph76.preheader.a, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %scevgep111.a = getelementptr i8, ptr %.057.lcssa, i64 16 ; 2 uses
  %24 = or disjoint i64 %.1.lcssa, 16             ; 2 uses
  %scevgep112.a = getelementptr i8, ptr %.057.lcssa, i64 %24 ; 2 uses
  %scevgep113 = getelementptr i8, ptr %.056.lcssa, i64 16 ; 2 uses
  %scevgep114 = getelementptr i8, ptr %.056.lcssa, i64 %24 ; 2 uses
  %bound0 = icmp ult ptr %7, %scevgep112.a
  %bound1 = icmp ult ptr %scevgep111.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %7, %scevgep114
  %bound1116 = icmp ult ptr %scevgep113, %scevgep
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118 = icmp ult ptr %scevgep111.a, %scevgep114
  %bound1119 = icmp ult ptr %scevgep113, %scevgep112.a
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict120
  br i1 %conflict.rdx121, label %.lr.ph76.preheader.a, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec127 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 3 uses
  %i.cf = add i64 %index128, 16
  %i.cg = and i64 %i.cf, 4294967292               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.056.lcssa, i64 %i.cg
  %wide.load129 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !13, !alias.scope !32
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 %index128 ; 2 uses
  %wide.load130 = load <4 x i8>, ptr %i.ci, align 4, !tbaa !13, !alias.scope !35, !noalias !37
  %i.cj = getelementptr inbounds nuw i8, ptr %.057.lcssa, i64 %i.cg
  store <4 x i8> %wide.load130, ptr %i.cj, align 1, !tbaa !13, !alias.scope !39, !noalias !32
  store <4 x i8> %wide.load129, ptr %i.ci, align 4, !tbaa !13, !alias.scope !35, !noalias !37
  %index.next131 = add nuw i64 %index128, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next131, %n.vec127
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n132 = icmp eq i64 %.1.lcssa, %n.vec127
  br i1 %cmp.n132, label %._crit_edge.loopexit, label %.lr.ph76.preheader.a

.lr.ph76.preheader.a:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec127, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %.1.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader.a
  %25 = or disjoint i64 %indvars.iv.ph, 16        ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %.056.lcssa, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.ph ; 2 uses
  %29 = load i8, ptr %28, align 4, !tbaa !13
  %30 = getelementptr inbounds nuw i8, ptr %.057.lcssa, i64 %25
  store i8 %29, ptr %30, align 1, !tbaa !13
  store i8 %27, ptr %28, align 4, !tbaa !13
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph76.prol.loopexit

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol, %.lr.ph76.preheader.a
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph76.preheader.a ], [ %indvars.iv.next.prol, %.lr.ph76.prol ]
  %31 = icmp eq i64 %.1.lcssa, %.neg
  br i1 %31, label %._crit_edge.loopexit, label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph76 ], [ %indvars.iv.unr, %.lr.ph76.prol.loopexit ] ; 5 uses
  %i.cl = add i64 %indvars.iv, 16
  %i.cm = and i64 %i.cl, 4294967295               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.056.lcssa, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.lcssa, i64 %i.cm
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !13
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !13
  %32 = add i64 %indvars.iv, 17
  %33 = and i64 %32, 4294967295                   ; 2 uses
  %34 = getelementptr inbounds nuw i8, ptr %.056.lcssa, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 1 ; 2 uses
  %38 = load i8, ptr %37, align 1, !tbaa !13
  %39 = getelementptr inbounds nuw i8, ptr %.057.lcssa, i64 %33
  store i8 %38, ptr %39, align 1, !tbaa !13
  store i8 %35, ptr %37, align 1, !tbaa !13
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %.1.lcssa
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph76, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76, %vec.epilog.middle.block
  %.pre91 = load i64, ptr %7, align 16, !tbaa !13
  %.pre92 = load i64, ptr %i.bx, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.cs = phi i64 [ %.pre92, %._crit_edge.loopexit ], [ %i.ce, %bb.d ]
  %i.ct = phi i64 [ %.pre91, %._crit_edge.loopexit ], [ %i.cc, %bb.d ]
  %i.cu = load i64, ptr %6, align 16, !tbaa !13
  %i.cv = xor i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %7, align 16, !tbaa !13
  %i.cw = load i64, ptr %i.bp, align 8, !tbaa !13
  %i.cx = xor i64 %i.cs, %i.cw
  store i64 %i.cx, ptr %i.bx, align 8, !tbaa !13
  %i.cy = load ptr, ptr %i.by, align 8, !tbaa !16
  %i.cz = load ptr, ptr %0, align 8, !tbaa !17
  call void %i.cy(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.cz) #3
  %i.da = load <2 x i64>, ptr %7, align 16, !tbaa !13
  %i.db = load <2 x i64>, ptr %6, align 16, !tbaa !13
  %i.dc = xor <2 x i64> %i.db, %i.da
  store <2 x i64> %i.dc, ptr %.057.lcssa, align 1, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge79, %._crit_edge, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge79 ], [ -1, %bb.a ], [ 0, %._crit_edge ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 24}
!10 = !{!"xts128_context", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !7, i64 0}
!16 = !{!10, !11, i64 16}
!17 = !{!10, !11, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = !{!26}
!26 = distinct !{!26, !22}
!27 = !{!24, !21}
!28 = distinct !{!28, !19, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !19, !29}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = !{!38, !33}
!38 = distinct !{!38, !34}
!39 = !{!38}
!40 = distinct !{!40, !19, !29, !30}
!41 = distinct !{!41, !19, !29}
end_hunk_0
