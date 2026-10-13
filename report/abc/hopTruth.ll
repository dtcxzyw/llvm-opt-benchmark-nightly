Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/hopTruth?download=true
inline.NumInlined: 60
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Hop_ManConvertAigToTruth_rec2:bb.a
.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !19
  %i.ga = xor i32 %i.fz, -1
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !19
  %i.gd = and i32 %i.gc, %i.ga
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0.i132, i64 %indvars.iv
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !19
  %i.gh = xor i32 %i.gg, -1
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !19
  %i.gk = and i32 %i.gj, %i.gh
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0.i132, i64 %indvars.iv.next
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !42

.thread86:                                        ; preds = %bb.h
  br i1 %i.ca, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %.thread86
  %wide.trip.count116 = zext nneg i32 %2 to i64   ; 5 uses
  %min.iters.check155 = icmp ult i32 %2, 12
  br i1 %min.iters.check155, label %.lr.ph98.preheader227, label %vector.memcheck149

vector.memcheck149:                               ; preds = %.lr.ph98.preheader
  %i.gm = sub i64 %i.i, %.0.i132150
  %diff.check151 = icmp ugt i64 %i.gm, -32
  %i.gn = sub i64 %i.o, %.0.i132150
  %diff.check152 = icmp ugt i64 %i.gn, -32
  %conflict.rdx153 = or i1 %diff.check151, %diff.check152
  br i1 %conflict.rdx153, label %.lr.ph98.preheader227, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck149
  %n.vec157 = and i64 %wide.trip.count116, 2147483640 ; 3 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body158 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index159 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load160 = load <4 x i32>, ptr %i.go, align 4, !tbaa !19
  %wide.load161 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !19
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index159 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %wide.load162 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !19
  %wide.load163 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !19
  %i.gs = or <4 x i32> %wide.load162, %wide.load160
  %i.gt = or <4 x i32> %wide.load163, %wide.load161
  %i.gu = xor <4 x i32> %i.gs, splat (i32 -1)
  %i.gv = xor <4 x i32> %i.gt, splat (i32 -1)
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.0.i132, i64 %index159 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x i32> %i.gu, ptr %i.gw, align 4, !tbaa !19
  store <4 x i32> %i.gv, ptr %i.gx, align 4, !tbaa !19
  %index.next164 = add nuw i64 %index159, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.gy, label %middle.block165, label %vector.body158, !llvm.loop !43

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %n.vec157, %wide.trip.count116
  br i1 %cmp.n166, label %.loopexit, label %.lr.ph98.preheader227

.lr.ph98.preheader227:                            ; preds = %vector.memcheck149, %.lr.ph98.preheader, %middle.block165
  %indvars.iv113.ph = phi i64 [ 0, %vector.memcheck149 ], [ 0, %.lr.ph98.preheader ], [ %n.vec157, %middle.block165 ] ; 6 uses
  %xtraiter231 = and i64 %wide.trip.count116, 1
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader227
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv113.ph
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !19
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv113.ph
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !19
  %.demorgan.prol = or i32 %i.hc, %i.ha
  %i.hd = xor i32 %.demorgan.prol, -1
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0.i132, i64 %indvars.iv113.ph
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !19
  %indvars.iv.next114.prol = or disjoint i64 %indvars.iv113.ph, 1
  br label %.lr.ph98.prol.loopexit

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader227
  %indvars.iv113.unr = phi i64 [ %indvars.iv113.ph, %.lr.ph98.preheader227 ], [ %indvars.iv.next114.prol, %.lr.ph98.prol ]
  %i.hf = add nsw i64 %wide.trip.count116, -1
  %i.hg = icmp eq i64 %indvars.iv113.ph, %i.hf
  br i1 %i.hg, label %.loopexit, label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv113 = phi i64 [ %indvars.iv.next114.1, %.lr.ph98 ], [ %indvars.iv113.unr, %.lr.ph98.prol.loopexit ] ; 5 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv113
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !19
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv113
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !19
  %.demorgan = or i32 %i.hk, %i.hi
  %i.hl = xor i32 %.demorgan, -1
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.0.i132, i64 %indvars.iv113
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !19
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next114
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !19
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next114
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !19
  %.demorgan.1 = or i32 %i.hq, %i.ho
  %i.hr = xor i32 %.demorgan.1, -1
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.0.i132, i64 %indvars.iv.next114
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !19
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %exitcond117.not.1 = icmp eq i64 %indvars.iv.next114.1, %wide.trip.count116
  br i1 %exitcond117.not.1, label %.loopexit, label %.lr.ph98, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph102.prol.loopexit, %.lr.ph102, %.lr.ph98.prol.loopexit, %.lr.ph98, %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph96.prol.loopexit, %.lr.ph96, %.lr.ph100.prol.loopexit, %.lr.ph100, %middle.block, %middle.block165, %middle.block183, %middle.block201, %middle.block219, %Vec_IntFetch.exit.thread, %.preheader92, %.preheader90, %.thread86, %.preheader87, %.preheader
  %.0.i133 = phi ptr [ %.0.i132, %middle.block201 ], [ %.0.i132, %middle.block165 ], [ null, %Vec_IntFetch.exit.thread ], [ %.0.i132, %middle.block219 ], [ %.0.i132, %middle.block183 ], [ %.0.i132, %.preheader92 ], [ %.0.i132, %.preheader90 ], [ %.0.i132, %.thread86 ], [ %.0.i132, %.preheader87 ], [ %.0.i, %.preheader ], [ %.0.i, %middle.block ], [ %.0.i132, %.lr.ph98.prol.loopexit ], [ %.0.i132, %.lr.ph100.prol.loopexit ], [ %.0.i132, %.lr.ph96.prol.loopexit ], [ %.0.i132, %.lr.ph.prol.loopexit ], [ %.0.i132, %.lr.ph100 ], [ %.0.i132, %.lr.ph96 ], [ %.0.i132, %.lr.ph ], [ %.0.i132, %.lr.ph98 ], [ %.0.i, %.lr.ph102 ], [ %.0.i, %.lr.ph102.prol.loopexit ] ; 2 uses
  %i.ht = load i32, ptr %i.a, align 8
  %i.hu = and i32 %i.ht, -17
  store i32 %i.hu, ptr %i.a, align 8
  store ptr %.0.i133, ptr %0, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.b
  %.067 = phi ptr [ %.0.i133, %.loopexit ], [ %i.c, %bb.b ]
  ret ptr %.067
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @Hop_ManConvertAigToTruth(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 8
  %i.b = add nsw i32 %2, -5                       ; 8 uses
  %i.c = shl nuw i32 1, %i.b                      ; 8 uses
  br i1 %i.a, label %.new, label %Vec_PtrAllocTruthTables.exit

.new:                                             ; preds = %bb.a
  %i.d = sext i32 %i.c to i64                     ; 6 uses
  %i.e = shl nsw i64 %i.d, 2
  %i.f = add nsw i64 %i.e, 8
  %i.g = zext nneg i32 %2 to i64                  ; 5 uses
  %i.h = mul i64 %i.f, %i.g
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #9 ; 8 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g ; 5 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %unroll_iter = and i64 %i.g, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.k = mul nsw i64 %indvars.iv.i.i, %i.d
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !24
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.n = mul nsw i64 %indvars.iv.next.i.i, %i.d
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !24
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.q = mul nsw i64 %indvars.iv.next.i.i.1, %i.d
  %i.r = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.1
  store ptr %i.r, ptr %i.s, align 8, !tbaa !24
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.t = mul nsw i64 %indvars.iv.next.i.i.2, %i.d
  %i.u = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.2
  store ptr %i.u, ptr %i.v, align 8, !tbaa !24
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Vec_PtrAllocSimInfo.exit.i.unr-lcssa, label %bb.b, !llvm.loop !45

Vec_PtrAllocSimInfo.exit.i.unr-lcssa:             ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vec_PtrAllocSimInfo.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %Vec_PtrAllocSimInfo.exit.i.unr-lcssa
  %lcmp.mod180 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod180)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.3, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.w = mul nsw i64 %indvars.iv.i.i.epil, %i.d
  %i.x = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.epil
  store ptr %i.x, ptr %i.y, align 8, !tbaa !24
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Vec_PtrAllocSimInfo.exit.i, label %bb.c, !llvm.loop !46

