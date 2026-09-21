Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/dwt?download=true
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
define range(i32 0, 2) i32 @opj_dwt_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call fastcc i32 @opj_dwt_encode_procedure(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_v, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_h_one_row)
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_dwt_encode_procedure(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @opj_thread_pool_get_thread_count(ptr noundef %0) #15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !100
  %i.f = load i32, ptr %1, align 8, !tbaa !101
  %i.g = sub nsw i32 %i.e, %i.f                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 3 uses
  %i.j = add i32 %i.i, -1                         ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 3 uses
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
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29, !alias.scope !102
  %i.s = load i32, ptr %i.p, align 8, !tbaa !30, !alias.scope !102
  %i.t = sub nsw i32 %i.r, %i.s
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.017.i, i32 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.01116.i, i64 204
  %i.v = load i32, ptr %i.u, align 4, !tbaa !31, !alias.scope !102
  %i.w = getelementptr inbounds nuw i8, ptr %.01116.i, i64 196
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32, !alias.scope !102
  %i.y = sub nsw i32 %i.v, %i.x
  %.2.i = tail call i32 @llvm.umax.i32(i32 %spec.select.i, i32 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.01116.i, i64 384 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01116.i, i64 392
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !29, !alias.scope !102
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !30, !alias.scope !102
  %i.ad = sub nsw i32 %i.ab, %i.ac
  %spec.select.i.1 = tail call i32 @llvm.umax.i32(i32 %.2.i, i32 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01116.i, i64 396
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31, !alias.scope !102
  %i.ag = getelementptr inbounds nuw i8, ptr %.01116.i, i64 388
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32, !alias.scope !102
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
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !29, !alias.scope !102
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !30, !alias.scope !102
  %i.an = sub nsw i32 %i.al, %i.am
  %spec.select.i.epil = tail call i32 @llvm.umax.i32(i32 %.017.i.epil.init, i32 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.01116.i.epil.init, i64 204
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !31, !alias.scope !102
  %i.aq = getelementptr inbounds nuw i8, ptr %.01116.i.epil.init, i64 196
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32, !alias.scope !102
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
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !29
  %i.bd = load i32, ptr %.0188224, align 8, !tbaa !30 ; 2 uses
  %i.be = sub nsw i32 %i.bc, %i.bd                ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0188224, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !31 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0188224, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32 ; 3 uses
  %i.bj = sub i32 %i.bg, %i.bi                    ; 9 uses
  %i.bk = getelementptr inbounds i8, ptr %.0188224, i64 -184
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !29
  %i.bm = load i32, ptr %.0186225, align 8, !tbaa !30
  %i.bn = sub nsw i32 %i.bl, %i.bm                ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.0188224, i64 -180
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31
  %i.bq = getelementptr inbounds i8, ptr %.0188224, i64 -188
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
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
  tail call void %2(ptr noundef %i.bz, ptr noundef %i.av, i32 noundef %i.bj, i32 noundef %i.by, i32 noundef %i.g, i32 noundef 8) #15, !callees !103
  %5 = or disjoint i64 %indvars.iv.next, 7
  %i.ca = icmp samesign ult i64 %5, %4
  br i1 %i.ca, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !95

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
  tail call void %2(ptr noundef %i.cd, ptr noundef %i.av, i32 noundef %i.bj, i32 noundef %i.ce, i32 noundef %i.g, i32 noundef %i.cf) #15, !callees !103
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
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !36
  %.not200 = icmp eq ptr %i.cj, null
  br i1 %.not200, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.ci) #15
  br label %.critedge210.sink.split

.critedge:                                        ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.bv, ptr %i.ck, align 8, !tbaa !104
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 %i.bs, ptr %i.cl, align 4, !tbaa !105
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i32 %i.bu, ptr %i.cm, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i32 %i.bj, ptr %i.cn, align 8, !tbaa !38
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  store i32 %i.g, ptr %i.co, align 4, !tbaa !39
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store ptr %i.c, ptr %i.cp, align 8, !tbaa !40
  %i.cq = mul i32 %.1178217, %i.ch
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !41
  %i.cs = add nuw i32 %.1178217, 1                ; 4 uses
  %i.ct = icmp eq i32 %i.cs, %spec.select
  %i.cu = mul i32 %i.cs, %i.ch
  %i.cv = select i1 %i.ct, i32 %i.be, i32 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store ptr %2, ptr %i.cx, align 8, !tbaa !43
  %i.cy = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_v_func, ptr noundef nonnull %i.ci) #15 ; 0 uses
  %exitcond.not = icmp eq i32 %i.cs, %spec.select
  br i1 %exitcond.not, label %bb.j, label %bb.f, !llvm.loop !96

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
  tail call void %3(ptr noundef %i.df, ptr noundef %i.av, i32 noundef %i.be, i32 noundef %i.db) #15, !callees !106
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond236.not, label %.loopexit, label %bb.l, !llvm.loop !97

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
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !36
  %.not203 = icmp eq ptr %i.dj, null
  br i1 %.not203, label %bb.q, label %.critedge208

bb.q:                                             ; preds = %bb.p
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.di) #15
  br label %.critedge210.sink.split

.critedge208:                                     ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %i.cz, ptr %i.dk, align 8, !tbaa !104
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 %i.bn, ptr %i.dl, align 4, !tbaa !105
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i32 %i.bt, ptr %i.dm, align 8, !tbaa !37
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i32 %i.be, ptr %i.dn, align 8, !tbaa !38
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store i32 %i.g, ptr %i.do, align 4, !tbaa !39
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store ptr %i.c, ptr %i.dp, align 8, !tbaa !40
  %i.dq = mul i32 %.3180219, %i.dg
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !41
  %i.ds = add nuw i32 %.3180219, 1                ; 3 uses
  %i.dt = mul i32 %i.ds, %i.dg
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 44
  %i.dv = icmp eq i32 %.3180219, %i.dh
  %spec.select206 = select i1 %i.dv, i32 %i.bj, i32 %i.dt
  store i32 %spec.select206, ptr %i.du, align 4, !tbaa !42
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store ptr %3, ptr %i.dw, align 8, !tbaa !43
  %i.dx = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_h_func, ptr noundef nonnull %i.di) #15 ; 0 uses
  %exitcond234.not = icmp eq i32 %i.ds, %spec.select205
  br i1 %exitcond234.not, label %bb.r, label %bb.n, !llvm.loop !98

bb.r:                                             ; preds = %.critedge208
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.r
  %i.dy = add nsw i32 %i.ba, -1
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %.critedge210.sink.split, label %bb.b, !llvm.loop !99

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
begin_hunk_1_@opj_dwt_decode:bb.a
  %i.sr = icmp ult i32 %.0176295.i, %i.ld
  %or.cond.i15 = and i1 %.not189.i, %i.sr
  br i1 %or.cond.i15, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not190.i = icmp uge i32 %.0176295.i, %.pre315.i
  %i.ss = icmp ult i32 %.0176295.i, %.pre316.i
  %or.cond291.i = and i1 %.not190.i, %i.ss
  br i1 %or.cond291.i, label %bb.ae, label %._crit_edge314.i

._crit_edge314.i:                                 ; preds = %bb.ad
  %.pre318.i = add nuw i32 %.0176295.i, 1
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.mb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.me, align 4, !tbaa !12
  store i32 0, ptr %i.mg, align 4, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.st = add nuw i32 %.0176295.i, 1              ; 4 uses
  %i.su = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.kv, i32 noundef %.0176295.i, i32 noundef %i.kx, i32 noundef %i.st, ptr noundef nonnull %i.ml, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  %i.sv = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.mm, i32 noundef %.0176295.i, i32 noundef %i.mn, i32 noundef %i.st, ptr noundef nonnull %i.ms, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lh, label %bb.ah, label %bb.ax

bb.ah:                                            ; preds = %bb.ag
  br i1 %or.cond.i.i, label %bb.ai, label %opj_dwt_decode_partial_1.exit.i

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.mv, label %bb.aj, label %.loopexit208.i.i

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.nj, label %bb.ak, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aj
  %i.sw = load i32, ptr %.in.ph.i.i, align 4, !tbaa !12
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sx = load i32, ptr %i.hm, align 4, !tbaa !12 ; 3 uses
  br i1 %i.no, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread.i.i
  %i.sy = phi i32 [ %i.sw, %.thread.i.i ], [ %i.sx, %bb.ak ]
  %.pre.i = load i32, ptr %..i, align 4, !tbaa !12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.sz = phi i32 [ %i.sx, %bb.ak ], [ %.pre.i, %bb.al ]
  %i.ta = phi i32 [ %i.sx, %bb.ak ], [ %i.sy, %bb.al ]
  %i.tb = add i32 %i.sz, 2
  %i.tc = add i32 %i.tb, %i.ta
  %i.td = ashr i32 %i.tc, 2
  %i.te = load i32, ptr %i.nt, align 4, !tbaa !12
  %i.tf = sub nsw i32 %i.te, %i.td
  store i32 %i.tf, ptr %i.nt, align 4, !tbaa !12
  br i1 %i.nu, label %.lr.ph219.i.i.preheader, label %.preheader207.i.i

.lr.ph219.i.i.preheader:                          ; preds = %bb.am
  %brmerge = select i1 %min.iters.check112, i1 true, i1 %i.ph
  %brmerge158 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge158, label %.lr.ph219.i.i.preheader128, label %vector.body115

.lr.ph219.i.i.preheader128:                       ; preds = %.lr.ph219.i.i.preheader, %vector.body115
  %indvars.iv233.i.i.ph = phi i64 [ %i.nv, %.lr.ph219.i.i.preheader ], [ %i.pl, %vector.body115 ] ; 5 uses
  %.0150.in217.i.i.ph = phi i32 [ %i.kv, %.lr.ph219.i.i.preheader ], [ %i.pn, %vector.body115 ] ; 2 uses
  %i.tg = trunc i64 %indvars.iv233.i.i.ph to i32  ; 2 uses
  %i.th = sub i32 %spec.select.i209.i, %i.tg
  %.neg = add i32 %i.tg, 1
  %xtraiter142 = and i32 %i.th, 1
  %lcmp.mod143.not = icmp eq i32 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph219.i.i.prol.loopexit, label %.lr.ph219.i.i.prol

.lr.ph219.i.i.prol:                               ; preds = %.lr.ph219.i.i.preheader128
  %i.ti = shl nsw i32 %.0150.in217.i.i.ph, 1
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr [4 x i8], ptr %i.hg, i64 %i.tj
  %i.tl = getelementptr i8, ptr %i.tk, i64 4
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !12
  %.idx256.i.i.prol = shl nsw i64 %indvars.iv233.i.i.ph, 3
  %i.tn = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i.prol ; 3 uses
  %i.to = getelementptr i8, ptr %i.tn, i64 4
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !12
  %i.tq = add i32 %i.tm, 2
  %i.tr = add i32 %i.tq, %i.tp
  %i.ts = ashr i32 %i.tr, 2
  %i.tt = load i32, ptr %i.tn, align 4, !tbaa !12
  %i.tu = sub nsw i32 %i.tt, %i.ts
  store i32 %i.tu, ptr %i.tn, align 4, !tbaa !12
  %indvars.iv.next234.i.i.prol = add nsw i64 %indvars.iv233.i.i.ph, 1
  %i.tv = trunc nsw i64 %indvars.iv233.i.i.ph to i32
  br label %.lr.ph219.i.i.prol.loopexit

.lr.ph219.i.i.prol.loopexit:                      ; preds = %.lr.ph219.i.i.prol, %.lr.ph219.i.i.preheader128
  %indvars.iv233.i.i.unr = phi i64 [ %indvars.iv233.i.i.ph, %.lr.ph219.i.i.preheader128 ], [ %indvars.iv.next234.i.i.prol, %.lr.ph219.i.i.prol ]
  %.0150.in217.i.i.unr = phi i32 [ %.0150.in217.i.i.ph, %.lr.ph219.i.i.preheader128 ], [ %i.tv, %.lr.ph219.i.i.prol ]
  %i.tw = icmp eq i32 %spec.select.i209.i, %.neg
  br i1 %i.tw, label %.preheader207.i.i, label %.lr.ph219.i.i

vector.body115:                                   ; preds = %.lr.ph219.i.i.preheader, %vector.body115
  %index116 = phi i64 [ %index.next122, %vector.body115 ], [ 0, %.lr.ph219.i.i.preheader ] ; 3 uses
  %i.tx = add i64 %index116, %i.nv                ; 4 uses
  %i.ty = trunc i64 %index116 to i32
  %i.tz = add i32 %i.kv, %i.ty
  %i.ua = shl nsw i32 %i.tz, 1
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr [4 x i8], ptr %i.hg, i64 %i.ub
  %i.ud = getelementptr i8, ptr %i.uc, i64 4
  %wide.vec117 = load <8 x i32>, ptr %i.ud, align 4, !tbaa !12, !alias.scope !194
  %strided.vec118 = shufflevector <8 x i32> %wide.vec117, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ue = shl i64 %i.tx, 3
  %i.uf = shl i64 %i.tx, 3
  %i.ug = shl i64 %i.tx, 3
  %i.uh = shl i64 %i.tx, 3
  %i.ui = getelementptr i8, ptr %i.hg, i64 %i.ue  ; 2 uses
  %i.uj = getelementptr i8, ptr %i.hg, i64 %i.uf
  %i.uk = getelementptr i8, ptr %i.uj, i64 8
  %i.ul = getelementptr i8, ptr %i.hg, i64 %i.ug
  %i.um = getelementptr i8, ptr %i.ul, i64 16
  %i.un = getelementptr i8, ptr %i.hg, i64 %i.uh
  %i.uo = getelementptr i8, ptr %i.un, i64 24
  %wide.vec119 = load <8 x i32>, ptr %i.ui, align 4, !tbaa !12 ; 2 uses
  %strided.vec120 = shufflevector <8 x i32> %wide.vec119, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec121 = shufflevector <8 x i32> %wide.vec119, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.up = add <4 x i32> %strided.vec118, splat (i32 2)
  %i.uq = add <4 x i32> %i.up, %strided.vec121
  %i.ur = ashr <4 x i32> %i.uq, splat (i32 2)
  %i.us = sub nsw <4 x i32> %strided.vec120, %i.ur ; 4 uses
  %i.ut = extractelement <4 x i32> %i.us, i64 0
  store i32 %i.ut, ptr %i.ui, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  %i.uu = extractelement <4 x i32> %i.us, i64 1
  store i32 %i.uu, ptr %i.uk, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  %i.uv = extractelement <4 x i32> %i.us, i64 2
  store i32 %i.uv, ptr %i.um, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  %i.uw = extractelement <4 x i32> %i.us, i64 3
  store i32 %i.uw, ptr %i.uo, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  %index.next122 = add nuw i64 %index116, 4       ; 2 uses
  %i.ux = icmp eq i64 %index.next122, %n.vec114
  br i1 %i.ux, label %.lr.ph219.i.i.preheader128, label %vector.body115, !llvm.loop !170

.preheader207.i.i:                                ; preds = %.lr.ph219.i.i.prol.loopexit, %.lr.ph219.i.i, %bb.am
  %.0150.lcssa.i.i = phi i32 [ %.0150216.i.i, %bb.am ], [ %spec.select.i209.i, %.lr.ph219.i.i ], [ %spec.select.i209.i, %.lr.ph219.i.i.prol.loopexit ] ; 2 uses
  %i.uy = icmp slt i32 %.0150.lcssa.i.i, %i.kx
  br i1 %i.uy, label %.lr.ph223.i.i, label %.loopexit208.i.i

.lr.ph223.i.i:                                    ; preds = %.preheader207.i.i
  %i.uz = sext i32 %.0150.lcssa.i.i to i64
  br label %bb.an

.lr.ph219.i.i:                                    ; preds = %.lr.ph219.i.i.prol.loopexit, %.lr.ph219.i.i
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i.1, %.lr.ph219.i.i ], [ %indvars.iv233.i.i.unr, %.lr.ph219.i.i.prol.loopexit ] ; 4 uses
  %.0150.in217.i.i = phi i32 [ %i.wb, %.lr.ph219.i.i ], [ %.0150.in217.i.i.unr, %.lr.ph219.i.i.prol.loopexit ]
  %i.va = shl nsw i32 %.0150.in217.i.i, 1
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr [4 x i8], ptr %i.hg, i64 %i.vb
  %i.vd = getelementptr i8, ptr %i.vc, i64 4
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !12
  %.idx256.i.i = shl i64 %indvars.iv233.i.i, 3
  %i.vf = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i ; 3 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 4
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !12
  %i.vi = add i32 %i.ve, 2
  %i.vj = add i32 %i.vi, %i.vh
  %i.vk = ashr i32 %i.vj, 2
  %i.vl = load i32, ptr %i.vf, align 4, !tbaa !12
  %i.vm = sub nsw i32 %i.vl, %i.vk
  store i32 %i.vm, ptr %i.vf, align 4, !tbaa !12
  %indvars.iv.next234.i.i = add nsw i64 %indvars.iv233.i.i, 1 ; 2 uses
  %i.vn = trunc nsw i64 %indvars.iv233.i.i to i32
  %i.vo = shl nsw i32 %i.vn, 1
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr [4 x i8], ptr %i.hg, i64 %i.vp
  %i.vr = getelementptr i8, ptr %i.vq, i64 4
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !12
  %.idx256.i.i.1 = shl i64 %indvars.iv.next234.i.i, 3
  %i.vt = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i.1 ; 3 uses
  %i.vu = getelementptr i8, ptr %i.vt, i64 4
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !12
  %i.vw = add i32 %i.vs, 2
  %i.vx = add i32 %i.vw, %i.vv
  %i.vy = ashr i32 %i.vx, 2
  %i.vz = load i32, ptr %i.vt, align 4, !tbaa !12
  %i.wa = sub nsw i32 %i.vz, %i.vy
  store i32 %i.wa, ptr %i.vt, align 4, !tbaa !12
  %indvars.iv.next234.i.i.1 = add nsw i64 %indvars.iv233.i.i, 2 ; 2 uses
  %i.wb = trunc nsw i64 %indvars.iv.next234.i.i to i32
  %lftr.wideiv.i.i.1 = trunc i64 %indvars.iv.next234.i.i.1 to i32
  %exitcond236.not.i.i.1 = icmp eq i32 %spec.select.i209.i, %lftr.wideiv.i.i.1
  br i1 %exitcond236.not.i.i.1, label %.preheader207.i.i, label %.lr.ph219.i.i, !llvm.loop !171

bb.an:                                            ; preds = %bb.ar, %.lr.ph223.i.i
  %indvars.iv237.i.i = phi i64 [ %i.uz, %.lr.ph223.i.i ], [ %indvars.iv.next238.i.i, %bb.ar ] ; 8 uses
  %i.wc = icmp slt i64 %indvars.iv237.i.i, 1
  br i1 %i.wc, label %bb.ao, label %.thread194.i.i

