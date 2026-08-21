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
  %.0116131 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %2 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %2, i8 0, i64 64, i1 false), !tbaa !13
  %scevgep = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %scevgep, i8 -1, i64 64, i1 false), !tbaa !13
  %3 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ai, i8 0, i64 64, i1 false), !tbaa !13
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %3, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %scevgep.1, i8 -1, i64 64, i1 false), !tbaa !13
  %4 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.aj, i8 0, i64 64, i1 false), !tbaa !13
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %4, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %scevgep.2, i8 -1, i64 64, i1 false), !tbaa !13
  %5 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ak, i8 0, i64 64, i1 false), !tbaa !13
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %5, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %scevgep.3, i8 -1, i64 64, i1 false), !tbaa !13
  %i.al = add nuw nsw i64 %.0116131, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0116131.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0116131.epil = phi i64 [ %i.am, %.lr.ph.epil ], [ %.0116131.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %6 = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.0116131.epil ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !13
  %scevgep.epil = getelementptr inbounds nuw i8, ptr %6, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %scevgep.epil, i8 -1, i64 64, i1 false), !tbaa !13
  %i.am = add nuw nsw i64 %.0116131.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !33

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !21
  %.not142 = icmp ult i64 %i.aq, 8
  br i1 %.not142, label %.loopexit, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph140, %bb.ad
  %.0113138 = phi i64 [ 0, %.lr.ph140 ], [ %i.dl, %bb.ad ] ; 2 uses
  %i.at = getelementptr inbounds nuw [128 x i8], ptr %i.as, i64 %.0113138 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.0112137 = phi i64 [ 0, %bb.f ], [ %i.dk, %.thread ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.0112137 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !13
  %i.ax = icmp sgt i64 %i.aw, -1
  br i1 %i.ax, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.0112137
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = load i64, ptr %i.j, align 8, !tbaa !21
  %i.bb = add i64 %i.ba, -1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge136, %bb.h
  %.pn = phi i64 [ %i.az, %bb.h ], [ %i.de, %._crit_edge136 ]
  %.0108 = phi i64 [ 8, %bb.h ], [ %i.df, %._crit_edge136 ] ; 2 uses
  %.0110 = and i64 %i.bb, %.pn                    ; 3 uses
  %i.bc = lshr i64 %.0110, 3
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %i.bc ; 17 uses
  %i.be = and i64 %.0110, 7                       ; 16 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.thread.sink.split, label %bb.j

.preheader:                                       ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %.not143 = icmp eq i64 %i.be, 0
  br i1 %.not143, label %._crit_edge136, label %.lr.ph135

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.be, 1                ; 3 uses
  %exitcond149.not.a = icmp eq i64 %i.bi, 8
  br i1 %exitcond149.not.a, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !13
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = add nuw nsw i64 %i.be, 2                ; 3 uses
  %exitcond149.not.1.a = icmp eq i64 %i.bm, 8
  br i1 %exitcond149.not.1.a, label %.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !13
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = add nuw nsw i64 %i.be, 3                ; 3 uses
  %exitcond149.not.2.a = icmp eq i64 %i.bq, 8
  br i1 %exitcond149.not.2.a, label %.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !13
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = add nuw nsw i64 %i.be, 4                ; 3 uses
  %exitcond149.not.3.a = icmp eq i64 %i.bu, 8
  br i1 %exitcond149.not.3.a, label %.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = add nuw nsw i64 %i.be, 5                ; 3 uses
  %exitcond149.not.4.a = icmp eq i64 %i.by, 8
  br i1 %exitcond149.not.4.a, label %.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !13
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = add nuw nsw i64 %i.be, 6                ; 3 uses
  %exitcond149.not.5.a = icmp eq i64 %i.cc, 8
  br i1 %exitcond149.not.5.a, label %.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !13
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = add nuw nsw i64 %i.be, 7                ; 3 uses
  %exitcond149.not.6 = icmp eq i64 %i.cg, 8
  br i1 %exitcond149.not.6, label %.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.thread.sink.split, label %.preheader

.lr.ph135:                                        ; preds = %.preheader
  %i.ck = load i64, ptr %i.bd, align 64, !tbaa !13
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.thread.sink.split, label %bb.x

bb.x:                                             ; preds = %.lr.ph135
  %exitcond150.not.a = icmp eq i64 %i.be, 1
  br i1 %exitcond150.not.a, label %._crit_edge136, label %.lr.ph135.1

.lr.ph135.1:                                      ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !13
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.thread.sink.split, label %bb.y

bb.y:                                             ; preds = %.lr.ph135.1
  %exitcond150.not.1 = icmp eq i64 %i.be, 2
  br i1 %exitcond150.not.1, label %._crit_edge136, label %.lr.ph135.2

.lr.ph135.2:                                      ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cq = load i64, ptr %i.cp, align 16, !tbaa !13
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.thread.sink.split, label %bb.z

bb.z:                                             ; preds = %.lr.ph135.2
  %exitcond150.not.2 = icmp eq i64 %i.be, 3
  br i1 %exitcond150.not.2, label %._crit_edge136, label %.lr.ph135.3

.lr.ph135.3:                                      ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !13
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph135.3
  %exitcond150.not.3 = icmp eq i64 %i.be, 4
  br i1 %exitcond150.not.3, label %._crit_edge136, label %.lr.ph135.4

.lr.ph135.4:                                      ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.cw = load i64, ptr %i.cv, align 32, !tbaa !13
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.thread.sink.split, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph135.4
  %exitcond150.not.4 = icmp eq i64 %i.be, 5
  br i1 %exitcond150.not.4, label %._crit_edge136, label %.lr.ph135.5

.lr.ph135.5:                                      ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.thread.sink.split, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph135.5
  %exitcond150.not.5 = icmp eq i64 %i.be, 6
  br i1 %exitcond150.not.5, label %._crit_edge136, label %.lr.ph135.6

.lr.ph135.6:                                      ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.dc = load i64, ptr %i.db, align 16, !tbaa !13
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.thread.sink.split, label %._crit_edge136

end_hunk_0
begin_hunk_1_@stbds_hmget_key:bb.a
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl i64 %1, 2
  %i.c = add i64 %i.b, 32
  %malloc.i = tail call ptr @malloc(i64 %i.c)     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %malloc.i, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %malloc.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %malloc.i, i64 8
  store i64 4, ptr %i.f, align 8, !tbaa !12
  store i64 1, ptr %malloc.i, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %1, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  %.pre = sub i64 0, %1
  br label %stbds_hmget_key_ts.exit

bb.c:                                             ; preds = %bb.a
  %i.h = sub i64 0, %1                            ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbds_hmget_key_ts.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @stbds_hm_find_slot(ptr noundef nonnull readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, i64 noundef 0, i32 noundef %4) ; 3 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %stbds_hmget_key_ts.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = lshr i64 %i.m, 3
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = and i64 %i.m, 7
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  br label %stbds_hmget_key_ts.exit

stbds_hmget_key_ts.exit:                          ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.pre-phi = phi i64 [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %.pre, %bb.b ]
  %.0 = phi i64 [ -1, %bb.c ], [ -1, %bb.d ], [ %i.v, %bb.e ], [ -1, %bb.b ]
  %.0.i = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %0, %bb.e ], [ %i.g, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.0.i, i64 %.pre-phi
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  store i64 %.0, ptr %i.x, align 8, !tbaa !49
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define ptr @stbds_hmput_default(ptr noundef captures(address, ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %.pre15 = sub i64 0, %1                         ; 2 uses
  br i1 %i.a, label %._crit_edge14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.pre15
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge14, label %bb.f

._crit_edge14:                                    ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.pre15 ; 4 uses
  %i.g = select i1 %i.a, ptr null, ptr %i.f       ; 2 uses
  %.not.i = icmp eq ptr %i.g, null                ; 3 uses
  br i1 %.not.i, label %.critedge.i, label %.thread36.i

.thread36.i:                                      ; preds = %._crit_edge14
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %.not3338.i = icmp ugt i64 %spec.select.i, %i.k
  br i1 %.not3338.i, label %.thread40.i, label %stbds_arrgrowf.exit

.thread40.i:                                      ; preds = %.thread36.i
  %i.l = shl i64 %i.k, 1                          ; 2 uses
  %i.m = icmp ult i64 %spec.select.i, %i.l
  br i1 %i.m, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %._crit_edge14, %.thread40.i
  %spec.select353943.i = phi i64 [ %spec.select.i, %.thread40.i ], [ 1, %._crit_edge14 ]
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %spec.select353943.i, i64 4)
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.thread40.i
  %.1.i = phi i64 [ %spec.store.select.i, %.critedge.i ], [ %i.l, %.thread40.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -32
  %i.o = select i1 %.not.i, ptr null, ptr %i.n
  %i.p = mul i64 %.1.i, %1
  %i.q = add i64 %i.p, 32
  %i.r = tail call ptr @realloc(ptr noundef %i.o, i64 noundef %i.q) #21 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  br i1 %.not.i, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre.pre = load i64, ptr %i.r, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre = phi i64 [ %.pre.pre, %._crit_edge ], [ 0, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !12
  br label %stbds_arrgrowf.exit

stbds_arrgrowf.exit:                              ; preds = %.thread36.i, %bb.e
  %i.v = phi i64 [ %.pre, %bb.e ], [ %i.i, %.thread36.i ]
  %.028.i = phi ptr [ %i.s, %bb.e ], [ %i.f, %.thread36.i ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.028.i, i64 -32
  %i.x = add i64 %i.v, 1
  store i64 %i.x, ptr %i.w, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.028.i, i8 0, i64 %1, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.028.i, i64 %1
  br label %bb.f

bb.f:                                             ; preds = %stbds_arrgrowf.exit, %bb.b
  %.0 = phi ptr [ %i.y, %stbds_arrgrowf.exit ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @stbds_hmput_key(ptr noundef captures(address, ret: address, provenance) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl i64 %1, 2
  %i.c = add i64 %i.b, 32
  %malloc = tail call ptr @malloc(i64 %i.c)       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %malloc, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %malloc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %malloc, i64 8
  store i64 4, ptr %i.f, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %1, i1 false)
  store i64 1, ptr %malloc, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0169 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 9 uses
  %i.h = sub i64 0, %1
  %i.i = getelementptr inbounds i8, ptr %.0169, i64 %i.h ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -32 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.split171, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  %.not = icmp ult i64 %i.o, %i.q
  br i1 %.not, label %bb.g, label %bb.e

.split171:                                        ; preds = %bb.c
  %malloc.i = tail call dereferenceable_or_null(295) ptr @malloc(i64 295) ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %malloc.i, i64 104
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 63
  %i.u = and i64 %i.t, -64
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %malloc.i, i64 96
  store ptr %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %malloc.i, i64 8
  store i64 8, ptr %i.x, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %malloc.i, i64 64
  store i64 3, ptr %i.y, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %malloc.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %malloc.i, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %malloc.i, i64 24
  store i64 6, ptr %i.ab, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %malloc.i, i64 48
  store i64 1, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %malloc.i, i64 32
  store i64 0, ptr %i.ad, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %malloc.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.af = load i64, ptr @stbds_hash_seed, align 8, !tbaa !13 ; 2 uses
  %i.ag = mul i64 %i.af, 2862933555777941757
  %i.ah = add i64 %i.ag, 3037000493
  store i64 %i.ah, ptr @stbds_hash_seed, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %malloc.i, i64 56
  store i64 %i.af, ptr %i.ai, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.v, i8 0, i64 64, i1 false), !tbaa !13
  %5 = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %5, i8 -1, i64 64, i1 false), !tbaa !13
  %i.aj = icmp sgt i32 %4, 0
  %i.ak = zext i1 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %malloc.i, i64 89
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !41
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !21
  %i.ao = shl i64 %i.an, 1
  %i.ap = tail call ptr @stbds_make_hash_index(i64 noundef %i.ao, ptr noundef nonnull %i.l)
  tail call void @free(ptr noundef nonnull %i.l) #22
  br label %bb.f

bb.f:                                             ; preds = %.split171, %bb.e
  %phi.call197 = phi ptr [ %malloc.i, %.split171 ], [ %i.ap, %bb.e ] ; 2 uses
  store ptr %phi.call197, ptr %i.k, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.aq = phi ptr [ %phi.call197, %bb.f ], [ %i.l, %bb.d ] ; 10 uses
  %i.ar = icmp sgt i32 %4, 0                      ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !31 ; 8 uses
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr %2, align 1, !tbaa !30     ; 2 uses
  %.not26.i = icmp eq i8 %i.au, 0
  br i1 %.not26.i, label %stbds_hash_string.exit, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %bb.h, %.lr.ph.i184
  %i.av = phi i8 [ %i.ba, %.lr.ph.i184 ], [ %i.au, %bb.h ]
  %.028.i = phi i64 [ %i.az, %.lr.ph.i184 ], [ %i.at, %bb.h ] ; 2 uses
  %.02427.i = phi ptr [ %i.ax, %.lr.ph.i184 ], [ %2, %bb.h ]
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %.028.i, i64 %.028.i, i64 9)
  %i.ax = getelementptr inbounds nuw i8, ptr %.02427.i, i64 1 ; 2 uses
  %i.ay = zext i8 %i.av to i64
  %i.az = add i64 %i.aw, %i.ay                    ; 2 uses
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !30  ; 2 uses
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i184, !llvm.loop !37

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i184
  %i.bb = xor i64 %i.az, %i.at
  br label %stbds_hash_string.exit

stbds_hash_string.exit:                           ; preds = %bb.h, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.bb, %._crit_edge.loopexit.i ] ; 2 uses
  %i.bc = xor i64 %.0.lcssa.i, -1
  %i.bd = shl i64 %.0.lcssa.i, 18
  %i.be = add i64 %i.bd, %i.bc                    ; 2 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 33) ; 2 uses
  %i.bg = mul i64 %i.bf, 21
  %i.bh = lshr i64 %i.bg, 11
  %i.bi = mul i64 %i.bf, 189151184349560832
  %i.bj = or disjoint i64 %i.bh, %i.bi            ; 2 uses
  %i.bk = mul i64 %i.bj, 65                       ; 2 uses
  %i.bl = lshr i64 %i.bk, 22
  %i.bm = mul i64 %i.bj, 285873023221760
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = add i64 %i.bo, %i.at
  br label %stbds_hash_bytes.exit

