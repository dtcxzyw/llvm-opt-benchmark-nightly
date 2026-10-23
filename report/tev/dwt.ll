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
  %lcmp.mod262 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod262)
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
  %i.ba = phi i32 [ %i.ay, %.lr.ph226 ], [ %i.dz, %.loopexit ] ; 2 uses
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
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.0177218 = phi i32 [ 0, %.lr.ph ], [ %i.bz, %bb.c ] ; 3 uses
  %i.bz = add i32 %.0177218, 8                    ; 2 uses
  %i.ca = zext i32 %.0177218 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ca
  tail call void %2(ptr noundef %i.cb, ptr noundef %i.av, i32 noundef %i.bj, i32 noundef %i.by, i32 noundef %i.g, i32 noundef 8) #15, !callees !106
  %4 = add i32 %.0177218, 15
  %i.cc = icmp ult i32 %4, %i.be
  br i1 %i.cc, label %bb.c, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.c, %.preheader213
  %.0177.lcssa = phi i32 [ 0, %.preheader213 ], [ %i.bz, %bb.c ] ; 3 uses
  %i.cd = icmp ult i32 %.0177.lcssa, %i.be
  br i1 %i.cd, label %bb.d, label %bb.k

bb.d:                                             ; preds = %._crit_edge
  %i.ce = zext i32 %.0177.lcssa to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ce
  %i.cg = xor i32 %i.bu, 1
  %i.ch = sub nuw i32 %i.be, %.0177.lcssa
  tail call void %2(ptr noundef %i.cf, ptr noundef %i.av, i32 noundef %i.bj, i32 noundef %i.cg, i32 noundef %i.g, i32 noundef %i.ch) #15, !callees !106
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %i.a) ; 2 uses
  %i.ci = udiv i32 %i.be, %spec.select
  %i.cj = and i32 %i.ci, -8                       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.1178217 = phi i32 [ 0, %bb.e ], [ %i.cu, %.critedge ] ; 2 uses
  %i.ck = tail call ptr @opj_malloc(i64 noundef 56) #15 ; 13 uses
  %.not199 = icmp eq ptr %i.ck, null
  br i1 %.not199, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.critedge210.sink.split

bb.h:                                             ; preds = %bb.f
  %i.cl = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.au) #15 ; 2 uses
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !38
  %.not200 = icmp eq ptr %i.cl, null
  br i1 %.not200, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.ck) #15
  br label %.critedge210.sink.split

.critedge:                                        ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %i.bv, ptr %i.cm, align 8, !tbaa !107
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 %i.bs, ptr %i.cn, align 4, !tbaa !108
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i32 %i.bu, ptr %i.co, align 8, !tbaa !39
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i32 %i.bj, ptr %i.cp, align 8, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  store i32 %i.g, ptr %i.cq, align 4, !tbaa !41
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store ptr %i.c, ptr %i.cr, align 8, !tbaa !42
  %i.cs = mul i32 %.1178217, %i.cj
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !43
  %i.cu = add nuw i32 %.1178217, 1                ; 3 uses
  %.not245 = icmp eq i32 %i.cu, %spec.select      ; 2 uses
  %i.cv = mul i32 %i.cu, %i.cj
  %i.cw = select i1 %.not245, i32 %i.be, i32 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 44
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store ptr %2, ptr %i.cy, align 8, !tbaa !45
  %i.cz = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_v_func, ptr noundef nonnull %i.ck) #15 ; 0 uses
  br i1 %.not245, label %bb.j, label %bb.f, !llvm.loop !99

bb.j:                                             ; preds = %.critedge
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge, %bb.d
  %i.da = sub i32 %i.be, %i.bn
  %i.db = icmp ult i32 %i.bj, 2
  %or.cond9 = select i1 %i.az, i1 true, i1 %i.db
  br i1 %or.cond9, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k
  %.not228 = icmp eq i32 %i.bg, %i.bi
  br i1 %.not228, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader
  %i.dc = xor i32 %i.bt, 1
  %wide.trip.count = zext i32 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph221, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.dd = trunc nuw i64 %indvars.iv to i32
  %i.de = mul i32 %i.g, %i.dd
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.df
  tail call void %3(ptr noundef %i.dg, ptr noundef %i.av, i32 noundef %i.be, i32 noundef %i.dc) #15, !callees !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond236.not, label %.loopexit, label %bb.l, !llvm.loop !100

bb.m:                                             ; preds = %bb.k
  %spec.select205 = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.a) ; 3 uses
  %i.dh = udiv i32 %i.bj, %spec.select205         ; 2 uses
  %i.di = add nsw i32 %spec.select205, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge208
  %.3180219 = phi i32 [ 0, %bb.m ], [ %i.dt, %.critedge208 ] ; 3 uses
  %i.dj = tail call ptr @opj_malloc(i64 noundef 56) #15 ; 13 uses
  %.not202 = icmp eq ptr %i.dj, null
  br i1 %.not202, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.critedge210.sink.split

bb.p:                                             ; preds = %bb.n
  %i.dk = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.au) #15 ; 2 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !38
  %.not203 = icmp eq ptr %i.dk, null
  br i1 %.not203, label %bb.q, label %.critedge208

bb.q:                                             ; preds = %bb.p
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.dj) #15
  br label %.critedge210.sink.split

.critedge208:                                     ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 %i.da, ptr %i.dl, align 8, !tbaa !107
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 %i.bn, ptr %i.dm, align 4, !tbaa !108
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 %i.bt, ptr %i.dn, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i32 %i.be, ptr %i.do, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  store i32 %i.g, ptr %i.dp, align 4, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store ptr %i.c, ptr %i.dq, align 8, !tbaa !42
  %i.dr = mul i32 %.3180219, %i.dh
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !43
  %i.dt = add nuw i32 %.3180219, 1                ; 3 uses
  %i.du = mul i32 %i.dt, %i.dh
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 44
  %i.dw = icmp eq i32 %.3180219, %i.di
  %spec.select206 = select i1 %i.dw, i32 %i.bj, i32 %i.du
  store i32 %spec.select206, ptr %i.dv, align 4, !tbaa !44
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store ptr %3, ptr %i.dx, align 8, !tbaa !45
  %i.dy = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_h_func, ptr noundef nonnull %i.dj) #15 ; 0 uses
  %exitcond234.not = icmp eq i32 %i.dt, %spec.select205
  br i1 %exitcond234.not, label %bb.r, label %bb.n, !llvm.loop !101

bb.r:                                             ; preds = %.critedge208
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.r
  %i.dz = add nsw i32 %i.ba, -1
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
define internal void @opj_dwt_encode_and_deinterleave_v(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
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
end_hunk_0
begin_hunk_1_@opj_dwt_decode:bb.a
  %i.ky = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kr, i32 2) ; 8 uses
  %i.kz = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.ks, i32 range(i32 2, 5) 2)
  %i.la = tail call noundef i32 @llvm.umin.i32(i32 %i.kz, i32 %i.ig) ; 8 uses
  %i.lb = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ko, i32 2) ; 13 uses
  %i.lc = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.kq, i32 range(i32 2, 5) 2)
  %i.ld = tail call noundef i32 @llvm.umin.i32(i32 %i.lc, i32 %.0181299.i) ; 9 uses
  %i.le = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kt, i32 2) ; 9 uses
  %i.lf = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.ku, i32 range(i32 2, 5) 2)
  %i.lg = tail call noundef i32 @llvm.umin.i32(i32 %i.lf, i32 %i.ii) ; 8 uses
  %i.lh = icmp eq i32 %i.ih, 0                    ; 5 uses
  %.382.i = select i1 %i.lh, i32 %i.kv, i32 %i.ky
  %.383.i = select i1 %i.lh, i32 %i.ky, i32 %i.kv
  %.384.i = select i1 %i.lh, i32 %i.kx, i32 %i.la
  %.385.i = select i1 %i.lh, i32 %i.la, i32 %i.kx
  %i.li = shl i32 %.382.i, 1
  %i.lj = shl i32 %.383.i, 1
  %i.lk = or disjoint i32 %i.lj, 1
  %i.ll = tail call noundef i32 @llvm.umin.i32(i32 %i.li, i32 %i.lk) ; 3 uses
  %i.lm = shl i32 %.384.i, 1
  %i.ln = shl i32 %.385.i, 1
  %i.lo = or disjoint i32 %i.ln, 1
  %i.lp = tail call noundef i32 @llvm.umax.i32(i32 %i.lm, i32 %i.lo) ; 2 uses
  %i.lq = tail call noundef i32 @llvm.umin.i32(i32 %i.lp, i32 %i.ia) ; 5 uses
  %i.lr = icmp eq i32 %i.ij, 0                    ; 2 uses
  br i1 %i.lr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %opj_dwt_get_band_coordinates.exit206.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %opj_dwt_get_band_coordinates.exit206.i
  %.sink381.i = phi i32 [ %i.le, %bb.aa ], [ %i.lb, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink380.i = phi i32 [ %i.lb, %bb.aa ], [ %i.le, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink376.i = phi i32 [ %i.lg, %bb.aa ], [ %i.ld, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink375.i = phi i32 [ %i.ld, %bb.aa ], [ %i.lg, %opj_dwt_get_band_coordinates.exit206.i ]
  %i.ls = shl i32 %.sink381.i, 1
  %i.lt = shl i32 %.sink380.i, 1
  %i.lu = or disjoint i32 %i.lt, 1
  %i.lv = tail call noundef i32 @llvm.umin.i32(i32 %i.ls, i32 %i.lu) ; 2 uses
  %i.lw = shl i32 %.sink376.i, 1
  %i.lx = shl i32 %.sink375.i, 1
  %i.ly = or disjoint i32 %i.lx, 1
  %i.lz = tail call noundef i32 @llvm.umax.i32(i32 %i.lw, i32 %i.ly)
  %i.ma = tail call noundef i32 @llvm.umin.i32(i32 %i.lz, i32 %i.if)
  %.not306.i = icmp eq i32 %i.if, 0
  %.pre315.i = add i32 %i.le, %.0181299.i         ; 2 uses
  %.pre316.i = add i32 %i.lg, %.0181299.i         ; 2 uses
  br i1 %.not306.i, label %.preheader.i17, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.ab
  %i.mb = icmp ult i32 %i.lp, %i.ia
  %i.mc = add i32 %i.lq, -1
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.md
  %i.mf = zext i32 %i.lq to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mf
  %i.mh = sext i32 %i.ih to i64                   ; 2 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.mh
  %i.mj = shl i32 %i.kv, 1                        ; 3 uses
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mk
  %i.mm = add i32 %i.ky, %.0182298.i
  %i.mn = add i32 %i.la, %.0182298.i
  %i.mo = sub nsw i64 0, %i.mh
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.mo
  %i.mq = shl i32 %i.ky, 1
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mr
  %i.mt = icmp eq i32 %.0182298.i, 0
  %i.mu = icmp eq i32 %i.ig, 1
  %or.cond3.i.i = and i1 %i.mt, %i.mu
  %i.mv = icmp slt i32 %i.kv, %i.kx               ; 2 uses
  %i.mw = shl i32 %i.ig, 1                        ; 2 uses
  %i.mx = add i32 %i.mw, -2
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.my
  %i.na = icmp slt i32 %i.ky, %i.la               ; 2 uses
  %i.nb = shl i32 %.0182298.i, 1                  ; 2 uses
  %i.nc = add i32 %i.nb, -1
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nd ; 2 uses
  %i.nf = sext i32 %i.ky to i64                   ; 6 uses
  %i.ng = sext i32 %.0182298.i to i64             ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.la to i64
  %i.nh = icmp sgt i32 %i.ig, 0
  %i.ni = icmp sgt i32 %.0182298.i, 1
  %or.cond.i.i = or i1 %i.ni, %i.nh
  %i.nj = icmp slt i32 %i.kv, 1
  %.not171.not.i.i = icmp sgt i32 %i.kv, %i.ig
  %i.nk = add i32 %i.mj, -1
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = add i32 %i.mw, -1
  %i.nn = sext i32 %i.nm to i64                   ; 3 uses
  %.pn.i.i = select i1 %.not171.not.i.i, i64 %i.nn, i64 %i.nl
  %.in.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.pn.i.i
  %i.no = icmp slt i32 %i.kv, 0
  %.not172.i.i = icmp slt i32 %i.kv, %i.ig
  %i.np = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nn ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mk
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ns = sext i32 %i.mj to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ns ; 2 uses
  %spec.select.i209.i = tail call i32 @llvm.smin.i32(i32 %i.kx, i32 %i.ig) ; 9 uses
  %.0150216.i.i = add nuw i32 %i.kv, 1            ; 3 uses
  %i.nu = icmp slt i32 %.0150216.i.i, %spec.select.i209.i
  %i.nv = sext i32 %.0150216.i.i to i64           ; 4 uses
  %i.nw = sext i32 %i.ig to i64                   ; 2 uses
  %wide.trip.count240.i.i = sext i32 %i.kx to i64
  %i.nx = add i32 %.0182298.i, -1                 ; 2 uses
  %i.ny = icmp sgt i32 %i.nx, %i.ky
  %spec.select191.i.i = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.nx)
  %i.nz = sext i32 %spec.select191.i.i to i64     ; 2 uses
  %i.oa = add i32 %i.nb, -2
  %i.ob = sext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ob
  %i.od = zext i32 %i.ll to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.od
  %..i = select i1 %.not172.i.i, ptr %i.nr, ptr %i.np
  %i.of = add i32 %spec.select.i209.i, -2
  %umin = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.og = add i32 %i.of, %umin
  %umin95 = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.oh = add i32 %i.og, %umin95
  %i.oi = sub i32 %i.oh, %i.ka                    ; 2 uses
  %i.oj = shl i32 %i.kv, 1
  %i.ok = shl nsw i64 %i.nv, 3                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.hg, i64 %i.ok ; 2 uses
  %i.ol = add i32 %spec.select.i209.i, -2
  %umin97 = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.om = add i32 %i.ol, %umin97
  %umin98 = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.on = add i32 %i.om, %umin98
  %i.oo = sub i32 %i.on, %i.ka
  %i.op = zext i32 %i.oo to i64
  %i.oq = shl nuw nsw i64 %i.op, 3                ; 2 uses
  %i.or = add nsw i64 %i.ok, %i.oq                ; 2 uses
  %scevgep99 = getelementptr i8, ptr %scevgep96, i64 %i.or ; 2 uses
  %i.os = shl i32 %i.kv, 1
  %i.ot = sext i32 %i.os to i64
  %i.ou = shl nsw i64 %i.ot, 2                    ; 2 uses
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.ou
  %i.ov = getelementptr i8, ptr %scevgep102, i64 %i.oq
  %scevgep103 = getelementptr i8, ptr %i.ov, i64 %i.ou
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.ok
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.or
  %i.ow = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.ox = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.oy = add i32 %spec.select.i209.i, %i.ow
  %i.oz = add i32 %i.oy, %i.ox
  %i.pa = add i32 %i.oz, -2
  %i.pb = sub i32 %i.pa, %i.ka                    ; 2 uses
  %i.pc = zext i32 %i.pb to i64
  %i.pd = add nuw nsw i64 %i.pc, 1                ; 2 uses
  %min.iters.check112 = icmp ult i32 %i.pb, 12
  %mul.overflow = icmp slt i32 %i.oi, 0
  %i.pe = add i32 %i.kv, %i.oi
  %i.pf = shl i32 %i.pe, 1
  %i.pg = icmp slt i32 %i.pf, %i.oj
  %i.ph = or i1 %i.pg, %mul.overflow
  %bound0 = icmp ult ptr %scevgep, %scevgep103
  %bound1 = icmp ult ptr %scevgep101, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  %bound0108 = icmp ult ptr %scevgep, %scevgep107
  %bound1109 = icmp ult ptr %scevgep105, %scevgep99
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx = or i1 %found.conflict, %found.conflict110
  %i.pi = and i64 %i.pd, 3                        ; 2 uses
  %i.pj = icmp eq i64 %i.pi, 0
  %i.pk = select i1 %i.pj, i64 4, i64 %i.pi
  %n.vec114 = sub nsw i64 %i.pd, %i.pk            ; 3 uses
  %i.pl = add nsw i64 %n.vec114, %i.nv
  %i.pm = trunc i64 %n.vec114 to i32
  %i.pn = add i32 %i.kv, %i.pm
  %i.po = add nsw i64 %i.nf, 1
  %i.pp = tail call i64 @llvm.smax.i64(i64 %i.nz, i64 %i.po)
  %i.pq = sub i64 %i.pp, %i.nf                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.pq, 5
  %i.pr = and i64 %i.pq, 3                        ; 2 uses
  %i.ps = icmp eq i64 %i.pr, 0
  %i.pt = select i1 %i.ps, i64 4, i64 %i.pr
  %n.vec = sub i64 %i.pq, %i.pt                   ; 2 uses
  %i.pu = add i64 %n.vec, %i.nf
  br label %bb.ac

.preheader.i17:                                   ; preds = %bb.bh, %bb.ab
  %i.pv = shl nsw i32 %i.ij, 2                    ; 2 uses
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.pw
  %i.py = shl i32 %i.lb, 3                        ; 3 uses
  %i.pz = zext i32 %i.py to i64                   ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.pz
  %i.qb = sub nsw i32 4, %i.pv
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qc
  %i.qe = shl i32 %i.le, 3                        ; 2 uses
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.qf
  %i.qh = icmp eq i32 %.0181299.i, 0
  %i.qi = icmp eq i32 %i.ii, 1
  %or.cond3.i211.i = and i1 %i.qh, %i.qi
  %i.qj = icmp slt i32 %i.lb, %i.ld               ; 2 uses
  %i.qk = shl i32 %i.ii, 3                        ; 3 uses
  %i.ql = add i32 %i.qk, -8                       ; 3 uses
  %.not320.us.i.i = icmp sgt i32 %i.ii, 0         ; 2 uses
  %i.qm = zext i32 %i.ql to i64                   ; 3 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qm
  %i.qo = or disjoint i64 %i.qm, 1                ; 2 uses
  %i.qp = trunc nuw i64 %i.qo to i32
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qo
  %5 = add i32 %i.qk, -6
  %i.qr = or disjoint i64 %i.qm, 3                ; 2 uses
  %i.qs = trunc nuw i64 %i.qr to i32
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qr
  %i.qu = select i1 %.not320.us.i.i, i32 0, i32 %i.ql
  %i.qv = zext i32 %i.qu to i64
  %.in321.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qv
  %i.qw = icmp slt i32 %i.le, %i.lg               ; 2 uses
  %i.qx = shl i32 %.0181299.i, 3                  ; 5 uses
  %i.qy = add i32 %i.qx, -4                       ; 3 uses
  %i.qz = zext i32 %i.qy to i64
  %6 = add i32 %i.qx, -3                          ; 2 uses
  %7 = add i32 %i.qx, -2                          ; 3 uses
  %8 = add i32 %i.qx, -1                          ; 3 uses
  %.in315.us370.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qz ; 3 uses
  %.in315.v.us369.2.i.i = zext i32 %7 to i64
  %.in315.us370.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.2.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 8
  %.in315.v.us369.3.i.i = zext i32 %8 to i64
  %.in315.us370.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.3.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 12
  %i.rc = icmp sgt i32 %.0181299.i, 1
  %or.cond.i213.i = or i1 %i.rc, %.not320.us.i.i
  %i.rd = icmp slt i32 %i.lb, 1
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.ii)
  %.pn341.in.i.i = shl i32 %..i.i, 3
  %.pn341.i.i = add i32 %.pn341.in.i.i, -4
  %i.re = icmp slt i32 %i.lb, 0
  %.not312.i.i = icmp slt i32 %i.lb, %i.ii
  %i.rf = add i32 %i.qk, -4                       ; 2 uses
  %invariant.op.i.i = or disjoint i32 %i.py, 4
  %i.rg = zext i32 %i.rf to i64                   ; 2 uses
  %i.rh = zext i32 %.pn341.i.i to i64
  %i.ri = zext i32 %invariant.op.i.i to i64
  %.in311.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rh ; 4 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pz ; 7 uses
  %.in311.ph.1.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 4
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 2 uses
  %.in311.ph.2.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 8 ; 4 uses
  %.in311.ph.3.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 12
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 12 ; 2 uses
  %i.rn = add nuw nsw i32 %i.lb, 1                ; 2 uses
  %spec.select.i218.i = tail call i32 @llvm.smin.i32(i32 %i.ld, i32 %i.ii) ; 8 uses
  %i.ro = add nuw nsw i32 %i.lb, 2                ; 2 uses
  %i.rp = icmp slt i32 %i.ro, %spec.select.i218.i
  %i.rq = sext i32 %i.py to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.rq
  %i.rs = sext i32 %i.rn to i64
  %i.rt = sext i32 %spec.select.i218.i to i64
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rg ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 12
  %i.rx = add i32 %.0181299.i, -1
  %spec.select322.i.i = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.rx) ; 8 uses
  %i.ry = add nuw nsw i32 %i.le, 1                ; 2 uses
  %i.rz = icmp slt i32 %i.ry, %spec.select322.i.i
  %i.sa = sext i32 %i.qe to i64
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.sa
  %i.sc = sext i32 %i.le to i64
  %i.sd = sext i32 %spec.select322.i.i to i64
  %i.se = add i32 %i.qx, -8                       ; 3 uses
  %.not304.us.i.i = icmp sgt i32 %.0181299.i, 0
  %i.sf = zext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sf
  %i.sh = select i1 %.not304.us.i.i, i32 0, i32 %i.se
  %i.si = zext i32 %i.sh to i64
  %.in305.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.si ; 3 uses
  %.in305.us.us.1.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 4
  %.in305.us.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 12
  %i.sj = shl i32 %i.lv, 2
  %i.sk = zext i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sk
  %.301.v.i = select i1 %.not312.i.i, i64 %i.ri, i64 %i.rg
  %.301.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.301.v.i ; 4 uses
  %.302.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 4
  %.303.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 8
  %.304.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 12
  br label %bb.bi