.thread194.i.i:                                   ; preds = %bb.an
  %.not179.not.i.i = icmp sgt i64 %indvars.iv237.i.i, %i.nw
  %i.wd = shl nuw nsw i64 %indvars.iv237.i.i, 1
  %i.we = add nuw i64 %i.wd, 4294967295
  %i.wf = and i64 %i.we, 4294967295
  %.pn206.i.i = select i1 %.not179.not.i.i, i64 %i.nn, i64 %i.wf
  %.in180.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.pn206.i.i
  %i.wg = load i32, ptr %.in180.ph.i.i, align 4, !tbaa !12
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.wh = load i32, ptr %i.hm, align 4, !tbaa !12 ; 2 uses
  %i.wi = icmp slt i64 %indvars.iv237.i.i, 0
  br i1 %i.wi, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread194.i.i
  %i.wj = phi i32 [ %i.wg, %.thread194.i.i ], [ %i.wh, %bb.ao ] ; 2 uses
  %.not181.i.i = icmp slt i64 %indvars.iv237.i.i, %i.nw
  br i1 %.not181.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.idx257.i.i = shl nuw nsw i64 %indvars.iv237.i.i, 3
  %i.wk = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx257.i.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.wm = phi i32 [ %i.wj, %bb.aq ], [ %i.wh, %bb.ao ], [ %i.wj, %bb.ap ]
  %.in182.i.i = phi ptr [ %i.wl, %bb.aq ], [ %i.hm, %bb.ao ], [ %i.np, %bb.ap ]
  %i.wn = load i32, ptr %.in182.i.i, align 4, !tbaa !12
  %i.wo = add i32 %i.wm, 2
  %i.wp = add i32 %i.wo, %i.wn
  %i.wq = ashr i32 %i.wp, 2
  %.idx258.i.i = shl nsw i64 %indvars.iv237.i.i, 3
  %i.wr = getelementptr inbounds i8, ptr %i.hg, i64 %.idx258.i.i ; 2 uses
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !12
  %i.wt = sub nsw i32 %i.ws, %i.wq
  store i32 %i.wt, ptr %i.wr, align 4, !tbaa !12
  %indvars.iv.next238.i.i = add nsw i64 %indvars.iv237.i.i, 1 ; 2 uses
  %exitcond241.not.i.i = icmp eq i64 %indvars.iv.next238.i.i, %wide.trip.count240.i.i
  br i1 %exitcond241.not.i.i, label %.loopexit208.i.i, label %bb.an, !llvm.loop !172

.loopexit208.i.i:                                 ; preds = %bb.ar, %.preheader207.i.i, %bb.ai
  br i1 %i.na, label %bb.as, label %opj_dwt_decode_partial_1.exit.i

bb.as:                                            ; preds = %.loopexit208.i.i
  br i1 %i.ny, label %.lr.ph225.i.i.preheader, label %.preheader.i.i

.lr.ph225.i.i.preheader:                          ; preds = %bb.as
  br i1 %min.iters.check, label %.lr.ph225.i.i.preheader127, label %vector.body

.lr.ph225.i.i.preheader127:                       ; preds = %vector.body, %.lr.ph225.i.i.preheader
  %indvars.iv242.i.i.ph = phi i64 [ %i.nf, %.lr.ph225.i.i.preheader ], [ %i.pu, %vector.body ]
  br label %.lr.ph225.i.i

vector.body:                                      ; preds = %.lr.ph225.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph225.i.i.preheader ] ; 2 uses
  %i.wu = add i64 %index, %i.nf                   ; 5 uses
  %i.wv = shl nsw i64 %i.wu, 3
  %i.ww = shl i64 %i.wu, 3
  %i.wx = shl i64 %i.wu, 3
  %i.wy = shl i64 %i.wu, 3
  %i.wz = getelementptr inbounds i8, ptr %i.hg, i64 %i.wv ; 2 uses
  %i.xa = getelementptr i8, ptr %i.hg, i64 %i.ww
  %i.xb = getelementptr i8, ptr %i.hg, i64 %i.wx
  %i.xc = getelementptr i8, ptr %i.hg, i64 %i.wy
  %wide.vec = load <8 x i32>, ptr %i.wz, align 4, !tbaa !12
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.xd = shl i64 %i.wu, 3
  %i.xe = getelementptr i8, ptr %i.hg, i64 %i.xd
  %i.xf = getelementptr i8, ptr %i.xe, i64 4
  %wide.vec92 = load <8 x i32>, ptr %i.xf, align 4, !tbaa !12 ; 2 uses
  %strided.vec93 = shufflevector <8 x i32> %wide.vec92, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec94 = shufflevector <8 x i32> %wide.vec92, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.xg = add nsw <4 x i32> %strided.vec94, %strided.vec
  %i.xh = ashr <4 x i32> %i.xg, splat (i32 1)
  %i.xi = getelementptr i8, ptr %i.wz, i64 4
  %i.xj = getelementptr i8, ptr %i.xa, i64 12
  %i.xk = getelementptr i8, ptr %i.xb, i64 20
  %i.xl = getelementptr i8, ptr %i.xc, i64 28
  %i.xm = add nsw <4 x i32> %i.xh, %strided.vec93 ; 4 uses
  %i.xn = extractelement <4 x i32> %i.xm, i64 0
  store i32 %i.xn, ptr %i.xi, align 4, !tbaa !12
  %i.xo = extractelement <4 x i32> %i.xm, i64 1
  store i32 %i.xo, ptr %i.xj, align 4, !tbaa !12
  %i.xp = extractelement <4 x i32> %i.xm, i64 2
  store i32 %i.xp, ptr %i.xk, align 4, !tbaa !12
  %i.xq = extractelement <4 x i32> %i.xm, i64 3
  store i32 %i.xq, ptr %i.xl, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xr = icmp eq i64 %index.next, %n.vec
  br i1 %i.xr, label %.lr.ph225.i.i.preheader127, label %vector.body, !llvm.loop !173

.preheader.loopexit.i.i:                          ; preds = %.lr.ph225.i.i
  %i.xs = trunc nsw i64 %indvars.iv.next243.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %bb.as
  %.2.lcssa.i.i = phi i32 [ %i.ky, %bb.as ], [ %i.xs, %.preheader.loopexit.i.i ] ; 2 uses
  %i.xt = icmp slt i32 %.2.lcssa.i.i, %i.la
  br i1 %i.xt, label %.lr.ph229.i.i, label %opj_dwt_decode_partial_1.exit.i

.lr.ph225.i.i:                                    ; preds = %.lr.ph225.i.i.preheader127, %.lr.ph225.i.i
  %indvars.iv242.i.i = phi i64 [ %indvars.iv.next243.i.i, %.lr.ph225.i.i ], [ %indvars.iv242.i.i.ph, %.lr.ph225.i.i.preheader127 ] ; 2 uses
  %.idx259.i.i = shl nsw i64 %indvars.iv242.i.i, 3
  %i.xu = getelementptr inbounds i8, ptr %i.hg, i64 %.idx259.i.i ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !12
  %indvars.iv.next243.i.i = add nsw i64 %indvars.iv242.i.i, 1 ; 4 uses
  %.idx260.i.i = shl nsw i64 %indvars.iv.next243.i.i, 3
  %i.xw = getelementptr inbounds i8, ptr %i.hg, i64 %.idx260.i.i
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !12
  %i.xy = add nsw i32 %i.xx, %i.xv
  %i.xz = ashr i32 %i.xy, 1
  %i.ya = getelementptr i8, ptr %i.xu, i64 4      ; 2 uses
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !12
  %i.yc = add nsw i32 %i.xz, %i.yb
  store i32 %i.yc, ptr %i.ya, align 4, !tbaa !12
  %i.yd = icmp slt i64 %indvars.iv.next243.i.i, %i.nz
  br i1 %i.yd, label %.lr.ph225.i.i, label %.preheader.loopexit.i.i, !llvm.loop !174

.lr.ph229.i.i:                                    ; preds = %.preheader.i.i, %bb.aw
  %.3227.i.i = phi i32 [ %i.yq, %bb.aw ], [ %.2.lcssa.i.i, %.preheader.i.i ] ; 7 uses
  %i.ye = icmp slt i32 %.3227.i.i, 0
  br i1 %i.ye, label %bb.at, label %.thread197.i.i

.thread197.i.i:                                   ; preds = %.lr.ph229.i.i
  %.not175.i.i = icmp slt i32 %.3227.i.i, %.0182298.i
  %i.yf = shl nuw nsw i32 %.3227.i.i, 1
  %i.yg = zext nneg i32 %i.yf to i64
  %.in176.ph.v.i.i = select i1 %.not175.i.i, i64 %i.yg, i64 %i.ob
  %.in176.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.in176.ph.v.i.i
  %i.yh = load i32, ptr %.in176.ph.i.i, align 4, !tbaa !12
  %i.yi = add nuw nsw i32 %.3227.i.i, 1
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph229.i.i
  %i.yj = load i32, ptr %i.hg, align 4, !tbaa !12 ; 2 uses
  %i.yk = add nuw nsw i32 %.3227.i.i, 1
  %.not205.i.i = icmp eq i32 %.3227.i.i, -1
  br i1 %.not205.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at, %.thread197.i.i
  %i.yl = phi i32 [ %i.yi, %.thread197.i.i ], [ 0, %bb.at ] ; 4 uses
  %i.ym = phi i32 [ %i.yh, %.thread197.i.i ], [ %i.yj, %bb.at ] ; 2 uses
  %.not177.i.i = icmp slt i32 %i.yl, %.0182298.i
  br i1 %.not177.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.yn = shl nuw nsw i32 %i.yl, 1
  %i.yo = zext nneg i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.yo
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.yq = phi i32 [ %i.yl, %bb.av ], [ %i.yk, %bb.at ], [ %i.yl, %bb.au ] ; 2 uses
  %i.yr = phi i32 [ %i.ym, %bb.av ], [ %i.yj, %bb.at ], [ %i.ym, %bb.au ]
  %.in178.i.i = phi ptr [ %i.yp, %bb.av ], [ %i.hg, %bb.at ], [ %i.oc, %bb.au ]
  %i.ys = load i32, ptr %.in178.i.i, align 4, !tbaa !12
  %i.yt = add nsw i32 %i.ys, %i.yr
  %i.yu = ashr i32 %i.yt, 1
  %i.yv = shl nsw i32 %.3227.i.i, 1
  %i.yw = sext i32 %i.yv to i64
  %i.yx = getelementptr [4 x i8], ptr %i.hg, i64 %i.yw
  %i.yy = getelementptr i8, ptr %i.yx, i64 4      ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !12
  %i.za = add nsw i32 %i.yu, %i.yz
  store i32 %i.za, ptr %i.yy, align 4, !tbaa !12
  %i.zb = icmp slt i32 %i.yq, %i.la
  br i1 %i.zb, label %.lr.ph229.i.i, label %opj_dwt_decode_partial_1.exit.i, !llvm.loop !175

bb.ax:                                            ; preds = %bb.ag
  br i1 %or.cond3.i.i, label %bb.ay, label %.preheader211.i.i

.preheader211.i.i:                                ; preds = %bb.ax
  br i1 %i.mv, label %.lr.ph.i208.i, label %.preheader209.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.zc = load i32, ptr %i.hg, align 4, !tbaa !12
  %i.zd = sdiv i32 %i.zc, 2
  store i32 %i.zd, ptr %i.hg, align 4, !tbaa !12
  br label %opj_dwt_decode_partial_1.exit.i

.preheader209.i.i:                                ; preds = %bb.bc, %.preheader211.i.i
  br i1 %i.na, label %.lr.ph215.i.i, label %opj_dwt_decode_partial_1.exit.i

.lr.ph.i208.i:                                    ; preds = %.preheader211.i.i, %bb.bc
  %.4212.i.i = phi i32 [ %i.zu, %bb.bc ], [ %i.kv, %.preheader211.i.i ] ; 6 uses
  %i.ze = shl nsw i32 %.4212.i.i, 1               ; 2 uses
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr [4 x i8], ptr %i.hg, i64 %i.zf
  %i.zh = getelementptr i8, ptr %i.zg, i64 4      ; 2 uses
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !12
  %i.zj = icmp slt i32 %.4212.i.i, 0
  br i1 %i.zj, label %bb.az, label %.thread200.i.i

.thread200.i.i:                                   ; preds = %.lr.ph.i208.i
  %.not187.i.i = icmp slt i32 %.4212.i.i, %i.ig
  %i.zk = zext nneg i32 %i.ze to i64
  %.in188.ph.v.i.i = select i1 %.not187.i.i, i64 %i.zk, i64 %i.my
  %.in188.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.in188.ph.v.i.i
  %i.zl = load i32, ptr %.in188.ph.i.i, align 4, !tbaa !12
  %i.zm = add nuw nsw i32 %.4212.i.i, 1
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i208.i
  %i.zn = load i32, ptr %i.hg, align 4, !tbaa !12 ; 2 uses
  %i.zo = add nuw nsw i32 %.4212.i.i, 1
  %.not204.i.i = icmp eq i32 %.4212.i.i, -1
  br i1 %.not204.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az, %.thread200.i.i
  %i.zp = phi i32 [ %i.zm, %.thread200.i.i ], [ 0, %bb.az ] ; 4 uses
  %i.zq = phi i32 [ %i.zl, %.thread200.i.i ], [ %i.zn, %bb.az ] ; 2 uses
  %.not189.i.i = icmp slt i32 %i.zp, %i.ig
  br i1 %.not189.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.zr = shl nuw nsw i32 %i.zp, 1
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.zs
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.zu = phi i32 [ %i.zp, %bb.bb ], [ %i.zo, %bb.az ], [ %i.zp, %bb.ba ] ; 2 uses
  %i.zv = phi i32 [ %i.zq, %bb.bb ], [ %i.zn, %bb.az ], [ %i.zq, %bb.ba ]
  %.in190.i.i = phi ptr [ %i.zt, %bb.bb ], [ %i.hg, %bb.az ], [ %i.mz, %bb.ba ]
  %i.zw = load i32, ptr %.in190.i.i, align 4, !tbaa !12
  %i.zx = add i32 %i.zv, 2
  %i.zy = add i32 %i.zx, %i.zw
  %i.zz = ashr i32 %i.zy, 2
  %i.aaa = sub i32 %i.zi, %i.zz
  store i32 %i.aaa, ptr %i.zh, align 4, !tbaa !12
  %i.aab = icmp slt i32 %i.zu, %i.kx
  br i1 %i.aab, label %.lr.ph.i208.i, label %.preheader209.i.i, !llvm.loop !176

.lr.ph215.i.i:                                    ; preds = %.preheader209.i.i, %bb.bf
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bf ], [ %i.nf, %.preheader209.i.i ] ; 6 uses
  %.idx.i.i = shl nsw i64 %indvars.iv.i.i, 3
  %i.aac = getelementptr i8, ptr %i.hg, i64 %.idx.i.i ; 4 uses
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !12
  %i.aae = icmp slt i64 %indvars.iv.i.i, 0
  br i1 %i.aae, label %.thread202.i.i, label %bb.bd

.thread202.i.i:                                   ; preds = %.lr.ph215.i.i
  %i.aaf = load i32, ptr %i.hm, align 4, !tbaa !12
  br label %bb.bf

bb.bd:                                            ; preds = %.lr.ph215.i.i
  %.not183.i.i = icmp slt i64 %indvars.iv.i.i, %i.ng
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %.in184.i.i = select i1 %.not183.i.i, ptr %i.aag, ptr %i.ne
  %i.aah = load i32, ptr %.in184.i.i, align 4, !tbaa !12 ; 2 uses
  %i.aai = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %i.aai, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not185.not.i.i = icmp sgt i64 %indvars.iv.i.i, %i.ng
  %i.aaj = getelementptr i8, ptr %i.aac, i64 -4
  %spec.select262.i.i = select i1 %.not185.not.i.i, ptr %i.ne, ptr %i.aaj
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %.thread202.i.i
  %i.aak = phi i32 [ %i.aah, %bb.be ], [ %i.aah, %bb.bd ], [ %i.aaf, %.thread202.i.i ]
  %.in186.i.i = phi ptr [ %spec.select262.i.i, %bb.be ], [ %i.hm, %bb.bd ], [ %i.hm, %.thread202.i.i ]
  %i.aal = load i32, ptr %.in186.i.i, align 4, !tbaa !12
  %i.aam = add i32 %i.aal, %i.aak
  %i.aan = ashr i32 %i.aam, 1
  %i.aao = add i32 %i.aan, %i.aad
  store i32 %i.aao, ptr %i.aac, align 4, !tbaa !12
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %opj_dwt_decode_partial_1.exit.i, label %.lr.ph215.i.i, !llvm.loop !177

opj_dwt_decode_partial_1.exit.i:                  ; preds = %bb.bf, %bb.aw, %.preheader209.i.i, %bb.ay, %.preheader.i.i, %.loopexit208.i.i, %bb.ah
  %i.aap = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.fe, i32 noundef %i.ll, i32 noundef %.0176295.i, i32 noundef %i.lq, i32 noundef %i.st, ptr noundef nonnull %i.oe, i32 noundef 1, i32 noundef 0, i32 noundef 1) #15
  %.not192.i = icmp eq i32 %i.aap, 0
  br i1 %.not192.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %opj_dwt_decode_partial_1.exit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bh:                                            ; preds = %opj_dwt_decode_partial_1.exit.i, %._crit_edge314.i
  %.pre-phi319.i = phi i32 [ %.pre318.i, %._crit_edge314.i ], [ %i.st, %opj_dwt_decode_partial_1.exit.i ] ; 2 uses
  %exitcond.not.i16 = icmp eq i32 %.pre-phi319.i, %i.if
  br i1 %exitcond.not.i16, label %.preheader.i17, label %bb.ac, !llvm.loop !178

bb.bi:                                            ; preds = %opj_dwt_decode_partial_1_parallel.exit.i, %.preheader.i17
  %.0177.i = phi i32 [ %i.aat, %opj_dwt_decode_partial_1_parallel.exit.i ], [ %i.ll, %.preheader.i17 ] ; 6 uses
  %i.aaq = icmp ult i32 %.0177.i, %i.lq
  br i1 %i.aaq, label %bb.bj, label %bb.bs

