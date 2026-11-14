Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/fixed?download=true
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 0, 5) i32 @FLAC__fixed_compute_best_predictor(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader229, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi217 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi218 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi219 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi220 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.d, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 5 uses
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !8 ; 5 uses
  %i.c = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.d = add <4 x i32> %i.c, %vec.phi220          ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 -4
  %wide.load221 = load <4 x i32>, ptr %i.e, align 4, !tbaa !8 ; 4 uses
  %i.f = sub nsw <4 x i32> %wide.load, %wide.load221
  %i.g = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.f, i1 true)
  %i.h = add <4 x i32> %i.g, %vec.phi219          ; 2 uses
  %i.i = shl <4 x i32> %wide.load221, splat (i32 1)
  %i.j = sub <4 x i32> %wide.load, %i.i
  %i.k = getelementptr i8, ptr %i.b, i64 -8
  %wide.load222 = load <4 x i32>, ptr %i.k, align 4, !tbaa !8 ; 3 uses
  %i.l = add nsw <4 x i32> %i.j, %wide.load222
  %i.m = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.l, i1 true)
  %i.n = add <4 x i32> %i.m, %vec.phi218          ; 2 uses
  %i.o = getelementptr i8, ptr %i.b, i64 -12
  %wide.load223 = load <4 x i32>, ptr %i.o, align 4, !tbaa !8 ; 2 uses
  %i.p = sub <4 x i32> %wide.load222, %wide.load221
  %i.q = mul <4 x i32> %i.p, splat (i32 3)
  %i.r = sub <4 x i32> %wide.load, %wide.load223
  %i.s = add <4 x i32> %i.r, %i.q
  %i.t = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.s, i1 true)
  %i.u = add <4 x i32> %i.t, %vec.phi217          ; 2 uses
  %i.v = mul nsw <4 x i32> %wide.load222, splat (i32 6)
  %i.w = add <4 x i32> %i.v, %wide.load
  %i.x = add <4 x i32> %wide.load223, %wide.load221
  %i.y = getelementptr i8, ptr %i.b, i64 -16
  %wide.load224 = load <4 x i32>, ptr %i.y, align 4, !tbaa !8
  %i.z = add <4 x i32> %i.w, %wide.load224
  %i.aa = shl <4 x i32> %i.x, splat (i32 2)
  %i.ab = sub <4 x i32> %i.z, %i.aa
  %i.ac = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ab, i1 true)
  %i.ad = add <4 x i32> %i.ac, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %i.af = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ad) ; 2 uses
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.u) ; 2 uses
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.n) ; 2 uses
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.h) ; 2 uses
  %i.aj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.d) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader229

.lr.ph.preheader229:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0160198.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  %.0161197.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  %.0162196.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  %.0163195.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  %.0164194.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader229, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader229 ] ; 2 uses
  %.0160198 = phi i32 [ %i.bp, %.lr.ph ], [ %.0160198.ph, %.lr.ph.preheader229 ]
  %.0161197 = phi i32 [ %i.bf, %.lr.ph ], [ %.0161197.ph, %.lr.ph.preheader229 ]
  %.0162196 = phi i32 [ %i.az, %.lr.ph ], [ %.0162196.ph, %.lr.ph.preheader229 ]
  %.0163195 = phi i32 [ %i.as, %.lr.ph ], [ %.0163195.ph, %.lr.ph.preheader229 ]
  %.0164194 = phi i32 [ %i.an, %.lr.ph ], [ %.0164194.ph, %.lr.ph.preheader229 ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8  ; 5 uses
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %i.an = add i32 %i.am, %.0164194                ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8  ; 4 uses
  %i.aq = sub nsw i32 %i.al, %i.ap
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.as = add i32 %i.ar, %.0163195                ; 2 uses
  %i.at = shl i32 %i.ap, 1
  %i.au = sub i32 %i.al, %i.at
  %i.av = getelementptr i8, ptr %i.ak, i64 -8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8  ; 3 uses
  %i.ax = add nsw i32 %i.au, %i.aw
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.az = add i32 %i.ay, %.0162196                ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ak, i64 -12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8  ; 2 uses
  %reass.add = sub i32 %i.aw, %i.ap
  %reass.mul = mul i32 %reass.add, 3
  %i.bc = sub i32 %i.al, %i.bb
  %i.bd = add i32 %i.bc, %reass.mul
  %i.be = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bf = add i32 %i.be, %.0161197                ; 2 uses
  %i.bg = mul nsw i32 %i.aw, 6
  %i.bh = add i32 %i.bg, %i.al
  %i.bi = add i32 %i.bb, %i.ap
  %i.bj = getelementptr i8, ptr %i.ak, i64 -16
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %i.bl = add i32 %i.bh, %i.bk
  %i.bm = shl i32 %i.bi, 2
  %i.bn = sub i32 %i.bl, %i.bm
  %i.bo = tail call i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  %i.bp = add i32 %i.bo, %.0160198                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0164.lcssa = phi i32 [ 0, %bb.a ], [ %i.aj, %middle.block ], [ %i.an, %.lr.ph ] ; 3 uses
  %.0163.lcssa = phi i32 [ 0, %bb.a ], [ %i.ai, %middle.block ], [ %i.as, %.lr.ph ] ; 4 uses
  %.0162.lcssa = phi i32 [ 0, %bb.a ], [ %i.ah, %middle.block ], [ %i.az, %.lr.ph ] ; 5 uses
  %.0161.lcssa = phi i32 [ 0, %bb.a ], [ %i.ag, %middle.block ], [ %i.bf, %.lr.ph ] ; 6 uses
  %.0160.lcssa = phi i32 [ 0, %bb.a ], [ %i.af, %middle.block ], [ %i.bp, %.lr.ph ] ; 6 uses
  %i.bq = tail call i32 @llvm.umin.i32(i32 %.0163.lcssa, i32 %.0162.lcssa)
  %..0161 = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %.0161.lcssa)
  %i.br = tail call i32 @llvm.umin.i32(i32 %..0161, i32 %.0160.lcssa)
  %.not = icmp ugt i32 %.0164.lcssa, %i.br
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  %i.bs = tail call i32 @llvm.umin.i32(i32 %.0162.lcssa, i32 %.0161.lcssa)
  %..0160 = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 %.0160.lcssa)
  %.not178 = icmp ugt i32 %.0163.lcssa, %..0160
  br i1 %.not178, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.bt = tail call i32 @llvm.umin.i32(i32 %.0161.lcssa, i32 %.0160.lcssa)
  %.not179 = icmp ugt i32 %.0162.lcssa, %i.bt
  br i1 %.not179, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %.not180 = icmp ugt i32 %.0161.lcssa, %.0160.lcssa
  %. = select i1 %.not180, i32 4, i32 3
  br label %.thread