Vec_PtrAllocSimInfo.exit.i:                       ; preds = %bb.c, %Vec_PtrAllocSimInfo.exit.i.unr-lcssa
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #9 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %2, ptr %i.aa, align 4, !tbaa !59
  store i32 %2, ptr %i.z, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !27
  %.not.i = icmp eq i32 %i.b, 31
  br i1 %.not.i, label %Vec_PtrAllocTruthTables.exit, label %Vec_PtrAllocSimInfo.exit.split.us.split.us.preheader.i

Vec_PtrAllocSimInfo.exit.split.us.split.us.preheader.i: ; preds = %Vec_PtrAllocSimInfo.exit.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %min.iters.check136 = icmp slt i32 %i.c, 8
  %n.vec138 = and i64 %wide.trip.count.i, 2147483640
  %exitcond.not.i = icmp slt i32 %i.c, 2
  %exitcond.not.i.1 = icmp eq i32 %i.b, 1
  %exitcond.not.i.3 = icmp eq i32 %i.b, 2
  %min.iters.check = icmp slt i32 %i.c, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640
  %exitcond54.not.i = icmp slt i32 %i.c, 2
  %exitcond54.not.i.1 = icmp eq i32 %i.b, 1
  %exitcond54.not.i.3 = icmp eq i32 %i.b, 2
  br label %Vec_PtrAllocSimInfo.exit.split.us.split.us.i

