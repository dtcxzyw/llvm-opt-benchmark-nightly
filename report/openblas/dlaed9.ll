Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed9?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DLAED9\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dlaed9_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef readonly captures(none) %11, ptr noundef initializes((0, 4)) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %10 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.e = getelementptr inbounds i8, ptr %4, i64 -8
  %i.f = load i32, ptr %6, align 4, !tbaa !43     ; 6 uses
  %narrow163 = xor i32 %i.f, -1
  %i.g = sext i32 %narrow163 to i64               ; 5 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %5, i64 %i.g ; 8 uses
  %i.i = getelementptr inbounds i8, ptr %8, i64 -8 ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %9, i64 -8 ; 16 uses
  %i.k = load i32, ptr %11, align 4, !tbaa !43    ; 4 uses
  %narrow = xor i32 %i.k, -1
  %i.l = sext i32 %narrow to i64                  ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %10, i64 %i.l ; 4 uses
  store i32 0, ptr %12, align 4, !tbaa !43
  %i.n = load i32, ptr %0, align 4, !tbaa !43     ; 4 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %1, align 4, !tbaa !43     ; 4 uses
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.n, i32 1) ; 4 uses
  %i.r = icmp samesign ugt i32 %i.p, %spec.select
  br i1 %i.r, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %2, align 4, !tbaa !43     ; 3 uses
  %spec.select177 = tail call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %i.t = icmp samesign ult i32 %spec.select177, %i.p
  %i.u = icmp sgt i32 %i.s, %spec.select
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %3, align 4, !tbaa !43     ; 3 uses
  %i.w = icmp slt i32 %i.v, %i.n
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %6, align 4, !tbaa !43
  %i.y = icmp slt i32 %i.x, %spec.select
  br i1 %i.y, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %11, align 4, !tbaa !43
  %i.aa = icmp slt i32 %i.z, %spec.select
  br i1 %i.aa, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -4, %bb.e ], [ -7, %bb.f ], [ -3, %bb.d ], [ -2, %bb.c ], [ -12, %bb.g ]
  %.neg288 = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 4, %bb.e ], [ 7, %bb.f ], [ 3, %bb.d ], [ 2, %bb.c ], [ 12, %bb.g ]
  store i32 %.sink, ptr %12, align 4, !tbaa !43
  store i32 %.neg288, ptr %i.c, align 4, !tbaa !43
  %i.ab = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.c, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i32 %i.n, 0
  br i1 %i.ac, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not161186 = icmp eq i32 %i.v, 0
  br i1 %.not161186, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ad = add nuw i32 %i.v, 1
  %wide.trip.count = zext i32 %i.ad to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.af = tail call double @dlamc3_(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ae) #6
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !45
  %i.ah = fsub double %i.af, %i.ag
  store double %i.ah, ptr %i.ae, align 8, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %2, align 4, !tbaa !43
  %.pre273 = load i32, ptr %1, align 4, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.ai = phi i32 [ %.pre273, %._crit_edge.loopexit ], [ %i.p, %bb.i ] ; 3 uses
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.s, %bb.i ] ; 2 uses
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !43
  store i32 %i.ai, ptr %i.d, align 4, !tbaa !43
  %.not162188 = icmp sgt i32 %i.ai, %i.aj
  br i1 %.not162188, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %._crit_edge, %bb.j
  %storemerge189 = phi i32 [ %i.as, %bb.j ], [ %i.ai, %._crit_edge ] ; 2 uses
  %i.ak = mul nsw i32 %storemerge189, %i.f
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.h, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = sext i32 %storemerge189 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ao
  call void @dlaed4_(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef %8, ptr noundef %9, ptr noundef %i.an, ptr noundef %7, ptr noundef nonnull %i.ap, ptr noundef nonnull %12) #6
  %i.aq = load i32, ptr %12, align 4, !tbaa !43
  %.not176 = icmp eq i32 %i.aq, 0
  br i1 %.not176, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph191
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !43  ; 2 uses
  %i.as = add nsw i32 %i.ar, 1                    ; 2 uses
  store i32 %i.as, ptr %i.d, align 4, !tbaa !43
  %i.at = load i32, ptr %i.c, align 4, !tbaa !43
  %.not162.not = icmp slt i32 %i.ar, %i.at
  br i1 %.not162.not, label %.lr.ph191, label %._crit_edge192, !llvm.loop !9

._crit_edge192:                                   ; preds = %bb.j, %._crit_edge
  %i.au = load i32, ptr %0, align 4, !tbaa !43    ; 2 uses
  %.off = add i32 %i.au, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.preheader.preheader, label %bb.k

.preheader.preheader:                             ; preds = %._crit_edge192
  %i.av = add nuw nsw i32 %i.au, 1
  %i.aw = sext i32 %i.f to i64                    ; 2 uses
  %i.ax = sext i32 %i.k to i64                    ; 2 uses
  %invariant.gep302 = getelementptr [8 x i8], ptr %i.h, i64 %i.aw ; 2 uses
  %invariant.gep304 = getelementptr [8 x i8], ptr %i.m, i64 %i.ax ; 2 uses
  %gep303 = getelementptr i8, ptr %invariant.gep302, i64 8
  %i.ay = load double, ptr %gep303, align 8, !tbaa !45
  %gep305 = getelementptr i8, ptr %invariant.gep304, i64 8
  store double %i.ay, ptr %gep305, align 8, !tbaa !45
  %cond = icmp eq i32 %i.av, 2
  br i1 %cond, label %.loopexit, label %._crit_edge225

._crit_edge225:                                   ; preds = %.preheader.preheader
  %gep303.1 = getelementptr i8, ptr %invariant.gep302, i64 16
  %i.az = load double, ptr %gep303.1, align 8, !tbaa !45
  %gep305.1 = getelementptr i8, ptr %invariant.gep304, i64 16
  store double %i.az, ptr %gep305.1, align 8, !tbaa !45
  %invariant.gep302.1.idx = shl nsw i64 %i.aw, 4
  %invariant.gep302.1 = getelementptr i8, ptr %i.h, i64 %invariant.gep302.1.idx ; 2 uses
  %invariant.gep304.1.idx = shl nsw i64 %i.ax, 4
  %invariant.gep304.1 = getelementptr i8, ptr %i.m, i64 %invariant.gep304.1.idx ; 2 uses
  %gep303.1526 = getelementptr i8, ptr %invariant.gep302.1, i64 8
  %i.ba = load double, ptr %gep303.1526, align 8, !tbaa !45
  %gep305.1527 = getelementptr i8, ptr %invariant.gep304.1, i64 8
  store double %i.ba, ptr %gep305.1527, align 8, !tbaa !45
  %gep303.1.1 = getelementptr i8, ptr %invariant.gep302.1, i64 16
  %i.bb = load double, ptr %gep303.1.1, align 8, !tbaa !45
  %gep305.1.1 = getelementptr i8, ptr %invariant.gep304.1, i64 16
  store double %i.bb, ptr %gep305.1.1, align 8, !tbaa !45
  br label %.loopexit

