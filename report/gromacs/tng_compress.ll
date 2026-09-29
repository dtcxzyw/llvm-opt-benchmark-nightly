Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tng_compress?download=true
inline.NumInlined: 102
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 61
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@compress_algo_pos = internal unnamed_addr constant [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 16
@compress_algo_vel = internal unnamed_addr constant [11 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.9, ptr @.str.9, ptr @.str.13, ptr @.str.9, ptr @.str.14, ptr @.str.15, ptr @.str.9], align 16
@.str = private unnamed_addr constant [28 x i8] c"Positions invalid algorithm\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Positions stopbits interframe\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Positions triplet interframe\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Positions triplet intraframe\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Positions XTC2\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Positions triplet one to one\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Positions BWLZH interframe\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Positions BWLZH intraframe\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Positions XTC3\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Velocities invalid algorithm\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Velocities stopbits one to one\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Velocities triplet interframe\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Velocities triplet one to one\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Velocities stopbits interframe\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Velocities BWLZH interframe\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Velocities BWLZH one to one\00", align 1

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_pos_int(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = mul nsw i32 %2, %1                       ; 2 uses
  %i.f = mul nsw i32 %i.e, 14
  %i.g = add nsw i32 %i.f, 44
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #11 ; 2 uses
  %i.j = mul nsw i32 %i.e, 3
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #11 ; 24 uses
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #11 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.o = icmp eq i32 %5, 0
  %i.p = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 6)
  %spec.store.select1 = select i1 %i.o, i32 2, i32 %i.q ; 4 uses
  %i.r = load i32, ptr %6, align 4, !tbaa !16     ; 2 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16   ; 2 uses
  store i32 %i.t, ptr %i.b, align 4, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16   ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16   ; 2 uses
  store i32 %i.x, ptr %i.d, align 4, !tbaa !16
  %i.y = icmp sgt i32 %1, 0
  br i1 %i.y, label %.preheader39.preheader.i, label %quant_inter_differences.exit

.preheader39.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.preheader39.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader39.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = mul nuw nsw i64 %index, 3                ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %wide.vec = load <24 x i32>, ptr %i.aa, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.z
  store <24 x i32> %wide.vec, ptr %i.ab, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader38.i, label %.preheader39.i.preheader

.preheader39.i.preheader:                         ; preds = %.preheader39.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader39.preheader.i ], [ %n.vec, %middle.block ]
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.i.preheader, %.preheader39.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader39.i ], [ %indvars.iv.i.ph, %.preheader39.i.preheader ] ; 2 uses
  %i.ad = mul nuw nsw i64 %indvars.iv.i, 3        ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ad
  %i.ag = load <2 x i32>, ptr %i.ae, align 4, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !16
  %i.ah = add nuw nsw i64 %i.ad, 2                ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !16
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader38.i, label %.preheader39.i, !llvm.loop !32

.preheader38.i:                                   ; preds = %.preheader39.i, %middle.block
  %i.al = icmp sgt i32 %2, 1
  br i1 %i.al, label %.preheader37.preheader.i, label %quant_inter_differences.exit

.preheader37.preheader.i:                         ; preds = %.preheader38.i
  %wide.trip.count61.i = zext nneg i32 %2 to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.am = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i32 %1 to i1
  br label %.preheader37.i

