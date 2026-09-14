Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dwt?download=true
inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dwt_local = type { ptr, i32, i32, i32 }
%struct.v8dwt_local = type { ptr, i32, i32, i32, i32, i32, i32, i32 }

@opj_dwt_norms = internal unnamed_addr constant [4 x [10 x double]] [[10 x double] [double 1.000000e+00, double 1.500000e+00, double 2.750000e+00, double 5.375000e+00, double 1.068000e+01, double 2.134000e+01, double 4.267000e+01, double f0x4055551EB851EB85, double 1.707000e+02, double 3.413000e+02], [10 x double] [double 1.038000e+00, double 1.592000e+00, double 2.919000e+00, double 5.703000e+00, double 1.133000e+01, double 2.264000e+01, double 4.525000e+01, double 9.048000e+01, double 1.809000e+02, double 0.000000e+00], [10 x double] [double 1.038000e+00, double 1.592000e+00, double 2.919000e+00, double 5.703000e+00, double 1.133000e+01, double 2.264000e+01, double 4.525000e+01, double 9.048000e+01, double 1.809000e+02, double 0.000000e+00], [10 x double] [double 7.186000e-01, double f0x3FED7F62B6AE7D56, double 1.586000e+00, double 3.043000e+00, double 6.019000e+00, double 1.201000e+01, double 2.400000e+01, double 4.797000e+01, double 9.593000e+01, double 0.000000e+00]], align 16
@opj_dwt_norms_real = internal unnamed_addr constant [4 x [10 x double]] [[10 x double] [double 1.000000e+00, double 1.965000e+00, double 4.177000e+00, double 8.403000e+00, double 1.690000e+01, double 3.384000e+01, double f0x4050EC28F5C28F5C, double 1.353000e+02, double 2.706000e+02, double 5.409000e+02], [10 x double] [double 2.022000e+00, double 3.989000e+00, double 8.355000e+00, double 1.704000e+01, double 3.427000e+01, double 6.863000e+01, double 1.373000e+02, double 2.746000e+02, double 5.490000e+02, double 0.000000e+00], [10 x double] [double 2.022000e+00, double 3.989000e+00, double 8.355000e+00, double 1.704000e+01, double 3.427000e+01, double 6.863000e+01, double 1.373000e+02, double 2.746000e+02, double 5.490000e+02, double 0.000000e+00], [10 x double] [double 2.080000e+00, double 3.865000e+00, double 8.307000e+00, double 1.718000e+01, double 3.471000e+01, double 6.959000e+01, double 1.393000e+02, double 2.786000e+02, double 5.572000e+02, double 0.000000e+00]], align 16

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @opj_dwt_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call fastcc i32 @opj_dwt_encode_procedure(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_v, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_h_one_row)
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_dwt_encode_procedure(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @opj_thread_pool_get_thread_count(ptr noundef %0) #15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !103
  %i.f = load i32, ptr %1, align 8, !tbaa !104
  %i.g = sub nsw i32 %i.e, %i.f                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 3 uses
  %i.j = add i32 %i.i, -1                         ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 3 uses
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [192 x i8], ptr %i.l, i64 %i.m
  %.not15.i = icmp eq i32 %i.j, 0                 ; 2 uses
  br i1 %.not15.i, label %opj_dwt_max_resolution.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %i.j, 1
  %i.o = icmp eq i32 %i.i, 2
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.j, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.017.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.2.i.1, %.lr.ph.i ]
  %.01116.i = phi ptr [ %i.l, %.lr.ph.i.preheader.new ], [ %i.z, %.lr.ph.i ] ; 8 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.01116.i, i64 192
  %i.q = getelementptr inbounds nuw i8, ptr %.01116.i, i64 200
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31, !alias.scope !105
  %i.s = load i32, ptr %i.p, align 8, !tbaa !32, !alias.scope !105
  %i.t = sub nsw i32 %i.r, %i.s
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.017.i, i32 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.01116.i, i64 204
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33, !alias.scope !105
  %i.w = getelementptr inbounds nuw i8, ptr %.01116.i, i64 196
  %i.x = load i32, ptr %i.w, align 4, !tbaa !34, !alias.scope !105
  %i.y = sub nsw i32 %i.v, %i.x
  %.2.i = tail call i32 @llvm.umax.i32(i32 %spec.select.i, i32 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.01116.i, i64 384 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01116.i, i64 392
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31, !alias.scope !105
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !32, !alias.scope !105
  %i.ad = sub nsw i32 %i.ab, %i.ac
  %spec.select.i.1 = tail call i32 @llvm.umax.i32(i32 %.2.i, i32 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01116.i, i64 396
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33, !alias.scope !105
  %i.ag = getelementptr inbounds nuw i8, ptr %.01116.i, i64 388
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34, !alias.scope !105
  %i.ai = sub nsw i32 %i.af, %i.ah
  %.2.i.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.1, i32 %i.ai) ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %opj_dwt_max_resolution.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

opj_dwt_max_resolution.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %opj_dwt_max_resolution.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_dwt_max_resolution.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.017.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.2.i.1, %opj_dwt_max_resolution.exit.loopexit.unr-lcssa ]
  %.01116.i.epil.init = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.z, %opj_dwt_max_resolution.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod261 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod261)
  %i.aj = getelementptr inbounds nuw i8, ptr %.01116.i.epil.init, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %.01116.i.epil.init, i64 200
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !31, !alias.scope !105
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !32, !alias.scope !105
  %i.an = sub nsw i32 %i.al, %i.am
  %spec.select.i.epil = tail call i32 @llvm.umax.i32(i32 %.017.i.epil.init, i32 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.01116.i.epil.init, i64 204
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !33, !alias.scope !105
  %i.aq = getelementptr inbounds nuw i8, ptr %.01116.i.epil.init, i64 196
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34, !alias.scope !105
  %i.as = sub nsw i32 %i.ap, %i.ar
  %.2.i.epil = tail call i32 @llvm.umax.i32(i32 %spec.select.i.epil, i32 %i.as)
  br label %opj_dwt_max_resolution.exit

opj_dwt_max_resolution.exit:                      ; preds = %.lr.ph.i.epil.preheader, %opj_dwt_max_resolution.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.2.i.1, %opj_dwt_max_resolution.exit.loopexit.unr-lcssa ], [ %.2.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.at = zext i32 %.0.lcssa.i to i64
  %i.au = shl nuw nsw i64 %i.at, 5                ; 3 uses
  %i.av = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.au) #15 ; 5 uses
  %i.aw = icmp eq i32 %.0.lcssa.i, 0
  %i.ax = icmp ne ptr %i.av, null
  %or.cond = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond, label %.preheader214, label %.critedge210

.preheader214:                                    ; preds = %opj_dwt_max_resolution.exit
  br i1 %.not15.i, label %.critedge210.sink.split, label %.lr.ph226