bb.bj:                                            ; preds = %bb.bi
  %i.aar = sub nuw i32 %i.lq, %.0177.i
  %i.aas = tail call noundef i32 @llvm.umin.i32(i32 %i.aar, i32 4)
  %i.aat = add i32 %i.aas, %.0177.i               ; 4 uses
  %i.aau = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %.0177.i, i32 noundef %i.lb, i32 noundef %i.aat, i32 noundef %i.ld, ptr noundef nonnull %i.qa, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15 ; 0 uses
  %i.aav = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %.0177.i, i32 noundef %.pre315.i, i32 noundef %i.aat, i32 noundef %.pre316.i, ptr noundef nonnull %i.qg, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lr, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  br i1 %or.cond.i213.i, label %bb.bl, label %opj_dwt_decode_partial_1_parallel.exit.i

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.qj, label %.preheader350.i.i, label %.loopexit347.i.i

.preheader350.i.i:                                ; preds = %bb.bl
  br i1 %i.ri, label %bb.bm, label %.thread.i217.i

.thread.i217.i:                                   ; preds = %.preheader350.i.i
  %i.aaw = load i32, ptr %.in311.ph.i.i, align 4, !tbaa !12
  br label %.thread.1.i.i

bb.bm:                                            ; preds = %.preheader350.i.i
  %i.aax = load i32, ptr %i.hs, align 4, !tbaa !12 ; 2 uses
  br i1 %i.rj, label %.thread360.i, label %.thread.1.i.i

.thread360.i:                                     ; preds = %bb.bm
  %i.aay = load i32, ptr %i.ht, align 4, !tbaa !12
  %i.aaz = insertelement <2 x i32> poison, i32 %i.aax, i64 0
  %i.aba = insertelement <2 x i32> %i.aaz, i32 %i.aay, i64 1
  %i.abb = shl <2 x i32> %i.aba, splat (i32 1)
  %i.abc = add <2 x i32> %i.abb, splat (i32 2)
  %i.abd = ashr <2 x i32> %i.abc, splat (i32 2)
  %i.abe = load <2 x i32>, ptr %i.ro, align 4, !tbaa !12
  %i.abf = sub nsw <2 x i32> %i.abe, %i.abd
  store <2 x i32> %i.abf, ptr %i.ro, align 4, !tbaa !12
  %i.abg = load i32, ptr %i.hu, align 4, !tbaa !12
  %reass.add389.i = shl i32 %i.abg, 1
  %i.abh = add i32 %reass.add389.i, 2
  %i.abi = ashr i32 %i.abh, 2
  %i.abj = load i32, ptr %i.rq, align 4, !tbaa !12
  %i.abk = sub nsw i32 %i.abj, %i.abi
  store i32 %i.abk, ptr %i.rq, align 4, !tbaa !12
  %i.abl = load i32, ptr %i.hv, align 4, !tbaa !12 ; 2 uses
  br label %bb.bn

.thread.1.i.i:                                    ; preds = %bb.bm, %.thread.i217.i
  %.in387.i = phi ptr [ %.in311.ph.3.i.i, %.thread.i217.i ], [ %i.hv, %bb.bm ]
  %.in386.i = phi ptr [ %.in311.ph.2.i.i, %.thread.i217.i ], [ %i.hu, %bb.bm ]
  %spec.select = phi ptr [ %.in311.ph.1.i.i, %.thread.i217.i ], [ %i.ht, %bb.bm ]
  %i.abm = phi i32 [ %i.aaw, %.thread.i217.i ], [ %i.aax, %bb.bm ]
  %.pre310.i = load i32, ptr %.301.i, align 4, !tbaa !12
  %i.abn = add i32 %i.abm, 2
  %i.abo = add i32 %i.abn, %.pre310.i
  %i.abp = ashr i32 %i.abo, 2
  %i.abq = load i32, ptr %i.ro, align 4, !tbaa !12
  %i.abr = sub nsw i32 %i.abq, %i.abp
  store i32 %i.abr, ptr %i.ro, align 4, !tbaa !12
  %i.abs = load i32, ptr %spec.select, align 4, !tbaa !12
  %.pre311.i = load i32, ptr %.302.i, align 4, !tbaa !12
  %i.abt = add i32 %i.abs, 2
  %i.abu = add i32 %i.abt, %.pre311.i
  %i.abv = ashr i32 %i.abu, 2
  %i.abw = load i32, ptr %i.rp, align 4, !tbaa !12
  %i.abx = sub nsw i32 %i.abw, %i.abv
  store i32 %i.abx, ptr %i.rp, align 4, !tbaa !12
  %i.aby = load i32, ptr %.in386.i, align 4, !tbaa !12
  %.pre312.i = load i32, ptr %.303.i, align 4, !tbaa !12
  %i.abz = add i32 %i.aby, 2
  %i.aca = add i32 %i.abz, %.pre312.i
  %i.acb = ashr i32 %i.aca, 2
  %i.acc = load i32, ptr %i.rq, align 4, !tbaa !12
  %i.acd = sub nsw i32 %i.acc, %i.acb
  store i32 %i.acd, ptr %i.rq, align 4, !tbaa !12
  %i.ace = load i32, ptr %.in387.i, align 4, !tbaa !12
  %.pre313.i = load i32, ptr %.304.i, align 4, !tbaa !12
  br label %bb.bn

bb.bn:                                            ; preds = %.thread.1.i.i, %.thread360.i
  %i.acf = phi i32 [ %i.abl, %.thread360.i ], [ %.pre313.i, %.thread.1.i.i ]
  %i.acg = phi i32 [ %i.abl, %.thread360.i ], [ %i.ace, %.thread.1.i.i ]
  %i.ach = add i32 %i.acf, 2
  %i.aci = add i32 %i.ach, %i.acg
  %i.acj = ashr i32 %i.aci, 2
  %i.ack = load i32, ptr %i.rr, align 4, !tbaa !12
  %i.acl = sub nsw i32 %i.ack, %i.acj
  store i32 %i.acl, ptr %i.rr, align 4, !tbaa !12
  br i1 %i.ru, label %.lr.ph.preheader.i.i, label %.loopexit349.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bn
  %i.acm = load <2 x i64>, ptr %i.rw, align 16, !tbaa !47
  br label %.lr.ph.i220.i

.lr.ph.i220.i:                                    ; preds = %.lr.ph.i220.i, %.lr.ph.preheader.i.i
  %indvars.iv.i221.i = phi i64 [ %i.rx, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i222.i, %.lr.ph.i220.i ] ; 3 uses
  %i.acn = phi i32 [ %i.rt, %.lr.ph.preheader.i.i ], [ %i.adk, %.lr.ph.i220.i ]
  %.0278375.i.i = phi <2 x i64> [ %i.acm, %.lr.ph.preheader.i.i ], [ %i.acy, %.lr.ph.i220.i ]
  %i.aco = shl nsw i64 %indvars.iv.i221.i, 3      ; 2 uses
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.aco ; 2 uses
  %i.acq = load <4 x i32>, ptr %i.acp, align 16, !tbaa !47
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.aco
  %i.acs = load <4 x i32>, ptr %i.acr, align 16, !tbaa !47
  %i.act = shl nsw i32 %i.acn, 3
  %i.acu = sext i32 %i.act to i64                 ; 2 uses
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.acu ; 2 uses
  %i.acw = load <4 x i32>, ptr %i.acv, align 16, !tbaa !47
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.acu
  %i.acy = load <2 x i64>, ptr %i.acx, align 16, !tbaa !47 ; 2 uses
  %i.acz = bitcast <2 x i64> %.0278375.i.i to <4 x i32>
  %i.ada = add <4 x i32> %i.acs, splat (i32 2)    ; 2 uses
  %i.adb = add <4 x i32> %i.ada, %i.acz
  %i.adc = ashr <4 x i32> %i.adb, splat (i32 2)
  %i.add = sub <4 x i32> %i.acq, %i.adc
  %i.ade = bitcast <2 x i64> %i.acy to <4 x i32>
  %i.adf = add <4 x i32> %i.ada, %i.ade
  %i.adg = ashr <4 x i32> %i.adf, splat (i32 2)
  %i.adh = sub <4 x i32> %i.acw, %i.adg
  store <4 x i32> %i.add, ptr %i.acp, align 16, !tbaa !47
  store <4 x i32> %i.adh, ptr %i.acv, align 16, !tbaa !47
  %indvars.iv.next.i222.i = add nsw i64 %indvars.iv.i221.i, 2 ; 2 uses
  %i.adi = add nsw i64 %indvars.iv.i221.i, 3      ; 2 uses
  %i.adj = icmp slt i64 %i.adi, %i.ry
  %i.adk = trunc nsw i64 %i.adi to i32
  br i1 %i.adj, label %.lr.ph.i220.i, label %.loopexit349.loopexit.i.i, !llvm.loop !179

.loopexit349.loopexit.i.i:                        ; preds = %.lr.ph.i220.i
  %i.adl = trunc nsw i64 %indvars.iv.next.i222.i to i32
  br label %.loopexit349.i.i

.loopexit349.i.i:                                 ; preds = %.loopexit349.loopexit.i.i, %bb.bn
  %.1.i.i = phi i32 [ %i.rs, %bb.bn ], [ %i.adl, %.loopexit349.loopexit.i.i ] ; 7 uses
  %i.adm = icmp slt i32 %.1.i.i, %spec.select.i218.i
  br i1 %i.adm, label %.preheader348.i.i.preheader, label %.preheader346.i.i

.preheader348.i.i.preheader:                      ; preds = %.loopexit349.i.i
  %i.adn = sub i32 %spec.select.i218.i, %.1.i.i
  %.neg148 = add i32 %.1.i.i, 1
  %xtraiter144 = and i32 %i.adn, 1
  %lcmp.mod145.not = icmp eq i32 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.preheader348.i.i.prol.loopexit, label %.preheader348.i.i.prol

.preheader348.i.i.prol:                           ; preds = %.preheader348.i.i.preheader
  %i.ado = shl i32 %.1.i.i, 3                     ; 2 uses
  %i.adp = add i32 %i.ado, -4
  %i.adq = zext i32 %i.adp to i64
  %i.adr = zext i32 %i.ado to i64
end_hunk_1
begin_hunk_2_@opj_dwt_encode_and_deinterleave_h_one_row_real:bb.a
  %i.lg = load float, ptr %i.lc, align 4, !tbaa !76
  %i.lh = load float, ptr %i.ld, align 4, !tbaa !76
  %i.li = load float, ptr %i.le, align 4, !tbaa !76
  %i.lj = load float, ptr %i.lf, align 4, !tbaa !76
  %i.lk = insertelement <4 x float> poison, float %i.lg, i64 0
  %i.ll = insertelement <4 x float> %i.lk, float %i.lh, i64 1
  %i.lm = insertelement <4 x float> %i.ll, float %i.li, i64 2
  %i.ln = insertelement <4 x float> %i.lm, float %i.lj, i64 3
  %i.lo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lb, <4 x float> splat (float f0xBD5901AE), <4 x float> %i.ln) ; 4 uses
  %i.lp = extractelement <4 x float> %i.lo, i64 0
  store float %i.lp, ptr %i.lc, align 4, !tbaa !76
  %i.lq = extractelement <4 x float> %i.lo, i64 1
  store float %i.lq, ptr %i.ld, align 4, !tbaa !76
  %i.lr = extractelement <4 x float> %i.lo, i64 2
  store float %i.lr, ptr %i.le, align 4, !tbaa !76
  %i.ls = extractelement <4 x float> %i.lo, i64 3
  store float %i.ls, ptr %i.lf, align 4, !tbaa !76
  %i.lt = getelementptr inbounds nuw i8, ptr %next.gep96, i64 16
  %i.lu = getelementptr i8, ptr %i.ja, i64 48
  %i.lv = getelementptr i8, ptr %i.jb, i64 80
  %i.lw = getelementptr i8, ptr %i.jc, i64 112
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !76
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !76
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !76
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !76
  %i.mb = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 1
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 2
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 3 ; 2 uses
  %i.mf = fadd <4 x float> %i.la, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %next.gep96, i64 12 ; 2 uses
  %i.mh = getelementptr i8, ptr %i.ja, i64 44     ; 2 uses
  %i.mi = getelementptr i8, ptr %i.jb, i64 76     ; 2 uses
  %i.mj = getelementptr i8, ptr %i.jc, i64 108    ; 2 uses
  %i.mk = load float, ptr %i.mg, align 4, !tbaa !76
  %i.ml = load float, ptr %i.mh, align 4, !tbaa !76
  %i.mm = load float, ptr %i.mi, align 4, !tbaa !76
  %i.mn = load float, ptr %i.mj, align 4, !tbaa !76
  %i.mo = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.mp = insertelement <4 x float> %i.mo, float %i.ml, i64 1
  %i.mq = insertelement <4 x float> %i.mp, float %i.mm, i64 2
  %i.mr = insertelement <4 x float> %i.mq, float %i.mn, i64 3
  %i.ms = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mf, <4 x float> splat (float f0xBD5901AE), <4 x float> %i.mr) ; 4 uses
  %i.mt = extractelement <4 x float> %i.ms, i64 0
  store float %i.mt, ptr %i.mg, align 4, !tbaa !76
  %i.mu = extractelement <4 x float> %i.ms, i64 1
  store float %i.mu, ptr %i.mh, align 4, !tbaa !76
  %i.mv = extractelement <4 x float> %i.ms, i64 2
  store float %i.mv, ptr %i.mi, align 4, !tbaa !76
  %i.mw = extractelement <4 x float> %i.ms, i64 3
  store float %i.mw, ptr %i.mj, align 4, !tbaa !76
  %i.mx = getelementptr inbounds nuw i8, ptr %next.gep96, i64 24
  %i.my = getelementptr i8, ptr %i.ja, i64 56
  %i.mz = getelementptr i8, ptr %i.jb, i64 88
  %i.na = getelementptr i8, ptr %i.jc, i64 120
  %i.nb = load float, ptr %i.mx, align 4, !tbaa !76
  %i.nc = load float, ptr %i.my, align 4, !tbaa !76
  %i.nd = load float, ptr %i.mz, align 4, !tbaa !76
  %i.ne = load float, ptr %i.na, align 4, !tbaa !76
  %i.nf = insertelement <4 x float> poison, float %i.nb, i64 0
  %i.ng = insertelement <4 x float> %i.nf, float %i.nc, i64 1
  %i.nh = insertelement <4 x float> %i.ng, float %i.nd, i64 2
  %i.ni = insertelement <4 x float> %i.nh, float %i.ne, i64 3
  %i.nj = fadd <4 x float> %i.me, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %next.gep96, i64 20 ; 2 uses
  %i.nl = getelementptr i8, ptr %i.ja, i64 52     ; 2 uses
  %i.nm = getelementptr i8, ptr %i.jb, i64 84     ; 2 uses
  %i.nn = getelementptr i8, ptr %i.jc, i64 116    ; 2 uses
  %i.no = load float, ptr %i.nk, align 4, !tbaa !76
  %i.np = load float, ptr %i.nl, align 4, !tbaa !76
  %i.nq = load float, ptr %i.nm, align 4, !tbaa !76
  %i.nr = load float, ptr %i.nn, align 4, !tbaa !76
  %i.ns = insertelement <4 x float> poison, float %i.no, i64 0
  %i.nt = insertelement <4 x float> %i.ns, float %i.np, i64 1
  %i.nu = insertelement <4 x float> %i.nt, float %i.nq, i64 2
  %i.nv = insertelement <4 x float> %i.nu, float %i.nr, i64 3
  %i.nw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nj, <4 x float> splat (float f0xBD5901AE), <4 x float> %i.nv) ; 4 uses
  %i.nx = extractelement <4 x float> %i.nw, i64 0
  store float %i.nx, ptr %i.nk, align 4, !tbaa !76
  %i.ny = extractelement <4 x float> %i.nw, i64 1
  store float %i.ny, ptr %i.nl, align 4, !tbaa !76
  %i.nz = extractelement <4 x float> %i.nw, i64 2
  store float %i.nz, ptr %i.nm, align 4, !tbaa !76
  %i.oa = extractelement <4 x float> %i.nw, i64 3
  store float %i.oa, ptr %i.nn, align 4, !tbaa !76
  %index.next100 = add nuw i64 %index95, 4        ; 2 uses
  %i.ob = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.ob, label %.lr.ph.i52.i.preheader273, label %vector.body94, !llvm.loop !219

.preheader.loopexit.i55.i:                        ; preds = %.lr.ph.i52.i
  %i.oc = add nsw i32 %i.ig, -5
  %i.od = and i32 %i.oc, -4
  %i.oe = add nuw nsw i32 %i.od, 5
  br label %.preheader.i43.i

.preheader.i43.i:                                 ; preds = %.preheader.loopexit.i55.i, %bb.e
  %.040.lcssa.i44.i = phi ptr [ %i.im, %bb.e ], [ %i.qa, %.preheader.loopexit.i55.i ] ; 7 uses
  %.0.lcssa.i45.i = phi i32 [ 1, %bb.e ], [ %i.oe, %.preheader.loopexit.i55.i ] ; 4 uses
  %i.of = icmp samesign ult i32 %.0.lcssa.i45.i, %i.ig
  br i1 %i.of, label %.lr.ph48.i48.i.preheader, label %.loopexit.i46.i

.lr.ph48.i48.i.preheader:                         ; preds = %.preheader.i43.i
  %i.og = xor i32 %.0.lcssa.i45.i, -1
  %i.oh = add i32 %i.ig, %i.og                    ; 2 uses
  %min.iters.check105 = icmp ult i32 %i.oh, 4
  br i1 %min.iters.check105, label %.lr.ph48.i48.i.preheader271, label %vector.ph106

.lr.ph48.i48.i.preheader271:                      ; preds = %vector.body108, %.lr.ph48.i48.i.preheader
  %.147.i49.i.ph = phi i32 [ %.0.lcssa.i45.i, %.lr.ph48.i48.i.preheader ], [ %i.oo, %vector.body108 ]
  %.14146.i50.i.ph = phi ptr [ %.040.lcssa.i44.i, %.lr.ph48.i48.i.preheader ], [ %i.oq, %vector.body108 ]
  br label %.lr.ph48.i48.i