.preheader37.i:                                   ; preds = %._crit_edge.i, %.preheader37.preheader.i
  %indvars.iv58.i = phi i64 [ 1, %.preheader37.preheader.i ], [ %indvars.iv.next59.i, %._crit_edge.i ] ; 3 uses
  %i.an = mul nuw nsw i64 %indvars.iv58.i, %wide.trip.count.i ; 3 uses
  %i.ao = trunc i64 %indvars.iv58.i to i32
  %i.ap = add i32 %i.ao, -1
  %i.aq = mul i32 %i.ap, %1                       ; 3 uses
  br i1 %i.am, label %.preheader.i.epil.preheader, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader37.i, %.preheader.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.preheader.i ], [ 0, %.preheader37.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i ], [ 0, %.preheader37.i ]
  %i.ar = add nuw nsw i64 %indvars.iv53.i, %i.an
  %i.as = trunc nuw nsw i64 %indvars.iv53.i to i32
  %i.at = add i32 %i.aq, %i.as
  %i.au = mul i32 %i.at, 3
  %sext.i = mul i64 %i.ar, 12884901888
  %i.av = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.av
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.av
  %i.ba = load <2 x i32>, ptr %i.ax, align 4, !tbaa !16
  %i.bb = load <2 x i32>, ptr %i.ay, align 4, !tbaa !16
  %i.bc = sub nsw <2 x i32> %i.ba, %i.bb
  store <2 x i32> %i.bc, ptr %i.az, align 4, !tbaa !16
  %i.bd = add nsw i64 %i.av, 2                    ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16
  %i.bg = getelementptr i8, ptr %i.ay, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = sub nsw i32 %i.bf, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bd
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !16
  %indvars.iv.next54.i = or disjoint i64 %indvars.iv53.i, 1 ; 2 uses
  %i.bk = add nuw nsw i64 %indvars.iv.next54.i, %i.an
  %i.bl = trunc nuw nsw i64 %indvars.iv.next54.i to i32
  %i.bm = add i32 %i.aq, %i.bl
  %i.bn = mul i32 %i.bm, 3
  %sext.i.1 = mul i64 %i.bk, 12884901888
  %i.bo = ashr exact i64 %sext.i.1, 32            ; 3 uses
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bo
  %i.br = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bo
  %i.bt = load <2 x i32>, ptr %i.bq, align 4, !tbaa !16
  %i.bu = load <2 x i32>, ptr %i.br, align 4, !tbaa !16
  %i.bv = sub nsw <2 x i32> %i.bt, %i.bu
  store <2 x i32> %i.bv, ptr %i.bs, align 4, !tbaa !16
  %i.bw = add nsw i64 %i.bo, 2                    ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !16
  %i.bz = getelementptr i8, ptr %i.br, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !16
  %i.cb = sub nsw i32 %i.by, %i.ca
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bw
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !16
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i, !llvm.loop !0

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %._crit_edge.i.unr-lcssa, %.preheader37.i
  %indvars.iv53.i.epil.init = phi i64 [ 0, %.preheader37.i ], [ %indvars.iv.next54.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.cd = add nuw nsw i64 %indvars.iv53.i.epil.init, %i.an
  %i.ce = trunc nuw nsw i64 %indvars.iv53.i.epil.init to i32
  %i.cf = add i32 %i.aq, %i.ce
  %i.cg = mul i32 %i.cf, 3
  %sext.i.epil = mul i64 %i.cd, 12884901888
  %i.ch = ashr exact i64 %sext.i.epil, 32         ; 3 uses
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ch
  %i.ck = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ci ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ch
  %i.cm = load <2 x i32>, ptr %i.cj, align 4, !tbaa !16
  %i.cn = load <2 x i32>, ptr %i.ck, align 4, !tbaa !16
  %i.co = sub nsw <2 x i32> %i.cm, %i.cn
  store <2 x i32> %i.co, ptr %i.cl, align 4, !tbaa !16
  %i.cp = add nsw i64 %i.ch, 2                    ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !16
  %i.cs = getelementptr i8, ptr %i.ck, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !16
  %i.cu = sub nsw i32 %i.cr, %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cp
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i.epil.preheader
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %quant_inter_differences.exit, label %.preheader37.i, !llvm.loop !1

quant_inter_differences.exit:                     ; preds = %._crit_edge.i, %bb.a, %.preheader38.i
  %i.cw = icmp sgt i32 %2, 0
  br i1 %i.cw, label %.preheader36.lr.ph.i, label %quant_intra_differences.exit

.preheader36.lr.ph.i:                             ; preds = %quant_inter_differences.exit
  %i.cx = mul i32 %1, 3                           ; 6 uses
  %i.cy = icmp sgt i32 %1, 1
  %wide.trip.count64.i = zext nneg i32 %2 to i64  ; 3 uses
  br i1 %i.cy, label %.preheader36.us.preheader.i, label %.preheader36.i.preheader

end_hunk_0
begin_hunk_1_@determine_best_pos_coding:bb.a
  %.not.i221 = icmp eq ptr %i.df, null
  br i1 %.not.i221, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dg = icmp eq i32 %.026.i218, -1
  %i.dh = load i32, ptr %i.a, align 4             ; 2 uses
  %i.di = icmp slt i32 %i.dh, %.01725.i219
  %or.cond.i222 = select i1 %i.dg, i1 true, i1 %i.di ; 2 uses
  %.118.i223 = select i1 %or.cond.i222, i32 %i.dh, i32 %.01725.i219
  %.1.i224 = select i1 %or.cond.i222, i32 %.02024.i220, i32 %.026.i218
  call void @free(ptr noundef nonnull %i.df) #12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.219.i225 = phi i32 [ %.118.i223, %bb.av ], [ %.01725.i219, %bb.au ]
  %.2.i226 = phi i32 [ %.1.i224, %bb.av ], [ %.026.i218, %bb.au ] ; 3 uses
  %i.dj = add nuw nsw i32 %.02024.i220, 1         ; 2 uses
  %exitcond.not.i227 = icmp eq i32 %i.dj, 20
  br i1 %exitcond.not.i227, label %bb.ax, label %bb.au, !llvm.loop !2

bb.ax:                                            ; preds = %bb.aw
  %i.dk = icmp eq i32 %.2.i226, -1
  br i1 %i.dk, label %determine_best_coding_triple.exit229, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %.2.i226, ptr %9, align 4, !tbaa !16
  br label %determine_best_coding_triple.exit229

determine_best_coding_triple.exit229:             ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @Ptngc_coder_deinit(ptr noundef %i.cz) #12
  br label %bb.az

bb.az:                                            ; preds = %bb.z, %bb.y, %determine_best_coding_stop_bits.exit193, %determine_best_coding_triple.exit217, %determine_best_coding_triple.exit229, %determine_best_coding_triple.exit205, %bb.aa, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compress_quantized_pos(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i64 noundef %10, i64 noundef %11, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %12, ptr nofree noundef writeonly captures(address_is_null) %13) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %.not = icmp eq ptr %13, null                   ; 4 uses
  br i1 %.not, label %.critedge154, label %.critedge

.critedge:                                        ; preds = %bb.a
  store <4 x i8> <i8 84, i8 78, i8 71, i8 80>, ptr %13, align 1, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %3, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %4, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %6, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %7, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 %8, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %9, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.i = trunc i64 %11 to i32
  store i32 %i.i, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.k = trunc i64 %10 to i32
  store i32 %i.k, ptr %i.j, align 1
  br label %.critedge154

.critedge154:                                     ; preds = %bb.a, %.critedge
  switch i32 %6, label %bb.c [
    i32 10, label %.sink.split
    i32 7, label %.sink.split
    i32 5, label %.sink.split
    i32 9, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %.critedge154, %.critedge154
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge154, %.critedge154, %.critedge154, %bb.b
  %.sink209 = phi ptr [ %2, %bb.b ], [ %0, %.critedge154 ], [ %0, %.critedge154 ], [ %0, %.critedge154 ]
  %i.l = tail call ptr @Ptngc_coder_init() #12    ; 2 uses
  %i.m = mul nsw i32 %3, 3
  store i32 %i.m, ptr %i.a, align 4, !tbaa !16
  %i.n = call ptr @Ptngc_pack_array(ptr noundef %i.l, ptr noundef %.sink209, ptr noundef nonnull %i.a, i32 noundef %6, i32 noundef %7, i32 noundef %3, i32 noundef %5) #12
  call void @Ptngc_coder_deinit(ptr noundef %i.l) #12
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %.critedge154
  %.0141 = phi ptr [ null, %.critedge154 ], [ %i.n, %.sink.split ] ; 2 uses
  br i1 %.not, label %.critedge156, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.p = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.q = sext i32 %i.p to i64
  store i32 %i.p, ptr %i.o, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %.0141, i64 %i.q, i1 false)
  br label %.critedge156

.critedge156:                                     ; preds = %bb.c, %bb.d
  call void @free(ptr noundef %.0141) #12
  %i.s = load i32, ptr %i.a, align 4, !tbaa !16   ; 6 uses
  %i.t = add nsw i32 %i.s, 40                     ; 3 uses
  %i.u = icmp sgt i32 %4, 1
  br i1 %i.u, label %bb.e, label %bb.m

bb.e:                                             ; preds = %.critedge156
  switch i32 %8, label %.thread195 [
    i32 8, label %bb.h
    i32 2, label %bb.h
    i32 1, label %bb.h
    i32 10, label %bb.f
    i32 7, label %bb.f
    i32 5, label %bb.f
    i32 9, label %bb.g
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.f, %bb.g
  %.sink213 = phi ptr [ %0, %bb.f ], [ %2, %bb.g ], [ %1, %bb.e ], [ %1, %bb.e ], [ %1, %bb.e ]
  %i.v = call ptr @Ptngc_coder_init() #12         ; 2 uses
  %i.w = mul nsw i32 %3, 3                        ; 2 uses
  %i.x = add nsw i32 %4, -1
  %i.y = mul nsw i32 %i.x, %i.w
  store i32 %i.y, ptr %i.a, align 4, !tbaa !16
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %.sink213, i64 %i.z
  %i.ab = call ptr @Ptngc_pack_array(ptr noundef %i.v, ptr noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef %8, i32 noundef %9, i32 noundef %3, i32 noundef %5) #12 ; 4 uses
  call void @Ptngc_coder_deinit(ptr noundef %i.v) #12
  br i1 %.not, label %bb.i, label %.thread

.thread195:                                       ; preds = %bb.e
  br i1 %.not, label %.thread200, label %.thread.thread

.thread.thread:                                   ; preds = %.thread195
  %i.ac = sext i32 %i.t to i64
  %i.ad = getelementptr inbounds i8, ptr %13, i64 %i.ac
  store i32 %i.s, ptr %i.ad, align 1
  %i.ae = add nsw i32 %i.s, 44
  br label %bb.l

.thread200:                                       ; preds = %.thread195
  %i.af = add nsw i32 %i.s, 44
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.s, 44                    ; 2 uses
  %.not147 = icmp eq ptr %i.ab, null
  br i1 %.not147, label %bb.l, label %bb.k

.thread:                                          ; preds = %bb.h
  %.pre = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %i.ah = sext i32 %i.t to i64
  %i.ai = getelementptr inbounds i8, ptr %13, i64 %i.ah
  store i32 %.pre, ptr %i.ai, align 1
  %i.aj = add nsw i32 %i.s, 44                    ; 3 uses
  %.not147193 = icmp eq ptr %i.ab, null
  br i1 %.not147193, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %13, i64 %i.ak
  %i.am = sext i32 %.pre to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %i.ab, i64 %i.am, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.an = phi i32 [ %i.aj, %bb.j ], [ %i.ag, %bb.i ]
  call void @free(ptr noundef nonnull %i.ab) #12
  br label %bb.l

bb.l:                                             ; preds = %.thread.thread, %.thread200, %.thread, %bb.k, %bb.i
  %i.ao = phi i32 [ %i.aj, %.thread ], [ %i.an, %bb.k ], [ %i.ag, %bb.i ], [ %i.af, %.thread200 ], [ %i.ae, %.thread.thread ]
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !16
  %i.aq = add nsw i32 %i.ap, %i.ao
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge156
  %.0 = phi i32 [ %i.aq, %bb.l ], [ %i.t, %.critedge156 ]
  store i32 %.0, ptr %12, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_pos(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul i32 %1, 3
  %i.d = mul i32 %i.c, %2
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @Ptngc_d_to_i32x2(double noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.h = load i64, ptr %i.a, align 8, !tbaa !23
  %i.i = load i64, ptr %i.b, align 8, !tbaa !23
  %i.j = call double @Ptngc_i32x2_to_d(i64 noundef %i.h, i64 noundef %i.i) #12
  %i.k = call fastcc i32 @quantize(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %i.j, ptr noundef %i.g)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = load i64, ptr %i.b, align 8, !tbaa !23
  %i.n = call ptr @tng_compress_pos_int(ptr noundef %i.g, i32 noundef %1, i32 noundef %2, i64 noundef %i.l, i64 noundef %i.m, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  call void @free(ptr noundef %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

declare void @Ptngc_d_to_i32x2(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @quantize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader27.preheader, label %verify_input_data.exit

.preheader27.preheader:                           ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64                  ; 3 uses
  %wide.trip.count38 = zext nneg i32 %2 to i64
  %i.d = insertelement <2 x double> poison, double %3, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.f = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.c, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod45 = trunc i32 %1 to i1
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.preheader, %._crit_edge
  %indvars.iv35 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next36, %._crit_edge ] ; 2 uses
  %i.g = mul nuw nsw i64 %indvars.iv35, %i.c      ; 3 uses
  br i1 %i.f, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader27, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ 0, %.preheader27 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader ], [ 0, %.preheader27 ]
  %i.h = add nuw nsw i64 %indvars.iv, %i.g
  %sext = mul i64 %i.h, 12884901888
  %i.i = ashr exact i64 %sext, 32                 ; 3 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %4, i64 %i.i
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !25
  %i.m = fdiv <2 x double> %i.l, %i.e
  %i.n = fadd <2 x double> %i.m, splat (double 5.000000e-01)
  %i.o = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.n)
  %i.p = fptosi <2 x double> %i.o to <2 x i32>
  store <2 x i32> %i.p, ptr %i.k, align 4, !tbaa !16
  %i.q = add nsw i64 %i.i, 2                      ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !25
  %i.t = fdiv double %i.s, %3
  %i.u = fadd double %i.t, 5.000000e-01
  %i.v = tail call double @llvm.floor.f64(double %i.u)
  %i.w = fptosi double %i.v to i32
  %i.x = getelementptr inbounds [4 x i8], ptr %4, i64 %i.q
  store i32 %i.w, ptr %i.x, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.y = add nuw nsw i64 %indvars.iv.next, %i.g
  %sext.1 = mul i64 %i.y, 12884901888
  %i.z = ashr exact i64 %sext.1, 32               ; 3 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds [4 x i8], ptr %4, i64 %i.z
  %i.ac = load <2 x double>, ptr %i.aa, align 8, !tbaa !25
  %i.ad = fdiv <2 x double> %i.ac, %i.e
  %i.ae = fadd <2 x double> %i.ad, splat (double 5.000000e-01)
  %i.af = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ae)
  %i.ag = fptosi <2 x double> %i.af to <2 x i32>
  store <2 x i32> %i.ag, ptr %i.ab, align 4, !tbaa !16
  %i.ah = add nsw i64 %i.z, 2                     ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !25
  %i.ak = fdiv double %i.aj, %3
  %i.al = fadd double %i.ak, 5.000000e-01
  %i.am = tail call double @llvm.floor.f64(double %i.al)
  %i.an = fptosi double %i.am to i32
  %i.ao = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ah
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader, !llvm.loop !37

._crit_edge.unr-lcssa:                            ; preds = %.preheader
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge.unr-lcssa, %.preheader27
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader27 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.ap = add nuw nsw i64 %indvars.iv.epil.init, %i.g
  %sext.epil = mul i64 %i.ap, 12884901888
  %i.aq = ashr exact i64 %sext.epil, 32           ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aq
  %i.at = load <2 x double>, ptr %i.ar, align 8, !tbaa !25
  %i.au = fdiv <2 x double> %i.at, %i.e
  %i.av = fadd <2 x double> %i.au, splat (double 5.000000e-01)
  %i.aw = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.av)
  %i.ax = fptosi <2 x double> %i.aw to <2 x i32>
  store <2 x i32> %i.ax, ptr %i.as, align 4, !tbaa !16
  %i.ay = add nsw i64 %i.aq, 2                    ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !25
  %i.bb = fdiv double %i.ba, %3
  %i.bc = fadd double %i.bb, 5.000000e-01
  %i.bd = tail call double @llvm.floor.f64(double %i.bc)
  %i.be = fptosi double %i.bd to i32
  %i.bf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ay
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %.preheader18.preheader.i, label %.preheader27, !llvm.loop !38

.preheader18.preheader.i:                         ; preds = %._crit_edge
  %i.bg = zext nneg i32 %1 to i64                 ; 2 uses
  %wide.trip.count29.i = zext nneg i32 %2 to i64
  br label %.preheader18.i

.preheader18.i:                                   ; preds = %._crit_edge.i, %.preheader18.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader18.preheader.i ], [ %indvars.iv.next27.i, %._crit_edge.i ] ; 2 uses
  %i.bh = mul nuw nsw i64 %indvars.iv26.i, %i.bg
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader18.i
  %indvars.iv.i = phi i64 [ 0, %.preheader18.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.bi = add nuw nsw i64 %indvars.iv.i, %i.bh
  %sext.i = mul i64 %i.bi, 12884901888
  %i.bj = ashr exact i64 %sext.i, 29
  %i.bk = getelementptr inbounds i8, ptr %0, i64 %i.bj ; 3 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !25
  %i.bm = fdiv double %i.bl, %3
  %i.bn = fadd double %i.bm, 5.000000e-01
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp ult double %i.bo, f0x41DFFFFFFFC00000
  br i1 %i.bp, label %bb.b, label %verify_input_data.exit

bb.b:                                             ; preds = %.preheader.i
  %i.bq = getelementptr i8, ptr %i.bk, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !25
  %i.bs = fdiv double %i.br, %3
  %i.bt = fadd double %i.bs, 5.000000e-01
  %i.bu = tail call double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp ult double %i.bu, f0x41DFFFFFFFC00000
  br i1 %i.bv, label %bb.c, label %verify_input_data.exit

bb.c:                                             ; preds = %bb.b
  %i.bw = getelementptr i8, ptr %i.bk, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !25
  %i.by = fdiv double %i.bx, %3
  %i.bz = fadd double %i.by, 5.000000e-01
  %i.ca = tail call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp ult double %i.ca, f0x41DFFFFFFFC00000
  br i1 %i.cb, label %bb.d, label %verify_input_data.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bg
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !39

._crit_edge.i:                                    ; preds = %bb.d
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %verify_input_data.exit, label %.preheader18.i, !llvm.loop !40

verify_input_data.exit:                           ; preds = %._crit_edge.i, %.preheader.i, %bb.b, %bb.c, %bb.a
  %.016.i = phi i32 [ 0, %bb.a ], [ 1, %.preheader.i ], [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %._crit_edge.i ]
  ret i32 %.016.i
}

declare double @Ptngc_i32x2_to_d(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_pos_float(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul i32 %1, 3
  %i.d = mul i32 %i.c, %2
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.h = fpext float %3 to double
  call void @Ptngc_d_to_i32x2(double noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.i = load i64, ptr %i.a, align 8, !tbaa !23
  %i.j = load i64, ptr %i.b, align 8, !tbaa !23
  %i.k = call double @Ptngc_i32x2_to_d(i64 noundef %i.i, i64 noundef %i.j) #12
  %i.l = fptrunc double %i.k to float
  %i.m = call fastcc i32 @quantize_float(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %i.l, ptr noundef %i.g)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.a, align 8, !tbaa !23
  %i.o = load i64, ptr %i.b, align 8, !tbaa !23
  %i.p = call ptr @tng_compress_pos_int(ptr noundef %i.g, i32 noundef %1, i32 noundef %2, i64 noundef %i.n, i64 noundef %i.o, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  call void @free(ptr noundef %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @quantize_float(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader27.preheader, label %verify_input_data_float.exit

.preheader27.preheader:                           ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64                  ; 3 uses
  %wide.trip.count38 = zext nneg i32 %2 to i64
  %i.d = insertelement <2 x float> poison, float %3, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.f = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.c, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod45 = trunc i32 %1 to i1
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.preheader, %._crit_edge
  %indvars.iv35 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next36, %._crit_edge ] ; 2 uses
  %i.g = mul nuw nsw i64 %indvars.iv35, %i.c      ; 3 uses
  br i1 %i.f, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader27, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ 0, %.preheader27 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader ], [ 0, %.preheader27 ]
  %i.h = add nuw nsw i64 %indvars.iv, %i.g
  %sext = mul i64 %i.h, 12884901888
  %i.i = ashr exact i64 %sext, 32                 ; 3 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %4, i64 %i.i
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !27
  %i.m = fdiv <2 x float> %i.l, %i.e
  %i.n = fpext <2 x float> %i.m to <2 x double>
  %i.o = fadd <2 x double> %i.n, splat (double 5.000000e-01)
  %i.p = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.o)
  %i.q = fptosi <2 x double> %i.p to <2 x i32>
  store <2 x i32> %i.q, ptr %i.k, align 4, !tbaa !16
  %i.r = add nsw i64 %i.i, 2                      ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !27
  %i.u = fdiv float %i.t, %3
  %i.v = fpext float %i.u to double
  %i.w = fadd double %i.v, 5.000000e-01
  %i.x = tail call double @llvm.floor.f64(double %i.w)
  %i.y = fptosi double %i.x to i32
  %i.z = getelementptr inbounds [4 x i8], ptr %4, i64 %i.r
  store i32 %i.y, ptr %i.z, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.aa = add nuw nsw i64 %indvars.iv.next, %i.g
  %sext.1 = mul i64 %i.aa, 12884901888
  %i.ab = ashr exact i64 %sext.1, 32              ; 3 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ab
  %i.ae = load <2 x float>, ptr %i.ac, align 4, !tbaa !27
  %i.af = fdiv <2 x float> %i.ae, %i.e
  %i.ag = fpext <2 x float> %i.af to <2 x double>
  %i.ah = fadd <2 x double> %i.ag, splat (double 5.000000e-01)
  %i.ai = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ah)
  %i.aj = fptosi <2 x double> %i.ai to <2 x i32>
  store <2 x i32> %i.aj, ptr %i.ad, align 4, !tbaa !16
  %i.ak = add nsw i64 %i.ab, 2                    ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !27
  %i.an = fdiv float %i.am, %3
  %i.ao = fpext float %i.an to double
  %i.ap = fadd double %i.ao, 5.000000e-01
  %i.aq = tail call double @llvm.floor.f64(double %i.ap)
  %i.ar = fptosi double %i.aq to i32
  %i.as = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ak
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader, !llvm.loop !41

._crit_edge.unr-lcssa:                            ; preds = %.preheader
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge.unr-lcssa, %.preheader27
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader27 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.at = add nuw nsw i64 %indvars.iv.epil.init, %i.g
  %sext.epil = mul i64 %i.at, 12884901888
  %i.au = ashr exact i64 %sext.epil, 32           ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.au
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !27
  %i.ay = fdiv <2 x float> %i.ax, %i.e
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  %i.ba = fadd <2 x double> %i.az, splat (double 5.000000e-01)
  %i.bb = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ba)
  %i.bc = fptosi <2 x double> %i.bb to <2 x i32>
  store <2 x i32> %i.bc, ptr %i.aw, align 4, !tbaa !16
  %i.bd = add nsw i64 %i.au, 2                    ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !27
  %i.bg = fdiv float %i.bf, %3
  %i.bh = fpext float %i.bg to double
  %i.bi = fadd double %i.bh, 5.000000e-01
  %i.bj = tail call double @llvm.floor.f64(double %i.bi)
  %i.bk = fptosi double %i.bj to i32
  %i.bl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bd
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %.preheader18.preheader.i, label %.preheader27, !llvm.loop !42

.preheader18.preheader.i:                         ; preds = %._crit_edge
  %i.bm = zext nneg i32 %1 to i64                 ; 2 uses
  %wide.trip.count29.i = zext nneg i32 %2 to i64
  br label %.preheader18.i

.preheader18.i:                                   ; preds = %._crit_edge.i, %.preheader18.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader18.preheader.i ], [ %indvars.iv.next27.i, %._crit_edge.i ] ; 2 uses
  %i.bn = mul nuw nsw i64 %indvars.iv26.i, %i.bm
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader18.i
  %indvars.iv.i = phi i64 [ 0, %.preheader18.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.bo = add nuw nsw i64 %indvars.iv.i, %i.bn
  %sext.i = mul i64 %i.bo, 12884901888
  %i.bp = ashr exact i64 %sext.i, 30
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp ; 3 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !27
  %i.bs = fdiv float %i.br, %3
  %i.bt = fpext float %i.bs to double
  %i.bu = fadd double %i.bt, 5.000000e-01
  %i.bv = tail call double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp ult double %i.bv, f0x41DFFFFFFFC00000
  br i1 %i.bw, label %bb.b, label %verify_input_data_float.exit

bb.b:                                             ; preds = %.preheader.i
  %i.bx = getelementptr i8, ptr %i.bq, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !27
  %i.bz = fdiv float %i.by, %3
  %i.ca = fpext float %i.bz to double
  %i.cb = fadd double %i.ca, 5.000000e-01
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp ult double %i.cc, f0x41DFFFFFFFC00000
  br i1 %i.cd, label %bb.c, label %verify_input_data_float.exit

bb.c:                                             ; preds = %bb.b
  %i.ce = getelementptr i8, ptr %i.bq, i64 8
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !27
  %i.cg = fdiv float %i.cf, %3
  %i.ch = fpext float %i.cg to double
  %i.ci = fadd double %i.ch, 5.000000e-01
  %i.cj = tail call double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ult double %i.cj, f0x41DFFFFFFFC00000
  br i1 %i.ck, label %bb.d, label %verify_input_data_float.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.d
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %verify_input_data_float.exit, label %.preheader18.i, !llvm.loop !44

verify_input_data_float.exit:                     ; preds = %._crit_edge.i, %.preheader.i, %bb.b, %bb.c, %bb.a
  %.016.i = phi i32 [ 0, %bb.a ], [ 1, %.preheader.i ], [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %._crit_edge.i ]
  ret i32 %.016.i
}

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_pos_find_algo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 16)) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 -1, i64 16, i1 false)
  %i.a = tail call ptr @tng_compress_pos(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_pos_float_find_algo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 16)) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 -1, i64 16, i1 false)
  %i.a = tail call ptr @tng_compress_pos_float(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_pos_int_find_algo(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) initializes((0, 16)) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 -1, i64 16, i1 false)
  %i.a = tail call ptr @tng_compress_pos_int(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %7)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @tng_compress_nalgo() local_unnamed_addr #6 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_vel_int(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = mul nsw i32 %2, %1                       ; 2 uses
  %i.f = mul nsw i32 %i.e, 14
  %i.g = add nsw i32 %i.f, 44
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #11 ; 2 uses
  %i.j = mul nsw i32 %i.e, 3
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #11 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.n = icmp eq i32 %5, 0
  %i.o = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %i.p = tail call i32 @llvm.umin.i32(i32 %i.o, i32 6)
  %spec.store.select1 = select i1 %i.n, i32 2, i32 %i.p ; 4 uses
  %i.q = load i32, ptr %6, align 4, !tbaa !16     ; 2 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 2 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16   ; 2 uses
  store i32 %i.u, ptr %i.c, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 2 uses
  store i32 %i.w, ptr %i.d, align 4, !tbaa !16
  %i.x = icmp sgt i32 %1, 0
  br i1 %i.x, label %.preheader39.preheader.i, label %quant_inter_differences.exit