.lr.ph226:                                        ; preds = %.preheader214
  %i.ay = add i32 %i.i, -2
  %i.az = icmp slt i32 %i.a, 2                    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph226, %.loopexit
  %i.ba = phi i32 [ %i.ay, %.lr.ph226 ], [ %i.dy, %.loopexit ] ; 2 uses
  %.0188224 = phi ptr [ %i.n, %.lr.ph226 ], [ %.0186225, %.loopexit ] ; 8 uses
  %.0186225 = getelementptr inbounds i8, ptr %.0188224, i64 -192 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0188224, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load i32, ptr %.0188224, align 8, !tbaa !32 ; 2 uses
  %i.be = sub nsw i32 %i.bc, %i.bd                ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0188224, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0188224, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !34 ; 3 uses
  %i.bj = sub i32 %i.bg, %i.bi                    ; 9 uses
  %i.bk = getelementptr inbounds i8, ptr %.0188224, i64 -184
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !31
  %i.bm = load i32, ptr %.0186225, align 8, !tbaa !32
  %i.bn = sub nsw i32 %i.bl, %i.bm                ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.0188224, i64 -180
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !33
  %i.bq = getelementptr inbounds i8, ptr %.0188224, i64 -188
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !34
  %i.bs = sub nsw i32 %i.bp, %i.br                ; 2 uses
  %i.bt = and i32 %i.bd, 1                        ; 2 uses
  %i.bu = and i32 %i.bi, 1                        ; 3 uses
  %i.bv = sub i32 %i.bj, %i.bs
  %i.bw = icmp ult i32 %i.be, 16
  %or.cond7 = select i1 %i.az, i1 true, i1 %i.bw
  br i1 %or.cond7, label %.preheader213, label %bb.e

.preheader213:                                    ; preds = %bb.b
  %i.bx = icmp ugt i32 %i.be, 7
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader213
  %i.by = xor i32 %i.bu, 1
  %4 = zext i32 %i.be to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  tail call void %2(ptr noundef %i.bz, ptr noundef %i.av, i32 noundef %i.bj, i32 noundef %i.by, i32 noundef %i.g, i32 noundef 8) #15, !callees !106
  %5 = or disjoint i64 %indvars.iv.next, 7
  %i.ca = icmp samesign ult i64 %5, %4
  br i1 %i.ca, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !98

._crit_edge.loopexit:                             ; preds = %bb.c
  %6 = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader213
  %.0177.lcssa = phi i32 [ 0, %.preheader213 ], [ %6, %._crit_edge.loopexit ] ; 3 uses
  %i.cb = icmp ult i32 %.0177.lcssa, %i.be
  br i1 %i.cb, label %bb.d, label %bb.k

bb.d:                                             ; preds = %._crit_edge
  %i.cc = zext i32 %.0177.lcssa to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cc
  %i.ce = xor i32 %i.bu, 1
  %i.cf = sub nuw i32 %i.be, %.0177.lcssa
  tail call void %2(ptr noundef %i.cd, ptr noundef %i.av, i32 noundef %i.bj, i32 noundef %i.ce, i32 noundef %i.g, i32 noundef %i.cf) #15, !callees !106
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %i.a) ; 3 uses
  %i.cg = udiv i32 %i.be, %spec.select
  %i.ch = and i32 %i.cg, -8                       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.1178217 = phi i32 [ 0, %bb.e ], [ %i.cs, %.critedge ] ; 2 uses
  %i.ci = tail call ptr @opj_malloc(i64 noundef 56) #15 ; 13 uses
  %.not199 = icmp eq ptr %i.ci, null
  br i1 %.not199, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.critedge210.sink.split

bb.h:                                             ; preds = %bb.f
  %i.cj = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.au) #15 ; 2 uses
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !38
  %.not200 = icmp eq ptr %i.cj, null
  br i1 %.not200, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.ci) #15
  br label %.critedge210.sink.split

.critedge:                                        ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.bv, ptr %i.ck, align 8, !tbaa !107
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 %i.bs, ptr %i.cl, align 4, !tbaa !108
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i32 %i.bu, ptr %i.cm, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i32 %i.bj, ptr %i.cn, align 8, !tbaa !40
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  store i32 %i.g, ptr %i.co, align 4, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store ptr %i.c, ptr %i.cp, align 8, !tbaa !42
  %i.cq = mul i32 %.1178217, %i.ch
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !43
  %i.cs = add nuw i32 %.1178217, 1                ; 4 uses
  %i.ct = icmp eq i32 %i.cs, %spec.select
  %i.cu = mul i32 %i.cs, %i.ch
  %i.cv = select i1 %i.ct, i32 %i.be, i32 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store ptr %2, ptr %i.cx, align 8, !tbaa !45
  %i.cy = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_v_func, ptr noundef nonnull %i.ci) #15 ; 0 uses
  %exitcond.not = icmp eq i32 %i.cs, %spec.select
  br i1 %exitcond.not, label %bb.j, label %bb.f, !llvm.loop !99

bb.j:                                             ; preds = %.critedge
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge, %bb.d
  %i.cz = sub i32 %i.be, %i.bn
  %i.da = icmp ult i32 %i.bj, 2
  %or.cond9 = select i1 %i.az, i1 true, i1 %i.da
  br i1 %or.cond9, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k
  %.not228 = icmp eq i32 %i.bg, %i.bi
  br i1 %.not228, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader
  %i.db = xor i32 %i.bt, 1
  %wide.trip.count = zext i32 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph221, %bb.l
  %indvars.iv.a = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next.a, %bb.l ] ; 2 uses
  %i.dc = trunc nuw i64 %indvars.iv.a to i32
  %i.dd = mul i32 %i.g, %i.dc
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.de
  tail call void %3(ptr noundef %i.df, ptr noundef %i.av, i32 noundef %i.be, i32 noundef %i.db) #15, !callees !109
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond236.not, label %.loopexit, label %bb.l, !llvm.loop !100

bb.m:                                             ; preds = %bb.k
  %spec.select205 = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.a) ; 3 uses
  %i.dg = udiv i32 %i.bj, %spec.select205         ; 2 uses
  %i.dh = add nsw i32 %spec.select205, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge208
  %.3180219 = phi i32 [ 0, %bb.m ], [ %i.ds, %.critedge208 ] ; 3 uses
  %i.di = tail call ptr @opj_malloc(i64 noundef 56) #15 ; 13 uses
  %.not202 = icmp eq ptr %i.di, null
  br i1 %.not202, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.critedge210.sink.split

bb.p:                                             ; preds = %bb.n
  %i.dj = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.au) #15 ; 2 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !38
  %.not203 = icmp eq ptr %i.dj, null
  br i1 %.not203, label %bb.q, label %.critedge208

bb.q:                                             ; preds = %bb.p
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.di) #15
  br label %.critedge210.sink.split

.critedge208:                                     ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %i.cz, ptr %i.dk, align 8, !tbaa !107
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 %i.bn, ptr %i.dl, align 4, !tbaa !108
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i32 %i.bt, ptr %i.dm, align 8, !tbaa !39
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i32 %i.be, ptr %i.dn, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store i32 %i.g, ptr %i.do, align 4, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store ptr %i.c, ptr %i.dp, align 8, !tbaa !42
  %i.dq = mul i32 %.3180219, %i.dg
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !43
  %i.ds = add nuw i32 %.3180219, 1                ; 3 uses
  %i.dt = mul i32 %i.ds, %i.dg
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 44
  %i.dv = icmp eq i32 %.3180219, %i.dh
  %spec.select206 = select i1 %i.dv, i32 %i.bj, i32 %i.dt
  store i32 %spec.select206, ptr %i.du, align 4, !tbaa !44
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store ptr %3, ptr %i.dw, align 8, !tbaa !45
  %i.dx = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_h_func, ptr noundef nonnull %i.di) #15 ; 0 uses
  %exitcond234.not = icmp eq i32 %i.ds, %spec.select205
  br i1 %exitcond234.not, label %bb.r, label %bb.n, !llvm.loop !101

bb.r:                                             ; preds = %.critedge208
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.r
  %i.dy = add nsw i32 %i.ba, -1
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %.critedge210.sink.split, label %bb.b, !llvm.loop !102