bb.ac:                                            ; preds = %bb.bh, %.lr.ph.i14
  %.0176295.i = phi i32 [ 0, %.lr.ph.i14 ], [ %.pre-phi319.i, %bb.bh ] ; 9 uses
  %.not189.i = icmp uge i32 %.0176295.i, %i.lb
  %i.sm = icmp ult i32 %.0176295.i, %i.ld
  %or.cond.i15 = and i1 %.not189.i, %i.sm
  br i1 %or.cond.i15, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not190.i = icmp uge i32 %.0176295.i, %.pre315.i
  %i.sn = icmp ult i32 %.0176295.i, %.pre316.i
  %or.cond291.i = and i1 %.not190.i, %i.sn
  br i1 %or.cond291.i, label %bb.ae, label %._crit_edge314.i

._crit_edge314.i:                                 ; preds = %bb.ad
  %.pre318.i = add nuw i32 %.0176295.i, 1
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.mb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.me, align 4, !tbaa !46
  store i32 0, ptr %i.mg, align 4, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.so = add nuw i32 %.0176295.i, 1              ; 4 uses
  %i.sp = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.kv, i32 noundef %.0176295.i, i32 noundef %i.kx, i32 noundef %i.so, ptr noundef nonnull %i.ml, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  %i.sq = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.mm, i32 noundef %.0176295.i, i32 noundef %i.mn, i32 noundef %i.so, ptr noundef nonnull %i.ms, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lh, label %bb.ah, label %bb.ax

bb.ah:                                            ; preds = %bb.ag
  br i1 %or.cond.i.i, label %bb.ai, label %opj_dwt_decode_partial_1.exit.i

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.mv, label %bb.aj, label %.loopexit208.i.i

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.nj, label %bb.ak, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aj
  %i.sr = load i32, ptr %.in.ph.i.i, align 4, !tbaa !46
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ss = load i32, ptr %i.hm, align 4, !tbaa !46 ; 3 uses
  br i1 %i.no, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread.i.i
  %i.st = phi i32 [ %i.sr, %.thread.i.i ], [ %i.ss, %bb.ak ]
  %.pre.i = load i32, ptr %..i, align 4, !tbaa !46
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.su = phi i32 [ %i.ss, %bb.ak ], [ %.pre.i, %bb.al ]
  %i.sv = phi i32 [ %i.ss, %bb.ak ], [ %i.st, %bb.al ]
  %i.sw = add i32 %i.su, 2
  %i.sx = add i32 %i.sw, %i.sv
  %i.sy = ashr i32 %i.sx, 2
  %i.sz = load i32, ptr %i.nt, align 4, !tbaa !46
  %i.ta = sub nsw i32 %i.sz, %i.sy
  store i32 %i.ta, ptr %i.nt, align 4, !tbaa !46
  br i1 %i.nu, label %.lr.ph219.i.i.preheader, label %.preheader207.i.i

.lr.ph219.i.i.preheader:                          ; preds = %bb.am
  %brmerge = select i1 %min.iters.check112, i1 true, i1 %i.ph
  %brmerge158 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge158, label %.lr.ph219.i.i.preheader128, label %vector.body115

.lr.ph219.i.i.preheader128:                       ; preds = %.lr.ph219.i.i.preheader, %vector.body115
  %indvars.iv233.i.i.ph = phi i64 [ %i.nv, %.lr.ph219.i.i.preheader ], [ %i.pl, %vector.body115 ] ; 5 uses
  %.0150.in217.i.i.ph = phi i32 [ %i.kv, %.lr.ph219.i.i.preheader ], [ %i.pn, %vector.body115 ] ; 2 uses
  %i.tb = trunc i64 %indvars.iv233.i.i.ph to i32  ; 2 uses
  %i.tc = sub i32 %spec.select.i209.i, %i.tb
  %.neg = add i32 %i.tb, 1
  %xtraiter142 = and i32 %i.tc, 1
  %lcmp.mod143.not = icmp eq i32 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph219.i.i.prol.loopexit, label %.lr.ph219.i.i.prol

.lr.ph219.i.i.prol:                               ; preds = %.lr.ph219.i.i.preheader128
  %i.td = shl nsw i32 %.0150.in217.i.i.ph, 1
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr [4 x i8], ptr %i.hg, i64 %i.te
  %i.tg = getelementptr i8, ptr %i.tf, i64 4
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !46
  %.idx256.i.i.prol = shl nsw i64 %indvars.iv233.i.i.ph, 3
  %i.ti = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i.prol ; 3 uses
  %i.tj = getelementptr i8, ptr %i.ti, i64 4
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !46
  %i.tl = add i32 %i.th, 2
  %i.tm = add i32 %i.tl, %i.tk
  %i.tn = ashr i32 %i.tm, 2
  %i.to = load i32, ptr %i.ti, align 4, !tbaa !46
  %i.tp = sub nsw i32 %i.to, %i.tn
  store i32 %i.tp, ptr %i.ti, align 4, !tbaa !46
  %indvars.iv.next234.i.i.prol = add nsw i64 %indvars.iv233.i.i.ph, 1
  %i.tq = trunc nsw i64 %indvars.iv233.i.i.ph to i32
  br label %.lr.ph219.i.i.prol.loopexit

.lr.ph219.i.i.prol.loopexit:                      ; preds = %.lr.ph219.i.i.prol, %.lr.ph219.i.i.preheader128
  %indvars.iv233.i.i.unr = phi i64 [ %indvars.iv233.i.i.ph, %.lr.ph219.i.i.preheader128 ], [ %indvars.iv.next234.i.i.prol, %.lr.ph219.i.i.prol ]
  %.0150.in217.i.i.unr = phi i32 [ %.0150.in217.i.i.ph, %.lr.ph219.i.i.preheader128 ], [ %i.tq, %.lr.ph219.i.i.prol ]
  %i.tr = icmp eq i32 %spec.select.i209.i, %.neg
  br i1 %i.tr, label %.preheader207.i.i, label %.lr.ph219.i.i

vector.body115:                                   ; preds = %.lr.ph219.i.i.preheader, %vector.body115
  %index116 = phi i64 [ %index.next122, %vector.body115 ], [ 0, %.lr.ph219.i.i.preheader ] ; 3 uses
  %i.ts = add i64 %index116, %i.nv                ; 4 uses
  %i.tt = trunc i64 %index116 to i32
  %i.tu = add i32 %i.kv, %i.tt
  %i.tv = shl nsw i32 %i.tu, 1
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr [4 x i8], ptr %i.hg, i64 %i.tw
  %i.ty = getelementptr i8, ptr %i.tx, i64 4
  %wide.vec117 = load <8 x i32>, ptr %i.ty, align 4, !tbaa !46, !alias.scope !197
  %strided.vec118 = shufflevector <8 x i32> %wide.vec117, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.tz = shl i64 %i.ts, 3
  %i.ua = shl i64 %i.ts, 3
  %i.ub = shl i64 %i.ts, 3
  %i.uc = shl i64 %i.ts, 3
  %i.ud = getelementptr i8, ptr %i.hg, i64 %i.tz  ; 2 uses
  %i.ue = getelementptr i8, ptr %i.hg, i64 %i.ua
  %i.uf = getelementptr i8, ptr %i.ue, i64 8
  %i.ug = getelementptr i8, ptr %i.hg, i64 %i.ub
  %i.uh = getelementptr i8, ptr %i.ug, i64 16
  %i.ui = getelementptr i8, ptr %i.hg, i64 %i.uc
  %i.uj = getelementptr i8, ptr %i.ui, i64 24
  %wide.vec119 = load <8 x i32>, ptr %i.ud, align 4, !tbaa !46 ; 2 uses
  %strided.vec120 = shufflevector <8 x i32> %wide.vec119, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec121 = shufflevector <8 x i32> %wide.vec119, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.uk = add <4 x i32> %strided.vec118, splat (i32 2)
  %i.ul = add <4 x i32> %i.uk, %strided.vec121
  %i.um = ashr <4 x i32> %i.ul, splat (i32 2)
  %i.un = sub nsw <4 x i32> %strided.vec120, %i.um ; 4 uses
  %i.uo = extractelement <4 x i32> %i.un, i64 0
  store i32 %i.uo, ptr %i.ud, align 4, !tbaa !46, !alias.scope !198, !noalias !199
  %i.up = extractelement <4 x i32> %i.un, i64 1
  store i32 %i.up, ptr %i.uf, align 4, !tbaa !46, !alias.scope !198, !noalias !199
  %i.uq = extractelement <4 x i32> %i.un, i64 2