.preheader39.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.preheader39.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader39.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = mul nuw nsw i64 %index, 3                ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  %wide.vec = load <24 x i32>, ptr %i.z, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.y
  store <24 x i32> %wide.vec, ptr %i.aa, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader38.i, label %.preheader39.i.preheader

.preheader39.i.preheader:                         ; preds = %.preheader39.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader39.preheader.i ], [ %n.vec, %middle.block ]
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.i.preheader, %.preheader39.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader39.i ], [ %indvars.iv.i.ph, %.preheader39.i.preheader ] ; 2 uses
  %i.ac = mul nuw nsw i64 %indvars.iv.i, 3        ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ac
  %i.af = load <2 x i32>, ptr %i.ad, align 4, !tbaa !16
  store <2 x i32> %i.af, ptr %i.ae, align 4, !tbaa !16
  %i.ag = add nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ag
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader38.i, label %.preheader39.i, !llvm.loop !46

.preheader38.i:                                   ; preds = %.preheader39.i, %middle.block
  %i.ak = icmp sgt i32 %2, 1
  br i1 %i.ak, label %.preheader37.preheader.i, label %quant_inter_differences.exit

.preheader37.preheader.i:                         ; preds = %.preheader38.i
  %wide.trip.count61.i = zext nneg i32 %2 to i64
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.al = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod65 = trunc i32 %1 to i1
  br label %.preheader37.i