Vec_PtrAllocSimInfo.exit.split.us.split.us.i:     ; preds = %..loopexit27_crit_edge.us.us.i, %Vec_PtrAllocSimInfo.exit.split.us.split.us.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %Vec_PtrAllocSimInfo.exit.split.us.split.us.preheader.i ], [ %indvars.iv.next56.i, %..loopexit27_crit_edge.us.us.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv55.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24 ; 16 uses
  %i.ae = icmp samesign ult i64 %indvars.iv55.i, 5
  br i1 %i.ae, label %.preheader.us.us.i, label %.preheader26.us.us.i

.preheader26.us.us.i:                             ; preds = %Vec_PtrAllocSimInfo.exit.split.us.split.us.i
  %i.af = trunc i64 %indvars.iv55.i to i32
  %i.ag = add i32 %i.af, -5                       ; 5 uses
  %i.ah = shl nuw i32 1, %i.ag                    ; 3 uses
  br i1 %min.iters.check136, label %scalar.ph135, label %vector.ph137

vector.ph137:                                     ; preds = %.preheader26.us.us.i
  %broadcast.splatinsert139 = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat140 = shufflevector <4 x i32> %broadcast.splatinsert139, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph137
  %index142 = phi i64 [ 0, %vector.ph137 ], [ %index.next143, %vector.body141 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph137 ], [ %vec.ind.next, %vector.body141 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ai = and <4 x i32> %broadcast.splat140, %vec.ind
  %i.aj = and <4 x i32> %broadcast.splat140, %step.add
  %i.ak = icmp ne <4 x i32> %i.ai, zeroinitializer
  %i.al = icmp ne <4 x i32> %i.aj, zeroinitializer
  %i.am = sext <4 x i1> %i.ak to <4 x i32>
  %i.an = sext <4 x i1> %i.al to <4 x i32>
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index142 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %i.am, ptr %i.ao, align 4, !tbaa !19
  store <4 x i32> %i.an, ptr %i.ap, align 4, !tbaa !19
  %index.next143 = add nuw i64 %index142, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aq = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.aq, label %..loopexit27_crit_edge.us.us.i, label %vector.body141, !llvm.loop !47

scalar.ph135:                                     ; preds = %.preheader26.us.us.i
  store i32 0, ptr %i.ad, align 4, !tbaa !19
  br i1 %exitcond.not.i, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph135.1

scalar.ph135.1:                                   ; preds = %scalar.ph135
  %.not.us.us.i.1 = icmp eq i32 %i.ag, 0
  %spec.select.i.1 = sext i1 %.not.us.us.i.1 to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %spec.select.i.1, ptr %i.ar, align 4, !tbaa !19
  br i1 %exitcond.not.i.1, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph135.2

scalar.ph135.2:                                   ; preds = %scalar.ph135.1
  %i.as = icmp eq i32 %i.ag, 1
  %sext = sext i1 %i.as to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %sext, ptr %i.at, align 4, !tbaa !19
  %.not.us.us.i.3 = icmp ult i32 %i.ag, 2
  %spec.select.i.3 = sext i1 %.not.us.us.i.3 to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %spec.select.i.3, ptr %i.au, align 4, !tbaa !19
  br i1 %exitcond.not.i.3, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph135.4

scalar.ph135.4:                                   ; preds = %scalar.ph135.2
  %i.av = icmp eq i32 %i.ag, 2
  %sext209 = sext i1 %i.av to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 %sext209, ptr %i.aw, align 4, !tbaa !19
  %i.ax = and i32 %i.ah, 5
  %.not.us.us.i.5 = icmp ne i32 %i.ax, 0
  %spec.select.i.5 = sext i1 %.not.us.us.i.5 to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i32 %spec.select.i.5, ptr %i.ay, align 4, !tbaa !19
  %i.az = and i32 %i.ah, 6
  %.not.us.us.i.6 = icmp ne i32 %i.az, 0
  %spec.select.i.6 = sext i1 %.not.us.us.i.6 to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 %spec.select.i.6, ptr %i.ba, align 4, !tbaa !19
  br label %..loopexit27_crit_edge.us.us.i

.preheader.us.us.i:                               ; preds = %Vec_PtrAllocSimInfo.exit.split.us.split.us.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @__const.Vec_PtrAllocTruthTables.Masks, i64 %indvars.iv55.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !19 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bd, align 4, !tbaa !19
  store <4 x i32> %broadcast.splat, ptr %i.be, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %..loopexit27_crit_edge.us.us.i, label %vector.body, !llvm.loop !48

scalar.ph:                                        ; preds = %.preheader.us.us.i
  store i32 %i.bc, ptr %i.ad, align 4, !tbaa !19
  br i1 %exitcond54.not.i, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !19
  br i1 %exitcond54.not.i.1, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.bc, ptr %i.bi, align 4, !tbaa !19
  br i1 %exitcond54.not.i.3, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph.4

scalar.ph.4:                                      ; preds = %scalar.ph.2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 %i.bc, ptr %i.bj, align 4, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i32 %i.bc, ptr %i.bk, align 4, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 %i.bc, ptr %i.bl, align 4, !tbaa !19
  br label %..loopexit27_crit_edge.us.us.i

..loopexit27_crit_edge.us.us.i:                   ; preds = %vector.body141, %scalar.ph135, %scalar.ph135.1, %scalar.ph135.2, %scalar.ph135.4, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %scalar.ph.4
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %i.g
  br i1 %exitcond59.not.i, label %Vec_PtrAllocTruthTables.exit, label %Vec_PtrAllocSimInfo.exit.split.us.split.us.i, !llvm.loop !49

Vec_PtrAllocTruthTables.exit:                     ; preds = %..loopexit27_crit_edge.us.us.i, %bb.a, %Vec_PtrAllocSimInfo.exit.i
  %.pre-phi114 = phi i32 [ %i.c, %bb.a ], [ -2147483648, %Vec_PtrAllocSimInfo.exit.i ], [ %i.c, %..loopexit27_crit_edge.us.us.i ]
  %.pre-phi = phi i32 [ %i.b, %bb.a ], [ 31, %Vec_PtrAllocSimInfo.exit.i ], [ %i.b, %..loopexit27_crit_edge.us.us.i ]
  %.0 = phi ptr [ null, %bb.a ], [ %i.z, %Vec_PtrAllocSimInfo.exit.i ], [ %i.z, %..loopexit27_crit_edge.us.us.i ] ; 7 uses
  %i.bm = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.bn = and i64 %i.bm, -2
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = tail call i32 @Hop_ManConvertAigToTruth_rec1(ptr noundef %i.bo)
  %i.bq = icmp slt i32 %2, 6                      ; 2 uses
  %i.br = select i1 %i.bq, i32 1, i32 %.pre-phi114 ; 11 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !16
  %i.bt = add nsw i32 %i.bp, 1
  %i.bu = select i1 %i.bq, i32 0, i32 %.pre-phi
  %i.bv = shl i32 %i.bt, %i.bu                    ; 4 uses
  %i.bw = load i32, ptr %3, align 8, !tbaa !17    ; 2 uses
  %.not.i69 = icmp slt i32 %i.bw, %i.bv
  br i1 %.not.i69, label %bb.d, label %Vec_IntGrow.exit

bb.d:                                             ; preds = %Vec_PtrAllocTruthTables.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %.not9.i = icmp eq ptr %i.by, null
  %i.bz = sext i32 %i.bv to i64
  %i.ca = shl nsw i64 %i.bz, 2                    ; 2 uses
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = tail call ptr @realloc(ptr noundef nonnull %i.by, i64 noundef %i.ca) #10
  %.pre.pre = load i32, ptr %i.bs, align 4, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cc = tail call noalias ptr @malloc(i64 noundef %i.ca) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre = phi i32 [ %.pre.pre, %bb.e ], [ 0, %bb.f ]
  %i.cd = phi ptr [ %i.cb, %bb.e ], [ %i.cc, %bb.f ]
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !18
  store i32 %i.bv, ptr %3, align 8, !tbaa !17
  br label %Vec_IntGrow.exit

Vec_IntGrow.exit:                                 ; preds = %Vec_PtrAllocTruthTables.exit, %bb.g
  %i.ce = phi i32 [ %i.bw, %Vec_PtrAllocTruthTables.exit ], [ %i.bv, %bb.g ]
  %i.cf = phi i32 [ 0, %Vec_PtrAllocTruthTables.exit ], [ %.pre, %bb.g ]
  %i.cg = add nsw i32 %i.cf, %i.br                ; 3 uses
  store i32 %i.cg, ptr %i.bs, align 4, !tbaa !16
  %i.ch = icmp sgt i32 %i.cg, %i.ce
  br i1 %i.ch, label %Vec_IntFetch.exit, label %bb.h

bb.h:                                             ; preds = %Vec_IntGrow.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.ck = sext i32 %i.cg to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = sext i32 %i.br to i64
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cn
  br label %Vec_IntFetch.exit

Vec_IntFetch.exit:                                ; preds = %Vec_IntGrow.exit, %bb.h
  %.0.i = phi ptr [ %i.co, %bb.h ], [ null, %Vec_IntGrow.exit ] ; 12 uses
  %.0.i147 = ptrtoaddr ptr %.0.i to i64
  %i.cp = getelementptr i8, ptr %i.bo, i64 32
  %.val = load i32, ptr %i.cp, align 8
  %i.cq = and i32 %.val, 7
  %.not = icmp eq i32 %i.cq, 1
  br i1 %.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %Vec_IntFetch.exit
  %i.cr = and i64 %i.bm, 1
  %.not65 = icmp eq i64 %i.cr, 0
  %i.cs = icmp sgt i32 %i.br, 0                   ; 2 uses
  br i1 %.not65, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.cs, label %select.unfold.preheader.i, label %Hop_ManTruthClear.exit

select.unfold.preheader.i:                        ; preds = %bb.j
  %i.ct = zext nneg i32 %i.br to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0.i, i8 0, i64 %i.cu, i1 false), !tbaa !19
  br label %Hop_ManTruthClear.exit

bb.k:                                             ; preds = %bb.i
  br i1 %i.cs, label %select.unfold.preheader.i72, label %Hop_ManTruthClear.exit

select.unfold.preheader.i72:                      ; preds = %bb.k
  %i.cv = zext nneg i32 %i.br to i64
  %i.cw = shl nuw nsw i64 %i.cv, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0.i, i8 -1, i64 %i.cw, i1 false), !tbaa !19
  br label %Hop_ManTruthClear.exit