bb.i:                                             ; preds = %bb.g
  switch i64 %3, label %bb.l [
    i64 4, label %bb.j
    i64 8, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %2, align 1
  %i.br = trunc i64 %i.at to i32                  ; 2 uses
  %i.bs = xor i32 %i.bq, %i.br                    ; 2 uses
  %i.bt = lshr i32 %i.bs, 16
  %i.bu = xor i32 %i.bs, %i.bt
  %i.bv = xor i32 %i.bu, 61
  %i.bw = mul i32 %i.bv, 9                        ; 2 uses
  %i.bx = lshr i32 %i.bw, 4
  %i.by = xor i32 %i.bx, %i.bw
  %i.bz = mul i32 %i.by, 668265261
  %i.ca = xor i32 %i.bz, %i.br                    ; 2 uses
  %i.cb = lshr i32 %i.ca, 15
  %i.cc = xor i32 %i.cb, %i.ca
  %i.cd = zext i32 %i.cc to i64
  %i.ce = mul nuw i64 %i.cd, 4294967297
  %i.cf = xor i64 %i.ce, %i.at
  br label %stbds_hash_bytes.exit

bb.k:                                             ; preds = %bb.i
  %i.cg = load i32, ptr %2, align 1
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw i64 %i.ck, 32
  %i.cm = or i64 %i.cl, %i.ch
  %i.cn = xor i64 %i.cm, %i.at                    ; 2 uses
  %i.co = xor i64 %i.cn, -1
  %i.cp = shl i64 %i.cn, 21
  %i.cq = add i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 40)
  %i.cs = xor i64 %i.cr, %i.cq                    ; 2 uses
  %i.ct = mul i64 %i.cs, 265                      ; 2 uses
  %i.cu = lshr i64 %i.ct, 14
  %i.cv = mul i64 %i.cs, 298363475313295360
  %i.cw = or disjoint i64 %i.cu, %i.cv
  %i.cx = xor i64 %i.at, %i.cw
  %i.cy = xor i64 %i.cx, %i.ct                    ; 2 uses
  %i.cz = mul i64 %i.cy, 21                       ; 2 uses
  %i.da = lshr i64 %i.cz, 28
  %i.db = mul i64 %i.cy, 1443109011456
  %i.dc = or disjoint i64 %i.da, %i.db
  %i.dd = xor i64 %i.dc, %i.cz                    ; 2 uses
  %i.de = mul i64 %i.dd, 2147483649
  %i.df = xor i64 %i.de, -1
  %i.dg = mul i64 %i.dd, 562949953683456
  %i.dh = add i64 %i.dg, %i.df
  br label %stbds_hash_bytes.exit

