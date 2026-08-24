Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__get_conservative_extents:bb.a
  %i.ff = and <4 x i32> %i.fe, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fg = bitcast <4 x i32> %i.ff to <4 x float>
  %foldExtExtBinop181 = fadd <4 x float> %i.fc, %i.fg
  %i.fh = extractelement <4 x float> %foldExtExtBinop181, i64 0
  %i.fi = fadd float %i.ey, -5.000000e-01
  %i.fj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.fi, i64 0 ; 2 uses
  %i.fk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.fj)
  %i.fl = sitofp <4 x i32> %i.fk to <4 x float>   ; 2 uses
  %i.fm = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.fj, <4 x float> %i.fl, i8 1)
  %i.fn = bitcast <4 x float> %i.fm to <4 x i32>
  %i.fo = and <4 x i32> %i.fn, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fp = bitcast <4 x i32> %i.fo to <4 x float>
  %foldExtExtBinop183 = fadd <4 x float> %i.fl, %i.fp
  %i.fq = extractelement <4 x float> %foldExtExtBinop183, i64 0
  %i.fr = fptosi float %i.fq to i32
  %spec.select.i135 = tail call i32 @llvm.smin.i32(i32 %i.fr, i32 %i.eq)
  %i.fs = fptosi float %i.fh to i32
  %spec.store.select.i136 = tail call i32 @llvm.smax.i32(i32 %i.fs, i32 0)
  %i.ft = icmp sgt i32 %spec.store.select.i136, %spec.select.i135
  br i1 %i.ft, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.2156, ptr %i.dg, align 4, !tbaa !39
  %i.fu = add nsw i32 %.2156, 1
  %.not111.not = icmp slt i32 %.2156, %i.eo
  br i1 %.not111.not, label %bb.f, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f, %.thread, %stbir__calculate_in_pixel_range.exit121
  %.pr = load i32, ptr %i.i, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.a
  %i.fv = phi i32 [ %.pr, %thread-pre-split ], [ %i.j, %bb.a ]
  %i.fw = icmp eq i32 %i.fv, 2
  %i.fx = load i32, ptr %1, align 4, !tbaa !36    ; 5 uses
  br i1 %i.fw, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.j, label %thread-pre-split149

bb.j:                                             ; preds = %bb.i
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !39 ; 2 uses
  %.not113 = icmp slt i32 %i.ga, %i.h
  br i1 %.not113, label %thread-pre-split149.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %reass.sub = sub i32 %i.ga, %i.h
  %i.gb = add i32 %reass.sub, 17
  %.not114 = icmp slt i32 %i.gb, %i.fx
  br i1 %.not114, label %thread-pre-split149.thread, label %.thread151

.thread151:                                       ; preds = %bb.k
  store i32 0, ptr %1, align 4, !tbaa !36
  br label %thread-pre-split149.thread

thread-pre-split149:                              ; preds = %bb.i
  %i.gc = icmp slt i32 %i.fx, 0
  br i1 %i.gc, label %bb.l, label %thread-pre-split149.thread

bb.l:                                             ; preds = %thread-pre-split149
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !39 ; 2 uses
  %i.gf = add nsw i32 %i.h, -1                    ; 2 uses
  %i.gg = icmp slt i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.m, label %thread-pre-split149.thread

bb.m:                                             ; preds = %bb.l
  %i.gh = add i32 %i.h, -17
  %i.gi = add i32 %i.gh, %i.fx
  %.not115 = icmp sgt i32 %i.gi, %i.ge
  br i1 %.not115, label %thread-pre-split149.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !39
  br label %thread-pre-split149.thread

bb.o:                                             ; preds = %bb.h
  %i.gj = icmp slt i32 %i.fx, 0
  br i1 %i.gj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %1, align 4, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !39
  %.not112 = icmp slt i32 %i.gl, %i.h
  br i1 %.not112, label %thread-pre-split149.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gm = add nsw i32 %i.h, -1
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !39
  br label %thread-pre-split149.thread