bb.k:                                             ; preds = %._crit_edge192
  call void @dcopy_(ptr noundef nonnull %0, ptr noundef %9, ptr noundef nonnull @c__1, ptr noundef %10, ptr noundef nonnull @c__1) #6
  %i.bc = load i32, ptr %6, align 4, !tbaa !43
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.c, align 4, !tbaa !43
  call void @dcopy_(ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull %i.c, ptr noundef %9, ptr noundef nonnull @c__1) #6
  %i.be = load i32, ptr %0, align 4, !tbaa !43    ; 6 uses
  %.not165200 = icmp slt i32 %i.be, 1
  br i1 %.not165200, label %.loopexit, label %.preheader184.preheader

.preheader184.preheader:                          ; preds = %bb.k
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = sext i32 %i.f to i64                    ; 6 uses
  %i.bh = add nuw i32 %i.be, 1
  %wide.trip.count245 = zext i32 %i.bh to i64     ; 3 uses
  %wide.trip.count242 = zext nneg i32 %i.be to i64 ; 5 uses
  %i.bi = shl nuw nsw i64 %wide.trip.count242, 3  ; 3 uses
  %scevgep = getelementptr i8, ptr %8, i64 %i.bi
  %i.bj = shl nuw nsw i64 %wide.trip.count245, 3
  %i.bk = getelementptr i8, ptr %8, i64 %i.bj
  %scevgep321 = getelementptr i8, ptr %i.bk, i64 -8
  %i.bl = shl nsw i64 %i.bg, 3                    ; 2 uses
  %i.bm = or i64 %i.bg, %i.g
  %i.bn = shl nsw i64 %i.bm, 3                    ; 2 uses
  %i.bo = add nsw i64 %i.bl, 8
  %scevgep322 = getelementptr i8, ptr %9, i64 %i.bi ; 3 uses
  %i.bp = shl nuw nsw i64 %wide.trip.count245, 3
  %i.bq = getelementptr i8, ptr %8, i64 %i.bp
  %scevgep367 = getelementptr i8, ptr %i.bq, i64 -8
  %i.br = shl nsw i64 %i.bg, 3                    ; 2 uses
  %i.bs = add nsw i64 %i.br, 8
  %i.bt = or i64 %i.bg, %i.g
  %i.bu = shl nsw i64 %i.bt, 3
  %i.bv = add nsw i64 %i.bu, 8                    ; 2 uses
  %i.bw = getelementptr i8, ptr %5, i64 %i.bv
  %i.bx = getelementptr i8, ptr %5, i64 %i.bv
  %bound0373 = icmp ult ptr %9, %scevgep367
  %i.by = getelementptr i8, ptr %5, i64 %i.bn
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = getelementptr i8, ptr %5, i64 %i.bn
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bi
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %bound1324 = icmp ult ptr %8, %scevgep322
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %._crit_edge199
  %indvar = phi i64 [ 0, %.preheader184.preheader ], [ %indvar.next, %._crit_edge199 ] ; 16 uses
  %indvars.iv237 = phi i64 [ 1, %.preheader184.preheader ], [ %indvars.iv.next238, %._crit_edge199 ] ; 15 uses
  %i.cd = xor i64 %indvar, -1
  %i.ce = add i64 %i.cd, %wide.trip.count242      ; 7 uses
  %.not171.not193 = icmp samesign ugt i64 %indvars.iv237, 1