bb.l:                                             ; preds = %bb.i
  %i.di = tail call i64 @stbds_siphash_bytes(ptr noundef readonly %2, i64 noundef %3, i64 noundef %i.at)
  br label %stbds_hash_bytes.exit

stbds_hash_bytes.exit:                            ; preds = %bb.l, %bb.k, %bb.j, %stbds_hash_string.exit
  %i.dj = phi i64 [ %i.bp, %stbds_hash_string.exit ], [ %i.cf, %bb.j ], [ %i.dh, %bb.k ], [ %i.di, %bb.l ] ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 2
  %i.dl = or disjoint i64 %i.dj, 2
  %spec.select = select i1 %i.dk, i64 %i.dl, i64 %i.dj ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !21
  %i.do = add i64 %i.dn, -1                       ; 2 uses
  %i.dp = and i64 %i.do, %spec.select
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %stbds_hash_bytes.exit
  %.0162 = phi i64 [ 8, %stbds_hash_bytes.exit ], [ %i.gd, %._crit_edge ] ; 2 uses
  %.0159 = phi i64 [ %i.dp, %stbds_hash_bytes.exit ], [ %i.ge, %._crit_edge ] ; 4 uses
  %.0157 = phi i64 [ -1, %stbds_hash_bytes.exit ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.ds = lshr i64 %.0159, 3
  %i.dt = getelementptr inbounds nuw [128 x i8], ptr %i.dr, i64 %i.ds ; 4 uses
  %i.du = and i64 %.0159, 7                       ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 64 ; 7 uses
  %i.dw = and i64 %.0159, -8                      ; 5 uses
  br i1 %i.ar, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.m, %bb.q
  %.0156252.us = phi i64 [ %i.em, %bb.q ], [ %i.du, %bb.m ] ; 7 uses
  %.1158251.us = phi i64 [ %.2.us, %bb.q ], [ %.0157, %bb.m ] ; 5 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.0156252.us
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !13 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, %spec.select
  br i1 %i.dz, label %stbds_is_key_equal.exit.us, label %bb.n

bb.n:                                             ; preds = %.split.us
  %i.ea = icmp eq i64 %i.dy, 0
  br i1 %i.ea, label %.split254.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = icmp slt i64 %.1158251.us, 0
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.0156252.us
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !13
  %i.ee = icmp eq i64 %i.ed, -2
  %i.ef = or disjoint i64 %.0156252.us, %i.dw
  %spec.select266 = select i1 %i.ee, i64 %i.ef, i64 %.1158251.us
  br label %bb.q

stbds_is_key_equal.exit.us:                       ; preds = %.split.us
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.0156252.us
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !13 ; 2 uses
  %i.ei = mul i64 %i.eh, %1
  %i.ej = getelementptr inbounds nuw i8, ptr %.0169, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !39
  %i.el = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.ek) #23
  %.0.in.i.not.us = icmp eq i32 %i.el, 0
  br i1 %.0.in.i.not.us, label %.split259.us, label %bb.q