thread-pre-split149.thread:                       ; preds = %bb.j, %bb.k, %.thread151, %bb.m, %bb.n, %bb.q, %bb.r, %thread-pre-split149, %bb.l
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbir__get_split_info(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %bb.a
  %.not78 = icmp eq i32 %5, 0
  %i.b = mul nsw i32 %3, 3
  %i.c = sub nsw i32 0, %3                        ; 4 uses
  %i.d = add nsw i32 %4, %3                       ; 4 uses
  %wide.trip.count86 = zext nneg i32 %1 to i64    ; 3 uses
  br i1 %.not78, label %.lr.ph76.split.us.preheader, label %.lr.ph76.split

.lr.ph76.split.us.preheader:                      ; preds = %.lr.ph76
  %xtraiter = and i64 %wide.trip.count86, 1
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %.lr.ph76.split.us.epil.preheader, label %.lr.ph76.split.us.preheader.new

.lr.ph76.split.us.preheader.new:                  ; preds = %.lr.ph76.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count86, 2147483646
  br label %.lr.ph76.split.us

.lr.ph76.split.us:                                ; preds = %.lr.ph76.split.us, %.lr.ph76.split.us.preheader.new
  %indvars.iv83 = phi i64 [ 0, %.lr.ph76.split.us.preheader.new ], [ %indvars.iv.next84.1, %.lr.ph76.split.us ] ; 4 uses
  %.05674.us = phi i32 [ %2, %.lr.ph76.split.us.preheader.new ], [ %i.w, %.lr.ph76.split.us ] ; 2 uses
  %.05773.us = phi i32 [ 0, %.lr.ph76.split.us.preheader.new ], [ %i.u, %.lr.ph76.split.us ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph76.split.us.preheader.new ], [ %niter.next.1, %.lr.ph76.split.us ]
  %i.f = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv83 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %.05773.us, ptr %i.g, align 4, !tbaa !957
  %i.h = trunc i64 %indvars.iv83 to i32
  %i.i = sub i32 %1, %i.h
  %i.j = sdiv i32 %.05674.us, %i.i                ; 2 uses
  %i.k = add nsw i32 %i.j, %.05773.us             ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.k, ptr %i.l, align 8, !tbaa !958
  %i.m = sub nsw i32 %.05674.us, %i.j             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.c, ptr %i.n, align 4, !tbaa !966
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.d, ptr %i.o, align 8, !tbaa !967
  %indvars.iv.next84 = or disjoint i64 %indvars.iv83, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv.next84 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 %i.k, ptr %i.q, align 4, !tbaa !957
  %i.r = trunc i64 %indvars.iv.next84 to i32
  %i.s = sub i32 %1, %i.r
  %i.t = sdiv i32 %i.m, %i.s                      ; 2 uses
  %i.u = add nsw i32 %i.t, %i.k                   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.u, ptr %i.v, align 8, !tbaa !958
  %i.w = sub nsw i32 %i.m, %i.t                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 %i.c, ptr %i.x, align 4, !tbaa !966
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 %i.d, ptr %i.y, align 8, !tbaa !967
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge77.loopexit.unr-lcssa, label %.lr.ph76.split.us, !llvm.loop !985

.lr.ph76.split:                                   ; preds = %.lr.ph76, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph76 ] ; 4 uses
  %.05674 = phi i32 [ %i.au, %bb.d ], [ %2, %.lr.ph76 ] ; 2 uses
  %.05773 = phi i32 [ %i.ae, %bb.d ], [ 0, %.lr.ph76 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 2 uses
  store i32 %.05773, ptr %i.aa, align 4, !tbaa !957
  %i.ab = trunc i64 %indvars.iv to i32
  %i.ac = sub i32 %1, %i.ab
  %i.ad = sdiv i32 %.05674, %i.ac                 ; 3 uses
  %i.ae = add nsw i32 %i.ad, %.05773              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !958
  %.not79 = icmp eq i64 %indvars.iv, 0
  br i1 %.not79, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph76.split
  %i.ag = sext i32 %.05773 to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ag ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.b) ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36 ; 2 uses
  %.not65 = icmp slt i32 %spec.select, 1
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aj = phi i32 [ %i.ap, %bb.c ], [ %i.ai, %bb.b ] ; 2 uses
  %.069 = phi ptr [ %i.ak, %bb.c ], [ %i.ah, %bb.b ]
  %.05268 = phi i32 [ %spec.select64, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.05367 = phi i32 [ %i.ao, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.069, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36 ; 3 uses
  %i.am = icmp sgt i32 %i.al, %i.ai
  br i1 %i.am, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.an = icmp slt i32 %i.al, %i.aj
  %spec.select64 = select i1 %i.an, i32 %.05367, i32 %.05268 ; 2 uses
  %i.ao = add nuw nsw i32 %.05367, 1
  %.not.not = icmp slt i32 %.05367, %spec.select
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.aj)
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !986

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.052.lcssa = phi i32 [ 0, %bb.b ], [ %.05268, %.lr.ph ], [ %spec.select64, %bb.c ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.z, i64 -96     ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !958
  %i.as = add nsw i32 %i.ar, %.052.lcssa
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !958
  %i.at = add nsw i32 %.052.lcssa, %.05773
  store i32 %i.at, ptr %i.aa, align 4, !tbaa !957
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.lr.ph76.split
  %i.au = sub nsw i32 %.05674, %i.ad
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  store i32 %i.c, ptr %i.av, align 4, !tbaa !966
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i32 %i.d, ptr %i.aw, align 8, !tbaa !967
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %wide.trip.count86
  br i1 %exitcond82.not, label %._crit_edge77, label %.lr.ph76.split, !llvm.loop !985

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %.lr.ph76.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge77, label %.lr.ph76.split.us.epil.preheader

.lr.ph76.split.us.epil.preheader:                 ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.split.us.preheader
  %indvars.iv83.epil.init = phi i64 [ 0, %.lr.ph76.split.us.preheader ], [ %indvars.iv.next84.1, %._crit_edge77.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.epil.init = phi i32 [ %2, %.lr.ph76.split.us.preheader ], [ %i.w, %._crit_edge77.loopexit.unr-lcssa ]
  %.05773.us.epil.init = phi i32 [ 0, %.lr.ph76.split.us.preheader ], [ %i.u, %._crit_edge77.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv83.epil.init ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 %.05773.us.epil.init, ptr %i.ay, align 4, !tbaa !957
  %i.az = trunc i64 %indvars.iv83.epil.init to i32
  %i.ba = sub i32 %1, %i.az
  %i.bb = sdiv i32 %.05674.us.epil.init, %i.ba
  %i.bc = add nsw i32 %i.bb, %.05773.us.epil.init
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !958
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  store i32 %i.c, ptr %i.be, align 4, !tbaa !966
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i32 %i.d, ptr %i.bf, align 8, !tbaa !967
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.d, %.lr.ph76.split.us.epil.preheader, %._crit_edge77.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @stbir__free_internal_mem(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !987  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !987
  tail call void @free(ptr noundef nonnull %i.b) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, -2147483648) i32 @stbir__get_max_split(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %0, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %0, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.018 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %.01217 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.i, %.lr.ph ] ; 3 uses
  %.01316 = phi i32 [ %1, %.lr.ph.preheader.new ], [ %i.h, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = sub nsw i32 %0, %.01217
  %i.d = sdiv i32 %.01316, %i.c                   ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %.018)
  %i.e = sub nsw i32 %.01316, %i.d                ; 2 uses
  %.neg = xor i32 %.01217, -1
  %i.f = add nsw i32 %0, %.neg
  %i.g = sdiv i32 %i.e, %i.f                      ; 2 uses
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %spec.select) ; 3 uses
  %i.h = sub nsw i32 %i.e, %i.g                   ; 2 uses
  %i.i = add nuw nsw i32 %.01217, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !988

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01217.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ]
  %.01316.epil.init = phi i32 [ %1, %.lr.ph.preheader ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.j = sub nsw i32 %0, %.01217.epil.init
  %i.k = sdiv i32 %.01316.epil.init, %i.j
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %.018.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @stbir__should_do_vertical_first(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %6, 5
  %i.b = icmp slt i32 %3, 5
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %6, %3
  %i.d = select i1 %i.c, i32 6, i32 7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %7, 0                       ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i32 %6, 17
  %i.f = icmp samesign ult i32 %3, 17
  %or.cond3 = or i1 %i.f, %i.e
  br i1 %or.cond3, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = fcmp ugt float %5, 1.000000e+00
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext i1 %.not to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = fcmp ugt float %5, 2.000000e+00
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = fcmp ugt float %5, 3.000000e+00
  %. = select i1 %i.j, i32 5, i32 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.f, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.f ], [ 4, %bb.d ], [ %., %bb.h ], [ 2, %bb.g ] ; 2 uses
  %i.k = zext nneg i32 %.0 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = sitofp i32 %1 to float                   ; 2 uses
  %i.n = load float, ptr %i.l, align 4, !tbaa !54
  %i.o = fmul float %i.n, %i.m
  %i.p = sitofp i32 %4 to float                   ; 2 uses
  %i.q = fmul float %2, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !54
  %i.t = fmul float %i.q, %i.s
  %i.u = fadd float %i.o, %i.t                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !54
  %i.x = fmul float %i.w, %i.p
  %i.y = fmul float %5, %i.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !54
  %i.ab = fmul float %i.y, %i.aa
  %i.ac = fadd float %i.x, %i.ab                  ; 2 uses
  %i.ad = fcmp ole float %i.ac, %i.u
  %i.ae = zext i1 %i.ad to i32                    ; 3 uses
  %.not48 = icmp eq ptr %8, null
  br i1 %.not48, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = fpext float %i.u to double
  %i.ag = fpext float %i.ac to double
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.af, ptr %i.ah, align 8, !tbaa !989
  store double %i.ag, ptr %8, align 8, !tbaa !992
end_hunk_0
begin_hunk_1_@stbir__alloc_internal_mem_and_build_samplers:bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %.1308.le, i64 240 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %bb.ba
  %.3.i338 = phi ptr [ %i.nf, %bb.ba ], [ %i.nu, %bb.bd ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i338) #24, !srcloc !16
  %i.nh = icmp ugt ptr %.3.i338, %i.ng
  br i1 %i.nh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ni = icmp eq ptr %.3.i338, %i.mp
  br i1 %i.ni, label %stbir_simd_memcpy.exit340, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.4.i339 = phi ptr [ %.3.i338, %bb.bb ], [ %i.ng, %bb.bc ] ; 6 uses
  %i.nj = getelementptr inbounds i8, ptr %.4.i339, i64 %i.mr ; 4 uses
  %i.nk = load <4 x float>, ptr %i.nj, align 1, !tbaa !9
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nm = load <4 x float>, ptr %i.nl, align 1, !tbaa !9
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.no = load <4 x float>, ptr %i.nn, align 1, !tbaa !9
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.nq = load <4 x float>, ptr %i.np, align 1, !tbaa !9
  store <4 x float> %i.nk, ptr %.4.i339, align 1, !tbaa !9
  %i.nr = getelementptr inbounds nuw i8, ptr %.4.i339, i64 16
  store <4 x float> %i.nm, ptr %i.nr, align 1, !tbaa !9
  %i.ns = getelementptr inbounds nuw i8, ptr %.4.i339, i64 32
  store <4 x float> %i.no, ptr %i.ns, align 1, !tbaa !9
  %i.nt = getelementptr inbounds nuw i8, ptr %.4.i339, i64 48
  store <4 x float> %i.nq, ptr %i.nt, align 1, !tbaa !9
  %i.nu = getelementptr inbounds nuw i8, ptr %.4.i339, i64 64
  br label %bb.bb, !llvm.loop !17

bb.be:                                            ; preds = %stbir_simd_memcpy.exit
  tail call void @stbir__calculate_filters(ptr noundef %1, ptr noundef %.3, ptr noundef %9)
  %i.nv = getelementptr inbounds nuw i8, ptr %.1308.le, i64 304
  %i.nw = ptrtoint ptr %1 to i64
  %i.nx = ptrtoint ptr %i.li to i64               ; 2 uses
  %i.ny = sub i64 %i.nw, %i.nx                    ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %i.li, i64 %i.ny ; 4 uses
  %i.oa = load <4 x float>, ptr %i.nz, align 1, !tbaa !9
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oc = load <4 x float>, ptr %i.ob, align 1, !tbaa !9
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oe = load <4 x float>, ptr %i.od, align 1, !tbaa !9
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.og = load <4 x float>, ptr %i.of, align 1, !tbaa !9
  store <4 x float> %i.oa, ptr %i.li, align 8, !tbaa !9
  %i.oh = getelementptr inbounds nuw i8, ptr %i.fb, i64 168
  store <4 x float> %i.oc, ptr %i.oh, align 4, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  store <4 x float> %i.oe, ptr %i.oi, align 4, !tbaa !9
  %i.oj = getelementptr inbounds nuw i8, ptr %i.fb, i64 200
  store <4 x float> %i.og, ptr %i.oj, align 4, !tbaa !9
  %i.ok = and i64 %i.nx, -64
  %i.ol = add i64 %i.ok, 64
  %i.om = inttoptr i64 %i.ol to ptr
  %i.on = getelementptr inbounds nuw i8, ptr %.1308.le, i64 240 ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %.3.i341 = phi ptr [ %i.om, %bb.be ], [ %i.pb, %bb.bh ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i341) #24, !srcloc !16
  %i.oo = icmp ugt ptr %.3.i341, %i.on
  br i1 %i.oo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.op = icmp eq ptr %.3.i341, %i.nv
  br i1 %i.op, label %stbir_simd_memcpy.exit340, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.4.i342 = phi ptr [ %.3.i341, %bb.bf ], [ %i.on, %bb.bg ] ; 6 uses
  %i.oq = getelementptr inbounds i8, ptr %.4.i342, i64 %i.ny ; 4 uses
  %i.or = load <4 x float>, ptr %i.oq, align 1, !tbaa !9
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.ot = load <4 x float>, ptr %i.os, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.ov = load <4 x float>, ptr %i.ou, align 1, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.ox = load <4 x float>, ptr %i.ow, align 1, !tbaa !9
  store <4 x float> %i.or, ptr %.4.i342, align 1, !tbaa !9
  %i.oy = getelementptr inbounds nuw i8, ptr %.4.i342, i64 16
  store <4 x float> %i.ot, ptr %i.oy, align 1, !tbaa !9
  %i.oz = getelementptr inbounds nuw i8, ptr %.4.i342, i64 32
  store <4 x float> %i.ov, ptr %i.oz, align 1, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %.4.i342, i64 48
  store <4 x float> %i.ox, ptr %i.pa, align 1, !tbaa !9
  %i.pb = getelementptr inbounds nuw i8, ptr %.4.i342, i64 64
  br label %bb.bf, !llvm.loop !17

stbir_simd_memcpy.exit340:                        ; preds = %bb.bc, %bb.bg
  %i.pc = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !997 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.fb, i64 468
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !1002 ; 8 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.fb, i64 280
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !1008 ; 2 uses
  %i.pi = load ptr, ptr %i.li, align 8, !tbaa !955
  %i.pj = icmp sgt i32 %i.pf, 0
  br i1 %i.pj, label %.lr.ph76.i, label %.loopexit

.lr.ph76.i:                                       ; preds = %stbir_simd_memcpy.exit340
  %i.pk = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !482
  %i.pm = getelementptr inbounds nuw i8, ptr %i.fb, i64 252
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !968 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.fb, i64 188
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !1009 ; 3 uses
  %.not78.i = icmp eq i32 %i.ph, 0
  %i.pq = mul nsw i32 %i.pn, 3
  %i.pr = sub nsw i32 0, %i.pn                    ; 4 uses
  %i.ps = add nsw i32 %i.pn, %i.pl                ; 4 uses
  %wide.trip.count86.i = zext nneg i32 %i.pf to i64 ; 3 uses
  br i1 %.not78.i, label %.lr.ph76.split.us.i.preheader, label %.lr.ph76.split.i

.lr.ph76.split.us.i.preheader:                    ; preds = %.lr.ph76.i
  %xtraiter443 = and i64 %wide.trip.count86.i, 1
  %i.pt = icmp eq i32 %i.pf, 1
  br i1 %i.pt, label %.lr.ph76.split.us.i.epil.preheader, label %.lr.ph76.split.us.i.preheader.new

.lr.ph76.split.us.i.preheader.new:                ; preds = %.lr.ph76.split.us.i.preheader
  %unroll_iter446 = and i64 %wide.trip.count86.i, 2147483646
  br label %.lr.ph76.split.us.i

.lr.ph76.split.us.i:                              ; preds = %.lr.ph76.split.us.i, %.lr.ph76.split.us.i.preheader.new
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %indvars.iv.next84.i.1, %.lr.ph76.split.us.i ] ; 4 uses
  %.05674.us.i = phi i32 [ %i.pp, %.lr.ph76.split.us.i.preheader.new ], [ %i.ql, %.lr.ph76.split.us.i ] ; 2 uses
  %.05773.us.i = phi i32 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %i.qj, %.lr.ph76.split.us.i ] ; 2 uses
  %niter447 = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %niter447.next.1, %.lr.ph76.split.us.i ]
  %i.pu = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv83.i ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 20
  store i32 %.05773.us.i, ptr %i.pv, align 4, !tbaa !957
  %i.pw = trunc i64 %indvars.iv83.i to i32
  %i.px = sub i32 %i.pf, %i.pw
  %i.py = sdiv i32 %.05674.us.i, %i.px            ; 2 uses
  %i.pz = add nsw i32 %i.py, %.05773.us.i         ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  store i32 %i.pz, ptr %i.qa, align 8, !tbaa !958
  %i.qb = sub nsw i32 %.05674.us.i, %i.py         ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 28
  store i32 %i.pr, ptr %i.qc, align 4, !tbaa !966
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pu, i64 32
  store i32 %i.ps, ptr %i.qd, align 8, !tbaa !967
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %i.qe = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv.next84.i ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 20
  store i32 %i.pz, ptr %i.qf, align 4, !tbaa !957
  %i.qg = trunc i64 %indvars.iv.next84.i to i32
  %i.qh = sub i32 %i.pf, %i.qg
  %i.qi = sdiv i32 %i.qb, %i.qh                   ; 2 uses
  %i.qj = add nsw i32 %i.qi, %i.pz                ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  store i32 %i.qj, ptr %i.qk, align 8, !tbaa !958
  %i.ql = sub nsw i32 %i.qb, %i.qi                ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 28
  store i32 %i.pr, ptr %i.qm, align 4, !tbaa !966
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  store i32 %i.ps, ptr %i.qn, align 8, !tbaa !967
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %niter447.next.1 = add i64 %niter447, 2         ; 2 uses
  %niter447.ncmp.1 = icmp eq i64 %niter447.next.1, %unroll_iter446
  br i1 %niter447.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76.split.us.i, !llvm.loop !985

