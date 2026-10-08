Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/sampling_job?download=true
inline.NumInlined: 276
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3ozz9animation11SamplingJob7Context4StepERKNS0_9AnimationEf:bb.a
  store ptr %1, ptr %0, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.e = phi float [ %.pre, %._crit_edge ], [ 0.000000e+00, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.f, align 8, !tbaa !43
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3ozz9animation12_GLOBAL__N_111UpdateCacheEffmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERNS0_11SamplingJob7Context5CacheE(float noundef %0, float noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"struct.ozz::span.9", align 8      ; 5 uses
  %6 = alloca %"struct.ozz::span.3", align 8      ; 6 uses
  %.tr = trunc nsw i64 %2 to i32                  ; 2 uses
  %i.a = shl i32 %.tr, 2                          ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124  ; 4 uses
  %i.h = fsub float %0, %1                        ; 2 uses
  %i.i = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = load float, ptr %i.k, align 8, !tbaa !55
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fcmp ogt float %i.j, %i.m
  br i1 %i.n, label %bb.c, label %.thread3

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !125
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = fcmp olt float %i.h, 0.000000e+00
  %or.cond = or i1 %i.s, %i.i
  br i1 %or.cond, label %.thread5, label %.thread3

.thread5:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.t = zext i32 %i.a to i64
  %i.u = load ptr, ptr %4, align 8, !tbaa !49
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = load float, ptr %i.v, align 8, !tbaa !55
  %i.x = fdiv float %0, %i.w
  %i.y = fadd float %i.x, 5.000000e-01
  %i.z = fptosi float %i.y to i32                 ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.f, label %.thread3

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ab = zext i32 %i.a to i64                    ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  store ptr %i.ac, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = shl nuw i32 %i.z, 1
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !58
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !127
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  store ptr %i.aq, ptr %5, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.ar, align 8
  %i.as = call { ptr, i64 } @_ZN3ozz15DecodeGV4StreamERKNS_4spanIKhEERKNS0_IjEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.af
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !58
  %i.ax = add i32 %i.aw, 1
  br label %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit

bb.h:                                             ; preds = %.thread5, %bb.f
  %i.ay = phi ptr [ %i.u, %.thread5 ], [ %i.ac, %bb.f ] ; 3 uses
  %i.az = phi i64 [ %i.t, %.thread5 ], [ %i.ab, %bb.f ] ; 8 uses
  %.not24.i = icmp eq i32 %i.a, 0
  br i1 %.not24.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp samesign ult i64 %i.az, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp samesign ult i64 %i.az, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.az, 24
  %n.vec = and i64 %i.az, 4294967264              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op57 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op59 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.bb = add <8 x i32> %broadcast.splat, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass58 = add <8 x i32> %vec.ind, %invariant.op57
  %.reass60 = add <8 x i32> %vec.ind, %invariant.op59
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  store <8 x i32> %i.bb, ptr %i.bc, align 4, !tbaa !58
  store <8 x i32> %.reass, ptr %i.bd, align 4, !tbaa !58
  store <8 x i32> %.reass58, ptr %i.be, align 4, !tbaa !58
  store <8 x i32> %.reass60, ptr %i.bf, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec37 = and i64 %i.az, 4294967288            ; 3 uses
  %broadcast.splatinsert38 = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bh = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert40 = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat41 = shufflevector <8 x i32> %broadcast.splatinsert40, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat41, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind43 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next45, %vec.epilog.vector.body ] ; 2 uses
  %i.bi = add <8 x i32> %broadcast.splat39, %vec.ind43
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index42
  store <8 x i32> %i.bi, ptr %i.bj, align 4, !tbaa !58
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %vec.ind.next45 = add <8 x i32> %vec.ind43, splat (i32 8)
  %i.bk = icmp eq i64 %index.next44, %n.vec37
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.az, %n.vec37
  br i1 %cmp.n46, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.bl = shl i32 %.tr, 3
  br label %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bm = trunc nuw i64 %indvars.iv.i to i32
  %i.bn = add i32 %i.a, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.az
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !114

_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit: ; preds = %bb.g, %._crit_edge.i
  %.020.i = phi i32 [ %i.ax, %bb.g ], [ %i.bl, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.bq = add nsw i64 %2, 7                       ; 2 uses
  %i.br = lshr i64 %i.bq, 3                       ; 2 uses
  %i.bs = add nsw i64 %i.br, -1                   ; 4 uses
  %.not.i76 = icmp eq i64 %i.bs, 0
  br i1 %.not.i76, label %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit, label %.lr.ph.i77.preheader

.lr.ph.i77.preheader:                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit
  %i.bt = add nsw i64 %i.br, -2
  %xtraiter = and i64 %i.bs, 3                    ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 3
  br i1 %i.bu, label %.lr.ph.i77.epil.preheader, label %.lr.ph.i77.preheader.new

.lr.ph.i77.preheader.new:                         ; preds = %.lr.ph.i77.preheader
  %unroll_iter = and i64 %i.bs, -4
  br label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.i77, %.lr.ph.i77.preheader.new
  %.09.i = phi i64 [ 0, %.lr.ph.i77.preheader.new ], [ %i.cg, %.lr.ph.i77 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i77.preheader.new ], [ %niter.next.3, %.lr.ph.i77 ]
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.09.i
  store i8 -1, ptr %i.bw, align 1, !tbaa !56
  %i.bx = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.09.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 -1, ptr %i.bz, align 1, !tbaa !56
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.09.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store i8 -1, ptr %i.cc, align 1, !tbaa !56
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.09.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  store i8 -1, ptr %i.cf, align 1, !tbaa !56
  %i.cg = add nuw i64 %.09.i, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa, label %.lr.ph.i77, !llvm.loop !115

_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i77
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit, label %.lr.ph.i77.epil.preheader

.lr.ph.i77.epil.preheader:                        ; preds = %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa, %.lr.ph.i77.preheader
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i77.preheader ], [ %i.cg, %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i77.epil

.lr.ph.i77.epil:                                  ; preds = %.lr.ph.i77.epil, %.lr.ph.i77.epil.preheader
  %.09.i.epil = phi i64 [ %i.cj, %.lr.ph.i77.epil ], [ %.09.i.epil.init, %.lr.ph.i77.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i77.epil ], [ 0, %.lr.ph.i77.epil.preheader ]
  %i.ch = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.09.i.epil
  store i8 -1, ptr %i.ci, align 1, !tbaa !56
  %i.cj = add nuw i64 %.09.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit, label %.lr.ph.i77.epil, !llvm.loop !116

_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit: ; preds = %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit.loopexit.unr-lcssa, %.lr.ph.i77.epil, %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit
  %i.ck = and i64 %i.bq, 4294967288
  %i.cl = sub nsw i64 %i.ck, %2
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = lshr i32 255, %i.cm
  %i.co = trunc nuw i32 %i.cn to i8
  %i.cp = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bs
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !56
  br label %.thread3

.thread3:                                         ; preds = %bb.d, %bb.e, %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit, %bb.b
  %.1 = phi i32 [ %i.g, %bb.b ], [ %.020.i, %_ZN3ozz9animation12_GLOBAL__N_112OutdateCacheERKNS_4spanIhEEm.exit ], [ %i.g, %bb.e ], [ %i.g, %bb.d ] ; 3 uses
  %i.cr = icmp ult i32 %.1, %i.e
  br i1 %i.cr, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.thread3
  %.not.i80 = icmp ugt i64 %.8.val, 255
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ct = zext i32 %.1 to i64
  %wide.trip.count = and i64 %i.d, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit
  %indvars.iv = phi i64 [ %i.ct, %.lr.ph ], [ %indvars.iv.next, %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit ] ; 3 uses
  %.06511 = phi i32 [ 0, %.lr.ph ], [ %.1.i, %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit ] ; 3 uses
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !60
  %i.cx = zext i16 %i.cw to i32
  %i.cy = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.cz = sub i32 %i.cy, %i.cx                    ; 3 uses
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %.val73 = load ptr, ptr %3, align 8             ; 2 uses
  br i1 %.not.i80, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %.val73, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !56
  %i.dd = zext i8 %i.dc to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit

bb.k:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.val73, i64 %i.da
  %i.df = load i16, ptr %i.de, align 2, !tbaa !60
  %i.dg = zext i16 %i.df to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit

_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit: ; preds = %bb.j, %bb.k
  %.pn.i = phi i64 [ %i.dd, %bb.j ], [ %i.dg, %bb.k ]
  %.0.in.i = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %.pn.i
  %.0.i = load float, ptr %.0.in.i, align 4, !tbaa !61
  %i.dh = fcmp ugt float %.0.i, %0
  br i1 %i.dh, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit
  %i.di = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %.not4.i = icmp ult i32 %.06511, %i.a
  br i1 %.not4.i, label %.lr.ph.preheader.i, label %.critedge.i.preheader

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.dj = zext i32 %.06511 to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i85 = phi i64 [ %i.dj, %.lr.ph.preheader.i ], [ %indvars.iv.next.i86, %bb.m ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i85
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !58
  %i.dm = icmp eq i32 %i.dl, %i.cz
  br i1 %i.dm, label %.loopexit.loopexit6.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i84
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i86 to i32
  %exitcond.not.i87 = icmp eq i32 %i.a, %lftr.wideiv.i
  br i1 %exitcond.not.i87, label %.critedge.i.preheader, label %.lr.ph.i84, !llvm.loop !117

.critedge.i.preheader:                            ; preds = %bb.m, %bb.l
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %.critedge.i
  %.0.i83 = phi i32 [ %i.dr, %.critedge.i ], [ 0, %.critedge.i.preheader ] ; 3 uses
  %i.dn = zext i32 %.0.i83 to i64                 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !58
  %i.dq = icmp eq i32 %i.dp, %i.cz
  %i.dr = add i32 %.0.i83, 1
  br i1 %i.dq, label %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit, label %.critedge.i, !llvm.loop !118

.loopexit.loopexit6.i:                            ; preds = %.lr.ph.i84
  %i.ds = trunc nuw i64 %indvars.iv.i85 to i32
  br label %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit

_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit: ; preds = %.critedge.i, %.loopexit.loopexit6.i
  %.pre-phi20 = phi i64 [ %indvars.iv.i85, %.loopexit.loopexit6.i ], [ %i.dn, %.critedge.i ]
  %.1.i = phi i32 [ %i.ds, %.loopexit.loopexit6.i ], [ %.0.i83, %.critedge.i ] ; 4 uses
  %i.dt = lshr i32 %.1.i, 2
  %i.du = and i32 %i.dt, 7
  %i.dv = shl nuw nsw i32 1, %i.du
  %i.dw = lshr i32 %.1.i, 5
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.cs, align 8, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !56
  %i.eb = trunc nuw i32 %i.dv to i8
  %i.ec = or i8 %i.ea, %i.eb
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !56
  %i.ed = load ptr, ptr %4, align 8, !tbaa !49
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.pre-phi20
  store i32 %i.cy, ptr %i.ee, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !119

.critedge:                                        ; preds = %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit, %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit, %.thread3
  %.065.lcssa = phi i32 [ 0, %.thread3 ], [ %.1.i, %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit ], [ %.06511, %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit ]
  %.2.lcssa = phi i32 [ %.1, %.thread3 ], [ %i.e, %_ZN3ozz9animation12_GLOBAL__N_112TrackForwardENS_4spanIKjEERKNS2_IKtEEjjj.exit ], [ %i.cy, %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit ]
  %.not.i88 = icmp ugt i64 %.8.val, 255
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !133
  br label %bb.n

bb.n:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_113TrackBackwardENS_4spanIKjEEjjj.exit, %.critedge
  %i.eg = phi ptr [ %.pre, %.critedge ], [ %i.fz, %_ZN3ozz9animation12_GLOBAL__N_113TrackBackwardENS_4spanIKjEEjjj.exit ]
  %.166 = phi i32 [ %.065.lcssa, %.critedge ], [ %.1.i97, %_ZN3ozz9animation12_GLOBAL__N_113TrackBackwardENS_4spanIKjEEjjj.exit ] ; 3 uses
  %.3 = phi i32 [ %.2.lcssa, %.critedge ], [ %i.eh, %_ZN3ozz9animation12_GLOBAL__N_113TrackBackwardENS_4spanIKjEEjjj.exit ] ; 2 uses
  %i.eh = add i32 %.3, -1                         ; 6 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !60
  %i.el = zext i16 %i.ek to i32
  %i.em = sub i32 %i.eh, %i.el
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %.val69 = load ptr, ptr %3, align 8             ; 2 uses
  br i1 %.not.i88, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !56
  %i.eq = zext i8 %i.ep to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit92

bb.p:                                             ; preds = %bb.n
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.val69, i64 %i.en
  %i.es = load i16, ptr %i.er, align 2, !tbaa !60
  %i.et = zext i16 %i.es to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit92

_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit92: ; preds = %bb.o, %bb.p
  %.pn.i89 = phi i64 [ %i.eq, %bb.o ], [ %i.et, %bb.p ]
  %.0.in.i90 = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %.pn.i89
  %.0.i91 = load float, ptr %.0.in.i90, align 4, !tbaa !61
  %i.eu = fcmp ogt float %.0.i91, %0
  br i1 %i.eu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit92
  %i.ev = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %i.ew = zext i32 %.166 to i64                   ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !58
  %i.ez = icmp eq i32 %i.ey, %i.eh
  br i1 %i.ez, label %_ZN3ozz9animation12_GLOBAL__N_113TrackBackwardENS_4spanIKjEEjjj.exit, label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %bb.q
  %i.fa = icmp eq i32 %.166, 0
  br i1 %i.fa, label %.preheader.i.preheader, label %.lr.ph35

.preheader.i.preheader:                           ; preds = %.lr.ph.i95, %.lr.ph.i95.preheader
  br label %.preheader.i

.lr.ph.i95:                                       ; preds = %.lr.ph35
  %i.fb = icmp eq i64 %i.fc, 0
  br i1 %i.fb, label %.preheader.i.preheader, label %.lr.ph35, !llvm.loop !120

.lr.ph35:                                         ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95
  %indvars.iv.i9634 = phi i64 [ %i.fc, %.lr.ph.i95 ], [ %i.ew, %.lr.ph.i95.preheader ]
  %i.fc = add nsw i64 %indvars.iv.i9634, -1       ; 5 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !58
  %i.ff = icmp eq i32 %i.fe, %i.eh
  br i1 %i.ff, label %.thread.loopexit21.i, label %.lr.ph.i95, !llvm.loop !120

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.0.in.i98 = phi i32 [ %.0.i99, %.preheader.i ], [ %i.a, %.preheader.i.preheader ]
  %.0.i99 = add i32 %.0.in.i98, -1                ; 3 uses
  %i.fg = zext i32 %.0.i99 to i64                 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !58
  %i.fj = icmp eq i32 %i.fi, %i.eh
  br i1 %i.fj, label %_ZN3ozz9animation12_GLOBAL__N_113TrackBackwardENS_4spanIKjEEjjj.exit, label %.preheader.i, !llvm.loop !121

.thread.loopexit21.i:                             ; preds = %.lr.ph35
  %i.fk = trunc nuw i64 %i.fc to i32
  br label %_ZN3ozz9animation12_GLOBAL__N_113TrackBackwardENS_4spanIKjEEjjj.exit

_ZN3ozz9animation12_GLOBAL__N_113TrackBackwardENS_4spanIKjEEjjj.exit: ; preds = %.preheader.i, %bb.q, %.thread.loopexit21.i
  %.pre-phi = phi i64 [ %i.fc, %.thread.loopexit21.i ], [ %i.ew, %bb.q ], [ %i.fg, %.preheader.i ]
  %.1.i97 = phi i32 [ %i.fk, %.thread.loopexit21.i ], [ %.166, %bb.q ], [ %.0.i99, %.preheader.i ] ; 3 uses
  %i.fl = lshr i32 %.1.i97, 2
  %i.fm = and i32 %i.fl, 7
  %i.fn = shl nuw nsw i32 1, %i.fm
  %i.fo = lshr i32 %.1.i97, 5
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = load ptr, ptr %i.ef, align 8, !tbaa !47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fp ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !56
  %i.ft = trunc nuw i32 %i.fn to i8
  %i.fu = or i8 %i.fs, %i.ft
  store i8 %i.fu, ptr %i.fr, align 1, !tbaa !56
  %i.fv = load ptr, ptr %4, align 8, !tbaa !49
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.pre-phi ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !58 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !133 ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.fy
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !60
  %i.gc = zext i16 %i.gb to i32
  %i.gd = sub i32 %i.fx, %i.gc
  store i32 %i.gd, ptr %i.fw, align 4, !tbaa !58
  br label %bb.n, !llvm.loop !122

bb.r:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_18KeyRatioERKNS_4spanIKfEERKNS2_IKhEEm.exit92
  store i32 %.3, ptr %i.f, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7ContextC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((0, 60), (64, 100), (104, 140), (144, 192)) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %0, i8 0, i64 60, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7Context10InvalidateEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((0, 12), (56, 60), (96, 100), (136, 140)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7ContextC2Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((0, 60), (64, 100), (104, 140), (144, 192)) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  tail call void @_ZN3ozz9animation11SamplingJob7Context6ResizeEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7Context6ResizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((0, 16), (24, 60), (64, 100), (104, 140), (144, 192)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !46
  %i.e = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.g), !inline_history !67
  store ptr null, ptr %i.f, align 8, !tbaa !64
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.l = add nuw nsw i32 %i.k, 3
  %i.m = lshr i32 %i.l, 2                         ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !41
  %i.o = zext nneg i32 %i.m to i64                ; 10 uses
  %i.p = add nuw nsw i64 %i.o, 7
  %i.q = lshr i64 %i.p, 3                         ; 7 uses
  %i.r = mul nuw nsw i64 %i.o, 464
  %i.s = mul nuw nsw i64 %i.q, 3
  %i.t = add nuw nsw i64 %i.s, %i.r
  %i.u = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.t, i64 noundef 16) ; 4 uses
  store ptr %i.y, ptr %i.f, align 8, !tbaa !64
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit, label %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32

_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32: ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %i.o, 7               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.o, ptr %i.ab, align 8, !tbaa !134
  %.idx.i21 = mul nuw nsw i64 %i.o, 160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i21 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i ; 2 uses
  %.idx.i34 = shl nuw nsw i64 %i.o, 4             ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i34 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i34 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i34
  br label %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit52

_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.ai, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.o, ptr %i.aj, align 8, !tbaa !134
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.ak, align 8, !tbaa !63
  br label %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit52

_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit52: ; preds = %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32
  %.sink153 = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ac, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %.sink152 = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ae, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %.sink = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.af, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %.sroa.086.5 = phi ptr [ %i.y, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ah, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ] ; 2 uses
  %.sroa.04.0.i49 = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ag, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %i.al = shl nuw nsw i64 %i.o, 2                 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.o, ptr %i.am, align 8, !tbaa !135
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sink153, ptr %i.an, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.o, ptr %i.ao, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink152, ptr %i.ap, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sink, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.al, ptr %i.as, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.04.0.i49, ptr %i.at, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.al, ptr %i.au, align 8, !tbaa !50
  %.not.i53 = icmp eq i64 %i.q, 0                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.086.5, i64 %i.q ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.q
  %.sroa.086.5.sink = select i1 %.not.i53, ptr null, ptr %.sroa.086.5
  %.sink154 = select i1 %.not.i53, ptr null, ptr %i.av
  %.sroa.04.0.i66 = select i1 %.not.i53, ptr null, ptr %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.086.5.sink, ptr %i.ax, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.q, ptr %i.ay, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sink154, ptr %i.az, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.q, ptr %i.ba, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.04.0.i66, ptr %i.bb, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.q, ptr %i.bc, align 8, !tbaa !48
end_hunk_0