bb.l:                                             ; preds = %Vec_IntFetch.exit
  %.not59 = icmp eq i32 %4, 0
  %i.cx = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %.not59, label %.preheader, label %.preheader85

.preheader85:                                     ; preds = %bb.l
  br i1 %i.cx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader85
  %.not63 = icmp eq ptr %.0, null
  br i1 %.not63, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cy = zext nneg i32 %2 to i64
  %wide.trip.count99 = zext nneg i32 %2 to i64    ; 2 uses
  %i.cz = getelementptr [32 x i8], ptr @Hop_ManConvertAigToTruth.uTruths, i64 %i.cy ; 3 uses
  %xtraiter188 = and i64 %wide.trip.count99, 1
  %i.da = icmp eq i32 %2, 1
  br i1 %i.da, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter192 = and i64 %wide.trip.count99, 2147483646
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv96 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next97.1, %.lr.ph.split.us ] ; 5 uses
  %niter193 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter193.next.1, %.lr.ph.split.us ]
  %.val68.us = load ptr, ptr %0, align 8, !tbaa !32
  %i.db = getelementptr i8, ptr %.val68.us, i64 8
  %.val68.val.us = load ptr, ptr %i.db, align 8, !tbaa !27
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val68.val.us, i64 %indvars.iv96
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !24
  %i.de = xor i64 %indvars.iv96, -1
  %i.df = getelementptr [32 x i8], ptr %i.cz, i64 %i.de
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !13
  %.val68.us.1 = load ptr, ptr %0, align 8, !tbaa !32
  %i.dg = getelementptr i8, ptr %.val68.us.1, i64 8
  %.val68.val.us.1 = load ptr, ptr %i.dg, align 8, !tbaa !27
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.val68.val.us.1, i64 %indvars.iv96
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !24
  %i.dk = xor i64 %indvars.iv96, -2
  %i.dl = getelementptr [32 x i8], ptr %i.cz, i64 %i.dk
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !13
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter193.next.1 = add i64 %niter193, 2         ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %.loopexit.loopexit175.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !50

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dm = getelementptr i8, ptr %.0, i64 8
  %.0.val66 = load ptr, ptr %i.dm, align 8, !tbaa !27
  %i.dn = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %.0.val66, i64 %i.dn ; 3 uses
  %xtraiter182 = and i64 %wide.trip.count, 1
  %i.dp = icmp eq i32 %2, 1
  br i1 %i.dp, label %.epil.preheader181, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter186 = and i64 %wide.trip.count, 2147483646
  br label %bb.m

.preheader:                                       ; preds = %bb.l
  br i1 %i.cx, label %.lr.ph90, label %.loopexit

.lr.ph90:                                         ; preds = %.preheader
  %.not60 = icmp eq ptr %.0, null
  br i1 %.not60, label %.lr.ph90.split.us.preheader, label %.lr.ph90.split

.lr.ph90.split.us.preheader:                      ; preds = %.lr.ph90
  %wide.trip.count109 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter201 = and i64 %wide.trip.count109, 3   ; 3 uses
  %i.dq = icmp ult i32 %2, 4
  br i1 %i.dq, label %.lr.ph90.split.us.epil.preheader, label %.lr.ph90.split.us.preheader.new

.lr.ph90.split.us.preheader.new:                  ; preds = %.lr.ph90.split.us.preheader
  %unroll_iter205 = and i64 %wide.trip.count109, 2147483644
  br label %.lr.ph90.split.us