end_hunk_1
begin_hunk_2_@opj_dwt_decode:bb.a
  %i.akq = zext i32 %i.akp to i64
  %i.akr = zext i32 %i.ako to i64
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.akr ; 2 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.akq
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aks, i64 16 ; 2 uses
  %i.akv = load <4 x i32>, ptr %i.aks, align 4, !tbaa !46
  %i.akw = load <4 x i32>, ptr %i.akt, align 4, !tbaa !46 ; 2 uses
  %i.akx = add nsw <4 x i32> %i.akw, %i.akv
  %i.aky = ashr <4 x i32> %i.akx, splat (i32 1)
  %i.akz = load <4 x i32>, ptr %i.aku, align 4, !tbaa !46
  %i.ala = add nsw <4 x i32> %i.aky, %i.akz
  store <4 x i32> %i.ala, ptr %i.aku, align 4, !tbaa !46
  %i.alb = shl i32 %.6392.i.i, 3                  ; 2 uses
  %i.alc = add i32 %i.alb, 8
  %i.ald = add i32 %i.alb, 16
  %i.ale = zext i32 %i.ald to i64
  %i.alf = zext i32 %i.alc to i64
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.alf
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ale
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 16 ; 2 uses
  %i.alj = load <4 x i32>, ptr %i.alh, align 4, !tbaa !46
  %i.alk = add nsw <4 x i32> %i.alj, %i.akw
  %i.all = ashr <4 x i32> %i.alk, splat (i32 1)
  %i.alm = load <4 x i32>, ptr %i.ali, align 4, !tbaa !46
  %i.aln = add nsw <4 x i32> %i.all, %i.alm
  store <4 x i32> %i.aln, ptr %i.ali, align 4, !tbaa !46
  %i.alo = add nsw i32 %.6392.i.i, 2              ; 2 uses
  %exitcond474.not.i.i.1 = icmp eq i32 %i.alo, %spec.select322.i.i
  br i1 %exitcond474.not.i.i.1, label %.preheader342.i.i, label %.preheader343.i.i, !llvm.loop !186

.preheader342.i.i:                                ; preds = %.preheader343.i.i.prol.loopexit, %.preheader343.i.i, %.loopexit344.i.i
  %.6.lcssa.i.i = phi i32 [ %.5.i.i, %.loopexit344.i.i ], [ %spec.select322.i.i, %.preheader343.i.i ], [ %spec.select322.i.i, %.preheader343.i.i.prol.loopexit ] ; 2 uses
  %i.alp = icmp slt i32 %.6.lcssa.i.i, %i.lg
  br i1 %i.alp, label %.preheader.i214.i, label %opj_dwt_decode_partial_1_parallel.exit.i

.preheader.i214.i:                                ; preds = %.preheader342.i.i, %.split398.us.i.i
  %.7402.i.i = phi i32 [ %i.anq, %.split398.us.i.i ], [ %.6.lcssa.i.i, %.preheader342.i.i ] ; 6 uses
  %i.alq = icmp slt i32 %.7402.i.i, 0
  %i.alr = shl i32 %.7402.i.i, 3                  ; 2 uses
  %invariant.op394.i.i = or disjoint i32 %i.alr, 4 ; 3 uses
  br i1 %i.alq, label %.preheader.split.us.i.i, label %.preheader.split.i.i

.preheader.split.us.i.i:                          ; preds = %.preheader.i214.i
  %.not337.i.i = icmp eq i32 %.7402.i.i, -1
  %i.als = zext i32 %invariant.op394.i.i to i64   ; 2 uses
  %i.alt = load i32, ptr %i.hg, align 4, !tbaa !46 ; 2 uses
  br i1 %.not337.i.i, label %.preheader.split.us.split.us.preheader.i.i, label %.preheader.split.us.split.preheader.i.i

.preheader.split.us.split.preheader.i.i:          ; preds = %.preheader.split.us.i.i
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.als ; 2 uses
  %i.alv = load i32, ptr %i.hm, align 4, !tbaa !46
  %i.alw = load <2 x i32>, ptr %i.hn, align 4, !tbaa !46
  %i.alx = load <4 x i32>, ptr %i.alu, align 4, !tbaa !46
  %i.aly = insertelement <4 x i32> poison, i32 %i.alt, i64 0
  %i.alz = insertelement <4 x i32> %i.aly, i32 %i.alv, i64 1
  %i.ama = shufflevector <2 x i32> %i.alw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.amb = shufflevector <4 x i32> %i.alz, <4 x i32> %i.ama, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amc = add nsw <4 x i32> %i.alx, %i.amb
  store <4 x i32> %i.amc, ptr %i.alu, align 4, !tbaa !46
  br label %.split398.us.i.i

.preheader.split.us.split.us.preheader.i.i:       ; preds = %.preheader.split.us.i.i
  %i.amd = load i32, ptr %.in305.us.us.i.i, align 4, !tbaa !46
  %i.ame = add nsw i32 %i.amd, %i.alt
  %i.amf = ashr i32 %i.ame, 1
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.als ; 2 uses
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !46
  %i.ami = add nsw i32 %i.amf, %i.amh
  store i32 %i.ami, ptr %i.amg, align 4, !tbaa !46
  %i.amj = load <2 x i32>, ptr %i.hm, align 4, !tbaa !46
  %i.amk = load <2 x i32>, ptr %.in305.us.us.1.i.i, align 4, !tbaa !46
  %i.aml = add nsw <2 x i32> %i.amk, %i.amj
  %i.amm = ashr <2 x i32> %i.aml, splat (i32 1)
  %i.amn = load <2 x i32>, ptr %i.hq, align 4, !tbaa !46
  %i.amo = add nsw <2 x i32> %i.amm, %i.amn
  store <2 x i32> %i.amo, ptr %i.hq, align 4, !tbaa !46
  %i.amp = load i32, ptr %i.ho, align 4, !tbaa !46
  %i.amq = load i32, ptr %.in305.us.us.3.i.i, align 4, !tbaa !46
  %i.amr = add nsw i32 %i.amq, %i.amp
  %i.ams = ashr i32 %i.amr, 1
  %i.amt = load i32, ptr %i.hr, align 4, !tbaa !46
  %i.amu = add nsw i32 %i.ams, %i.amt
  store i32 %i.amu, ptr %i.hr, align 4, !tbaa !46
  br label %.split398.us.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i214.i
  %.not303.i.i = icmp slt i32 %.7402.i.i, %.0181299.i
  %.pn336.i.i = select i1 %.not303.i.i, i32 %i.alr, i32 %i.se
  %i.amv = add nuw nsw i32 %.7402.i.i, 1          ; 2 uses
  %.not304.i.i = icmp slt i32 %i.amv, %.0181299.i
  %i.amw = zext i32 %.pn336.i.i to i64            ; 2 uses
  br i1 %.not304.i.i, label %.thread328.us.preheader.i.i, label %.thread328.preheader.i.i

.thread328.preheader.i.i:                         ; preds = %.preheader.split.i.i
  %i.amx = zext i32 %invariant.op394.i.i to i64
  %.in.ph.i215.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.amw
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.amx ; 2 uses
  %i.amz = load <4 x i32>, ptr %.in.ph.i215.i, align 4, !tbaa !46
  %i.ana = load <4 x i32>, ptr %i.sg, align 4, !tbaa !46
  %i.anb = add nsw <4 x i32> %i.ana, %i.amz
  %i.anc = ashr <4 x i32> %i.anb, splat (i32 1)
  %i.and = load <4 x i32>, ptr %i.amy, align 4, !tbaa !46
  %i.ane = add nsw <4 x i32> %i.anc, %i.and
  store <4 x i32> %i.ane, ptr %i.amy, align 4, !tbaa !46
  br label %.split398.us.i.i

.thread328.us.preheader.i.i:                      ; preds = %.preheader.split.i.i
  %i.anf = shl i32 %i.amv, 3
  %i.ang = zext i32 %i.anf to i64
  %i.anh = zext i32 %invariant.op394.i.i to i64
  %.in.ph.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.amw
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ang
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.anh ; 2 uses
  %i.ank = load <4 x i32>, ptr %.in.ph.us.i.i, align 4, !tbaa !46
  %i.anl = load <4 x i32>, ptr %i.ani, align 4, !tbaa !46
  %i.anm = add nsw <4 x i32> %i.anl, %i.ank
  %i.ann = ashr <4 x i32> %i.anm, splat (i32 1)
  %i.ano = load <4 x i32>, ptr %i.anj, align 4, !tbaa !46
  %i.anp = add nsw <4 x i32> %i.ann, %i.ano
  store <4 x i32> %i.anp, ptr %i.anj, align 4, !tbaa !46
  br label %.split398.us.i.i

.split398.us.i.i:                                 ; preds = %.thread328.us.preheader.i.i, %.thread328.preheader.i.i, %.preheader.split.us.split.us.preheader.i.i, %.preheader.split.us.split.preheader.i.i
  %i.anq = add nsw i32 %.7402.i.i, 1              ; 2 uses
  %exitcond498.not.i.i = icmp eq i32 %i.anq, %i.lg
  br i1 %exitcond498.not.i.i, label %opj_dwt_decode_partial_1_parallel.exit.i, label %.preheader.i214.i, !llvm.loop !187

bb.br:                                            ; preds = %bb.bj
  br i1 %or.cond3.i211.i, label %.preheader351.preheader.i.i, label %.preheader357.i.i

.preheader351.preheader.i.i:                      ; preds = %bb.br
  %i.anr = load <4 x i32>, ptr %i.hg, align 4, !tbaa !46
  %i.ans = sdiv <4 x i32> %i.anr, splat (i32 2)
  store <4 x i32> %i.ans, ptr %i.hg, align 4, !tbaa !46
  br label %opj_dwt_decode_partial_1_parallel.exit.i

.preheader357.i.i:                                ; preds = %bb.br
  br i1 %i.qj, label %.preheader356.i.i, label %.preheader354.i.i

.preheader356.i.i:                                ; preds = %.preheader357.i.i, %.split.us.i.i
  %.8361.i.i = phi i32 [ %i.aqe, %.split.us.i.i ], [ %i.lb, %.preheader357.i.i ] ; 6 uses
  %i.ant = shl i32 %.8361.i.i, 3                  ; 7 uses
  %i.anu = icmp slt i32 %.8361.i.i, 0
  %.not318.i.i = icmp slt i32 %.8361.i.i, %i.ii   ; 4 uses
  br i1 %i.anu, label %.preheader356.split.us.i.i, label %.preheader356.split.i.i

.preheader356.split.us.i.i:                       ; preds = %.preheader356.i.i
  %.not335.i.i = icmp eq i32 %.8361.i.i, -1
  br i1 %.not335.i.i, label %.preheader356.split.us.split.us.preheader.i.i, label %.preheader356.split.us.split.preheader.i.i

.preheader356.split.us.split.preheader.i.i:       ; preds = %.preheader356.split.us.i.i
  %i.anv = zext i32 %i.ant to i64
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.anv
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 16 ; 2 uses
  %i.any = load <4 x i32>, ptr %i.anx, align 4, !tbaa !46
  %i.anz = load <4 x i32>, ptr %i.hg, align 4, !tbaa !46
  %i.aoa = shl <4 x i32> %i.anz, splat (i32 1)
  %i.aob = add <4 x i32> %i.aoa, splat (i32 2)
  %i.aoc = ashr <4 x i32> %i.aob, splat (i32 2)
  %i.aod = sub <4 x i32> %i.any, %i.aoc
  store <4 x i32> %i.aod, ptr %i.anx, align 4, !tbaa !46
  br label %.split.us.i.i

.preheader356.split.us.split.us.preheader.i.i:    ; preds = %.preheader356.split.us.i.i
  %i.aoe = load <4 x i32>, ptr %i.hp, align 4, !tbaa !46
  %i.aof = load <4 x i32>, ptr %i.hg, align 4, !tbaa !46
  %i.aog = load <4 x i32>, ptr %.in321.us.us.i.i, align 4, !tbaa !46
  %i.aoh = add <4 x i32> %i.aof, splat (i32 2)
  %i.aoi = add <4 x i32> %i.aoh, %i.aog
  %i.aoj = ashr <4 x i32> %i.aoi, splat (i32 2)
  %i.aok = sub <4 x i32> %i.aoe, %i.aoj
  store <4 x i32> %i.aok, ptr %i.hp, align 4, !tbaa !46
  br label %.split.us.i.i

.preheader356.split.i.i:                          ; preds = %.preheader356.i.i
  %i.aol = add nuw nsw i32 %.8361.i.i, 1          ; 2 uses
  %.not320.i.i = icmp slt i32 %i.aol, %i.ii
  br i1 %.not320.i.i, label %.thread331.us.preheader.i.i, label %.thread331.preheader.i.i