vector.ph106:                                     ; preds = %.lr.ph48.i48.i.preheader
  %i.oi = zext i32 %i.oh to i64
  %i.oj = add nuw nsw i64 %i.oi, 1                ; 2 uses
  %i.ok = and i64 %i.oj, 3                        ; 2 uses
  %i.ol = icmp eq i64 %i.ok, 0
  %i.om = select i1 %i.ol, i64 4, i64 %i.ok
  %n.vec107 = sub nsw i64 %i.oj, %i.om            ; 3 uses
  %i.on = trunc i64 %n.vec107 to i32
  %i.oo = add i32 %.0.lcssa.i45.i, %i.on
  %i.op = shl nsw i64 %n.vec107, 3
  %i.oq = getelementptr i8, ptr %.040.lcssa.i44.i, i64 %i.op
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next119, %vector.body108 ] ; 2 uses
  %i.or = shl i64 %index109, 3                    ; 4 uses
  %next.gep110 = getelementptr i8, ptr %.040.lcssa.i44.i, i64 %i.or ; 3 uses
  %i.os = getelementptr i8, ptr %.040.lcssa.i44.i, i64 %i.or
  %i.ot = getelementptr i8, ptr %.040.lcssa.i44.i, i64 %i.or
  %i.ou = getelementptr i8, ptr %.040.lcssa.i44.i, i64 %i.or
  %i.ov = getelementptr inbounds i8, ptr %next.gep110, i64 -8
  %wide.vec114 = load <8 x float>, ptr %i.ov, align 4, !tbaa !76
  %strided.vec115 = shufflevector <8 x float> %wide.vec114, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ow = getelementptr i8, ptr %next.gep110, i64 -4
  %wide.vec116 = load <8 x float>, ptr %i.ow, align 4, !tbaa !76 ; 2 uses
  %strided.vec117 = shufflevector <8 x float> %wide.vec116, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec118 = shufflevector <8 x float> %wide.vec116, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ox = fadd <4 x float> %strided.vec115, %strided.vec118
  %i.oy = getelementptr inbounds i8, ptr %next.gep110, i64 -4
  %i.oz = getelementptr i8, ptr %i.os, i64 4
  %i.pa = getelementptr i8, ptr %i.ot, i64 12
  %i.pb = getelementptr i8, ptr %i.ou, i64 20
  %i.pc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> splat (float f0xBD5901AE), <4 x float> %strided.vec117) ; 4 uses
  %i.pd = extractelement <4 x float> %i.pc, i64 0
  store float %i.pd, ptr %i.oy, align 4, !tbaa !76
  %i.pe = extractelement <4 x float> %i.pc, i64 1
  store float %i.pe, ptr %i.oz, align 4, !tbaa !76
  %i.pf = extractelement <4 x float> %i.pc, i64 2
  store float %i.pf, ptr %i.pa, align 4, !tbaa !76
  %i.pg = extractelement <4 x float> %i.pc, i64 3
  store float %i.pg, ptr %i.pb, align 4, !tbaa !76
  %index.next119 = add nuw i64 %index109, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next119, %n.vec107
  br i1 %i.ph, label %.lr.ph48.i48.i.preheader271, label %vector.body108, !llvm.loop !220

.lr.ph.i52.i:                                     ; preds = %.lr.ph.i52.i.preheader273, %.lr.ph.i52.i
  %.044.i53.i = phi i32 [ %i.qb, %.lr.ph.i52.i ], [ %.044.i53.i.ph, %.lr.ph.i52.i.preheader273 ] ; 2 uses
  %.04043.i54.i = phi ptr [ %i.qa, %.lr.ph.i52.i ], [ %.04043.i54.i.ph, %.lr.ph.i52.i.preheader273 ] ; 7 uses
  %i.pi = getelementptr inbounds i8, ptr %.04043.i54.i, i64 -8
  %i.pj = getelementptr inbounds i8, ptr %.04043.i54.i, i64 -4
  %i.pk = getelementptr inbounds nuw i8, ptr %.04043.i54.i, i64 4
  %i.pl = getelementptr inbounds nuw i8, ptr %.04043.i54.i, i64 12
  %i.pm = getelementptr inbounds nuw i8, ptr %.04043.i54.i, i64 24
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !76
  %i.po = getelementptr inbounds nuw i8, ptr %.04043.i54.i, i64 20
  %i.pp = load <8 x float>, ptr %i.pi, align 4, !tbaa !76 ; 3 uses
  %i.pq = shufflevector <8 x float> %i.pp, <8 x float> poison, <4 x i32> <i32 4, i32 6, i32 0, i32 2>
  %i.pr = shufflevector <8 x float> %i.pp, <8 x float> poison, <4 x i32> <i32 6, i32 poison, i32 2, i32 4>
  %i.ps = insertelement <4 x float> %i.pr, float %i.pn, i64 1
  %i.pt = fadd <4 x float> %i.pq, %i.ps
  %i.pu = shufflevector <8 x float> %i.pp, <8 x float> poison, <4 x i32> <i32 5, i32 7, i32 1, i32 3>
  %i.pv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pt, <4 x float> splat (float f0xBD5901AE), <4 x float> %i.pu) ; 4 uses
  %i.pw = extractelement <4 x float> %i.pv, i64 2
  store float %i.pw, ptr %i.pj, align 4, !tbaa !76
  %i.px = extractelement <4 x float> %i.pv, i64 3
  store float %i.px, ptr %i.pk, align 4, !tbaa !76
  %i.py = extractelement <4 x float> %i.pv, i64 0
  store float %i.py, ptr %i.pl, align 4, !tbaa !76
  %i.pz = extractelement <4 x float> %i.pv, i64 1
  store float %i.pz, ptr %i.po, align 4, !tbaa !76
  %i.qa = getelementptr inbounds nuw i8, ptr %.04043.i54.i, i64 32 ; 2 uses
  %i.qb = add nuw nsw i32 %.044.i53.i, 4
  %i.qc = add nuw i32 %.044.i53.i, 7
  %i.qd = icmp ult i32 %i.qc, %i.ig
  br i1 %i.qd, label %.lr.ph.i52.i, label %.preheader.loopexit.i55.i, !llvm.loop !221

.lr.ph48.i48.i:                                   ; preds = %.lr.ph48.i48.i.preheader271, %.lr.ph48.i48.i
  %.147.i49.i = phi i32 [ %i.qm, %.lr.ph48.i48.i ], [ %.147.i49.i.ph, %.lr.ph48.i48.i.preheader271 ]
  %.14146.i50.i = phi ptr [ %i.ql, %.lr.ph48.i48.i ], [ %.14146.i50.i.ph, %.lr.ph48.i48.i.preheader271 ] ; 4 uses
  %i.qe = getelementptr inbounds i8, ptr %.14146.i50.i, i64 -8
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !76
  %i.qg = load float, ptr %.14146.i50.i, align 4, !tbaa !76
  %i.qh = fadd float %i.qf, %i.qg
  %i.qi = getelementptr inbounds i8, ptr %.14146.i50.i, i64 -4 ; 2 uses
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !76
  %i.qk = tail call float @llvm.fmuladd.f32(float %i.qh, float f0xBD5901AE, float %i.qj)
  store float %i.qk, ptr %i.qi, align 4, !tbaa !76
  %i.ql = getelementptr inbounds nuw i8, ptr %.14146.i50.i, i64 8 ; 2 uses
  %i.qm = add nuw nsw i32 %.147.i49.i, 1          ; 2 uses
  %exitcond.not.i51.i = icmp eq i32 %i.qm, %i.ig
  br i1 %exitcond.not.i51.i, label %.loopexit.i46.i, label %.lr.ph48.i48.i, !llvm.loop !222

.loopexit.i46.i:                                  ; preds = %.lr.ph48.i48.i, %.preheader.i43.i, %opj_dwt_encode_step2.exit.i
  %.2.i47.i = phi ptr [ %i.id, %opj_dwt_encode_step2.exit.i ], [ %.040.lcssa.i44.i, %.preheader.i43.i ], [ %i.ql, %.lr.ph48.i48.i ] ; 2 uses
  %i.qn = icmp ult i32 %i.if, %i.d                ; 2 uses
  br i1 %i.qn, label %bb.f, label %opj_dwt_encode_step2.exit56.i

bb.f:                                             ; preds = %.loopexit.i46.i
  %i.qo = getelementptr inbounds i8, ptr %.2.i47.i, i64 -8
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !76
  %i.qq = fmul float %i.qp, 2.000000e+00
  %i.qr = getelementptr inbounds i8, ptr %.2.i47.i, i64 -4 ; 2 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !76
  %i.qt = tail call float @llvm.fmuladd.f32(float %i.qq, float f0xBD5901AE, float %i.qs)
  store float %i.qt, ptr %i.qr, align 4, !tbaa !76
  br label %opj_dwt_encode_step2.exit56.i

opj_dwt_encode_step2.exit56.i:                    ; preds = %bb.f, %.loopexit.i46.i
  br i1 %.not.i.i, label %.loopexit.i61.i, label %bb.g

bb.g:                                             ; preds = %opj_dwt_encode_step2.exit56.i
  %i.qu = load float, ptr %i.j, align 4, !tbaa !76
  %i.qv = load float, ptr %i.m, align 4, !tbaa !76
  %i.qw = fadd float %i.qu, %i.qv
  %i.qx = load float, ptr %i.l, align 4, !tbaa !76
  %i.qy = tail call float @llvm.fmuladd.f32(float %i.qw, float f0x3F620676, float %i.qx)
  store float %i.qy, ptr %i.l, align 4, !tbaa !76
  %i.qz = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 7 uses
  %i.ra = icmp ugt i32 %i.p, 4
  br i1 %i.ra, label %.lr.ph.i67.i.preheader, label %.preheader.i58.i

.lr.ph.i67.i.preheader:                           ; preds = %bb.g
  %i.rb = add i32 %i.p, -5                        ; 2 uses
  %min.iters.check124 = icmp ult i32 %i.rb, 16
  br i1 %min.iters.check124, label %.lr.ph.i67.i.preheader269, label %vector.ph125

.lr.ph.i67.i.preheader269:                        ; preds = %vector.body127, %.lr.ph.i67.i.preheader
  %.044.i68.i.ph = phi i32 [ 1, %.lr.ph.i67.i.preheader ], [ %i.rj, %vector.body127 ]
  %.04043.i69.i.ph = phi ptr [ %i.qz, %.lr.ph.i67.i.preheader ], [ %i.rl, %vector.body127 ]
  br label %.lr.ph.i67.i

vector.ph125:                                     ; preds = %.lr.ph.i67.i.preheader
  %i.rc = lshr i32 %i.rb, 2
  %narrow256 = add nuw nsw i32 %i.rc, 1
  %i.rd = zext nneg i32 %narrow256 to i64         ; 2 uses
  %i.re = and i64 %i.rd, 3                        ; 2 uses
  %i.rf = icmp eq i64 %i.re, 0
  %i.rg = select i1 %i.rf, i64 4, i64 %i.re
  %n.vec126 = sub nsw i64 %i.rd, %i.rg            ; 3 uses
  %i.rh = trunc i64 %n.vec126 to i32
  %i.ri = shl i32 %i.rh, 2
  %i.rj = or disjoint i32 %i.ri, 1
  %i.rk = shl nsw i64 %n.vec126, 5
  %i.rl = getelementptr i8, ptr %i.qz, i64 %i.rk
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %i.rm = shl i64 %index128, 5                    ; 4 uses
  %next.gep129 = getelementptr i8, ptr %i.qz, i64 %i.rm ; 9 uses
  %i.rn = getelementptr i8, ptr %i.qz, i64 %i.rm  ; 9 uses
  %next.gep130 = getelementptr i8, ptr %i.rn, i64 32
  %i.ro = getelementptr i8, ptr %i.qz, i64 %i.rm  ; 9 uses
  %next.gep131 = getelementptr i8, ptr %i.ro, i64 64
  %i.rp = getelementptr i8, ptr %i.qz, i64 %i.rm  ; 9 uses
  %next.gep132 = getelementptr i8, ptr %i.rp, i64 96
  %i.rq = getelementptr inbounds i8, ptr %next.gep129, i64 -8
  %i.rr = getelementptr i8, ptr %i.rn, i64 24
  %i.rs = getelementptr i8, ptr %i.ro, i64 56
  %i.rt = getelementptr i8, ptr %i.rp, i64 88
  %i.ru = load float, ptr %i.rq, align 4, !tbaa !76
  %i.rv = load float, ptr %i.rr, align 4, !tbaa !76
  %i.rw = load float, ptr %i.rs, align 4, !tbaa !76
  %i.rx = load float, ptr %i.rt, align 4, !tbaa !76
  %i.ry = insertelement <4 x float> poison, float %i.ru, i64 0
  %i.rz = insertelement <4 x float> %i.ry, float %i.rv, i64 1
  %i.sa = insertelement <4 x float> %i.rz, float %i.rw, i64 2
  %i.sb = insertelement <4 x float> %i.sa, float %i.rx, i64 3
  %i.sc = load float, ptr %next.gep129, align 4, !tbaa !76
  %i.sd = load float, ptr %next.gep130, align 4, !tbaa !76
  %i.se = load float, ptr %next.gep131, align 4, !tbaa !76
  %i.sf = load float, ptr %next.gep132, align 4, !tbaa !76
  %i.sg = insertelement <4 x float> poison, float %i.sc, i64 0
  %i.sh = insertelement <4 x float> %i.sg, float %i.sd, i64 1
  %i.si = insertelement <4 x float> %i.sh, float %i.se, i64 2
  %i.sj = insertelement <4 x float> %i.si, float %i.sf, i64 3 ; 2 uses
  %i.sk = fadd <4 x float> %i.sb, %i.sj
  %i.sl = getelementptr inbounds i8, ptr %next.gep129, i64 -4 ; 2 uses
  %i.sm = getelementptr i8, ptr %i.rn, i64 28     ; 2 uses
  %i.sn = getelementptr i8, ptr %i.ro, i64 60     ; 2 uses
  %i.so = getelementptr i8, ptr %i.rp, i64 92     ; 2 uses
  %i.sp = load float, ptr %i.sl, align 4, !tbaa !76
  %i.sq = load float, ptr %i.sm, align 4, !tbaa !76
  %i.sr = load float, ptr %i.sn, align 4, !tbaa !76
  %i.ss = load float, ptr %i.so, align 4, !tbaa !76
  %i.st = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.su = insertelement <4 x float> %i.st, float %i.sq, i64 1
  %i.sv = insertelement <4 x float> %i.su, float %i.sr, i64 2
  %i.sw = insertelement <4 x float> %i.sv, float %i.ss, i64 3
  %i.sx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sk, <4 x float> splat (float f0x3F620676), <4 x float> %i.sw) ; 4 uses
  %i.sy = extractelement <4 x float> %i.sx, i64 0
  store float %i.sy, ptr %i.sl, align 4, !tbaa !76
  %i.sz = extractelement <4 x float> %i.sx, i64 1
  store float %i.sz, ptr %i.sm, align 4, !tbaa !76
  %i.ta = extractelement <4 x float> %i.sx, i64 2
  store float %i.ta, ptr %i.sn, align 4, !tbaa !76
  %i.tb = extractelement <4 x float> %i.sx, i64 3
  store float %i.tb, ptr %i.so, align 4, !tbaa !76
  %i.tc = getelementptr inbounds nuw i8, ptr %next.gep129, i64 8
  %i.td = getelementptr i8, ptr %i.rn, i64 40
  %i.te = getelementptr i8, ptr %i.ro, i64 72
  %i.tf = getelementptr i8, ptr %i.rp, i64 104
  %i.tg = load float, ptr %i.tc, align 4, !tbaa !76
  %i.th = load float, ptr %i.td, align 4, !tbaa !76
  %i.ti = load float, ptr %i.te, align 4, !tbaa !76
  %i.tj = load float, ptr %i.tf, align 4, !tbaa !76
  %i.tk = insertelement <4 x float> poison, float %i.tg, i64 0
  %i.tl = insertelement <4 x float> %i.tk, float %i.th, i64 1
  %i.tm = insertelement <4 x float> %i.tl, float %i.ti, i64 2
  %i.tn = insertelement <4 x float> %i.tm, float %i.tj, i64 3 ; 2 uses
  %i.to = fadd <4 x float> %i.sj, %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %next.gep129, i64 4 ; 2 uses
  %i.tq = getelementptr i8, ptr %i.rn, i64 36     ; 2 uses
  %i.tr = getelementptr i8, ptr %i.ro, i64 68     ; 2 uses
  %i.ts = getelementptr i8, ptr %i.rp, i64 100    ; 2 uses
  %i.tt = load float, ptr %i.tp, align 4, !tbaa !76
  %i.tu = load float, ptr %i.tq, align 4, !tbaa !76
  %i.tv = load float, ptr %i.tr, align 4, !tbaa !76
  %i.tw = load float, ptr %i.ts, align 4, !tbaa !76
  %i.tx = insertelement <4 x float> poison, float %i.tt, i64 0
  %i.ty = insertelement <4 x float> %i.tx, float %i.tu, i64 1
  %i.tz = insertelement <4 x float> %i.ty, float %i.tv, i64 2
  %i.ua = insertelement <4 x float> %i.tz, float %i.tw, i64 3
  %i.ub = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.to, <4 x float> splat (float f0x3F620676), <4 x float> %i.ua) ; 4 uses
  %i.uc = extractelement <4 x float> %i.ub, i64 0
  store float %i.uc, ptr %i.tp, align 4, !tbaa !76
  %i.ud = extractelement <4 x float> %i.ub, i64 1
  store float %i.ud, ptr %i.tq, align 4, !tbaa !76
  %i.ue = extractelement <4 x float> %i.ub, i64 2
  store float %i.ue, ptr %i.tr, align 4, !tbaa !76
  %i.uf = extractelement <4 x float> %i.ub, i64 3
  store float %i.uf, ptr %i.ts, align 4, !tbaa !76
  %i.ug = getelementptr inbounds nuw i8, ptr %next.gep129, i64 16
  %i.uh = getelementptr i8, ptr %i.rn, i64 48
  %i.ui = getelementptr i8, ptr %i.ro, i64 80
  %i.uj = getelementptr i8, ptr %i.rp, i64 112
  %i.uk = load float, ptr %i.ug, align 4, !tbaa !76
  %i.ul = load float, ptr %i.uh, align 4, !tbaa !76
  %i.um = load float, ptr %i.ui, align 4, !tbaa !76
  %i.un = load float, ptr %i.uj, align 4, !tbaa !76
  %i.uo = insertelement <4 x float> poison, float %i.uk, i64 0
  %i.up = insertelement <4 x float> %i.uo, float %i.ul, i64 1
  %i.uq = insertelement <4 x float> %i.up, float %i.um, i64 2
  %i.ur = insertelement <4 x float> %i.uq, float %i.un, i64 3 ; 2 uses
  %i.us = fadd <4 x float> %i.tn, %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %next.gep129, i64 12 ; 2 uses
  %i.uu = getelementptr i8, ptr %i.rn, i64 44     ; 2 uses
  %i.uv = getelementptr i8, ptr %i.ro, i64 76     ; 2 uses
  %i.uw = getelementptr i8, ptr %i.rp, i64 108    ; 2 uses
  %i.ux = load float, ptr %i.ut, align 4, !tbaa !76
  %i.uy = load float, ptr %i.uu, align 4, !tbaa !76
  %i.uz = load float, ptr %i.uv, align 4, !tbaa !76
  %i.va = load float, ptr %i.uw, align 4, !tbaa !76
  %i.vb = insertelement <4 x float> poison, float %i.ux, i64 0
  %i.vc = insertelement <4 x float> %i.vb, float %i.uy, i64 1
  %i.vd = insertelement <4 x float> %i.vc, float %i.uz, i64 2
  %i.ve = insertelement <4 x float> %i.vd, float %i.va, i64 3
  %i.vf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.us, <4 x float> splat (float f0x3F620676), <4 x float> %i.ve) ; 4 uses
  %i.vg = extractelement <4 x float> %i.vf, i64 0
  store float %i.vg, ptr %i.ut, align 4, !tbaa !76
  %i.vh = extractelement <4 x float> %i.vf, i64 1
  store float %i.vh, ptr %i.uu, align 4, !tbaa !76
  %i.vi = extractelement <4 x float> %i.vf, i64 2
  store float %i.vi, ptr %i.uv, align 4, !tbaa !76
  %i.vj = extractelement <4 x float> %i.vf, i64 3
  store float %i.vj, ptr %i.uw, align 4, !tbaa !76
  %i.vk = getelementptr inbounds nuw i8, ptr %next.gep129, i64 24
  %i.vl = getelementptr i8, ptr %i.rn, i64 56
  %i.vm = getelementptr i8, ptr %i.ro, i64 88
  %i.vn = getelementptr i8, ptr %i.rp, i64 120
  %i.vo = load float, ptr %i.vk, align 4, !tbaa !76
  %i.vp = load float, ptr %i.vl, align 4, !tbaa !76
  %i.vq = load float, ptr %i.vm, align 4, !tbaa !76
  %i.vr = load float, ptr %i.vn, align 4, !tbaa !76
  %i.vs = insertelement <4 x float> poison, float %i.vo, i64 0
  %i.vt = insertelement <4 x float> %i.vs, float %i.vp, i64 1
  %i.vu = insertelement <4 x float> %i.vt, float %i.vq, i64 2
  %i.vv = insertelement <4 x float> %i.vu, float %i.vr, i64 3
  %i.vw = fadd <4 x float> %i.ur, %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %next.gep129, i64 20 ; 2 uses
  %i.vy = getelementptr i8, ptr %i.rn, i64 52     ; 2 uses
  %i.vz = getelementptr i8, ptr %i.ro, i64 84     ; 2 uses
  %i.wa = getelementptr i8, ptr %i.rp, i64 116    ; 2 uses
  %i.wb = load float, ptr %i.vx, align 4, !tbaa !76
  %i.wc = load float, ptr %i.vy, align 4, !tbaa !76
  %i.wd = load float, ptr %i.vz, align 4, !tbaa !76
  %i.we = load float, ptr %i.wa, align 4, !tbaa !76
  %i.wf = insertelement <4 x float> poison, float %i.wb, i64 0
  %i.wg = insertelement <4 x float> %i.wf, float %i.wc, i64 1