.lr.ph90.split.us:                                ; preds = %.lr.ph90.split.us, %.lr.ph90.split.us.preheader.new
  %indvars.iv106 = phi i64 [ 0, %.lr.ph90.split.us.preheader.new ], [ %indvars.iv.next107.3, %.lr.ph90.split.us ] ; 6 uses
  %niter206 = phi i64 [ 0, %.lr.ph90.split.us.preheader.new ], [ %niter206.next.3, %.lr.ph90.split.us ]
  %.val67.us = load ptr, ptr %0, align 8, !tbaa !32
  %i.dr = getelementptr i8, ptr %.val67.us, i64 8
  %.val67.val.us = load ptr, ptr %i.dr, align 8, !tbaa !27
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.val67.val.us, i64 %indvars.iv106
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw [32 x i8], ptr @Hop_ManConvertAigToTruth.uTruths, i64 %indvars.iv106
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !13
  %indvars.iv.next107 = or disjoint i64 %indvars.iv106, 1 ; 2 uses
  %.val67.us.1 = load ptr, ptr %0, align 8, !tbaa !32
  %i.dv = getelementptr i8, ptr %.val67.us.1, i64 8
  %.val67.val.us.1 = load ptr, ptr %i.dv, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.val67.val.us.1, i64 %indvars.iv.next107
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !24
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr @Hop_ManConvertAigToTruth.uTruths, i64 %indvars.iv.next107
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !13
  %indvars.iv.next107.1 = or disjoint i64 %indvars.iv106, 2 ; 2 uses
  %.val67.us.2 = load ptr, ptr %0, align 8, !tbaa !32
  %i.dz = getelementptr i8, ptr %.val67.us.2, i64 8
  %.val67.val.us.2 = load ptr, ptr %i.dz, align 8, !tbaa !27
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.val67.val.us.2, i64 %indvars.iv.next107.1
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr @Hop_ManConvertAigToTruth.uTruths, i64 %indvars.iv.next107.1
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !13
  %indvars.iv.next107.2 = or disjoint i64 %indvars.iv106, 3 ; 2 uses
  %.val67.us.3 = load ptr, ptr %0, align 8, !tbaa !32
  %i.ed = getelementptr i8, ptr %.val67.us.3, i64 8
  %.val67.val.us.3 = load ptr, ptr %i.ed, align 8, !tbaa !27
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.val67.val.us.3, i64 %indvars.iv.next107.2
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !24
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr @Hop_ManConvertAigToTruth.uTruths, i64 %indvars.iv.next107.2
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !13
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %niter206.next.3 = add i64 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i64 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph90.split.us, !llvm.loop !51

.lr.ph90.split:                                   ; preds = %.lr.ph90
  %i.eh = getelementptr i8, ptr %.0, i64 8
  %.0.val = load ptr, ptr %i.eh, align 8, !tbaa !27 ; 5 uses
  %wide.trip.count104 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter195 = and i64 %wide.trip.count104, 3   ; 3 uses
  %i.ei = icmp ult i32 %2, 4
  br i1 %i.ei, label %.epil.preheader194, label %.lr.ph90.split.new

.lr.ph90.split.new:                               ; preds = %.lr.ph90.split
  %unroll_iter199 = and i64 %wide.trip.count104, 2147483644
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.1, %bb.m ] ; 5 uses
  %niter187 = phi i64 [ 0, %.lr.ph.split.new ], [ %niter187.next.1, %bb.m ]
  %.val68 = load ptr, ptr %0, align 8, !tbaa !32
  %i.ej = getelementptr i8, ptr %.val68, i64 8
  %.val68.val = load ptr, ptr %i.ej, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.val68.val, i64 %indvars.iv
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !24
  %i.em = xor i64 %indvars.iv, -1
  %i.en = getelementptr [8 x i8], ptr %i.do, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !24
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !13
  %.val68.1 = load ptr, ptr %0, align 8, !tbaa !32
  %i.ep = getelementptr i8, ptr %.val68.1, i64 8
  %.val68.val.1 = load ptr, ptr %i.ep, align 8, !tbaa !27
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.val68.val.1, i64 %indvars.iv
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !24
  %i.et = xor i64 %indvars.iv, -2
  %i.eu = getelementptr [8 x i8], ptr %i.do, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !24
  store ptr %i.ev, ptr %i.es, align 8, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter187.next.1 = add i64 %niter187, 2         ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %.loopexit.loopexit176.unr-lcssa, label %bb.m, !llvm.loop !50

bb.n:                                             ; preds = %bb.n, %.lr.ph90.split.new
  %indvars.iv101 = phi i64 [ 0, %.lr.ph90.split.new ], [ %indvars.iv.next102.3, %bb.n ] ; 6 uses
  %niter200 = phi i64 [ 0, %.lr.ph90.split.new ], [ %niter200.next.3, %bb.n ]
  %.val67 = load ptr, ptr %0, align 8, !tbaa !32
  %i.ew = getelementptr i8, ptr %.val67, i64 8
  %.val67.val = load ptr, ptr %i.ew, align 8, !tbaa !27
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val67.val, i64 %indvars.iv101
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !24
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %indvars.iv101
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !24
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !13
  %indvars.iv.next102 = or disjoint i64 %indvars.iv101, 1 ; 2 uses
  %.val67.1 = load ptr, ptr %0, align 8, !tbaa !32
  %i.fb = getelementptr i8, ptr %.val67.1, i64 8
  %.val67.val.1 = load ptr, ptr %i.fb, align 8, !tbaa !27
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val67.val.1, i64 %indvars.iv.next102
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !24
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %indvars.iv.next102
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !24
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !13
  %indvars.iv.next102.1 = or disjoint i64 %indvars.iv101, 2 ; 2 uses
  %.val67.2 = load ptr, ptr %0, align 8, !tbaa !32
  %i.fg = getelementptr i8, ptr %.val67.2, i64 8
  %.val67.val.2 = load ptr, ptr %i.fg, align 8, !tbaa !27
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.val67.val.2, i64 %indvars.iv.next102.1
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !24
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %indvars.iv.next102.1
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !24
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !13
  %indvars.iv.next102.2 = or disjoint i64 %indvars.iv101, 3 ; 2 uses
  %.val67.3 = load ptr, ptr %0, align 8, !tbaa !32
  %i.fl = getelementptr i8, ptr %.val67.3, i64 8
  %.val67.val.3 = load ptr, ptr %i.fl, align 8, !tbaa !27
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.val67.val.3, i64 %indvars.iv.next102.2
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !24
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %indvars.iv.next102.2
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !24
  store ptr %i.fp, ptr %i.fn, align 8, !tbaa !13
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %niter200.next.3 = add i64 %niter200, 4         ; 2 uses
  %niter200.ncmp.3 = icmp eq i64 %niter200.next.3, %unroll_iter199
  br i1 %niter200.ncmp.3, label %.loopexit.loopexit174.unr-lcssa, label %bb.n, !llvm.loop !51

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph90.split.us
  %lcmp.mod203.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod203.not, label %.loopexit, label %.lr.ph90.split.us.epil.preheader