.thread331.preheader.i.i:                         ; preds = %.preheader356.split.i.i
  %i.aom = zext i32 %i.ant to i64
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aom ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 16 ; 2 uses
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !46
  %.in319.ph.v.v.i.i = select i1 %.not318.i.i, i32 %i.ant, i32 %i.ql
  %.in319.ph.v.i.i = zext i32 %.in319.ph.v.v.i.i to i64
  %.in319.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in319.ph.v.i.i
  %i.aoq = load i32, ptr %.in319.ph.i.i, align 4, !tbaa !46
  %i.aor = load i32, ptr %i.qn, align 4, !tbaa !46
  %i.aos = add i32 %i.aoq, 2
  %i.aot = add i32 %i.aos, %i.aor
  %i.aou = ashr i32 %i.aot, 2
  %i.aov = sub i32 %i.aop, %i.aou
  store i32 %i.aov, ptr %i.aoo, align 4, !tbaa !46
  %i.aow = or disjoint i32 %i.ant, 1
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aon, i64 20 ; 2 uses
  %.in319.ph.v.v.1.i.i = select i1 %.not318.i.i, i32 %i.aow, i32 %i.qp
  %.in319.ph.v.1.i.i = zext i32 %.in319.ph.v.v.1.i.i to i64
  %.in319.ph.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in319.ph.v.1.i.i
  %i.aoy = load i32, ptr %.in319.ph.1.i.i, align 4, !tbaa !46
  %9 = or disjoint i32 %i.ant, 2
  %.in319.ph.v.v.2.i.i = select i1 %.not318.i.i, i32 %9, i32 %5
  %.in319.ph.v.2.i.i = zext i32 %.in319.ph.v.v.2.i.i to i64
  %.in319.ph.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in319.ph.v.2.i.i
  %i.aoz = load i32, ptr %.in319.ph.2.i.i, align 4, !tbaa !46
  %i.apa = load <2 x i32>, ptr %i.aox, align 4, !tbaa !46
  %i.apb = load <2 x i32>, ptr %i.qq, align 4, !tbaa !46
  %i.apc = insertelement <2 x i32> poison, i32 %i.aoy, i64 0
  %i.apd = insertelement <2 x i32> %i.apc, i32 %i.aoz, i64 1
  %i.ape = add <2 x i32> %i.apd, splat (i32 2)
  %i.apf = add <2 x i32> %i.ape, %i.apb
  %i.apg = ashr <2 x i32> %i.apf, splat (i32 2)
  %i.aph = sub <2 x i32> %i.apa, %i.apg
  store <2 x i32> %i.aph, ptr %i.aox, align 4, !tbaa !46
  %i.api = or disjoint i32 %i.ant, 3
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aon, i64 28 ; 2 uses
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !46
  %.in319.ph.v.v.3.i.i = select i1 %.not318.i.i, i32 %i.api, i32 %i.qs
  %.in319.ph.v.3.i.i = zext i32 %.in319.ph.v.v.3.i.i to i64
  %.in319.ph.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in319.ph.v.3.i.i
  %i.apl = load i32, ptr %.in319.ph.3.i.i, align 4, !tbaa !46
  %i.apm = load i32, ptr %i.qt, align 4, !tbaa !46
  %i.apn = add i32 %i.apl, 2
  %i.apo = add i32 %i.apn, %i.apm
  %i.app = ashr i32 %i.apo, 2
  %i.apq = sub i32 %i.apk, %i.app
  store i32 %i.apq, ptr %i.apj, align 4, !tbaa !46
  br label %.split.us.i.i

.thread331.us.preheader.i.i:                      ; preds = %.preheader356.split.i.i
  %i.apr = shl i32 %i.aol, 3
  %i.aps = zext i32 %i.ant to i64
  %i.apt = zext i32 %i.apr to i64
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aps ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 16 ; 2 uses
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.apt
  %i.apx = load <4 x i32>, ptr %i.apv, align 4, !tbaa !46
  %i.apy = load <4 x i32>, ptr %i.apu, align 4, !tbaa !46
  %i.apz = load <4 x i32>, ptr %i.apw, align 4, !tbaa !46
  %i.aqa = add <4 x i32> %i.apy, splat (i32 2)
  %i.aqb = add <4 x i32> %i.aqa, %i.apz
  %i.aqc = ashr <4 x i32> %i.aqb, splat (i32 2)
  %i.aqd = sub <4 x i32> %i.apx, %i.aqc
  store <4 x i32> %i.aqd, ptr %i.apv, align 4, !tbaa !46
  br label %.split.us.i.i

.preheader354.i.i:                                ; preds = %.split.us.i.i, %.preheader357.i.i
  br i1 %i.qw, label %.preheader353.i.i, label %opj_dwt_decode_partial_1_parallel.exit.i

.split.us.i.i:                                    ; preds = %.thread331.us.preheader.i.i, %.thread331.preheader.i.i, %.preheader356.split.us.split.us.preheader.i.i, %.preheader356.split.us.split.preheader.i.i
  %i.aqe = add nsw i32 %.8361.i.i, 1              ; 2 uses
  %exitcond.not.i212.i = icmp eq i32 %i.aqe, %i.ld
  br i1 %exitcond.not.i212.i, label %.preheader354.i.i, label %.preheader356.i.i, !llvm.loop !188

.preheader353.i.i:                                ; preds = %.preheader354.i.i, %.split364.us.i.i
  %.9372.i.i = phi i32 [ %i.atn, %.split364.us.i.i ], [ %i.le, %.preheader354.i.i ] ; 6 uses
  %i.aqf = shl i32 %.9372.i.i, 3                  ; 8 uses
  %i.aqg = icmp slt i32 %.9372.i.i, 0
  %.not314.i.i = icmp slt i32 %.9372.i.i, %.0181299.i ; 8 uses
  %.not316.not.i.i = icmp sgt i32 %.9372.i.i, %.0181299.i
  %i.aqh = add i32 %i.aqf, -4
  br i1 %i.aqg, label %.thread333.us.preheader.i.i, label %.preheader353.split.i.i

.thread333.us.preheader.i.i:                      ; preds = %.preheader353.i.i
  %i.aqi = zext i32 %i.aqf to i64
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aqi ; 2 uses
  %i.aqk = load <4 x i32>, ptr %i.aqj, align 4, !tbaa !46
  %i.aql = load <4 x i32>, ptr %i.hs, align 4, !tbaa !46
  %i.aqm = shl <4 x i32> %i.aql, splat (i32 1)
  %i.aqn = ashr exact <4 x i32> %i.aqm, splat (i32 1)
  %i.aqo = add <4 x i32> %i.aqn, %i.aqk
  store <4 x i32> %i.aqo, ptr %i.aqj, align 4, !tbaa !46
  br label %.split364.us.i.i

.preheader353.split.i.i:                          ; preds = %.preheader353.i.i
  %i.aqp = icmp eq i32 %.9372.i.i, 0
  br i1 %i.aqp, label %.preheader353.split.split.us.preheader.i.i, label %.preheader353.split.split.i.i

.preheader353.split.split.us.preheader.i.i:       ; preds = %.preheader353.split.i.i
  %.in315.v.v.us.i.i = select i1 %.not314.i.i, i32 4, i32 %i.qy
  %.in315.v.us.i.i = zext i32 %.in315.v.v.us.i.i to i64
  %.in315.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.i.i
  %i.aqq = load i32, ptr %.in315.us.i.i, align 4, !tbaa !46
  %.in315.v.v.us.1.i.i = select i1 %.not314.i.i, i32 5, i32 %6
  %.in315.v.us.1.i.i = zext i32 %.in315.v.v.us.1.i.i to i64
  %.in315.us.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.1.i.i
  %i.aqr = load i32, ptr %.in315.us.1.i.i, align 4, !tbaa !46
  %i.aqs = load <2 x i32>, ptr %i.hg, align 4, !tbaa !46
  %i.aqt = load <2 x i32>, ptr %i.hs, align 4, !tbaa !46
  %i.aqu = insertelement <2 x i32> poison, i32 %i.aqq, i64 0
  %i.aqv = insertelement <2 x i32> %i.aqu, i32 %i.aqr, i64 1
  %i.aqw = add <2 x i32> %i.aqt, %i.aqv
  %i.aqx = ashr <2 x i32> %i.aqw, splat (i32 1)
  %i.aqy = add <2 x i32> %i.aqx, %i.aqs
  store <2 x i32> %i.aqy, ptr %i.hg, align 4, !tbaa !46
  %i.aqz = load i32, ptr %i.hn, align 4, !tbaa !46
  %.in315.v.v.us.2.i.i = select i1 %.not314.i.i, i32 6, i32 %7
  %.in315.v.us.2.i.i = zext i32 %.in315.v.v.us.2.i.i to i64
  %.in315.us.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.2.i.i
  %i.ara = load i32, ptr %.in315.us.2.i.i, align 4, !tbaa !46
  %i.arb = load i32, ptr %i.hu, align 4, !tbaa !46
  %i.arc = add i32 %i.arb, %i.ara
  %i.ard = ashr i32 %i.arc, 1
  %i.are = add i32 %i.ard, %i.aqz
  store i32 %i.are, ptr %i.hn, align 4, !tbaa !46
  %i.arf = load i32, ptr %i.ho, align 4, !tbaa !46
  %.in315.v.v.us.3.i.i = select i1 %.not314.i.i, i32 7, i32 %8
  %.in315.v.us.3.i.i = zext i32 %.in315.v.v.us.3.i.i to i64
  %.in315.us.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.3.i.i
  %i.arg = load i32, ptr %.in315.us.3.i.i, align 4, !tbaa !46
  %i.arh = load i32, ptr %i.hv, align 4, !tbaa !46
  %i.ari = add i32 %i.arh, %i.arg
  %i.arj = ashr i32 %i.ari, 1
  %i.ark = add i32 %i.arj, %i.arf
  store i32 %i.ark, ptr %i.ho, align 4, !tbaa !46
  br label %.split364.us.i.i

.preheader353.split.split.i.i:                    ; preds = %.preheader353.split.i.i
  br i1 %.not316.not.i.i, label %.preheader353.split.split.split.us.preheader.i.i, label %.preheader353.split.split.split.preheader.i.i

.preheader353.split.split.split.preheader.i.i:    ; preds = %.preheader353.split.split.i.i
  %i.arl = zext i32 %i.aqh to i64
  %i.arm = zext i32 %i.aqf to i64
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.arm ; 4 uses
  %i.aro = or disjoint i32 %i.aqf, 4
  %.in315.v.v.i.i = select i1 %.not314.i.i, i32 %i.aro, i32 %i.qy
  %.in315.v.i.i = zext i32 %.in315.v.v.i.i to i64
  %.in315.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.i.i
  %i.arp = load i32, ptr %.in315.i.i, align 4, !tbaa !46
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.arl ; 3 uses
  %i.arr = or disjoint i32 %i.aqf, 5
  %.in315.v.v.1.i.i = select i1 %.not314.i.i, i32 %i.arr, i32 %6
  %.in315.v.1.i.i = zext i32 %.in315.v.v.1.i.i to i64
  %.in315.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.1.i.i
  %i.ars = load i32, ptr %.in315.1.i.i, align 4, !tbaa !46
  %i.art = load <2 x i32>, ptr %i.arn, align 4, !tbaa !46
  %i.aru = load <2 x i32>, ptr %i.arq, align 4, !tbaa !46
  %i.arv = insertelement <2 x i32> poison, i32 %i.arp, i64 0
  %i.arw = insertelement <2 x i32> %i.arv, i32 %i.ars, i64 1
  %i.arx = add <2 x i32> %i.aru, %i.arw
  %i.ary = ashr <2 x i32> %i.arx, splat (i32 1)
  %i.arz = add <2 x i32> %i.ary, %i.art
  store <2 x i32> %i.arz, ptr %i.arn, align 4, !tbaa !46
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arn, i64 8 ; 2 uses
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !46
  %i.asc = or disjoint i32 %i.aqf, 6
  %.in315.v.v.2.i.i = select i1 %.not314.i.i, i32 %i.asc, i32 %7
  %.in315.v.2.i.i = zext i32 %.in315.v.v.2.i.i to i64
  %.in315.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.2.i.i
  %i.asd = load i32, ptr %.in315.2.i.i, align 4, !tbaa !46
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !46
  %i.asg = add i32 %i.asf, %i.asd
  %i.ash = ashr i32 %i.asg, 1
  %i.asi = add i32 %i.ash, %i.asb
  store i32 %i.asi, ptr %i.asa, align 4, !tbaa !46
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arn, i64 12 ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !46
  %i.asl = or disjoint i32 %i.aqf, 7
  %.in315.v.v.3.i.i = select i1 %.not314.i.i, i32 %i.asl, i32 %8
  %.in315.v.3.i.i = zext i32 %.in315.v.v.3.i.i to i64
  %.in315.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.3.i.i
  %i.asm = load i32, ptr %.in315.3.i.i, align 4, !tbaa !46
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arq, i64 12
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !46
  %i.asp = add i32 %i.aso, %i.asm
  %i.asq = ashr i32 %i.asp, 1
  %i.asr = add i32 %i.asq, %i.ask
  store i32 %i.asr, ptr %i.asj, align 4, !tbaa !46
  br label %.split364.us.i.i

.preheader353.split.split.split.us.preheader.i.i: ; preds = %.preheader353.split.split.i.i
  %i.ass = zext i32 %i.aqf to i64
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ass ; 4 uses
  %i.asu = load <2 x i32>, ptr %i.ast, align 4, !tbaa !46
  %i.asv = load <2 x i32>, ptr %.in315.us370.i.i, align 4, !tbaa !46
  %i.asw = shl <2 x i32> %i.asv, splat (i32 1)
  %i.asx = ashr exact <2 x i32> %i.asw, splat (i32 1)
  %i.asy = add <2 x i32> %i.asx, %i.asu
  store <2 x i32> %i.asy, ptr %i.ast, align 4, !tbaa !46
  %i.asz = getelementptr inbounds nuw i8, ptr %i.ast, i64 8 ; 2 uses
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !46
  %i.atb = load i32, ptr %.in315.us370.2.i.i, align 4, !tbaa !46
  %i.atc = load i32, ptr %i.ra, align 4, !tbaa !46
  %i.atd = add i32 %i.atc, %i.atb
  %i.ate = ashr i32 %i.atd, 1
  %i.atf = add i32 %i.ate, %i.ata
  store i32 %i.atf, ptr %i.asz, align 4, !tbaa !46
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ast, i64 12 ; 2 uses
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !46
  %i.ati = load i32, ptr %.in315.us370.3.i.i, align 4, !tbaa !46
  %i.atj = load i32, ptr %i.rb, align 4, !tbaa !46
  %i.atk = add i32 %i.atj, %i.ati
  %i.atl = ashr i32 %i.atk, 1
  %i.atm = add i32 %i.atl, %i.ath
  store i32 %i.atm, ptr %i.atg, align 4, !tbaa !46
  br label %.split364.us.i.i

.split364.us.i.i:                                 ; preds = %.preheader353.split.split.split.us.preheader.i.i, %.preheader353.split.split.split.preheader.i.i, %.preheader353.split.split.us.preheader.i.i, %.thread333.us.preheader.i.i
  %i.atn = add nsw i32 %.9372.i.i, 1              ; 2 uses
  %exitcond433.not.i.i = icmp eq i32 %i.atn, %i.lg
  br i1 %exitcond433.not.i.i, label %opj_dwt_decode_partial_1_parallel.exit.i, label %.preheader353.i.i, !llvm.loop !189