.critedge210.sink.split:                          ; preds = %.loopexit, %.preheader214, %bb.g, %bb.i, %bb.o, %bb.q
  %.10.ph = phi i32 [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %.preheader214 ], [ 1, %.loopexit ]
  tail call void @opj_aligned_free(ptr noundef %i.av) #15
  br label %.critedge210

.critedge210:                                     ; preds = %.critedge210.sink.split, %opj_dwt_max_resolution.exit
  %.10 = phi i32 [ 0, %opj_dwt_max_resolution.exit ], [ %.10.ph, %.critedge210.sink.split ]
  ret i32 %.10
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_v(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 5 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 4 uses
  %i.e = lshr i32 %i.d, 1                         ; 14 uses
  %i.f = sub i32 %2, %i.e                         ; 10 uses
  %i.g = icmp eq i32 %5, 8                        ; 2 uses
  %.not41.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %i.g, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.a
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit.thread, label %.preheader32.lr.ph.i

.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.i = shl nuw nsw i32 %i.h, 2
  %narrow.i = add nuw nsw i32 %i.i, 4
  %i.j = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.k = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %5, 20
end_hunk_0
begin_hunk_1_@opj_dwt_decode_real:bb.a
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.bu
  store <4 x float> %i.fc, ptr %i.fd, align 4, !tbaa !79, !alias.scope !305, !noalias !306
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  %i.fi = load float, ptr %i.fe, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.fj = load float, ptr %i.ff, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.fk = load float, ptr %i.fg, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.fl = load float, ptr %i.fh, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.fm = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fn = insertelement <4 x float> %i.fm, float %i.fj, i64 1
  %i.fo = insertelement <4 x float> %i.fn, float %i.fk, i64 2
  %i.fp = insertelement <4 x float> %i.fo, float %i.fl, i64 3
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index183
  store <4 x float> %i.fp, ptr %i.fq, align 4, !tbaa !79, !alias.scope !307, !noalias !308
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ec, i64 44
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ee, i64 76
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 108
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.fw = load float, ptr %i.fs, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.fz = insertelement <4 x float> poison, float %i.fv, i64 0
  %i.ga = insertelement <4 x float> %i.fz, float %i.fw, i64 1
  %i.gb = insertelement <4 x float> %i.ga, float %i.fx, i64 2
  %i.gc = insertelement <4 x float> %i.gb, float %i.fy, i64 3
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index183
  store <4 x float> %i.gc, ptr %i.gd, align 4, !tbaa !79, !alias.scope !309, !noalias !310
  %index.next184 = add nuw i64 %index183, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next184, %n.vec181
  br i1 %i.ge, label %scalar.ph178.preheader, label %vector.body182, !llvm.loop !267

.lr.ph322.i:                                      ; preds = %scalar.ph178
  %i.gf = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx.i ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx274.i ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx275.i ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx276.i ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph322.i
  %indvars.iv367.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph322.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph322.i
  %bound0 = icmp ult ptr %i.gf, %scevgep91
  %bound1 = icmp ult ptr %i.gg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound096 = icmp ult ptr %i.gf, %scevgep92
  %bound197 = icmp ult ptr %i.gh, %scevgep
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx = or i1 %found.conflict, %found.conflict98
  %bound099 = icmp ult ptr %i.gf, %scevgep93
  %bound1100 = icmp ult ptr %i.gi, %scevgep
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx, %found.conflict101
  %bound0103 = icmp ult ptr %i.gf, %scevgep95
  %bound1104 = icmp ult ptr %scevgep94, %scevgep
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx102, %found.conflict105
  %bound0107 = icmp ult ptr %i.gg, %scevgep92
  %bound1108 = icmp ult ptr %i.gh, %scevgep91
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx106, %found.conflict109
  %bound0111 = icmp ult ptr %i.gg, %scevgep93
  %bound1112 = icmp ult ptr %i.gi, %scevgep91
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  %bound0115 = icmp ult ptr %i.gg, %scevgep95
  %bound1116 = icmp ult ptr %scevgep94, %scevgep91
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx114, %found.conflict117
  %bound0119 = icmp ult ptr %i.gh, %scevgep93
  %bound1120 = icmp ult ptr %i.gi, %scevgep92
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  %bound0123 = icmp ult ptr %i.gh, %scevgep95
  %bound1124 = icmp ult ptr %scevgep94, %scevgep92
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ult ptr %i.gi, %scevgep95
  %bound1128 = icmp ult ptr %scevgep94, %scevgep93
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  br i1 %conflict.rdx130, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 112
  %i.gr = load float, ptr %i.gn, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.gs = load float, ptr %i.go, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.gu = load float, ptr %i.gq, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.gv = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.gt, i64 2
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 3
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index
  store <4 x float> %i.gy, ptr %i.gz, align 4, !tbaa !79, !alias.scope !312, !noalias !313
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 84
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gm, i64 116
  %i.he = load float, ptr %i.ha, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hh = load float, ptr %i.hd, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hi = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hj = insertelement <4 x float> %i.hi, float %i.hf, i64 1
  %i.hk = insertelement <4 x float> %i.hj, float %i.hg, i64 2
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 3
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index
  store <4 x float> %i.hl, ptr %i.hm, align 4, !tbaa !79, !alias.scope !314, !noalias !315
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gl, i64 88
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  %i.hr = load float, ptr %i.hn, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hs = load float, ptr %i.ho, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hv = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.hw = insertelement <4 x float> %i.hv, float %i.hs, i64 1
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 2
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 3
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index
  store <4 x float> %i.hy, ptr %i.hz, align 4, !tbaa !79, !alias.scope !316, !noalias !317
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gj, i64 28
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gk, i64 60
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gl, i64 92
  %i.id = getelementptr inbounds nuw i8, ptr %i.gm, i64 124
  %i.ie = load float, ptr %i.ia, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.if = load float, ptr %i.ib, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ig = load float, ptr %i.ic, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ih = load float, ptr %i.id, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ii = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.if, i64 1
  %i.ik = insertelement <4 x float> %i.ij, float %i.ig, i64 2
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 3
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index
  store <4 x float> %i.il, ptr %i.im, align 4, !tbaa !79, !alias.scope !318, !noalias !319
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %scalar.ph.preheader, label %vector.body, !llvm.loop !274

scalar.ph178:                                     ; preds = %scalar.ph178.preheader, %scalar.ph178
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph178 ], [ %indvars.iv.i.ph, %scalar.ph178.preheader ] ; 5 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.i ; 4 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !50, !noalias !300
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0226323.i, i64 %indvars.iv.i ; 2 uses
  store float %i.ip, ptr %i.iq, align 4, !tbaa !79, !noalias !300
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !50, !noalias !300
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.bu
  store float %i.is, ptr %i.it, align 4, !tbaa !79, !noalias !300
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !50, !noalias !300
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i
  store float %i.iv, ptr %i.iw, align 4, !tbaa !79, !noalias !300
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !50, !noalias !300
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i
  store float %i.iy, ptr %i.iz, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond366.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond366.not.i, label %.lr.ph322.i, label %scalar.ph178, !llvm.loop !275

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv367.i = phi i64 [ %indvars.iv.next368.i, %scalar.ph ], [ %indvars.iv367.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv367.i ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !50, !noalias !300
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv367.i
  store float %i.jc, ptr %i.jd, align 4, !tbaa !79, !noalias !300
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  %i.jf = load float, ptr %i.je, align 4, !tbaa !50, !noalias !300
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv367.i
  store float %i.jf, ptr %i.jg, align 4, !tbaa !79, !noalias !300
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !50, !noalias !300
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv367.i
  store float %i.ji, ptr %i.jj, align 4, !tbaa !79, !noalias !300
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !50, !noalias !300
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv367.i
  store float %i.jl, ptr %i.jm, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count.i
  br i1 %exitcond371.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !276

._crit_edge.i:                                    ; preds = %scalar.ph, %bb.e
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0226323.i, i64 %i.bw ; 2 uses
  %i.jo = add nuw i32 %.0224324.i, 8              ; 3 uses
  %i.jp = or disjoint i32 %i.jo, 7
  %i.jq = icmp ult i32 %i.jp, %i.db
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jq, label %bb.e, label %.loopexit311.i, !llvm.loop !277

bb.f:                                             ; preds = %bb.d
  %i.jr = lshr i32 %i.db, 3
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.jr, i32 %i.y) ; 2 uses
  %i.js = udiv i32 %i.db, %spec.select.i
  %i.jt = and i32 %i.js, -8                       ; 2 uses
  %i.ju = and i32 %i.db, -8                       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.1225319.i = phi i32 [ 0, %bb.f ], [ %i.kh, %bb.k ] ; 2 uses
  %.1227318.i = phi ptr [ %i.bk, %bb.f ], [ %i.kp, %bb.k ] ; 2 uses
  %i.jv = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !300 ; 15 uses
  %.not267.i = icmp eq ptr %i.jv, null
  br i1 %.not267.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  br label %.critedge.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.jw = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !300 ; 2 uses
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !91, !noalias !300
  %.not268.i = icmp eq ptr %i.jw, null
  br i1 %.not268.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  tail call void @opj_free(ptr noundef nonnull %i.jv) #15, !noalias !300
  br label %.critedge.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i32 %i.dc, ptr %i.jx, align 8, !tbaa !320, !noalias !300
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i32 %.0238344.i, ptr %i.jy, align 4, !tbaa !321, !noalias !300
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i32 %i.dd, ptr %i.jz, align 8, !tbaa !322, !noalias !300
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  store i32 0, ptr %i.ka, align 4, !tbaa !323, !noalias !300
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  store i32 %.0238344.i, ptr %i.kb, align 8, !tbaa !324, !noalias !300
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 28
  store i32 0, ptr %i.kc, align 4, !tbaa !325, !noalias !300
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  store i32 %i.dc, ptr %i.kd, align 8, !tbaa !326, !noalias !300
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  store i32 %i.cw, ptr %i.ke, align 8, !tbaa !92, !noalias !300
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 44
  store i32 %i.x, ptr %i.kf, align 4, !tbaa !93, !noalias !300
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  store ptr %.1227318.i, ptr %i.kg, align 8, !tbaa !94, !noalias !300
  %i.kh = add nuw nsw i32 %.1225319.i, 1          ; 2 uses
  %i.ki = icmp eq i32 %i.kh, %spec.select.i       ; 2 uses
  %i.kj = mul i32 %.1225319.i, %i.jt
  %i.kk = sub i32 %i.ju, %i.kj
  %i.kl = select i1 %i.ki, i32 %i.kk, i32 %i.jt   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  store i32 %i.kl, ptr %i.km, align 8, !tbaa !95, !noalias !300
  %i.kn = mul i32 %i.kl, %i.x
  %i.ko = zext i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.1227318.i, i64 %i.ko ; 2 uses
  %i.kq = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_h_func, ptr noundef nonnull %i.jv) #15, !noalias !300 ; 0 uses
  br i1 %i.ki, label %bb.l, label %bb.g, !llvm.loop !278