.lr.ph90.split.us.epil.preheader:                 ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph90.split.us.preheader
  %indvars.iv106.epil.init = phi i64 [ 0, %.lr.ph90.split.us.preheader ], [ %indvars.iv.next107.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter201, 0
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph90.split.us.epil

.lr.ph90.split.us.epil:                           ; preds = %.lr.ph90.split.us.epil, %.lr.ph90.split.us.epil.preheader
  %indvars.iv106.epil = phi i64 [ %indvars.iv106.epil.init, %.lr.ph90.split.us.epil.preheader ], [ %indvars.iv.next107.epil, %.lr.ph90.split.us.epil ] ; 3 uses
  %epil.iter202 = phi i64 [ 0, %.lr.ph90.split.us.epil.preheader ], [ %epil.iter202.next, %.lr.ph90.split.us.epil ]
  %.val67.us.epil = load ptr, ptr %0, align 8, !tbaa !32
  %i.fq = getelementptr i8, ptr %.val67.us.epil, i64 8
  %.val67.val.us.epil = load ptr, ptr %i.fq, align 8, !tbaa !27
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.val67.val.us.epil, i64 %indvars.iv106.epil
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !24
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr @Hop_ManConvertAigToTruth.uTruths, i64 %indvars.iv106.epil
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !13
  %indvars.iv.next107.epil = add nuw nsw i64 %indvars.iv106.epil, 1
  %epil.iter202.next = add i64 %epil.iter202, 1   ; 2 uses
  %epil.iter202.cmp.not = icmp eq i64 %epil.iter202.next, %xtraiter201
  br i1 %epil.iter202.cmp.not, label %.loopexit, label %.lr.ph90.split.us.epil, !llvm.loop !52

.loopexit.loopexit174.unr-lcssa:                  ; preds = %bb.n
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %.loopexit, label %.epil.preheader194

.epil.preheader194:                               ; preds = %.loopexit.loopexit174.unr-lcssa, %.lr.ph90.split
  %indvars.iv101.epil.init = phi i64 [ 0, %.lr.ph90.split ], [ %indvars.iv.next102.3, %.loopexit.loopexit174.unr-lcssa ]
  %lcmp.mod198 = icmp ne i64 %xtraiter195, 0
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader194
  %indvars.iv101.epil = phi i64 [ %indvars.iv101.epil.init, %.epil.preheader194 ], [ %indvars.iv.next102.epil, %bb.o ] ; 3 uses
  %epil.iter196 = phi i64 [ 0, %.epil.preheader194 ], [ %epil.iter196.next, %bb.o ]
  %.val67.epil = load ptr, ptr %0, align 8, !tbaa !32
  %i.fu = getelementptr i8, ptr %.val67.epil, i64 8
  %.val67.val.epil = load ptr, ptr %i.fu, align 8, !tbaa !27
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.val67.val.epil, i64 %indvars.iv101.epil
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !24
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %indvars.iv101.epil
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !24
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !13
  %indvars.iv.next102.epil = add nuw nsw i64 %indvars.iv101.epil, 1
  %epil.iter196.next = add i64 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i64 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !53

.loopexit.loopexit175.unr-lcssa:                  ; preds = %.lr.ph.split.us
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %.loopexit, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.loopexit.loopexit175.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv96.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next97.1, %.loopexit.loopexit175.unr-lcssa ] ; 2 uses
  %lcmp.mod191 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %.val68.us.epil = load ptr, ptr %0, align 8, !tbaa !32
  %i.fz = getelementptr i8, ptr %.val68.us.epil, i64 8
  %.val68.val.us.epil = load ptr, ptr %i.fz, align 8, !tbaa !27
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.val68.val.us.epil, i64 %indvars.iv96.epil.init
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !24
  %i.gc = xor i64 %indvars.iv96.epil.init, -1
  %i.gd = getelementptr [32 x i8], ptr %i.cz, i64 %i.gc
  store ptr %i.gd, ptr %i.gb, align 8, !tbaa !13
  br label %.loopexit

.loopexit.loopexit176.unr-lcssa:                  ; preds = %bb.m
  %lcmp.mod184.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod184.not, label %.loopexit, label %.epil.preheader181

.epil.preheader181:                               ; preds = %.loopexit.loopexit176.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.1, %.loopexit.loopexit176.unr-lcssa ] ; 2 uses
  %lcmp.mod185 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %.val68.epil = load ptr, ptr %0, align 8, !tbaa !32
  %i.ge = getelementptr i8, ptr %.val68.epil, i64 8
  %.val68.val.epil = load ptr, ptr %i.ge, align 8, !tbaa !27
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.val68.val.epil, i64 %indvars.iv.epil.init
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !24
  %i.gh = xor i64 %indvars.iv.epil.init, -1
  %i.gi = getelementptr [8 x i8], ptr %i.do, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !24
  store ptr %i.gj, ptr %i.gg, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader181, %.loopexit.loopexit176.unr-lcssa, %.lr.ph.split.us.epil.preheader, %.loopexit.loopexit175.unr-lcssa, %.loopexit.loopexit174.unr-lcssa, %bb.o, %.loopexit.loopexit.unr-lcssa, %.lr.ph90.split.us.epil, %.preheader85, %.preheader
  %i.gk = tail call ptr @Hop_ManConvertAigToTruth_rec2(ptr noundef nonnull %i.bo, ptr noundef nonnull %3, i32 noundef %i.br) ; 7 uses
  %i.gl = icmp sgt i32 %i.br, 0
  br i1 %i.gl, label %select.unfold.preheader.i74, label %Hop_ManTruthNot.exit