end_hunk_2
begin_hunk_3_@opj_dwt_encode_and_deinterleave_h_one_row_real:bb.a
  %i.acf = load float, ptr %i.acb, align 4, !tbaa !76
  %i.acg = load float, ptr %i.acc, align 4, !tbaa !76
  %i.ach = load float, ptr %i.acd, align 4, !tbaa !76
  %i.aci = load float, ptr %i.ace, align 4, !tbaa !76
  %i.acj = insertelement <4 x float> poison, float %i.acf, i64 0
  %i.ack = insertelement <4 x float> %i.acj, float %i.acg, i64 1
  %i.acl = insertelement <4 x float> %i.ack, float %i.ach, i64 2
  %i.acm = insertelement <4 x float> %i.acl, float %i.aci, i64 3
  %i.acn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aca, <4 x float> splat (float f0x3EE31355), <4 x float> %i.acm) ; 4 uses
  %i.aco = extractelement <4 x float> %i.acn, i64 0
  store float %i.aco, ptr %i.acb, align 4, !tbaa !76
  %i.acp = extractelement <4 x float> %i.acn, i64 1
  store float %i.acp, ptr %i.acc, align 4, !tbaa !76
  %i.acq = extractelement <4 x float> %i.acn, i64 2
  store float %i.acq, ptr %i.acd, align 4, !tbaa !76
  %i.acr = extractelement <4 x float> %i.acn, i64 3
  store float %i.acr, ptr %i.ace, align 4, !tbaa !76
  %i.acs = getelementptr inbounds nuw i8, ptr %next.gep162, i64 16
  %i.act = getelementptr i8, ptr %i.zz, i64 48
  %i.acu = getelementptr i8, ptr %i.aaa, i64 80
  %i.acv = getelementptr i8, ptr %i.aab, i64 112
  %i.acw = load float, ptr %i.acs, align 4, !tbaa !76
  %i.acx = load float, ptr %i.act, align 4, !tbaa !76
  %i.acy = load float, ptr %i.acu, align 4, !tbaa !76
  %i.acz = load float, ptr %i.acv, align 4, !tbaa !76
  %i.ada = insertelement <4 x float> poison, float %i.acw, i64 0
  %i.adb = insertelement <4 x float> %i.ada, float %i.acx, i64 1
  %i.adc = insertelement <4 x float> %i.adb, float %i.acy, i64 2
  %i.add = insertelement <4 x float> %i.adc, float %i.acz, i64 3 ; 2 uses
  %i.ade = fadd <4 x float> %i.abz, %i.add
  %i.adf = getelementptr inbounds nuw i8, ptr %next.gep162, i64 12 ; 2 uses
  %i.adg = getelementptr i8, ptr %i.zz, i64 44    ; 2 uses
  %i.adh = getelementptr i8, ptr %i.aaa, i64 76   ; 2 uses
  %i.adi = getelementptr i8, ptr %i.aab, i64 108  ; 2 uses
  %i.adj = load float, ptr %i.adf, align 4, !tbaa !76
  %i.adk = load float, ptr %i.adg, align 4, !tbaa !76
  %i.adl = load float, ptr %i.adh, align 4, !tbaa !76
  %i.adm = load float, ptr %i.adi, align 4, !tbaa !76
  %i.adn = insertelement <4 x float> poison, float %i.adj, i64 0
  %i.ado = insertelement <4 x float> %i.adn, float %i.adk, i64 1
  %i.adp = insertelement <4 x float> %i.ado, float %i.adl, i64 2
  %i.adq = insertelement <4 x float> %i.adp, float %i.adm, i64 3
  %i.adr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ade, <4 x float> splat (float f0x3EE31355), <4 x float> %i.adq) ; 4 uses
  %i.ads = extractelement <4 x float> %i.adr, i64 0
  store float %i.ads, ptr %i.adf, align 4, !tbaa !76
  %i.adt = extractelement <4 x float> %i.adr, i64 1
  store float %i.adt, ptr %i.adg, align 4, !tbaa !76
  %i.adu = extractelement <4 x float> %i.adr, i64 2
  store float %i.adu, ptr %i.adh, align 4, !tbaa !76
  %i.adv = extractelement <4 x float> %i.adr, i64 3
  store float %i.adv, ptr %i.adi, align 4, !tbaa !76
  %i.adw = getelementptr inbounds nuw i8, ptr %next.gep162, i64 24
  %i.adx = getelementptr i8, ptr %i.zz, i64 56
  %i.ady = getelementptr i8, ptr %i.aaa, i64 88
  %i.adz = getelementptr i8, ptr %i.aab, i64 120
  %i.aea = load float, ptr %i.adw, align 4, !tbaa !76
  %i.aeb = load float, ptr %i.adx, align 4, !tbaa !76
  %i.aec = load float, ptr %i.ady, align 4, !tbaa !76
  %i.aed = load float, ptr %i.adz, align 4, !tbaa !76
  %i.aee = insertelement <4 x float> poison, float %i.aea, i64 0
  %i.aef = insertelement <4 x float> %i.aee, float %i.aeb, i64 1
  %i.aeg = insertelement <4 x float> %i.aef, float %i.aec, i64 2
  %i.aeh = insertelement <4 x float> %i.aeg, float %i.aed, i64 3
  %i.aei = fadd <4 x float> %i.add, %i.aeh
  %i.aej = getelementptr inbounds nuw i8, ptr %next.gep162, i64 20 ; 2 uses
  %i.aek = getelementptr i8, ptr %i.zz, i64 52    ; 2 uses
  %i.ael = getelementptr i8, ptr %i.aaa, i64 84   ; 2 uses
  %i.aem = getelementptr i8, ptr %i.aab, i64 116  ; 2 uses
  %i.aen = load float, ptr %i.aej, align 4, !tbaa !76
  %i.aeo = load float, ptr %i.aek, align 4, !tbaa !76
  %i.aep = load float, ptr %i.ael, align 4, !tbaa !76
  %i.aeq = load float, ptr %i.aem, align 4, !tbaa !76
  %i.aer = insertelement <4 x float> poison, float %i.aen, i64 0
  %i.aes = insertelement <4 x float> %i.aer, float %i.aeo, i64 1
  %i.aet = insertelement <4 x float> %i.aes, float %i.aep, i64 2
  %i.aeu = insertelement <4 x float> %i.aet, float %i.aeq, i64 3
  %i.aev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aei, <4 x float> splat (float f0x3EE31355), <4 x float> %i.aeu) ; 4 uses
  %i.aew = extractelement <4 x float> %i.aev, i64 0
  store float %i.aew, ptr %i.aej, align 4, !tbaa !76
  %i.aex = extractelement <4 x float> %i.aev, i64 1
  store float %i.aex, ptr %i.aek, align 4, !tbaa !76
  %i.aey = extractelement <4 x float> %i.aev, i64 2
  store float %i.aey, ptr %i.ael, align 4, !tbaa !76
  %i.aez = extractelement <4 x float> %i.aev, i64 3
  store float %i.aez, ptr %i.aem, align 4, !tbaa !76
  %index.next166 = add nuw i64 %index161, 4       ; 2 uses
  %i.afa = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.afa, label %.lr.ph.i82.i.preheader265, label %vector.body160, !llvm.loop !227

.preheader.loopexit.i85.i:                        ; preds = %.lr.ph.i82.i
  %i.afb = add nsw i32 %i.ig, -5
  %i.afc = and i32 %i.afb, -4
  %i.afd = add nuw nsw i32 %i.afc, 5
  br label %.preheader.i73.i

.preheader.i73.i:                                 ; preds = %.preheader.loopexit.i85.i, %bb.i
  %.040.lcssa.i74.i = phi ptr [ %i.zl, %bb.i ], [ %i.agz, %.preheader.loopexit.i85.i ] ; 7 uses
  %.0.lcssa.i75.i = phi i32 [ 1, %bb.i ], [ %i.afd, %.preheader.loopexit.i85.i ] ; 4 uses
  %i.afe = icmp samesign ult i32 %.0.lcssa.i75.i, %i.ig
  br i1 %i.afe, label %.lr.ph48.i78.i.preheader, label %.loopexit.i76.i

.lr.ph48.i78.i.preheader:                         ; preds = %.preheader.i73.i
  %i.aff = xor i32 %.0.lcssa.i75.i, -1
  %i.afg = add i32 %i.ig, %i.aff                  ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.afg, 4
  br i1 %min.iters.check171, label %.lr.ph48.i78.i.preheader263, label %vector.ph172

.lr.ph48.i78.i.preheader263:                      ; preds = %vector.body174, %.lr.ph48.i78.i.preheader
  %.147.i79.i.ph = phi i32 [ %.0.lcssa.i75.i, %.lr.ph48.i78.i.preheader ], [ %i.afn, %vector.body174 ]
  %.14146.i80.i.ph = phi ptr [ %.040.lcssa.i74.i, %.lr.ph48.i78.i.preheader ], [ %i.afp, %vector.body174 ]
  br label %.lr.ph48.i78.i

vector.ph172:                                     ; preds = %.lr.ph48.i78.i.preheader
  %i.afh = zext i32 %i.afg to i64
  %i.afi = add nuw nsw i64 %i.afh, 1              ; 2 uses
  %i.afj = and i64 %i.afi, 3                      ; 2 uses
  %i.afk = icmp eq i64 %i.afj, 0
  %i.afl = select i1 %i.afk, i64 4, i64 %i.afj
  %n.vec173 = sub nsw i64 %i.afi, %i.afl          ; 3 uses
  %i.afm = trunc i64 %n.vec173 to i32
  %i.afn = add i32 %.0.lcssa.i75.i, %i.afm
  %i.afo = shl nsw i64 %n.vec173, 3
  %i.afp = getelementptr i8, ptr %.040.lcssa.i74.i, i64 %i.afo
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next185, %vector.body174 ] ; 2 uses
  %i.afq = shl i64 %index175, 3                   ; 4 uses
  %next.gep176 = getelementptr i8, ptr %.040.lcssa.i74.i, i64 %i.afq ; 3 uses
  %i.afr = getelementptr i8, ptr %.040.lcssa.i74.i, i64 %i.afq
  %i.afs = getelementptr i8, ptr %.040.lcssa.i74.i, i64 %i.afq
  %i.aft = getelementptr i8, ptr %.040.lcssa.i74.i, i64 %i.afq
  %i.afu = getelementptr inbounds i8, ptr %next.gep176, i64 -8
  %wide.vec180 = load <8 x float>, ptr %i.afu, align 4, !tbaa !76
  %strided.vec181 = shufflevector <8 x float> %wide.vec180, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.afv = getelementptr i8, ptr %next.gep176, i64 -4
  %wide.vec182 = load <8 x float>, ptr %i.afv, align 4, !tbaa !76 ; 2 uses
  %strided.vec183 = shufflevector <8 x float> %wide.vec182, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec184 = shufflevector <8 x float> %wide.vec182, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.afw = fadd <4 x float> %strided.vec181, %strided.vec184
  %i.afx = getelementptr inbounds i8, ptr %next.gep176, i64 -4
  %i.afy = getelementptr i8, ptr %i.afr, i64 4
  %i.afz = getelementptr i8, ptr %i.afs, i64 12
  %i.aga = getelementptr i8, ptr %i.aft, i64 20
  %i.agb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afw, <4 x float> splat (float f0x3EE31355), <4 x float> %strided.vec183) ; 4 uses
  %i.agc = extractelement <4 x float> %i.agb, i64 0
  store float %i.agc, ptr %i.afx, align 4, !tbaa !76
  %i.agd = extractelement <4 x float> %i.agb, i64 1
  store float %i.agd, ptr %i.afy, align 4, !tbaa !76
  %i.age = extractelement <4 x float> %i.agb, i64 2
  store float %i.age, ptr %i.afz, align 4, !tbaa !76
  %i.agf = extractelement <4 x float> %i.agb, i64 3
  store float %i.agf, ptr %i.aga, align 4, !tbaa !76
  %index.next185 = add nuw i64 %index175, 4       ; 2 uses
  %i.agg = icmp eq i64 %index.next185, %n.vec173
  br i1 %i.agg, label %.lr.ph48.i78.i.preheader263, label %vector.body174, !llvm.loop !228

.lr.ph.i82.i:                                     ; preds = %.lr.ph.i82.i.preheader265, %.lr.ph.i82.i
  %.044.i83.i = phi i32 [ %i.aha, %.lr.ph.i82.i ], [ %.044.i83.i.ph, %.lr.ph.i82.i.preheader265 ] ; 2 uses
  %.04043.i84.i = phi ptr [ %i.agz, %.lr.ph.i82.i ], [ %.04043.i84.i.ph, %.lr.ph.i82.i.preheader265 ] ; 7 uses
  %i.agh = getelementptr inbounds i8, ptr %.04043.i84.i, i64 -8
  %i.agi = getelementptr inbounds i8, ptr %.04043.i84.i, i64 -4
  %i.agj = getelementptr inbounds nuw i8, ptr %.04043.i84.i, i64 4
  %i.agk = getelementptr inbounds nuw i8, ptr %.04043.i84.i, i64 12
  %i.agl = getelementptr inbounds nuw i8, ptr %.04043.i84.i, i64 24
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !76
  %i.agn = getelementptr inbounds nuw i8, ptr %.04043.i84.i, i64 20
  %i.ago = load <8 x float>, ptr %i.agh, align 4, !tbaa !76 ; 3 uses
  %i.agp = shufflevector <8 x float> %i.ago, <8 x float> poison, <4 x i32> <i32 4, i32 6, i32 0, i32 2>
  %i.agq = shufflevector <8 x float> %i.ago, <8 x float> poison, <4 x i32> <i32 6, i32 poison, i32 2, i32 4>
  %i.agr = insertelement <4 x float> %i.agq, float %i.agm, i64 1
  %i.ags = fadd <4 x float> %i.agp, %i.agr
  %i.agt = shufflevector <8 x float> %i.ago, <8 x float> poison, <4 x i32> <i32 5, i32 7, i32 1, i32 3>
  %i.agu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ags, <4 x float> splat (float f0x3EE31355), <4 x float> %i.agt) ; 4 uses
  %i.agv = extractelement <4 x float> %i.agu, i64 2
  store float %i.agv, ptr %i.agi, align 4, !tbaa !76
  %i.agw = extractelement <4 x float> %i.agu, i64 3
  store float %i.agw, ptr %i.agj, align 4, !tbaa !76
  %i.agx = extractelement <4 x float> %i.agu, i64 0
  store float %i.agx, ptr %i.agk, align 4, !tbaa !76
  %i.agy = extractelement <4 x float> %i.agu, i64 1
  store float %i.agy, ptr %i.agn, align 4, !tbaa !76
  %i.agz = getelementptr inbounds nuw i8, ptr %.04043.i84.i, i64 32 ; 2 uses
  %i.aha = add nuw nsw i32 %.044.i83.i, 4
  %i.ahb = add nuw i32 %.044.i83.i, 7
  %i.ahc = icmp ult i32 %i.ahb, %i.ig
  br i1 %i.ahc, label %.lr.ph.i82.i, label %.preheader.loopexit.i85.i, !llvm.loop !229