opj_dwt_decode_partial_1_parallel.exit.i:         ; preds = %.split364.us.i.i, %.split398.us.i.i, %.preheader354.i.i, %.preheader351.preheader.i.i, %.preheader342.i.i, %.loopexit347.i.i, %bb.bk
  %i.ato = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.fe, i32 noundef %.0177.i, i32 noundef %i.lv, i32 noundef %i.aao, i32 noundef %i.ma, ptr noundef nonnull %i.sl, i32 noundef 1, i32 noundef 4, i32 noundef 1) #15
  %.not188.not.i = icmp eq i32 %i.ato, 0
  br i1 %.not188.not.i, label %.thread288.i, label %bb.bi, !llvm.loop !190

.thread288.i:                                     ; preds = %opj_dwt_decode_partial_1_parallel.exit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bs:                                            ; preds = %bb.bi
  %i.atp = add nuw i32 %.0184296.i, 1             ; 2 uses
  %exitcond309.not.i = icmp eq i32 %i.atp, %2
  br i1 %exitcond309.not.i, label %._crit_edge.i18, label %bb.x, !llvm.loop !191

._crit_edge.i18:                                  ; preds = %bb.bs, %.preheader294.i
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  %i.atq = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.atr = load i32, ptr %i.atq, align 8, !tbaa !67 ; 2 uses
  %i.ats = load i32, ptr %i.ed, align 8, !tbaa !32 ; 2 uses
  %i.att = sub i32 %i.atr, %i.ats
  %i.atu = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !68
  %i.atw = load i32, ptr %i.ez, align 4, !tbaa !34 ; 2 uses
  %i.atx = sub i32 %i.atv, %i.atw
  %i.aty = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  %i.atz = load i32, ptr %i.aty, align 8, !tbaa !69 ; 2 uses
  %i.aua = sub i32 %i.atz, %i.ats
  %i.aub = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !70
  %i.aud = sub i32 %i.auc, %i.atw
  %i.aue = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !71
  %i.aug = sub i32 %i.atz, %i.atr
  %i.auh = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.att, i32 noundef %i.atx, i32 noundef %i.aua, i32 noundef %i.aud, ptr noundef %i.auf, i32 noundef 1, i32 noundef %i.aug, i32 noundef 1) #15 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

opj_dwt_decode_partial_tile.exit:                 ; preds = %._crit_edge.i18, %.thread288.i, %bb.bg, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %opj_dwt_decode_tile.exit
  %.0 = phi i32 [ %.10.i, %opj_dwt_decode_tile.exit ], [ 1, %._crit_edge.i18 ], [ 1, %bb.r ], [ 1, %bb.v ], [ 0, %bb.w ], [ 0, %bb.t ], [ 1, %bb.s ], [ 0, %.thread288.i ], [ 0, %bb.bg ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @opj_dwt_getnorm(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = icmp ugt i32 %0, 9
  %or.cond = and i1 %i.b, %i.a
  %i.c = tail call i32 @llvm.umin.i32(i32 %0, i32 8)
  %spec.store.select = select i1 %i.a, i32 %0, i32 %i.c
  %i.d = zext i32 %spec.store.select to i64
  %.0 = select i1 %or.cond, i64 9, i64 %i.d
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr @opj_dwt_norms, i64 %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0
  %i.h = load double, ptr %i.g, align 8, !tbaa !78
  ret double %i.h
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @opj_dwt_encode_real(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call fastcc i32 @opj_dwt_encode_procedure(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_v_real, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_h_one_row_real)
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_v_real(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 8 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 3 uses
  %i.e = lshr i32 %i.d, 1                         ; 16 uses
  %i.f = sub i32 %2, %i.e                         ; 12 uses
  %i.g = icmp eq i32 %2, 1
  br i1 %i.g, label %opj_dwt_deinterleave_v_cols.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %5, 8                        ; 3 uses
  %.not41.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %i.h, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.lr.ph.i

.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.j = shl nuw nsw i32 %i.i, 2
  %narrow.i = add nuw nsw i32 %i.j, 4
  %i.k = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.l = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %5, 20
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp ugt i64 %i.l, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1            ; 2 uses
  %i.o = trunc i64 %ind.escape to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter177 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.p = icmp ult i32 %2, 4
  br i1 %i.p, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 4 uses
  %i.q = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.r = shl i32 %i.q, 3                          ; 8 uses
  %i.s = mul i32 %4, %i.q                         ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.t = trunc i64 %indvars.iv50.i to i32
  %i.u = mul i32 %4, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add i64 %i.w, %i.a
  %i.y = shl i64 %indvars.iv50.i, 5
  %i.z = and i64 %i.y, 17179869152
  %i.aa = add i64 %i.z, %i.b
  %i.ab = xor i32 %i.r, -1
  %i.ac = icmp ult i32 %i.ab, %i.m
  %i.ad = xor i32 %i.s, -1
  %i.ae = icmp ult i32 %i.ad, %i.m
  %i.af = or i1 %i.ae, %i.n
  %i.ag = or i1 %i.ac, %i.af
  %i.ah = sub i64 %i.x, %i.aa
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = select i1 %i.ag, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.ai = trunc i64 %index to i32                 ; 2 uses
  %i.aj = add i32 %i.s, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
end_hunk_2
begin_hunk_3_@opj_dwt_decode_real:bb.a
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33, !noalias !300
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34, !noalias !300
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52, !alias.scope !300
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [192 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !31, !noalias !300
  %i.w = load i32, ptr %i.t, align 8, !tbaa !32, !noalias !300
  %i.x = sub i32 %i.v, %i.w                       ; 7 uses
  %i.y = tail call i32 @opj_thread_pool_get_thread_count(ptr noundef %i.d) #15, !noalias !300 ; 3 uses
  %i.z = icmp eq i32 %2, 1
  br i1 %i.z, label %opj_dwt_decode_tile_97.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %2, -1                          ; 4 uses
  %xtraiter = and i32 %i.aa, 1
  %i.ab = icmp eq i32 %2, 2
  br i1 %i.ab, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i32 %i.aa, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.017.i.i = phi i32 [ 0, %.new ], [ %.2.i.i.1, %.lr.ph.i.i ]
  %.01116.i.i = phi ptr [ %i.f, %.new ], [ %i.am, %.lr.ph.i.i ] ; 8 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 192
  %i.ad = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 200
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !31, !alias.scope !301, !noalias !300
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !32, !alias.scope !301, !noalias !300
  %i.ag = sub nsw i32 %i.ae, %i.af
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %.017.i.i, i32 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 204
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33, !alias.scope !301, !noalias !300
  %i.aj = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 196
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34, !alias.scope !301, !noalias !300
  %i.al = sub nsw i32 %i.ai, %i.ak
  %.2.i.i = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i, i32 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 384 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 392
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !31, !alias.scope !301, !noalias !300
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !32, !alias.scope !301, !noalias !300
  %i.aq = sub nsw i32 %i.ao, %i.ap
  %spec.select.i.i.1 = tail call i32 @llvm.umax.i32(i32 %.2.i.i, i32 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 396
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33, !alias.scope !301, !noalias !300
  %i.at = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 388
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34, !alias.scope !301, !noalias !300
  %i.av = sub nsw i32 %i.as, %i.au
  %.2.i.i.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i.1, i32 %i.av) ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %opj_dwt_max_resolution.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !0

opj_dwt_max_resolution.exit.i.unr-lcssa:          ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %opj_dwt_max_resolution.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %opj_dwt_max_resolution.exit.i.unr-lcssa, %bb.c
  %.017.i.i.epil.init = phi i32 [ 0, %bb.c ], [ %.2.i.i.1, %opj_dwt_max_resolution.exit.i.unr-lcssa ]
  %.01116.i.i.epil.init = phi ptr [ %i.f, %bb.c ], [ %i.am, %opj_dwt_max_resolution.exit.i.unr-lcssa ] ; 4 uses
  %lcmp.mod198 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01116.i.i.epil.init, i64 192
  %i.ax = getelementptr inbounds nuw i8, ptr %.01116.i.i.epil.init, i64 200
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !31, !alias.scope !301, !noalias !300
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !32, !alias.scope !301, !noalias !300
  %i.ba = sub nsw i32 %i.ay, %i.az
  %spec.select.i.i.epil = tail call i32 @llvm.umax.i32(i32 %.017.i.i.epil.init, i32 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %.01116.i.i.epil.init, i64 204
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !33, !alias.scope !301, !noalias !300
  %i.bd = getelementptr inbounds nuw i8, ptr %.01116.i.i.epil.init, i64 196
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !34, !alias.scope !301, !noalias !300
  %i.bf = sub nsw i32 %i.bc, %i.be
  %.2.i.i.epil = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i.epil, i32 %i.bf)
  br label %opj_dwt_max_resolution.exit.i

opj_dwt_max_resolution.exit.i:                    ; preds = %opj_dwt_max_resolution.exit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.2.i.i.lcssa = phi i32 [ %.2.i.i.1, %opj_dwt_max_resolution.exit.i.unr-lcssa ], [ %.2.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.bg = zext i32 %.2.i.i.lcssa to i64
  %i.bh = shl nuw nsw i64 %i.bg, 5                ; 3 uses
  %i.bi = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !300 ; 31 uses
  store ptr %i.bi, ptr %5, align 8, !tbaa !81, !noalias !300
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %opj_dwt_decode_tile_97.exit, label %.lr.ph348.i

.lr.ph348.i:                                      ; preds = %opj_dwt_max_resolution.exit.i
  store ptr %i.bi, ptr %6, align 8, !tbaa !81, !noalias !300
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27, !alias.scope !300 ; 15 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bt = icmp slt i32 %i.y, 2                    ; 2 uses
  %i.bu = zext i32 %i.x to i64                    ; 34 uses
  %.idx277.i = shl nuw nsw i64 %i.bu, 3           ; 2 uses
  %.idx278.i = mul nuw nsw i64 %i.bu, 12          ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.bu, 4              ; 2 uses
  %.idx274.i = mul nuw nsw i64 %i.bu, 20          ; 2 uses
  %.idx275.i = mul nuw nsw i64 %i.bu, 24          ; 2 uses
  %.idx276.i = mul nuw nsw i64 %i.bu, 28          ; 2 uses
  %i.bv = shl i32 %i.x, 3
  %i.bw = zext i32 %i.bv to i64                   ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cd = lshr i32 %i.y, 1
  %i.ce = tail call i32 @llvm.umax.i32(i32 %i.cd, i32 2)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.cg = shl nuw nsw i64 %i.bw, 2
  %scevgep93 = getelementptr i8, ptr %i.bi, i64 16 ; 4 uses
  %i.ch = shl nuw nsw i64 %i.bw, 2
  %i.ci = shl nuw nsw i64 %i.bu, 2                ; 2 uses
  %scevgep136 = getelementptr i8, ptr %i.bi, i64 -16
  %i.cj = getelementptr i8, ptr %i.bk, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.bk, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.bk, i64 %.idx277.i
  %i.cm = getelementptr i8, ptr %i.bk, i64 %.idx278.i
  %i.cn = getelementptr i8, ptr %i.bk, i64 %.idx.i
  %i.co = getelementptr i8, ptr %i.bk, i64 %.idx274.i
  %i.cp = getelementptr i8, ptr %i.bk, i64 %.idx275.i
  %i.cq = getelementptr i8, ptr %i.bk, i64 %.idx276.i
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph348.i
  %i.cr = phi i32 [ %i.aa, %.lr.ph348.i ], [ %i.qo, %.loopexit.i ]
  %.0237345.i = phi i32 [ %i.o, %.lr.ph348.i ], [ %i.db, %.loopexit.i ] ; 15 uses
  %.0238344.i = phi i32 [ %i.j, %.lr.ph348.i ], [ %i.cw, %.loopexit.i ] ; 5 uses
  %.0239343.i = phi ptr [ %i.f, %.lr.ph348.i ], [ %i.cs, %.loopexit.i ] ; 4 uses
  store i32 %.0238344.i, ptr %i.bl, align 4, !tbaa !82, !noalias !300
  store i32 %.0237345.i, ptr %i.bm, align 4, !tbaa !82, !noalias !300
  %i.cs = getelementptr inbounds nuw i8, ptr %.0239343.i, i64 192 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0239343.i, i64 200
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !31, !noalias !300
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !32, !noalias !300 ; 2 uses
  %i.cw = sub i32 %i.cu, %i.cv                    ; 16 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0239343.i, i64 204
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !33, !noalias !300
  %i.cz = getelementptr inbounds nuw i8, ptr %.0239343.i, i64 196 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !34, !noalias !300
  %i.db = sub i32 %i.cy, %i.da                    ; 21 uses
  %i.dc = sub i32 %i.cw, %.0238344.i              ; 4 uses
  store i32 %i.dc, ptr %i.bn, align 8, !tbaa !83, !noalias !300
  %i.dd = srem i32 %i.cv, 2                       ; 2 uses
  store i32 %i.dd, ptr %i.bo, align 8, !tbaa !84, !noalias !300
  store i32 0, ptr %i.bp, align 4, !tbaa !85, !noalias !300
  store i32 %.0238344.i, ptr %i.bq, align 8, !tbaa !86, !noalias !300
  store i32 0, ptr %i.br, align 4, !tbaa !87, !noalias !300
  store i32 %i.dc, ptr %i.bs, align 8, !tbaa !88, !noalias !300
  %i.de = icmp ult i32 %i.db, 16
  %or.cond.i = select i1 %i.bt, i1 true, i1 %i.de
  br i1 %or.cond.i, label %.preheader310.i, label %bb.f

.preheader310.i:                                  ; preds = %bb.d
  %i.df = icmp ugt i32 %i.db, 7
  br i1 %i.df, label %.lr.ph325.i, label %.loopexit311.i

.lr.ph325.i:                                      ; preds = %.preheader310.i
  %.not351.i = icmp eq i32 %i.cw, 0
  %wide.trip.count.i = zext i32 %i.cw to i64      ; 9 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count.i, 2   ; 4 uses
  %i.dh = shl nuw nsw i64 %wide.trip.count.i, 5   ; 2 uses
  %scevgep94 = getelementptr i8, ptr %i.bi, i64 %i.dh ; 4 uses
  %i.di = shl nuw nsw i64 %wide.trip.count.i, 2   ; 4 uses
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %i.dh ; 4 uses
  %i.dj = getelementptr i8, ptr %i.bk, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.ck, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.cl, i64 %i.di
  %i.dm = getelementptr i8, ptr %i.cm, i64 %i.di
  %i.dn = getelementptr i8, ptr %i.cn, i64 %i.dg
  %i.do = getelementptr i8, ptr %i.co, i64 %i.dg
  %i.dp = getelementptr i8, ptr %i.cp, i64 %i.dg
  %i.dq = getelementptr i8, ptr %i.cq, i64 %i.dg
  %min.iters.check178 = icmp ult i32 %i.cw, 21
  %i.dr = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  %i.dt = select i1 %i.ds, i64 4, i64 %i.dr
  %n.vec180 = sub nsw i64 %wide.trip.count.i, %i.dt ; 2 uses
  %min.iters.check = icmp ult i32 %i.cw, 21
  %i.du = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = select i1 %i.dv, i64 4, i64 %i.du
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.dw  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph325.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.lr.ph325.i ] ; 3 uses
  %.0224324.i = phi i32 [ %i.jo, %._crit_edge.i ], [ 0, %.lr.ph325.i ] ; 2 uses
  %.0226323.i = phi ptr [ %i.jn, %._crit_edge.i ], [ %i.bk, %.lr.ph325.i ] ; 14 uses
  %i.dx = mul i64 %i.ch, %indvar                  ; 5 uses
  %scevgep131 = getelementptr i8, ptr %i.dj, i64 %i.dx ; 4 uses
  %scevgep132 = getelementptr i8, ptr %i.cj, i64 %i.dx ; 4 uses
  %scevgep133 = getelementptr i8, ptr %i.dk, i64 %i.dx ; 4 uses
  %scevgep134 = getelementptr i8, ptr %i.dl, i64 %i.dx ; 4 uses
  %scevgep135 = getelementptr i8, ptr %i.dm, i64 %i.dx ; 4 uses
  %i.dy = mul i64 %i.cg, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.dn, i64 %i.dy ; 4 uses
  %scevgep90 = getelementptr i8, ptr %i.do, i64 %i.dy ; 4 uses
  %scevgep91 = getelementptr i8, ptr %i.dp, i64 %i.dy ; 4 uses
  %scevgep92 = getelementptr i8, ptr %i.dq, i64 %i.dy ; 4 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.0226323.i, i32 noundef %i.x, i32 noundef 8), !noalias !300
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !300
  br i1 %.not351.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.dz = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx277.i ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx278.i ; 6 uses
  br i1 %min.iters.check178, label %scalar.ph177.preheader, label %vector.memcheck130

scalar.ph177.preheader:                           ; preds = %vector.body181, %vector.memcheck130, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck130 ], [ 0, %.lr.ph.i ], [ %n.vec180, %vector.body181 ]
  br label %scalar.ph177

vector.memcheck130:                               ; preds = %.lr.ph.i
  %bound0138 = icmp ult ptr %.0226323.i, %scevgep133
  %bound1139 = icmp ult ptr %scevgep132, %scevgep131
  %found.conflict140 = and i1 %bound0138, %bound1139
  %bound0141 = icmp ult ptr %.0226323.i, %scevgep134
  %bound1142 = icmp ult ptr %i.dz, %scevgep131
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %found.conflict140, %found.conflict143
  %bound0145 = icmp ult ptr %.0226323.i, %scevgep135
  %bound1146 = icmp ult ptr %i.ea, %scevgep131
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  %bound0149 = icmp ult ptr %.0226323.i, %scevgep137
  %bound1150 = icmp ult ptr %i.bi, %scevgep131
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx148, %found.conflict151
  %bound0153 = icmp ult ptr %scevgep132, %scevgep134
  %bound1154 = icmp ult ptr %i.dz, %scevgep133
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  %bound0157 = icmp ult ptr %scevgep132, %scevgep135
  %bound1158 = icmp ult ptr %i.ea, %scevgep133
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %scevgep132, %scevgep137
  %bound1162 = icmp ult ptr %i.bi, %scevgep133
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %i.dz, %scevgep135
  %bound1166 = icmp ult ptr %i.ea, %scevgep134
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %i.dz, %scevgep137
  %bound1170 = icmp ult ptr %i.bi, %scevgep134
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %i.ea, %scevgep137
  %bound1174 = icmp ult ptr %i.bi, %scevgep135
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  br i1 %conflict.rdx176, label %scalar.ph177.preheader, label %vector.body181

vector.body181:                                   ; preds = %vector.memcheck130, %vector.body181
  %index182 = phi i64 [ %index.next183, %vector.body181 ], [ 0, %vector.memcheck130 ] ; 8 uses
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index182 ; 4 uses
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index182 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index182 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index182 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.ei = load float, ptr %i.eb, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.ej = load float, ptr %i.ed, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.ek = load float, ptr %i.ef, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.el = load float, ptr %i.eh, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.em = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.ej, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.ek, i64 2
  %i.ep = insertelement <4 x float> %i.eo, float %i.el, i64 3
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0226323.i, i64 %index182 ; 2 uses
  store <4 x float> %i.ep, ptr %i.eq, align 4, !tbaa !79, !alias.scope !303, !noalias !304
  %i.er = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 36
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 68
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 100
  %i.ev = load float, ptr %i.er, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.ew = load float, ptr %i.es, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.ex = load float, ptr %i.et, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.ey = load float, ptr %i.eu, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.ez = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 1
  %i.fb = insertelement <4 x float> %i.fa, float %i.ex, i64 2
  %i.fc = insertelement <4 x float> %i.fb, float %i.ey, i64 3
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
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index182
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
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index182
  store <4 x float> %i.gc, ptr %i.gd, align 4, !tbaa !79, !alias.scope !309, !noalias !310
  %index.next183 = add nuw i64 %index182, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next183, %n.vec180
  br i1 %i.ge, label %scalar.ph177.preheader, label %vector.body181, !llvm.loop !267

.lr.ph322.i:                                      ; preds = %scalar.ph177
  %i.gf = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx.i ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx274.i ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx275.i ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx276.i ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph322.i
  %indvars.iv367.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph322.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph322.i
  %bound0 = icmp ult ptr %i.gf, %scevgep90
  %bound1 = icmp ult ptr %i.gg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound095 = icmp ult ptr %i.gf, %scevgep91
  %bound196 = icmp ult ptr %i.gh, %scevgep
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx = or i1 %found.conflict, %found.conflict97
  %bound098 = icmp ult ptr %i.gf, %scevgep92
  %bound199 = icmp ult ptr %i.gi, %scevgep
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %conflict.rdx, %found.conflict100
  %bound0102 = icmp ult ptr %i.gf, %scevgep94
  %bound1103 = icmp ult ptr %scevgep93, %scevgep
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx101, %found.conflict104
  %bound0106 = icmp ult ptr %i.gg, %scevgep91
  %bound1107 = icmp ult ptr %i.gh, %scevgep90
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %conflict.rdx105, %found.conflict108
  %bound0110 = icmp ult ptr %i.gg, %scevgep92
  %bound1111 = icmp ult ptr %i.gi, %scevgep90
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx113 = or i1 %conflict.rdx109, %found.conflict112
  %bound0114 = icmp ult ptr %i.gg, %scevgep94
  %bound1115 = icmp ult ptr %scevgep93, %scevgep90
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx117 = or i1 %conflict.rdx113, %found.conflict116
  %bound0118 = icmp ult ptr %i.gh, %scevgep92
  %bound1119 = icmp ult ptr %i.gi, %scevgep91
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx117, %found.conflict120
  %bound0122 = icmp ult ptr %i.gh, %scevgep94
  %bound1123 = icmp ult ptr %scevgep93, %scevgep91
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx121, %found.conflict124
  %bound0126 = icmp ult ptr %i.gi, %scevgep94
  %bound1127 = icmp ult ptr %scevgep93, %scevgep92
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  br i1 %conflict.rdx129, label %scalar.ph.preheader, label %vector.body

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

scalar.ph177:                                     ; preds = %scalar.ph177.preheader, %scalar.ph177
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph177 ], [ %indvars.iv.i.ph, %scalar.ph177.preheader ] ; 5 uses
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
  br i1 %exitcond366.not.i, label %.lr.ph322.i, label %scalar.ph177, !llvm.loop !275

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
  %i.jo = add i32 %.0224324.i, 8                  ; 2 uses
  %7 = add i32 %.0224324.i, 15
  %i.jp = icmp ult i32 %7, %i.db
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jp, label %bb.e, label %.loopexit311.i, !llvm.loop !277

bb.f:                                             ; preds = %bb.d
  %i.jq = lshr i32 %i.db, 3
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.jq, i32 %i.y) ; 2 uses
  %i.jr = udiv i32 %i.db, %spec.select.i
  %i.js = and i32 %i.jr, -8                       ; 2 uses
  %i.jt = and i32 %i.db, -8                       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.1225319.i = phi i32 [ 0, %bb.f ], [ %i.kg, %bb.k ] ; 2 uses
  %.1227318.i = phi ptr [ %i.bk, %bb.f ], [ %i.kn, %bb.k ] ; 2 uses
  %i.ju = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !300 ; 15 uses
  %.not267.i = icmp eq ptr %i.ju, null
  br i1 %.not267.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  br label %.critedge.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.jv = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !300 ; 2 uses
  store ptr %i.jv, ptr %i.ju, align 8, !tbaa !91, !noalias !300
  %.not268.i = icmp eq ptr %i.jv, null
  br i1 %.not268.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  tail call void @opj_free(ptr noundef nonnull %i.ju) #15, !noalias !300
  br label %.critedge.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i32 %i.dc, ptr %i.jw, align 8, !tbaa !320, !noalias !300
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  store i32 %.0238344.i, ptr %i.jx, align 4, !tbaa !321, !noalias !300
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i32 %i.dd, ptr %i.jy, align 8, !tbaa !322, !noalias !300
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  store i32 0, ptr %i.jz, align 4, !tbaa !323, !noalias !300
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store i32 %.0238344.i, ptr %i.ka, align 8, !tbaa !324, !noalias !300
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 28
  store i32 0, ptr %i.kb, align 4, !tbaa !325, !noalias !300
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  store i32 %i.dc, ptr %i.kc, align 8, !tbaa !326, !noalias !300
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  store i32 %i.cw, ptr %i.kd, align 8, !tbaa !92, !noalias !300
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 44
  store i32 %i.x, ptr %i.ke, align 4, !tbaa !93, !noalias !300
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  store ptr %.1227318.i, ptr %i.kf, align 8, !tbaa !94, !noalias !300
  %i.kg = add nuw nsw i32 %.1225319.i, 1          ; 2 uses
  %.not410.i = icmp eq i32 %i.kg, %spec.select.i  ; 2 uses
  %i.kh = mul i32 %.1225319.i, %i.js
  %i.ki = sub i32 %i.jt, %i.kh
  %i.kj = select i1 %.not410.i, i32 %i.ki, i32 %i.js ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  store i32 %i.kj, ptr %i.kk, align 8, !tbaa !95, !noalias !300
  %i.kl = mul i32 %i.kj, %i.x
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.1227318.i, i64 %i.km ; 2 uses
  %i.ko = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_h_func, ptr noundef nonnull %i.ju) #15, !noalias !300 ; 0 uses
  br i1 %.not410.i, label %bb.l, label %bb.g, !llvm.loop !278