bb.l:                                             ; preds = %bb.k
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  br label %.loopexit311.i

.loopexit311.i:                                   ; preds = %._crit_edge.i, %bb.l, %.preheader310.i
  %.4230.i = phi ptr [ %i.kp, %bb.l ], [ %i.bk, %.preheader310.i ], [ %i.jn, %._crit_edge.i ] ; 2 uses
  %.3.i = phi i32 [ %i.ju, %bb.l ], [ 0, %.preheader310.i ], [ %i.jo, %._crit_edge.i ] ; 2 uses
  %i.kr = icmp ult i32 %.3.i, %i.db
  br i1 %i.kr, label %bb.m, label %.loopexit309.i

bb.m:                                             ; preds = %.loopexit311.i
  %i.ks = sub nuw i32 %i.db, %.3.i                ; 3 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.4230.i, i32 noundef %i.x, i32 noundef %i.ks), !noalias !300
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !300
  %.not353.i = icmp eq i32 %i.cw, 0
  br i1 %.not353.i, label %.loopexit309.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.m
  %wide.trip.count380.i = zext i32 %i.cw to i64
  %wide.trip.count375.i = zext i32 %i.ks to i64   ; 2 uses
  %xtraiter200 = and i64 %wide.trip.count375.i, 3 ; 3 uses
  %i.kt = add i32 %i.ks, -1
  %i.ku = icmp ult i32 %i.kt, 3
  %unroll_iter203 = and i64 %wide.trip.count375.i, 4294967292
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  %lcmp.mod202 = icmp ne i64 %xtraiter200, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge329.i, %.preheader.preheader.i
  %indvars.iv377.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next378.i, %._crit_edge329.i ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv377.i ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.4230.i, i64 %indvars.iv377.i ; 5 uses
  br i1 %i.ku, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv372.i = phi i64 [ %indvars.iv.next373.i.3, %.preheader.i.new ], [ 0, %.preheader.i ] ; 6 uses
  %niter204 = phi i64 [ %niter204.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv372.i
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !50, !noalias !300
  %i.ky = mul nuw i64 %indvars.iv372.i, %i.bu
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ky
  store float %i.kx, ptr %gep.i, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i = or disjoint i64 %indvars.iv372.i, 1 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next373.i
  %i.la = load float, ptr %i.kz, align 4, !tbaa !50, !noalias !300
  %i.lb = mul nuw i64 %indvars.iv.next373.i, %i.bu
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lb
  store float %i.la, ptr %gep.i.1, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.1 = or disjoint i64 %indvars.iv372.i, 2 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next373.i.1
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !50, !noalias !300
  %i.le = mul nuw i64 %indvars.iv.next373.i.1, %i.bu
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.le
  store float %i.ld, ptr %gep.i.2, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.2 = or disjoint i64 %indvars.iv372.i, 3 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next373.i.2
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !50, !noalias !300
  %i.lh = mul nuw i64 %indvars.iv.next373.i.2, %i.bu
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lh
  store float %i.lg, ptr %gep.i.3, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.3 = add nuw nsw i64 %indvars.iv372.i, 4 ; 2 uses
  %niter204.next.3 = add i64 %niter204, 4         ; 2 uses
  %niter204.ncmp.3 = icmp eq i64 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %._crit_edge329.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !279

._crit_edge329.i.unr-lcssa:                       ; preds = %.preheader.i.new
  br i1 %lcmp.mod201.not, label %._crit_edge329.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge329.i.unr-lcssa, %.preheader.i
  %indvars.iv372.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next373.i.3, %._crit_edge329.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv372.i.epil = phi i64 [ %indvars.iv372.i.epil.init, %.epil.preheader ], [ %indvars.iv.next373.i.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv372.i.epil
  %i.lj = load float, ptr %i.li, align 4, !tbaa !50, !noalias !300
  %i.lk = mul nuw i64 %indvars.iv372.i.epil, %i.bu
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lk
  store float %i.lj, ptr %gep.i.epil, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.epil = add nuw nsw i64 %indvars.iv372.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter200
  br i1 %epil.iter.cmp.not, label %._crit_edge329.i, label %bb.n, !llvm.loop !280

._crit_edge329.i:                                 ; preds = %bb.n, %._crit_edge329.i.unr-lcssa
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %.loopexit309.i, label %.preheader.i, !llvm.loop !281

.loopexit309.i:                                   ; preds = %._crit_edge329.i, %bb.m, %.loopexit311.i
  %i.ll = sub i32 %i.db, %.0237345.i              ; 10 uses
  store i32 %i.ll, ptr %i.bx, align 8, !tbaa !83, !noalias !300
  %i.lm = load i32, ptr %i.cz, align 4, !tbaa !34, !noalias !300
  %i.ln = srem i32 %i.lm, 2                       ; 4 uses
  store i32 %i.ln, ptr %i.by, align 8, !tbaa !84, !noalias !300
  store i32 0, ptr %i.bz, align 4, !tbaa !85, !noalias !300
  store i32 %.0237345.i, ptr %i.ca, align 8, !tbaa !86, !noalias !300
  store i32 0, ptr %i.cb, align 4, !tbaa !87, !noalias !300
  store i32 %i.ll, ptr %i.cc, align 8, !tbaa !88, !noalias !300
  %i.lo = icmp ult i32 %i.cw, 16
  %or.cond7.i = select i1 %i.bt, i1 true, i1 %i.lo
  br i1 %or.cond7.i, label %.preheader307.i, label %bb.p

.preheader307.i:                                  ; preds = %.loopexit309.i
  %i.lp = icmp ugt i32 %i.cw, 7
  br i1 %i.lp, label %.lr.ph338.i, label %.loopexit308.i

.lr.ph338.i:                                      ; preds = %.preheader307.i
  %i.lq = sext i32 %i.ln to i64                   ; 2 uses
  %i.lr = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.lq ; 3 uses
  %wide.trip.count.i.i = zext i32 %.0237345.i to i64 ; 3 uses
  %i.ls = mul nuw i64 %wide.trip.count.i.i, %i.bu
  %i.lt = sub nsw i64 0, %i.lq
  %i.lu = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.lt ; 3 uses
  %.not305.i = icmp eq i32 %i.db, %.0237345.i
  %wide.trip.count35.i.i = zext i32 %i.ll to i64  ; 2 uses
  %wide.trip.count386.i = zext i32 %i.db to i64   ; 2 uses
  %xtraiter205 = and i64 %wide.trip.count.i.i, 1
  %i.lv = icmp eq i32 %.0237345.i, 1              ; 0 uses
  %unroll_iter209 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  %lcmp.mod208 = trunc i32 %.0237345.i to i1
  %xtraiter211 = and i64 %wide.trip.count35.i.i, 1
  %i.lw = icmp eq i32 %i.ll, 1
  %unroll_iter215 = and i64 %wide.trip.count35.i.i, 4294967294
  %lcmp.mod213.not = icmp eq i64 %xtraiter211, 0
  %lcmp.mod214 = trunc i32 %i.ll to i1
  %xtraiter217 = and i64 %wide.trip.count386.i, 1
  %i.lx = icmp eq i32 %i.db, 1                    ; 0 uses
end_hunk_1
begin_hunk_2_@opj_dwt_decode_real:bb.a
  %i.uz = load i32, ptr %i.uw, align 8, !tbaa !32, !noalias !329 ; 2 uses
  %i.va = sub nsw i32 %i.uy, %i.uz                ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 204
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !33, !noalias !329
  %i.vd = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 196
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !34, !noalias !329 ; 2 uses
  %i.vf = sub nsw i32 %i.vc, %i.ve                ; 8 uses
  %i.vg = sub i32 %i.va, %.0163272.i              ; 2 uses
  store i32 %i.vg, ptr %i.uc, align 8, !tbaa !83, !noalias !329
  %i.vh = srem i32 %i.uz, 2                       ; 3 uses
  store i32 %i.vh, ptr %i.ud, align 8, !tbaa !84, !noalias !329
  %i.vi = sub i32 %i.vf, %.0162273.i              ; 2 uses
  store i32 %i.vi, ptr %i.ue, align 8, !tbaa !83, !noalias !329
  %i.vj = srem i32 %i.ve, 2                       ; 3 uses
  store i32 %i.vj, ptr %i.uf, align 8, !tbaa !84, !noalias !329
  %i.vk = icmp eq i64 %indvars.iv.i15, %i.uv
  br i1 %i.vk, label %opj_dwt_get_band_coordinates.exit196.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.vl = trunc nuw i64 %indvars.iv.i15 to i32
  %i.vm = sub i32 %i.uh, %i.vl                    ; 2 uses
  %i.vn = zext i32 %i.vm to i64                   ; 9 uses
  %notmask.i.i = shl nsw i64 -1, %i.vn
  %i.vo = xor i64 %notmask.i.i, -1                ; 8 uses
  %i.vp = add nuw i64 %i.vo, %i.ui
  %i.vq = lshr i64 %i.vp, %i.vn
  %i.vr = trunc i64 %i.vq to i32
  %.ph.i = select i1 %.not62.i.not.i, i32 0, i32 %i.vr ; 2 uses
  %i.vs = add nuw i64 %i.vo, %i.uj
  %i.vt = lshr i64 %i.vs, %i.vn
  %i.vu = trunc i64 %i.vt to i32
  %.ph247.i = select i1 %.not64.i.not.i, i32 0, i32 %i.vu ; 2 uses
  %i.vv = add nuw i64 %i.vo, %i.uk
  %i.vw = lshr i64 %i.vv, %i.vn
  %i.vx = trunc i64 %i.vw to i32
  %.ph250.i = select i1 %.not66.i.not.i, i32 0, i32 %i.vx ; 2 uses
  %i.vy = add nuw i64 %i.vo, %i.ul
  %i.vz = lshr i64 %i.vy, %i.vn
  %i.wa = trunc i64 %i.vz to i32
  %.ph252.i = select i1 %.not68.i.not.i, i32 0, i32 %i.wa ; 2 uses
  %i.wb = add i32 %i.vm, -1
  %i.wc = shl nuw i32 1, %i.wb                    ; 8 uses
  %.not62.i187.i = icmp ugt i32 %i.rh, %i.wc
  %i.wd = sub nuw i32 %i.rh, %i.wc
  %i.we = zext i32 %i.wd to i64
  %i.wf = add nuw i64 %i.we, %i.vo
  %i.wg = lshr i64 %i.wf, %i.vn
  %i.wh = trunc i64 %i.wg to i32
  %.ph254.i = select i1 %.not62.i187.i, i32 %i.wh, i32 0 ; 2 uses
  %.not66.i188.i = icmp ugt i32 %i.rl, %i.wc
  %i.wi = sub nuw i32 %i.rl, %i.wc
  %i.wj = zext i32 %i.wi to i64
  %i.wk = add nuw i64 %i.wj, %i.vo
  %i.wl = lshr i64 %i.wk, %i.vn
  %i.wm = trunc i64 %i.wl to i32
  %.ph256.i = select i1 %.not66.i188.i, i32 %i.wm, i32 0 ; 2 uses
  %.not64.i192.i = icmp ugt i32 %i.rj, %i.wc
  %i.wn = sub nuw i32 %i.rj, %i.wc
  %i.wo = zext i32 %i.wn to i64
  %i.wp = add nuw i64 %i.wo, %i.vo
  %i.wq = lshr i64 %i.wp, %i.vn
  %i.wr = trunc i64 %i.wq to i32
  %.ph258.i = select i1 %.not64.i192.i, i32 %i.wr, i32 0 ; 2 uses
  %.not68.i193.i = icmp ugt i32 %i.rn, %i.wc
  br i1 %.not68.i193.i, label %bb.aj, label %opj_dwt_get_band_coordinates.exit196.i

bb.aj:                                            ; preds = %bb.ai
  %i.ws = sub nuw i32 %i.rn, %i.wc
  %i.wt = zext i32 %i.ws to i64
  %i.wu = add nuw i64 %i.wt, %i.vo
  %i.wv = lshr i64 %i.wu, %i.vn
  %i.ww = trunc i64 %i.wv to i32
  br label %opj_dwt_get_band_coordinates.exit196.i

opj_dwt_get_band_coordinates.exit196.i:           ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.wx = phi i32 [ %.ph258.i, %bb.ai ], [ %.ph258.i, %bb.aj ], [ %i.rj, %bb.ah ]
  %i.wy = phi i32 [ %.ph254.i, %bb.ai ], [ %.ph254.i, %bb.aj ], [ %i.rh, %bb.ah ]
  %i.wz = phi i32 [ %.ph250.i, %bb.ai ], [ %.ph250.i, %bb.aj ], [ %i.rl, %bb.ah ]
  %i.xa = phi i32 [ %.ph.i, %bb.ai ], [ %.ph.i, %bb.aj ], [ %i.rh, %bb.ah ]
  %i.xb = phi i32 [ %.ph247.i, %bb.ai ], [ %.ph247.i, %bb.aj ], [ %i.rj, %bb.ah ]
  %i.xc = phi i32 [ %.ph252.i, %bb.ai ], [ %.ph252.i, %bb.aj ], [ %i.rn, %bb.ah ]
  %i.xd = phi i32 [ %.ph256.i, %bb.ai ], [ %.ph256.i, %bb.aj ], [ %i.rl, %bb.ah ]
  %i.xe = phi i32 [ 0, %bb.ai ], [ %i.ww, %bb.aj ], [ %i.rn, %bb.ah ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 224
  %i.xg = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 272
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !75, !noalias !329 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 228
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !76, !noalias !329 ; 2 uses
  %i.xk = load i32, ptr %i.xf, align 8, !tbaa !75, !noalias !329 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 276
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !76, !noalias !329 ; 2 uses
  %i.xn = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xa, i32 %i.xh)
  %i.xo = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xb, i32 %i.xj)
  %i.xp = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.wz, i32 %i.xh)
  %i.xq = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xc, i32 %i.xj)
  %i.xr = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.wy, i32 %i.xk)
  %i.xs = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xd, i32 %i.xk)
  %i.xt = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.wx, i32 %i.xm)
  %i.xu = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xe, i32 %i.xm)
  %i.xv = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xn, i32 4) ; 12 uses
  %i.xw = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xp, i32 range(i32 2, 5) 4)
  %i.xx = tail call noundef i32 @llvm.umin.i32(i32 %i.xw, i32 %.0163272.i) ; 11 uses
  %i.xy = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xr, i32 4) ; 5 uses
  %i.xz = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xs, i32 range(i32 2, 5) 4)
  %i.ya = tail call noundef i32 @llvm.umin.i32(i32 %i.xz, i32 %i.vg) ; 4 uses
  %i.yb = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xo, i32 4) ; 7 uses
  %i.yc = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xq, i32 range(i32 2, 5) 4)
  %i.yd = tail call noundef i32 @llvm.umin.i32(i32 %i.yc, i32 %.0162273.i) ; 6 uses
  %i.ye = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xt, i32 4) ; 7 uses
  %i.yf = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xu, i32 range(i32 2, 5) 4)
  %i.yg = tail call noundef i32 @llvm.umin.i32(i32 %i.yf, i32 %i.vi) ; 6 uses
  %i.yh = icmp eq i32 %i.vh, 0                    ; 4 uses
  %..i = select i1 %i.yh, i32 %i.xv, i32 %i.xy
  %.314.i = select i1 %i.yh, i32 %i.xy, i32 %i.xv
  %.315.i = select i1 %i.yh, i32 %i.xx, i32 %i.ya
  %.316.i = select i1 %i.yh, i32 %i.ya, i32 %i.xx
  %i.yi = shl i32 %..i, 1
  %i.yj = shl i32 %.314.i, 1
  %i.yk = or disjoint i32 %i.yj, 1
  %i.yl = tail call noundef i32 @llvm.umin.i32(i32 %i.yi, i32 %i.yk) ; 6 uses
  %i.ym = shl i32 %.315.i, 1
  %i.yn = shl i32 %.316.i, 1
  %i.yo = or disjoint i32 %i.yn, 1
  %i.yp = tail call noundef i32 @llvm.umax.i32(i32 %i.ym, i32 %i.yo)
  %i.yq = tail call noundef i32 @llvm.umin.i32(i32 %i.yp, i32 %i.va) ; 5 uses
  %i.yr = icmp eq i32 %i.vj, 0
  br i1 %i.yr, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %opj_dwt_get_band_coordinates.exit196.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %opj_dwt_get_band_coordinates.exit196.i
  %.sink313.i = phi i32 [ %i.ye, %bb.ak ], [ %i.yb, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink312.i = phi i32 [ %i.yb, %bb.ak ], [ %i.ye, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink308.i = phi i32 [ %i.yg, %bb.ak ], [ %i.yd, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink307.i = phi i32 [ %i.yd, %bb.ak ], [ %i.yg, %opj_dwt_get_band_coordinates.exit196.i ]
  %i.ys = shl i32 %.sink313.i, 1
  %i.yt = shl i32 %.sink312.i, 1
  %i.yu = or disjoint i32 %i.yt, 1
  %i.yv = tail call noundef i32 @llvm.umin.i32(i32 %i.ys, i32 %i.yu) ; 2 uses
  %i.yw = shl i32 %.sink308.i, 1
  %i.yx = shl i32 %.sink307.i, 1
  %i.yy = or disjoint i32 %i.yx, 1
  %i.yz = tail call noundef i32 @llvm.umax.i32(i32 %i.yw, i32 %i.yy)
  %i.za = tail call noundef i32 @llvm.umin.i32(i32 %i.yz, i32 %i.vf)
  store i32 %i.xv, ptr %i.um, align 4, !tbaa !85, !noalias !329
  store i32 %i.xx, ptr %i.un, align 8, !tbaa !86, !noalias !329
  store i32 %i.xy, ptr %i.uo, align 4, !tbaa !87, !noalias !329
  store i32 %i.ya, ptr %i.up, align 8, !tbaa !88, !noalias !329
  %i.zb = icmp ugt i32 %i.vf, 7
  br i1 %i.zb, label %.lr.ph.i19, label %._crit_edge.i16

.lr.ph.i19:                                       ; preds = %bb.al
  %i.zc = add i32 %i.ye, %.0162273.i
  %i.zd = add i32 %i.yg, %.0162273.i
  %i.ze = sext i32 %i.vh to i64                   ; 2 uses
  %i.zf = getelementptr inbounds [32 x i8], ptr %i.tz, i64 %i.ze
  %i.zg = shl i32 %i.xv, 1
  %i.zh = zext i32 %i.zg to i64
  %i.zi = getelementptr inbounds nuw [32 x i8], ptr %i.zf, i64 %i.zh ; 8 uses
  %i.zj = add i32 %i.xy, %.0163272.i              ; 8 uses
  %i.zk = add i32 %i.ya, %.0163272.i              ; 8 uses
  %i.zl = sub nsw i64 0, %i.ze
  %i.zm = getelementptr inbounds [32 x i8], ptr %i.uq, i64 %i.zl
  %i.zn = shl i32 %i.xy, 1
  %i.zo = zext i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw [32 x i8], ptr %i.zm, i64 %i.zo ; 8 uses
  %i.zq = zext i32 %i.yl to i64
  %i.zr = getelementptr inbounds nuw [32 x i8], ptr %i.tz, i64 %i.zq
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zi, i64 4
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zi, i64 12
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zp, i64 12
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zi, i64 20
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zp, i64 20
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zi, i64 24
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zp, i64 24
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zi, i64 28
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zp, i64 28
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %.lr.ph.i19
  %.0158266.i = phi i32 [ 0, %.lr.ph.i19 ], [ %.pre-phi.i21, %bb.ap ] ; 15 uses
  %i.aag = or disjoint i32 %.0158266.i, 7         ; 2 uses
  %.not177.i = icmp uge i32 %i.aag, %i.yb
  %i.aah = icmp ult i32 %.0158266.i, %i.yd
  %or.cond.i20 = and i1 %i.aah, %.not177.i
  br i1 %or.cond.i20, label %.lr.ph.i198.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not178.i = icmp uge i32 %i.aag, %i.zc
  %i.aai = icmp ult i32 %.0158266.i, %i.zd
  %or.cond261.i = and i1 %i.aai, %.not178.i
  br i1 %or.cond261.i, label %.lr.ph.i198.i, label %._crit_edge282.i

._crit_edge282.i:                                 ; preds = %bb.an
  %.pre.i = add nuw i32 %.0158266.i, 8
  br label %bb.ap

.lr.ph.i198.i:                                    ; preds = %bb.an, %bb.am
  %i.aaj = add nuw nsw i32 %.0158266.i, 1         ; 4 uses
  %i.aak = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %.0158266.i, i32 noundef %i.xx, i32 noundef %i.aaj, ptr noundef nonnull %i.zi, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aal = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %.0158266.i, i32 noundef %i.zk, i32 noundef %i.aaj, ptr noundef nonnull %i.zp, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aam = add nuw nsw i32 %.0158266.i, 2         ; 4 uses
  %i.aan = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aaj, i32 noundef %i.xx, i32 noundef %i.aam, ptr noundef nonnull %i.zs, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aao = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aaj, i32 noundef %i.zk, i32 noundef %i.aam, ptr noundef nonnull %i.zt, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aap = add nuw nsw i32 %.0158266.i, 3         ; 4 uses
  %i.aaq = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aam, i32 noundef %i.xx, i32 noundef %i.aap, ptr noundef nonnull %i.zu, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aar = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aam, i32 noundef %i.zk, i32 noundef %i.aap, ptr noundef nonnull %i.zv, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aas = add nuw nsw i32 %.0158266.i, 4         ; 4 uses
  %i.aat = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aap, i32 noundef %i.xx, i32 noundef %i.aas, ptr noundef nonnull %i.zw, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aau = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aap, i32 noundef %i.zk, i32 noundef %i.aas, ptr noundef nonnull %i.zx, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aav = add nuw nsw i32 %.0158266.i, 5         ; 4 uses
  %i.aaw = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aas, i32 noundef %i.xx, i32 noundef %i.aav, ptr noundef nonnull %i.zy, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aax = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aas, i32 noundef %i.zk, i32 noundef %i.aav, ptr noundef nonnull %i.zz, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aay = add nuw nsw i32 %.0158266.i, 6         ; 4 uses
  %i.aaz = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aav, i32 noundef %i.xx, i32 noundef %i.aay, ptr noundef nonnull %i.aaa, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aba = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aav, i32 noundef %i.zk, i32 noundef %i.aay, ptr noundef nonnull %i.aab, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.abb = add nuw nsw i32 %.0158266.i, 7         ; 4 uses
  %i.abc = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aay, i32 noundef %i.xx, i32 noundef %i.abb, ptr noundef nonnull %i.aac, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.abd = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aay, i32 noundef %i.zk, i32 noundef %i.abb, ptr noundef nonnull %i.aad, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.abe = add nuw i32 %.0158266.i, 8             ; 4 uses
  %i.abf = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.abb, i32 noundef %i.xx, i32 noundef %i.abe, ptr noundef nonnull %i.aae, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.abg = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.abb, i32 noundef %i.zk, i32 noundef %i.abe, ptr noundef nonnull %i.aaf, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !329
  %i.abh = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.rx, i32 noundef %i.yl, i32 noundef %.0158266.i, i32 noundef %i.yq, i32 noundef %i.abe, ptr noundef nonnull %i.zr, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !329
  %.not179.i = icmp eq i32 %i.abh, 0
  br i1 %.not179.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i198.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.rx) #15, !noalias !329
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tz) #15, !noalias !329
  br label %opj_dwt_decode_partial_97.exit

bb.ap:                                            ; preds = %.lr.ph.i198.i, %._crit_edge282.i
  %.pre-phi.i21 = phi i32 [ %.pre.i, %._crit_edge282.i ], [ %i.abe, %.lr.ph.i198.i ] ; 3 uses
  %i.abi = or disjoint i32 %.pre-phi.i21, 7       ; 2 uses
  %i.abj = icmp ult i32 %i.abi, %i.vf
  br i1 %i.abj, label %bb.am, label %._crit_edge.i16, !llvm.loop !295

._crit_edge.i16:                                  ; preds = %bb.ap, %bb.al
  %.0158.lcssa.i = phi i32 [ 0, %bb.al ], [ %.pre-phi.i21, %bb.ap ] ; 6 uses
  %.lcssa.i = phi i32 [ 7, %bb.al ], [ %i.abi, %bb.ap ] ; 2 uses
  %i.abk = icmp ult i32 %.0158.lcssa.i, %i.vf
  br i1 %i.abk, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %._crit_edge.i16
  %.not173.i = icmp uge i32 %.lcssa.i, %i.yb
  %i.abl = icmp ult i32 %.0158.lcssa.i, %i.yd
  %or.cond182.i = and i1 %i.abl, %.not173.i
  br i1 %or.cond182.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.abm = add i32 %i.ye, %.0162273.i
  %.not174.i = icmp uge i32 %.lcssa.i, %i.abm
  %i.abn = add i32 %i.yg, %.0162273.i
  %i.abo = icmp ult i32 %.0158.lcssa.i, %i.abn
  %or.cond263.i = and i1 %i.abo, %.not174.i
  br i1 %or.cond263.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.abp = sub nuw i32 %i.vf, %.0158.lcssa.i
  call fastcc void @opj_v8dwt_interleave_partial_h(ptr noundef %3, ptr noundef %i.rx, i32 noundef %.0158.lcssa.i, i32 noundef %i.abp), !noalias !329
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !329
  %i.abq = zext i32 %i.yl to i64
  %i.abr = getelementptr inbounds nuw [32 x i8], ptr %i.tz, i64 %i.abq
  %i.abs = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.rx, i32 noundef %i.yl, i32 noundef %.0158.lcssa.i, i32 noundef %i.yq, i32 noundef %i.vf, ptr noundef nonnull %i.abr, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !329
  %.not175.i = icmp eq i32 %i.abs, 0
  br i1 %.not175.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.rx) #15, !noalias !329
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tz) #15, !noalias !329
  br label %opj_dwt_decode_partial_97.exit