bb.e:                                             ; preds = %._crit_edge
  %.not181 = icmp eq i32 %.0164.lcssa, 0
  br i1 %.not181, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0159189 = phi i32 [ 0, %bb.e ], [ %., %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ]
  %i.bu = uitofp reassoc nsz arcp i32 %.0164.lcssa to double
  %i.bv = fmul reassoc nnan nsz arcp double %i.bu, f0x3FE62E42FEFA39EF
  %i.bw = uitofp reassoc nsz arcp i32 %1 to double
  %i.bx = fdiv reassoc nsz arcp double %i.bv, %i.bw
  %i.by = tail call reassoc nsz arcp double @log(double noundef %i.bx) #8
  %i.bz = fmul reassoc nsz arcp double %i.by, f0x3FF71547652B82FE
  %i.ca = fptrunc reassoc nsz arcp double %i.bz to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.0159190 = phi i32 [ %.0159189, %.thread ], [ 0, %bb.e ]
  %i.cb = phi float [ %i.ca, %.thread ], [ 0.000000e+00, %bb.e ]
  store float %i.cb, ptr %2, align 4, !tbaa !13
  %.not182 = icmp eq i32 %.0163.lcssa, 0
  br i1 %.not182, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = uitofp reassoc nsz arcp i32 %.0163.lcssa to double
  %i.cd = fmul reassoc nnan nsz arcp double %i.cc, f0x3FE62E42FEFA39EF
  %i.ce = uitofp reassoc nsz arcp i32 %1 to double
  %i.cf = fdiv reassoc nsz arcp double %i.cd, %i.ce
  %i.cg = tail call reassoc nsz arcp double @log(double noundef %i.cf) #8
  %i.ch = fmul reassoc nsz arcp double %i.cg, f0x3FF71547652B82FE
  %i.ci = fptrunc reassoc nsz arcp double %i.ch to float
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cj = phi float [ %i.ci, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.cj, ptr %i.ck, align 4, !tbaa !13
  %.not183 = icmp eq i32 %.0162.lcssa, 0
  br i1 %.not183, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = uitofp reassoc nsz arcp i32 %.0162.lcssa to double
  %i.cm = fmul reassoc nnan nsz arcp double %i.cl, f0x3FE62E42FEFA39EF
  %i.cn = uitofp reassoc nsz arcp i32 %1 to double
  %i.co = fdiv reassoc nsz arcp double %i.cm, %i.cn
  %i.cp = tail call reassoc nsz arcp double @log(double noundef %i.co) #8
  %i.cq = fmul reassoc nsz arcp double %i.cp, f0x3FF71547652B82FE
  %i.cr = fptrunc reassoc nsz arcp double %i.cq to float
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cs = phi float [ %i.cr, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.cs, ptr %i.ct, align 4, !tbaa !13
  %.not184 = icmp eq i32 %.0161.lcssa, 0
  br i1 %.not184, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = uitofp reassoc nsz arcp i32 %.0161.lcssa to double
  %i.cv = fmul reassoc nnan nsz arcp double %i.cu, f0x3FE62E42FEFA39EF
  %i.cw = uitofp reassoc nsz arcp i32 %1 to double
  %i.cx = fdiv reassoc nsz arcp double %i.cv, %i.cw
  %i.cy = tail call reassoc nsz arcp double @log(double noundef %i.cx) #8
  %i.cz = fmul reassoc nsz arcp double %i.cy, f0x3FF71547652B82FE
  %i.da = fptrunc reassoc nsz arcp double %i.cz to float
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.db = phi float [ %i.da, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.db, ptr %i.dc, align 4, !tbaa !13
  %.not185 = icmp eq i32 %.0160.lcssa, 0
  br i1 %.not185, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = uitofp reassoc nsz arcp i32 %.0160.lcssa to double
  %i.de = fmul reassoc nnan nsz arcp double %i.dd, f0x3FE62E42FEFA39EF
  %i.df = uitofp reassoc nsz arcp i32 %1 to double
  %i.dg = fdiv reassoc nsz arcp double %i.de, %i.df
  %i.dh = tail call reassoc nsz arcp double @log(double noundef %i.dg) #8
  %i.di = fmul reassoc nsz arcp double %i.dh, f0x3FF71547652B82FE
  %i.dj = fptrunc reassoc nsz arcp double %i.di to float
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.dk = phi float [ %i.dj, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.dk, ptr %i.dl, align 4, !tbaa !13
  ret i32 %.0159190
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 0, 5) i32 @FLAC__fixed_compute_best_predictor_wide(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp eq i32 %1, 1
  br i1 %min.iters.check, label %.lr.ph.preheader229, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi217 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi218 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi219 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi220 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.b, align 4, !tbaa !8 ; 5 uses
  %i.c = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %wide.load, i1 true)
  %i.d = zext nneg <2 x i32> %i.c to <2 x i64>
  %i.e = add <2 x i64> %vec.phi220, %i.d          ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 -4
  %wide.load221 = load <2 x i32>, ptr %i.f, align 4, !tbaa !8 ; 4 uses
  %i.g = sub nsw <2 x i32> %wide.load, %wide.load221
  %i.h = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.g, i1 true)
  %i.i = zext nneg <2 x i32> %i.h to <2 x i64>
  %i.j = add <2 x i64> %vec.phi219, %i.i          ; 2 uses
  %i.k = shl <2 x i32> %wide.load221, splat (i32 1)
  %i.l = sub <2 x i32> %wide.load, %i.k
  %i.m = getelementptr i8, ptr %i.b, i64 -8
  %wide.load222 = load <2 x i32>, ptr %i.m, align 4, !tbaa !8 ; 3 uses
  %i.n = add nsw <2 x i32> %i.l, %wide.load222
  %i.o = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.n, i1 true)
  %i.p = zext nneg <2 x i32> %i.o to <2 x i64>
  %i.q = add <2 x i64> %vec.phi218, %i.p          ; 2 uses
  %i.r = getelementptr i8, ptr %i.b, i64 -12
  %wide.load223 = load <2 x i32>, ptr %i.r, align 4, !tbaa !8 ; 2 uses
  %i.s = sub <2 x i32> %wide.load222, %wide.load221
  %i.t = mul <2 x i32> %i.s, splat (i32 3)
  %i.u = sub <2 x i32> %wide.load, %wide.load223
  %i.v = add <2 x i32> %i.u, %i.t
  %i.w = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.v, i1 true)
  %i.x = zext nneg <2 x i32> %i.w to <2 x i64>
  %i.y = add <2 x i64> %vec.phi217, %i.x          ; 2 uses
  %i.z = mul nsw <2 x i32> %wide.load222, splat (i32 6)
  %i.aa = add <2 x i32> %i.z, %wide.load
  %i.ab = add <2 x i32> %wide.load223, %wide.load221
  %i.ac = getelementptr i8, ptr %i.b, i64 -16
  %wide.load224 = load <2 x i32>, ptr %i.ac, align 4, !tbaa !8
  %i.ad = add <2 x i32> %i.aa, %wide.load224
  %i.ae = shl <2 x i32> %i.ab, splat (i32 2)
  %i.af = sub <2 x i32> %i.ad, %i.ae
  %i.ag = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.af, i1 true)
  %i.ah = zext nneg <2 x i32> %i.ag to <2 x i64>
  %i.ai = add <2 x i64> %vec.phi, %i.ah           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %i.ak = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ai) ; 2 uses
  %i.al = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.y) ; 2 uses
  %i.am = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.q) ; 2 uses
  %i.an = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.j) ; 2 uses
  %i.ao = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.e) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader229

.lr.ph.preheader229:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0160198.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.0161197.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  %.0162196.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.am, %middle.block ]
  %.0163195.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  %.0164194.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader229, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader229 ] ; 2 uses
  %.0160198 = phi i64 [ %i.bz, %.lr.ph ], [ %.0160198.ph, %.lr.ph.preheader229 ]
  %.0161197 = phi i64 [ %i.bo, %.lr.ph ], [ %.0161197.ph, %.lr.ph.preheader229 ]
  %.0162196 = phi i64 [ %i.bh, %.lr.ph ], [ %.0162196.ph, %.lr.ph.preheader229 ]
  %.0163195 = phi i64 [ %i.az, %.lr.ph ], [ %.0163195.ph, %.lr.ph.preheader229 ]
  %.0164194 = phi i64 [ %i.at, %.lr.ph ], [ %.0164194.ph, %.lr.ph.preheader229 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8  ; 5 uses
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add i64 %.0164194, %i.as                ; 2 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8  ; 4 uses
  %i.aw = sub nsw i32 %i.aq, %i.av
  %i.ax = tail call i32 @llvm.abs.i32(i32 %i.aw, i1 true)
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = add i64 %.0163195, %i.ay                ; 2 uses
  %i.ba = shl i32 %i.av, 1
  %i.bb = sub i32 %i.aq, %i.ba
  %i.bc = getelementptr i8, ptr %i.ap, i64 -8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8  ; 3 uses
  %i.be = add nsw i32 %i.bb, %i.bd
  %i.bf = tail call i32 @llvm.abs.i32(i32 %i.be, i1 true)
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = add i64 %.0162196, %i.bg                ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ap, i64 -12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8  ; 2 uses
  %reass.add = sub i32 %i.bd, %i.av
  %reass.mul = mul i32 %reass.add, 3
  %i.bk = sub i32 %i.aq, %i.bj
  %i.bl = add i32 %i.bk, %reass.mul
  %i.bm = tail call i32 @llvm.abs.i32(i32 %i.bl, i1 true)
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %.0161197, %i.bn                ; 2 uses
  %i.bp = mul nsw i32 %i.bd, 6
  %i.bq = add i32 %i.bp, %i.aq
  %i.br = add i32 %i.bj, %i.av
  %i.bs = getelementptr i8, ptr %i.ap, i64 -16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  %i.bu = add i32 %i.bq, %i.bt
  %i.bv = shl i32 %i.br, 2
  %i.bw = sub i32 %i.bu, %i.bv
  %i.bx = tail call i32 @llvm.abs.i32(i32 %i.bw, i1 true)
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = add i64 %.0160198, %i.by                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0164.lcssa = phi i64 [ 0, %bb.a ], [ %i.ao, %middle.block ], [ %i.at, %.lr.ph ] ; 3 uses
  %.0163.lcssa = phi i64 [ 0, %bb.a ], [ %i.an, %middle.block ], [ %i.az, %.lr.ph ] ; 4 uses
  %.0162.lcssa = phi i64 [ 0, %bb.a ], [ %i.am, %middle.block ], [ %i.bh, %.lr.ph ] ; 5 uses
  %.0161.lcssa = phi i64 [ 0, %bb.a ], [ %i.al, %middle.block ], [ %i.bo, %.lr.ph ] ; 6 uses
  %.0160.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %middle.block ], [ %i.bz, %.lr.ph ] ; 6 uses
  %i.ca = tail call i64 @llvm.umin.i64(i64 %.0163.lcssa, i64 %.0162.lcssa)
  %..0161 = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %.0161.lcssa)
  %i.cb = tail call i64 @llvm.umin.i64(i64 %..0161, i64 %.0160.lcssa)
  %.not = icmp ugt i64 %.0164.lcssa, %i.cb
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  %i.cc = tail call i64 @llvm.umin.i64(i64 %.0162.lcssa, i64 %.0161.lcssa)
  %..0160 = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %.0160.lcssa)
  %.not178 = icmp ugt i64 %.0163.lcssa, %..0160
  br i1 %.not178, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.cd = tail call i64 @llvm.umin.i64(i64 %.0161.lcssa, i64 %.0160.lcssa)
  %.not179 = icmp ugt i64 %.0162.lcssa, %i.cd
  br i1 %.not179, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %.not180 = icmp ugt i64 %.0161.lcssa, %.0160.lcssa
  %. = select i1 %.not180, i32 4, i32 3
  br label %.thread