.lr.ph48.i78.i:                                   ; preds = %.lr.ph48.i78.i.preheader263, %.lr.ph48.i78.i
  %.147.i79.i = phi i32 [ %i.ahl, %.lr.ph48.i78.i ], [ %.147.i79.i.ph, %.lr.ph48.i78.i.preheader263 ]
  %.14146.i80.i = phi ptr [ %i.ahk, %.lr.ph48.i78.i ], [ %.14146.i80.i.ph, %.lr.ph48.i78.i.preheader263 ] ; 4 uses
  %i.ahd = getelementptr inbounds i8, ptr %.14146.i80.i, i64 -8
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !76
  %i.ahf = load float, ptr %.14146.i80.i, align 4, !tbaa !76
  %i.ahg = fadd float %i.ahe, %i.ahf
  %i.ahh = getelementptr inbounds i8, ptr %.14146.i80.i, i64 -4 ; 2 uses
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !76
  %i.ahj = tail call float @llvm.fmuladd.f32(float %i.ahg, float f0x3EE31355, float %i.ahi)
  store float %i.ahj, ptr %i.ahh, align 4, !tbaa !76
  %i.ahk = getelementptr inbounds nuw i8, ptr %.14146.i80.i, i64 8 ; 2 uses
  %i.ahl = add nuw nsw i32 %.147.i79.i, 1         ; 2 uses
  %exitcond.not.i81.i = icmp eq i32 %i.ahl, %i.ig
  br i1 %exitcond.not.i81.i, label %.loopexit.i76.i, label %.lr.ph48.i78.i, !llvm.loop !230

.loopexit.i76.i:                                  ; preds = %.lr.ph48.i78.i, %.preheader.i73.i, %opj_dwt_encode_step2.exit71.i
  %.2.i77.i = phi ptr [ %i.id, %opj_dwt_encode_step2.exit71.i ], [ %.040.lcssa.i74.i, %.preheader.i73.i ], [ %i.ahk, %.lr.ph48.i78.i ] ; 2 uses
  br i1 %i.qn, label %bb.j, label %opj_dwt_encode_step2.exit86.i

bb.j:                                             ; preds = %.loopexit.i76.i
  %i.ahm = getelementptr inbounds i8, ptr %.2.i77.i, i64 -8
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !76
  %i.aho = fmul float %i.ahn, 2.000000e+00
  %i.ahp = getelementptr inbounds i8, ptr %.2.i77.i, i64 -4 ; 2 uses
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !76
  %i.ahr = tail call float @llvm.fmuladd.f32(float %i.aho, float f0x3EE31355, float %i.ahq)
  store float %i.ahr, ptr %i.ahp, align 4, !tbaa !76
  br label %opj_dwt_encode_step2.exit86.i

opj_dwt_encode_step2.exit86.i:                    ; preds = %bb.j, %.loopexit.i76.i
  %i.ahs = tail call noundef i32 @llvm.umin.i32(i32 range(i32 0, -2147483648) %i.d, i32 %i.e) ; 15 uses
  %i.aht = icmp samesign ugt i32 %i.ahs, 3        ; 2 uses
  br i1 %.not, label %bb.k, label %bb.o

bb.k:                                             ; preds = %opj_dwt_encode_step2.exit86.i
  br i1 %i.aht, label %.lr.ph.i90.i.preheader, label %.preheader.i87.i

.lr.ph.i90.i.preheader:                           ; preds = %bb.k
  %i.ahu = add nsw i32 %i.ahs, -4                 ; 2 uses
  %i.ahv = lshr i32 %i.ahu, 2                     ; 2 uses
  %i.ahw = add nuw nsw i32 %i.ahv, 1              ; 2 uses
  %i.ahx = icmp eq i32 %i.ahv, 0
  br i1 %i.ahx, label %.lr.ph.i90.i.epil.preheader, label %.lr.ph.i90.i.preheader.new

.lr.ph.i90.i.preheader.new:                       ; preds = %.lr.ph.i90.i.preheader
  %unroll_iter285 = and i32 %i.ahw, 2147483646
  br label %.lr.ph.i90.i

.preheader.loopexit.i91.i.unr-lcssa:              ; preds = %.lr.ph.i90.i
  %i.ahy = and i32 %i.ahu, 4
  %lcmp.mod282.not.not = icmp eq i32 %i.ahy, 0
  br i1 %lcmp.mod282.not.not, label %.lr.ph.i90.i.epil.preheader, label %.preheader.loopexit.i91.i

.lr.ph.i90.i.epil.preheader:                      ; preds = %.preheader.loopexit.i91.i.unr-lcssa, %.lr.ph.i90.i.preheader
  %.034.i.i.epil.init = phi ptr [ %1, %.lr.ph.i90.i.preheader ], [ %i.ajc, %.preheader.loopexit.i91.i.unr-lcssa ] ; 4 uses
  %lcmp.mod284 = trunc i32 %i.ahw to i1
  tail call void @llvm.assume(i1 %lcmp.mod284)
  %i.ahz = load <4 x float>, ptr %.034.i.i.epil.init, align 16, !tbaa !47
  %i.aia = fmul <4 x float> %i.ahz, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.aia, ptr %.034.i.i.epil.init, align 16, !tbaa !47
  %i.aib = getelementptr inbounds nuw i8, ptr %.034.i.i.epil.init, i64 16 ; 2 uses
  %i.aic = load <4 x float>, ptr %i.aib, align 16, !tbaa !47
  %i.aid = fmul <4 x float> %i.aic, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.aid, ptr %i.aib, align 16, !tbaa !47
  %i.aie = getelementptr inbounds nuw i8, ptr %.034.i.i.epil.init, i64 32
  br label %.preheader.loopexit.i91.i

.preheader.loopexit.i91.i:                        ; preds = %.preheader.loopexit.i91.i.unr-lcssa, %.lr.ph.i90.i.epil.preheader
  %.lcssa259 = phi ptr [ %i.ajc, %.preheader.loopexit.i91.i.unr-lcssa ], [ %i.aie, %.lr.ph.i90.i.epil.preheader ]
  %i.aif = and i32 %i.ahs, 2147483644
  br label %.preheader.i87.i

.preheader.i87.i:                                 ; preds = %.preheader.loopexit.i91.i, %bb.k
  %.031.lcssa.i.i = phi i32 [ 0, %bb.k ], [ %i.aif, %.preheader.loopexit.i91.i ] ; 5 uses
  %.0.lcssa.i88.i = phi ptr [ %1, %bb.k ], [ %.lcssa259, %.preheader.loopexit.i91.i ] ; 4 uses
  %i.aig = icmp samesign ult i32 %.031.lcssa.i.i, %i.ahs
  br i1 %i.aig, label %.lr.ph38.i.i.preheader, label %._crit_edge.i.i

.lr.ph38.i.i.preheader:                           ; preds = %.preheader.i87.i
  %i.aih = xor i32 %.031.lcssa.i.i, -1
  %i.aii = add nsw i32 %i.ahs, %i.aih             ; 2 uses
  %i.aij = zext i32 %i.aii to i64
  %i.aik = add nuw nsw i64 %i.aij, 1              ; 2 uses
  %min.iters.check204 = icmp eq i32 %i.aii, 0
  br i1 %min.iters.check204, label %.lr.ph38.i.i.preheader258, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph38.i.i.preheader
  %n.vec206 = and i64 %i.aik, 8589934590          ; 4 uses
  %i.ail = shl nuw nsw i64 %n.vec206, 3
  %i.aim = getelementptr i8, ptr %.0.lcssa.i88.i, i64 %i.ail ; 2 uses
  %i.ain = trunc i64 %n.vec206 to i32
  %i.aio = add i32 %.031.lcssa.i.i, %i.ain
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next214, %vector.body207 ] ; 2 uses
  %i.aip = shl i64 %index208, 3
  %next.gep209 = getelementptr i8, ptr %.0.lcssa.i88.i, i64 %i.aip ; 2 uses
  %wide.vec210 = load <4 x float>, ptr %next.gep209, align 4, !tbaa !76
  %interleaved.vec213 = fmul <4 x float> %wide.vec210, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %interleaved.vec213, ptr %next.gep209, align 4, !tbaa !76
  %index.next214 = add nuw i64 %index208, 2       ; 2 uses
  %i.aiq = icmp eq i64 %index.next214, %n.vec206
  br i1 %i.aiq, label %middle.block215, label %vector.body207, !llvm.loop !231

middle.block215:                                  ; preds = %vector.body207
  %cmp.n216 = icmp eq i64 %i.aik, %n.vec206
  br i1 %cmp.n216, label %._crit_edge.i.i, label %.lr.ph38.i.i.preheader258

.lr.ph38.i.i.preheader258:                        ; preds = %.lr.ph38.i.i.preheader, %middle.block215
  %.137.i.i.ph = phi ptr [ %.0.lcssa.i88.i, %.lr.ph38.i.i.preheader ], [ %i.aim, %middle.block215 ]
  %.13236.i.i.ph = phi i32 [ %.031.lcssa.i.i, %.lr.ph38.i.i.preheader ], [ %i.aio, %middle.block215 ]
  br label %.lr.ph38.i.i

.lr.ph.i90.i:                                     ; preds = %.lr.ph.i90.i, %.lr.ph.i90.i.preheader.new
  %.034.i.i = phi ptr [ %1, %.lr.ph.i90.i.preheader.new ], [ %i.ajc, %.lr.ph.i90.i ] ; 6 uses
  %niter286 = phi i32 [ 0, %.lr.ph.i90.i.preheader.new ], [ %niter286.next.1, %.lr.ph.i90.i ]
  %i.air = load <4 x float>, ptr %.034.i.i, align 16, !tbaa !47
  %i.ais = fmul <4 x float> %i.air, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.ais, ptr %.034.i.i, align 16, !tbaa !47
  %i.ait = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 16 ; 2 uses
  %i.aiu = load <4 x float>, ptr %i.ait, align 16, !tbaa !47
  %i.aiv = fmul <4 x float> %i.aiu, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.aiv, ptr %i.ait, align 16, !tbaa !47
  %i.aiw = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 32 ; 2 uses
  %i.aix = load <4 x float>, ptr %i.aiw, align 16, !tbaa !47
  %i.aiy = fmul <4 x float> %i.aix, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.aiy, ptr %i.aiw, align 16, !tbaa !47
  %i.aiz = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 48 ; 2 uses
  %i.aja = load <4 x float>, ptr %i.aiz, align 16, !tbaa !47
  %i.ajb = fmul <4 x float> %i.aja, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.ajb, ptr %i.aiz, align 16, !tbaa !47
  %i.ajc = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 64 ; 3 uses
  %niter286.next.1 = add i32 %niter286, 2         ; 2 uses
  %niter286.ncmp.1.not = icmp eq i32 %niter286.next.1, %unroll_iter285
  br i1 %niter286.ncmp.1.not, label %.preheader.loopexit.i91.i.unr-lcssa, label %.lr.ph.i90.i, !llvm.loop !232

.lr.ph38.i.i:                                     ; preds = %.lr.ph38.i.i.preheader258, %.lr.ph38.i.i
  %.137.i.i = phi ptr [ %i.ajf, %.lr.ph38.i.i ], [ %.137.i.i.ph, %.lr.ph38.i.i.preheader258 ] ; 3 uses
  %.13236.i.i = phi i32 [ %i.ajg, %.lr.ph38.i.i ], [ %.13236.i.i.ph, %.lr.ph38.i.i.preheader258 ]
  %i.ajd = load <2 x float>, ptr %.137.i.i, align 4, !tbaa !76
  %i.aje = fmul <2 x float> %i.ajd, <float f0x3F5019C3, float f0x3F9D7658>
  store <2 x float> %i.aje, ptr %.137.i.i, align 4, !tbaa !76
  %i.ajf = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %i.ajg = add nuw nsw i32 %.13236.i.i, 1         ; 2 uses
  %exitcond.not.i89.i = icmp eq i32 %i.ajg, %i.ahs
  br i1 %exitcond.not.i89.i, label %._crit_edge.i.i, label %.lr.ph38.i.i, !llvm.loop !233

._crit_edge.i.i:                                  ; preds = %.lr.ph38.i.i, %middle.block215, %.preheader.i87.i
  %.132.lcssa.i.i = phi i32 [ %.031.lcssa.i.i, %.preheader.i87.i ], [ %i.ahs, %middle.block215 ], [ %i.ahs, %.lr.ph38.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0.lcssa.i88.i, %.preheader.i87.i ], [ %i.aim, %middle.block215 ], [ %i.ajf, %.lr.ph38.i.i ] ; 3 uses
  %i.ajh = icmp samesign ult i32 %.132.lcssa.i.i, %i.d
  br i1 %i.ajh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.aji = load float, ptr %.1.lcssa.i.i, align 4, !tbaa !76
  %i.ajj = fmul float %i.aji, f0x3F5019C3
  store float %i.ajj, ptr %.1.lcssa.i.i, align 4, !tbaa !76
  br label %.lr.ph.preheader.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ajk = icmp ult i32 %.132.lcssa.i.i, %i.e
  br i1 %i.ajk, label %bb.n, label %opj_dwt_encode_1_real.exit

bb.n:                                             ; preds = %bb.m
  %i.ajl = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 4 ; 2 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !76
  %i.ajn = fmul float %i.ajm, f0x3F9D7658
  store float %i.ajn, ptr %i.ajl, align 4, !tbaa !76
  br label %opj_dwt_encode_1_real.exit

bb.o:                                             ; preds = %opj_dwt_encode_step2.exit86.i
  br i1 %i.aht, label %.lr.ph.i102.i.preheader, label %.preheader.i92.i

.lr.ph.i102.i.preheader:                          ; preds = %bb.o
  %i.ajo = add nsw i32 %i.ahs, -4                 ; 2 uses
  %i.ajp = lshr i32 %i.ajo, 2                     ; 2 uses
  %i.ajq = add nuw nsw i32 %i.ajp, 1              ; 2 uses
  %i.ajr = icmp eq i32 %i.ajp, 0
  br i1 %i.ajr, label %.lr.ph.i102.i.epil.preheader, label %.lr.ph.i102.i.preheader.new

.lr.ph.i102.i.preheader.new:                      ; preds = %.lr.ph.i102.i.preheader
  %unroll_iter = and i32 %i.ajq, 2147483646
  br label %.lr.ph.i102.i

.preheader.loopexit.i105.i.unr-lcssa:             ; preds = %.lr.ph.i102.i
  %i.ajs = and i32 %i.ajo, 4
  %lcmp.mod.not.not = icmp eq i32 %i.ajs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i102.i.epil.preheader, label %.preheader.loopexit.i105.i

.lr.ph.i102.i.epil.preheader:                     ; preds = %.preheader.loopexit.i105.i.unr-lcssa, %.lr.ph.i102.i.preheader
  %.034.i103.i.epil.init = phi ptr [ %1, %.lr.ph.i102.i.preheader ], [ %i.akw, %.preheader.loopexit.i105.i.unr-lcssa ] ; 4 uses
  %lcmp.mod280 = trunc i32 %i.ajq to i1
  tail call void @llvm.assume(i1 %lcmp.mod280)
  %i.ajt = load <4 x float>, ptr %.034.i103.i.epil.init, align 16, !tbaa !47
  %i.aju = fmul <4 x float> %i.ajt, <float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3>
  store <4 x float> %i.aju, ptr %.034.i103.i.epil.init, align 16, !tbaa !47
  %i.ajv = getelementptr inbounds nuw i8, ptr %.034.i103.i.epil.init, i64 16 ; 2 uses
  %i.ajw = load <4 x float>, ptr %i.ajv, align 16, !tbaa !47
  %i.ajx = fmul <4 x float> %i.ajw, <float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3>
  store <4 x float> %i.ajx, ptr %i.ajv, align 16, !tbaa !47
  %i.ajy = getelementptr inbounds nuw i8, ptr %.034.i103.i.epil.init, i64 32
  br label %.preheader.loopexit.i105.i

.preheader.loopexit.i105.i:                       ; preds = %.preheader.loopexit.i105.i.unr-lcssa, %.lr.ph.i102.i.epil.preheader
  %.lcssa262 = phi ptr [ %i.akw, %.preheader.loopexit.i105.i.unr-lcssa ], [ %i.ajy, %.lr.ph.i102.i.epil.preheader ]
  %i.ajz = and i32 %i.ahs, 2147483644
  br label %.preheader.i92.i

.preheader.i92.i:                                 ; preds = %.preheader.loopexit.i105.i, %bb.o
  %.031.lcssa.i93.i = phi i32 [ 0, %bb.o ], [ %i.ajz, %.preheader.loopexit.i105.i ] ; 5 uses
  %.0.lcssa.i94.i = phi ptr [ %1, %bb.o ], [ %.lcssa262, %.preheader.loopexit.i105.i ] ; 4 uses
  %i.aka = icmp samesign ult i32 %.031.lcssa.i93.i, %i.ahs
  br i1 %i.aka, label %.lr.ph38.i98.i.preheader, label %._crit_edge.i95.i

.lr.ph38.i98.i.preheader:                         ; preds = %.preheader.i92.i
  %i.akb = xor i32 %.031.lcssa.i93.i, -1
  %i.akc = add nsw i32 %i.ahs, %i.akb             ; 2 uses
  %i.akd = zext i32 %i.akc to i64
  %i.ake = add nuw nsw i64 %i.akd, 1              ; 2 uses
  %min.iters.check190 = icmp eq i32 %i.akc, 0
  br i1 %min.iters.check190, label %.lr.ph38.i98.i.preheader260, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph38.i98.i.preheader
  %n.vec192 = and i64 %i.ake, 8589934590          ; 4 uses
  %i.akf = shl nuw nsw i64 %n.vec192, 3
  %i.akg = getelementptr i8, ptr %.0.lcssa.i94.i, i64 %i.akf ; 2 uses
  %i.akh = trunc i64 %n.vec192 to i32
  %i.aki = add i32 %.031.lcssa.i93.i, %i.akh
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next199, %vector.body193 ] ; 2 uses
  %i.akj = shl i64 %index194, 3
  %next.gep195 = getelementptr i8, ptr %.0.lcssa.i94.i, i64 %i.akj ; 2 uses
  %wide.vec196 = load <4 x float>, ptr %next.gep195, align 4, !tbaa !76
  %interleaved.vec = fmul <4 x float> %wide.vec196, <float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3>
  store <4 x float> %interleaved.vec, ptr %next.gep195, align 4, !tbaa !76
  %index.next199 = add nuw i64 %index194, 2       ; 2 uses
  %i.akk = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.akk, label %middle.block200, label %vector.body193, !llvm.loop !234

middle.block200:                                  ; preds = %vector.body193
  %cmp.n = icmp eq i64 %i.ake, %n.vec192
  br i1 %cmp.n, label %._crit_edge.i95.i, label %.lr.ph38.i98.i.preheader260

.lr.ph38.i98.i.preheader260:                      ; preds = %.lr.ph38.i98.i.preheader, %middle.block200
  %.137.i99.i.ph = phi ptr [ %.0.lcssa.i94.i, %.lr.ph38.i98.i.preheader ], [ %i.akg, %middle.block200 ]
  %.13236.i100.i.ph = phi i32 [ %.031.lcssa.i93.i, %.lr.ph38.i98.i.preheader ], [ %i.aki, %middle.block200 ]
  br label %.lr.ph38.i98.i