bb.q:                                             ; preds = %bb.p, %stbds_is_key_equal.exit.us, %bb.o
  %.2.us = phi i64 [ %.1158251.us, %stbds_is_key_equal.exit.us ], [ %.1158251.us, %bb.o ], [ %spec.select266, %bb.p ] ; 2 uses
  %i.em = add nuw nsw i64 %.0156252.us, 1         ; 2 uses
  %exitcond299.not = icmp eq i64 %i.em, 8
  br i1 %exitcond299.not, label %.preheader, label %.split.us, !llvm.loop !50

.preheader:                                       ; preds = %bb.u, %bb.q
  %.us-phi263 = phi i64 [ %.2.us, %bb.q ], [ %.2, %bb.u ] ; 2 uses
  %.not269 = icmp eq i64 %i.du, 0
  br i1 %.not269, label %._crit_edge, label %.lr.ph

.split:                                           ; preds = %bb.m, %bb.u
  %.0156252 = phi i64 [ %i.fi, %bb.u ], [ %i.du, %bb.m ] ; 6 uses
  %.1158251 = phi i64 [ %.2, %bb.u ], [ %.0157, %bb.m ] ; 5 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.0156252
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !13 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, %spec.select
end_hunk_1
begin_hunk_2_@stbds_hmput_key:bb.a
  br i1 %.not.i195, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !44
  store ptr %i.io, ptr %malloc44.i, align 8, !tbaa !44
  store ptr %malloc44.i, ptr %i.in, align 8, !tbaa !44
  br label %stbds_stralloc.exit