bb.au:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i16
  store i32 %i.yb, ptr %i.ur, align 4, !tbaa !85, !noalias !329
  store i32 %i.yd, ptr %i.us, align 8, !tbaa !86, !noalias !329
  store i32 %i.ye, ptr %i.ut, align 4, !tbaa !87, !noalias !329
  store i32 %i.yg, ptr %i.uu, align 8, !tbaa !88, !noalias !329
  %i.abt = icmp ult i32 %i.yl, %i.yq
  br i1 %i.abt, label %.critedge.lr.ph.i, label %._crit_edge269.i

.critedge.lr.ph.i:                                ; preds = %bb.au
  %i.abu = sext i32 %i.vj to i64                  ; 2 uses
  %i.abv = getelementptr inbounds [32 x i8], ptr %i.tz, i64 %i.abu
  %i.abw = shl i32 %i.yb, 1
  %i.abx = zext i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw [32 x i8], ptr %i.abv, i64 %i.abx
  %i.abz = add i32 %i.ye, %.0162273.i
  %i.aca = add i32 %i.yg, %.0162273.i
  %i.acb = sub nsw i64 0, %i.abu
  %i.acc = getelementptr inbounds [32 x i8], ptr %i.uq, i64 %i.acb
  %i.acd = shl i32 %i.ye, 1
  %i.ace = zext i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw [32 x i8], ptr %i.acc, i64 %i.ace
  %i.acg = zext i32 %i.yv to i64
  %i.ach = getelementptr inbounds nuw [32 x i8], ptr %i.tz, i64 %i.acg
  br label %.critedge.i