.lr.ph.i102.i:                                    ; preds = %.lr.ph.i102.i, %.lr.ph.i102.i.preheader.new
  %.034.i103.i = phi ptr [ %1, %.lr.ph.i102.i.preheader.new ], [ %i.akw, %.lr.ph.i102.i ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph.i102.i.preheader.new ], [ %niter.next.1, %.lr.ph.i102.i ]
  %i.akl = load <4 x float>, ptr %.034.i103.i, align 16, !tbaa !47
  %i.akm = fmul <4 x float> %i.akl, <float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3>
  store <4 x float> %i.akm, ptr %.034.i103.i, align 16, !tbaa !47
  %i.akn = getelementptr inbounds nuw i8, ptr %.034.i103.i, i64 16 ; 2 uses
  %i.ako = load <4 x float>, ptr %i.akn, align 16, !tbaa !47
  %i.akp = fmul <4 x float> %i.ako, <float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3>
  store <4 x float> %i.akp, ptr %i.akn, align 16, !tbaa !47
  %i.akq = getelementptr inbounds nuw i8, ptr %.034.i103.i, i64 32 ; 2 uses
  %i.akr = load <4 x float>, ptr %i.akq, align 16, !tbaa !47
  %i.aks = fmul <4 x float> %i.akr, <float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3>
  store <4 x float> %i.aks, ptr %i.akq, align 16, !tbaa !47
  %i.akt = getelementptr inbounds nuw i8, ptr %.034.i103.i, i64 48 ; 2 uses
  %i.aku = load <4 x float>, ptr %i.akt, align 16, !tbaa !47
  %i.akv = fmul <4 x float> %i.aku, <float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3>
  store <4 x float> %i.akv, ptr %i.akt, align 16, !tbaa !47
  %i.akw = getelementptr inbounds nuw i8, ptr %.034.i103.i, i64 64 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.i105.i.unr-lcssa, label %.lr.ph.i102.i, !llvm.loop !232

.lr.ph38.i98.i:                                   ; preds = %.lr.ph38.i98.i.preheader260, %.lr.ph38.i98.i
  %.137.i99.i = phi ptr [ %i.akz, %.lr.ph38.i98.i ], [ %.137.i99.i.ph, %.lr.ph38.i98.i.preheader260 ] ; 3 uses
  %.13236.i100.i = phi i32 [ %i.ala, %.lr.ph38.i98.i ], [ %.13236.i100.i.ph, %.lr.ph38.i98.i.preheader260 ]
  %i.akx = load <2 x float>, ptr %.137.i99.i, align 4, !tbaa !76
  %i.aky = fmul <2 x float> %i.akx, <float f0x3F9D7658, float f0x3F5019C3>
  store <2 x float> %i.aky, ptr %.137.i99.i, align 4, !tbaa !76
  %i.akz = getelementptr inbounds nuw i8, ptr %.137.i99.i, i64 8 ; 2 uses
  %i.ala = add nuw nsw i32 %.13236.i100.i, 1      ; 2 uses
  %exitcond.not.i101.i = icmp eq i32 %i.ala, %i.ahs
  br i1 %exitcond.not.i101.i, label %._crit_edge.i95.i, label %.lr.ph38.i98.i, !llvm.loop !235

._crit_edge.i95.i:                                ; preds = %.lr.ph38.i98.i, %middle.block200, %.preheader.i92.i
  %.132.lcssa.i96.i = phi i32 [ %.031.lcssa.i93.i, %.preheader.i92.i ], [ %i.ahs, %middle.block200 ], [ %i.ahs, %.lr.ph38.i98.i ] ; 2 uses
  %.1.lcssa.i97.i = phi ptr [ %.0.lcssa.i94.i, %.preheader.i92.i ], [ %i.akg, %middle.block200 ], [ %i.akz, %.lr.ph38.i98.i ] ; 3 uses
  %i.alb = icmp ult i32 %.132.lcssa.i96.i, %i.e
  br i1 %i.alb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i95.i
  %i.alc = load float, ptr %.1.lcssa.i97.i, align 4, !tbaa !76
  %i.ald = fmul float %i.alc, f0x3F9D7658
  store float %i.ald, ptr %.1.lcssa.i97.i, align 4, !tbaa !76
  br label %opj_dwt_encode_1_real.exit

bb.q:                                             ; preds = %._crit_edge.i95.i
  %i.ale = icmp samesign ult i32 %.132.lcssa.i96.i, %i.d
  br i1 %i.ale, label %bb.r, label %opj_dwt_encode_1_real.exit

bb.r:                                             ; preds = %bb.q
  %i.alf = getelementptr inbounds nuw i8, ptr %.1.lcssa.i97.i, i64 4 ; 2 uses
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !76
  %i.alh = fmul float %i.alg, f0x3F5019C3
  store float %i.alh, ptr %i.alf, align 4, !tbaa !76
  br label %.lr.ph.preheader.i

opj_dwt_encode_1_real.exit:                       ; preds = %bb.m, %bb.n, %bb.p, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.l, %opj_dwt_encode_1_real.exit
  %i.ali = add nsw i32 %i.d, -1                   ; 2 uses
  %min.iters.check220 = icmp ult i32 %i.ali, 8
  br i1 %min.iters.check220, label %.lr.ph.i.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %.lr.ph.preheader.i
  %i.alj = zext i32 %i.ali to i64
  %i.alk = add nuw nsw i64 %i.alj, 1              ; 2 uses
  %i.all = and i64 %i.alk, 7                      ; 2 uses
  %i.alm = icmp eq i64 %i.all, 0
  %i.aln = select i1 %i.alm, i64 8, i64 %i.all
  %n.vec222 = sub nsw i64 %i.alk, %i.aln          ; 4 uses
  %i.alo = shl nsw i64 %n.vec222, 3
  %i.alp = getelementptr i8, ptr %i.j, i64 %i.alo
  %i.alq = shl nsw i64 %n.vec222, 2
  %i.alr = getelementptr i8, ptr %0, i64 %i.alq
  %i.als = trunc i64 %n.vec222 to i32
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next232, %vector.body223 ] ; 3 uses
  %i.alt = shl i64 %index224, 3                   ; 2 uses
  %next.gep225 = getelementptr i8, ptr %i.j, i64 %i.alt
  %i.alu = getelementptr i8, ptr %i.j, i64 %i.alt
  %next.gep226 = getelementptr i8, ptr %i.alu, i64 32
  %i.alv = shl i64 %index224, 2
  %next.gep227 = getelementptr i8, ptr %0, i64 %i.alv ; 2 uses
  %wide.vec228 = load <8 x i32>, ptr %next.gep225, align 4, !tbaa !12, !alias.scope !243, !noalias !244
  %strided.vec229 = shufflevector <8 x i32> %wide.vec228, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec230 = load <8 x i32>, ptr %next.gep226, align 4, !tbaa !12, !alias.scope !243, !noalias !244
  %strided.vec231 = shufflevector <8 x i32> %wide.vec230, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.alw = getelementptr i8, ptr %next.gep227, i64 16
  store <4 x i32> %strided.vec229, ptr %next.gep227, align 4, !tbaa !12, !alias.scope !244, !noalias !243
  store <4 x i32> %strided.vec231, ptr %i.alw, align 4, !tbaa !12, !alias.scope !244, !noalias !243
  %index.next232 = add nuw i64 %index224, 8       ; 2 uses
  %i.alx = icmp eq i64 %index.next232, %n.vec222
  br i1 %i.alx, label %.lr.ph.i.preheader, label %vector.body223, !llvm.loop !239

