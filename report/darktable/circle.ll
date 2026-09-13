Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/circle?download=true
inline.NumInlined: 75
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_circle_get_points_border:bb.a
  %index72 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.cl = shl nuw nsw i64 %index72, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cl ; 2 uses
  %wide.vec73 = load <8 x float>, ptr %i.cm, align 32, !tbaa !22 ; 2 uses
  %strided.vec74 = shufflevector <8 x float> %wide.vec73, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec75 = shufflevector <8 x float> %wide.vec73, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cn = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat69, %strided.vec74
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat71, %strided.vec75
  %interleaved.vec76 = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec76, ptr %i.cm, align 32, !tbaa !22
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next77, %n.vec67
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !177

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %n.vec67, %wide.trip.count.i
  br i1 %cmp.n78, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec51, %vec.epilog.iter.check ], [ %n.vec67, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block65, %vec.epilog.middle.block, %bb.e
  %i.cq = load ptr, ptr %i.bi, align 16, !tbaa !108
  %i.cr = load i32, ptr %i.bk, align 16, !tbaa !122
  %i.cs = sitofp reassoc nsz arcp contract afn i32 %i.cr to double
  %i.ct = sext i32 %i.by to i64
  %i.cu = call i32 @dt_dev_distort_transform_plus(ptr noundef nonnull %0, ptr noundef %i.cq, double noundef %i.cs, i32 noundef 1, ptr noundef nonnull %i.bu, i64 noundef %i.ct) #14
  %.not46.i = icmp eq i32 %i.cu, 0
  br i1 %.not46.i, label %.critedge.i, label %bb.f

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i ; 2 uses
  %i.cw = load <2 x float>, ptr %i.cv, align 8, !tbaa !22
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.bx, %i.cw
  store <2 x float> %i.cx, ptr %i.cv, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !178

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_circle_get_points_source.exit

bb.g:                                             ; preds = %.critedge.i, %.loopexit.i
  %i.cy = load ptr, ptr %2, align 8, !tbaa !111
  call void @free(ptr noundef %i.cy) #14
  store ptr null, ptr %2, align 8, !tbaa !111
  store i32 0, ptr %3, align 4, !tbaa !24
  br label %_circle_get_points_source.exit

bb.h:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !180
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !182
  %i.dd = extractelement <2 x float> %i.d, i64 0  ; 2 uses
  %i.de = extractelement <2 x float> %i.d, i64 1  ; 2 uses
  %i.df = tail call i32 %i.dc(ptr noundef %0, float noundef %i.dd, float noundef %i.de, float noundef %i.f, float noundef %i.f, float noundef 0.000000e+00, ptr noundef %2, ptr noundef %3) #14
  %.not36 = icmp eq i32 %i.df, 0
  br i1 %.not36, label %_circle_get_points_source.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not37 = icmp eq ptr %4, null
  br i1 %.not37, label %_circle_get_points_source.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = load float, ptr %i.e, align 4, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !23
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %i.dg ; 2 uses
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !180
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !182
  %i.dn = tail call i32 %i.dm(ptr noundef %0, float noundef %i.dd, float noundef %i.de, float noundef %i.dj, float noundef %i.dj, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef %5) #14
  br label %_circle_get_points_source.exit

_circle_get_points_source.exit:                   ; preds = %bb.g, %bb.f, %_points_to_transform.exit.i, %bb.h, %bb.i, %bb.j
  %.0 = phi i32 [ 0, %bb.h ], [ %i.dn, %bb.j ], [ 1, %bb.i ], [ 0, %bb.g ], [ 1, %bb.f ], [ 0, %_points_to_transform.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_mask(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) #0 {
bb.a:
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #14 ; 0 uses
  %i.c = load i64, ptr %12, align 8, !tbaa !125
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.k = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.l = tail call i32 @_circle_get_area(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.n = and i32 %i.m, 4112
  %or.cond.not = icmp eq i32 %i.n, 4112
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.p = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #14 ; 0 uses
  %i.q = load i64, ptr %11, align 8, !tbaa !125
  %i.r = add nsw i64 %i.q, -1290608000
  %i.s = sitofp reassoc nsz arcp contract afn i64 %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !126
  %i.v = sitofp reassoc nsz arcp contract afn i64 %i.u to double
  %i.w = fmul reassoc nnan nsz arcp contract afn double %i.v, f0x3EB0C6F7A0B5ED8D
  %i.x = fadd reassoc nsz arcp contract afn double %i.w, %i.s ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.y = fsub reassoc nsz arcp contract afn double %i.x, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.o, double noundef %i.y) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi nsz double [ %i.k, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !15
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 4 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !24    ; 7 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !24    ; 4 uses
  %i.ad = sext i32 %i.ab to i64
  %i.ae = sext i32 %i.ac to i64
  %i.af = mul nsw i64 %i.ae, %i.ad                ; 3 uses
  %i.ag = shl i64 %i.af, 3
  %i.ah = tail call ptr @dt_alloc_aligned(i64 noundef %i.ag) #14 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %6, align 4, !tbaa !24
  %i.ak = sitofp reassoc nsz arcp contract afn i32 %i.aj to float ; 3 uses
  %i.al = load i32, ptr %7, align 4, !tbaa !24
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  %i.an = icmp sgt i32 %i.ac, 0
  br i1 %i.an, label %.lr.ph120, label %._crit_edge121.split

.lr.ph120:                                        ; preds = %bb.f
  %i.ao = shl i32 %i.ab, 1
  %i.ap = icmp sgt i32 %i.ab, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge121.split

.lr.ph.preheader:                                 ; preds = %.lr.ph120
  %wide.trip.count130 = zext nneg i32 %i.ac to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ab, 4
  %min.iters.check142 = icmp ult i32 %i.ab, 32
  %i.aq = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.ak, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  %n.vec148 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert151 = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat152 = shufflevector <4 x float> %broadcast.splatinsert151, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n160 = icmp eq i64 %n.vec148, %wide.trip.count
  br label %iter.check

._crit_edge121.split:                             ; preds = %._crit_edge, %.lr.ph120, %bb.f
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.as = and i32 %i.ar, 4112
  %or.cond108.not = icmp eq i32 %i.as, 4112
  br i1 %or.cond108.not, label %bb.g, label %bb.h

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv127 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next128, %._crit_edge ] ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv127 to i32 ; 2 uses
  %i.au = mul i32 %i.ao, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.av ; 6 uses
  %i.ax = uitofp nneg i32 %i.at to float
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.am ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ay, i64 0 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.az = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.ba = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.bb = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.bc = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.bd = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat144, %i.az
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat144, %i.ba
  %i.bf = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat144, %i.bb
  %i.bg = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat144, %i.bc
  %i.bh = shl nuw nsw i64 %index, 3
  %i.bi = shl i64 %index, 3
  %i.bj = shl i64 %index, 3
  %i.bk = shl i64 %index, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 192
  %interleaved.vec = shufflevector <8 x float> %i.bd, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.bl, align 8, !tbaa !22
  %interleaved.vec145 = shufflevector <8 x float> %i.be, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec145, ptr %i.bn, align 8, !tbaa !22
  %interleaved.vec146 = shufflevector <8 x float> %i.bf, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec146, ptr %i.bp, align 8, !tbaa !22
  %interleaved.vec147 = shufflevector <8 x float> %i.bg, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec147, ptr %i.br, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !127

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bt = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert153 = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat154 = shufflevector <4 x i32> %broadcast.splatinsert153, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat154, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind156 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next159, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = uitofp nneg <4 x i32> %vec.ind156 to <4 x float>
  %i.bv = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat152, %i.bu
  %i.bw = shl nuw nsw i64 %index155, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bw
  %interleaved.vec157 = shufflevector <4 x float> %i.bv, <4 x float> %broadcast.splatinsert149, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec157, ptr %i.bx, align 8, !tbaa !22
  %index.next158 = add nuw i64 %index155, 4       ; 2 uses
  %vec.ind.next159 = add <4 x i32> %vec.ind156, splat (i32 4)
  %i.by = icmp eq i64 %index.next158, %n.vec148
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !184

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n160, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec148, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge121.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ca = uitofp nneg i32 %i.bz to float
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.ak
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  store float %i.cb, ptr %i.cc, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store float %i.ay, ptr %i.cd, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !185

bb.g:                                             ; preds = %._crit_edge121.split
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.cf = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.cg = load i64, ptr %10, align 8, !tbaa !125
  %i.ch = add nsw i64 %i.cg, -1290608000
  %i.ci = sitofp reassoc nsz arcp contract afn i64 %i.ch to double
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !126
  %i.cl = sitofp reassoc nsz arcp contract afn i64 %i.ck to double
  %i.cm = fmul reassoc nnan nsz arcp contract afn double %i.cl, f0x3EB0C6F7A0B5ED8D
  %i.cn = fadd reassoc nsz arcp contract afn double %i.cm, %i.ci ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.co = fsub reassoc nsz arcp contract afn double %i.cn, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ce, double noundef %i.co) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge121.split
  %.1 = phi nsz double [ %.0, %._crit_edge121.split ], [ %i.cn, %bb.g ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !128
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !134 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cu = load i32, ptr %i.ct, align 16, !tbaa !122
  %i.cv = sitofp reassoc nsz arcp contract afn i32 %i.cu to double
  %i.cw = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.cq, ptr noundef %i.cs, double noundef %i.cv, i32 noundef 3, ptr noundef nonnull %i.ah, i64 noundef %i.af) #14
  %.not103 = icmp eq i32 %i.cw, 0
  br i1 %.not103, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ah) #14
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.cy = and i32 %i.cx, 4112
  %or.cond109.not = icmp eq i32 %i.cy, 4112
  br i1 %or.cond109.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.da = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #14 ; 0 uses
  %i.db = load i64, ptr %9, align 8, !tbaa !125
  %i.dc = add nsw i64 %i.db, -1290608000
  %i.dd = sitofp reassoc nsz arcp contract afn i64 %i.dc to double
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !126
  %i.dg = sitofp reassoc nsz arcp contract afn i64 %i.df to double
  %i.dh = fmul reassoc nnan nsz arcp contract afn double %i.dg, f0x3EB0C6F7A0B5ED8D
  %i.di = fadd reassoc nsz arcp contract afn double %i.dh, %i.dd ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.dj = fsub reassoc nsz arcp contract afn double %i.di, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.cz, double noundef %i.dj) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2114 = phi nsz double [ %.1, %bb.j ], [ %i.di, %bb.k ]
  %i.dk = shl i64 %i.af, 2
  %i.dl = tail call ptr @dt_alloc_aligned(i64 noundef %i.dk) #14 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dl, i64 64) ]
  store ptr %i.dl, ptr %3, align 8, !tbaa !111
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.ah) #14
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  %i.do = load i32, ptr %i.dn, align 16, !tbaa !191 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 148
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !192 ; 2 uses
  %i.dr = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.dq)
  %i.ds = load float, ptr %i.aa, align 4, !tbaa !22
  %i.dt = sitofp reassoc nsz arcp contract afn i32 %i.do to float
  %i.du = fmul reassoc nsz arcp contract afn float %i.ds, %i.dt ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !22
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.dq to float
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dw, %i.dx ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !20 ; 3 uses
  %i.eb = sitofp reassoc nsz arcp contract afn i32 %i.dr to float ; 2 uses
  %i.ec = fmul reassoc nnan nsz arcp contract afn float %i.eb, %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !23
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.ea ; 2 uses
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.ef
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.ec ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 3 uses
  %i.ej = mul nsw i32 %i.ac, %i.ab                ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph124.preheader, label %._crit_edge125

