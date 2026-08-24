Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_ds?download=true
inline.NumInlined: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stbds_hash_seed = local_unnamed_addr global i64 826366246, align 8

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define ptr @stbds_arrgrowf(ptr noundef captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 3 uses
  br i1 %.not, label %bb.b, label %.thread36

bb.b:                                             ; preds = %bb.a
  %spec.select34 = tail call i64 @llvm.umax.i64(i64 %2, i64 %3) ; 2 uses
  %.not33.not = icmp eq i64 %spec.select34, 0
  br i1 %.not33.not, label %bb.f, label %.critedge

.thread36:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = add i64 %i.b, %2
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %3) ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 -24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %.not3338 = icmp ugt i64 %spec.select, %i.e
  br i1 %.not3338, label %.thread40, label %bb.f

.thread40:                                        ; preds = %.thread36
  %i.f = shl i64 %i.e, 1                          ; 2 uses
  %i.g = icmp ult i64 %spec.select, %i.f
  br i1 %i.g, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %.thread40
  %spec.select353943 = phi i64 [ %spec.select, %.thread40 ], [ %spec.select34, %bb.b ]
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %spec.select353943, i64 4)
  br label %bb.c

bb.c:                                             ; preds = %.thread40, %.critedge
  %.1 = phi i64 [ %spec.store.select, %.critedge ], [ %i.f, %.thread40 ] ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 -32
  %i.i = select i1 %.not, ptr null, ptr %i.h
  %i.j = mul i64 %.1, %1
  %i.k = add i64 %i.j, 32
  %i.l = tail call ptr @realloc(ptr noundef %i.i, i64 noundef %i.k) #21 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.1, ptr %i.o, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %.thread36, %bb.b, %bb.e
  %.028 = phi ptr [ %i.m, %bb.e ], [ null, %bb.b ], [ %0, %.thread36 ]
  ret ptr %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @stbds_arrfreef(ptr noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @free(ptr noundef nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbds_rand_seed(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  store i64 %0, ptr @stbds_hash_seed, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @stbds_probe_position(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = and i64 %i.a, %0
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @stbds_log2(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i64 %0, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i64 [ %i.c, %.lr.ph ], [ 0, %bb.a ]
  %.045 = phi i64 [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = lshr i64 %.045, 1
  %i.c = add nuw nsw i64 %.06, 1                  ; 2 uses
  %i.d = icmp ugt i64 %.045, 3
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @stbds_make_hash_index(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = lshr i64 %0, 3                           ; 5 uses
  %i.b = shl i64 %i.a, 7
  %i.c = add i64 %i.b, 167
  %malloc = tail call ptr @malloc(i64 %i.c)       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %malloc, i64 104
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = add i64 %i.e, 63
  %i.g = and i64 %i.f, -64
  %i.h = inttoptr i64 %i.g to ptr                 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %malloc, i64 96
  store ptr %i.h, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %malloc, i64 8 ; 2 uses
  store i64 %0, ptr %i.j, align 8, !tbaa !21
  %i.k = icmp ugt i64 %0, 1
  br i1 %i.k, label %.lr.ph.i, label %stbds_log2.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %.045.i = phi i64 [ %i.l, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.l = lshr i64 %.045.i, 1
  %i.m = add nuw nsw i64 %.06.i, 1                ; 2 uses
  %i.n = icmp ugt i64 %.045.i, 3
  br i1 %i.n, label %.lr.ph.i, label %stbds_log2.exit, !llvm.loop !14

stbds_log2.exit:                                  ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %malloc, i64 64
  store i64 %.0.lcssa.i, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %malloc, i64 40
  store i64 0, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %malloc, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !24
  %i.r = lshr i64 %0, 2                           ; 2 uses
  %i.s = sub i64 %0, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %malloc, i64 24
  store i64 %i.s, ptr %i.t, align 8, !tbaa !25
  %i.u = lshr i64 %0, 4
  %i.v = add nuw nsw i64 %i.a, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %malloc, i64 48
  store i64 %i.v, ptr %i.w, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %malloc, i64 32
  %i.y = icmp ult i64 %0, 9
  %spec.select = select i1 %i.y, i64 0, i64 %i.r
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !27
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %malloc, i64 72 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %stbds_log2.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !28
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  br label %bb.d

bb.c:                                             ; preds = %stbds_log2.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.ad = load i64, ptr @stbds_hash_seed, align 8, !tbaa !13 ; 2 uses
  %i.ae = mul i64 %i.ad, 2862933555777941757
  %i.af = add i64 %i.ae, 3037000493
  store i64 %i.af, ptr @stbds_hash_seed, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.ad, %bb.c ], [ %i.ac, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %malloc, i64 56
  store i64 %.sink, ptr %i.ag, align 8, !tbaa !31
  %.not141 = icmp eq i64 %i.a, 0
  br i1 %.not141, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.ah = icmp ult i64 %0, 32
  br i1 %i.ah, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.a, 2305843009213693948
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0116131 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %2 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %2, i8 0, i64 64, i1 false), !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ai, i8 -1, i64 64, i1 false), !tbaa !13
  %3 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.aj, i8 0, i64 64, i1 false), !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ak, i8 -1, i64 64, i1 false), !tbaa !13
  %4 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.al, i8 0, i64 64, i1 false), !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.am, i8 -1, i64 64, i1 false), !tbaa !13
  %5 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.an, i8 0, i64 64, i1 false), !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ao, i8 -1, i64 64, i1 false), !tbaa !13
  %i.ap = add nuw nsw i64 %.0116131, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0116131.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod182 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0116131.epil = phi i64 [ %i.ar, %.lr.ph.epil ], [ %.0116131.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %6 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131.epil ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.aq, i8 -1, i64 64, i1 false), !tbaa !13
  %i.ar = add nuw nsw i64 %.0116131.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !33

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  store i64 %i.at, ptr %i.q, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !21
  %.not142 = icmp ult i64 %i.av, 8
  br i1 %.not142, label %.loopexit, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph140, %bb.ad
  %.0113138 = phi i64 [ 0, %.lr.ph140 ], [ %i.dq, %bb.ad ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %i.ax, i64 %.0113138 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.0112137 = phi i64 [ 0, %bb.f ], [ %i.dp, %.thread ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.0112137 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0112137
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !21
  %i.bg = add i64 %i.bf, -1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge136, %bb.h
  %.pn = phi i64 [ %i.be, %bb.h ], [ %i.dj, %._crit_edge136 ]
  %.0108 = phi i64 [ 8, %bb.h ], [ %i.dk, %._crit_edge136 ] ; 2 uses
  %.0110 = and i64 %i.bg, %.pn                    ; 3 uses
  %i.bh = lshr i64 %.0110, 3
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %i.bh ; 17 uses
  %i.bj = and i64 %.0110, 7                       ; 16 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.thread.sink.split, label %bb.j

.preheader:                                       ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %.not143 = icmp eq i64 %i.bj, 0
  br i1 %.not143, label %._crit_edge136, label %.lr.ph135

bb.j:                                             ; preds = %bb.i
  %i.bn = add nuw nsw i64 %i.bj, 1                ; 3 uses
  %exitcond148.not = icmp eq i64 %i.bn, 8
  br i1 %exitcond148.not, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !13
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = add nuw nsw i64 %i.bj, 2                ; 3 uses
  %exitcond148.not.1 = icmp eq i64 %i.br, 8
  br i1 %exitcond148.not.1, label %.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !13
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = add nuw nsw i64 %i.bj, 3                ; 3 uses
  %exitcond148.not.2 = icmp eq i64 %i.bv, 8
  br i1 %exitcond148.not.2, label %.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !13
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = add nuw nsw i64 %i.bj, 4                ; 3 uses
  %exitcond148.not.3 = icmp eq i64 %i.bz, 8
  br i1 %exitcond148.not.3, label %.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !13
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = add nuw nsw i64 %i.bj, 5                ; 3 uses
  %exitcond148.not.4 = icmp eq i64 %i.cd, 8
  br i1 %exitcond148.not.4, label %.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !13
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nuw nsw i64 %i.bj, 6                ; 3 uses
  %exitcond148.not.5 = icmp eq i64 %i.ch, 8
  br i1 %exitcond148.not.5, label %.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !13
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = add nuw nsw i64 %i.bj, 7                ; 3 uses
  %exitcond148.not.6 = icmp eq i64 %i.cl, 8
  br i1 %exitcond148.not.6, label %.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !13
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.thread.sink.split, label %.preheader

.lr.ph135:                                        ; preds = %.preheader
  %i.cp = load i64, ptr %i.bi, align 64, !tbaa !13
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.thread.sink.split, label %bb.x

bb.x:                                             ; preds = %.lr.ph135
  %exitcond149.not = icmp eq i64 %i.bj, 1
  br i1 %exitcond149.not, label %._crit_edge136, label %.lr.ph135.1

.lr.ph135.1:                                      ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !13
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.thread.sink.split, label %bb.y

bb.y:                                             ; preds = %.lr.ph135.1
  %exitcond149.not.1 = icmp eq i64 %i.bj, 2
  br i1 %exitcond149.not.1, label %._crit_edge136, label %.lr.ph135.2

.lr.ph135.2:                                      ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.cv = load i64, ptr %i.cu, align 16, !tbaa !13
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.thread.sink.split, label %bb.z

bb.z:                                             ; preds = %.lr.ph135.2
  %exitcond149.not.2 = icmp eq i64 %i.bj, 3
  br i1 %exitcond149.not.2, label %._crit_edge136, label %.lr.ph135.3

.lr.ph135.3:                                      ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !13
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph135.3
  %exitcond149.not.3 = icmp eq i64 %i.bj, 4
  br i1 %exitcond149.not.3, label %._crit_edge136, label %.lr.ph135.4

.lr.ph135.4:                                      ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.db = load i64, ptr %i.da, align 32, !tbaa !13
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.thread.sink.split, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph135.4
  %exitcond149.not.4 = icmp eq i64 %i.bj, 5
  br i1 %exitcond149.not.4, label %._crit_edge136, label %.lr.ph135.5

.lr.ph135.5:                                      ; preds = %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !13
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %.thread.sink.split, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph135.5
  %exitcond149.not.5 = icmp eq i64 %i.bj, 6
  br i1 %exitcond149.not.5, label %._crit_edge136, label %.lr.ph135.6

.lr.ph135.6:                                      ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.dh = load i64, ptr %i.dg, align 16, !tbaa !13
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.thread.sink.split, label %._crit_edge136
end_hunk_0