bb.av:                                            ; preds = %.critedge.i
  %i.aci = add i32 %.1159268.i, 8                 ; 2 uses
  %i.acj = icmp ult i32 %i.aci, %i.yq
  br i1 %i.acj, label %.critedge.i, label %._crit_edge269.i, !llvm.loop !296

.critedge.i:                                      ; preds = %bb.av, %.critedge.lr.ph.i
  %.1159268.i = phi i32 [ %i.yl, %.critedge.lr.ph.i ], [ %i.aci, %bb.av ] ; 6 uses
  %i.ack = sub nuw i32 %i.yq, %.1159268.i
  %i.acl = tail call noundef i32 @llvm.umin.i32(i32 %i.ack, i32 8)
  %i.acm = add i32 %i.acl, %.1159268.i            ; 3 uses
  %i.acn = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %.1159268.i, i32 noundef %i.yb, i32 noundef %i.acm, i32 noundef %i.yd, ptr noundef nonnull %i.aby, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !331 ; 0 uses
  %i.aco = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %.1159268.i, i32 noundef %i.abz, i32 noundef %i.acm, i32 noundef %i.aca, ptr noundef nonnull %i.acf, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !331 ; 0 uses
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %4), !noalias !329
  %i.acp = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.rx, i32 noundef %.1159268.i, i32 noundef %i.yv, i32 noundef %i.acm, i32 noundef %i.za, ptr noundef nonnull %i.ach, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15, !noalias !329
  %.not176.not.i = icmp eq i32 %i.acp, 0
  br i1 %.not176.not.i, label %bb.aw, label %bb.av