select.unfold.preheader.i74:                      ; preds = %.loopexit
  %i.gm = ptrtoaddr ptr %i.gk to i64
  %i.gn = zext nneg i32 %i.br to i64              ; 8 uses
  %min.iters.check149 = icmp ult i32 %i.br, 8
  %i.go = sub i64 %.0.i147, %i.gm
  %diff.check = icmp ugt i64 %i.go, -32
  %or.cond = select i1 %min.iters.check149, i1 true, i1 %diff.check
  br i1 %or.cond, label %select.unfold.i.preheader, label %vector.ph150

select.unfold.i.preheader:                        ; preds = %select.unfold.preheader.i74
  %xtraiter207 = and i64 %i.gn, 3                 ; 2 uses
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol

select.unfold.i.prol:                             ; preds = %select.unfold.i.preheader, %select.unfold.i.prol
  %indvars.iv.i75.prol = phi i64 [ %indvars.iv.next.i76.prol, %select.unfold.i.prol ], [ %i.gn, %select.unfold.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold.i.prol ], [ 0, %select.unfold.i.preheader ]
  %indvars.iv.next.i76.prol = add nsw i64 %indvars.iv.i75.prol, -1 ; 4 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next.i76.prol
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !19
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %indvars.iv.next.i76.prol
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !19
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter207
  br i1 %prol.iter.cmp.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol, !llvm.loop !54

select.unfold.i.prol.loopexit:                    ; preds = %select.unfold.i.prol, %select.unfold.i.preheader
  %indvars.iv.i75.unr = phi i64 [ %i.gn, %select.unfold.i.preheader ], [ %indvars.iv.next.i76.prol, %select.unfold.i.prol ]
  %i.gs = icmp ult i32 %i.br, 4
  br i1 %i.gs, label %Hop_ManTruthCopy.exit, label %select.unfold.i

vector.ph150:                                     ; preds = %select.unfold.preheader.i74
  %n.vec151 = and i64 %i.gn, 2147483640
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next155, %vector.body152 ] ; 2 uses
  %i.gt = xor i64 %index153, -1
  %i.gu = add i64 %i.gt, %i.gn                    ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -12
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -28
  %wide.load = load <4 x i32>, ptr %i.gw, align 4, !tbaa !19
  %wide.load154 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !19
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.gu ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -12
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -28
  store <4 x i32> %wide.load, ptr %i.gz, align 4, !tbaa !19
  store <4 x i32> %wide.load154, ptr %i.ha, align 4, !tbaa !19
  %index.next155 = add nuw i64 %index153, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.hb, label %Hop_ManTruthCopy.exit, label %vector.body152, !llvm.loop !55

select.unfold.i:                                  ; preds = %select.unfold.i.prol.loopexit, %select.unfold.i
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i76.3, %select.unfold.i ], [ %indvars.iv.i75.unr, %select.unfold.i.prol.loopexit ] ; 5 uses
  %indvars.iv.next.i76 = add nsw i64 %indvars.iv.i75, -1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next.i76
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !19
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %indvars.iv.next.i76
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !19
  %indvars.iv.next.i76.1 = add nsw i64 %indvars.iv.i75, -2 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next.i76.1
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !19
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %indvars.iv.next.i76.1
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !19
  %indvars.iv.next.i76.2 = add nsw i64 %indvars.iv.i75, -3 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next.i76.2
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !19
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %indvars.iv.next.i76.2
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !19
  %indvars.iv.next.i76.3 = add nsw i64 %indvars.iv.i75, -4 ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next.i76.3
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !19
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %indvars.iv.next.i76.3
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !19
  %i.ho = icmp sgt i64 %indvars.iv.i75, 4
  br i1 %i.ho, label %select.unfold.i, label %Hop_ManTruthCopy.exit, !llvm.loop !56

Hop_ManTruthCopy.exit:                            ; preds = %vector.body152, %select.unfold.i.prol.loopexit, %select.unfold.i
  %i.hp = and i64 %i.bm, 1
  %.not61 = icmp eq i64 %i.hp, 0
  br i1 %.not61, label %Hop_ManTruthNot.exit, label %select.unfold.i79.preheader

select.unfold.i79.preheader:                      ; preds = %Hop_ManTruthCopy.exit
  %min.iters.check160 = icmp ult i32 %i.br, 8
  br i1 %min.iters.check160, label %select.unfold.i79.a, label %vector.ph161

vector.ph161:                                     ; preds = %select.unfold.i79.preheader
  %n.vec162 = and i64 %i.gn, 2147483640
  %invariant.gep = getelementptr [4 x i8], ptr %.0.i, i64 %i.gn
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 2 uses
  %i.hq = xor i64 %index164, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hq ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %gep, i64 -12 ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %gep, i64 -28 ; 2 uses
  %wide.load165 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !19
  %wide.load166 = load <4 x i32>, ptr %i.hs, align 4, !tbaa !19
  %i.ht = xor <4 x i32> %wide.load165, splat (i32 -1)
  %i.hu = xor <4 x i32> %wide.load166, splat (i32 -1)
  store <4 x i32> %i.ht, ptr %i.hr, align 4, !tbaa !19
  store <4 x i32> %i.hu, ptr %i.hs, align 4, !tbaa !19
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.hv, label %Hop_ManTruthNot.exit, label %vector.body163, !llvm.loop !57

select.unfold.i79.a:                              ; preds = %select.unfold.i79.preheader, %select.unfold.i79.a
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i81, %select.unfold.i79.a ], [ %i.gn, %select.unfold.i79.preheader ] ; 2 uses
  %indvars.iv.next.i81 = add nsw i64 %indvars.iv.i80, -1 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %indvars.iv.next.i81 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !19
  %i.hy = xor i32 %i.hx, -1
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !19
  %i.hz = icmp samesign ugt i64 %indvars.iv.i80, 1
  br i1 %i.hz, label %select.unfold.i79.a, label %Hop_ManTruthNot.exit, !llvm.loop !58

Hop_ManTruthNot.exit:                             ; preds = %vector.body163, %select.unfold.i79.a, %Hop_ManTruthCopy.exit, %.loopexit
  %.not62 = icmp eq ptr %.0, null
  br i1 %.not62, label %Hop_ManTruthClear.exit, label %bb.p