.lr.ph124.preheader:                              ; preds = %bb.n
  %i.el = fmul reassoc nsz arcp contract afn float %i.ea, %i.ea
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ec
  %i.en = fsub reassoc nsz arcp contract afn float %i.eh, %i.em ; 4 uses
  %wide.trip.count135 = zext nneg i32 %i.ej to i64 ; 7 uses
  %min.iters.check162 = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check162, label %.lr.ph124.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph124.preheader
  %i.eo = shl nuw nsw i64 %wide.trip.count135, 2
  %scevgep = getelementptr i8, ptr %i.dl, i64 %i.eo
  %i.ep = shl nuw nsw i64 %wide.trip.count135, 3
  %scevgep161 = getelementptr i8, ptr %i.ah, i64 %i.ep
  %bound0 = icmp ult ptr %i.dl, %scevgep161
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph124.preheader181, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck
  %n.vec164 = and i64 %wide.trip.count135, 2147483640 ; 3 uses
  %broadcast.splatinsert165 = insertelement <8 x float> poison, float %i.en, i64 0
  %broadcast.splat166 = shufflevector <8 x float> %broadcast.splatinsert165, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert167 = insertelement <8 x float> poison, float %i.du, i64 0
  %broadcast.splat168 = shufflevector <8 x float> %broadcast.splatinsert167, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x float> poison, float %i.dy, i64 0
  %broadcast.splat170 = shufflevector <8 x float> %broadcast.splatinsert169, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.eh, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat166
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph163
  %index174 = phi i64 [ 0, %vector.ph163 ], [ %index.next176, %vector.body173 ] ; 3 uses
  %.idx180 = shl nuw nsw i64 %index174, 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx180
  %wide.vec = load <16 x float>, ptr %i.er, align 64, !tbaa !22, !alias.scope !193 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec175 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.es = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat168 ; 2 uses
  %i.et = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec175, %broadcast.splat170 ; 2 uses
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.es, %i.es
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.et
  %i.ew = fadd reassoc nsz arcp contract afn <8 x float> %i.ev, %i.eu
  %i.ex = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat172, %i.ew
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %i.ex, %i.eq ; 3 uses
  %i.ez = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ey, zeroinitializer
  %i.fa = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.ey, splat (float 1.000000e+00)
  %i.fb = select reassoc nsz arcp contract afn <8 x i1> %i.fa, <8 x float> %i.ey, <8 x float> splat (float 1.000000e+00)
  %i.fc = select reassoc nsz arcp contract afn <8 x i1> %i.ez, <8 x float> %i.fb, <8 x float> zeroinitializer ; 2 uses
  %i.fd = fmul reassoc nsz arcp contract afn <8 x float> %i.fc, %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index174
  store <8 x float> %i.fd, ptr %i.fe, align 32, !tbaa !22, !alias.scope !194, !noalias !193
  %index.next176 = add nuw i64 %index174, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next176, %n.vec164
  br i1 %i.ff, label %middle.block177, label %vector.body173, !llvm.loop !189

middle.block177:                                  ; preds = %vector.body173
  %cmp.n178 = icmp eq i64 %n.vec164, %wide.trip.count135
  br i1 %cmp.n178, label %._crit_edge125, label %.lr.ph124.preheader181

