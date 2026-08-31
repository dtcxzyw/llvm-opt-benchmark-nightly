Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstdmt_compress?download=true
inline.NumInlined: 125
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ZSTDMT_initCStream_internal:bb.a
  %i.mb = load ptr, ptr %i.la, align 8, !tbaa !134 ; 2 uses
  %.not.i69.i = icmp eq ptr %1, %i.mb
  br i1 %.not.i69.i, label %._crit_edge.i.i, label %bb.cp

._crit_edge.i.i:                                  ; preds = %bb.co
  %.pre.i.i = load ptr, ptr %i.ld, align 8, !tbaa !131
  %.pre46.i.i = load i32, ptr %i.lf, align 4, !tbaa !133
  %.pre48.i.i = load i32, ptr %i.le, align 8, !tbaa !132
  br label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.mc = load ptr, ptr %i.lc, align 8, !tbaa !130 ; 4 uses
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me                    ; 2 uses
  %i.mg = load i32, ptr %i.le, align 8, !tbaa !132 ; 3 uses
  store i32 %i.mg, ptr %i.lf, align 4, !tbaa !133
  %i.mh = trunc i64 %i.mf to i32                  ; 6 uses
  store i32 %i.mh, ptr %i.le, align 8, !tbaa !132
  store ptr %i.mc, ptr %i.ld, align 8, !tbaa !131
  %i.mi = sub i64 0, %i.mf
  %i.mj = getelementptr inbounds i8, ptr %1, i64 %i.mi
  store ptr %i.mj, ptr %i.lc, align 8, !tbaa !130
  %i.mk = sub i32 %i.mh, %i.mg
  %i.ml = icmp ult i32 %i.mk, 8
  br i1 %i.ml, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 %i.mh, ptr %i.lf, align 4, !tbaa !133
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i
  %i.mm = phi i32 [ %.pre48.i.i, %._crit_edge.i.i ], [ %i.mh, %bb.cq ], [ %i.mh, %bb.cp ]
  %i.mn = phi i32 [ %.pre46.i.i, %._crit_edge.i.i ], [ %i.mh, %bb.cq ], [ %i.mg, %bb.cp ]
  %i.mo = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.mc, %bb.cq ], [ %i.mc, %bb.cp ] ; 3 uses
  store ptr %i.ma, ptr %i.la, align 8, !tbaa !134
  %i.mp = zext i32 %i.mn to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mp
  %i.mr = icmp ugt ptr %i.ma, %i.mq
  %i.ms = zext i32 %i.mm to i64                   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.ms
  %i.mu = icmp ult ptr %1, %i.mt
  %i.mv = and i1 %i.mr, %i.mu
  br i1 %i.mv, label %bb.cs, label %ZSTD_window_update.exit.i

bb.cs:                                            ; preds = %bb.cr
  %i.mw = ptrtoint ptr %i.ma to i64
  %i.mx = ptrtoint ptr %i.mo to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = call i64 @llvm.smin.i64(i64 %i.my, i64 %i.ms)
  %i.na = trunc i64 %i.mz to i32
  store i32 %i.na, ptr %i.lf, align 4, !tbaa !133
  br label %ZSTD_window_update.exit.i

ZSTD_window_update.exit.i:                        ; preds = %bb.cs, %bb.cr
  call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %i.la, ptr noundef %1, ptr noundef nonnull %i.ma, ptr noundef nonnull %i.jx) #15
  %i.nb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !138
  %.not53.i = icmp eq i32 %i.nc, 0
  br i1 %.not53.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %ZSTD_window_update.exit.i
  %i.nd = load ptr, ptr %i.lc, align 8, !tbaa !139
  %i.ne = ptrtoint ptr %i.ma to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = trunc i64 %i.ng to i32
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %ZSTD_window_update.exit.i
  %i.ni = phi i32 [ %i.nh, %bb.ct ], [ 0, %ZSTD_window_update.exit.i ]
  store i32 %i.ni, ptr %i.lx, align 8, !tbaa !137
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.thread83.i
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 2784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.nj, ptr noundef nonnull align 8 dereferenceable(40) %i.la, i64 40, i1 false), !tbaa.struct !140
  br label %bb.cw

ZSTDMT_serialState_reset.exit.thread:             ; preds = %.thread.i, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %ZSTDMT_resize.exit.thread