.lr.ph76.split.i:                                 ; preds = %.lr.ph76.i, %bb.bk
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bk ], [ 0, %.lr.ph76.i ] ; 4 uses
  %.05674.i = phi i32 [ %i.rj, %bb.bk ], [ %i.pp, %.lr.ph76.i ] ; 2 uses
  %.05773.i = phi i32 [ %i.qt, %bb.bk ], [ 0, %.lr.ph76.i ] ; 4 uses
  %i.qo = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv.i ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 20 ; 2 uses
  store i32 %.05773.i, ptr %i.qp, align 4, !tbaa !957
  %i.qq = trunc i64 %indvars.iv.i to i32
  %i.qr = sub i32 %i.pf, %i.qq
  %i.qs = sdiv i32 %.05674.i, %i.qr               ; 3 uses
  %i.qt = add nsw i32 %i.qs, %.05773.i            ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  store i32 %i.qt, ptr %i.qu, align 8, !tbaa !958
  %.not79.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not79.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph76.split.i
  %i.qv = sext i32 %.05773.i to i64
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %i.qv ; 2 uses
  %spec.select.i344 = tail call i32 @llvm.smin.i32(i32 %i.qs, i32 %i.pq) ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !36 ; 2 uses
  %.not65.i = icmp slt i32 %spec.select.i344, 1
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i345