.lr.ph124.preheader181:                           ; preds = %vector.memcheck, %.lr.ph124.preheader, %middle.block177
  %indvars.iv132.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph124.preheader ], [ %n.vec164, %middle.block177 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count135, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader181
  %i.fg = shl nuw nsw i64 %indvars.iv132.ph, 1    ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 64, !tbaa !22
  %i.fj = fsub reassoc nsz arcp contract afn float %i.fi, %i.du ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fg
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !22
  %i.fm = fsub reassoc nsz arcp contract afn float %i.fl, %i.dy ; 2 uses
  %.neg.prol = fmul reassoc nsz arcp contract afn float %i.fj, %i.fj
  %.neg115.prol = fmul reassoc nsz arcp contract afn float %i.fm, %i.fm
  %reass.add.prol = fadd reassoc nsz arcp contract afn float %.neg115.prol, %.neg.prol
  %i.fn = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add.prol
  %i.fo = fdiv reassoc nsz arcp contract afn float %i.fn, %i.en ; 3 uses
  %i.fp = fcmp reassoc nsz arcp contract afn oge float %i.fo, 0.000000e+00
  %i.fq = fcmp reassoc nsz arcp contract afn ole float %i.fo, 1.000000e+00
  %i.fr = select reassoc nsz arcp contract afn i1 %i.fq, float %i.fo, float 1.000000e+00
  %i.fs = select reassoc nsz arcp contract afn i1 %i.fp, float %i.fr, float 0.000000e+00 ; 2 uses
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv132.ph
  store float %i.ft, ptr %i.fu, align 32, !tbaa !22
  %indvars.iv.next133.prol = or disjoint i64 %indvars.iv132.ph, 1
  br label %.lr.ph124.prol.loopexit

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader181
  %indvars.iv132.unr = phi i64 [ %indvars.iv132.ph, %.lr.ph124.preheader181 ], [ %indvars.iv.next133.prol, %.lr.ph124.prol ]
  %i.fv = add nsw i64 %wide.trip.count135, -1
  %i.fw = icmp eq i64 %indvars.iv132.ph, %i.fv
  br i1 %i.fw, label %._crit_edge125, label %.lr.ph124.preheader181.new

.lr.ph124.preheader181.new:                       ; preds = %.lr.ph124.prol.loopexit
  %i.fx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.en
  %i.fy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.en
  br label %.lr.ph124

._crit_edge125:                                   ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124, %middle.block177, %bb.n
  tail call void @free(ptr noundef nonnull %i.ah) #14
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.ga = and i32 %i.fz, 4112
  %or.cond110.not = icmp eq i32 %i.ga, 4112
  br i1 %or.cond110.not, label %bb.o, label %bb.p

.lr.ph124:                                        ; preds = %.lr.ph124, %.lr.ph124.preheader181.new
  %indvars.iv132 = phi i64 [ %indvars.iv132.unr, %.lr.ph124.preheader181.new ], [ %indvars.iv.next133.1, %.lr.ph124 ] ; 4 uses
  %i.gb = shl nuw nsw i64 %indvars.iv132, 1       ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !22
  %i.ge = fsub reassoc nsz arcp contract afn float %i.gd, %i.du ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gb
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !22
  %i.gh = fsub reassoc nsz arcp contract afn float %i.gg, %i.dy ; 2 uses
  %.neg = fmul reassoc nsz arcp contract afn float %i.ge, %i.ge
  %.neg115 = fmul reassoc nsz arcp contract afn float %i.gh, %i.gh
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg115, %.neg
  %i.gi = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gi, %i.fx ; 3 uses
  %i.gk = fcmp reassoc nsz arcp contract afn oge float %i.gj, 0.000000e+00
  %i.gl = fcmp reassoc nsz arcp contract afn ole float %i.gj, 1.000000e+00
  %i.gm = select reassoc nsz arcp contract afn i1 %i.gl, float %i.gj, float 1.000000e+00
  %i.gn = select reassoc nsz arcp contract afn i1 %i.gk, float %i.gm, float 0.000000e+00 ; 2 uses
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv132
  store float %i.go, ptr %i.gp, align 4, !tbaa !22
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.gq = shl nuw nsw i64 %indvars.iv.next133, 1  ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !22
  %i.gt = fsub reassoc nsz arcp contract afn float %i.gs, %i.du ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gq
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !22
  %i.gw = fsub reassoc nsz arcp contract afn float %i.gv, %i.dy ; 2 uses
  %.neg.1 = fmul reassoc nsz arcp contract afn float %i.gt, %i.gt
  %.neg115.1 = fmul reassoc nsz arcp contract afn float %i.gw, %i.gw
  %reass.add.1 = fadd reassoc nsz arcp contract afn float %.neg115.1, %.neg.1
  %i.gx = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add.1
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %i.fy ; 3 uses
  %i.gz = fcmp reassoc nsz arcp contract afn oge float %i.gy, 0.000000e+00
  %i.ha = fcmp reassoc nsz arcp contract afn ole float %i.gy, 1.000000e+00
  %i.hb = select reassoc nsz arcp contract afn i1 %i.ha, float %i.gy, float 1.000000e+00
  %i.hc = select reassoc nsz arcp contract afn i1 %i.gz, float %i.hb, float 0.000000e+00 ; 2 uses
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next133
  store float %i.hd, ptr %i.he, align 4, !tbaa !22
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %exitcond136.not.1 = icmp eq i64 %indvars.iv.next133.1, %wide.trip.count135
  br i1 %exitcond136.not.1, label %._crit_edge125, label %.lr.ph124, !llvm.loop !190

bb.o:                                             ; preds = %._crit_edge125
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.hg = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #14 ; 0 uses
  %i.hh = load i64, ptr %8, align 8, !tbaa !125
  %i.hi = add nsw i64 %i.hh, -1290608000
  %i.hj = sitofp reassoc nsz arcp contract afn i64 %i.hi to double
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !126
  %i.hm = sitofp reassoc nsz arcp contract afn i64 %i.hl to double
  %i.hn = fmul reassoc nnan nsz arcp contract afn double %i.hm, f0x3EB0C6F7A0B5ED8D
  %i.ho = fadd reassoc nsz arcp contract afn double %i.hn, %i.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.hp = fsub reassoc nsz arcp contract afn double %i.ho, %.2114
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.hf, double noundef %i.hp) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %._crit_edge125, %bb.o, %bb.m, %bb.i, %dt_get_debug_wtime.exit
  %.2 = phi i32 [ 0, %dt_get_debug_wtime.exit ], [ 0, %bb.e ], [ 0, %bb.m ], [ 0, %bb.i ], [ 1, %bb.o ], [ 1, %._crit_edge125 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_mask_roi(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noalias nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #14 ; 0 uses
  %i.c = load i64, ptr %13, align 8, !tbaa !125
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.k = and i32 %.pre, 4112
  %i.l = icmp eq i32 %i.k, 4112
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %or.cond413.not = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  %i.m = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !15
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.s = load <2 x i32>, ptr %i.r, align 16, !tbaa !24 ; 3 uses
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !22
  %i.u = sitofp <2 x i32> %i.s to <2 x float>
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.t, %i.u ; 7 uses
  %i.w = extractelement <2 x i32> %i.s, i64 0
  %i.x = extractelement <2 x i32> %i.s, i64 1
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.y to float ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.aa, %i.ab ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !23
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.aa
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab ; 4 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.ah ; 4 uses
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ai, %i.ad ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !204 ; 3 uses
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.am ; 4 uses
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, f0x40555556
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0x3F2AAAAB ; 3 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt float %i.ap, 4.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.ap, 1.000000e+00
  %spec.select433 = select i1 %.inv, float 1.000000e+00, float %i.ap
  %spec.select = fptosi float %spec.select433 to i32
  %i.ar = select i1 %i.aq, i32 4, i32 %spec.select ; 19 uses
  %i.as = add i32 %i.ar, -1
  %i.at = load <2 x i32>, ptr %i.ak, align 4, !tbaa !24 ; 3 uses
  %i.au = load <2 x i32>, ptr %3, align 4, !tbaa !24 ; 5 uses
  %i.av = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %i.aw = shufflevector <2 x i32> %i.av, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ax = add <2 x i32> %i.aw, %i.at
  %i.ay = insertelement <2 x i32> poison, i32 %i.ar, i64 0
  %i.az = shufflevector <2 x i32> %i.ay, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ba = sdiv <2 x i32> %i.ax, %i.az             ; 4 uses
  %i.bb = extractelement <2 x i32> %i.at, i64 0   ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = shl nsw i64 %i.bc, 2
  %i.be = extractelement <2 x i32> %i.at, i64 1   ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bd, %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.bg, i1 false)
  br i1 %or.cond413.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.bi = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #14 ; 0 uses
  %i.bj = load i64, ptr %12, align 8, !tbaa !125
  %i.bk = add nsw i64 %i.bj, -1290608000
  %i.bl = sitofp reassoc nsz arcp contract afn i64 %i.bk to double
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !126
  %i.bo = sitofp reassoc nsz arcp contract afn i64 %i.bn to double
  %i.bp = fmul reassoc nnan nsz arcp contract afn double %i.bo, f0x3EB0C6F7A0B5ED8D
  %i.bq = fadd reassoc nsz arcp contract afn double %i.bp, %i.bl ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.br = fsub reassoc nsz arcp contract afn double %i.bq, %i.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.bh, double noundef %i.br) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %dt_get_debug_wtime.exit
  %.0 = phi nsz double [ %i.m, %dt_get_debug_wtime.exit ], [ %i.bq, %bb.c ] ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.ai, f0x40C90FDB ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bs, 3.600000e+02
  %i.bu = select reassoc nsz arcp contract afn i1 %i.bt, float 3.600000e+02, float %i.bs
  %i.bv = fptosi float %i.bu to i32               ; 3 uses
  %14 = srem i32 %i.bv, 8                         ; 2 uses
  %i.bw = icmp eq i32 %14, 0
  %i.bx = add nsw i32 %i.bv, 8
  %15 = sub i32 %i.bx, %14
  %i.by = select i1 %i.bw, i32 %i.bv, i32 %15     ; 6 uses
  %16 = sext i32 %i.by to i64                     ; 4 uses
  %i.bz = shl nsw i64 %16, 3
  %i.ca = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #14 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ac, label %.preheader447