.preheader37.i:                                   ; preds = %._crit_edge.i, %.preheader37.preheader.i
  %indvars.iv58.i = phi i64 [ 1, %.preheader37.preheader.i ], [ %indvars.iv.next59.i, %._crit_edge.i ] ; 3 uses
  %i.am = mul nuw nsw i64 %indvars.iv58.i, %wide.trip.count.i ; 3 uses
  %i.an = trunc i64 %indvars.iv58.i to i32
  %i.ao = add i32 %i.an, -1
  %i.ap = mul i32 %i.ao, %1                       ; 3 uses
  br i1 %i.al, label %.preheader.i.epil.preheader, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader37.i, %.preheader.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.preheader.i ], [ 0, %.preheader37.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i ], [ 0, %.preheader37.i ]
  %i.aq = add nuw nsw i64 %indvars.iv53.i, %i.am
  %i.ar = trunc nuw nsw i64 %indvars.iv53.i to i32
  %i.as = add i32 %i.ap, %i.ar
  %i.at = mul i32 %i.as, 3
  %sext.i = mul i64 %i.aq, 12884901888
  %i.au = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.au
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.au
  %i.az = load <2 x i32>, ptr %i.aw, align 4, !tbaa !16
  %i.ba = load <2 x i32>, ptr %i.ax, align 4, !tbaa !16
  %i.bb = sub nsw <2 x i32> %i.az, %i.ba
  store <2 x i32> %i.bb, ptr %i.ay, align 4, !tbaa !16
  %i.bc = add nsw i64 %i.au, 2                    ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !16
  %i.bf = getelementptr i8, ptr %i.ax, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = sub nsw i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bc
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !16
  %indvars.iv.next54.i = or disjoint i64 %indvars.iv53.i, 1 ; 2 uses
  %i.bj = add nuw nsw i64 %indvars.iv.next54.i, %i.am
  %i.bk = trunc nuw nsw i64 %indvars.iv.next54.i to i32
  %i.bl = add i32 %i.ap, %i.bk
  %i.bm = mul i32 %i.bl, 3
  %sext.i.1 = mul i64 %i.bj, 12884901888
  %i.bn = ashr exact i64 %sext.i.1, 32            ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bn
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bn
  %i.bs = load <2 x i32>, ptr %i.bp, align 4, !tbaa !16
  %i.bt = load <2 x i32>, ptr %i.bq, align 4, !tbaa !16
  %i.bu = sub nsw <2 x i32> %i.bs, %i.bt
  store <2 x i32> %i.bu, ptr %i.br, align 4, !tbaa !16
  %i.bv = add nsw i64 %i.bn, 2                    ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !16
  %i.by = getelementptr i8, ptr %i.bq, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !16
  %i.ca = sub nsw i32 %i.bx, %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bv
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !16
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i, !llvm.loop !0

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %._crit_edge.i.unr-lcssa, %.preheader37.i
  %indvars.iv53.i.epil.init = phi i64 [ 0, %.preheader37.i ], [ %indvars.iv.next54.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.cc = add nuw nsw i64 %indvars.iv53.i.epil.init, %i.am
  %i.cd = trunc nuw nsw i64 %indvars.iv53.i.epil.init to i32
  %i.ce = add i32 %i.ap, %i.cd
  %i.cf = mul i32 %i.ce, 3
  %sext.i.epil = mul i64 %i.cc, 12884901888
  %i.cg = ashr exact i64 %sext.i.epil, 32         ; 3 uses
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cg
  %i.cj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.cg
  %i.cl = load <2 x i32>, ptr %i.ci, align 4, !tbaa !16
  %i.cm = load <2 x i32>, ptr %i.cj, align 4, !tbaa !16
  %i.cn = sub nsw <2 x i32> %i.cl, %i.cm
  store <2 x i32> %i.cn, ptr %i.ck, align 4, !tbaa !16
  %i.co = add nsw i64 %i.cg, 2                    ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !16
  %i.cr = getelementptr i8, ptr %i.cj, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !16
  %i.ct = sub nsw i32 %i.cq, %i.cs
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.co
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i.epil.preheader
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %quant_inter_differences.exit, label %.preheader37.i, !llvm.loop !1

quant_inter_differences.exit:                     ; preds = %._crit_edge.i, %bb.a, %.preheader38.i
  %i.cv = icmp eq i32 %i.q, -1
  br i1 %i.cv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %quant_inter_differences.exit
  store i32 -1, ptr %i.b, align 4, !tbaa !16
  br label %.sink.split

bb.c:                                             ; preds = %quant_inter_differences.exit
  %i.cw = icmp eq i32 %i.s, -1
  br i1 %i.cw, label %.sink.split, label %bb.d
end_hunk_1
begin_hunk_2_@determine_best_vel_coding:bb.a
  %i.ct = icmp eq i32 %.2.i194, -1
  br i1 %i.ct, label %determine_best_coding_triple.exit197, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %.2.i194, ptr %8, align 4, !tbaa !16
  br label %determine_best_coding_triple.exit197

determine_best_coding_triple.exit197:             ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @Ptngc_coder_deinit(ptr noundef %i.ci) #12
  br label %bb.ax

bb.ar:                                            ; preds = %bb.x
  %i.cu = tail call ptr @Ptngc_coder_init() #12   ; 2 uses
  %i.cv = mul nsw i32 %2, 3                       ; 2 uses
  %i.cw = add nsw i32 %3, -1
  %i.cx = mul nsw i32 %i.cw, %i.cv
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar
  %.026.i198 = phi i32 [ -1, %bb.ar ], [ %.2.i206, %bb.au ] ; 3 uses
  %.01725.i199 = phi i32 [ 0, %bb.ar ], [ %.219.i205, %bb.au ] ; 3 uses
  %.02024.i200 = phi i32 [ 1, %bb.ar ], [ %i.de, %bb.au ] ; 3 uses
  store i32 %i.cx, ptr %i.a, align 4, !tbaa !16
  %i.da = call ptr @Ptngc_pack_array(ptr noundef %i.cu, ptr noundef %i.cz, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %.02024.i200, i32 noundef %2, i32 noundef 0) #12 ; 2 uses
  %.not.i201 = icmp eq ptr %i.da, null
  br i1 %.not.i201, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.db = icmp eq i32 %.026.i198, -1
  %i.dc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %.01725.i199
  %or.cond.i202 = select i1 %i.db, i1 true, i1 %i.dd ; 2 uses
  %.118.i203 = select i1 %or.cond.i202, i32 %i.dc, i32 %.01725.i199
  %.1.i204 = select i1 %or.cond.i202, i32 %.02024.i200, i32 %.026.i198
  call void @free(ptr noundef nonnull %i.da) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.219.i205 = phi i32 [ %.118.i203, %bb.at ], [ %.01725.i199, %bb.as ]
  %.2.i206 = phi i32 [ %.1.i204, %bb.at ], [ %.026.i198, %bb.as ] ; 3 uses
  %i.de = add nuw nsw i32 %.02024.i200, 1         ; 2 uses
  %exitcond.not.i207 = icmp eq i32 %i.de, 20
  br i1 %exitcond.not.i207, label %bb.av, label %bb.as, !llvm.loop !3

bb.av:                                            ; preds = %bb.au
  %i.df = icmp eq i32 %.2.i206, -1
  br i1 %i.df, label %determine_best_coding_stop_bits.exit209, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 %.2.i206, ptr %8, align 4, !tbaa !16
  br label %determine_best_coding_stop_bits.exit209

determine_best_coding_stop_bits.exit209:          ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @Ptngc_coder_deinit(ptr noundef %i.cu) #12
  br label %bb.ax

bb.ax:                                            ; preds = %bb.x, %bb.w, %determine_best_coding_stop_bits.exit173, %determine_best_coding_triple.exit197, %determine_best_coding_stop_bits.exit209, %determine_best_coding_triple.exit185, %bb.y, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compress_quantized_vel(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %11, ptr nofree noundef writeonly captures(address_is_null) %12) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not = icmp eq ptr %12, null                   ; 4 uses
  br i1 %.not, label %.critedge129, label %.critedge

.critedge:                                        ; preds = %bb.a
  store <4 x i8> <i8 84, i8 78, i8 71, i8 86>, ptr %12, align 1, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %2, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %3, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %5, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %6, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %7, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %8, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.i = trunc i64 %10 to i32
  store i32 %i.i, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.k = trunc i64 %9 to i32
  store i32 %i.k, ptr %i.j, align 1
  br label %.critedge129

.critedge129:                                     ; preds = %bb.a, %.critedge
  %i.l = mul nsw i32 %2, 3                        ; 3 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !16
  switch i32 %5, label %.thread172 [
    i32 9, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.critedge129, %.critedge129, %.critedge129
  %i.m = tail call ptr @Ptngc_coder_init() #12    ; 2 uses
  %i.n = call ptr @Ptngc_pack_array(ptr noundef %i.m, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %5, i32 noundef %6, i32 noundef %2, i32 noundef %4) #12 ; 3 uses
  call void @Ptngc_coder_deinit(ptr noundef %i.m) #12
  br i1 %.not, label %.thread, label %bb.c

.thread172:                                       ; preds = %.critedge129
  br i1 %.not, label %.thread, label %.thread175

.thread175:                                       ; preds = %.thread172
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.p = load i32, ptr %i.a, align 4, !tbaa !16
  store i32 %i.p, ptr %i.o, align 1
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.r = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  store i32 %i.r, ptr %i.q, align 1
  %.not168 = icmp eq ptr %i.n, null
  br i1 %.not168, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.t = sext i32 %i.r to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.n, i64 %i.t, i1 false)
  call void @free(ptr noundef nonnull %i.n) #12
  %i.u = load i32, ptr %i.a, align 4, !tbaa !16
  %i.v = add nsw i32 %i.u, 40
  br label %.thread

.thread:                                          ; preds = %.thread175, %.thread172, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ %i.v, %bb.d ], [ 40, %bb.c ], [ 40, %bb.b ], [ 40, %.thread172 ], [ 40, %.thread175 ] ; 4 uses
  %i.w = icmp sgt i32 %3, 1
  br i1 %i.w, label %bb.e, label %bb.k