bb.aw:                                            ; preds = %.critedge.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.rx) #15, !noalias !329
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tz) #15, !noalias !329
  br label %opj_dwt_decode_partial_97.exit

._crit_edge269.i:                                 ; preds = %bb.av, %bb.au
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count.i14
  br i1 %exitcond.not.i18, label %._crit_edge277.i, label %bb.ah, !llvm.loop !299

._crit_edge277.i:                                 ; preds = %._crit_edge269.i, %bb.ag
  %i.acq = getelementptr inbounds nuw i8, ptr %i.qw, i64 176
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !67, !noalias !329 ; 2 uses
  %i.acs = load i32, ptr %i.qw, align 8, !tbaa !32, !noalias !329 ; 2 uses
  %i.act = sub i32 %i.acr, %i.acs
  %i.acu = getelementptr inbounds nuw i8, ptr %i.qw, i64 180
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !68, !noalias !329
  %i.acw = load i32, ptr %i.rs, align 4, !tbaa !34, !noalias !329 ; 2 uses
  %i.acx = sub i32 %i.acv, %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %i.qw, i64 184
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !69, !noalias !329 ; 2 uses
  %i.ada = sub i32 %i.acz, %i.acs
  %i.adb = getelementptr inbounds nuw i8, ptr %i.qw, i64 188
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !70, !noalias !329
  %i.add = sub i32 %i.adc, %i.acw
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !71, !alias.scope !329
  %i.adg = sub i32 %i.acz, %i.acr
  %i.adh = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.act, i32 noundef %i.acx, i32 noundef %i.ada, i32 noundef %i.add, ptr noundef %i.adf, i32 noundef 1, i32 noundef %i.adg, i32 noundef 1) #15, !noalias !329 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.rx) #15, !noalias !329
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tz) #15, !noalias !329
  br label %opj_dwt_decode_partial_97.exit