end_hunk_0
begin_hunk_1_@dlaed9_:bb.a
  %i.hl = load double, ptr %i.cg, align 8, !tbaa !45
  %i.hm = fsub double %i.hk, %i.hl
  %i.hn = fdiv double %i.hi, %i.hm
  %i.ho = getelementptr [8 x i8], ptr %9, i64 %indvars.iv232 ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !45
  %i.hq = fmul double %i.hp, %i.hn
  store double %i.hq, ptr %i.ho, align 8, !tbaa !45
  %indvars.iv.next233.1 = add nuw nsw i64 %indvars.iv232, 2 ; 3 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next233.1
  %i.hr = load double, ptr %gep.2, align 8, !tbaa !45
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next233.1
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !45
  %i.hu = load double, ptr %i.cg, align 8, !tbaa !45
  %i.hv = fsub double %i.ht, %i.hu
  %i.hw = fdiv double %i.hr, %i.hv
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next233.1 ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !45
  %i.hz = fmul double %i.hy, %i.hw
  store double %i.hz, ptr %i.hx, align 8, !tbaa !45
  %indvars.iv.next233.2 = add nuw nsw i64 %indvars.iv232, 3 ; 3 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next233.2
  %i.ia = load double, ptr %gep.3, align 8, !tbaa !45
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next233.2
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !45
  %i.id = load double, ptr %i.cg, align 8, !tbaa !45
  %i.ie = fsub double %i.ic, %i.id
  %i.if = fdiv double %i.ia, %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next233.2 ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !45
  %i.ii = fmul double %i.ih, %i.if
  store double %i.ii, ptr %i.ig, align 8, !tbaa !45
  %indvars.iv.next233.3 = add nuw nsw i64 %indvars.iv232, 4 ; 2 uses
  %exitcond236.not.3 = icmp eq i64 %indvars.iv.next233.3, %indvars.iv237
  br i1 %exitcond236.not.3, label %.preheader183, label %vec.epilog.scalar.ph405, !llvm.loop !26

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv239 = phi i64 [ %indvars.iv.next240.3, %vec.epilog.scalar.ph ], [ %indvars.iv239.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 3 uses
  %gep293 = getelementptr [8 x i8], ptr %invariant.gep292, i64 %indvars.iv.next240
  %i.ij = load double, ptr %gep293, align 8, !tbaa !45
  %i.ik = getelementptr [8 x i8], ptr %8, i64 %indvars.iv239
  %i.il = load double, ptr %i.ik, align 8, !tbaa !45
  %i.im = load double, ptr %i.eo, align 8, !tbaa !45
  %i.in = fsub double %i.il, %i.im
  %i.io = fdiv double %i.ij, %i.in
  %i.ip = getelementptr [8 x i8], ptr %9, i64 %indvars.iv239 ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !45
  %i.ir = fmul double %i.iq, %i.io
  store double %i.ir, ptr %i.ip, align 8, !tbaa !45
  %indvars.iv.next240.1 = add nuw nsw i64 %indvars.iv239, 2 ; 3 uses
  %gep293.1 = getelementptr [8 x i8], ptr %invariant.gep292, i64 %indvars.iv.next240.1
  %i.is = load double, ptr %gep293.1, align 8, !tbaa !45
  %i.it = getelementptr [8 x i8], ptr %8, i64 %indvars.iv.next240
  %i.iu = load double, ptr %i.it, align 8, !tbaa !45
  %i.iv = load double, ptr %i.eo, align 8, !tbaa !45
  %i.iw = fsub double %i.iu, %i.iv
  %i.ix = fdiv double %i.is, %i.iw
  %i.iy = getelementptr [8 x i8], ptr %9, i64 %indvars.iv.next240 ; 2 uses
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !45
  %i.ja = fmul double %i.iz, %i.ix
  store double %i.ja, ptr %i.iy, align 8, !tbaa !45
  %indvars.iv.next240.2 = add nuw nsw i64 %indvars.iv239, 3 ; 3 uses
  %gep293.2 = getelementptr [8 x i8], ptr %invariant.gep292, i64 %indvars.iv.next240.2
  %i.jb = load double, ptr %gep293.2, align 8, !tbaa !45
  %i.jc = getelementptr [8 x i8], ptr %8, i64 %indvars.iv.next240.1
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !45
  %i.je = load double, ptr %i.eo, align 8, !tbaa !45
  %i.jf = fsub double %i.jd, %i.je
  %i.jg = fdiv double %i.jb, %i.jf
  %i.jh = getelementptr [8 x i8], ptr %9, i64 %indvars.iv.next240.1 ; 2 uses
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !45
  %i.jj = fmul double %i.ji, %i.jg
  store double %i.jj, ptr %i.jh, align 8, !tbaa !45
  %indvars.iv.next240.3 = add nuw nsw i64 %indvars.iv239, 4 ; 3 uses
  %gep293.3 = getelementptr [8 x i8], ptr %invariant.gep292, i64 %indvars.iv.next240.3
  %i.jk = load double, ptr %gep293.3, align 8, !tbaa !45
  %i.jl = getelementptr [8 x i8], ptr %8, i64 %indvars.iv.next240.2
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !45
  %i.jn = load double, ptr %i.eo, align 8, !tbaa !45
  %i.jo = fsub double %i.jm, %i.jn
  %i.jp = fdiv double %i.jk, %i.jo
  %i.jq = getelementptr [8 x i8], ptr %9, i64 %indvars.iv.next240.2 ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !45
  %i.js = fmul double %i.jr, %i.jp
  store double %i.js, ptr %i.jq, align 8, !tbaa !45
  %exitcond243.not.3 = icmp eq i64 %indvars.iv.next240.3, %wide.trip.count242
  br i1 %exitcond243.not.3, label %._crit_edge199, label %vec.epilog.scalar.ph, !llvm.loop !27

._crit_edge199:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader183
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count245
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond246.not, label %.lr.ph206.preheader, label %.preheader184, !llvm.loop !28

.lr.ph206.preheader:                              ; preds = %._crit_edge199
  %i.jt = sext i32 %i.k to i64
  %invariant.gep294 = getelementptr [8 x i8], ptr %i.m, i64 %i.jt ; 5 uses
  %i.ju = zext nneg i32 %i.be to i64              ; 2 uses
  %xtraiter517 = and i64 %i.ju, 3                 ; 3 uses
  %i.jv = icmp ult i32 %i.be, 4
  br i1 %i.jv, label %.lr.ph206.epil.preheader, label %.lr.ph206.preheader.new

.lr.ph206.preheader.new:                          ; preds = %.lr.ph206.preheader
  %unroll_iter = and i64 %i.ju, 2147483644
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206, %.lr.ph206.preheader.new
  %indvars.iv247 = phi i64 [ 1, %.lr.ph206.preheader.new ], [ %indvars.iv.next248.3, %.lr.ph206 ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph206.preheader.new ], [ %niter.next.3, %.lr.ph206 ]
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv247 ; 2 uses
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !45
  %i.jy = fneg double %i.jx
  %i.jz = call double @sqrt(double noundef %i.jy) #6 ; 3 uses
  %gep295 = getelementptr [8 x i8], ptr %invariant.gep294, i64 %indvars.iv247
  %i.ka = load double, ptr %gep295, align 8, !tbaa !45
  %i.kb = fcmp ult double %i.ka, 0.000000e+00
  %i.kc = fcmp oge double %i.jz, 0.000000e+00
  %.neg = fneg double %i.jz
  %i.kd = xor i1 %i.kc, %i.kb
  %i.ke = select i1 %i.kd, double %i.jz, double %.neg
  store double %i.ke, ptr %i.jw, align 8, !tbaa !45
  %i.kf = getelementptr [8 x i8], ptr %9, i64 %indvars.iv247 ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !45
  %i.kh = fneg double %i.kg
  %i.ki = call double @sqrt(double noundef %i.kh) #6 ; 3 uses
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep294, i64 %indvars.iv247
  %gep295.1 = getelementptr i8, ptr %i.kj, i64 8
  %i.kk = load double, ptr %gep295.1, align 8, !tbaa !45
  %i.kl = fcmp ult double %i.kk, 0.000000e+00
  %i.km = fcmp oge double %i.ki, 0.000000e+00
  %.neg.1 = fneg double %i.ki
  %i.kn = xor i1 %i.km, %i.kl
  %i.ko = select i1 %i.kn, double %i.ki, double %.neg.1
  store double %i.ko, ptr %i.kf, align 8, !tbaa !45
  %indvars.iv.next248.1 = add nuw nsw i64 %indvars.iv247, 2 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next248.1 ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !45
  %i.kr = fneg double %i.kq
  %i.ks = call double @sqrt(double noundef %i.kr) #6 ; 3 uses
  %gep295.2 = getelementptr [8 x i8], ptr %invariant.gep294, i64 %indvars.iv.next248.1
  %i.kt = load double, ptr %gep295.2, align 8, !tbaa !45
  %i.ku = fcmp ult double %i.kt, 0.000000e+00
  %i.kv = fcmp oge double %i.ks, 0.000000e+00
  %.neg.2 = fneg double %i.ks
  %i.kw = xor i1 %i.kv, %i.ku
  %i.kx = select i1 %i.kw, double %i.ks, double %.neg.2
  store double %i.kx, ptr %i.kp, align 8, !tbaa !45
  %indvars.iv.next248.2 = add nuw nsw i64 %indvars.iv247, 3 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next248.2 ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !45
  %i.la = fneg double %i.kz
  %i.lb = call double @sqrt(double noundef %i.la) #6 ; 3 uses
  %gep295.3 = getelementptr [8 x i8], ptr %invariant.gep294, i64 %indvars.iv.next248.2
  %i.lc = load double, ptr %gep295.3, align 8, !tbaa !45
  %i.ld = fcmp ult double %i.lc, 0.000000e+00
  %i.le = fcmp oge double %i.lb, 0.000000e+00
  %.neg.3 = fneg double %i.lb
  %i.lf = xor i1 %i.le, %i.ld
  %i.lg = select i1 %i.lf, double %i.lb, double %.neg.3
  store double %i.lg, ptr %i.ky, align 8, !tbaa !45
  %indvars.iv.next248.3 = add nuw nsw i64 %indvars.iv247, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge207.unr-lcssa, label %.lr.ph206, !llvm.loop !29

._crit_edge207.unr-lcssa:                         ; preds = %.lr.ph206
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %._crit_edge207, label %.lr.ph206.epil.preheader

.lr.ph206.epil.preheader:                         ; preds = %._crit_edge207.unr-lcssa, %.lr.ph206.preheader
  %indvars.iv247.epil.init = phi i64 [ 1, %.lr.ph206.preheader ], [ %indvars.iv.next248.3, %._crit_edge207.unr-lcssa ]
  %lcmp.mod519 = icmp ne i64 %xtraiter517, 0
  call void @llvm.assume(i1 %lcmp.mod519)
  br label %.lr.ph206.epil

.lr.ph206.epil:                                   ; preds = %.lr.ph206.epil, %.lr.ph206.epil.preheader
  %indvars.iv247.epil = phi i64 [ %indvars.iv247.epil.init, %.lr.ph206.epil.preheader ], [ %indvars.iv.next248.epil, %.lr.ph206.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph206.epil.preheader ], [ %epil.iter.next, %.lr.ph206.epil ]
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv247.epil ; 2 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !45
  %i.lj = fneg double %i.li
  %i.lk = call double @sqrt(double noundef %i.lj) #6 ; 3 uses
  %gep295.epil = getelementptr [8 x i8], ptr %invariant.gep294, i64 %indvars.iv247.epil
  %i.ll = load double, ptr %gep295.epil, align 8, !tbaa !45
  %i.lm = fcmp ult double %i.ll, 0.000000e+00
  %i.ln = fcmp oge double %i.lk, 0.000000e+00
  %.neg.epil = fneg double %i.lk
  %i.lo = xor i1 %i.ln, %i.lm
  %i.lp = select i1 %i.lo, double %i.lk, double %.neg.epil
  store double %i.lp, ptr %i.lh, align 8, !tbaa !45
  %indvars.iv.next248.epil = add nuw nsw i64 %indvars.iv247.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter517
  br i1 %epil.iter.cmp.not, label %._crit_edge207, label %.lr.ph206.epil, !llvm.loop !30

._crit_edge207:                                   ; preds = %.lr.ph206.epil, %._crit_edge207.unr-lcssa
  %.pre274 = load i32, ptr %0, align 4, !tbaa !43 ; 3 uses
  store i32 %.pre274, ptr %i.c, align 4, !tbaa !43
  store i32 1, ptr %i.d, align 4, !tbaa !43
  %.not168218 = icmp slt i32 %.pre274, 1
  br i1 %.not168218, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %._crit_edge207, %._crit_edge217
  %i.lq = phi i32 [ %i.oo, %._crit_edge217 ], [ %.pre274, %._crit_edge207 ] ; 6 uses
  %storemerge167219 = phi i32 [ %i.qp, %._crit_edge217 ], [ 1, %._crit_edge207 ]
  %.not169208 = icmp slt i32 %i.lq, 1
  %.pre276 = mul i32 %storemerge167219, %i.f
  %.pre277 = sext i32 %.pre276 to i64             ; 3 uses
  br i1 %.not169208, label %._crit_edge212, label %iter.check487

iter.check487:                                    ; preds = %.lr.ph221
  %i.lr = add nuw i32 %i.lq, 1
  %wide.trip.count255 = zext i32 %i.lr to i64     ; 3 uses
  %invariant.gep296 = getelementptr [8 x i8], ptr %i.h, i64 %.pre277 ; 11 uses
  %i.ls = zext nneg i32 %i.lq to i64              ; 5 uses
  %min.iters.check465 = icmp ult i32 %i.lq, 4
  br i1 %min.iters.check465, label %vec.epilog.scalar.ph489.preheader, label %vector.memcheck466

vector.memcheck466:                               ; preds = %iter.check487
  %13 = add nsw i64 %.pre277, %i.g
  %i.lt = shl nsw i64 %13, 3                      ; 2 uses
  %14 = getelementptr i8, ptr %5, i64 %i.lt
  %i.lu = getelementptr i8, ptr %14, i64 8
  %i.lv = shl nuw nsw i64 %wide.trip.count255, 3  ; 2 uses
  %i.lw = getelementptr i8, ptr %5, i64 %i.lt
  %i.lx = getelementptr i8, ptr %i.lw, i64 %i.lv
  %i.ly = getelementptr i8, ptr %9, i64 %i.lv
  %i.lz = getelementptr i8, ptr %i.ly, i64 -8
  %bound0467 = icmp ult ptr %i.lu, %i.lz
  %bound1468 = icmp ult ptr %9, %i.lx
  %found.conflict469 = and i1 %bound0467, %bound1468
  br i1 %found.conflict469, label %vec.epilog.scalar.ph489.preheader, label %vector.main.loop.iter.check470

vector.main.loop.iter.check470:                   ; preds = %vector.memcheck466
  %min.iters.check471 = icmp ult i32 %i.lq, 16
  br i1 %min.iters.check471, label %vec.epilog.ph491, label %vector.ph472

vector.ph472:                                     ; preds = %vector.main.loop.iter.check470
  %i.ma = and i64 %i.ls, 12
  %n.vec473 = and i64 %i.ls, 2147483632           ; 4 uses
  %i.mb = or disjoint i64 %n.vec473, 1
  br label %vector.body474

vector.body474:                                   ; preds = %vector.ph472, %vector.body474
  %index475 = phi i64 [ 0, %vector.ph472 ], [ %index.next484, %vector.body474 ] ; 3 uses
  %i.mc = getelementptr [8 x i8], ptr %9, i64 %index475 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 96
  %wide.load476 = load <4 x double>, ptr %i.mc, align 8, !tbaa !45, !alias.scope !61
  %wide.load477 = load <4 x double>, ptr %i.md, align 8, !tbaa !45, !alias.scope !61
  %wide.load478 = load <4 x double>, ptr %i.me, align 8, !tbaa !45, !alias.scope !61
  %wide.load479 = load <4 x double>, ptr %i.mf, align 8, !tbaa !45, !alias.scope !61
  %i.mg = getelementptr [8 x i8], ptr %invariant.gep296, i64 %index475 ; 4 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 8      ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mg, i64 40     ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mg, i64 72     ; 2 uses
  %i.mk = getelementptr i8, ptr %i.mg, i64 104    ; 2 uses
  %wide.load480 = load <4 x double>, ptr %i.mh, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  %wide.load481 = load <4 x double>, ptr %i.mi, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  %wide.load482 = load <4 x double>, ptr %i.mj, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  %wide.load483 = load <4 x double>, ptr %i.mk, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  %i.ml = fdiv <4 x double> %wide.load476, %wide.load480
  %i.mm = fdiv <4 x double> %wide.load477, %wide.load481
  %i.mn = fdiv <4 x double> %wide.load478, %wide.load482
  %i.mo = fdiv <4 x double> %wide.load479, %wide.load483
  store <4 x double> %i.ml, ptr %i.mh, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  store <4 x double> %i.mm, ptr %i.mi, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  store <4 x double> %i.mn, ptr %i.mj, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  store <4 x double> %i.mo, ptr %i.mk, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  %index.next484 = add nuw i64 %index475, 16      ; 2 uses
  %i.mp = icmp eq i64 %index.next484, %n.vec473
  br i1 %i.mp, label %middle.block485, label %vector.body474, !llvm.loop !34

middle.block485:                                  ; preds = %vector.body474
  %cmp.n486 = icmp eq i64 %n.vec473, %i.ls
  br i1 %cmp.n486, label %._crit_edge212, label %vec.epilog.iter.check488

vec.epilog.iter.check488:                         ; preds = %middle.block485
  %min.epilog.iters.check490 = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check490, label %vec.epilog.scalar.ph489.preheader, label %vec.epilog.ph491, !prof !54

vec.epilog.ph491:                                 ; preds = %vector.main.loop.iter.check470, %vec.epilog.iter.check488
  %vec.epilog.resume.val492 = phi i64 [ %n.vec473, %vec.epilog.iter.check488 ], [ 0, %vector.main.loop.iter.check470 ]
  %n.vec493 = and i64 %i.ls, 2147483644           ; 3 uses
  %i.mq = or disjoint i64 %n.vec493, 1
  br label %vec.epilog.vector.body494

vec.epilog.vector.body494:                        ; preds = %vec.epilog.vector.body494, %vec.epilog.ph491
  %index495 = phi i64 [ %vec.epilog.resume.val492, %vec.epilog.ph491 ], [ %index.next498, %vec.epilog.vector.body494 ] ; 3 uses
  %i.mr = getelementptr [8 x i8], ptr %9, i64 %index495
  %wide.load496 = load <4 x double>, ptr %i.mr, align 8, !tbaa !45, !alias.scope !61
  %i.ms = getelementptr [8 x i8], ptr %invariant.gep296, i64 %index495
  %i.mt = getelementptr i8, ptr %i.ms, i64 8      ; 2 uses
  %wide.load497 = load <4 x double>, ptr %i.mt, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  %i.mu = fdiv <4 x double> %wide.load496, %wide.load497
  store <4 x double> %i.mu, ptr %i.mt, align 8, !tbaa !45, !alias.scope !62, !noalias !61
  %index.next498 = add nuw i64 %index495, 4       ; 2 uses
  %i.mv = icmp eq i64 %index.next498, %n.vec493
  br i1 %i.mv, label %vec.epilog.middle.block499, label %vec.epilog.vector.body494, !llvm.loop !35

vec.epilog.middle.block499:                       ; preds = %vec.epilog.vector.body494
  %cmp.n500 = icmp eq i64 %n.vec493, %i.ls
  br i1 %cmp.n500, label %._crit_edge212, label %vec.epilog.scalar.ph489.preheader

vec.epilog.scalar.ph489.preheader:                ; preds = %iter.check487, %vector.memcheck466, %vec.epilog.iter.check488, %vec.epilog.middle.block499
  %indvars.iv252.ph = phi i64 [ 1, %iter.check487 ], [ 1, %vector.memcheck466 ], [ %i.mb, %vec.epilog.iter.check488 ], [ %i.mq, %vec.epilog.middle.block499 ] ; 4 uses
  %i.mw = sub nsw i64 %wide.trip.count255, %indvars.iv252.ph
  %i.mx = zext nneg i32 %i.lq to i64
  %i.my = sub nsw i64 %i.mx, %indvars.iv252.ph
  %xtraiter520 = and i64 %i.mw, 7                 ; 2 uses
  %lcmp.mod521.not = icmp eq i64 %xtraiter520, 0
  br i1 %lcmp.mod521.not, label %vec.epilog.scalar.ph489.prol.loopexit, label %vec.epilog.scalar.ph489.prol

vec.epilog.scalar.ph489.prol:                     ; preds = %vec.epilog.scalar.ph489.preheader, %vec.epilog.scalar.ph489.prol
  %indvars.iv252.prol = phi i64 [ %indvars.iv.next253.prol, %vec.epilog.scalar.ph489.prol ], [ %indvars.iv252.ph, %vec.epilog.scalar.ph489.preheader ] ; 3 uses
  %prol.iter522 = phi i64 [ %prol.iter522.next, %vec.epilog.scalar.ph489.prol ], [ 0, %vec.epilog.scalar.ph489.preheader ]
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv252.prol
  %i.na = load double, ptr %i.mz, align 8, !tbaa !45
  %gep297.prol = getelementptr [8 x i8], ptr %invariant.gep296, i64 %indvars.iv252.prol ; 2 uses
  %i.nb = load double, ptr %gep297.prol, align 8, !tbaa !45
  %i.nc = fdiv double %i.na, %i.nb
  store double %i.nc, ptr %gep297.prol, align 8, !tbaa !45
  %indvars.iv.next253.prol = add nuw nsw i64 %indvars.iv252.prol, 1 ; 2 uses
  %prol.iter522.next = add i64 %prol.iter522, 1   ; 2 uses
  %prol.iter522.cmp.not = icmp eq i64 %prol.iter522.next, %xtraiter520
  br i1 %prol.iter522.cmp.not, label %vec.epilog.scalar.ph489.prol.loopexit, label %vec.epilog.scalar.ph489.prol, !llvm.loop !36

vec.epilog.scalar.ph489.prol.loopexit:            ; preds = %vec.epilog.scalar.ph489.prol, %vec.epilog.scalar.ph489.preheader
  %indvars.iv252.unr = phi i64 [ %indvars.iv252.ph, %vec.epilog.scalar.ph489.preheader ], [ %indvars.iv.next253.prol, %vec.epilog.scalar.ph489.prol ]
  %i.nd = icmp ult i64 %i.my, 7
  br i1 %i.nd, label %._crit_edge212, label %vec.epilog.scalar.ph489

vec.epilog.scalar.ph489:                          ; preds = %vec.epilog.scalar.ph489.prol.loopexit, %vec.epilog.scalar.ph489
  %indvars.iv252 = phi i64 [ %indvars.iv.next253.7, %vec.epilog.scalar.ph489 ], [ %indvars.iv252.unr, %vec.epilog.scalar.ph489.prol.loopexit ] ; 11 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv252
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !45
  %gep297 = getelementptr [8 x i8], ptr %invariant.gep296, i64 %indvars.iv252 ; 2 uses
  %i.ng = load double, ptr %gep297, align 8, !tbaa !45
  %i.nh = fdiv double %i.nf, %i.ng
  store double %i.nh, ptr %gep297, align 8, !tbaa !45
  %i.ni = getelementptr [8 x i8], ptr %9, i64 %indvars.iv252
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !45
  %i.nk = getelementptr [8 x i8], ptr %invariant.gep296, i64 %indvars.iv252
  %gep297.1 = getelementptr i8, ptr %i.nk, i64 8  ; 2 uses
  %i.nl = load double, ptr %gep297.1, align 8, !tbaa !45
  %i.nm = fdiv double %i.nj, %i.nl
  store double %i.nm, ptr %gep297.1, align 8, !tbaa !45
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next253.1
  %i.no = load double, ptr %i.nn, align 8, !tbaa !45
  %gep297.2 = getelementptr [8 x i8], ptr %invariant.gep296, i64 %indvars.iv.next253.1 ; 2 uses
  %i.np = load double, ptr %gep297.2, align 8, !tbaa !45
  %i.nq = fdiv double %i.no, %i.np
  store double %i.nq, ptr %gep297.2, align 8, !tbaa !45
  %indvars.iv.next253.2 = add nuw nsw i64 %indvars.iv252, 3 ; 2 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next253.2
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !45
  %gep297.3 = getelementptr [8 x i8], ptr %invariant.gep296, i64 %indvars.iv.next253.2 ; 2 uses
  %i.nt = load double, ptr %gep297.3, align 8, !tbaa !45
  %i.nu = fdiv double %i.ns, %i.nt
  store double %i.nu, ptr %gep297.3, align 8, !tbaa !45
  %indvars.iv.next253.3 = add nuw nsw i64 %indvars.iv252, 4 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next253.3
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !45
  %gep297.4 = getelementptr [8 x i8], ptr %invariant.gep296, i64 %indvars.iv.next253.3 ; 2 uses
  %i.nx = load double, ptr %gep297.4, align 8, !tbaa !45
  %i.ny = fdiv double %i.nw, %i.nx
  store double %i.ny, ptr %gep297.4, align 8, !tbaa !45
  %indvars.iv.next253.4 = add nuw nsw i64 %indvars.iv252, 5 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next253.4
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !45
  %gep297.5 = getelementptr [8 x i8], ptr %invariant.gep296, i64 %indvars.iv.next253.4 ; 2 uses
  %i.ob = load double, ptr %gep297.5, align 8, !tbaa !45
  %i.oc = fdiv double %i.oa, %i.ob
  store double %i.oc, ptr %gep297.5, align 8, !tbaa !45
  %indvars.iv.next253.5 = add nuw nsw i64 %indvars.iv252, 6 ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next253.5
  %i.oe = load double, ptr %i.od, align 8, !tbaa !45
  %gep297.6 = getelementptr [8 x i8], ptr %invariant.gep296, i64 %indvars.iv.next253.5 ; 2 uses
  %i.of = load double, ptr %gep297.6, align 8, !tbaa !45
  %i.og = fdiv double %i.oe, %i.of
  store double %i.og, ptr %gep297.6, align 8, !tbaa !45
  %indvars.iv.next253.6 = add nuw nsw i64 %indvars.iv252, 7 ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next253.6
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !45
  %gep297.7 = getelementptr [8 x i8], ptr %invariant.gep296, i64 %indvars.iv.next253.6 ; 2 uses
  %i.oj = load double, ptr %gep297.7, align 8, !tbaa !45
  %i.ok = fdiv double %i.oi, %i.oj
  store double %i.ok, ptr %gep297.7, align 8, !tbaa !45
  %indvars.iv.next253.7 = add nuw nsw i64 %indvars.iv252, 8 ; 2 uses
  %exitcond256.not.7 = icmp eq i64 %indvars.iv.next253.7, %wide.trip.count255
  br i1 %exitcond256.not.7, label %._crit_edge212, label %vec.epilog.scalar.ph489, !llvm.loop !37

._crit_edge212:                                   ; preds = %vec.epilog.scalar.ph489.prol.loopexit, %vec.epilog.scalar.ph489, %middle.block485, %vec.epilog.middle.block499, %.lr.ph221
  %i.ol = getelementptr [8 x i8], ptr %i.h, i64 %.pre277
  %i.om = getelementptr i8, ptr %i.ol, i64 8
  %i.on = call double @dnrm2_(ptr noundef nonnull %0, ptr noundef %i.om, ptr noundef nonnull @c__1) #6 ; 11 uses
  %i.oo = load i32, ptr %0, align 4, !tbaa !43    ; 7 uses
  %.not170213 = icmp slt i32 %i.oo, 1
  %.pre275 = load i32, ptr %i.d, align 4, !tbaa !43 ; 4 uses
  br i1 %.not170213, label %._crit_edge217, label %iter.check439

iter.check439:                                    ; preds = %._crit_edge212
  %i.op = mul nsw i32 %.pre275, %i.f
  %i.oq = mul nsw i32 %.pre275, %i.k
  %i.or = sext i32 %i.op to i64                   ; 2 uses
  %i.os = sext i32 %i.oq to i64                   ; 2 uses
  %i.ot = add nuw i32 %i.oo, 1
  %wide.trip.count260 = zext i32 %i.ot to i64     ; 2 uses
  %invariant.gep298 = getelementptr [8 x i8], ptr %i.h, i64 %i.or ; 11 uses
  %invariant.gep300 = getelementptr [8 x i8], ptr %i.m, i64 %i.os ; 11 uses
  %i.ou = zext nneg i32 %i.oo to i64              ; 5 uses
  %min.iters.check422 = icmp ult i32 %i.oo, 4
  br i1 %min.iters.check422, label %vec.epilog.scalar.ph441.preheader, label %vector.memcheck423

vector.memcheck423:                               ; preds = %iter.check439
  %15 = add nsw i64 %i.os, %i.l
  %16 = shl nsw i64 %15, 3
  %17 = add i64 %16, %i.a
  %18 = add nsw i64 %i.or, %i.g
  %i.ov = shl nsw i64 %18, 3
  %i.ow = add i64 %i.ov, %i.b
  %19 = sub i64 %i.ow, %17
  %diff.check = icmp ugt i64 %19, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph441.preheader, label %vector.main.loop.iter.check424

vector.main.loop.iter.check424:                   ; preds = %vector.memcheck423
  %min.iters.check425 = icmp ult i32 %i.oo, 16
  br i1 %min.iters.check425, label %vec.epilog.ph443, label %vector.ph426

vector.ph426:                                     ; preds = %vector.main.loop.iter.check424
  %i.ox = and i64 %i.ou, 12
  %n.vec427 = and i64 %i.ou, 2147483632           ; 4 uses
  %i.oy = or disjoint i64 %n.vec427, 1
  %broadcast.splatinsert428 = insertelement <4 x double> poison, double %i.on, i64 0
  %broadcast.splat429 = shufflevector <4 x double> %broadcast.splatinsert428, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body430

vector.body430:                                   ; preds = %vector.ph426, %vector.body430
  %index431 = phi i64 [ 0, %vector.ph426 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.oz = or disjoint i64 %index431, 1            ; 2 uses
  %i.pa = getelementptr [8 x i8], ptr %invariant.gep298, i64 %i.oz ; 4 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 32
  %i.pc = getelementptr i8, ptr %i.pa, i64 64
  %i.pd = getelementptr i8, ptr %i.pa, i64 96
  %wide.load432 = load <4 x double>, ptr %i.pa, align 8, !tbaa !45
  %wide.load433 = load <4 x double>, ptr %i.pb, align 8, !tbaa !45
  %wide.load434 = load <4 x double>, ptr %i.pc, align 8, !tbaa !45
  %wide.load435 = load <4 x double>, ptr %i.pd, align 8, !tbaa !45
  %i.pe = fdiv <4 x double> %wide.load432, %broadcast.splat429
  %i.pf = fdiv <4 x double> %wide.load433, %broadcast.splat429
  %i.pg = fdiv <4 x double> %wide.load434, %broadcast.splat429
  %i.ph = fdiv <4 x double> %wide.load435, %broadcast.splat429
  %i.pi = getelementptr [8 x i8], ptr %invariant.gep300, i64 %i.oz ; 4 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 32
  %i.pk = getelementptr i8, ptr %i.pi, i64 64
  %i.pl = getelementptr i8, ptr %i.pi, i64 96
  store <4 x double> %i.pe, ptr %i.pi, align 8, !tbaa !45
  store <4 x double> %i.pf, ptr %i.pj, align 8, !tbaa !45
  store <4 x double> %i.pg, ptr %i.pk, align 8, !tbaa !45
  store <4 x double> %i.ph, ptr %i.pl, align 8, !tbaa !45
  %index.next436 = add nuw i64 %index431, 16      ; 2 uses
  %i.pm = icmp eq i64 %index.next436, %n.vec427
  br i1 %i.pm, label %middle.block437, label %vector.body430, !llvm.loop !38

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %n.vec427, %i.ou
  br i1 %cmp.n438, label %._crit_edge217, label %vec.epilog.iter.check440

vec.epilog.iter.check440:                         ; preds = %middle.block437
  %min.epilog.iters.check442 = icmp eq i64 %i.ox, 0
  br i1 %min.epilog.iters.check442, label %vec.epilog.scalar.ph441.preheader, label %vec.epilog.ph443, !prof !54

vec.epilog.ph443:                                 ; preds = %vector.main.loop.iter.check424, %vec.epilog.iter.check440
  %vec.epilog.resume.val444 = phi i64 [ %n.vec427, %vec.epilog.iter.check440 ], [ 0, %vector.main.loop.iter.check424 ]
  %n.vec445 = and i64 %i.ou, 2147483644           ; 3 uses
  %i.pn = or disjoint i64 %n.vec445, 1
  %broadcast.splatinsert446 = insertelement <4 x double> poison, double %i.on, i64 0
  %broadcast.splat447 = shufflevector <4 x double> %broadcast.splatinsert446, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body448

vec.epilog.vector.body448:                        ; preds = %vec.epilog.vector.body448, %vec.epilog.ph443
  %index449 = phi i64 [ %vec.epilog.resume.val444, %vec.epilog.ph443 ], [ %index.next451, %vec.epilog.vector.body448 ] ; 2 uses
  %i.po = or disjoint i64 %index449, 1            ; 2 uses
  %i.pp = getelementptr [8 x i8], ptr %invariant.gep298, i64 %i.po
  %wide.load450 = load <4 x double>, ptr %i.pp, align 8, !tbaa !45
  %i.pq = fdiv <4 x double> %wide.load450, %broadcast.splat447
  %i.pr = getelementptr [8 x i8], ptr %invariant.gep300, i64 %i.po
  store <4 x double> %i.pq, ptr %i.pr, align 8, !tbaa !45
  %index.next451 = add nuw i64 %index449, 4       ; 2 uses
  %i.ps = icmp eq i64 %index.next451, %n.vec445
  br i1 %i.ps, label %vec.epilog.middle.block452, label %vec.epilog.vector.body448, !llvm.loop !39

vec.epilog.middle.block452:                       ; preds = %vec.epilog.vector.body448
  %cmp.n453 = icmp eq i64 %n.vec445, %i.ou
  br i1 %cmp.n453, label %._crit_edge217, label %vec.epilog.scalar.ph441.preheader

vec.epilog.scalar.ph441.preheader:                ; preds = %iter.check439, %vector.memcheck423, %vec.epilog.iter.check440, %vec.epilog.middle.block452
  %indvars.iv257.ph = phi i64 [ 1, %iter.check439 ], [ 1, %vector.memcheck423 ], [ %i.oy, %vec.epilog.iter.check440 ], [ %i.pn, %vec.epilog.middle.block452 ] ; 4 uses
  %i.pt = sub nsw i64 %wide.trip.count260, %indvars.iv257.ph
  %i.pu = zext nneg i32 %i.oo to i64
  %i.pv = sub nsw i64 %i.pu, %indvars.iv257.ph
  %xtraiter523 = and i64 %i.pt, 7                 ; 2 uses
  %lcmp.mod524.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %vec.epilog.scalar.ph441.prol.loopexit, label %vec.epilog.scalar.ph441.prol

vec.epilog.scalar.ph441.prol:                     ; preds = %vec.epilog.scalar.ph441.preheader, %vec.epilog.scalar.ph441.prol
  %indvars.iv257.prol = phi i64 [ %indvars.iv.next258.prol, %vec.epilog.scalar.ph441.prol ], [ %indvars.iv257.ph, %vec.epilog.scalar.ph441.preheader ] ; 3 uses
  %prol.iter525 = phi i64 [ %prol.iter525.next, %vec.epilog.scalar.ph441.prol ], [ 0, %vec.epilog.scalar.ph441.preheader ]
  %gep299.prol = getelementptr [8 x i8], ptr %invariant.gep298, i64 %indvars.iv257.prol
  %i.pw = load double, ptr %gep299.prol, align 8, !tbaa !45
  %i.px = fdiv double %i.pw, %i.on
  %gep301.prol = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv257.prol
  store double %i.px, ptr %gep301.prol, align 8, !tbaa !45
  %indvars.iv.next258.prol = add nuw nsw i64 %indvars.iv257.prol, 1 ; 2 uses
  %prol.iter525.next = add i64 %prol.iter525, 1   ; 2 uses
  %prol.iter525.cmp.not = icmp eq i64 %prol.iter525.next, %xtraiter523
  br i1 %prol.iter525.cmp.not, label %vec.epilog.scalar.ph441.prol.loopexit, label %vec.epilog.scalar.ph441.prol, !llvm.loop !40

vec.epilog.scalar.ph441.prol.loopexit:            ; preds = %vec.epilog.scalar.ph441.prol, %vec.epilog.scalar.ph441.preheader
  %indvars.iv257.unr = phi i64 [ %indvars.iv257.ph, %vec.epilog.scalar.ph441.preheader ], [ %indvars.iv.next258.prol, %vec.epilog.scalar.ph441.prol ]
  %i.py = icmp ult i64 %i.pv, 7
  br i1 %i.py, label %._crit_edge217, label %vec.epilog.scalar.ph441

vec.epilog.scalar.ph441:                          ; preds = %vec.epilog.scalar.ph441.prol.loopexit, %vec.epilog.scalar.ph441
  %indvars.iv257 = phi i64 [ %indvars.iv.next258.7, %vec.epilog.scalar.ph441 ], [ %indvars.iv257.unr, %vec.epilog.scalar.ph441.prol.loopexit ] ; 10 uses
  %gep299 = getelementptr [8 x i8], ptr %invariant.gep298, i64 %indvars.iv257
  %i.pz = load double, ptr %gep299, align 8, !tbaa !45
  %i.qa = fdiv double %i.pz, %i.on
  %gep301 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv257
  store double %i.qa, ptr %gep301, align 8, !tbaa !45
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %gep299.1 = getelementptr [8 x i8], ptr %invariant.gep298, i64 %indvars.iv.next258
  %i.qb = load double, ptr %gep299.1, align 8, !tbaa !45
  %i.qc = fdiv double %i.qb, %i.on
  %gep301.1 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next258
  store double %i.qc, ptr %gep301.1, align 8, !tbaa !45
  %indvars.iv.next258.1 = add nuw nsw i64 %indvars.iv257, 2 ; 2 uses
  %gep299.2 = getelementptr [8 x i8], ptr %invariant.gep298, i64 %indvars.iv.next258.1
  %i.qd = load double, ptr %gep299.2, align 8, !tbaa !45
  %i.qe = fdiv double %i.qd, %i.on
  %gep301.2 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next258.1
  store double %i.qe, ptr %gep301.2, align 8, !tbaa !45
  %indvars.iv.next258.2 = add nuw nsw i64 %indvars.iv257, 3 ; 2 uses
  %gep299.3 = getelementptr [8 x i8], ptr %invariant.gep298, i64 %indvars.iv.next258.2
  %i.qf = load double, ptr %gep299.3, align 8, !tbaa !45
  %i.qg = fdiv double %i.qf, %i.on
  %gep301.3 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next258.2
  store double %i.qg, ptr %gep301.3, align 8, !tbaa !45
  %indvars.iv.next258.3 = add nuw nsw i64 %indvars.iv257, 4 ; 2 uses
  %gep299.4 = getelementptr [8 x i8], ptr %invariant.gep298, i64 %indvars.iv.next258.3
  %i.qh = load double, ptr %gep299.4, align 8, !tbaa !45
  %i.qi = fdiv double %i.qh, %i.on
  %gep301.4 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next258.3
  store double %i.qi, ptr %gep301.4, align 8, !tbaa !45
  %indvars.iv.next258.4 = add nuw nsw i64 %indvars.iv257, 5 ; 2 uses
  %gep299.5 = getelementptr [8 x i8], ptr %invariant.gep298, i64 %indvars.iv.next258.4
  %i.qj = load double, ptr %gep299.5, align 8, !tbaa !45
  %i.qk = fdiv double %i.qj, %i.on
  %gep301.5 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next258.4
  store double %i.qk, ptr %gep301.5, align 8, !tbaa !45
  %indvars.iv.next258.5 = add nuw nsw i64 %indvars.iv257, 6 ; 2 uses
  %gep299.6 = getelementptr [8 x i8], ptr %invariant.gep298, i64 %indvars.iv.next258.5
  %i.ql = load double, ptr %gep299.6, align 8, !tbaa !45
  %i.qm = fdiv double %i.ql, %i.on
  %gep301.6 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next258.5
  store double %i.qm, ptr %gep301.6, align 8, !tbaa !45
  %indvars.iv.next258.6 = add nuw nsw i64 %indvars.iv257, 7 ; 2 uses
  %gep299.7 = getelementptr [8 x i8], ptr %invariant.gep298, i64 %indvars.iv.next258.6
  %i.qn = load double, ptr %gep299.7, align 8, !tbaa !45
  %i.qo = fdiv double %i.qn, %i.on
  %gep301.7 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next258.6
  store double %i.qo, ptr %gep301.7, align 8, !tbaa !45
  %indvars.iv.next258.7 = add nuw nsw i64 %indvars.iv257, 8 ; 2 uses
  %exitcond261.not.7 = icmp eq i64 %indvars.iv.next258.7, %wide.trip.count260
  br i1 %exitcond261.not.7, label %._crit_edge217, label %vec.epilog.scalar.ph441, !llvm.loop !41

._crit_edge217:                                   ; preds = %vec.epilog.scalar.ph441.prol.loopexit, %vec.epilog.scalar.ph441, %middle.block437, %vec.epilog.middle.block452, %._crit_edge212
  %i.qp = add nsw i32 %.pre275, 1                 ; 2 uses
  store i32 %i.qp, ptr %i.d, align 4, !tbaa !43
  %i.qq = load i32, ptr %i.c, align 4, !tbaa !43
  %.not168.not = icmp slt i32 %.pre275, %i.qq
  br i1 %.not168.not, label %.lr.ph221, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %.preheader.preheader, %.lr.ph191, %._crit_edge217, %._crit_edge225, %bb.k, %._crit_edge207, %bb.h, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamc3_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaed4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_1