bb.ar:                                            ; preds = %bb.ap
  store ptr null, ptr %malloc44.i, align 8, !tbaa !44
  store ptr %malloc44.i, ptr %i.hy, align 8, !tbaa !43
  store i64 0, ptr %i.ib, align 8, !tbaa !52
  br label %stbds_stralloc.exit

bb.as:                                            ; preds = %bb.ao
  %i.ip = or disjoint i64 %i.ii, 8
  %malloc.i194 = tail call ptr @malloc(i64 %i.ip) ; 3 uses
  %i.iq = load ptr, ptr %i.hy, align 8, !tbaa !43
  store ptr %i.iq, ptr %malloc.i194, align 8, !tbaa !44
  store ptr %malloc.i194, ptr %i.hy, align 8, !tbaa !43
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge.i
  %i.ir = phi i64 [ %i.ic, %._crit_edge.i ], [ %i.ii, %bb.as ] ; 2 uses
  %i.is = phi ptr [ %.pre.i, %._crit_edge.i ], [ %malloc.i194, %bb.as ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ir
  %i.iv = xor i64 %i.hz, -1
  %i.iw = getelementptr inbounds i8, ptr %i.iu, i64 %i.iv ; 2 uses
  %i.ix = sub i64 %i.ir, %i.ia
  store i64 %i.ix, ptr %i.ib, align 8, !tbaa !52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iw, ptr nonnull readonly align 1 %2, i64 %i.ia, i1 false)
  br label %stbds_stralloc.exit