bb.l:                                             ; preds = %bb.k
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  br label %.loopexit311.i

.loopexit311.i:                                   ; preds = %._crit_edge.i, %bb.l, %.preheader310.i
  %.4230.i = phi ptr [ %i.kn, %bb.l ], [ %i.bk, %.preheader310.i ], [ %i.jn, %._crit_edge.i ] ; 2 uses
  %.3.i = phi i32 [ %i.jt, %bb.l ], [ 0, %.preheader310.i ], [ %i.jo, %._crit_edge.i ] ; 2 uses
  %i.kp = icmp ult i32 %.3.i, %i.db
  br i1 %i.kp, label %bb.m, label %.loopexit309.i

bb.m:                                             ; preds = %.loopexit311.i
  %i.kq = sub nuw i32 %i.db, %.3.i                ; 3 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.4230.i, i32 noundef %i.x, i32 noundef %i.kq), !noalias !300
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !300
  %.not353.i = icmp eq i32 %i.cw, 0
  br i1 %.not353.i, label %.loopexit309.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.m
  %wide.trip.count380.i = zext i32 %i.cw to i64
  %wide.trip.count375.i = zext i32 %i.kq to i64   ; 2 uses
  %xtraiter199 = and i64 %wide.trip.count375.i, 3 ; 3 uses
  %i.kr = add i32 %i.kq, -1
  %i.ks = icmp ult i32 %i.kr, 3
  %unroll_iter202 = and i64 %wide.trip.count375.i, 4294967292
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  %lcmp.mod201 = icmp ne i64 %xtraiter199, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge329.i, %.preheader.preheader.i
  %indvars.iv377.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next378.i, %._crit_edge329.i ] ; 3 uses
  %i.kt = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv377.i ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.4230.i, i64 %indvars.iv377.i ; 5 uses
  br i1 %i.ks, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv372.i = phi i64 [ %indvars.iv.next373.i.3, %.preheader.i.new ], [ 0, %.preheader.i ] ; 6 uses
  %niter203 = phi i64 [ %niter203.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv372.i
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !50, !noalias !300
  %i.kw = mul nuw i64 %indvars.iv372.i, %i.bu
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.kw
  store float %i.kv, ptr %gep.i, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i = or disjoint i64 %indvars.iv372.i, 1 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next373.i
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !50, !noalias !300
  %i.kz = mul nuw i64 %indvars.iv.next373.i, %i.bu
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.kz
  store float %i.ky, ptr %gep.i.1, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.1 = or disjoint i64 %indvars.iv372.i, 2 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next373.i.1
  %i.lb = load float, ptr %i.la, align 4, !tbaa !50, !noalias !300
  %i.lc = mul nuw i64 %indvars.iv.next373.i.1, %i.bu
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lc
  store float %i.lb, ptr %gep.i.2, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.2 = or disjoint i64 %indvars.iv372.i, 3 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next373.i.2
  %i.le = load float, ptr %i.ld, align 4, !tbaa !50, !noalias !300
  %i.lf = mul nuw i64 %indvars.iv.next373.i.2, %i.bu
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lf
  store float %i.le, ptr %gep.i.3, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.3 = add nuw nsw i64 %indvars.iv372.i, 4 ; 2 uses
  %niter203.next.3 = add i64 %niter203, 4         ; 2 uses
  %niter203.ncmp.3 = icmp eq i64 %niter203.next.3, %unroll_iter202
  br i1 %niter203.ncmp.3, label %._crit_edge329.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !279

._crit_edge329.i.unr-lcssa:                       ; preds = %.preheader.i.new
  br i1 %lcmp.mod200.not, label %._crit_edge329.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge329.i.unr-lcssa, %.preheader.i
  %indvars.iv372.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next373.i.3, %._crit_edge329.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod201)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv372.i.epil = phi i64 [ %indvars.iv372.i.epil.init, %.epil.preheader ], [ %indvars.iv.next373.i.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv372.i.epil
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !50, !noalias !300
  %i.li = mul nuw i64 %indvars.iv372.i.epil, %i.bu
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.li
  store float %i.lh, ptr %gep.i.epil, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.epil = add nuw nsw i64 %indvars.iv372.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter199
  br i1 %epil.iter.cmp.not, label %._crit_edge329.i, label %bb.n, !llvm.loop !280

._crit_edge329.i:                                 ; preds = %bb.n, %._crit_edge329.i.unr-lcssa
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %.loopexit309.i, label %.preheader.i, !llvm.loop !281

.loopexit309.i:                                   ; preds = %._crit_edge329.i, %bb.m, %.loopexit311.i
  %i.lj = sub i32 %i.db, %.0237345.i              ; 10 uses
  store i32 %i.lj, ptr %i.bx, align 8, !tbaa !83, !noalias !300
  %i.lk = load i32, ptr %i.cz, align 4, !tbaa !34, !noalias !300
  %i.ll = srem i32 %i.lk, 2                       ; 4 uses
  store i32 %i.ll, ptr %i.by, align 8, !tbaa !84, !noalias !300
  store i32 0, ptr %i.bz, align 4, !tbaa !85, !noalias !300
  store i32 %.0237345.i, ptr %i.ca, align 8, !tbaa !86, !noalias !300
  store i32 0, ptr %i.cb, align 4, !tbaa !87, !noalias !300
  store i32 %i.lj, ptr %i.cc, align 8, !tbaa !88, !noalias !300
  %i.lm = icmp ult i32 %i.cw, 16
  %or.cond7.i = select i1 %i.bt, i1 true, i1 %i.lm
  br i1 %or.cond7.i, label %.preheader307.i, label %bb.p

.preheader307.i:                                  ; preds = %.loopexit309.i
  %i.ln = icmp ugt i32 %i.cw, 7
  br i1 %i.ln, label %.lr.ph338.i, label %.loopexit308.i

.lr.ph338.i:                                      ; preds = %.preheader307.i
  %i.lo = sext i32 %i.ll to i64                   ; 2 uses
  %i.lp = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.lo ; 3 uses
  %wide.trip.count.i.i = zext i32 %.0237345.i to i64 ; 3 uses
  %i.lq = mul nuw i64 %wide.trip.count.i.i, %i.bu
  %i.lr = sub nsw i64 0, %i.lo
  %i.ls = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.lr ; 3 uses
  %.not305.i = icmp eq i32 %i.db, %.0237345.i
  %wide.trip.count35.i.i = zext i32 %i.lj to i64  ; 2 uses
  %wide.trip.count386.i = zext i32 %i.db to i64   ; 2 uses
  %xtraiter204 = and i64 %wide.trip.count.i.i, 1
  %i.lt = icmp eq i32 %.0237345.i, 1              ; 0 uses
  %unroll_iter208 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod206.not = icmp eq i64 %xtraiter204, 0
  %lcmp.mod207 = trunc i32 %.0237345.i to i1
  %xtraiter210 = and i64 %wide.trip.count35.i.i, 1
  %i.lu = icmp eq i32 %i.lj, 1
  %unroll_iter214 = and i64 %wide.trip.count35.i.i, 4294967294
  %lcmp.mod212.not = icmp eq i64 %xtraiter210, 0
  %lcmp.mod213 = trunc i32 %i.lj to i1
  %xtraiter216 = and i64 %wide.trip.count386.i, 1
  %i.lv = icmp eq i32 %i.db, 1                    ; 0 uses
  %unroll_iter220 = and i64 %wide.trip.count386.i, 4294967294
end_hunk_3
begin_hunk_4_@opj_dwt_decode_real:bb.a
  %i.us = zext i32 %i.ue to i64
  %wide.trip.count.i14 = zext i32 %2 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge269.i, %.lr.ph276.i
  %indvars.iv.i15 = phi i64 [ 1, %.lr.ph276.i ], [ %indvars.iv.next.i17, %._crit_edge269.i ] ; 3 uses
  %.0162273.i = phi i32 [ %i.rc, %.lr.ph276.i ], [ %i.vc, %._crit_edge269.i ] ; 9 uses
  %.0163272.i = phi i32 [ %i.qx, %.lr.ph276.i ], [ %i.ux, %._crit_edge269.i ] ; 5 uses
  %.0164271.i = phi ptr [ %i.qq, %.lr.ph276.i ], [ %i.ut, %._crit_edge269.i ] ; 8 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 192 ; 2 uses
  store i32 %.0163272.i, ptr %i.tx, align 4, !tbaa !82, !noalias !329
  store i32 %.0162273.i, ptr %i.ty, align 4, !tbaa !82, !noalias !329
  %i.uu = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 200
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !31, !noalias !329
  %i.uw = load i32, ptr %i.ut, align 8, !tbaa !32, !noalias !329 ; 2 uses
  %i.ux = sub nsw i32 %i.uv, %i.uw                ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 204
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !33, !noalias !329
  %i.va = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 196
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !34, !noalias !329 ; 2 uses
  %i.vc = sub nsw i32 %i.uz, %i.vb                ; 8 uses
  %i.vd = sub i32 %i.ux, %.0163272.i              ; 2 uses
  store i32 %i.vd, ptr %i.tz, align 8, !tbaa !83, !noalias !329
  %i.ve = srem i32 %i.uw, 2                       ; 3 uses
  store i32 %i.ve, ptr %i.ua, align 8, !tbaa !84, !noalias !329
  %i.vf = sub i32 %i.vc, %.0162273.i              ; 2 uses
  store i32 %i.vf, ptr %i.ub, align 8, !tbaa !83, !noalias !329
  %i.vg = srem i32 %i.vb, 2                       ; 3 uses
  store i32 %i.vg, ptr %i.uc, align 8, !tbaa !84, !noalias !329
  %i.vh = icmp eq i64 %indvars.iv.i15, %i.us
  br i1 %i.vh, label %opj_dwt_get_band_coordinates.exit196.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.vi = trunc nuw i64 %indvars.iv.i15 to i32
  %i.vj = sub i32 %i.ue, %i.vi                    ; 2 uses
  %i.vk = zext i32 %i.vj to i64                   ; 9 uses
  %notmask.i.i = shl nsw i64 -1, %i.vk
  %i.vl = xor i64 %notmask.i.i, -1                ; 8 uses
  %i.vm = add nuw i64 %i.vl, %i.uf
  %i.vn = lshr i64 %i.vm, %i.vk
  %i.vo = trunc i64 %i.vn to i32
  %.ph.i = select i1 %.not62.i.not.i, i32 0, i32 %i.vo ; 2 uses
  %i.vp = add nuw i64 %i.vl, %i.ug
  %i.vq = lshr i64 %i.vp, %i.vk
  %i.vr = trunc i64 %i.vq to i32
  %.ph247.i = select i1 %.not64.i.not.i, i32 0, i32 %i.vr ; 2 uses
  %i.vs = add nuw i64 %i.vl, %i.uh
  %i.vt = lshr i64 %i.vs, %i.vk
  %i.vu = trunc i64 %i.vt to i32
  %.ph250.i = select i1 %.not66.i.not.i, i32 0, i32 %i.vu ; 2 uses
  %i.vv = add nuw i64 %i.vl, %i.ui
  %i.vw = lshr i64 %i.vv, %i.vk
  %i.vx = trunc i64 %i.vw to i32
  %.ph252.i = select i1 %.not68.i.not.i, i32 0, i32 %i.vx ; 2 uses
  %i.vy = add i32 %i.vj, -1
  %i.vz = shl nuw i32 1, %i.vy                    ; 8 uses
  %.not62.i187.i = icmp ugt i32 %i.re, %i.vz
  %i.wa = sub nuw i32 %i.re, %i.vz
  %i.wb = zext i32 %i.wa to i64
  %i.wc = add nuw i64 %i.wb, %i.vl
  %i.wd = lshr i64 %i.wc, %i.vk
  %i.we = trunc i64 %i.wd to i32
  %.ph254.i = select i1 %.not62.i187.i, i32 %i.we, i32 0 ; 2 uses
  %.not66.i188.i = icmp ugt i32 %i.ri, %i.vz
  %i.wf = sub nuw i32 %i.ri, %i.vz
  %i.wg = zext i32 %i.wf to i64
  %i.wh = add nuw i64 %i.wg, %i.vl
  %i.wi = lshr i64 %i.wh, %i.vk
  %i.wj = trunc i64 %i.wi to i32
  %.ph256.i = select i1 %.not66.i188.i, i32 %i.wj, i32 0 ; 2 uses
  %.not64.i192.i = icmp ugt i32 %i.rg, %i.vz
  %i.wk = sub nuw i32 %i.rg, %i.vz
  %i.wl = zext i32 %i.wk to i64
  %i.wm = add nuw i64 %i.wl, %i.vl
  %i.wn = lshr i64 %i.wm, %i.vk
  %i.wo = trunc i64 %i.wn to i32
  %.ph258.i = select i1 %.not64.i192.i, i32 %i.wo, i32 0 ; 2 uses
  %.not68.i193.i = icmp ugt i32 %i.rk, %i.vz
  br i1 %.not68.i193.i, label %bb.aj, label %opj_dwt_get_band_coordinates.exit196.i

bb.aj:                                            ; preds = %bb.ai
  %i.wp = sub nuw i32 %i.rk, %i.vz
  %i.wq = zext i32 %i.wp to i64
  %i.wr = add nuw i64 %i.wq, %i.vl
  %i.ws = lshr i64 %i.wr, %i.vk
  %i.wt = trunc i64 %i.ws to i32
  br label %opj_dwt_get_band_coordinates.exit196.i

opj_dwt_get_band_coordinates.exit196.i:           ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.wu = phi i32 [ %.ph258.i, %bb.ai ], [ %.ph258.i, %bb.aj ], [ %i.rg, %bb.ah ]
  %i.wv = phi i32 [ %.ph254.i, %bb.ai ], [ %.ph254.i, %bb.aj ], [ %i.re, %bb.ah ]
  %i.ww = phi i32 [ %.ph250.i, %bb.ai ], [ %.ph250.i, %bb.aj ], [ %i.ri, %bb.ah ]
  %i.wx = phi i32 [ %.ph.i, %bb.ai ], [ %.ph.i, %bb.aj ], [ %i.re, %bb.ah ]
  %i.wy = phi i32 [ %.ph247.i, %bb.ai ], [ %.ph247.i, %bb.aj ], [ %i.rg, %bb.ah ]
  %i.wz = phi i32 [ %.ph252.i, %bb.ai ], [ %.ph252.i, %bb.aj ], [ %i.rk, %bb.ah ]
  %i.xa = phi i32 [ %.ph256.i, %bb.ai ], [ %.ph256.i, %bb.aj ], [ %i.ri, %bb.ah ]
  %i.xb = phi i32 [ 0, %bb.ai ], [ %i.wt, %bb.aj ], [ %i.rk, %bb.ah ]
  %i.xc = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 224
  %i.xd = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 272
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !75, !noalias !329 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 228
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !76, !noalias !329 ; 2 uses
  %i.xh = load i32, ptr %i.xc, align 8, !tbaa !75, !noalias !329 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.0164271.i, i64 276
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !76, !noalias !329 ; 2 uses
  %i.xk = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.wx, i32 %i.xe)
  %i.xl = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.wy, i32 %i.xg)
  %i.xm = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ww, i32 %i.xe)
  %i.xn = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.wz, i32 %i.xg)
  %i.xo = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.wv, i32 %i.xh)
  %i.xp = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xa, i32 %i.xh)
  %i.xq = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.wu, i32 %i.xj)
  %i.xr = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xb, i32 %i.xj)
  %i.xs = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xk, i32 4) ; 12 uses
  %i.xt = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xm, i32 range(i32 2, 5) 4)
  %i.xu = tail call noundef i32 @llvm.umin.i32(i32 %i.xt, i32 %.0163272.i) ; 11 uses
  %i.xv = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xo, i32 4) ; 5 uses
  %i.xw = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xp, i32 range(i32 2, 5) 4)
  %i.xx = tail call noundef i32 @llvm.umin.i32(i32 %i.xw, i32 %i.vd) ; 4 uses
  %i.xy = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xl, i32 4) ; 7 uses
  %i.xz = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xn, i32 range(i32 2, 5) 4)
  %i.ya = tail call noundef i32 @llvm.umin.i32(i32 %i.xz, i32 %.0162273.i) ; 6 uses
  %i.yb = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xq, i32 4) ; 7 uses
  %i.yc = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xr, i32 range(i32 2, 5) 4)
  %i.yd = tail call noundef i32 @llvm.umin.i32(i32 %i.yc, i32 %i.vf) ; 6 uses
  %i.ye = icmp eq i32 %i.ve, 0                    ; 4 uses
  %..i = select i1 %i.ye, i32 %i.xs, i32 %i.xv
  %.314.i = select i1 %i.ye, i32 %i.xv, i32 %i.xs
  %.315.i = select i1 %i.ye, i32 %i.xu, i32 %i.xx
  %.316.i = select i1 %i.ye, i32 %i.xx, i32 %i.xu
  %i.yf = shl i32 %..i, 1
  %i.yg = shl i32 %.314.i, 1
  %i.yh = or disjoint i32 %i.yg, 1
  %i.yi = tail call noundef i32 @llvm.umin.i32(i32 %i.yf, i32 %i.yh) ; 6 uses
  %i.yj = shl i32 %.315.i, 1
  %i.yk = shl i32 %.316.i, 1
  %i.yl = or disjoint i32 %i.yk, 1
  %i.ym = tail call noundef i32 @llvm.umax.i32(i32 %i.yj, i32 %i.yl)
  %i.yn = tail call noundef i32 @llvm.umin.i32(i32 %i.ym, i32 %i.ux) ; 5 uses
  %i.yo = icmp eq i32 %i.vg, 0
  br i1 %i.yo, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %opj_dwt_get_band_coordinates.exit196.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %opj_dwt_get_band_coordinates.exit196.i
  %.sink313.i = phi i32 [ %i.yb, %bb.ak ], [ %i.xy, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink312.i = phi i32 [ %i.xy, %bb.ak ], [ %i.yb, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink308.i = phi i32 [ %i.yd, %bb.ak ], [ %i.ya, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink307.i = phi i32 [ %i.ya, %bb.ak ], [ %i.yd, %opj_dwt_get_band_coordinates.exit196.i ]
  %i.yp = shl i32 %.sink313.i, 1
  %i.yq = shl i32 %.sink312.i, 1
  %i.yr = or disjoint i32 %i.yq, 1
  %i.ys = tail call noundef i32 @llvm.umin.i32(i32 %i.yp, i32 %i.yr) ; 2 uses
  %i.yt = shl i32 %.sink308.i, 1
  %i.yu = shl i32 %.sink307.i, 1
  %i.yv = or disjoint i32 %i.yu, 1
  %i.yw = tail call noundef i32 @llvm.umax.i32(i32 %i.yt, i32 %i.yv)
  %i.yx = tail call noundef i32 @llvm.umin.i32(i32 %i.yw, i32 %i.vc)
  store i32 %i.xs, ptr %i.uj, align 4, !tbaa !85, !noalias !329
  store i32 %i.xu, ptr %i.uk, align 8, !tbaa !86, !noalias !329
  store i32 %i.xv, ptr %i.ul, align 4, !tbaa !87, !noalias !329
  store i32 %i.xx, ptr %i.um, align 8, !tbaa !88, !noalias !329
  %i.yy = icmp ugt i32 %i.vc, 7
  br i1 %i.yy, label %.lr.ph.i18, label %._crit_edge.i16

.lr.ph.i18:                                       ; preds = %bb.al
  %i.yz = add i32 %i.yb, %.0162273.i
  %i.za = add i32 %i.yd, %.0162273.i
  %i.zb = sext i32 %i.ve to i64                   ; 2 uses
  %i.zc = getelementptr inbounds [32 x i8], ptr %i.tw, i64 %i.zb
  %i.zd = shl i32 %i.xs, 1
  %i.ze = zext i32 %i.zd to i64
  %i.zf = getelementptr inbounds nuw [32 x i8], ptr %i.zc, i64 %i.ze ; 8 uses
  %i.zg = add i32 %i.xv, %.0163272.i              ; 8 uses
  %i.zh = add i32 %i.xx, %.0163272.i              ; 8 uses
  %i.zi = sub nsw i64 0, %i.zb
  %i.zj = getelementptr inbounds [32 x i8], ptr %i.un, i64 %i.zi
  %i.zk = shl i32 %i.xv, 1
  %i.zl = zext i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [32 x i8], ptr %i.zj, i64 %i.zl ; 8 uses
  %i.zn = zext i32 %i.yi to i64
  %i.zo = getelementptr inbounds nuw [32 x i8], ptr %i.tw, i64 %i.zn
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zf, i64 4
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zf, i64 12
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zm, i64 12
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zf, i64 20
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zm, i64 20
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zm, i64 24
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zf, i64 28
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zm, i64 28
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %.lr.ph.i18
  %.0158266.i = phi i32 [ 0, %.lr.ph.i18 ], [ %.pre-phi.i20, %bb.ap ] ; 16 uses
  %i.aad = or disjoint i32 %.0158266.i, 7         ; 2 uses
  %.not177.i = icmp uge i32 %i.aad, %i.xy
  %i.aae = icmp ult i32 %.0158266.i, %i.ya
  %or.cond.i19 = and i1 %i.aae, %.not177.i
  br i1 %or.cond.i19, label %.lr.ph.i198.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not178.i = icmp uge i32 %i.aad, %i.yz
  %i.aaf = icmp ult i32 %.0158266.i, %i.za
  %or.cond261.i = and i1 %i.aaf, %.not178.i
  br i1 %or.cond261.i, label %.lr.ph.i198.i, label %._crit_edge282.i

._crit_edge282.i:                                 ; preds = %bb.an
  %.pre.i = add i32 %.0158266.i, 8
  br label %bb.ap

.lr.ph.i198.i:                                    ; preds = %bb.an, %bb.am
  %i.aag = add nuw nsw i32 %.0158266.i, 1         ; 4 uses
  %i.aah = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.xs, i32 noundef %.0158266.i, i32 noundef %i.xu, i32 noundef %i.aag, ptr noundef nonnull %i.zf, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aai = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.zg, i32 noundef %.0158266.i, i32 noundef %i.zh, i32 noundef %i.aag, ptr noundef nonnull %i.zm, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aaj = add nuw nsw i32 %.0158266.i, 2         ; 4 uses
  %i.aak = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.xs, i32 noundef %i.aag, i32 noundef %i.xu, i32 noundef %i.aaj, ptr noundef nonnull %i.zp, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aal = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.zg, i32 noundef %i.aag, i32 noundef %i.zh, i32 noundef %i.aaj, ptr noundef nonnull %i.zq, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aam = add nuw nsw i32 %.0158266.i, 3         ; 4 uses
  %i.aan = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.xs, i32 noundef %i.aaj, i32 noundef %i.xu, i32 noundef %i.aam, ptr noundef nonnull %i.zr, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aao = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.zg, i32 noundef %i.aaj, i32 noundef %i.zh, i32 noundef %i.aam, ptr noundef nonnull %i.zs, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aap = add nuw nsw i32 %.0158266.i, 4         ; 4 uses
  %i.aaq = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.xs, i32 noundef %i.aam, i32 noundef %i.xu, i32 noundef %i.aap, ptr noundef nonnull %i.zt, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aar = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.zg, i32 noundef %i.aam, i32 noundef %i.zh, i32 noundef %i.aap, ptr noundef nonnull %i.zu, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aas = add nuw nsw i32 %.0158266.i, 5         ; 4 uses
  %i.aat = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.xs, i32 noundef %i.aap, i32 noundef %i.xu, i32 noundef %i.aas, ptr noundef nonnull %i.zv, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aau = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.zg, i32 noundef %i.aap, i32 noundef %i.zh, i32 noundef %i.aas, ptr noundef nonnull %i.zw, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aav = add nuw nsw i32 %.0158266.i, 6         ; 4 uses
  %i.aaw = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.xs, i32 noundef %i.aas, i32 noundef %i.xu, i32 noundef %i.aav, ptr noundef nonnull %i.zx, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aax = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.zg, i32 noundef %i.aas, i32 noundef %i.zh, i32 noundef %i.aav, ptr noundef nonnull %i.zy, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aay = add nuw nsw i32 %.0158266.i, 7         ; 4 uses
  %i.aaz = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.xs, i32 noundef %i.aav, i32 noundef %i.xu, i32 noundef %i.aay, ptr noundef nonnull %i.zz, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.aba = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.zg, i32 noundef %i.aav, i32 noundef %i.zh, i32 noundef %i.aay, ptr noundef nonnull %i.aaa, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.abb = add i32 %.0158266.i, 8                 ; 4 uses
  %i.abc = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.xs, i32 noundef %i.aay, i32 noundef %i.xu, i32 noundef %i.abb, ptr noundef nonnull %i.aab, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  %i.abd = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.zg, i32 noundef %i.aay, i32 noundef %i.zh, i32 noundef %i.abb, ptr noundef nonnull %i.aac, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !329 ; 0 uses
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !329
  %i.abe = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.ru, i32 noundef %i.yi, i32 noundef %.0158266.i, i32 noundef %i.yn, i32 noundef %i.abb, ptr noundef nonnull %i.zo, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !329
  %.not179.i = icmp eq i32 %i.abe, 0
  br i1 %.not179.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i198.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.ru) #15, !noalias !329
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tw) #15, !noalias !329
  br label %opj_dwt_decode_partial_97.exit

bb.ap:                                            ; preds = %.lr.ph.i198.i, %._crit_edge282.i
  %.pre-phi.i20 = phi i32 [ %.pre.i, %._crit_edge282.i ], [ %i.abb, %.lr.ph.i198.i ] ; 2 uses
  %8 = add i32 %.0158266.i, 15                    ; 2 uses
  %i.abf = icmp ult i32 %8, %i.vc
  br i1 %i.abf, label %bb.am, label %._crit_edge.i16, !llvm.loop !295

._crit_edge.i16:                                  ; preds = %bb.ap, %bb.al
  %.0158.lcssa.i = phi i32 [ 0, %bb.al ], [ %.pre-phi.i20, %bb.ap ] ; 6 uses
  %.lcssa.i = phi i32 [ 7, %bb.al ], [ %8, %bb.ap ] ; 2 uses
  %i.abg = icmp ult i32 %.0158.lcssa.i, %i.vc
  br i1 %i.abg, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %._crit_edge.i16
  %.not173.i = icmp uge i32 %.lcssa.i, %i.xy
  %i.abh = icmp ult i32 %.0158.lcssa.i, %i.ya
  %or.cond182.i = and i1 %i.abh, %.not173.i
  br i1 %or.cond182.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.abi = add i32 %i.yb, %.0162273.i
  %.not174.i = icmp uge i32 %.lcssa.i, %i.abi
  %i.abj = add i32 %i.yd, %.0162273.i
  %i.abk = icmp ult i32 %.0158.lcssa.i, %i.abj
  %or.cond263.i = and i1 %i.abk, %.not174.i
  br i1 %or.cond263.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.abl = sub nuw i32 %i.vc, %.0158.lcssa.i
  call fastcc void @opj_v8dwt_interleave_partial_h(ptr noundef %3, ptr noundef %i.ru, i32 noundef %.0158.lcssa.i, i32 noundef %i.abl), !noalias !329
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !329
  %i.abm = zext i32 %i.yi to i64
  %i.abn = getelementptr inbounds nuw [32 x i8], ptr %i.tw, i64 %i.abm
  %i.abo = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.ru, i32 noundef %i.yi, i32 noundef %.0158.lcssa.i, i32 noundef %i.yn, i32 noundef %i.vc, ptr noundef nonnull %i.abn, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !329
  %.not175.i = icmp eq i32 %i.abo, 0
  br i1 %.not175.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.ru) #15, !noalias !329
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tw) #15, !noalias !329
  br label %opj_dwt_decode_partial_97.exit