opj_dwt_decode_partial_97.exit:                   ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ao, %bb.at, %bb.aw, %._crit_edge277.i
  %.4.i = phi i32 [ 1, %._crit_edge277.i ], [ 1, %bb.aa ], [ 1, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 1, %bb.ab ], [ 0, %bb.aw ], [ 0, %bb.at ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !329
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !329
  br label %bb.ax

bb.ax:                                            ; preds = %opj_dwt_decode_partial_97.exit, %opj_dwt_decode_tile_97.exit
  %.0 = phi i32 [ %.10.i, %opj_dwt_decode_tile_97.exit ], [ %.4.i, %opj_dwt_decode_partial_97.exit ]
  ret i32 %.0
}

declare i32 @opj_thread_pool_get_thread_count(ptr noundef) local_unnamed_addr #8

declare ptr @opj_aligned_32_malloc(i64 noundef) local_unnamed_addr #8

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #8

declare void @opj_thread_pool_wait_completion(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @opj_aligned_free(ptr noundef) local_unnamed_addr #8

declare void @opj_free(ptr noundef) local_unnamed_addr #8

declare i32 @opj_thread_pool_submit_job(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_encode_v_func(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = add i32 %i.b, 7
  %i.e = load i32, ptr %i.c, align 4, !tbaa !44   ; 2 uses
  %i.f = icmp ult i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi i32 [ %i.b, %.lr.ph ], [ %i.l, %bb.b ] ; 3 uses
  %i.l = add i32 %.025, 8                         ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.o = zext i32 %.025 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !38
  %i.r = load i32, ptr %i.i, align 8, !tbaa !40
  %i.s = load i32, ptr %i.j, align 8, !tbaa !39
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = load i32, ptr %i.k, align 4, !tbaa !41
  tail call void %i.m(ptr noundef %i.p, ptr noundef %i.q, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %i.v, i32 noundef 8) #15
  %i.w = add i32 %.025, 15
  %i.x = load i32, ptr %i.c, align 4, !tbaa !44   ; 2 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !332

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.l, %bb.b ] ; 3 uses
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.x, %bb.b ] ; 2 uses
  %i.z = icmp ult i32 %.0.lcssa, %.lcssa
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
end_hunk_2