stbds_stralloc.exit:                              ; preds = %bb.aq, %bb.ar, %bb.at
  %.1.i193 = phi ptr [ %i.iw, %bb.at ], [ %i.im, %bb.aq ], [ %i.im, %bb.ar ] ; 2 uses
  %i.iy = mul i64 %i.hf, %1
  %i.iz = getelementptr inbounds nuw i8, ptr %.1170, i64 %i.iy
  store ptr %.1.i193, ptr %i.iz, align 8, !tbaa !39
  %i.ja = getelementptr inbounds i8, ptr %.1170, i64 -16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !40
  store ptr %.1.i193, ptr %i.jb, align 8, !tbaa !39
  br label %bb.aw

bb.au:                                            ; preds = %stbds_arrgrowf.exit
  %i.jc = mul i64 %i.hf, %1
  %i.jd = getelementptr inbounds nuw i8, ptr %.1170, i64 %i.jc
  store ptr %2, ptr %i.jd, align 8, !tbaa !39
  %i.je = getelementptr inbounds i8, ptr %.1170, i64 -16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !40
  store ptr %2, ptr %i.jf, align 8, !tbaa !39
  br label %bb.aw

bb.av:                                            ; preds = %stbds_arrgrowf.exit
  %i.jg = mul i64 %i.hf, %1
  %i.jh = getelementptr inbounds nuw i8, ptr %.1170, i64 %i.jg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jh, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %stbds_stralloc.exit, %bb.ak
  %i.ji = getelementptr inbounds nuw i8, ptr %.1170, i64 %1
  br label %.thread203