bb.au:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i16
  store i32 %i.xy, ptr %i.uo, align 4, !tbaa !85, !noalias !329
  store i32 %i.ya, ptr %i.up, align 8, !tbaa !86, !noalias !329
  store i32 %i.yb, ptr %i.uq, align 4, !tbaa !87, !noalias !329
  store i32 %i.yd, ptr %i.ur, align 8, !tbaa !88, !noalias !329
  %i.abp = icmp ult i32 %i.yi, %i.yn
  br i1 %i.abp, label %.critedge.lr.ph.i, label %._crit_edge269.i

.critedge.lr.ph.i:                                ; preds = %bb.au
  %i.abq = sext i32 %i.vg to i64                  ; 2 uses
  %i.abr = getelementptr inbounds [32 x i8], ptr %i.tw, i64 %i.abq
  %i.abs = shl i32 %i.xy, 1
  %i.abt = zext i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [32 x i8], ptr %i.abr, i64 %i.abt
  %i.abv = add i32 %i.yb, %.0162273.i
  %i.abw = add i32 %i.yd, %.0162273.i
  %i.abx = sub nsw i64 0, %i.abq
  %i.aby = getelementptr inbounds [32 x i8], ptr %i.un, i64 %i.abx
  %i.abz = shl i32 %i.yb, 1
  %i.aca = zext i32 %i.abz to i64
  %i.acb = getelementptr inbounds nuw [32 x i8], ptr %i.aby, i64 %i.aca
  %i.acc = zext i32 %i.ys to i64
  %i.acd = getelementptr inbounds nuw [32 x i8], ptr %i.tw, i64 %i.acc
  br label %.critedge.i