.preheader447:                                    ; preds = %bb.d
  %i.cc = lshr i64 %16, 3                         ; 4 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader447
  %i.cd = uitofp reassoc nsz arcp contract afn i64 %16 to float ; 2 uses
  %min.iters.check = icmp ult i32 %i.by, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.cc, 2305843009213693944     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert534 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat535.a = shufflevector <8 x float> %broadcast.splatinsert534, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat537.a = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat539 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.ce = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind540 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next556, %vector.body ] ; 2 uses
  %i.cf = uitofp nneg <8 x i32> %vec.ind540 to <8 x float>
  %i.cg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.cf, splat (float f0x40C90FDB)
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cg, %i.ce
  %i.ci = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ch) ; 2 uses
  %i.cj = extractvalue { <8 x float>, <8 x float> } %i.ci, 0
  %i.ck = extractvalue { <8 x float>, <8 x float> } %i.ci, 1
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, %broadcast.splat535.a ; 4 uses
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, %broadcast.splat535.a ; 4 uses
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat537.a ; 2 uses
  %i.co = shl nuw nsw <8 x i64> %vec.ind, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ca, <8 x i64> %i.co ; 16 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cn, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat539 ; 2 uses
  %wide.gep541.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cp, <8 x ptr> align 4 %wide.gep541.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep542.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cn, <8 x ptr> align 4 %wide.gep542.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cq = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat539, %i.cm ; 2 uses
  %wide.gep543.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep543.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cr = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat537.a, %i.cl ; 2 uses
  %wide.gep544.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cr, <8 x ptr> align 4 %wide.gep544.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep545.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cp, <8 x ptr> align 4 %wide.gep545.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep546.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cr, <8 x ptr> align 4 %wide.gep546.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep547.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep547.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat537.a ; 2 uses
  %wide.gep548.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep548.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat539 ; 2 uses
  %wide.gep549.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep549.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep550.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep550.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat539, %i.cl ; 2 uses
  %wide.gep551.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep551.a, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cv = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat537.a, %i.cm ; 2 uses
  %wide.gep552.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep552.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep553.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep553.a, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep554 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep554, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep555 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep555, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next556 = add <8 x i32> %vec.ind540, splat (i32 8)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.cx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cd
  %i.cy = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.cz = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader447
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !128 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.de = load i32, ptr %i.dd, align 16, !tbaa !122
  %i.df = sitofp reassoc nsz arcp contract afn i32 %i.de to double ; 2 uses
  %i.dg = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.dc, ptr noundef nonnull %i.q, double noundef %i.df, i32 noundef 3, ptr noundef nonnull %i.ca, i64 noundef %16) #14
  %.not388 = icmp eq i32 %i.dg, 0
  br i1 %.not388, label %bb.e, label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv to i32
  %i.di = uitofp nneg i32 %i.dh to float
  %i.dj = fmul reassoc nnan nsz arcp contract afn float %i.di, f0x40C90FDB
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.cx
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dk) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.dl = insertelement <4 x float> poison, float %sin, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %cos, i64 1
  %.idx532 = shl nuw nsw i64 %indvars.iv, 6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx532 ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn <4 x float> %i.dm, %i.da ; 4 uses
  %i.dp = shufflevector <4 x float> %i.cz, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.cz, <4 x i32> <i32 1, i32 0, i32 5, i32 4> ; 2 uses
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.dp, %i.dq
  %i.ds = fsub reassoc nsz arcp contract afn <4 x float> %i.dp, %i.dq
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> %i.ds, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.dt, ptr %i.dn, align 64, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dv = shufflevector <4 x float> %i.cz, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dw = shufflevector <4 x float> %i.do, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dx = fadd reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dw
  %i.dy = fsub reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dw
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.dz, ptr %i.du, align 32, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cc
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !196

bb.e:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.ca) #14
  br label %bb.ac

bb.f:                                             ; preds = %._crit_edge
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.eb = and i32 %i.ea, 4112
  %or.cond414.not = icmp eq i32 %i.eb, 4112
  br i1 %or.cond414.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ed = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #14 ; 0 uses
  %i.ee = load i64, ptr %11, align 8, !tbaa !125
  %i.ef = add nsw i64 %i.ee, -1290608000
  %i.eg = sitofp reassoc nsz arcp contract afn i64 %i.ef to double
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !126
  %i.ej = sitofp reassoc nsz arcp contract afn i64 %i.ei to double
  %i.ek = fmul reassoc nnan nsz arcp contract afn double %i.ej, f0x3EB0C6F7A0B5ED8D
  %i.el = fadd reassoc nsz arcp contract afn double %i.ek, %i.eg ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.em = fsub reassoc nsz arcp contract afn double %i.el, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ec, double noundef %i.em) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi nsz double [ %.0, %bb.f ], [ %i.el, %bb.g ] ; 2 uses
  %.not482 = icmp eq i32 %i.by, 0
  br i1 %.not482, label %._crit_edge456, label %.lr.ph455.preheader

.lr.ph455.preheader:                              ; preds = %bb.h
  %wide.trip.count = zext i32 %i.by to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.en = icmp eq i32 %i.by, 1
  br i1 %i.en, label %.lr.ph455.epil.preheader, label %.lr.ph455.preheader.new

.lr.ph455.preheader.new:                          ; preds = %.lr.ph455.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph455

._crit_edge456.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge456, label %.lr.ph455.epil.preheader

.lr.ph455.epil.preheader:                         ; preds = %._crit_edge456.loopexit.unr-lcssa, %.lr.ph455.preheader
  %indvars.iv484.epil.init = phi i64 [ 0, %.lr.ph455.preheader ], [ %indvars.iv.next485.1, %._crit_edge456.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float f0x00800000), %.lr.ph455.preheader ], [ %i.hh, %._crit_edge456.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init664 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph455.preheader ], [ %i.hi, %._crit_edge456.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod667 = trunc i32 %i.by to i1
  tail call void @llvm.assume(i1 %lcmp.mod667)
  %.idx533.epil = shl nuw nsw i64 %indvars.iv484.epil.init, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx533.epil ; 2 uses
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !22 ; 2 uses
  %i.eq = tail call i1 @llvm.is.fpclass.f32(float %i.ep, /* (nan inf zero sub) */ i32 759)
  br i1 %i.eq, label %._crit_edge456, label %bb.i

bb.i:                                             ; preds = %.lr.ph455.epil.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !22 ; 2 uses
  %i.et = tail call i1 @llvm.is.fpclass.f32(float %i.es, /* (nan inf zero sub) */ i32 759)
  br i1 %i.et, label %._crit_edge456, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eu = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.es, i64 1 ; 4 uses
  %i.ew = fcmp reassoc nsz arcp contract afn olt <2 x float> %.epil.init664, %i.ev
  %i.ex = fcmp reassoc nsz arcp contract afn ogt <2 x float> %.epil.init, %i.ev
  %i.ey = select <2 x i1> %i.ew, <2 x float> %.epil.init664, <2 x float> %i.ev
  %i.ez = select <2 x i1> %i.ex, <2 x float> %.epil.init, <2 x float> %i.ev
  br label %._crit_edge456

._crit_edge456:                                   ; preds = %._crit_edge456.loopexit.unr-lcssa, %bb.j, %bb.i, %.lr.ph455.epil.preheader, %bb.h
  %i.fa = phi <2 x float> [ splat (float f0x00800000), %bb.h ], [ %i.hh, %._crit_edge456.loopexit.unr-lcssa ], [ %i.ez, %bb.j ], [ %.epil.init, %bb.i ], [ %.epil.init, %.lr.ph455.epil.preheader ]
  %i.fb = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.hi, %._crit_edge456.loopexit.unr-lcssa ], [ %i.ey, %bb.j ], [ %.epil.init664, %bb.i ], [ %.epil.init664, %.lr.ph455.epil.preheader ]
  %i.fc = insertelement <2 x float> poison, float %i.am, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = fmul reassoc nsz arcp contract afn <2 x float> %i.fb, %i.fd
  %i.ff = sitofp <2 x i32> %i.au to <2 x float>   ; 2 uses
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fd
  %i.fh = fsub reassoc nsz arcp contract afn <2 x float> %i.fe, %i.ff
  %i.fi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.fh)
  %i.fj = fptosi <2 x float> %i.fi to <2 x i32>
  %i.fk = sdiv <2 x i32> %i.fj, %i.az             ; 2 uses
  %i.fl = add nsw <2 x i32> %i.fk, splat (i32 -1) ; 2 uses
  %i.fm = icmp sgt <2 x i32> %i.fl, %i.ba
  %i.fn = icmp sgt <2 x i32> %i.fk, zeroinitializer
  %i.fo = select <2 x i1> %i.fn, <2 x i32> %i.fl, <2 x i32> zeroinitializer
  %i.fp = select <2 x i1> %i.fm, <2 x i32> %i.ba, <2 x i32> %i.fo ; 7 uses
  %i.fq = fsub reassoc nsz arcp contract afn <2 x float> %i.fg, %i.ff
  %i.fr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.fq)
  %i.fs = fptosi <2 x float> %i.fr to <2 x i32>
  %i.ft = sdiv <2 x i32> %i.fs, %i.az             ; 2 uses
  %i.fu = add nsw <2 x i32> %i.ft, splat (i32 2)  ; 2 uses
  %i.fv = icmp sgt <2 x i32> %i.fu, %i.ba
  %i.fw = icmp slt <2 x i32> %i.ft, splat (i32 -2)
  %i.fx = select <2 x i1> %i.fw, <2 x i32> zeroinitializer, <2 x i32> %i.fu
  %i.fy = select <2 x i1> %i.fv, <2 x i32> %i.ba, <2 x i32> %i.fx ; 5 uses
  %i.fz = sub <2 x i32> %i.fy, %i.fp              ; 5 uses
  %i.ga = add nuw nsw <2 x i32> %i.fz, splat (i32 1) ; 3 uses
  %i.gb = zext <2 x i32> %i.ga to <2 x i64>
  tail call void @free(ptr noundef nonnull %i.ca) #14
  %i.gc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.gd = and i32 %i.gc, 4112
  %or.cond419.not = icmp eq i32 %i.gd, 4112
  br i1 %or.cond419.not, label %bb.p, label %bb.q