bb.e:                                             ; preds = %.thread
  switch i32 %7, label %bb.g [
    i32 8, label %.sink.split
    i32 6, label %.sink.split
    i32 2, label %.sink.split
    i32 9, label %bb.f
    i32 3, label %bb.f
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.e, %bb.e, %bb.f
  %.sink180 = phi ptr [ %0, %bb.f ], [ %1, %bb.e ], [ %1, %bb.e ], [ %1, %bb.e ]
  %i.x = call ptr @Ptngc_coder_init() #12         ; 2 uses
  %i.y = add nsw i32 %3, -1
  %i.z = mul nsw i32 %i.y, %i.l
  store i32 %i.z, ptr %i.a, align 4, !tbaa !16
  %i.aa = sext i32 %i.l to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %.sink180, i64 %i.aa
  %i.ac = call ptr @Ptngc_pack_array(ptr noundef %i.x, ptr noundef %i.ab, ptr noundef nonnull %i.a, i32 noundef %7, i32 noundef %8, i32 noundef %2, i32 noundef %4) #12
  call void @Ptngc_coder_deinit(ptr noundef %i.x) #12
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %.1118 = phi ptr [ null, %bb.e ], [ %i.ac, %.sink.split ] ; 2 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %.0, 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = sext i32 %.0 to i64
  %i.af = getelementptr inbounds i8, ptr %12, i64 %i.ae
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  store i32 %i.ag, ptr %i.af, align 1
  %i.ah = add nsw i32 %.0, 4                      ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %12, i64 %i.ai
  %i.ak = sext i32 %i.ag to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %.1118, i64 %i.ak, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.al = phi i32 [ %i.ah, %bb.i ], [ %i.ad, %bb.h ]
  call void @free(ptr noundef %.1118) #12
  %i.am = load i32, ptr %i.a, align 4, !tbaa !16
  %i.an = add nsw i32 %i.am, %i.al
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %.1 = phi i32 [ %i.an, %bb.j ], [ %.0, %.thread ]
  store i32 %.1, ptr %11, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_vel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul i32 %1, 3
  %i.d = mul i32 %i.c, %2
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @Ptngc_d_to_i32x2(double noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.h = load i64, ptr %i.a, align 8, !tbaa !23
  %i.i = load i64, ptr %i.b, align 8, !tbaa !23
  %i.j = call double @Ptngc_i32x2_to_d(i64 noundef %i.h, i64 noundef %i.i) #12
  %i.k = call fastcc i32 @quantize(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %i.j, ptr noundef %i.g)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  %i.m = load i64, ptr %i.b, align 8, !tbaa !23
  %i.n = call ptr @tng_compress_vel_int(ptr noundef %i.g, i32 noundef %1, i32 noundef %2, i64 noundef %i.l, i64 noundef %i.m, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  call void @free(ptr noundef %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_vel_float(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul i32 %1, 3
  %i.d = mul i32 %i.c, %2
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.h = fpext float %3 to double
  call void @Ptngc_d_to_i32x2(double noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.i = load i64, ptr %i.a, align 8, !tbaa !23
  %i.j = load i64, ptr %i.b, align 8, !tbaa !23
  %i.k = call double @Ptngc_i32x2_to_d(i64 noundef %i.i, i64 noundef %i.j) #12
  %i.l = fptrunc double %i.k to float
  %i.m = call fastcc i32 @quantize_float(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %i.l, ptr noundef %i.g)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.a, align 8, !tbaa !23
  %i.o = load i64, ptr %i.b, align 8, !tbaa !23
  %i.p = call ptr @tng_compress_vel_int(ptr noundef %i.g, i32 noundef %1, i32 noundef %2, i64 noundef %i.n, i64 noundef %i.o, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  call void @free(ptr noundef %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_vel_find_algo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 16)) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 -1, i64 16, i1 false)
  %i.a = tail call ptr @tng_compress_vel(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_vel_float_find_algo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 16)) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 -1, i64 16, i1 false)
  %i.a = tail call ptr @tng_compress_vel_float(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @tng_compress_vel_int_find_algo(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) initializes((0, 16)) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 -1, i64 16, i1 false)
  %i.a = tail call ptr @tng_compress_vel_int(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %7)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tng_compress_inquire(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  switch i32 %i.a, label %bb.d [
    i32 1346850388, label %bb.c
    i32 1447513684, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 1
  store i32 %i.c, ptr %2, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 1
  store i32 %i.e, ptr %3, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 1
  %i.l = zext i32 %i.k to i64
  %i.m = load <4 x i32>, ptr %i.f, align 1
  %i.n = tail call double @Ptngc_i32x2_to_d(i64 noundef %i.l, i64 noundef %i.i) #12
  store double %i.n, ptr %4, align 8, !tbaa !25
  store <4 x i32> %i.m, ptr %5, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @tng_compress_uncompress(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = load i32, ptr %0, align 1
  switch i32 %i.e, label %bb.d [
    i32 1346850388, label %bb.b
    i32 1447513684, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.f = call fastcc i32 @tng_compress_uncompress_pos_gen(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.g = call fastcc i32 @tng_compress_uncompress_vel_gen(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @tng_compress_uncompress_float(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = load i32, ptr %0, align 1
  switch i32 %i.e, label %bb.d [
    i32 1346850388, label %bb.b
    i32 1447513684, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.f = call fastcc i32 @tng_compress_uncompress_pos_gen(ptr noundef nonnull %0, ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.g = call fastcc i32 @tng_compress_uncompress_vel_gen(ptr noundef nonnull %0, ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @tng_compress_uncompress_int(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  switch i32 %i.a, label %bb.d [
    i32 1346850388, label %bb.b
    i32 1447513684, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @tng_compress_uncompress_pos_gen(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @tng_compress_uncompress_vel_gen(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @tng_compress_int_to_double(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @Ptngc_i32x2_to_d(i64 noundef %1, i64 noundef %2) #12 ; 4 uses
  %i.b = icmp sgt i32 %4, 0
  %i.c = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.c, %i.b
  br i1 %or.cond.i, label %.preheader21.preheader.i, label %unquantize.exit

.preheader21.preheader.i:                         ; preds = %bb.a
  %i.d = zext nneg i32 %3 to i64                  ; 3 uses
  %wide.trip.count31.i = zext nneg i32 %4 to i64
  %i.e = insertelement <2 x double> poison, double %i.a, i64 0
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.g = icmp eq i32 %3, 1
  %unroll_iter = and i64 %i.d, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = trunc i32 %3 to i1
  br label %.preheader21.i

.preheader21.i:                                   ; preds = %._crit_edge.i, %.preheader21.preheader.i
  %indvars.iv28.i = phi i64 [ 0, %.preheader21.preheader.i ], [ %indvars.iv.next29.i, %._crit_edge.i ] ; 2 uses
  %i.h = mul nuw nsw i64 %indvars.iv28.i, %i.d    ; 3 uses
  br i1 %i.g, label %.preheader.i.epil.preheader, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader21.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i ], [ 0, %.preheader21.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i ], [ 0, %.preheader21.i ]
  %i.i = add nuw nsw i64 %indvars.iv.i, %i.h
  %sext.i = mul i64 %i.i, 12884901888
  %i.j = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %5, i64 %i.j
  %i.m = load <2 x i32>, ptr %i.k, align 4, !tbaa !16
  %i.n = sitofp <2 x i32> %i.m to <2 x double>
  %i.o = fmul <2 x double> %i.f, %i.n
  store <2 x double> %i.o, ptr %i.l, align 8, !tbaa !25
  %i.p = add nsw i64 %i.j, 2                      ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul double %i.a, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %5, i64 %i.p
  store double %i.t, ptr %i.u, align 8, !tbaa !25
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.v = add nuw nsw i64 %indvars.iv.next.i, %i.h
  %sext.i.1 = mul i64 %i.v, 12884901888
  %i.w = ashr exact i64 %sext.i.1, 32             ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds [8 x i8], ptr %5, i64 %i.w
  %i.z = load <2 x i32>, ptr %i.x, align 4, !tbaa !16
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = fmul <2 x double> %i.f, %i.aa
  store <2 x double> %i.ab, ptr %i.y, align 8, !tbaa !25
  %i.ac = add nsw i64 %i.w, 2                     ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = sitofp i32 %i.ae to double
  %i.ag = fmul double %i.a, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ac
  store double %i.ag, ptr %i.ah, align 8, !tbaa !25
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
end_hunk_2