bb.av:                                            ; preds = %.critedge.i
  %i.ace = add i32 %.1159268.i, 8                 ; 2 uses
  %i.acf = icmp ult i32 %i.ace, %i.yn
  br i1 %i.acf, label %.critedge.i, label %._crit_edge269.i, !llvm.loop !296

.critedge.i:                                      ; preds = %bb.av, %.critedge.lr.ph.i
  %.1159268.i = phi i32 [ %i.yi, %.critedge.lr.ph.i ], [ %i.ace, %bb.av ] ; 6 uses
  %i.acg = sub nuw i32 %i.yn, %.1159268.i
  %i.ach = tail call noundef i32 @llvm.umin.i32(i32 %i.acg, i32 8)
  %i.aci = add i32 %i.ach, %.1159268.i            ; 3 uses
  %i.acj = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %.1159268.i, i32 noundef %i.xy, i32 noundef %i.aci, i32 noundef %i.ya, ptr noundef nonnull %i.abu, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !331 ; 0 uses
  %i.ack = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %.1159268.i, i32 noundef %i.abv, i32 noundef %i.aci, i32 noundef %i.abw, ptr noundef nonnull %i.acb, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !331 ; 0 uses
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %4), !noalias !329
  %i.acl = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.ru, i32 noundef %.1159268.i, i32 noundef %i.ys, i32 noundef %i.aci, i32 noundef %i.yx, ptr noundef nonnull %i.acd, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15, !noalias !329
  %.not176.not.i = icmp eq i32 %i.acl, 0
  br i1 %.not176.not.i, label %bb.aw, label %bb.av

bb.aw:                                            ; preds = %.critedge.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.ru) #15, !noalias !329
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tw) #15, !noalias !329
  br label %opj_dwt_decode_partial_97.exit

._crit_edge269.i:                                 ; preds = %bb.av, %bb.au
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count.i14
  br i1 %exitcond.not.i, label %._crit_edge277.i, label %bb.ah, !llvm.loop !299

._crit_edge277.i:                                 ; preds = %._crit_edge269.i, %bb.ag
  %i.acm = getelementptr inbounds nuw i8, ptr %i.qt, i64 176
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !67, !noalias !329 ; 2 uses
  %i.aco = load i32, ptr %i.qt, align 8, !tbaa !32, !noalias !329 ; 2 uses
  %i.acp = sub i32 %i.acn, %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %i.qt, i64 180
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !68, !noalias !329
  %i.acs = load i32, ptr %i.rp, align 4, !tbaa !34, !noalias !329 ; 2 uses
  %i.act = sub i32 %i.acr, %i.acs
  %i.acu = getelementptr inbounds nuw i8, ptr %i.qt, i64 184
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !69, !noalias !329 ; 2 uses
  %i.acw = sub i32 %i.acv, %i.aco
  %i.acx = getelementptr inbounds nuw i8, ptr %i.qt, i64 188
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !70, !noalias !329
  %i.acz = sub i32 %i.acy, %i.acs
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !71, !alias.scope !329
  %i.adc = sub i32 %i.acv, %i.acn
  %i.add = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.ru, i32 noundef %i.acp, i32 noundef %i.act, i32 noundef %i.acw, i32 noundef %i.acz, ptr noundef %i.adb, i32 noundef 1, i32 noundef %i.adc, i32 noundef 1) #15, !noalias !329 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.ru) #15, !noalias !329
  tail call void @opj_aligned_free(ptr noundef nonnull %i.tw) #15, !noalias !329
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
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.ae = zext i32 %.0.lcssa to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %0, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !39
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !41
  %i.ap = sub nuw i32 %.lcssa, %.0.lcssa
  tail call void %i.ab(ptr noundef %i.af, ptr noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ap) #15
end_hunk_4