.lr.ph455:                                        ; preds = %bb.o, %.lr.ph455.preheader.new
  %indvars.iv484 = phi i64 [ 0, %.lr.ph455.preheader.new ], [ %indvars.iv.next485.1, %bb.o ] ; 3 uses
  %i.ge = phi <2 x float> [ splat (float f0x00800000), %.lr.ph455.preheader.new ], [ %i.hh, %bb.o ] ; 4 uses
  %i.gf = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph455.preheader.new ], [ %i.hi, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph455.preheader.new ], [ %niter.next.1, %bb.o ]
  %.idx533 = shl nuw nsw i64 %indvars.iv484, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx533 ; 2 uses
  %i.gh = load float, ptr %i.gg, align 16, !tbaa !22 ; 2 uses
  %i.gi = tail call i1 @llvm.is.fpclass.f32(float %i.gh, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gi, label %.lr.ph455.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph455
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !22 ; 2 uses
  %i.gl = tail call i1 @llvm.is.fpclass.f32(float %i.gk, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gl, label %.lr.ph455.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gm = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.gk, i64 1 ; 4 uses
  %i.go = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gf, %i.gn
  %i.gp = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ge, %i.gn
  %i.gq = select <2 x i1> %i.go, <2 x float> %i.gf, <2 x float> %i.gn
  %i.gr = select <2 x i1> %i.gp, <2 x float> %i.ge, <2 x float> %i.gn
  br label %.lr.ph455.1

.lr.ph455.1:                                      ; preds = %.lr.ph455, %bb.k, %bb.l
  %i.gs = phi <2 x float> [ %i.gr, %bb.l ], [ %i.ge, %bb.k ], [ %i.ge, %.lr.ph455 ] ; 4 uses
  %i.gt = phi <2 x float> [ %i.gq, %bb.l ], [ %i.gf, %bb.k ], [ %i.gf, %.lr.ph455 ] ; 4 uses
  %indvars.iv.next485 = shl i64 %indvars.iv484, 3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next485 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load float, ptr %i.gv, align 8, !tbaa !22 ; 2 uses
  %i.gx = tail call i1 @llvm.is.fpclass.f32(float %i.gw, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gx, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph455.1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !22 ; 2 uses
  %i.ha = tail call i1 @llvm.is.fpclass.f32(float %i.gz, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ha, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hb = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.hc = insertelement <2 x float> %i.hb, float %i.gz, i64 1 ; 4 uses
  %i.hd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gt, %i.hc
  %i.he = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gs, %i.hc
  %i.hf = select <2 x i1> %i.hd, <2 x float> %i.gt, <2 x float> %i.hc
  %i.hg = select <2 x i1> %i.he, <2 x float> %i.gs, <2 x float> %i.hc
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph455.1
  %i.hh = phi <2 x float> [ %i.hg, %bb.n ], [ %i.gs, %bb.m ], [ %i.gs, %.lr.ph455.1 ] ; 3 uses
  %i.hi = phi <2 x float> [ %i.hf, %bb.n ], [ %i.gt, %bb.m ], [ %i.gt, %.lr.ph455.1 ] ; 3 uses
  %indvars.iv.next485.1 = add nuw nsw i64 %indvars.iv484, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge456.loopexit.unr-lcssa, label %.lr.ph455

bb.p:                                             ; preds = %._crit_edge456
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.hk = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.hl = load i64, ptr %10, align 8, !tbaa !125
  %i.hm = add nsw i64 %i.hl, -1290608000
  %i.hn = sitofp reassoc nsz arcp contract afn i64 %i.hm to double
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !126
  %i.hq = sitofp reassoc nsz arcp contract afn i64 %i.hp to double
  %i.hr = fmul reassoc nnan nsz arcp contract afn double %i.hq, f0x3EB0C6F7A0B5ED8D
  %i.hs = fadd reassoc nsz arcp contract afn double %i.hr, %i.hn ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ht = fsub reassoc nsz arcp contract afn double %i.hs, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.hj, double noundef %i.ht) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge456
  %.2432 = phi nsz double [ %.1, %._crit_edge456 ], [ %i.hs, %bb.p ] ; 2 uses
  %i.hu = icmp slt <2 x i32> %i.fz, splat (i32 1) ; 2 uses
  %i.hv = extractelement <2 x i1> %i.hu, i64 0
  %i.hw = extractelement <2 x i1> %i.hu, i64 1
  %or.cond = select i1 %i.hv, i1 true, i1 %i.hw
  br i1 %or.cond, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hx = extractelement <2 x i32> %i.ga, i64 0   ; 11 uses
  %i.hy = zext i32 %i.hx to i64
  %i.hz = extractelement <2 x i32> %i.ga, i64 1
  %i.ia = zext i32 %i.hz to i64
  %i.ib = mul nuw nsw i64 %i.ia, %i.hy            ; 2 uses
  %i.ic = shl i64 %i.ib, 3
  %i.id = tail call ptr @dt_alloc_aligned(i64 noundef %i.ic) #14 ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.id, i64 64) ]
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.ac, label %.preheader446

.preheader446:                                    ; preds = %bb.r
  %i.if = extractelement <2 x i32> %i.fy, i64 1   ; 2 uses
  %i.ig = extractelement <2 x i32> %i.fp, i64 1   ; 4 uses
  %.not393464 = icmp sgt i32 %i.ig, %i.if
  br i1 %.not393464, label %._crit_edge466.split, label %.preheader445.lr.ph

.preheader445.lr.ph:                              ; preds = %.preheader446
  %i.ih = extractelement <2 x i32> %i.fp, i64 0
  %i.ii = icmp sgt <2 x i32> %i.fp, %i.fy
  %.not410460 = extractelement <2 x i1> %i.ii, i64 0
  %i.ij = sext i32 %i.ih to i64                   ; 6 uses
  br i1 %.not410460, label %._crit_edge466.split, label %.preheader445.preheader

.preheader445.preheader:                          ; preds = %.preheader445.lr.ph
  %i.ik = sext i32 %i.ig to i64                   ; 2 uses
  %i.il = add <2 x i32> %i.fy, splat (i32 1)      ; 2 uses
  %i.im = extractelement <2 x i32> %i.fz, i64 0   ; 2 uses
  %i.in = extractelement <2 x i32> %i.au, i64 1
  %i.io = extractelement <2 x i32> %i.il, i64 1
  %i.ip = zext i32 %i.hx to i64
  %min.iters.check558 = icmp ult i32 %i.im, 3
  %min.iters.check559 = icmp ult i32 %i.im, 31
  %i.iq = zext i32 %i.hx to i64                   ; 2 uses
  %i.ir = and i64 %i.iq, 28
  %n.vec561 = and i64 %i.iq, 2147483616           ; 4 uses
  %i.is = add nsw i64 %n.vec561, %i.ij            ; 2 uses
  %broadcast.splatinsert564 = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat565.a = shufflevector <8 x i32> %broadcast.splatinsert564, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat567.a = shufflevector <2 x i32> %i.au, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert568 = insertelement <8 x float> poison, float %i.an, i64 0
  %broadcast.splat569.a = shufflevector <8 x float> %broadcast.splatinsert568, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat571 = shufflevector <2 x i32> %i.fp, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat571, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.it = zext i32 %i.hx to i64
  %cmp.n581 = icmp eq i64 %n.vec561, %i.it
  %min.epilog.iters.check = icmp eq i64 %i.ir, 0
end_hunk_0
begin_hunk_1_@_circle_get_mask_roi:bb.a
  %i.ky = getelementptr inbounds nuw i8, ptr %i.id, i64 %.idx436 ; 2 uses
  store float %i.kx, ptr %i.ky, align 8, !tbaa !22
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  store float %i.jf, ptr %i.kz, align 4, !tbaa !22
  %indvars.iv.next489 = add nsw i64 %indvars.iv488, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next489 to i32
  %exitcond491.not = icmp eq i32 %i.ix, %lftr.wideiv
  br i1 %exitcond491.not, label %._crit_edge463, label %vec.epilog.scalar.ph, !llvm.loop !199

bb.s:                                             ; preds = %._crit_edge466.split
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.lb = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #14 ; 0 uses
  %i.lc = load i64, ptr %9, align 8, !tbaa !125
  %i.ld = add nsw i64 %i.lc, -1290608000
  %i.le = sitofp reassoc nsz arcp contract afn i64 %i.ld to double
  %i.lf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !126
  %i.lh = sitofp reassoc nsz arcp contract afn i64 %i.lg to double
  %i.li = fmul reassoc nnan nsz arcp contract afn double %i.lh, f0x3EB0C6F7A0B5ED8D
  %i.lj = fadd reassoc nsz arcp contract afn double %i.li, %i.le ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.lk = fsub reassoc nsz arcp contract afn double %i.lj, %.2432
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.la, double noundef %i.lk) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge466.split
  %.3 = phi nsz double [ %.2432, %._crit_edge466.split ], [ %i.lj, %bb.s ] ; 2 uses
  %i.ll = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.dc, ptr noundef nonnull %i.q, double noundef %i.df, i32 noundef 3, ptr noundef nonnull %i.id, i64 noundef %i.ib) #14
  %.not396 = icmp eq i32 %i.ll, 0
  br i1 %.not396, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.id) #14
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.lm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.ln = and i32 %i.lm, 4112
  %or.cond421.not = icmp eq i32 %i.ln, 4112
  br i1 %or.cond421.not, label %bb.w, label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.lp = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #14 ; 0 uses
  %i.lq = load i64, ptr %8, align 8, !tbaa !125
  %i.lr = add nsw i64 %i.lq, -1290608000
  %i.ls = sitofp reassoc nsz arcp contract afn i64 %i.lr to double
  %i.lt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !126
  %i.lv = sitofp reassoc nsz arcp contract afn i64 %i.lu to double
  %i.lw = fmul reassoc nnan nsz arcp contract afn double %i.lv, f0x3EB0C6F7A0B5ED8D
  %i.lx = fadd reassoc nsz arcp contract afn double %i.lw, %i.ls ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.ly = fsub reassoc nsz arcp contract afn double %i.lx, %.3
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.lo, double noundef %i.ly) #14
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w, %bb.v
  %.4 = phi nsz double [ %.3, %bb.v ], [ %i.lx, %bb.w ] ; 2 uses
  %i.lz = add nuw <2 x i32> %i.fz, splat (i32 1)  ; 2 uses
  %i.ma = extractelement <2 x i32> %i.lz, i64 1
  %wide.trip.count506 = zext i32 %i.ma to i64
  %i.mb = extractelement <2 x i32> %i.lz, i64 0
  %wide.trip.count500 = zext i32 %i.mb to i64
  %i.mc = extractelement <2 x i32> %i.fz, i64 0
  %i.md = zext i32 %i.hx to i64
  %min.iters.check603 = icmp ult i32 %i.mc, 7
  %i.me = and i32 %i.hx, 2147483640               ; 2 uses
  %n.vec605 = zext nneg i32 %i.me to i64          ; 2 uses
  %broadcast.splat609.a = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat611.a = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert612.a = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat613.a = shufflevector <8 x float> %broadcast.splatinsert612.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert614 = insertelement <8 x float> poison, float %i.aj, i64 0
  %broadcast.splat615 = shufflevector <8 x float> %broadcast.splatinsert614, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mf = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat615
  %cmp.n624 = icmp eq i32 %i.me, %i.hx
  %i.mg = extractelement <2 x float> %i.v, i64 0
  %i.mh = extractelement <2 x float> %i.v, i64 1
  %i.mi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge470
  %indvars.iv502 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next503, %._crit_edge470 ] ; 2 uses
  %i.mj = mul nuw nsw i64 %indvars.iv502, %i.md   ; 2 uses
  br i1 %min.iters.check603, label %scalar.ph602.preheader, label %vector.ph604