.lr.ph.i345:                                      ; preds = %bb.bi, %bb.bj
  %i.qy = phi i32 [ %i.re, %bb.bj ], [ %i.qx, %bb.bi ] ; 2 uses
  %.069.i = phi ptr [ %i.qz, %bb.bj ], [ %i.qw, %bb.bi ]
  %.05268.i = phi i32 [ %spec.select64.i, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %.05367.i = phi i32 [ %i.rd, %bb.bj ], [ 1, %bb.bi ] ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !36 ; 3 uses
  %i.rb = icmp sgt i32 %i.ra, %i.qx
  br i1 %i.rb, label %._crit_edge.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i345
  %i.rc = icmp slt i32 %i.ra, %i.qy
  %spec.select64.i = select i1 %i.rc, i32 %.05367.i, i32 %.05268.i ; 2 uses
  %i.rd = add nuw nsw i32 %.05367.i, 1
  %.not.not.i = icmp slt i32 %.05367.i, %spec.select.i344
  %i.re = tail call i32 @llvm.smin.i32(i32 %i.ra, i32 %i.qy)
  br i1 %.not.not.i, label %.lr.ph.i345, label %._crit_edge.i, !llvm.loop !986

._crit_edge.i:                                    ; preds = %bb.bj, %.lr.ph.i345, %bb.bi
  %.052.lcssa.i = phi i32 [ 0, %bb.bi ], [ %spec.select64.i, %bb.bj ], [ %.05268.i, %.lr.ph.i345 ] ; 2 uses
  %i.rf = getelementptr i8, ptr %i.qo, i64 -96    ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !958
  %i.rh = add nsw i32 %i.rg, %.052.lcssa.i
  store i32 %i.rh, ptr %i.rf, align 8, !tbaa !958
  %i.ri = add nsw i32 %.052.lcssa.i, %.05773.i
  store i32 %i.ri, ptr %i.qp, align 4, !tbaa !957
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i, %.lr.ph76.split.i
  %i.rj = sub nsw i32 %.05674.i, %i.qs
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qo, i64 28
  store i32 %i.pr, ptr %i.rk, align 4, !tbaa !966
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  store i32 %i.ps, ptr %i.rl, align 8, !tbaa !967
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count86.i
  br i1 %exitcond82.not.i, label %.loopexit, label %.lr.ph76.split.i, !llvm.loop !985

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph76.split.us.i
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.loopexit, label %.lr.ph76.split.us.i.epil.preheader

.lr.ph76.split.us.i.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.split.us.i.preheader
  %indvars.iv83.i.epil.init = phi i64 [ 0, %.lr.ph76.split.us.i.preheader ], [ %indvars.iv.next84.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.i.epil.init = phi i32 [ %i.pp, %.lr.ph76.split.us.i.preheader ], [ %i.ql, %.loopexit.loopexit.unr-lcssa ]
  %.05773.us.i.epil.init = phi i32 [ 0, %.lr.ph76.split.us.i.preheader ], [ %i.qj, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod445 = trunc i32 %i.pf to i1
  tail call void @llvm.assume(i1 %lcmp.mod445)
  %i.rm = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv83.i.epil.init ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 20
  store i32 %.05773.us.i.epil.init, ptr %i.rn, align 4, !tbaa !957
  %i.ro = trunc i64 %indvars.iv83.i.epil.init to i32
  %i.rp = sub i32 %i.pf, %i.ro
  %i.rq = sdiv i32 %.05674.us.i.epil.init, %i.rp
  %i.rr = add nsw i32 %i.rq, %.05773.us.i.epil.init
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  store i32 %i.rr, ptr %i.rs, align 8, !tbaa !958
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rm, i64 28
  store i32 %i.pr, ptr %i.rt, align 4, !tbaa !966
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rm, i64 32
  store i32 %i.ps, ptr %i.ru, align 8, !tbaa !967
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bk, %.lr.ph76.split.us.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %stbir_simd_memcpy.exit340
  %i.rv = getelementptr inbounds nuw i8, ptr %i.fb, i64 276
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !1010 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.fb, i64 332
  %.not334 = icmp eq i32 %i.ph, 0
  %i.ry = tail call i32 @llvm.smin.i32(i32 %i.rw, i32 %.0.lcssa.i)
  %spec.store.select = select i1 %.not334, i32 %i.ry, i32 %i.rw
  store i32 %spec.store.select, ptr %i.rx, align 4
  br label %.thread361

.thread359:                                       ; preds = %bb.at
  %i.rz = add i64 %.3294.in, 15                   ; 2 uses
  %i.sa = tail call noalias ptr @malloc(i64 noundef %i.rz) #25 ; 2 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %.thread361, label %bb.q

.thread361:                                       ; preds = %.thread359, %.loopexit, %bb.h
  %.2311 = phi ptr [ null, %bb.h ], [ %.1308.le, %.loopexit ], [ null, %.thread359 ]
  ret ptr %.2311
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define noundef i32 @stbir__perform_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !997
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1008
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @stbir__vertical_gather_loop(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @stbir__vertical_scatter_loop(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbir__update_info_from_resize(ptr nofree noundef captures(none) initializes((304, 328), (336, 368), (424, 432), (456, 464)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1011 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1014 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1015
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.f, ptr %i.g, align 8, !tbaa !484
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1016 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !485
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1017 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !952
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !940
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1018
  %i.s = icmp eq i32 %i.r, 6
  %i.t = add i32 %i.b, -1
  %or.cond = icmp ult i32 %i.t, 2
  %or.cond111 = select i1 %i.s, i1 %or.cond, i1 false
  %i.u = add i32 %i.d, -1
  %or.cond3 = icmp ult i32 %i.u, 2
  %or.cond112 = select i1 %or.cond111, i1 %or.cond3, i1 false ; 2 uses
  %spec.select = select i1 %or.cond112, i32 0, i32 %i.b
  %spec.select115 = select i1 %or.cond112, i32 0, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.097 = phi i32 [ %i.b, %bb.a ], [ %spec.select, %bb.b ] ; 8 uses
  %.096 = phi i32 [ %i.d, %bb.a ], [ %spec.select115, %bb.b ] ; 10 uses
  %i.v = icmp eq i32 %i.i, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.x = load i32, ptr %i.w, align 8, !tbaa !476
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !492
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = zext i32 %.097 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.aa, %i.ae
  store i32 %i.af, ptr %i.j, align 8, !tbaa !485
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = icmp eq i32 %i.l, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !476 ; 2 uses
  br i1 %i.ag, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre118 = zext i32 %.096 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !930
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = zext i32 %.096 to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.al, %i.ap
  store i32 %i.aq, ptr %i.m, align 4, !tbaa !952
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi = phi i64 [ %.pre118, %._crit_edge ], [ %i.am, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1019
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1000
  %i.av = sext i32 %i.au to i64
  %i.aw = sext i32 %i.l to i64
  %i.ax = mul nsw i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !999
  %i.bb = mul nsw i32 %i.ai, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %.pre-phi
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul nsw i32 %i.bb, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.ay, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !951
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1020
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !487
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1021
end_hunk_1