.thread203:                                       ; preds = %.thread, %.split259.us, %bb.y, %bb.aw
  %.2168 = phi ptr [ %i.ji, %bb.aw ], [ %.0169, %bb.y ], [ %.0169, %.split259.us ], [ %.0169, %.thread ]
  ret ptr %.2168
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @stbds_strdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %malloc = tail call ptr @malloc(i64 %i.b)       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %malloc, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  ret ptr %malloc
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define nonnull ptr @stbds_stralloc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 3 uses
  %i.b = add i64 %i.a, 1                          ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !53    ; 2 uses
  %i.h = lshr i8 %i.g, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = shl i64 512, %i.i                        ; 4 uses
  %i.k = icmp ult i64 %i.j, 1048576
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i8 %i.g, 1
  store i8 %i.l, ptr %i.f, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not45 = icmp ugt i64 %i.b, %i.j
  br i1 %.not45, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %i.a, 9
  %malloc44 = tail call ptr @malloc(i64 %i.m)     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %malloc44, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  %i.o = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  store ptr %i.p, ptr %malloc44, align 8, !tbaa !44
  store ptr %malloc44, ptr %i.o, align 8, !tbaa !44
  br label %.thread

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %malloc44, align 8, !tbaa !44
  store ptr %malloc44, ptr %0, align 8, !tbaa !43
  store i64 0, ptr %i.c, align 8, !tbaa !52
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.q = or disjoint i64 %i.j, 8
  %malloc = tail call ptr @malloc(i64 %i.q)       ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !43
  store ptr %i.r, ptr %malloc, align 8, !tbaa !44
  store ptr %malloc, ptr %0, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.s = phi i64 [ %i.d, %._crit_edge ], [ %i.j, %bb.h ] ; 2 uses
  %i.t = phi ptr [ %.pre, %._crit_edge ], [ %malloc, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  %i.w = xor i64 %i.a, -1
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w ; 2 uses
  %i.y = sub i64 %i.s, %i.b
  store i64 %i.y, ptr %i.c, align 8, !tbaa !52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.i
  %.1 = phi ptr [ %i.x, %bb.i ], [ %i.n, %bb.f ], [ %i.n, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable
define noalias nonnull ptr @stbds_shmode_func(i64 noundef %0, i32 noundef %1) local_unnamed_addr #16 {
stbds_log2.exit.i:
  %i.a = shl i64 %0, 2
  %i.b = add i64 %i.a, 32
  %malloc = tail call ptr @malloc(i64 %i.b)       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %malloc, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %malloc, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %malloc, i64 24
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %malloc, i64 8
  store i64 4, ptr %i.f, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.c, i8 0, i64 %0, i1 false)
  store i64 1, ptr %malloc, align 8, !tbaa !8
  %malloc.i = tail call dereferenceable_or_null(295) ptr @malloc(i64 295) ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %malloc.i, i64 104
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.h, 63
  %i.j = and i64 %i.i, -64
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %malloc.i, i64 96
  store ptr %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %malloc.i, i64 8
  store i64 8, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %malloc.i, i64 64
  store i64 3, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %malloc.i, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %malloc.i, i64 16
  store i64 0, ptr %i.p, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %malloc.i, i64 24
  store i64 6, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %malloc.i, i64 48
  store i64 1, ptr %i.r, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %malloc.i, i64 32
  store i64 0, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %malloc.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = load i64, ptr @stbds_hash_seed, align 8, !tbaa !13 ; 2 uses
  %i.v = mul i64 %i.u, 2862933555777941757
  %i.w = add i64 %i.v, 3037000493
  store i64 %i.w, ptr @stbds_hash_seed, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %malloc.i, i64 56
  store i64 %i.u, ptr %i.x, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.k, i8 0, i64 64, i1 false), !tbaa !13
  %2 = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %2, i8 -1, i64 64, i1 false), !tbaa !13
  store ptr %malloc.i, ptr %i.d, align 8, !tbaa !40
  %i.y = trunc i32 %1 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %malloc.i, i64 89
  store i8 %i.y, ptr %i.z, align 1, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %0
  ret ptr %i.aa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @stbds_hmdel_key(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 0, %1
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 11 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !49
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @stbds_hm_find_slot(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) ; 3 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = lshr i64 %i.i, 3
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = and i64 %i.i, 7                          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13   ; 6 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !8
  %i.t = add nsw i64 %i.s, -2                     ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !23
  store i64 1, ptr %i.g, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  store i64 1, ptr %i.aa, align 8, !tbaa !13
  store i64 -2, ptr %i.q, align 8, !tbaa !13
  %i.ab = icmp eq i32 %5, 1
  br i1 %i.ab, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !41
  %i.ae = icmp eq i8 %i.ad, 2
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = mul i64 %i.r, %1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.ah) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not = icmp eq i64 %i.r, %i.t
  br i1 %.not, label %bb.j, label %bb.h