vector.ph604:                                     ; preds = %.preheader
  %broadcast.splatinsert606 = insertelement <8 x i64> poison, i64 %i.mj, i64 0
  %broadcast.splat607 = shufflevector <8 x i64> %broadcast.splatinsert606, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph604
  %index617 = phi i64 [ 0, %vector.ph604 ], [ %index.next621, %vector.body616 ]
  %vec.ind618 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph604 ], [ %vec.ind.next622, %vector.body616 ] ; 2 uses
  %i.mk = add nuw nsw <8 x i64> %broadcast.splat607, %vec.ind618
  %i.ml = shl nuw nsw <8 x i64> %i.mk, splat (i64 3)
  %wide.gep619 = getelementptr inbounds nuw i8, ptr %i.id, <8 x i64> %i.ml ; 2 uses
  %i.mm = extractelement <8 x ptr> %wide.gep619, i64 0
  %wide.vec = load <16 x float>, ptr %i.mm, align 8, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec620 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat609.a ; 2 uses
  %i.mo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec620, %broadcast.splat611.a ; 2 uses
  %i.mp = fmul reassoc nsz arcp contract afn <8 x float> %i.mn, %i.mn
  %i.mq = fmul reassoc nsz arcp contract afn <8 x float> %i.mo, %i.mo
  %i.mr = fadd reassoc nsz arcp contract afn <8 x float> %i.mq, %i.mp
  %i.ms = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat613.a, %i.mr
  %i.mt = fmul reassoc nsz arcp contract afn <8 x float> %i.ms, %i.mf ; 3 uses
  %i.mu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.mt, splat (float 1.000000e+00)
  %i.mv = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.mt, zeroinitializer
  %i.mw = select reassoc nsz arcp contract afn <8 x i1> %i.mv, <8 x float> zeroinitializer, <8 x float> %i.mt
  %i.mx = select reassoc nsz arcp contract afn <8 x i1> %i.mu, <8 x float> splat (float 1.000000e+00), <8 x float> %i.mw ; 2 uses
  %i.my = fmul reassoc nsz arcp contract afn <8 x float> %i.mx, %i.mx
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.my, <8 x ptr> align 4 %wide.gep619, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next621 = add nuw i64 %index617, 8       ; 2 uses
  %vec.ind.next622 = add nuw nsw <8 x i64> %vec.ind618, splat (i64 8)
  %i.mz = icmp eq i64 %index.next621, %n.vec605
  br i1 %i.mz, label %middle.block623, label %vector.body616, !llvm.loop !200

middle.block623:                                  ; preds = %vector.body616
  br i1 %cmp.n624, label %._crit_edge470, label %scalar.ph602.preheader

scalar.ph602.preheader:                           ; preds = %.preheader, %middle.block623
  %indvars.iv497.ph = phi i64 [ 0, %.preheader ], [ %n.vec605, %middle.block623 ]
  br label %scalar.ph602

._crit_edge473.split:                             ; preds = %._crit_edge470
  %i.na = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.nb = and i32 %i.na, 4112
  %or.cond422.not = icmp eq i32 %i.nb, 4112
  br i1 %or.cond422.not, label %bb.x, label %bb.y

._crit_edge470:                                   ; preds = %scalar.ph602, %middle.block623
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond507.not = icmp eq i64 %indvars.iv.next503, %wide.trip.count506
  br i1 %exitcond507.not, label %._crit_edge473.split, label %.preheader