.lr.ph.i.preheader:                               ; preds = %vector.body223, %.lr.ph.preheader.i
  %.025.i.ph = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.alp, %vector.body223 ]
  %.01824.i.ph = phi ptr [ %0, %.lr.ph.preheader.i ], [ %i.alr, %vector.body223 ]
  %.02023.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.als, %vector.body223 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.025.i = phi ptr [ %i.ama, %.lr.ph.i ], [ %.025.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01824.i = phi ptr [ %i.alz, %.lr.ph.i ], [ %.01824.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02023.i = phi i32 [ %i.amb, %.lr.ph.i ], [ %.02023.i.ph, %.lr.ph.i.preheader ]
  %i.aly = load i32, ptr %.025.i, align 4, !tbaa !12, !alias.scope !243, !noalias !244
  %i.alz = getelementptr inbounds nuw i8, ptr %.01824.i, i64 4
  store i32 %i.aly, ptr %.01824.i, align 4, !tbaa !12, !alias.scope !244, !noalias !243
  %i.ama = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.amb = add nuw nsw i32 %.02023.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.amb, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !240

._crit_edge.i:                                    ; preds = %.lr.ph.i, %opj_dwt_encode_1_real.exit
  %i.amc = icmp sgt i32 %i.e, 0
  br i1 %i.amc, label %.lr.ph30.preheader.i, label %opj_dwt_deinterleave_h.exit

.lr.ph30.preheader.i:                             ; preds = %._crit_edge.i
  %i.amd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ame = getelementptr inbounds [4 x i8], ptr %i.amd, i64 %.neg ; 4 uses
  %i.amf = zext nneg i32 %i.d to i64
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.amf ; 3 uses
  %min.iters.check238 = icmp ult i32 %i.e, 9
  br i1 %min.iters.check238, label %.lr.ph30.i.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph30.preheader.i
  %i.amh = zext nneg i32 %i.e to i64              ; 2 uses
  %i.ami = and i64 %i.amh, 7                      ; 2 uses
  %i.amj = icmp eq i64 %i.ami, 0
  %i.amk = select i1 %i.amj, i64 8, i64 %i.ami
  %n.vec240 = sub nsw i64 %i.amh, %i.amk          ; 4 uses
  %i.aml = shl nsw i64 %n.vec240, 3
  %i.amm = getelementptr i8, ptr %i.ame, i64 %i.aml
  %i.amn = shl nsw i64 %n.vec240, 2
  %i.amo = getelementptr i8, ptr %i.amg, i64 %i.amn
  %i.amp = trunc i64 %n.vec240 to i32
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next250, %vector.body241 ] ; 3 uses
  %i.amq = shl i64 %index242, 3                   ; 2 uses
  %next.gep243 = getelementptr i8, ptr %i.ame, i64 %i.amq
  %i.amr = getelementptr i8, ptr %i.ame, i64 %i.amq
  %next.gep244 = getelementptr i8, ptr %i.amr, i64 32
  %i.ams = shl i64 %index242, 2
  %next.gep245 = getelementptr i8, ptr %i.amg, i64 %i.ams ; 2 uses
  %wide.vec246 = load <8 x i32>, ptr %next.gep243, align 4, !tbaa !12, !alias.scope !243, !noalias !244
  %strided.vec247 = shufflevector <8 x i32> %wide.vec246, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec248 = load <8 x i32>, ptr %next.gep244, align 4, !tbaa !12, !alias.scope !243, !noalias !244
  %strided.vec249 = shufflevector <8 x i32> %wide.vec248, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.amt = getelementptr i8, ptr %next.gep245, i64 16
  store <4 x i32> %strided.vec247, ptr %next.gep245, align 4, !tbaa !12, !alias.scope !244, !noalias !243
  store <4 x i32> %strided.vec249, ptr %i.amt, align 4, !tbaa !12, !alias.scope !244, !noalias !243
  %index.next250 = add nuw i64 %index242, 8       ; 2 uses
  %i.amu = icmp eq i64 %index.next250, %n.vec240
  br i1 %i.amu, label %.lr.ph30.i.preheader, label %vector.body241, !llvm.loop !241

.lr.ph30.i.preheader:                             ; preds = %vector.body241, %.lr.ph30.preheader.i
  %.128.i.ph = phi ptr [ %i.ame, %.lr.ph30.preheader.i ], [ %i.amm, %vector.body241 ]
  %.11927.i.ph = phi ptr [ %i.amg, %.lr.ph30.preheader.i ], [ %i.amo, %vector.body241 ]
  %.12126.i.ph = phi i32 [ 0, %.lr.ph30.preheader.i ], [ %i.amp, %vector.body241 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.128.i = phi ptr [ %i.amx, %.lr.ph30.i ], [ %.128.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %.11927.i = phi ptr [ %i.amw, %.lr.ph30.i ], [ %.11927.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %.12126.i = phi i32 [ %i.amy, %.lr.ph30.i ], [ %.12126.i.ph, %.lr.ph30.i.preheader ]
  %i.amv = load i32, ptr %.128.i, align 4, !tbaa !12, !alias.scope !243, !noalias !244
  %i.amw = getelementptr inbounds nuw i8, ptr %.11927.i, i64 4
  store i32 %i.amv, ptr %.11927.i, align 4, !tbaa !12, !alias.scope !244, !noalias !243
  %i.amx = getelementptr inbounds nuw i8, ptr %.128.i, i64 8
  %i.amy = add nuw nsw i32 %.12126.i, 1           ; 2 uses
  %exitcond32.not.i = icmp eq i32 %i.amy, %i.e
  br i1 %exitcond32.not.i, label %opj_dwt_deinterleave_h.exit, label %.lr.ph30.i, !llvm.loop !242

opj_dwt_deinterleave_h.exit:                      ; preds = %.lr.ph30.i, %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @opj_dwt_getnorm_real(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = icmp ugt i32 %0, 9
  %or.cond = and i1 %i.b, %i.a
  %i.c = tail call i32 @llvm.umin.i32(i32 %0, i32 8)
  %spec.store.select = select i1 %i.a, i32 %0, i32 %i.c
  %i.d = zext i32 %spec.store.select to i64
  %.0 = select i1 %or.cond, i64 9, i64 %i.d
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr @opj_dwt_norms_real, i64 %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0
  %i.h = load double, ptr %i.g, align 8, !tbaa !75
  ret double %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @opj_dwt_calc_explicit_stepsizes(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !248  ; 2 uses
  %i.c = mul i32 %i.b, 3
  %i.d = add i32 %i.c, -2                         ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !249
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 4, !tbaa !250
  %i.j = icmp eq i32 %i.i, 0
  %i.k = add i32 %i.b, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %opj_dwt_encode_stepsize.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %opj_dwt_encode_stepsize.exit ] ; 5 uses
  %i.m = icmp eq i64 %indvars.iv, 0
  br i1 %i.m, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = trunc nuw i64 %indvars.iv to i32
end_hunk_3
begin_hunk_4_@opj_dwt_decode_real:bb.a
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.bu
  store <4 x float> %i.fc, ptr %i.fd, align 4, !tbaa !76, !alias.scope !302, !noalias !303
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  %i.fi = load float, ptr %i.fe, align 4, !tbaa !47, !alias.scope !299, !noalias !297
  %i.fj = load float, ptr %i.ff, align 4, !tbaa !47, !alias.scope !299, !noalias !297
  %i.fk = load float, ptr %i.fg, align 4, !tbaa !47, !alias.scope !299, !noalias !297
  %i.fl = load float, ptr %i.fh, align 4, !tbaa !47, !alias.scope !299, !noalias !297
  %i.fm = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fn = insertelement <4 x float> %i.fm, float %i.fj, i64 1
  %i.fo = insertelement <4 x float> %i.fn, float %i.fk, i64 2
  %i.fp = insertelement <4 x float> %i.fo, float %i.fl, i64 3
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index183
  store <4 x float> %i.fp, ptr %i.fq, align 4, !tbaa !76, !alias.scope !304, !noalias !305
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ec, i64 44
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ee, i64 76
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 108
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !47, !alias.scope !299, !noalias !297
  %i.fw = load float, ptr %i.fs, align 4, !tbaa !47, !alias.scope !299, !noalias !297
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !47, !alias.scope !299, !noalias !297
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !47, !alias.scope !299, !noalias !297
  %i.fz = insertelement <4 x float> poison, float %i.fv, i64 0
  %i.ga = insertelement <4 x float> %i.fz, float %i.fw, i64 1
  %i.gb = insertelement <4 x float> %i.ga, float %i.fx, i64 2
  %i.gc = insertelement <4 x float> %i.gb, float %i.fy, i64 3
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index183
  store <4 x float> %i.gc, ptr %i.gd, align 4, !tbaa !76, !alias.scope !306, !noalias !307
  %index.next184 = add nuw i64 %index183, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next184, %n.vec181
  br i1 %i.ge, label %scalar.ph178.preheader, label %vector.body182, !llvm.loop !264

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
  %i.gr = load float, ptr %i.gn, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.gs = load float, ptr %i.go, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.gu = load float, ptr %i.gq, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.gv = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.gt, i64 2
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 3
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index
  store <4 x float> %i.gy, ptr %i.gz, align 4, !tbaa !76, !alias.scope !309, !noalias !310
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 84
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gm, i64 116
  %i.he = load float, ptr %i.ha, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.hh = load float, ptr %i.hd, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.hi = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hj = insertelement <4 x float> %i.hi, float %i.hf, i64 1
  %i.hk = insertelement <4 x float> %i.hj, float %i.hg, i64 2
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 3
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index
  store <4 x float> %i.hl, ptr %i.hm, align 4, !tbaa !76, !alias.scope !311, !noalias !312
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gl, i64 88
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  %i.hr = load float, ptr %i.hn, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.hs = load float, ptr %i.ho, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.hv = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.hw = insertelement <4 x float> %i.hv, float %i.hs, i64 1
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 2
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 3
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index
  store <4 x float> %i.hy, ptr %i.hz, align 4, !tbaa !76, !alias.scope !313, !noalias !314
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gj, i64 28
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gk, i64 60
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gl, i64 92
  %i.id = getelementptr inbounds nuw i8, ptr %i.gm, i64 124
  %i.ie = load float, ptr %i.ia, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.if = load float, ptr %i.ib, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.ig = load float, ptr %i.ic, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.ih = load float, ptr %i.id, align 4, !tbaa !47, !alias.scope !308, !noalias !297
  %i.ii = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.if, i64 1
  %i.ik = insertelement <4 x float> %i.ij, float %i.ig, i64 2
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 3
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index
  store <4 x float> %i.il, ptr %i.im, align 4, !tbaa !76, !alias.scope !315, !noalias !316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %scalar.ph.preheader, label %vector.body, !llvm.loop !271

scalar.ph178:                                     ; preds = %scalar.ph178.preheader, %scalar.ph178
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph178 ], [ %indvars.iv.i.ph, %scalar.ph178.preheader ] ; 5 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.i ; 4 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !47, !noalias !297
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0226323.i, i64 %indvars.iv.i ; 2 uses
  store float %i.ip, ptr %i.iq, align 4, !tbaa !76, !noalias !297
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !47, !noalias !297
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.bu
  store float %i.is, ptr %i.it, align 4, !tbaa !76, !noalias !297
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !47, !noalias !297
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i
  store float %i.iv, ptr %i.iw, align 4, !tbaa !76, !noalias !297
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !47, !noalias !297
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i
  store float %i.iy, ptr %i.iz, align 4, !tbaa !76, !noalias !297
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond366.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond366.not.i, label %.lr.ph322.i, label %scalar.ph178, !llvm.loop !272

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv367.i = phi i64 [ %indvars.iv.next368.i, %scalar.ph ], [ %indvars.iv367.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv367.i ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !47, !noalias !297
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv367.i
  store float %i.jc, ptr %i.jd, align 4, !tbaa !76, !noalias !297
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  %i.jf = load float, ptr %i.je, align 4, !tbaa !47, !noalias !297
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv367.i
  store float %i.jf, ptr %i.jg, align 4, !tbaa !76, !noalias !297
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !47, !noalias !297
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv367.i
  store float %i.ji, ptr %i.jj, align 4, !tbaa !76, !noalias !297
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !47, !noalias !297
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv367.i
  store float %i.jl, ptr %i.jm, align 4, !tbaa !76, !noalias !297
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count.i
  br i1 %exitcond371.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !273

._crit_edge.i:                                    ; preds = %scalar.ph, %bb.e
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0226323.i, i64 %i.bw ; 2 uses
  %i.jo = add nuw i32 %.0224324.i, 8              ; 3 uses
  %i.jp = or disjoint i32 %i.jo, 7
  %i.jq = icmp ult i32 %i.jp, %i.db
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jq, label %bb.e, label %.loopexit311.i, !llvm.loop !274

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
  %i.jv = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !297 ; 15 uses
  %.not267.i = icmp eq ptr %i.jv, null
  br i1 %.not267.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !297
  br label %.critedge.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.jw = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !297 ; 2 uses
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !88, !noalias !297
  %.not268.i = icmp eq ptr %i.jw, null
  br i1 %.not268.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !297
  tail call void @opj_free(ptr noundef nonnull %i.jv) #15, !noalias !297
  br label %.critedge.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i32 %i.dc, ptr %i.jx, align 8, !tbaa !317, !noalias !297
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i32 %.0238344.i, ptr %i.jy, align 4, !tbaa !318, !noalias !297
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i32 %i.dd, ptr %i.jz, align 8, !tbaa !319, !noalias !297
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  store i32 0, ptr %i.ka, align 4, !tbaa !320, !noalias !297
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  store i32 %.0238344.i, ptr %i.kb, align 8, !tbaa !321, !noalias !297
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 28
  store i32 0, ptr %i.kc, align 4, !tbaa !322, !noalias !297
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  store i32 %i.dc, ptr %i.kd, align 8, !tbaa !323, !noalias !297
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  store i32 %i.cw, ptr %i.ke, align 8, !tbaa !89, !noalias !297
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 44
  store i32 %i.x, ptr %i.kf, align 4, !tbaa !90, !noalias !297
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  store ptr %.1227318.i, ptr %i.kg, align 8, !tbaa !91, !noalias !297
  %i.kh = add nuw nsw i32 %.1225319.i, 1          ; 2 uses
  %i.ki = icmp eq i32 %i.kh, %spec.select.i       ; 2 uses
  %i.kj = mul i32 %.1225319.i, %i.jt
  %i.kk = sub i32 %i.ju, %i.kj
  %i.kl = select i1 %i.ki, i32 %i.kk, i32 %i.jt   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  store i32 %i.kl, ptr %i.km, align 8, !tbaa !92, !noalias !297
  %i.kn = mul i32 %i.kl, %i.x
  %i.ko = zext i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.1227318.i, i64 %i.ko ; 2 uses
  %i.kq = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_h_func, ptr noundef nonnull %i.jv) #15, !noalias !297 ; 0 uses
  br i1 %i.ki, label %bb.l, label %bb.g, !llvm.loop !275

bb.l:                                             ; preds = %bb.k
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !297
  br label %.loopexit311.i

.loopexit311.i:                                   ; preds = %._crit_edge.i, %bb.l, %.preheader310.i
  %.4230.i = phi ptr [ %i.kp, %bb.l ], [ %i.bk, %.preheader310.i ], [ %i.jn, %._crit_edge.i ] ; 2 uses
  %.3.i = phi i32 [ %i.ju, %bb.l ], [ 0, %.preheader310.i ], [ %i.jo, %._crit_edge.i ] ; 2 uses
  %i.kr = icmp ult i32 %.3.i, %i.db
  br i1 %i.kr, label %bb.m, label %.loopexit309.i

bb.m:                                             ; preds = %.loopexit311.i
  %i.ks = sub nuw i32 %i.db, %.3.i                ; 3 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.4230.i, i32 noundef %i.x, i32 noundef %i.ks), !noalias !297
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !297
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
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !47, !noalias !297
  %i.ky = mul nuw i64 %indvars.iv372.i, %i.bu
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ky
  store float %i.kx, ptr %gep.i, align 4, !tbaa !76, !noalias !297
  %indvars.iv.next373.i = or disjoint i64 %indvars.iv372.i, 1 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next373.i
  %i.la = load float, ptr %i.kz, align 4, !tbaa !47, !noalias !297
  %i.lb = mul nuw i64 %indvars.iv.next373.i, %i.bu
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lb
  store float %i.la, ptr %gep.i.1, align 4, !tbaa !76, !noalias !297
  %indvars.iv.next373.i.1 = or disjoint i64 %indvars.iv372.i, 2 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next373.i.1
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !47, !noalias !297
  %i.le = mul nuw i64 %indvars.iv.next373.i.1, %i.bu
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.le
  store float %i.ld, ptr %gep.i.2, align 4, !tbaa !76, !noalias !297
  %indvars.iv.next373.i.2 = or disjoint i64 %indvars.iv372.i, 3 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next373.i.2
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !47, !noalias !297
  %i.lh = mul nuw i64 %indvars.iv.next373.i.2, %i.bu
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lh
  store float %i.lg, ptr %gep.i.3, align 4, !tbaa !76, !noalias !297
  %indvars.iv.next373.i.3 = add nuw nsw i64 %indvars.iv372.i, 4 ; 2 uses
  %niter204.next.3 = add i64 %niter204, 4         ; 2 uses
  %niter204.ncmp.3 = icmp eq i64 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %._crit_edge329.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !276

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
  %i.lj = load float, ptr %i.li, align 4, !tbaa !47, !noalias !297
  %i.lk = mul nuw i64 %indvars.iv372.i.epil, %i.bu
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lk
  store float %i.lj, ptr %gep.i.epil, align 4, !tbaa !76, !noalias !297
  %indvars.iv.next373.i.epil = add nuw nsw i64 %indvars.iv372.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter200
  br i1 %epil.iter.cmp.not, label %._crit_edge329.i, label %bb.n, !llvm.loop !277

._crit_edge329.i:                                 ; preds = %bb.n, %._crit_edge329.i.unr-lcssa
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %.loopexit309.i, label %.preheader.i, !llvm.loop !278

.loopexit309.i:                                   ; preds = %._crit_edge329.i, %bb.m, %.loopexit311.i
  %i.ll = sub i32 %i.db, %.0237345.i              ; 10 uses
  store i32 %i.ll, ptr %i.bx, align 8, !tbaa !80, !noalias !297
  %i.lm = load i32, ptr %i.cz, align 4, !tbaa !32, !noalias !297
  %i.ln = srem i32 %i.lm, 2                       ; 4 uses
  store i32 %i.ln, ptr %i.by, align 8, !tbaa !81, !noalias !297
  store i32 0, ptr %i.bz, align 4, !tbaa !82, !noalias !297
  store i32 %.0237345.i, ptr %i.ca, align 8, !tbaa !83, !noalias !297
  store i32 0, ptr %i.cb, align 4, !tbaa !84, !noalias !297
  store i32 %i.ll, ptr %i.cc, align 8, !tbaa !85, !noalias !297
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
end_hunk_4
begin_hunk_5_@opj_dwt_decode_real:bb.a
  %i.uz = load i32, ptr %i.uw, align 8, !tbaa !30, !noalias !326 ; 2 uses
  %i.va = sub nsw i32 %i.uy, %i.uz                ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 204
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !31, !noalias !326
  %i.vd = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 196
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !32, !noalias !326 ; 2 uses
  %i.vf = sub nsw i32 %i.vc, %i.ve                ; 8 uses
  %i.vg = sub i32 %i.va, %.0163272.i              ; 2 uses
  store i32 %i.vg, ptr %i.uc, align 8, !tbaa !80, !noalias !326
  %i.vh = srem i32 %i.uz, 2                       ; 3 uses
  store i32 %i.vh, ptr %i.ud, align 8, !tbaa !81, !noalias !326
  %i.vi = sub i32 %i.vf, %.0162273.i              ; 2 uses
  store i32 %i.vi, ptr %i.ue, align 8, !tbaa !80, !noalias !326
  %i.vj = srem i32 %i.ve, 2                       ; 3 uses
  store i32 %i.vj, ptr %i.uf, align 8, !tbaa !81, !noalias !326
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
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !72, !noalias !326 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 228
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !73, !noalias !326 ; 2 uses
  %i.xk = load i32, ptr %i.xf, align 8, !tbaa !72, !noalias !326 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 276
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !73, !noalias !326 ; 2 uses
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
  store i32 %i.xv, ptr %i.um, align 4, !tbaa !82, !noalias !326
  store i32 %i.xx, ptr %i.un, align 8, !tbaa !83, !noalias !326
  store i32 %i.xy, ptr %i.uo, align 4, !tbaa !84, !noalias !326
  store i32 %i.ya, ptr %i.up, align 8, !tbaa !85, !noalias !326
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
  %i.aak = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %.0158266.i, i32 noundef %i.xx, i32 noundef %i.aaj, ptr noundef nonnull %i.zi, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aal = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %.0158266.i, i32 noundef %i.zk, i32 noundef %i.aaj, ptr noundef nonnull %i.zp, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aam = add nuw nsw i32 %.0158266.i, 2         ; 4 uses
  %i.aan = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aaj, i32 noundef %i.xx, i32 noundef %i.aam, ptr noundef nonnull %i.zs, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aao = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aaj, i32 noundef %i.zk, i32 noundef %i.aam, ptr noundef nonnull %i.zt, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aap = add nuw nsw i32 %.0158266.i, 3         ; 4 uses
  %i.aaq = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aam, i32 noundef %i.xx, i32 noundef %i.aap, ptr noundef nonnull %i.zu, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aar = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aam, i32 noundef %i.zk, i32 noundef %i.aap, ptr noundef nonnull %i.zv, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aas = add nuw nsw i32 %.0158266.i, 4         ; 4 uses
  %i.aat = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aap, i32 noundef %i.xx, i32 noundef %i.aas, ptr noundef nonnull %i.zw, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aau = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aap, i32 noundef %i.zk, i32 noundef %i.aas, ptr noundef nonnull %i.zx, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aav = add nuw nsw i32 %.0158266.i, 5         ; 4 uses
  %i.aaw = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aas, i32 noundef %i.xx, i32 noundef %i.aav, ptr noundef nonnull %i.zy, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aax = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aas, i32 noundef %i.zk, i32 noundef %i.aav, ptr noundef nonnull %i.zz, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aay = add nuw nsw i32 %.0158266.i, 6         ; 4 uses
  %i.aaz = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aav, i32 noundef %i.xx, i32 noundef %i.aay, ptr noundef nonnull %i.aaa, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.aba = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aav, i32 noundef %i.zk, i32 noundef %i.aay, ptr noundef nonnull %i.aab, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.abb = add nuw nsw i32 %.0158266.i, 7         ; 4 uses
  %i.abc = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.aay, i32 noundef %i.xx, i32 noundef %i.abb, ptr noundef nonnull %i.aac, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.abd = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.aay, i32 noundef %i.zk, i32 noundef %i.abb, ptr noundef nonnull %i.aad, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.abe = add nuw i32 %.0158266.i, 8             ; 4 uses
  %i.abf = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.xv, i32 noundef %i.abb, i32 noundef %i.xx, i32 noundef %i.abe, ptr noundef nonnull %i.aae, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  %i.abg = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.zj, i32 noundef %i.abb, i32 noundef %i.zk, i32 noundef %i.abe, ptr noundef nonnull %i.aaf, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !326 ; 0 uses
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !326
  %i.abh = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.rx, i32 noundef %i.yl, i32 noundef %.0158266.i, i32 noundef %i.yq, i32 noundef %i.abe, ptr noundef nonnull %i.zr, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !326
  %.not179.i = icmp eq i32 %i.abh, 0
  br i1 %.not179.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i198.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.rx) #15, !noalias !326
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tz) #15, !noalias !326
  br label %opj_dwt_decode_partial_97.exit

bb.ap:                                            ; preds = %.lr.ph.i198.i, %._crit_edge282.i
  %.pre-phi.i21 = phi i32 [ %.pre.i, %._crit_edge282.i ], [ %i.abe, %.lr.ph.i198.i ] ; 3 uses
  %i.abi = or disjoint i32 %.pre-phi.i21, 7       ; 2 uses
  %i.abj = icmp ult i32 %i.abi, %i.vf
  br i1 %i.abj, label %bb.am, label %._crit_edge.i16, !llvm.loop !292

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
  call fastcc void @opj_v8dwt_interleave_partial_h(ptr noundef %3, ptr noundef %i.rx, i32 noundef %.0158.lcssa.i, i32 noundef %i.abp), !noalias !326
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !326
  %i.abq = zext i32 %i.yl to i64
  %i.abr = getelementptr inbounds nuw [32 x i8], ptr %i.tz, i64 %i.abq
  %i.abs = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.rx, i32 noundef %i.yl, i32 noundef %.0158.lcssa.i, i32 noundef %i.yq, i32 noundef %i.vf, ptr noundef nonnull %i.abr, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !326
  %.not175.i = icmp eq i32 %i.abs, 0
  br i1 %.not175.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.rx) #15, !noalias !326
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tz) #15, !noalias !326
  br label %opj_dwt_decode_partial_97.exit

bb.au:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i16
  store i32 %i.yb, ptr %i.ur, align 4, !tbaa !82, !noalias !326
  store i32 %i.yd, ptr %i.us, align 8, !tbaa !83, !noalias !326
  store i32 %i.ye, ptr %i.ut, align 4, !tbaa !84, !noalias !326
  store i32 %i.yg, ptr %i.uu, align 8, !tbaa !85, !noalias !326
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
  br i1 %i.acj, label %.critedge.i, label %._crit_edge269.i, !llvm.loop !293

.critedge.i:                                      ; preds = %bb.av, %.critedge.lr.ph.i
  %.1159268.i = phi i32 [ %i.yl, %.critedge.lr.ph.i ], [ %i.aci, %bb.av ] ; 6 uses
  %i.ack = sub nuw i32 %i.yq, %.1159268.i
  %i.acl = tail call noundef i32 @llvm.umin.i32(i32 %i.ack, i32 8)
  %i.acm = add i32 %i.acl, %.1159268.i            ; 3 uses
  %i.acn = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %.1159268.i, i32 noundef %i.yb, i32 noundef %i.acm, i32 noundef %i.yd, ptr noundef nonnull %i.aby, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !328 ; 0 uses
  %i.aco = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %.1159268.i, i32 noundef %i.abz, i32 noundef %i.acm, i32 noundef %i.aca, ptr noundef nonnull %i.acf, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !328 ; 0 uses
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %4), !noalias !326
  %i.acp = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.rx, i32 noundef %.1159268.i, i32 noundef %i.yv, i32 noundef %i.acm, i32 noundef %i.za, ptr noundef nonnull %i.ach, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15, !noalias !326
  %.not176.not.i = icmp eq i32 %i.acp, 0
  br i1 %.not176.not.i, label %bb.aw, label %bb.av

bb.aw:                                            ; preds = %.critedge.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.rx) #15, !noalias !326
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tz) #15, !noalias !326
  br label %opj_dwt_decode_partial_97.exit

._crit_edge269.i:                                 ; preds = %bb.av, %bb.au
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count.i14
  br i1 %exitcond.not.i18, label %._crit_edge277.i, label %bb.ah, !llvm.loop !296

._crit_edge277.i:                                 ; preds = %._crit_edge269.i, %bb.ag
  %i.acq = getelementptr inbounds nuw i8, ptr %i.qw, i64 176
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !64, !noalias !326 ; 2 uses
  %i.acs = load i32, ptr %i.qw, align 8, !tbaa !30, !noalias !326 ; 2 uses
  %i.act = sub i32 %i.acr, %i.acs
  %i.acu = getelementptr inbounds nuw i8, ptr %i.qw, i64 180
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !65, !noalias !326
  %i.acw = load i32, ptr %i.rs, align 4, !tbaa !32, !noalias !326 ; 2 uses
  %i.acx = sub i32 %i.acv, %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %i.qw, i64 184
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !66, !noalias !326 ; 2 uses
  %i.ada = sub i32 %i.acz, %i.acs
  %i.adb = getelementptr inbounds nuw i8, ptr %i.qw, i64 188
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !67, !noalias !326
  %i.add = sub i32 %i.adc, %i.acw
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !68, !alias.scope !326
  %i.adg = sub i32 %i.acz, %i.acr
  %i.adh = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.rx, i32 noundef %i.act, i32 noundef %i.acx, i32 noundef %i.ada, i32 noundef %i.add, ptr noundef %i.adf, i32 noundef 1, i32 noundef %i.adg, i32 noundef 1) #15, !noalias !326 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.rx) #15, !noalias !326
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tz) #15, !noalias !326
  br label %opj_dwt_decode_partial_97.exit

opj_dwt_decode_partial_97.exit:                   ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ao, %bb.at, %bb.aw, %._crit_edge277.i
  %.4.i = phi i32 [ 1, %._crit_edge277.i ], [ 1, %bb.aa ], [ 1, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 1, %bb.ab ], [ 0, %bb.aw ], [ 0, %bb.at ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !326
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = add i32 %i.b, 7
  %i.e = load i32, ptr %i.c, align 4, !tbaa !42   ; 2 uses
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
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.o = zext i32 %.025 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !36
  %i.r = load i32, ptr %i.i, align 8, !tbaa !38
  %i.s = load i32, ptr %i.j, align 8, !tbaa !37
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = load i32, ptr %i.k, align 4, !tbaa !39
  tail call void %i.m(ptr noundef %i.p, ptr noundef %i.q, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %i.v, i32 noundef 8) #15
  %i.w = add i32 %.025, 15
  %i.x = load i32, ptr %i.c, align 4, !tbaa !42   ; 2 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !329

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.l, %bb.b ] ; 3 uses
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.x, %bb.b ] ; 2 uses
  %i.z = icmp ult i32 %.0.lcssa, %.lcssa
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
end_hunk_5