.thread:                                          ; preds = %bb.d
  %.not91 = icmp eq i64 %i.r, %i.t
  br i1 %.not91, label %bb.j, label %.thread92

.thread92:                                        ; preds = %.thread
  %i.ai = mul i64 %i.r, %1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 2 uses
  %i.ak = mul i64 %i.t, %1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.al, i64 %1, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %4
  %i.an = tail call i64 @stbds_hm_find_slot(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.am, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = mul i64 %i.r, %1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao ; 2 uses
  %i.aq = mul i64 %i.t, %1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %i.ar, i64 %1, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %4
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.au = tail call i64 @stbds_hm_find_slot(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %i.at, i64 noundef %3, i64 noundef %4, i32 noundef 1)
  br label %bb.i

bb.i:                                             ; preds = %.thread92, %bb.h
  %.0 = phi i64 [ %i.au, %bb.h ], [ %i.an, %.thread92 ] ; 2 uses
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.aw = ashr i64 %.0, 3
  %i.ax = getelementptr inbounds [128 x i8], ptr %i.av, i64 %i.aw
  %i.ay = and i64 %.0, 7
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  store i64 %i.r, ptr %i.ba, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i, %bb.g
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !8
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr %i.d, align 8, !tbaa !8
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !27
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !21 ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 8
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = lshr i64 %i.bi, 1
  br label %.sink.split

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bl = load i64, ptr %i.x, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.bo = icmp ugt i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !21
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.l
  %.sink101 = phi i64 [ %i.bk, %bb.l ], [ %i.bq, %bb.n ]
  %i.br = tail call ptr @stbds_make_hash_index(i64 noundef %.sink101, ptr noundef nonnull %i.f)
  store ptr %i.br, ptr %i.e, align 8, !tbaa !40
  tail call void @free(ptr noundef nonnull %i.f) #22
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.b, %bb.m, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_2