bb.p:                                             ; preds = %Hop_ManTruthNot.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !27 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ib, null
  br i1 %.not.i82, label %Vec_PtrFree.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ib) #11
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %bb.p, %bb.q
  tail call void @free(ptr noundef nonnull %.0) #11
  br label %Hop_ManTruthClear.exit

Hop_ManTruthClear.exit:                           ; preds = %select.unfold.preheader.i72, %bb.k, %select.unfold.preheader.i, %bb.j, %Hop_ManTruthNot.exit, %Vec_PtrFree.exit
  ret ptr %.0.i
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Hop_ManComputeTruth6_rec(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val20 = load i32, ptr %i.a, align 8
  %i.b = and i32 %.val20, 7
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !13
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @Truth, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61
  br label %common.ret21

common.ret21:                                     ; preds = %bb.b, %common.ret
  %common.ret21.op = phi i64 [ %i.f, %common.ret ], [ %i.u, %bb.b ]
  ret i64 %common.ret21.op

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.h = ptrtoint ptr %.val to i64                ; 2 uses
  %i.i = and i64 %i.h, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call i64 @Hop_ManComputeTruth6_rec(ptr noundef %0, ptr noundef %i.j)
  %i.l = getelementptr i8, ptr %1, i64 24
  %.val17 = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.m = ptrtoint ptr %.val17 to i64              ; 2 uses
  %i.n = and i64 %i.m, -2
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call i64 @Hop_ManComputeTruth6_rec(ptr noundef %0, ptr noundef %i.o)
  %i.q = and i64 %i.h, 1
  %sext = sub nsw i64 0, %i.q
  %i.r = xor i64 %i.k, %sext
  %i.s = and i64 %i.m, 1
  %sext16 = sub nsw i64 0, %i.s
  %i.t = xor i64 %i.p, %sext16
  %i.u = and i64 %i.t, %i.r
  br label %common.ret21
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Hop_ManComputeTruth6(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, -2
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %.val = load i32, ptr %i.d, align 8
  %i.e = and i32 %.val, 7
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %2, 4
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.a, 1
  %sext16 = add nsw i64 %i.h, -1
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.val17 = load ptr, ptr %0, align 8, !tbaa !32
  %i.i = getelementptr i8, ptr %.val17, i64 8
  %.val17.val = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val17.val, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.l, ptr %i.k, align 8, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.val17.1 = load ptr, ptr %0, align 8, !tbaa !32
  %i.m = getelementptr i8, ptr %.val17.1, i64 8
  %.val17.val.1 = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val17.val.1, i64 %indvars.iv.next
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.p, ptr %i.o, align 8, !tbaa !13
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %.val17.2 = load ptr, ptr %0, align 8, !tbaa !32
  %i.q = getelementptr i8, ptr %.val17.2, i64 8
  %.val17.val.2 = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val17.val.2, i64 %indvars.iv.next.1
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.t, ptr %i.s, align 8, !tbaa !13
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %.val17.3 = load ptr, ptr %0, align 8, !tbaa !32
  %i.u = getelementptr i8, ptr %.val17.3, i64 8
  %.val17.val.3 = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val17.val.3, i64 %indvars.iv.next.2
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.x, ptr %i.w, align 8, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !62

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %.val17.epil = load ptr, ptr %0, align 8, !tbaa !32
  %i.y = getelementptr i8, ptr %.val17.epil, i64 8
  %.val17.val.epil = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val17.val.epil, i64 %indvars.iv.epil
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ab = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !13
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !63

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %i.ac = tail call i64 @Hop_ManComputeTruth6_rec(ptr noundef %0, ptr noundef nonnull %i.c)
  %i.ad = and i64 %i.a, 1
  %sext = sub nsw i64 0, %i.ad
  %i.ae = xor i64 %i.ac, %sext
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.013 = phi i64 [ %sext16, %bb.b ], [ %i.ae, %._crit_edge ]
  ret i64 %.013
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS10Hop_Obj_t_", !8, i64 0}
!10 = !{!"Hop_Obj_t_", !4, i64 0, !4, i64 8, !9, i64 16, !9, i64 24, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 36}
!11 = !{!10, !9, i64 16}
!12 = !{!10, !9, i64 24}
!13 = !{!4, !4, i64 0}
!14 = !{!"p1 int", !8, i64 0}
!15 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !14, i64 8}
!16 = !{!15, !5, i64 4}
!17 = !{!15, !5, i64 0}
!18 = !{!15, !14, i64 8}
!19 = !{!5, !5, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!8, !8, i64 0}
!25 = !{!"any p2 pointer", !8, i64 0}
!26 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !25, i64 8}
!27 = !{!26, !25, i64 8}
!28 = !{!"p1 _ZTS10Vec_Ptr_t_", !8, i64 0}
!29 = !{!"p2 _ZTS10Hop_Obj_t_", !25, i64 0}
!30 = !{!"long", !4, i64 0}
!31 = !{!"Hop_Man_t_", !28, i64 0, !28, i64 8, !28, i64 16, !9, i64 24, !10, i64 32, !4, i64 72, !5, i64 96, !5, i64 100, !29, i64 104, !5, i64 112, !8, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !28, i64 144, !28, i64 152, !9, i64 160, !30, i64 168, !30, i64 176}
!32 = !{!31, !28, i64 0}
!33 = distinct !{!33, !20, !21, !22}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !20, !21}
!36 = distinct !{!36, !20, !21, !22}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !20, !21}
!39 = distinct !{!39, !20, !21, !22}
!40 = distinct !{!40, !20, !21}
!41 = distinct !{!41, !20, !21, !22}
!42 = distinct !{!42, !20, !21}
!43 = distinct !{!43, !20, !21, !22}
!44 = distinct !{!44, !20, !21}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !20, !21, !22}
!48 = distinct !{!48, !20, !21, !22}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !20, !21, !22}
!56 = distinct !{!56, !20, !21}
!57 = distinct !{!57, !20, !21, !22}
!58 = distinct !{!58, !20, !22, !21}
!59 = !{!26, !5, i64 4}
!60 = !{!26, !5, i64 0}
!61 = !{!30, !30, i64 0}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !23}
end_hunk_0