scalar.ph602:                                     ; preds = %scalar.ph602.preheader, %scalar.ph602
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %scalar.ph602 ], [ %indvars.iv497.ph, %scalar.ph602.preheader ] ; 2 uses
  %i.nc = add nuw nsw i64 %i.mj, %indvars.iv497
  %.idx437 = shl nuw nsw i64 %i.nc, 3
  %i.nd = getelementptr inbounds nuw i8, ptr %i.id, i64 %.idx437 ; 3 uses
  %i.ne = load float, ptr %i.nd, align 8, !tbaa !22
  %i.nf = fsub reassoc nsz arcp contract afn float %i.ne, %i.mg ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !22
  %i.ni = fsub reassoc nsz arcp contract afn float %i.nh, %i.mh ; 2 uses
  %.neg439.a = fmul reassoc nsz arcp contract afn float %i.nf, %i.nf
  %.neg440 = fmul reassoc nsz arcp contract afn float %i.ni, %i.ni
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg440, %.neg439.a
  %i.nj = fsub reassoc nsz arcp contract afn float %i.ai, %reass.add
  %i.nk = fmul reassoc nsz arcp contract afn float %i.nj, %i.mi ; 3 uses
  %i.nl = fcmp reassoc nsz arcp contract afn ogt float %i.nk, 1.000000e+00
  %i.nm = fcmp reassoc nsz arcp contract afn olt float %i.nk, 0.000000e+00
  %i.nn = select reassoc nsz arcp contract afn i1 %i.nm, float 0.000000e+00, float %i.nk
  %i.no = select reassoc nsz arcp contract afn i1 %i.nl, float 1.000000e+00, float %i.nn ; 2 uses
  %i.np = fmul reassoc nsz arcp contract afn float %i.no, %i.no
  store float %i.np, ptr %i.nd, align 8, !tbaa !22
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %exitcond501.not = icmp eq i64 %indvars.iv.next498, %wide.trip.count500
  br i1 %exitcond501.not, label %._crit_edge470, label %scalar.ph602, !llvm.loop !201

bb.x:                                             ; preds = %._crit_edge473.split
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.nr = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #14 ; 0 uses
  %i.ns = load i64, ptr %7, align 8, !tbaa !125
  %i.nt = add nsw i64 %i.ns, -1290608000
  %i.nu = sitofp reassoc nsz arcp contract afn i64 %i.nt to double
  %i.nv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !126
  %i.nx = sitofp reassoc nsz arcp contract afn i64 %i.nw to double
  %i.ny = fmul reassoc nnan nsz arcp contract afn double %i.nx, f0x3EB0C6F7A0B5ED8D
  %i.nz = fadd reassoc nsz arcp contract afn double %i.ny, %i.nu ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.oa = fsub reassoc nsz arcp contract afn double %i.nz, %.4
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.nq, double noundef %i.oa) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge473.split
  %.5 = phi nsz double [ %.4, %._crit_edge473.split ], [ %i.nz, %bb.x ]
  %i.ob = extractelement <2 x i32> %i.fy, i64 0
  %i.oc = mul i32 %i.ob, %i.ar
  %i.od = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.oc) ; 2 uses
  %i.oe = mul nsw i32 %i.if, %i.ar
  %i.of = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.oe) ; 2 uses
  %i.og = mul nsw i32 %i.ig, %i.ar                ; 2 uses
  %i.oh = icmp slt i32 %i.og, %i.of
  br i1 %i.oh, label %.lr.ph480, label %._crit_edge481.split

.lr.ph480:                                        ; preds = %bb.y
  %i.oi = extractelement <2 x i32> %i.fp, i64 0   ; 2 uses
  %i.oj = mul nsw i32 %i.oi, %i.ar                ; 3 uses
  %i.ok = icmp slt i32 %i.oj, %i.od
  br i1 %i.ok, label %.lr.ph476.preheader, label %._crit_edge481.split

.lr.ph476.preheader:                              ; preds = %.lr.ph480
  %i.ol = mul nsw i32 %i.ar, %i.ar
  %i.om = uitofp nneg i32 %i.ol to float          ; 2 uses
  %i.on = sext i32 %i.oj to i64                   ; 4 uses
  %i.oo = sext i32 %i.og to i64
  %wide.trip.count516 = sext i32 %i.of to i64
  %wide.trip.count511 = sext i32 %i.od to i64     ; 2 uses
  %i.op = zext i32 %i.hx to i64
  %i.oq = sub nsw i64 %wide.trip.count511, %i.on  ; 3 uses
  %min.iters.check627 = icmp ult i64 %i.oq, 8
  %n.vec629 = and i64 %i.oq, -8                   ; 3 uses
  %i.or = add nsw i64 %n.vec629, %i.on
  %broadcast.splatinsert636 = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat637.a = shufflevector <8 x i32> %broadcast.splatinsert636, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat639.a = shufflevector <2 x i32> %i.fp, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat641.a = shufflevector <2 x i64> %i.gb, <2 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert642.a = insertelement <8 x float> poison, float %i.om, i64 0
  %broadcast.splat643.a = shufflevector <8 x float> %broadcast.splatinsert642.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert644 = insertelement <8 x i32> poison, i32 %i.oj, i64 0
  %broadcast.splat645 = shufflevector <8 x i32> %broadcast.splatinsert644, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction646 = add <8 x i32> %broadcast.splat645, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.os = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat643.a
  %cmp.n660 = icmp eq i64 %i.oq, %n.vec629
  %i.ot = zext i32 %i.hx to i64
  %i.ou = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.om
  br label %.lr.ph476

._crit_edge481.split:                             ; preds = %._crit_edge477, %.lr.ph480, %bb.y
  tail call void @free(ptr noundef nonnull %i.id) #14
  %i.ov = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123 ; 2 uses
  %i.ow = and i32 %i.ov, 4112
  %or.cond423.not = icmp eq i32 %i.ow, 4112
  br i1 %or.cond423.not, label %bb.z, label %bb.aa

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %._crit_edge477
  %indvars.iv513 = phi i64 [ %i.oo, %.lr.ph476.preheader ], [ %indvars.iv.next514, %._crit_edge477 ] ; 3 uses
  %i.ox = trunc nsw i64 %indvars.iv513 to i32     ; 2 uses
  %i.oy = srem i32 %i.ox, %i.ar                   ; 2 uses
  %i.oz = sdiv i32 %i.ox, %i.ar
  %i.pa = sub nsw i32 %i.oz, %i.ig
  %i.pb = sext i32 %i.pa to i64
  %i.pc = mul nsw i64 %i.pb, %i.op                ; 2 uses
  %i.pd = sub nsw i32 %i.ar, %i.oy
  %i.pe = sitofp reassoc nsz arcp contract afn i32 %i.pd to float ; 2 uses
  %i.pf = sitofp reassoc nsz arcp contract afn i32 %i.oy to float ; 2 uses
  %i.pg = mul nsw i64 %indvars.iv513, %i.bc
  %i.ph = getelementptr [4 x i8], ptr %4, i64 %i.pg ; 2 uses
  br i1 %min.iters.check627, label %scalar.ph626.preheader, label %vector.ph628

vector.ph628:                                     ; preds = %.lr.ph476
  %broadcast.splatinsert630.a = insertelement <8 x i64> poison, i64 %i.pc, i64 0
  %broadcast.splat631.a = shufflevector <8 x i64> %broadcast.splatinsert630.a, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert632.a = insertelement <8 x float> poison, float %i.pe, i64 0
  %broadcast.splat633.a = shufflevector <8 x float> %broadcast.splatinsert632.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert634 = insertelement <8 x float> poison, float %i.pf, i64 0
  %broadcast.splat635 = shufflevector <8 x float> %broadcast.splatinsert634, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.op674 = add <8 x i64> %broadcast.splat631.a, %broadcast.splat641.a
  %invariant.gep = getelementptr [4 x i8], ptr %i.ph, i64 %i.on
  br label %vector.body647