bb.e:                                             ; preds = %._crit_edge
  %.not181 = icmp eq i64 %.0164.lcssa, 0
  br i1 %.not181, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0159189 = phi i32 [ 0, %bb.e ], [ %., %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ]
  %i.ce = uitofp reassoc nsz arcp i64 %.0164.lcssa to double
  %i.cf = fmul reassoc nnan nsz arcp double %i.ce, f0x3FE62E42FEFA39EF
  %i.cg = uitofp reassoc nsz arcp i32 %1 to double
  %i.ch = fdiv reassoc nsz arcp double %i.cf, %i.cg
  %i.ci = tail call reassoc nsz arcp double @log(double noundef %i.ch) #8
  %i.cj = fmul reassoc nsz arcp double %i.ci, f0x3FF71547652B82FE
  %i.ck = fptrunc reassoc nsz arcp double %i.cj to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.0159190 = phi i32 [ %.0159189, %.thread ], [ 0, %bb.e ]
  %i.cl = phi float [ %i.ck, %.thread ], [ 0.000000e+00, %bb.e ]
  store float %i.cl, ptr %2, align 4, !tbaa !13
  %.not182 = icmp eq i64 %.0163.lcssa, 0
  br i1 %.not182, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cm = uitofp reassoc nsz arcp i64 %.0163.lcssa to double
  %i.cn = fmul reassoc nnan nsz arcp double %i.cm, f0x3FE62E42FEFA39EF
  %i.co = uitofp reassoc nsz arcp i32 %1 to double
  %i.cp = fdiv reassoc nsz arcp double %i.cn, %i.co
  %i.cq = tail call reassoc nsz arcp double @log(double noundef %i.cp) #8
  %i.cr = fmul reassoc nsz arcp double %i.cq, f0x3FF71547652B82FE
  %i.cs = fptrunc reassoc nsz arcp double %i.cr to float
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ct = phi float [ %i.cs, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ct, ptr %i.cu, align 4, !tbaa !13
  %.not183 = icmp eq i64 %.0162.lcssa, 0
  br i1 %.not183, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cv = uitofp reassoc nsz arcp i64 %.0162.lcssa to double
  %i.cw = fmul reassoc nnan nsz arcp double %i.cv, f0x3FE62E42FEFA39EF
  %i.cx = uitofp reassoc nsz arcp i32 %1 to double
  %i.cy = fdiv reassoc nsz arcp double %i.cw, %i.cx
  %i.cz = tail call reassoc nsz arcp double @log(double noundef %i.cy) #8
  %i.da = fmul reassoc nsz arcp double %i.cz, f0x3FF71547652B82FE
  %i.db = fptrunc reassoc nsz arcp double %i.da to float
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dc = phi float [ %i.db, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.dc, ptr %i.dd, align 4, !tbaa !13
  %.not184 = icmp eq i64 %.0161.lcssa, 0
  br i1 %.not184, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = uitofp reassoc nsz arcp i64 %.0161.lcssa to double
  %i.df = fmul reassoc nnan nsz arcp double %i.de, f0x3FE62E42FEFA39EF
  %i.dg = uitofp reassoc nsz arcp i32 %1 to double
  %i.dh = fdiv reassoc nsz arcp double %i.df, %i.dg
  %i.di = tail call reassoc nsz arcp double @log(double noundef %i.dh) #8
  %i.dj = fmul reassoc nsz arcp double %i.di, f0x3FF71547652B82FE
  %i.dk = fptrunc reassoc nsz arcp double %i.dj to float
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.dl = phi float [ %i.dk, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.dl, ptr %i.dm, align 4, !tbaa !13
  %.not185 = icmp eq i64 %.0160.lcssa, 0
  br i1 %.not185, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = uitofp reassoc nsz arcp i64 %.0160.lcssa to double
  %i.do = fmul reassoc nnan nsz arcp double %i.dn, f0x3FE62E42FEFA39EF
  %i.dp = uitofp reassoc nsz arcp i32 %1 to double
  %i.dq = fdiv reassoc nsz arcp double %i.do, %i.dp
  %i.dr = tail call reassoc nsz arcp double @log(double noundef %i.dq) #8
  %i.ds = fmul reassoc nsz arcp double %i.dr, f0x3FF71547652B82FE
  %i.dt = fptrunc reassoc nsz arcp double %i.ds to float
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.du = phi float [ %i.dt, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.du, ptr %i.dv, align 4, !tbaa !13
  ret i32 %.0159190
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 0, 5) i32 @FLAC__fixed_compute_best_predictor_limit_residual(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -4
  br i1 %i.a, label %.thread210.peel, label %.thread328

.thread210.peel:                                  ; preds = %bb.a
  %wide.trip.count = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 3 uses
  %i.f = icmp samesign ult i64 %i.e, 2147483648
  %spec.select.peel = zext i1 %i.f to i32         ; 2 uses
  %exitcond.peel.not = icmp eq i32 %1, -3
  br i1 %exitcond.peel.not, label %._crit_edge, label %.thread210.peel253

.thread210.peel253:                               ; preds = %.thread210.peel
  %i.g = getelementptr inbounds i8, ptr %0, i64 -12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = tail call i64 @llvm.abs.i64(i64 %i.i, i1 true) ; 2 uses
  %i.k = sub nsw i64 %i.i, %i.d
  %.fr285 = freeze i64 %i.k
  %spec.select202.peel247 = tail call i64 @llvm.abs.i64(i64 %.fr285, i1 false) ; 3 uses
  %i.l = add nuw nsw i64 %i.j, %i.e               ; 2 uses
  %i.m = icmp samesign ugt i64 %i.j, 2147483647
  %spec.select.peel256 = select i1 %i.m, i32 0, i32 %spec.select.peel ; 2 uses
  %i.n = icmp ult i64 %spec.select202.peel247, 2147483648
  %spec.select212.peel257 = zext i1 %i.n to i32   ; 2 uses
  %exitcond.peel261.not = icmp eq i32 %1, -2
  br i1 %exitcond.peel261.not, label %._crit_edge, label %.thread210.peel270

.thread210.peel270:                               ; preds = %.thread210.peel253
  %i.o = getelementptr inbounds i8, ptr %0, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = tail call i64 @llvm.abs.i64(i64 %i.q, i1 true) ; 2 uses
  %i.s = sub nsw i64 %i.q, %i.i
  %.fr286 = freeze i64 %i.s
  %spec.select202.peel264 = tail call i64 @llvm.abs.i64(i64 %.fr286, i1 false) ; 2 uses
  %i.t = shl nsw i64 %i.i, 1
  %i.u = sub nsw i64 %i.q, %i.t
  %i.v = add nsw i64 %i.u, %i.d
  %spec.select203.peel265 = tail call i64 @llvm.abs.i64(i64 %i.v, i1 true) ; 3 uses
  %i.w = add nuw nsw i64 %i.r, %i.l               ; 2 uses
  %i.x = add i64 %spec.select202.peel264, %spec.select202.peel247 ; 2 uses
  %i.y = icmp samesign ugt i64 %i.r, 2147483647
  %spec.select.peel273 = select i1 %i.y, i32 0, i32 %spec.select.peel256 ; 2 uses
  %i.z = icmp ugt i64 %spec.select202.peel264, 2147483647
  %spec.select212.peel274 = select i1 %i.z, i32 0, i32 %spec.select212.peel257 ; 2 uses
  %i.aa = icmp samesign ult i64 %spec.select203.peel265, 2147483648 ; 2 uses
  %exitcond.peel278.not = icmp eq i32 %1, -1
  br i1 %exitcond.peel278.not, label %._crit_edge, label %.peel.begin

.peel.begin:                                      ; preds = %.thread210.peel270
  %i.ab = getelementptr i8, ptr %0, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = sext i32 %i.ac to i64                   ; 4 uses
  %i.ae = tail call i64 @llvm.abs.i64(i64 %i.ad, i1 true) ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %i.ai = sub nsw i64 %i.ad, %i.ah
  %.fr288.peel = freeze i64 %i.ai
  %spec.select202.peel = tail call i64 @llvm.abs.i64(i64 %.fr288.peel, i1 false) ; 2 uses
  %i.aj = shl nsw i64 %i.ah, 1
  %i.ak = sub nsw i64 %i.ad, %i.aj
  %i.al = getelementptr i8, ptr %0, i64 -12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = add nsw i64 %i.ak, %i.an
  %spec.select203.peel = tail call i64 @llvm.abs.i64(i64 %i.ao, i1 true) ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 -16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = sext i32 %i.aq to i64
  %reass.add.peel = sub nsw i64 %i.an, %i.ah
  %reass.mul.peel = mul nsw i64 %reass.add.peel, 3
  %i.as = sub nsw i64 %i.ad, %i.ar
  %i.at = add nsw i64 %i.as, %reass.mul.peel
  %.fr287.peel = freeze i64 %i.at
  %spec.select204.peel = tail call i64 @llvm.abs.i64(i64 %.fr287.peel, i1 false) ; 3 uses
  %i.au = add nuw nsw i64 %i.ae, %i.w             ; 2 uses
  %i.av = add i64 %spec.select202.peel, %i.x      ; 2 uses
  %i.aw = add nuw nsw i64 %spec.select203.peel, %spec.select203.peel265 ; 2 uses
  %i.ax = icmp samesign ugt i64 %i.ae, 2147483647
  %spec.select.peel426 = select i1 %i.ax, i32 0, i32 %spec.select.peel273 ; 2 uses
  %i.ay = icmp ugt i64 %spec.select202.peel, 2147483647
  %spec.select212.peel = select i1 %i.ay, i32 0, i32 %spec.select212.peel274 ; 2 uses
  %i.az = icmp samesign ult i64 %spec.select203.peel, 2147483648
  %narrow = select i1 %i.az, i1 %i.aa, i1 false   ; 2 uses
  %.1163.peel = zext i1 %narrow to i32
  %i.ba = icmp ult i64 %spec.select204.peel, 2147483648 ; 2 uses
  %i.bb = zext i1 %i.ba to i32
  %exitcond.not.peel = icmp eq i32 %1, 0
  br i1 %exitcond.not.peel, label %._crit_edge, label %.lr.ph.peel.next262.peel.newph

.lr.ph.peel.next262.peel.newph:                   ; preds = %.peel.begin, %.lr.ph.peel.next262.peel.newph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.peel.next262.peel.newph ], [ 0, %.peel.begin ] ; 2 uses
  %.0158226 = phi i32 [ %spec.select398, %.lr.ph.peel.next262.peel.newph ], [ 1, %.peel.begin ]
  %.0160225 = phi i32 [ %i.cn, %.lr.ph.peel.next262.peel.newph ], [ %i.bb, %.peel.begin ]
  %.0162224 = phi i32 [ %.1163, %.lr.ph.peel.next262.peel.newph ], [ %.1163.peel, %.peel.begin ]
  %.0164223 = phi i32 [ %spec.select212, %.lr.ph.peel.next262.peel.newph ], [ %spec.select212.peel, %.peel.begin ]
  %.0166222 = phi i32 [ %spec.select, %.lr.ph.peel.next262.peel.newph ], [ %spec.select.peel426, %.peel.begin ]
  %.0172221 = phi i64 [ %i.ci, %.lr.ph.peel.next262.peel.newph ], [ 0, %.peel.begin ]
  %.0173220 = phi i64 [ %i.ch, %.lr.ph.peel.next262.peel.newph ], [ %spec.select204.peel, %.peel.begin ]
  %.0174219 = phi i64 [ %i.cg, %.lr.ph.peel.next262.peel.newph ], [ %i.aw, %.peel.begin ]
  %.0175218 = phi i64 [ %i.cf, %.lr.ph.peel.next262.peel.newph ], [ %i.av, %.peel.begin ]
  %.0176217 = phi i64 [ %i.ce, %.lr.ph.peel.next262.peel.newph ], [ %i.au, %.peel.begin ]
  %i.bc = getelementptr [4 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = sext i32 %i.bd to i64                   ; 5 uses
  %i.bf = tail call i64 @llvm.abs.i64(i64 %i.be, i1 true) ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bc, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8
  %i.bi = sext i32 %i.bh to i64                   ; 4 uses
  %i.bj = sub nsw i64 %i.be, %i.bi
  %.fr288 = freeze i64 %i.bj
  %spec.select202 = tail call i64 @llvm.abs.i64(i64 %.fr288, i1 false) ; 2 uses
  %i.bk = shl nsw i64 %i.bi, 1
  %i.bl = sub nsw i64 %i.be, %i.bk
  %i.bm = getelementptr i8, ptr %i.bc, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !8
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %i.bp = add nsw i64 %i.bl, %i.bo
  %spec.select203 = tail call i64 @llvm.abs.i64(i64 %i.bp, i1 true) ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bc, i64 -12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %reass.add = sub nsw i64 %i.bo, %i.bi
  %reass.mul = mul nsw i64 %reass.add, 3
  %i.bt = sub nsw i64 %i.be, %i.bs
  %i.bu = add nsw i64 %i.bt, %reass.mul
  %.fr287 = freeze i64 %i.bu
  %spec.select204 = tail call i64 @llvm.abs.i64(i64 %.fr287, i1 false) ; 2 uses
  %i.bv = mul nsw i64 %i.bo, 6
  %i.bw = add nsw i64 %i.bv, %i.be
  %i.bx = add nsw i64 %i.bs, %i.bi
  %i.by = getelementptr i8, ptr %i.bc, i64 -16
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i64 %i.bw, %i.ca
  %i.cc = shl nsw i64 %i.bx, 2
  %i.cd = sub nsw i64 %i.cb, %i.cc
  %.fr406 = freeze i64 %i.cd
  %spec.select205 = tail call i64 @llvm.abs.i64(i64 %.fr406, i1 false) ; 2 uses
  %i.ce = add i64 %i.bf, %.0176217                ; 2 uses
  %i.cf = add i64 %spec.select202, %.0175218      ; 2 uses
  %i.cg = add i64 %spec.select203, %.0174219      ; 2 uses
  %i.ch = add i64 %spec.select204, %.0173220      ; 2 uses
  %i.ci = add i64 %spec.select205, %.0172221      ; 2 uses
  %i.cj = icmp samesign ugt i64 %i.bf, 2147483647
  %spec.select = select i1 %i.cj, i32 0, i32 %.0166222 ; 2 uses
  %i.ck = icmp ugt i64 %spec.select202, 2147483647
  %spec.select212 = select i1 %i.ck, i32 0, i32 %.0164223 ; 2 uses
  %i.cl = icmp samesign ugt i64 %spec.select203, 2147483647
  %.1163 = select i1 %i.cl, i32 0, i32 %.0162224  ; 2 uses
  %i.cm = icmp ugt i64 %spec.select204, 2147483647
  %i.cn = select i1 %i.cm, i32 0, i32 %.0160225   ; 2 uses
  %i.co = icmp ugt i64 %spec.select205, 2147483647
  %spec.select398 = select i1 %i.co, i32 0, i32 %.0158226 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit.loopexit.loopexit, label %.lr.ph.peel.next262.peel.newph, !llvm.loop !22

._crit_edge.loopexit.loopexit.loopexit:           ; preds = %.lr.ph.peel.next262.peel.newph
  %i.cp = icmp ne i32 %.1163, 0
  %i.cq = icmp ne i32 %i.cn, 0
  %i.cr = icmp ne i32 %spec.select398, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %.peel.begin, %._crit_edge.loopexit.loopexit.loopexit, %.thread210.peel, %.thread210.peel253, %.thread210.peel270
  %.lcssa243 = phi i64 [ %i.w, %.thread210.peel270 ], [ %i.e, %.thread210.peel ], [ %i.l, %.thread210.peel253 ], [ %i.au, %.peel.begin ], [ %i.ce, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.lcssa242 = phi i64 [ %i.x, %.thread210.peel270 ], [ 0, %.thread210.peel ], [ %spec.select202.peel247, %.thread210.peel253 ], [ %i.av, %.peel.begin ], [ %i.cf, %._crit_edge.loopexit.loopexit.loopexit ] ; 5 uses
  %.lcssa241 = phi i64 [ %spec.select203.peel265, %.thread210.peel270 ], [ 0, %.thread210.peel ], [ 0, %.thread210.peel253 ], [ %i.aw, %.peel.begin ], [ %i.cg, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.lcssa240 = phi i64 [ 0, %.thread210.peel270 ], [ 0, %.thread210.peel ], [ 0, %.thread210.peel253 ], [ %spec.select204.peel, %.peel.begin ], [ %i.ch, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.lcssa239 = phi i64 [ 0, %.thread210.peel270 ], [ 0, %.thread210.peel ], [ 0, %.thread210.peel253 ], [ 0, %.peel.begin ], [ %i.ci, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %spec.select.lcssa = phi i32 [ %spec.select.peel273, %.thread210.peel270 ], [ %spec.select.peel, %.thread210.peel ], [ %spec.select.peel256, %.thread210.peel253 ], [ %spec.select.peel426, %.peel.begin ], [ %spec.select, %._crit_edge.loopexit.loopexit.loopexit ]
  %spec.select212.lcssa = phi i32 [ %spec.select212.peel274, %.thread210.peel270 ], [ 1, %.thread210.peel ], [ %spec.select212.peel257, %.thread210.peel253 ], [ %spec.select212.peel, %.peel.begin ], [ %spec.select212, %._crit_edge.loopexit.loopexit.loopexit ]
  %.1163.lcssa = phi i1 [ %i.aa, %.thread210.peel270 ], [ true, %.thread210.peel ], [ true, %.thread210.peel253 ], [ %narrow, %.peel.begin ], [ %i.cp, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.lcssa = phi i1 [ true, %.thread210.peel270 ], [ true, %.thread210.peel ], [ true, %.thread210.peel253 ], [ %i.ba, %.peel.begin ], [ %i.cq, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.1159.lcssa = phi i1 [ true, %.thread210.peel270 ], [ true, %.thread210.peel ], [ true, %.thread210.peel253 ], [ true, %.peel.begin ], [ %i.cr, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %i.cs = icmp eq i32 %spec.select.lcssa, 0
  %i.ct = icmp ne i32 %spec.select212.lcssa, 0
  %.not188 = icmp eq i64 %.lcssa243, -1
  %or.cond = select i1 %i.cs, i1 true, i1 %.not188
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not189 = icmp eq i64 %.lcssa243, 0
  br i1 %.not189, label %.thread328, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cu = uitofp reassoc nsz arcp i64 %.lcssa243 to double
  %i.cv = fmul reassoc nnan nsz arcp double %i.cu, f0x3FE62E42FEFA39EF
  %i.cw = uitofp reassoc nsz arcp i32 %1 to double
  %i.cx = fdiv reassoc nsz arcp double %i.cv, %i.cw
  %i.cy = tail call reassoc nsz arcp double @log(double noundef %i.cx) #8
  %i.cz = fmul reassoc nsz arcp double %i.cy, f0x3FF71547652B82FE
  %i.da = fptrunc reassoc nsz arcp double %i.cz to float
  br label %bb.d

.thread328:                                       ; preds = %bb.b, %bb.a
  %.0158.lcssa317.ph = phi i1 [ %.1159.lcssa, %bb.b ], [ true, %bb.a ]
  %.0160.lcssa315.ph = phi i1 [ %.lcssa, %bb.b ], [ true, %bb.a ]
  %.0162.lcssa313.ph = phi i1 [ %.1163.lcssa, %bb.b ], [ true, %bb.a ]
  %.0172.lcssa309.ph = phi i64 [ %.lcssa239, %bb.b ], [ 0, %bb.a ]
  %.0173.lcssa307.ph = phi i64 [ %.lcssa240, %bb.b ], [ 0, %bb.a ]
  %.0174.lcssa305.ph = phi i64 [ %.lcssa241, %bb.b ], [ 0, %bb.a ]
  store float 0.000000e+00, ptr %2, align 4, !tbaa !13
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge = phi float [ 3.400000e+01, %._crit_edge ], [ %i.da, %bb.c ]
  %.0168 = phi i64 [ -1, %._crit_edge ], [ %.lcssa243, %bb.c ] ; 2 uses
  store float %storemerge, ptr %2, align 4, !tbaa !13
  %i.db = icmp ult i64 %.lcssa242, %.0168
  %or.cond198 = select i1 %i.ct, i1 %i.db, i1 false
  br i1 %or.cond198, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not191 = icmp eq i64 %.lcssa242, 0
  br i1 %.not191, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = uitofp reassoc nsz arcp i64 %.lcssa242 to double
  %i.dd = fmul reassoc nnan nsz arcp double %i.dc, f0x3FE62E42FEFA39EF
  %i.de = uitofp reassoc nsz arcp i32 %1 to double
  %i.df = fdiv reassoc nsz arcp double %i.dd, %i.de
  %i.dg = tail call reassoc nsz arcp double @log(double noundef %i.df) #8
  %i.dh = fmul reassoc nsz arcp double %i.dg, f0x3FF71547652B82FE
  %i.di = fptrunc reassoc nsz arcp double %i.dh to float
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %.thread328, %bb.f, %bb.e
  %.sink = phi float [ 0.000000e+00, %bb.e ], [ %i.di, %bb.f ], [ 3.400000e+01, %.thread328 ], [ 3.400000e+01, %bb.d ]
  %.0174.lcssa305350 = phi i64 [ %.lcssa241, %bb.e ], [ %.lcssa241, %bb.f ], [ %.0174.lcssa305.ph, %.thread328 ], [ %.lcssa241, %bb.d ] ; 5 uses
  %.0173.lcssa307348 = phi i64 [ %.lcssa240, %bb.e ], [ %.lcssa240, %bb.f ], [ %.0173.lcssa307.ph, %.thread328 ], [ %.lcssa240, %bb.d ] ; 5 uses
  %.0172.lcssa309346 = phi i64 [ %.lcssa239, %bb.e ], [ %.lcssa239, %bb.f ], [ %.0172.lcssa309.ph, %.thread328 ], [ %.lcssa239, %bb.d ] ; 3 uses
  %.0162.lcssa313344 = phi i1 [ %.1163.lcssa, %bb.e ], [ %.1163.lcssa, %bb.f ], [ %.0162.lcssa313.ph, %.thread328 ], [ %.1163.lcssa, %bb.d ]
  %.0160.lcssa315342 = phi i1 [ %.lcssa, %bb.e ], [ %.lcssa, %bb.f ], [ %.0160.lcssa315.ph, %.thread328 ], [ %.lcssa, %bb.d ]
  %.0158.lcssa317340 = phi i1 [ %.1159.lcssa, %bb.e ], [ %.1159.lcssa, %bb.f ], [ %.0158.lcssa317.ph, %.thread328 ], [ %.1159.lcssa, %bb.d ]
  %.1169 = phi i64 [ %.lcssa242, %bb.e ], [ %.lcssa242, %bb.f ], [ 0, %.thread328 ], [ %.0168, %bb.d ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.e ], [ 1, %bb.f ], [ 0, %.thread328 ], [ 0, %bb.d ]
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink, ptr %i.dj, align 4, !tbaa !13
  %i.dk = icmp ult i64 %.0174.lcssa305350, %.1169
  %or.cond199 = select i1 %.0162.lcssa313344, i1 %i.dk, i1 false
  br i1 %or.cond199, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not193 = icmp eq i64 %.0174.lcssa305350, 0
  br i1 %.not193, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = uitofp reassoc nsz arcp i64 %.0174.lcssa305350 to double
  %i.dm = fmul reassoc nnan nsz arcp double %i.dl, f0x3FE62E42FEFA39EF
  %i.dn = uitofp reassoc nsz arcp i32 %1 to double
  %i.do = fdiv reassoc nsz arcp double %i.dm, %i.dn
  %i.dp = tail call reassoc nsz arcp double @log(double noundef %i.do) #8
  %i.dq = fmul reassoc nsz arcp double %i.dp, f0x3FF71547652B82FE
  %i.dr = fptrunc reassoc nsz arcp double %i.dq to float
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.sink400 = phi float [ 0.000000e+00, %bb.h ], [ %i.dr, %bb.i ], [ 3.400000e+01, %bb.g ]
  %.2170 = phi i64 [ %.0174.lcssa305350, %bb.h ], [ %.0174.lcssa305350, %bb.i ], [ %.1169, %bb.g ] ; 2 uses
  %.2 = phi i32 [ 2, %bb.h ], [ 2, %bb.i ], [ %.1, %bb.g ]
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink400, ptr %i.ds, align 4, !tbaa !13
  %i.dt = icmp ult i64 %.0173.lcssa307348, %.2170
  %or.cond200 = select i1 %.0160.lcssa315342, i1 %i.dt, i1 false
  br i1 %or.cond200, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not195 = icmp eq i64 %.0173.lcssa307348, 0
  br i1 %.not195, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.du = uitofp reassoc nsz arcp i64 %.0173.lcssa307348 to double
  %i.dv = fmul reassoc nnan nsz arcp double %i.du, f0x3FE62E42FEFA39EF
  %i.dw = uitofp reassoc nsz arcp i32 %1 to double
  %i.dx = fdiv reassoc nsz arcp double %i.dv, %i.dw
  %i.dy = tail call reassoc nsz arcp double @log(double noundef %i.dx) #8
  %i.dz = fmul reassoc nsz arcp double %i.dy, f0x3FF71547652B82FE
  %i.ea = fptrunc reassoc nsz arcp double %i.dz to float
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.sink402 = phi float [ 0.000000e+00, %bb.k ], [ %i.ea, %bb.l ], [ 3.400000e+01, %bb.j ]
  %.3171 = phi i64 [ %.0173.lcssa307348, %bb.k ], [ %.0173.lcssa307348, %bb.l ], [ %.2170, %bb.j ]
  %.3 = phi i32 [ 3, %bb.k ], [ 3, %bb.l ], [ %.2, %bb.j ]
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %.sink402, ptr %i.eb, align 4, !tbaa !13
  %i.ec = icmp ult i64 %.0172.lcssa309346, %.3171
  %or.cond201 = select i1 %.0158.lcssa317340, i1 %i.ec, i1 false
  br i1 %or.cond201, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not197 = icmp eq i64 %.0172.lcssa309346, 0
  br i1 %.not197, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = uitofp reassoc nsz arcp i64 %.0172.lcssa309346 to double
  %i.ee = fmul reassoc nnan nsz arcp double %i.ed, f0x3FE62E42FEFA39EF
  %i.ef = uitofp reassoc nsz arcp i32 %1 to double
  %i.eg = fdiv reassoc nsz arcp double %i.ee, %i.ef
  %i.eh = tail call reassoc nsz arcp double @log(double noundef %i.eg) #8
  %i.ei = fmul reassoc nsz arcp double %i.eh, f0x3FF71547652B82FE
  %i.ej = fptrunc reassoc nsz arcp double %i.ei to float
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %.sink404 = phi float [ 0.000000e+00, %bb.n ], [ %i.ej, %bb.o ], [ 3.400000e+01, %bb.m ]
  %.4 = phi i32 [ 4, %bb.n ], [ 4, %bb.o ], [ %.3, %bb.m ]
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %.sink404, ptr %i.ek, align 4, !tbaa !13
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 0, 5) i32 @FLAC__fixed_compute_best_predictor_limit_residual_33bit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -4
  br i1 %i.a, label %.thread210.peel, label %.thread328

.thread210.peel:                                  ; preds = %bb.a
  %wide.trip.count = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 -32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = tail call i64 @llvm.abs.i64(i64 %i.c, i1 true) ; 3 uses
  %i.e = icmp samesign ult i64 %i.d, 2147483648
  %spec.select.peel = zext i1 %i.e to i32         ; 2 uses
  %exitcond.peel.not = icmp eq i32 %1, -3
  br i1 %exitcond.peel.not, label %._crit_edge, label %.thread210.peel253

.thread210.peel253:                               ; preds = %.thread210.peel
  %i.f = getelementptr inbounds i8, ptr %0, i64 -24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.h = tail call i64 @llvm.abs.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = sub nsw i64 %i.g, %i.c
  %.fr285 = freeze i64 %i.i
  %spec.select202.peel247 = tail call i64 @llvm.abs.i64(i64 %.fr285, i1 false) ; 3 uses
  %i.j = add nuw i64 %i.h, %i.d                   ; 2 uses
  %i.k = icmp samesign ugt i64 %i.h, 2147483647
  %spec.select.peel256 = select i1 %i.k, i32 0, i32 %spec.select.peel ; 2 uses
  %i.l = icmp ult i64 %spec.select202.peel247, 2147483648
  %spec.select212.peel257 = zext i1 %i.l to i32   ; 2 uses
  %exitcond.peel261.not = icmp eq i32 %1, -2
  br i1 %exitcond.peel261.not, label %._crit_edge, label %.thread210.peel270

.thread210.peel270:                               ; preds = %.thread210.peel253
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16   ; 3 uses
  %i.o = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true) ; 2 uses
  %i.p = sub nsw i64 %i.n, %i.g
  %.fr286 = freeze i64 %i.p
  %spec.select202.peel264 = tail call i64 @llvm.abs.i64(i64 %.fr286, i1 false) ; 2 uses
  %i.q = shl i64 %i.g, 1
  %i.r = sub i64 %i.n, %i.q
  %i.s = add nsw i64 %i.r, %i.c
  %spec.select203.peel265 = tail call i64 @llvm.abs.i64(i64 %i.s, i1 true) ; 3 uses
  %i.t = add i64 %i.o, %i.j                       ; 2 uses
  %i.u = add i64 %spec.select202.peel264, %spec.select202.peel247 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.o, 2147483647
  %spec.select.peel273 = select i1 %i.v, i32 0, i32 %spec.select.peel256 ; 2 uses
  %i.w = icmp ugt i64 %spec.select202.peel264, 2147483647
  %spec.select212.peel274 = select i1 %i.w, i32 0, i32 %spec.select212.peel257 ; 2 uses
  %i.x = icmp samesign ult i64 %spec.select203.peel265, 2147483648 ; 2 uses
  %exitcond.peel278.not = icmp eq i32 %1, -1
  br i1 %exitcond.peel278.not, label %._crit_edge, label %.peel.begin

.peel.begin:                                      ; preds = %.thread210.peel270
  %i.y = getelementptr i8, ptr %0, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16   ; 4 uses
  %i.aa = tail call i64 @llvm.abs.i64(i64 %i.z, i1 true) ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 -16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  %i.ad = sub nsw i64 %i.z, %i.ac
  %.fr288.peel = freeze i64 %i.ad
  %spec.select202.peel = tail call i64 @llvm.abs.i64(i64 %.fr288.peel, i1 false) ; 2 uses
  %i.ae = shl i64 %i.ac, 1
  %i.af = sub i64 %i.z, %i.ae
  %i.ag = getelementptr i8, ptr %0, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %i.ai = add nsw i64 %i.af, %i.ah
  %spec.select203.peel = tail call i64 @llvm.abs.i64(i64 %i.ai, i1 true) ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 -32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16
  %reass.add.peel = sub i64 %i.ah, %i.ac
  %reass.mul.peel = mul i64 %reass.add.peel, 3
  %i.al = sub i64 %i.z, %i.ak
  %i.am = add i64 %i.al, %reass.mul.peel
  %.fr287.peel = freeze i64 %i.am
  %spec.select204.peel = tail call i64 @llvm.abs.i64(i64 %.fr287.peel, i1 false) ; 3 uses
  %i.an = add i64 %i.aa, %i.t                     ; 2 uses
  %i.ao = add i64 %spec.select202.peel, %i.u      ; 2 uses
  %i.ap = add nuw i64 %spec.select203.peel, %spec.select203.peel265 ; 2 uses
  %i.aq = icmp samesign ugt i64 %i.aa, 2147483647
  %spec.select.peel426 = select i1 %i.aq, i32 0, i32 %spec.select.peel273 ; 2 uses
  %i.ar = icmp ugt i64 %spec.select202.peel, 2147483647
  %spec.select212.peel = select i1 %i.ar, i32 0, i32 %spec.select212.peel274 ; 2 uses
  %i.as = icmp samesign ult i64 %spec.select203.peel, 2147483648
  %narrow = select i1 %i.as, i1 %i.x, i1 false    ; 2 uses
  %.1163.peel = zext i1 %narrow to i32
  %i.at = icmp ult i64 %spec.select204.peel, 2147483648 ; 2 uses
  %i.au = zext i1 %i.at to i32
  %exitcond.not.peel = icmp eq i32 %1, 0
  br i1 %exitcond.not.peel, label %._crit_edge, label %.lr.ph.peel.next262.peel.newph

.lr.ph.peel.next262.peel.newph:                   ; preds = %.peel.begin, %.lr.ph.peel.next262.peel.newph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.peel.next262.peel.newph ], [ 0, %.peel.begin ] ; 2 uses
  %.0158226 = phi i32 [ %spec.select398, %.lr.ph.peel.next262.peel.newph ], [ 1, %.peel.begin ]
  %.0160225 = phi i32 [ %i.cb, %.lr.ph.peel.next262.peel.newph ], [ %i.au, %.peel.begin ]
  %.0162224 = phi i32 [ %.1163, %.lr.ph.peel.next262.peel.newph ], [ %.1163.peel, %.peel.begin ]
  %.0164223 = phi i32 [ %spec.select212, %.lr.ph.peel.next262.peel.newph ], [ %spec.select212.peel, %.peel.begin ]
  %.0166222 = phi i32 [ %spec.select, %.lr.ph.peel.next262.peel.newph ], [ %spec.select.peel426, %.peel.begin ]
  %.0172221 = phi i64 [ %i.bw, %.lr.ph.peel.next262.peel.newph ], [ 0, %.peel.begin ]
  %.0173220 = phi i64 [ %i.bv, %.lr.ph.peel.next262.peel.newph ], [ %spec.select204.peel, %.peel.begin ]
  %.0174219 = phi i64 [ %i.bu, %.lr.ph.peel.next262.peel.newph ], [ %i.ap, %.peel.begin ]
  %.0175218 = phi i64 [ %i.bt, %.lr.ph.peel.next262.peel.newph ], [ %i.ao, %.peel.begin ]
  %.0176217 = phi i64 [ %i.bs, %.lr.ph.peel.next262.peel.newph ], [ %i.an, %.peel.begin ]
  %i.av = getelementptr [8 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !16 ; 5 uses
  %i.ax = tail call i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = getelementptr i8, ptr %i.av, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16 ; 4 uses
  %i.ba = sub nsw i64 %i.aw, %i.az
  %.fr288 = freeze i64 %i.ba
  %spec.select202 = tail call i64 @llvm.abs.i64(i64 %.fr288, i1 false) ; 2 uses
  %i.bb = shl i64 %i.az, 1
  %i.bc = sub i64 %i.aw, %i.bb
  %i.bd = getelementptr i8, ptr %i.av, i64 -16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16 ; 3 uses
  %i.bf = add nsw i64 %i.bc, %i.be
  %spec.select203 = tail call i64 @llvm.abs.i64(i64 %i.bf, i1 true) ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16 ; 2 uses
  %reass.add = sub i64 %i.be, %i.az
  %reass.mul = mul i64 %reass.add, 3
  %i.bi = sub i64 %i.aw, %i.bh
  %i.bj = add i64 %i.bi, %reass.mul
  %.fr287 = freeze i64 %i.bj
  %spec.select204 = tail call i64 @llvm.abs.i64(i64 %.fr287, i1 false) ; 2 uses
  %i.bk = mul nsw i64 %i.be, 6
  %i.bl = add i64 %i.bk, %i.aw
  %i.bm = add i64 %i.bh, %i.az
  %i.bn = getelementptr i8, ptr %i.av, i64 -32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = add i64 %i.bl, %i.bo
  %i.bq = shl i64 %i.bm, 2
  %i.br = sub i64 %i.bp, %i.bq
  %.fr406 = freeze i64 %i.br
  %spec.select205 = tail call i64 @llvm.abs.i64(i64 %.fr406, i1 false) ; 2 uses
  %i.bs = add i64 %i.ax, %.0176217                ; 2 uses
  %i.bt = add i64 %spec.select202, %.0175218      ; 2 uses
  %i.bu = add i64 %spec.select203, %.0174219      ; 2 uses
  %i.bv = add i64 %spec.select204, %.0173220      ; 2 uses
  %i.bw = add i64 %spec.select205, %.0172221      ; 2 uses
  %i.bx = icmp samesign ugt i64 %i.ax, 2147483647
  %spec.select = select i1 %i.bx, i32 0, i32 %.0166222 ; 2 uses
  %i.by = icmp ugt i64 %spec.select202, 2147483647
  %spec.select212 = select i1 %i.by, i32 0, i32 %.0164223 ; 2 uses
  %i.bz = icmp samesign ugt i64 %spec.select203, 2147483647
  %.1163 = select i1 %i.bz, i32 0, i32 %.0162224  ; 2 uses
  %i.ca = icmp ugt i64 %spec.select204, 2147483647
  %i.cb = select i1 %i.ca, i32 0, i32 %.0160225   ; 2 uses
  %i.cc = icmp ugt i64 %spec.select205, 2147483647
  %spec.select398 = select i1 %i.cc, i32 0, i32 %.0158226 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit.loopexit.loopexit, label %.lr.ph.peel.next262.peel.newph, !llvm.loop !23

._crit_edge.loopexit.loopexit.loopexit:           ; preds = %.lr.ph.peel.next262.peel.newph
  %i.cd = icmp ne i32 %.1163, 0
  %i.ce = icmp ne i32 %i.cb, 0
  %i.cf = icmp ne i32 %spec.select398, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %.peel.begin, %._crit_edge.loopexit.loopexit.loopexit, %.thread210.peel, %.thread210.peel253, %.thread210.peel270
  %.lcssa243 = phi i64 [ %i.t, %.thread210.peel270 ], [ %i.d, %.thread210.peel ], [ %i.j, %.thread210.peel253 ], [ %i.an, %.peel.begin ], [ %i.bs, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.lcssa242 = phi i64 [ %i.u, %.thread210.peel270 ], [ 0, %.thread210.peel ], [ %spec.select202.peel247, %.thread210.peel253 ], [ %i.ao, %.peel.begin ], [ %i.bt, %._crit_edge.loopexit.loopexit.loopexit ] ; 5 uses
  %.lcssa241 = phi i64 [ %spec.select203.peel265, %.thread210.peel270 ], [ 0, %.thread210.peel ], [ 0, %.thread210.peel253 ], [ %i.ap, %.peel.begin ], [ %i.bu, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.lcssa240 = phi i64 [ 0, %.thread210.peel270 ], [ 0, %.thread210.peel ], [ 0, %.thread210.peel253 ], [ %spec.select204.peel, %.peel.begin ], [ %i.bv, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.lcssa239 = phi i64 [ 0, %.thread210.peel270 ], [ 0, %.thread210.peel ], [ 0, %.thread210.peel253 ], [ 0, %.peel.begin ], [ %i.bw, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %spec.select.lcssa = phi i32 [ %spec.select.peel273, %.thread210.peel270 ], [ %spec.select.peel, %.thread210.peel ], [ %spec.select.peel256, %.thread210.peel253 ], [ %spec.select.peel426, %.peel.begin ], [ %spec.select, %._crit_edge.loopexit.loopexit.loopexit ]
  %spec.select212.lcssa = phi i32 [ %spec.select212.peel274, %.thread210.peel270 ], [ 1, %.thread210.peel ], [ %spec.select212.peel257, %.thread210.peel253 ], [ %spec.select212.peel, %.peel.begin ], [ %spec.select212, %._crit_edge.loopexit.loopexit.loopexit ]
  %.1163.lcssa = phi i1 [ %i.x, %.thread210.peel270 ], [ true, %.thread210.peel ], [ true, %.thread210.peel253 ], [ %narrow, %.peel.begin ], [ %i.cd, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.lcssa = phi i1 [ true, %.thread210.peel270 ], [ true, %.thread210.peel ], [ true, %.thread210.peel253 ], [ %i.at, %.peel.begin ], [ %i.ce, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %.1159.lcssa = phi i1 [ true, %.thread210.peel270 ], [ true, %.thread210.peel ], [ true, %.thread210.peel253 ], [ true, %.peel.begin ], [ %i.cf, %._crit_edge.loopexit.loopexit.loopexit ] ; 4 uses
  %i.cg = icmp eq i32 %spec.select.lcssa, 0
  %i.ch = icmp ne i32 %spec.select212.lcssa, 0
  %.not188 = icmp eq i64 %.lcssa243, -1
  %or.cond = select i1 %i.cg, i1 true, i1 %.not188
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not189 = icmp eq i64 %.lcssa243, 0
  br i1 %.not189, label %.thread328, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ci = uitofp reassoc nsz arcp i64 %.lcssa243 to double
  %i.cj = fmul reassoc nnan nsz arcp double %i.ci, f0x3FE62E42FEFA39EF
  %i.ck = uitofp reassoc nsz arcp i32 %1 to double
  %i.cl = fdiv reassoc nsz arcp double %i.cj, %i.ck
  %i.cm = tail call reassoc nsz arcp double @log(double noundef %i.cl) #8
  %i.cn = fmul reassoc nsz arcp double %i.cm, f0x3FF71547652B82FE
  %i.co = fptrunc reassoc nsz arcp double %i.cn to float
  br label %bb.d

.thread328:                                       ; preds = %bb.b, %bb.a
  %.0158.lcssa317.ph = phi i1 [ %.1159.lcssa, %bb.b ], [ true, %bb.a ]
  %.0160.lcssa315.ph = phi i1 [ %.lcssa, %bb.b ], [ true, %bb.a ]
  %.0162.lcssa313.ph = phi i1 [ %.1163.lcssa, %bb.b ], [ true, %bb.a ]
  %.0172.lcssa309.ph = phi i64 [ %.lcssa239, %bb.b ], [ 0, %bb.a ]
  %.0173.lcssa307.ph = phi i64 [ %.lcssa240, %bb.b ], [ 0, %bb.a ]
  %.0174.lcssa305.ph = phi i64 [ %.lcssa241, %bb.b ], [ 0, %bb.a ]
  store float 0.000000e+00, ptr %2, align 4, !tbaa !13
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge = phi float [ 3.400000e+01, %._crit_edge ], [ %i.co, %bb.c ]
  %.0168 = phi i64 [ -1, %._crit_edge ], [ %.lcssa243, %bb.c ] ; 2 uses
  store float %storemerge, ptr %2, align 4, !tbaa !13
  %i.cp = icmp ult i64 %.lcssa242, %.0168
  %or.cond198 = select i1 %i.ch, i1 %i.cp, i1 false
  br i1 %or.cond198, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not191 = icmp eq i64 %.lcssa242, 0
  br i1 %.not191, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = uitofp reassoc nsz arcp i64 %.lcssa242 to double
  %i.cr = fmul reassoc nnan nsz arcp double %i.cq, f0x3FE62E42FEFA39EF
  %i.cs = uitofp reassoc nsz arcp i32 %1 to double
  %i.ct = fdiv reassoc nsz arcp double %i.cr, %i.cs
  %i.cu = tail call reassoc nsz arcp double @log(double noundef %i.ct) #8
  %i.cv = fmul reassoc nsz arcp double %i.cu, f0x3FF71547652B82FE
  %i.cw = fptrunc reassoc nsz arcp double %i.cv to float
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %.thread328, %bb.f, %bb.e
  %.sink = phi float [ 0.000000e+00, %bb.e ], [ %i.cw, %bb.f ], [ 3.400000e+01, %.thread328 ], [ 3.400000e+01, %bb.d ]
  %.0174.lcssa305350 = phi i64 [ %.lcssa241, %bb.e ], [ %.lcssa241, %bb.f ], [ %.0174.lcssa305.ph, %.thread328 ], [ %.lcssa241, %bb.d ] ; 5 uses
  %.0173.lcssa307348 = phi i64 [ %.lcssa240, %bb.e ], [ %.lcssa240, %bb.f ], [ %.0173.lcssa307.ph, %.thread328 ], [ %.lcssa240, %bb.d ] ; 5 uses
  %.0172.lcssa309346 = phi i64 [ %.lcssa239, %bb.e ], [ %.lcssa239, %bb.f ], [ %.0172.lcssa309.ph, %.thread328 ], [ %.lcssa239, %bb.d ] ; 3 uses
  %.0162.lcssa313344 = phi i1 [ %.1163.lcssa, %bb.e ], [ %.1163.lcssa, %bb.f ], [ %.0162.lcssa313.ph, %.thread328 ], [ %.1163.lcssa, %bb.d ]
  %.0160.lcssa315342 = phi i1 [ %.lcssa, %bb.e ], [ %.lcssa, %bb.f ], [ %.0160.lcssa315.ph, %.thread328 ], [ %.lcssa, %bb.d ]
  %.0158.lcssa317340 = phi i1 [ %.1159.lcssa, %bb.e ], [ %.1159.lcssa, %bb.f ], [ %.0158.lcssa317.ph, %.thread328 ], [ %.1159.lcssa, %bb.d ]
  %.1169 = phi i64 [ %.lcssa242, %bb.e ], [ %.lcssa242, %bb.f ], [ 0, %.thread328 ], [ %.0168, %bb.d ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.e ], [ 1, %bb.f ], [ 0, %.thread328 ], [ 0, %bb.d ]
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink, ptr %i.cx, align 4, !tbaa !13
  %i.cy = icmp ult i64 %.0174.lcssa305350, %.1169
  %or.cond199 = select i1 %.0162.lcssa313344, i1 %i.cy, i1 false
  br i1 %or.cond199, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not193 = icmp eq i64 %.0174.lcssa305350, 0
  br i1 %.not193, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = uitofp reassoc nsz arcp i64 %.0174.lcssa305350 to double
  %i.da = fmul reassoc nnan nsz arcp double %i.cz, f0x3FE62E42FEFA39EF
  %i.db = uitofp reassoc nsz arcp i32 %1 to double
  %i.dc = fdiv reassoc nsz arcp double %i.da, %i.db
  %i.dd = tail call reassoc nsz arcp double @log(double noundef %i.dc) #8
  %i.de = fmul reassoc nsz arcp double %i.dd, f0x3FF71547652B82FE
  %i.df = fptrunc reassoc nsz arcp double %i.de to float
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.sink400 = phi float [ 0.000000e+00, %bb.h ], [ %i.df, %bb.i ], [ 3.400000e+01, %bb.g ]
  %.2170 = phi i64 [ %.0174.lcssa305350, %bb.h ], [ %.0174.lcssa305350, %bb.i ], [ %.1169, %bb.g ] ; 2 uses
  %.2 = phi i32 [ 2, %bb.h ], [ 2, %bb.i ], [ %.1, %bb.g ]
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink400, ptr %i.dg, align 4, !tbaa !13
  %i.dh = icmp ult i64 %.0173.lcssa307348, %.2170
  %or.cond200 = select i1 %.0160.lcssa315342, i1 %i.dh, i1 false
  br i1 %or.cond200, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not195 = icmp eq i64 %.0173.lcssa307348, 0
  br i1 %.not195, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = uitofp reassoc nsz arcp i64 %.0173.lcssa307348 to double
  %i.dj = fmul reassoc nnan nsz arcp double %i.di, f0x3FE62E42FEFA39EF
  %i.dk = uitofp reassoc nsz arcp i32 %1 to double
  %i.dl = fdiv reassoc nsz arcp double %i.dj, %i.dk
  %i.dm = tail call reassoc nsz arcp double @log(double noundef %i.dl) #8
  %i.dn = fmul reassoc nsz arcp double %i.dm, f0x3FF71547652B82FE
  %i.do = fptrunc reassoc nsz arcp double %i.dn to float
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.sink402 = phi float [ 0.000000e+00, %bb.k ], [ %i.do, %bb.l ], [ 3.400000e+01, %bb.j ]
  %.3171 = phi i64 [ %.0173.lcssa307348, %bb.k ], [ %.0173.lcssa307348, %bb.l ], [ %.2170, %bb.j ]
  %.3 = phi i32 [ 3, %bb.k ], [ 3, %bb.l ], [ %.2, %bb.j ]
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %.sink402, ptr %i.dp, align 4, !tbaa !13
  %i.dq = icmp ult i64 %.0172.lcssa309346, %.3171
  %or.cond201 = select i1 %.0158.lcssa317340, i1 %i.dq, i1 false
  br i1 %or.cond201, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not197 = icmp eq i64 %.0172.lcssa309346, 0
  br i1 %.not197, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = uitofp reassoc nsz arcp i64 %.0172.lcssa309346 to double
  %i.ds = fmul reassoc nnan nsz arcp double %i.dr, f0x3FE62E42FEFA39EF
  %i.dt = uitofp reassoc nsz arcp i32 %1 to double
  %i.du = fdiv reassoc nsz arcp double %i.ds, %i.dt
  %i.dv = tail call reassoc nsz arcp double @log(double noundef %i.du) #8
  %i.dw = fmul reassoc nsz arcp double %i.dv, f0x3FF71547652B82FE
  %i.dx = fptrunc reassoc nsz arcp double %i.dw to float
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %.sink404 = phi float [ 0.000000e+00, %bb.n ], [ %i.dx, %bb.o ], [ 3.400000e+01, %bb.m ]
  %.4 = phi i32 [ 4, %bb.n ], [ 4, %bb.o ], [ %.3, %bb.m ]
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %.sink404, ptr %i.dy, align 4, !tbaa !13
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__fixed_compute_residual(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  switch i32 %2, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %.preheader
    i32 2, label %.preheader54
    i32 3, label %.preheader56
    i32 4, label %.preheader58
  ]

.preheader58:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader58
  %wide.trip.count = zext nneg i32 %1 to i64      ; 4 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader188, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.c = getelementptr i8, ptr %3, i64 %i.b
  %i.d = getelementptr i8, ptr %0, i64 -16
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %bound0 = icmp ult ptr %3, %i.e
  %bound1 = icmp ult ptr %i.d, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader188, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !8, !alias.scope !45
  %wide.load96 = load <4 x i32>, ptr %i.g, align 4, !tbaa !8, !alias.scope !45
  %i.h = getelementptr i8, ptr %i.f, i64 -4
  %i.i = getelementptr i8, ptr %i.f, i64 12
  %wide.load97 = load <4 x i32>, ptr %i.h, align 4, !tbaa !8, !alias.scope !45
  %wide.load98 = load <4 x i32>, ptr %i.i, align 4, !tbaa !8, !alias.scope !45
  %i.j = getelementptr i8, ptr %i.f, i64 -8
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %wide.load99 = load <4 x i32>, ptr %i.j, align 4, !tbaa !8, !alias.scope !45
  %wide.load100 = load <4 x i32>, ptr %i.k, align 4, !tbaa !8, !alias.scope !45
  %i.l = mul nsw <4 x i32> %wide.load99, splat (i32 6)
  %i.m = mul nsw <4 x i32> %wide.load100, splat (i32 6)
  %i.n = getelementptr i8, ptr %i.f, i64 -12
  %i.o = getelementptr i8, ptr %i.f, i64 4
  %wide.load101 = load <4 x i32>, ptr %i.n, align 4, !tbaa !8, !alias.scope !45
  %wide.load102 = load <4 x i32>, ptr %i.o, align 4, !tbaa !8, !alias.scope !45
  %i.p = add <4 x i32> %i.l, %wide.load
  %i.q = add <4 x i32> %i.m, %wide.load96
  %i.r = add <4 x i32> %wide.load101, %wide.load97
  %i.s = add <4 x i32> %wide.load102, %wide.load98
  %i.t = getelementptr i8, ptr %i.f, i64 -16
  %wide.load103 = load <4 x i32>, ptr %i.t, align 4, !tbaa !8, !alias.scope !45
  %wide.load104 = load <4 x i32>, ptr %i.f, align 4, !tbaa !8, !alias.scope !45
  %i.u = add <4 x i32> %i.p, %wide.load103
  %i.v = add <4 x i32> %i.q, %wide.load104
  %i.w = shl <4 x i32> %i.r, splat (i32 2)
  %i.x = shl <4 x i32> %i.s, splat (i32 2)
  %i.y = sub <4 x i32> %i.u, %i.w
  %i.z = sub <4 x i32> %i.v, %i.x
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 4, !tbaa !8, !alias.scope !46, !noalias !45
  store <4 x i32> %i.z, ptr %i.ab, align 4, !tbaa !8, !alias.scope !46, !noalias !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader188

.lr.ph.preheader188:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader56:                                     ; preds = %bb.a
  %i.ad = icmp sgt i32 %1, 0
  br i1 %i.ad, label %.lr.ph62.preheader, label %.loopexit

.lr.ph62.preheader:                               ; preds = %.preheader56
  %wide.trip.count76 = zext nneg i32 %1 to i64    ; 6 uses
  %min.iters.check112 = icmp ult i32 %1, 8
  br i1 %min.iters.check112, label %.lr.ph62.preheader186, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph62.preheader
  %i.ae = shl nuw nsw i64 %wide.trip.count76, 2   ; 2 uses
  %i.af = getelementptr i8, ptr %3, i64 %i.ae
  %i.ag = getelementptr i8, ptr %0, i64 -12
  %i.ah = getelementptr i8, ptr %0, i64 %i.ae
  %bound0114 = icmp ult ptr %3, %i.ah
  %bound1115 = icmp ult ptr %i.ag, %i.af
  %found.conflict116 = and i1 %bound0114, %bound1115
  br i1 %found.conflict116, label %.lr.ph62.preheader186, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck113
  %n.vec118 = and i64 %wide.trip.count76, 2147483640 ; 3 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next129, %vector.body119 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index120 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load121 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !8, !alias.scope !47
  %wide.load122 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !8, !alias.scope !47
  %i.ak = getelementptr i8, ptr %i.ai, i64 -4
  %i.al = getelementptr i8, ptr %i.ai, i64 12
  %wide.load123 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !8, !alias.scope !47
  %wide.load124 = load <4 x i32>, ptr %i.al, align 4, !tbaa !8, !alias.scope !47
  %i.am = getelementptr i8, ptr %i.ai, i64 -8
  %i.an = getelementptr i8, ptr %i.ai, i64 8
  %wide.load125 = load <4 x i32>, ptr %i.am, align 4, !tbaa !8, !alias.scope !47
  %wide.load126 = load <4 x i32>, ptr %i.an, align 4, !tbaa !8, !alias.scope !47
  %i.ao = getelementptr i8, ptr %i.ai, i64 -12
  %i.ap = getelementptr i8, ptr %i.ai, i64 4
  %wide.load127 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !8, !alias.scope !47
  %wide.load128 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !8, !alias.scope !47
  %i.aq = sub <4 x i32> %wide.load125, %wide.load123
  %i.ar = sub <4 x i32> %wide.load126, %wide.load124
  %i.as = mul <4 x i32> %i.aq, splat (i32 3)
  %i.at = mul <4 x i32> %i.ar, splat (i32 3)
  %i.au = sub <4 x i32> %wide.load121, %wide.load127
  %i.av = sub <4 x i32> %wide.load122, %wide.load128
  %i.aw = add <4 x i32> %i.au, %i.as
  %i.ax = add <4 x i32> %i.av, %i.at
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index120 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !8, !alias.scope !48, !noalias !47
  store <4 x i32> %i.ax, ptr %i.az, align 4, !tbaa !8, !alias.scope !48, !noalias !47
  %index.next129 = add nuw i64 %index120, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next129, %n.vec118
  br i1 %i.ba, label %middle.block130, label %vector.body119, !llvm.loop !31

middle.block130:                                  ; preds = %vector.body119
  %cmp.n131 = icmp eq i64 %n.vec118, %wide.trip.count76
  br i1 %cmp.n131, label %.loopexit, label %.lr.ph62.preheader186

.lr.ph62.preheader186:                            ; preds = %vector.memcheck113, %.lr.ph62.preheader, %middle.block130
  %indvars.iv73.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph62.preheader ], [ %n.vec118, %middle.block130 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count76, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph62.prol.loopexit, label %.lr.ph62.prol

.lr.ph62.prol:                                    ; preds = %.lr.ph62.preheader186
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73.ph ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bf = getelementptr i8, ptr %i.bb, i64 -8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = getelementptr i8, ptr %i.bb, i64 -12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %reass.add.prol = sub i32 %i.bg, %i.be
  %reass.mul.prol = mul i32 %reass.add.prol, 3
  %i.bj = sub i32 %i.bc, %i.bi
  %i.bk = add i32 %i.bj, %reass.mul.prol
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv73.ph
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !8
  %indvars.iv.next74.prol = or disjoint i64 %indvars.iv73.ph, 1
  br label %.lr.ph62.prol.loopexit

.lr.ph62.prol.loopexit:                           ; preds = %.lr.ph62.prol, %.lr.ph62.preheader186
  %indvars.iv73.unr = phi i64 [ %indvars.iv73.ph, %.lr.ph62.preheader186 ], [ %indvars.iv.next74.prol, %.lr.ph62.prol ]
  %i.bm = add nsw i64 %wide.trip.count76, -1
  %i.bn = icmp eq i64 %indvars.iv73.ph, %i.bm
  br i1 %i.bn, label %.loopexit, label %.lr.ph62

.preheader54:                                     ; preds = %bb.a
  %i.bo = icmp sgt i32 %1, 0
  br i1 %i.bo, label %.lr.ph64.preheader, label %.loopexit

.lr.ph64.preheader:                               ; preds = %.preheader54
  %wide.trip.count81 = zext nneg i32 %1 to i64    ; 6 uses
  %min.iters.check140 = icmp ult i32 %1, 8
  br i1 %min.iters.check140, label %.lr.ph64.preheader184, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph64.preheader
  %i.bp = shl nuw nsw i64 %wide.trip.count81, 2   ; 2 uses
end_hunk_0