bb.cw:                                            ; preds = %bb.cv, %bb.by
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.nk, ptr noundef nonnull align 8 dereferenceable(216) %7, i64 216, i1 false), !tbaa.struct !106
  %i.nl = and i64 %i.jq, 4294967295
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %i.nl, ptr %i.nm, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %ZSTDMT_resize.exit.thread

ZSTDMT_resize.exit.thread:                        ; preds = %bb.ae, %ZSTDMT_expandCCtxPool.exit.thread.i, %bb.j, %bb.b, %ZSTDMT_expandJobsTable.exit.i, %bb.cw, %ZSTDMT_serialState_reset.exit.thread, %bb.bs, %bb.as
  %.3 = phi i64 [ -64, %ZSTDMT_serialState_reset.exit.thread ], [ -64, %bb.bs ], [ -64, %bb.as ], [ 0, %bb.cw ], [ -64, %ZSTDMT_expandJobsTable.exit.i ], [ -64, %bb.b ], [ -64, %bb.j ], [ -64, %ZSTDMT_expandCCtxPool.exit.thread.i ], [ -64, %bb.ae ]
  ret i64 %.3
}

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #2

declare i64 @ZSTD_compressBound(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTDMT_nextInputSizeHint(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = select i1 %i.e, i64 0, i64 %i.d
  %spec.select = sub i64 %i.b, %i.f
  ret i64 %spec.select
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDMT_compressStream_generic(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2860 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !143
  %i.c = icmp ne i32 %i.b, 0
  %i.d = icmp eq i32 %3, 0                        ; 3 uses
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.bn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !86
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %ZSTDMT_tryGetInputRange.exit.thread134

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !144  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !146  ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %ZSTDMT_tryGetInputRange.exit.thread134

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !147  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %ZSTDMT_tryGetInputRange.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2852
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.r = load i32, ptr %i.q, align 8, !tbaa !83   ; 2 uses
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %ZSTDMT_getInputDataInUse.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.x = add nuw i32 %.02329.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.x, %i.r
  br i1 %exitcond.not.i.i, label %ZSTDMT_getInputDataInUse.exit.i, label %bb.g, !llvm.loop !148

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.02329.i.i = phi i32 [ %i.p, %.lr.ph.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = and i32 %.02329.i.i, %i.u
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [368 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !91 ; 2 uses
  %.not.i.i = icmp ult i64 %i.ab, %i.ad
  br i1 %.not.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !40 ; 2 uses
  %i.ae = icmp eq i64 %.sroa.4.0.copyload.i.i, 0  ; 2 uses
  %spec.select.v.i.i = select i1 %i.ae, i64 88, i64 72
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %spec.select.v.i.i
  %spec.select25.i.i = select i1 %i.ae, i64 %i.ad, i64 %.sroa.4.0.copyload.i.i
  %.sroa.0.1.i.i = load ptr, ptr %spec.select.i.i, align 8, !tbaa !39
  br label %ZSTDMT_getInputDataInUse.exit.i

ZSTDMT_getInputDataInUse.exit.i:                  ; preds = %bb.f, %.thread.i.i, %bb.e
  %.sroa.0.3.i.i = phi ptr [ %.sroa.0.1.i.i, %.thread.i.i ], [ null, %bb.e ], [ null, %bb.f ] ; 6 uses
  %.sroa.4.3.i.i = phi i64 [ %spec.select25.i.i, %.thread.i.i ], [ 0, %bb.e ], [ 0, %bb.f ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !123 ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = load i64, ptr %i.al, align 8, !tbaa !115 ; 6 uses
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %ZSTDMT_getInputDataInUse.exit.i
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !62 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !149 ; 7 uses
  %i.ar = icmp eq ptr %.sroa.0.3.i.i, null
  %i.as = icmp eq ptr %i.ao, null                 ; 3 uses
  %or.cond.i.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.i.i, label %ZSTDMT_isOverlapped.exit.thread.i, label %ZSTDMT_isOverlapped.exit.i

ZSTDMT_isOverlapped.exit.i:                       ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i, i64 %.sroa.4.3.i.i
  %i.av = icmp samesign eq i64 %i.aq, 0
  %i.aw = icmp samesign eq i64 %.sroa.4.3.i.i, 0
  %or.cond19.not.i.not78.i = select i1 %i.av, i1 true, i1 %i.aw
  %i.ax = icmp uge ptr %i.ao, %i.au
  %i.ay = icmp uge ptr %.sroa.0.3.i.i, %i.at
  %.not75.i = select i1 %or.cond19.not.i.not78.i, i1 true, i1 %i.ax
  %narrow.i.not.i = select i1 %.not75.i, i1 true, i1 %i.ay
  br i1 %narrow.i.not.i, label %ZSTDMT_isOverlapped.exit.thread.i, label %ZSTDMT_tryGetInputRange.exit.thread134

ZSTDMT_isOverlapped.exit.thread.i:                ; preds = %ZSTDMT_isOverlapped.exit.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !121
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.critedge.preheader.i.i, label %ZSTDMT_waitForLdmComplete.exit.i

.critedge.preheader.i.i:                          ; preds = %ZSTDMT_isOverlapped.exit.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bd, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %.sroa.4.0.copyload.i37.i = load ptr, ptr %.sroa.4.0..sroa_idx.i36.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.be = icmp eq ptr %.sroa.5.0.copyload.i.i, null
  %or.cond.i.i.i.i = select i1 %i.be, i1 true, i1 %i.as
  %i.bf = icmp eq ptr %.sroa.4.0.copyload.i37.i, null ; 2 uses
  %i.bg = zext i32 %.sroa.6.0.copyload.i.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i37.i, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.bj = icmp samesign eq i64 %i.aq, 0
  %i.bk = icmp eq ptr %.sroa.0.0.copyload.i.i, %i.bh
  %or.cond19.not.i7.i.not10.i.i = select i1 %i.bj, i1 true, i1 %i.bk
  %i.bl = icmp uge ptr %i.ao, %.sroa.0.0.copyload.i.i
  %i.bm = icmp uge ptr %i.bh, %i.bi
  %.not7.i.i = select i1 %or.cond19.not.i7.i.not10.i.i, i1 true, i1 %i.bl
  %narrow.i8.i.not.i.i = select i1 %.not7.i.i, i1 true, i1 %i.bm ; 2 uses
  br i1 %or.cond.i.i.i.i, label %.critedge.preheader.split.us.i.i, label %.critedge.preheader.split.i.i

.critedge.preheader.split.us.i.i:                 ; preds = %.critedge.preheader.i.i
  %or.cond.i6.i.i.i = select i1 %i.bf, i1 true, i1 %i.as
  %brmerge.i.i = select i1 %or.cond.i6.i.i.i, i1 true, i1 %narrow.i8.i.not.i.i
  br i1 %brmerge.i.i, label %ZSTDMT_waitForLdmComplete.exit.i, label %ZSTDMT_doesOverlapWindow.exit.us.i.i

ZSTDMT_doesOverlapWindow.exit.us.i.i:             ; preds = %.critedge.preheader.split.us.i.i, %ZSTDMT_doesOverlapWindow.exit.us.i.i
  br label %ZSTDMT_doesOverlapWindow.exit.us.i.i

.critedge.preheader.split.i.i:                    ; preds = %.critedge.preheader.i.i
  %brmerge16.i.i = select i1 %i.bf, i1 true, i1 %narrow.i8.i.not.i.i
  br i1 %brmerge16.i.i, label %ZSTDMT_waitForLdmComplete.exit.i, label %ZSTDMT_doesOverlapWindow.exit.us13.i.i

ZSTDMT_doesOverlapWindow.exit.us13.i.i:           ; preds = %.critedge.preheader.split.i.i, %ZSTDMT_doesOverlapWindow.exit.us13.i.i
  br label %ZSTDMT_doesOverlapWindow.exit.us13.i.i

ZSTDMT_waitForLdmComplete.exit.i:                 ; preds = %.critedge.preheader.split.i.i, %.critedge.preheader.split.us.i.i, %ZSTDMT_isOverlapped.exit.thread.i
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !150
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.bn, i64 %i.aq, i1 false)
  store ptr %i.ao, ptr %i.az, align 8, !tbaa !150
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !123
  br label %bb.i

bb.i:                                             ; preds = %ZSTDMT_waitForLdmComplete.exit.i, %ZSTDMT_getInputDataInUse.exit.i
  %i.bo = phi i64 [ %i.aq, %ZSTDMT_waitForLdmComplete.exit.i ], [ %i.aj, %ZSTDMT_getInputDataInUse.exit.i ]
  %i.bp = load ptr, ptr %i.af, align 8, !tbaa !62 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo ; 6 uses
  %i.br = icmp eq ptr %.sroa.0.3.i.i, null
  %i.bs = icmp eq ptr %i.bp, null                 ; 3 uses
  %or.cond.i38.i = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond.i38.i, label %ZSTDMT_isOverlapped.exit43.thread.i, label %ZSTDMT_isOverlapped.exit43.i

ZSTDMT_isOverlapped.exit43.i:                     ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.am
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i, i64 %.sroa.4.3.i.i
  %i.bv = icmp samesign eq i64 %i.am, 0
  %i.bw = icmp samesign eq i64 %.sroa.4.3.i.i, 0
  %or.cond19.not.i39.not83.i = select i1 %i.bv, i1 true, i1 %i.bw
  %i.bx = icmp uge ptr %i.bq, %i.bu
  %i.by = icmp uge ptr %.sroa.0.3.i.i, %i.bt
  %.not81.i = select i1 %or.cond19.not.i39.not83.i, i1 true, i1 %i.bx
  %narrow.i40.not.i = select i1 %.not81.i, i1 true, i1 %i.by
  br i1 %narrow.i40.not.i, label %ZSTDMT_isOverlapped.exit43.thread.i, label %ZSTDMT_isOverlapped.exit43.i.ZSTDMT_tryGetInputRange.exitthread-pre-split_crit_edge

ZSTDMT_isOverlapped.exit43.i.ZSTDMT_tryGetInputRange.exitthread-pre-split_crit_edge: ; preds = %ZSTDMT_isOverlapped.exit43.i
  %.pr.pre = load ptr, ptr %i.l, align 8, !tbaa !147
  br label %ZSTDMT_tryGetInputRange.exit

ZSTDMT_isOverlapped.exit43.thread.i:              ; preds = %ZSTDMT_isOverlapped.exit43.i, %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !121
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.critedge.preheader.i44.i, label %ZSTDMT_waitForLdmComplete.exit68.i

.critedge.preheader.i44.i:                        ; preds = %ZSTDMT_isOverlapped.exit43.thread.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %.sroa.0.0.copyload.i45.i = load ptr, ptr %i.cc, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i46.i = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %.sroa.4.0.copyload.i47.i = load ptr, ptr %.sroa.4.0..sroa_idx.i46.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %.sroa.5.0.copyload.i49.i = load ptr, ptr %.sroa.5.0..sroa_idx.i48.i, align 8
  %.sroa.6.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %.sroa.6.0.copyload.i51.i = load i32, ptr %.sroa.6.0..sroa_idx.i50.i, align 8
  %i.cd = icmp eq ptr %.sroa.5.0.copyload.i49.i, null
  %or.cond.i.i.i52.i = select i1 %i.cd, i1 true, i1 %i.bs
  %i.ce = icmp eq ptr %.sroa.4.0.copyload.i47.i, null ; 2 uses
  %i.cf = zext i32 %.sroa.6.0.copyload.i51.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i47.i, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.am
  %i.ci = icmp samesign eq i64 %i.am, 0
  %i.cj = icmp eq ptr %.sroa.0.0.copyload.i45.i, %i.cg
  %or.cond19.not.i7.i.not10.i53.i = select i1 %i.ci, i1 true, i1 %i.cj
  %i.ck = icmp uge ptr %i.bq, %.sroa.0.0.copyload.i45.i
  %i.cl = icmp uge ptr %i.cg, %i.ch
  %.not7.i54.i = select i1 %or.cond19.not.i7.i.not10.i53.i, i1 true, i1 %i.ck
  %narrow.i8.i.not.i55.i = select i1 %.not7.i54.i, i1 true, i1 %i.cl ; 2 uses
  br i1 %or.cond.i.i.i52.i, label %.critedge.preheader.split.us.i64.i, label %.critedge.preheader.split.i56.i

.critedge.preheader.split.us.i64.i:               ; preds = %.critedge.preheader.i44.i
  %or.cond.i6.i.i65.i = select i1 %i.ce, i1 true, i1 %i.bs
  %brmerge.i66.i = select i1 %or.cond.i6.i.i65.i, i1 true, i1 %narrow.i8.i.not.i55.i
  br i1 %brmerge.i66.i, label %ZSTDMT_waitForLdmComplete.exit68.i, label %ZSTDMT_doesOverlapWindow.exit.us.i67.i

ZSTDMT_doesOverlapWindow.exit.us.i67.i:           ; preds = %.critedge.preheader.split.us.i64.i, %ZSTDMT_doesOverlapWindow.exit.us.i67.i
  br label %ZSTDMT_doesOverlapWindow.exit.us.i67.i

.critedge.preheader.split.i56.i:                  ; preds = %.critedge.preheader.i44.i
  %brmerge16.i62.i = select i1 %i.ce, i1 true, i1 %narrow.i8.i.not.i55.i
  br i1 %brmerge16.i62.i, label %ZSTDMT_waitForLdmComplete.exit68.i, label %ZSTDMT_doesOverlapWindow.exit.us13.i63.i

ZSTDMT_doesOverlapWindow.exit.us13.i63.i:         ; preds = %.critedge.preheader.split.i56.i, %ZSTDMT_doesOverlapWindow.exit.us13.i63.i
  br label %ZSTDMT_doesOverlapWindow.exit.us13.i63.i

ZSTDMT_waitForLdmComplete.exit68.i:               ; preds = %.critedge.preheader.split.i56.i, %.critedge.preheader.split.us.i64.i, %ZSTDMT_isOverlapped.exit43.thread.i
  store ptr %i.bq, ptr %i.l, align 8, !tbaa !39
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.am, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.cm, align 8, !tbaa !81
  br label %ZSTDMT_tryGetInputRange.exit

ZSTDMT_tryGetInputRange.exit:                     ; preds = %ZSTDMT_isOverlapped.exit43.i.ZSTDMT_tryGetInputRange.exitthread-pre-split_crit_edge, %ZSTDMT_waitForLdmComplete.exit68.i
  %i.cn = phi ptr [ %i.bq, %ZSTDMT_waitForLdmComplete.exit68.i ], [ %.pr.pre, %ZSTDMT_isOverlapped.exit43.i.ZSTDMT_tryGetInputRange.exitthread-pre-split_crit_edge ] ; 2 uses
  %.not58 = icmp eq ptr %i.cn, null
  br i1 %.not58, label %ZSTDMT_tryGetInputRange.exit.thread134, label %ZSTDMT_tryGetInputRange.exit.ZSTDMT_tryGetInputRange.exit.thread_crit_edge

ZSTDMT_tryGetInputRange.exit.ZSTDMT_tryGetInputRange.exit.thread_crit_edge: ; preds = %ZSTDMT_tryGetInputRange.exit
  %.sroa.4.0.copyload.pre = load i64, ptr %i.g, align 8
  %.sroa.5.0.copyload.pre = load i64, ptr %i.i, align 8
  br label %ZSTDMT_tryGetInputRange.exit.thread

ZSTDMT_tryGetInputRange.exit.thread:              ; preds = %ZSTDMT_tryGetInputRange.exit.ZSTDMT_tryGetInputRange.exit.thread_crit_edge, %bb.d
  %.sroa.5.0.copyload = phi i64 [ %.sroa.5.0.copyload.pre, %ZSTDMT_tryGetInputRange.exit.ZSTDMT_tryGetInputRange.exit.thread_crit_edge ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %ZSTDMT_tryGetInputRange.exit.ZSTDMT_tryGetInputRange.exit.thread_crit_edge ], [ %i.h, %bb.d ]
  %i.co = phi ptr [ %i.cn, %ZSTDMT_tryGetInputRange.exit.ZSTDMT_tryGetInputRange.exit.thread_crit_edge ], [ %i.m, %bb.d ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.5.0.copyload ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !119
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !118 ; 4 uses
  %i.cu = sub i64 %.sroa.4.0.copyload, %.sroa.5.0.copyload ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !115
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !81 ; 13 uses
  %i.cz = sub i64 %i.cw, %i.cy
  %..i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cz) ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.db = load i32, ptr %i.da, align 4, !tbaa !151
  %.not.i = icmp eq i32 %i.db, 0
  br i1 %.not.i, label %findSynchronizationPoint.exit.thread, label %bb.j

bb.j:                                             ; preds = %ZSTDMT_tryGetInputRange.exit.thread
  %i.dc = add i64 %i.cy, %i.cu
  %i.dd = icmp ult i64 %i.dc, 131072
  %i.de = add i64 %..i, %i.cy
  %i.df = icmp ult i64 %i.de, 32
  %or.cond.i = select i1 %i.dd, i1 true, i1 %i.df
  br i1 %or.cond.i, label %findSynchronizationPoint.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = icmp ult i64 %i.cy, 131072
  br i1 %i.dg, label %bb.l, label %ZSTD_rollingHash_compute.exit66.i

bb.l:                                             ; preds = %bb.k
  %i.dh = sub nuw nsw i64 131072, %i.cy           ; 7 uses
  %i.di = icmp samesign ult i64 %i.cy, 131041
  br i1 %i.di, label %ZSTD_rollingHash_compute.exit.loopexit.i, label %bb.m

ZSTD_rollingHash_compute.exit.loopexit.i:         ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dh ; 32 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -32 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !152
  %i.dm = zext i8 %i.dl to i64
  %i.dn = mul i64 %i.dm, -3523014627327384477
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 -31
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !152
  %i.dq = zext i8 %i.dp to i64
  %i.dr = add i64 %i.dn, 1663341874145258472
  %i.ds = add i64 %i.dr, %i.dq
  %i.dt = mul i64 %i.ds, -3523014627327384477
  %i.du = getelementptr inbounds i8, ptr %i.dj, i64 -30
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !152
  %i.dw = zext i8 %i.dv to i64
  %i.dx = add nuw nsw i64 %i.dw, 10
  %i.dy = add i64 %i.dx, %i.dt
  %i.dz = mul i64 %i.dy, -3523014627327384477
  %i.ea = getelementptr inbounds i8, ptr %i.dj, i64 -29
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !152
  %i.ec = zext i8 %i.eb to i64
  %i.ed = add nuw nsw i64 %i.ec, 10
  %i.ee = add i64 %i.ed, %i.dz
  %i.ef = mul i64 %i.ee, -3523014627327384477
  %i.eg = getelementptr inbounds i8, ptr %i.dj, i64 -28
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !152
  %i.ei = zext i8 %i.eh to i64
  %i.ej = add nuw nsw i64 %i.ei, 10
  %i.ek = add i64 %i.ej, %i.ef
  %i.el = mul i64 %i.ek, -3523014627327384477
  %i.em = getelementptr inbounds i8, ptr %i.dj, i64 -27
  %i.en = load i8, ptr %i.em, align 1, !tbaa !152
  %i.eo = zext i8 %i.en to i64
  %i.ep = add nuw nsw i64 %i.eo, 10
  %i.eq = add i64 %i.ep, %i.el
  %i.er = mul i64 %i.eq, -3523014627327384477
  %i.es = getelementptr inbounds i8, ptr %i.dj, i64 -26
  %i.et = load i8, ptr %i.es, align 1, !tbaa !152
  %i.eu = zext i8 %i.et to i64
  %i.ev = add nuw nsw i64 %i.eu, 10
  %i.ew = add i64 %i.ev, %i.er
  %i.ex = mul i64 %i.ew, -3523014627327384477
  %i.ey = getelementptr inbounds i8, ptr %i.dj, i64 -25
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !152
  %i.fa = zext i8 %i.ez to i64
  %i.fb = add nuw nsw i64 %i.fa, 10
  %i.fc = add i64 %i.fb, %i.ex
  %i.fd = mul i64 %i.fc, -3523014627327384477
  %i.fe = getelementptr inbounds i8, ptr %i.dj, i64 -24
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !152
  %i.fg = zext i8 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.fg, 10
  %i.fi = add i64 %i.fh, %i.fd
  %i.fj = mul i64 %i.fi, -3523014627327384477
  %i.fk = getelementptr inbounds i8, ptr %i.dj, i64 -23
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !152
  %i.fm = zext i8 %i.fl to i64
  %i.fn = add nuw nsw i64 %i.fm, 10
  %i.fo = add i64 %i.fn, %i.fj
  %i.fp = mul i64 %i.fo, -3523014627327384477
  %i.fq = getelementptr inbounds i8, ptr %i.dj, i64 -22
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !152
  %i.fs = zext i8 %i.fr to i64
  %i.ft = add nuw nsw i64 %i.fs, 10
  %i.fu = add i64 %i.ft, %i.fp
  %i.fv = mul i64 %i.fu, -3523014627327384477
  %i.fw = getelementptr inbounds i8, ptr %i.dj, i64 -21
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !152
  %i.fy = zext i8 %i.fx to i64
  %i.fz = add nuw nsw i64 %i.fy, 10
  %i.ga = add i64 %i.fz, %i.fv
  %i.gb = mul i64 %i.ga, -3523014627327384477
  %i.gc = getelementptr inbounds i8, ptr %i.dj, i64 -20
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !152
  %i.ge = zext i8 %i.gd to i64
  %i.gf = add nuw nsw i64 %i.ge, 10
  %i.gg = add i64 %i.gf, %i.gb
  %i.gh = mul i64 %i.gg, -3523014627327384477
  %i.gi = getelementptr inbounds i8, ptr %i.dj, i64 -19
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !152
  %i.gk = zext i8 %i.gj to i64
  %i.gl = add nuw nsw i64 %i.gk, 10
  %i.gm = add i64 %i.gl, %i.gh
  %i.gn = mul i64 %i.gm, -3523014627327384477
  %i.go = getelementptr inbounds i8, ptr %i.dj, i64 -18
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !152
  %i.gq = zext i8 %i.gp to i64
  %i.gr = add nuw nsw i64 %i.gq, 10
  %i.gs = add i64 %i.gr, %i.gn
  %i.gt = mul i64 %i.gs, -3523014627327384477
  %i.gu = getelementptr inbounds i8, ptr %i.dj, i64 -17
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !152
  %i.gw = zext i8 %i.gv to i64
  %i.gx = add nuw nsw i64 %i.gw, 10
  %i.gy = add i64 %i.gx, %i.gt
  %i.gz = mul i64 %i.gy, -3523014627327384477
  %i.ha = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !152
  %i.hc = zext i8 %i.hb to i64
  %i.hd = add nuw nsw i64 %i.hc, 10
  %i.he = add i64 %i.hd, %i.gz
  %i.hf = mul i64 %i.he, -3523014627327384477
  %i.hg = getelementptr inbounds i8, ptr %i.dj, i64 -15
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !152
  %i.hi = zext i8 %i.hh to i64
  %i.hj = add nuw nsw i64 %i.hi, 10
  %i.hk = add i64 %i.hj, %i.hf
  %i.hl = mul i64 %i.hk, -3523014627327384477
  %i.hm = getelementptr inbounds i8, ptr %i.dj, i64 -14
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !152
  %i.ho = zext i8 %i.hn to i64
  %i.hp = add nuw nsw i64 %i.ho, 10
  %i.hq = add i64 %i.hp, %i.hl
  %i.hr = mul i64 %i.hq, -3523014627327384477
  %i.hs = getelementptr inbounds i8, ptr %i.dj, i64 -13
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !152
  %i.hu = zext i8 %i.ht to i64
  %i.hv = add nuw nsw i64 %i.hu, 10
  %i.hw = add i64 %i.hv, %i.hr
  %i.hx = mul i64 %i.hw, -3523014627327384477
  %i.hy = getelementptr inbounds i8, ptr %i.dj, i64 -12
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !152
  %i.ia = zext i8 %i.hz to i64
  %i.ib = add nuw nsw i64 %i.ia, 10
  %i.ic = add i64 %i.ib, %i.hx
  %i.id = mul i64 %i.ic, -3523014627327384477
  %i.ie = getelementptr inbounds i8, ptr %i.dj, i64 -11
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !152
  %i.ig = zext i8 %i.if to i64
  %i.ih = add nuw nsw i64 %i.ig, 10
  %i.ii = add i64 %i.ih, %i.id
  %i.ij = mul i64 %i.ii, -3523014627327384477
  %i.ik = getelementptr inbounds i8, ptr %i.dj, i64 -10
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !152
  %i.im = zext i8 %i.il to i64
  %i.in = add nuw nsw i64 %i.im, 10
  %i.io = add i64 %i.in, %i.ij
end_hunk_0