vector.body647:                                   ; preds = %vector.body647, %vector.ph628
  %index648 = phi i64 [ 0, %vector.ph628 ], [ %index.next657, %vector.body647 ] ; 2 uses
  %vec.ind649 = phi <8 x i32> [ %induction646, %vector.ph628 ], [ %vec.ind.next658, %vector.body647 ] ; 2 uses
  %vec.ind649.frozen = freeze <8 x i32> %vec.ind649 ; 2 uses
  %broadcast.splat637.frozen = freeze <8 x i32> %broadcast.splat637.a ; 2 uses
  %i.pi = sdiv <8 x i32> %vec.ind649.frozen, %broadcast.splat637.frozen ; 2 uses
  %i.pj = mul <8 x i32> %i.pi, %broadcast.splat637.frozen
  %.decomposed = sub <8 x i32> %vec.ind649.frozen, %i.pj ; 2 uses
  %i.pk = sub nsw <8 x i32> %i.pi, %broadcast.splat639.a
  %i.pl = sext <8 x i32> %i.pk to <8 x i64>       ; 2 uses
  %i.pm = add nsw <8 x i64> %broadcast.splat631.a, %i.pl
  %i.pn = shl nsw <8 x i64> %i.pm, splat (i64 3)
  %wide.gep650 = getelementptr inbounds nuw i8, ptr %i.id, <8 x i64> %i.pn ; 2 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep650, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.po = sub nsw <8 x i32> %broadcast.splat637.a, %.decomposed
  %i.pp = sitofp reassoc nsz arcp contract afn <8 x i32> %i.po to <8 x float> ; 2 uses
  %i.pq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.pp
  %wide.gep651.a = getelementptr i8, <8 x ptr> %wide.gep650, i64 8
  %wide.masked.gather652.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep651.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pr = sitofp reassoc nsz arcp contract afn <8 x i32> %.decomposed to <8 x float> ; 2 uses
  %i.ps = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather652.a, %i.pr
  %i.pt = fadd reassoc nsz arcp contract afn <8 x float> %i.ps, %i.pq
  %i.pu = fmul reassoc nsz arcp contract afn <8 x float> %i.pt, %broadcast.splat633.a
  %.reass675 = add <8 x i64> %i.pl, %invariant.op674
  %i.pv = shl nsw <8 x i64> %.reass675, splat (i64 3)
  %wide.gep653.a = getelementptr inbounds nuw i8, ptr %i.id, <8 x i64> %i.pv ; 2 uses
  %wide.masked.gather654.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep653.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.pw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather654.a, %i.pp
  %wide.gep655 = getelementptr i8, <8 x ptr> %wide.gep653.a, i64 8
  %wide.masked.gather656 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep655, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.px = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather656, %i.pr
  %i.py = fadd reassoc nsz arcp contract afn <8 x float> %i.px, %i.pw
  %i.pz = fmul reassoc nsz arcp contract afn <8 x float> %i.py, %broadcast.splat635
  %i.qa = fadd reassoc nsz arcp contract afn <8 x float> %i.pz, %i.pu
  %i.qb = fmul reassoc nsz arcp contract afn <8 x float> %i.qa, %i.os
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index648
  store <8 x float> %i.qb, ptr %gep, align 4, !tbaa !22
  %index.next657 = add nuw i64 %index648, 8       ; 2 uses
  %vec.ind.next658 = add <8 x i32> %vec.ind649, splat (i32 8)
  %i.qc = icmp eq i64 %index.next657, %n.vec629
  br i1 %i.qc, label %middle.block659, label %vector.body647, !llvm.loop !202

middle.block659:                                  ; preds = %vector.body647
  br i1 %cmp.n660, label %._crit_edge477, label %scalar.ph626.preheader

scalar.ph626.preheader:                           ; preds = %.lr.ph476, %middle.block659
  %indvars.iv508.ph = phi i64 [ %i.on, %.lr.ph476 ], [ %i.or, %middle.block659 ]
  br label %scalar.ph626

._crit_edge477:                                   ; preds = %scalar.ph626, %middle.block659
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count516
  br i1 %exitcond517.not, label %._crit_edge481.split, label %.lr.ph476

scalar.ph626:                                     ; preds = %scalar.ph626.preheader, %scalar.ph626
  %indvars.iv508 = phi i64 [ %indvars.iv.next509, %scalar.ph626 ], [ %indvars.iv508.ph, %scalar.ph626.preheader ] ; 3 uses
  %i.qd = trunc nsw i64 %indvars.iv508 to i32     ; 2 uses
  %i.qe = srem i32 %i.qd, %i.ar                   ; 2 uses
  %i.qf = sdiv i32 %i.qd, %i.ar
  %i.qg = sub nsw i32 %i.qf, %i.oi
  %i.qh = sext i32 %i.qg to i64
  %i.qi = add nsw i64 %i.pc, %i.qh                ; 2 uses
  %.idx = shl nsw i64 %i.qi, 3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.id, i64 %.idx ; 2 uses
  %i.qk = load float, ptr %i.qj, align 8, !tbaa !22
  %i.ql = sub nsw i32 %i.ar, %i.qe
  %i.qm = sitofp reassoc nsz arcp contract afn i32 %i.ql to float ; 2 uses
  %i.qn = fmul reassoc nsz arcp contract afn float %i.qk, %i.qm
  %i.qo = getelementptr i8, ptr %i.qj, i64 8
  %i.qp = load float, ptr %i.qo, align 8, !tbaa !22
  %i.qq = sitofp reassoc nsz arcp contract afn i32 %i.qe to float ; 2 uses
  %i.qr = fmul reassoc nsz arcp contract afn float %i.qp, %i.qq
  %i.qs = fadd reassoc nsz arcp contract afn float %i.qr, %i.qn
  %i.qt = fmul reassoc nsz arcp contract afn float %i.qs, %i.pe
  %i.qu = add nsw i64 %i.qi, %i.ot
  %.idx407 = shl nsw i64 %i.qu, 3
  %i.qv = getelementptr inbounds nuw i8, ptr %i.id, i64 %.idx407 ; 2 uses
  %i.qw = load float, ptr %i.qv, align 8, !tbaa !22
  %i.qx = fmul reassoc nsz arcp contract afn float %i.qw, %i.qm
  %i.qy = getelementptr i8, ptr %i.qv, i64 8
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !22
  %i.ra = fmul reassoc nsz arcp contract afn float %i.qz, %i.qq
  %reass.add443 = fadd reassoc nsz arcp contract afn float %i.ra, %i.qx
  %reass.mul444 = fmul reassoc nsz arcp contract afn float %reass.add443, %i.pf
  %i.rb = fadd reassoc nsz arcp contract afn float %reass.mul444, %i.qt
  %i.rc = fmul reassoc nsz arcp contract afn float %i.rb, %i.ou
  %i.rd = getelementptr [4 x i8], ptr %i.ph, i64 %indvars.iv508
  store float %i.rc, ptr %i.rd, align 4, !tbaa !22
  %indvars.iv.next509 = add nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next509, %wide.trip.count511
  br i1 %exitcond512.not, label %._crit_edge477, label %scalar.ph626, !llvm.loop !203

bb.z:                                             ; preds = %._crit_edge481.split
  %i.re = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.rf = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #14 ; 0 uses
  %i.rg = load i64, ptr %6, align 8, !tbaa !125
  %i.rh = add nsw i64 %i.rg, -1290608000
  %i.ri = sitofp reassoc nsz arcp contract afn i64 %i.rh to double
  %i.rj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !126
  %i.rl = sitofp reassoc nsz arcp contract afn i64 %i.rk to double
  %i.rm = fmul reassoc nnan nsz arcp contract afn double %i.rl, f0x3EB0C6F7A0B5ED8D
  %i.rn = fadd reassoc nsz arcp contract afn double %i.rm, %i.ri
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.ro = fsub reassoc nsz arcp contract afn double %i.rn, %.5
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.re, double noundef %i.ro) #14
  %.pre518 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge481.split, %bb.z
  %i.rp = phi i32 [ %i.ov, %._crit_edge481.split ], [ %.pre518, %bb.z ]
  %i.rq = and i32 %i.rp, 4112
  %or.cond424.not = icmp eq i32 %i.rq, 4112
  br i1 %or.cond424.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.rs = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #14 ; 0 uses
  %i.rt = load i64, ptr %5, align 8, !tbaa !125
  %i.ru = add nsw i64 %i.rt, -1290608000
  %i.rv = sitofp reassoc nsz arcp contract afn i64 %i.ru to double
  %i.rw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !126
  %i.ry = sitofp reassoc nsz arcp contract afn i64 %i.rx to double
  %i.rz = fmul reassoc nnan nsz arcp contract afn double %i.ry, f0x3EB0C6F7A0B5ED8D
  %i.sa = fadd reassoc nsz arcp contract afn double %i.rz, %i.rv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.sb = fsub reassoc nsz arcp contract afn double %i.sa, %i.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.rr, double noundef %i.sb) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.q, %bb.aa, %bb.ab, %bb.r, %bb.u, %bb.d, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.q ], [ 0, %bb.u ], [ 0, %bb.r ], [ 1, %bb.ab ], [ 1, %bb.aa ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_area(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
end_hunk_1
