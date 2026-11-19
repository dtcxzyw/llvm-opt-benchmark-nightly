Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/dwt?download=true
inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0_@opj_dwt_calc_explicit_stepsizes:bb.a
  %i.aa = add i32 %i.k, %.neg2628                 ; 3 uses
  %i.ab = icmp ugt i32 %i.aa, 9
  %or.cond.i = and i1 %i.ab, %i.t
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 8)
  %spec.store.select.i = select i1 %i.t, i32 %i.aa, i32 %i.ac
  %i.ad = zext i32 %spec.store.select.i to i64
  %.0.i = select i1 %or.cond.i, i64 9, i64 %i.ad
  %i.ae = zext nneg i32 %i.s to i64
  %i.af = getelementptr inbounds nuw [80 x i8], ptr @opj_dwt_norms_real, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !77
  %i.ai = shl nuw nsw i32 1, %i.x
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fdiv double %i.aj, %i.ah
  %i.al = fmul double %i.ak, 8.192000e+03
  %i.am = tail call double @llvm.floor.f64(double %i.al)
  %i.an = fptosi double %i.am to i32              ; 2 uses
  %i.ao = add i32 %i.x, %1                        ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.aq = icmp sgt i32 %i.an, 1
  br i1 %i.aq, label %.lr.ph.i.i.preheader, label %opj_dwt_encode_stepsize.exit

.lr.ph.i.i.preheader:                             ; preds = %.thread34, %bb.d
  %i.ar = phi ptr [ %i.z, %.thread34 ], [ %i.ap, %bb.d ]
  %i.as = phi i32 [ %i.y, %.thread34 ], [ %i.ao, %bb.d ]
  %.036 = phi i32 [ 8192, %.thread34 ], [ %i.an, %bb.d ] ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.au, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %.045.i.i = phi i32 [ %i.at, %.lr.ph.i.i ], [ %.036, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.at = lshr i32 %.045.i.i, 1
  %i.au = add nuw nsw i32 %.06.i.i, 1
  %i.av = icmp samesign ugt i32 %.045.i.i, 3
  br i1 %i.av, label %.lr.ph.i.i, label %.lr.ph.i11.i, !llvm.loop !257

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i11.i
  %.06.i12.i = phi i32 [ %i.ax, %.lr.ph.i11.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.045.i13.i = phi i32 [ %i.aw, %.lr.ph.i11.i ], [ %.036, %.lr.ph.i.i ] ; 2 uses
  %i.aw = lshr i32 %.045.i13.i, 1
  %i.ax = add nuw nsw i32 %.06.i12.i, 1
  %i.ay = icmp samesign ugt i32 %.045.i13.i, 3
  br i1 %i.ay, label %.lr.ph.i11.i, label %opj_int_floorlog2.exit14.i, !llvm.loop !257

opj_int_floorlog2.exit14.i:                       ; preds = %.lr.ph.i11.i
  %i.az = icmp samesign ugt i32 %.06.i12.i, 10
  %.neg.i = add nsw i32 %.06.i12.i, -10
  %i.ba = lshr i32 %.036, %.neg.i
  %i.bb = sub nsw i32 10, %.06.i12.i
  %i.bc = shl i32 %.036, %i.bb
  %spec.select.i = select i1 %i.az, i32 %i.ba, i32 %i.bc
  %.neg30 = sub nsw i32 12, %.06.i.i
  %i.bd = and i32 %spec.select.i, 2047
  br label %opj_dwt_encode_stepsize.exit

opj_dwt_encode_stepsize.exit:                     ; preds = %bb.d, %opj_int_floorlog2.exit14.i
  %i.be = phi ptr [ %i.ar, %opj_int_floorlog2.exit14.i ], [ %i.ap, %bb.d ] ; 2 uses
  %i.bf = phi i32 [ %i.as, %opj_int_floorlog2.exit14.i ], [ %i.ao, %bb.d ]
  %.0.lcssa.i1621.i.neg31 = phi i32 [ %.neg30, %opj_int_floorlog2.exit14.i ], [ 13, %bb.d ]
  %i.bg = phi i32 [ %i.bd, %opj_int_floorlog2.exit14.i ], [ 0, %bb.d ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !265
  %i.bi = add i32 %i.bf, %.0.lcssa.i1621.i.neg31
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !266
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !258

._crit_edge:                                      ; preds = %opj_dwt_encode_stepsize.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_dwt_decode_real(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !guid !310 {
bb.a:
  %3 = alloca %struct.v8dwt_local, align 8        ; 13 uses
  %4 = alloca %struct.v8dwt_local, align 8        ; 11 uses
  %5 = alloca %struct.v8dwt_local, align 8        ; 14 uses
  %6 = alloca %struct.v8dwt_local, align 8        ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !311
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29, !alias.scope !311 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31, !noalias !311
  %i.i = load i32, ptr %i.f, align 8, !tbaa !32, !noalias !311
  %i.j = sub nsw i32 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33, !noalias !311
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34, !noalias !311
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !51, !alias.scope !311
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [192 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !31, !noalias !311
  %i.w = load i32, ptr %i.t, align 8, !tbaa !32, !noalias !311
  %i.x = sub i32 %i.v, %i.w                       ; 7 uses
  %i.y = tail call i32 @opj_thread_pool_get_thread_count(ptr noundef %i.d) #15, !noalias !311 ; 3 uses
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !31, !alias.scope !312, !noalias !311
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !32, !alias.scope !312, !noalias !311
  %i.ag = sub nsw i32 %i.ae, %i.af
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %.017.i.i, i32 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 204
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33, !alias.scope !312, !noalias !311
  %i.aj = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 196
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34, !alias.scope !312, !noalias !311
  %i.al = sub nsw i32 %i.ai, %i.ak
  %.2.i.i = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i, i32 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 384 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 392
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !31, !alias.scope !312, !noalias !311
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !32, !alias.scope !312, !noalias !311
  %i.aq = sub nsw i32 %i.ao, %i.ap
  %spec.select.i.i.1 = tail call i32 @llvm.umax.i32(i32 %.2.i.i, i32 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 396
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33, !alias.scope !312, !noalias !311
  %i.at = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 388
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34, !alias.scope !312, !noalias !311
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
  %lcmp.mod276 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01116.i.i.epil.init, i64 192
  %i.ax = getelementptr inbounds nuw i8, ptr %.01116.i.i.epil.init, i64 200
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !31, !alias.scope !312, !noalias !311
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !32, !alias.scope !312, !noalias !311
  %i.ba = sub nsw i32 %i.ay, %i.az
  %spec.select.i.i.epil = tail call i32 @llvm.umax.i32(i32 %.017.i.i.epil.init, i32 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %.01116.i.i.epil.init, i64 204
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !33, !alias.scope !312, !noalias !311
  %i.bd = getelementptr inbounds nuw i8, ptr %.01116.i.i.epil.init, i64 196
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !34, !alias.scope !312, !noalias !311
  %i.bf = sub nsw i32 %i.bc, %i.be
  %.2.i.i.epil = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i.epil, i32 %i.bf)
  br label %opj_dwt_max_resolution.exit.i

opj_dwt_max_resolution.exit.i:                    ; preds = %opj_dwt_max_resolution.exit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.2.i.i.lcssa = phi i32 [ %.2.i.i.1, %opj_dwt_max_resolution.exit.i.unr-lcssa ], [ %.2.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.bg = zext i32 %.2.i.i.lcssa to i64
  %i.bh = shl nuw nsw i64 %i.bg, 5                ; 3 uses
  %i.bi = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !311 ; 31 uses
  store ptr %i.bi, ptr %5, align 8, !tbaa !80, !noalias !311
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %opj_dwt_decode_tile_97.exit, label %.lr.ph358.i

.lr.ph358.i:                                      ; preds = %opj_dwt_max_resolution.exit.i
  store ptr %i.bi, ptr %6, align 8, !tbaa !80, !noalias !311
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27, !alias.scope !311 ; 15 uses
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
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cd = lshr i32 %i.y, 1
  %i.ce = tail call i32 @llvm.umax.i32(i32 %i.cd, i32 2)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %scevgep130 = getelementptr i8, ptr %i.bi, i64 16 ; 4 uses
  %i.cg = shl nuw nsw i64 %i.bw, 2                ; 2 uses
  %scevgep213 = getelementptr i8, ptr %i.bi, i64 -16
  %i.ch = shl nuw nsw i64 %i.bu, 2                ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bk, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.bk, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.bk, i64 %.idx277.i
  %i.cl = getelementptr i8, ptr %i.bk, i64 %.idx278.i
  %i.cm = getelementptr i8, ptr %i.bk, i64 %.idx.i
  %i.cn = getelementptr i8, ptr %i.bk, i64 %.idx274.i
  %i.co = getelementptr i8, ptr %i.bk, i64 %.idx275.i
  %i.cp = getelementptr i8, ptr %i.bk, i64 %.idx276.i
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph358.i
  %i.cq = phi i32 [ %i.aa, %.lr.ph358.i ], [ %i.qt, %.loopexit.i ]
  %.0237355.i = phi i32 [ %i.o, %.lr.ph358.i ], [ %i.da, %.loopexit.i ] ; 15 uses
  %.0238354.i = phi i32 [ %i.j, %.lr.ph358.i ], [ %i.cv, %.loopexit.i ] ; 5 uses
  %.0239353.i = phi ptr [ %i.f, %.lr.ph358.i ], [ %i.cr, %.loopexit.i ] ; 4 uses
  store i32 %.0238354.i, ptr %i.bl, align 4, !tbaa !81, !noalias !311
  store i32 %.0237355.i, ptr %i.bm, align 4, !tbaa !81, !noalias !311
  %i.cr = getelementptr inbounds nuw i8, ptr %.0239353.i, i64 192 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0239353.i, i64 200
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !31, !noalias !311
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !32, !noalias !311 ; 2 uses
  %i.cv = sub i32 %i.ct, %i.cu                    ; 16 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0239353.i, i64 204
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !33, !noalias !311
  %i.cy = getelementptr inbounds nuw i8, ptr %.0239353.i, i64 196 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !34, !noalias !311
  %i.da = sub i32 %i.cx, %i.cz                    ; 21 uses
  %i.db = sub i32 %i.cv, %.0238354.i              ; 4 uses
  store i32 %i.db, ptr %i.bn, align 8, !tbaa !82, !noalias !311
  %i.dc = srem i32 %i.cu, 2                       ; 2 uses
  store i32 %i.dc, ptr %i.bo, align 8, !tbaa !83, !noalias !311
  store i32 0, ptr %i.bp, align 4, !tbaa !84, !noalias !311
  store i32 %.0238354.i, ptr %i.bq, align 8, !tbaa !85, !noalias !311
  store i32 0, ptr %i.br, align 4, !tbaa !86, !noalias !311
  store i32 %i.db, ptr %i.bs, align 8, !tbaa !87, !noalias !311
  %i.dd = icmp ult i32 %i.da, 16
  %or.cond.i = select i1 %i.bt, i1 true, i1 %i.dd
  br i1 %or.cond.i, label %.preheader310.i, label %.lr.ph.i

.preheader310.i:                                  ; preds = %bb.d
  %i.de = icmp ugt i32 %i.da, 7
  br i1 %i.de, label %.lr.ph329.i, label %.loopexit311.i

.lr.ph329.i:                                      ; preds = %.preheader310.i
  %.not361.i = icmp eq i32 %i.cv, 0
  %wide.trip.count.i = zext i32 %i.cv to i64      ; 10 uses
  %i.df = shl nuw nsw i64 %wide.trip.count.i, 5
  %scevgep.a = getelementptr i8, ptr %i.bi, i64 %i.df ; 4 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count.i, 2   ; 4 uses
  %i.dh = shl nuw nsw i64 %wide.trip.count.i, 5
  %scevgep214 = getelementptr i8, ptr %scevgep213, i64 %i.dh ; 4 uses
  %7 = shl nuw nsw i64 %wide.trip.count.i, 2      ; 4 uses
  %min.iters.check216 = icmp ult i32 %i.cv, 21
  %i.di = getelementptr i8, ptr %i.bk, i64 %7
  %i.dj = getelementptr i8, ptr %i.cj, i64 %7
  %i.dk = getelementptr i8, ptr %i.ck, i64 %7
  %i.dl = getelementptr i8, ptr %i.cl, i64 %7
  %i.dm = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 4, i64 %i.dm
  %n.vec258 = sub nsw i64 %wide.trip.count.i, %i.do ; 2 uses
  %min.iters.check = icmp ult i32 %i.cv, 21
  %i.dp = getelementptr i8, ptr %i.cm, i64 %i.dg
  %i.dq = getelementptr i8, ptr %i.cn, i64 %i.dg
  %i.dr = getelementptr i8, ptr %i.co, i64 %i.dg
  %i.ds = getelementptr i8, ptr %i.cp, i64 %i.dg
  %i.dt = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = select i1 %i.du, i64 4, i64 %i.dt
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.dv  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge326.i, %.lr.ph329.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge326.i ], [ 0, %.lr.ph329.i ] ; 3 uses
  %.0224328.i = phi i32 [ %i.jq, %._crit_edge326.i ], [ 0, %.lr.ph329.i ]
  %.0226327.i = phi ptr [ %i.jp, %._crit_edge326.i ], [ %i.bk, %.lr.ph329.i ] ; 14 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.0226327.i, i32 noundef %i.x, i32 noundef 8), !noalias !311
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !311
  br i1 %.not361.i, label %._crit_edge326.i, label %.lr.ph323.i

.lr.ph323.i:                                      ; preds = %bb.e
  %i.dw = getelementptr inbounds nuw i8, ptr %.0226327.i, i64 %.idx277.i ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0226327.i, i64 %.idx278.i ; 6 uses
  br i1 %min.iters.check216, label %scalar.ph215.preheader, label %vector.memcheck217

scalar.ph215.preheader:                           ; preds = %vector.body259, %vector.memcheck217, %.lr.ph323.i
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph323.i ], [ %n.vec258, %vector.body259 ]
  br label %scalar.ph215

vector.memcheck217:                               ; preds = %.lr.ph323.i
  %i.dy = mul i64 %indvar, %i.cg                  ; 5 uses
  %8 = getelementptr i8, ptr %i.di, i64 %i.dy     ; 4 uses
  %9 = getelementptr i8, ptr %i.ci, i64 %i.dy     ; 4 uses
  %10 = getelementptr i8, ptr %i.dj, i64 %i.dy    ; 4 uses
  %bound0218 = icmp ult ptr %.0226327.i, %10
  %bound1219 = icmp ult ptr %9, %8
  %found.conflict220 = and i1 %bound0218, %bound1219
  %i.dz = getelementptr i8, ptr %i.dk, i64 %i.dy  ; 4 uses
  %bound0221 = icmp ult ptr %.0226327.i, %i.dz
  %bound1222 = icmp ult ptr %i.dw, %8
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %found.conflict220, %found.conflict223
  %i.ea = getelementptr i8, ptr %i.dl, i64 %i.dy  ; 4 uses
  %bound0225 = icmp ult ptr %.0226327.i, %i.ea
  %bound1226 = icmp ult ptr %i.dx, %8
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %.0226327.i, %scevgep214
  %bound1230 = icmp ult ptr %i.bi, %8
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %bound0233 = icmp ult ptr %9, %i.dz
  %bound1234 = icmp ult ptr %i.dw, %10
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  %bound0237 = icmp ult ptr %9, %i.ea
  %bound1238 = icmp ult ptr %i.dx, %10
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  %bound0241 = icmp ult ptr %9, %scevgep214
  %bound1242 = icmp ult ptr %i.bi, %10
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %conflict.rdx240, %found.conflict243
  %bound0245 = icmp ult ptr %i.dw, %i.ea
  %bound1246 = icmp ult ptr %i.dx, %i.dz
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  %bound0249 = icmp ult ptr %i.dw, %scevgep214
  %bound1250 = icmp ult ptr %i.bi, %i.dz
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %conflict.rdx248, %found.conflict251
  %bound0253 = icmp ult ptr %i.dx, %scevgep214
  %bound1254 = icmp ult ptr %i.bi, %i.ea
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict255
  br i1 %conflict.rdx256, label %scalar.ph215.preheader, label %vector.body259

vector.body259:                                   ; preds = %vector.memcheck217, %vector.body259
  %index260 = phi i64 [ %index.next261, %vector.body259 ], [ 0, %vector.memcheck217 ] ; 8 uses
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index260 ; 4 uses
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index260 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index260 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index260 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.ei = load float, ptr %i.eb, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.ej = load float, ptr %i.ed, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.ek = load float, ptr %i.ef, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.el = load float, ptr %i.eh, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.em = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.ej, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.ek, i64 2
  %i.ep = insertelement <4 x float> %i.eo, float %i.el, i64 3
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0226327.i, i64 %index260 ; 2 uses
  store <4 x float> %i.ep, ptr %i.eq, align 4, !tbaa !78, !alias.scope !314, !noalias !315
  %i.er = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 36
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 68
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 100
  %i.ev = load float, ptr %i.er, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.ew = load float, ptr %i.es, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.ex = load float, ptr %i.et, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.ey = load float, ptr %i.eu, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.ez = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 1
  %i.fb = insertelement <4 x float> %i.fa, float %i.ex, i64 2
  %i.fc = insertelement <4 x float> %i.fb, float %i.ey, i64 3
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.bu
  store <4 x float> %i.fc, ptr %i.fd, align 4, !tbaa !78, !alias.scope !316, !noalias !317
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  %i.fi = load float, ptr %i.fe, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.fj = load float, ptr %i.ff, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.fk = load float, ptr %i.fg, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.fl = load float, ptr %i.fh, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.fm = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fn = insertelement <4 x float> %i.fm, float %i.fj, i64 1
  %i.fo = insertelement <4 x float> %i.fn, float %i.fk, i64 2
  %i.fp = insertelement <4 x float> %i.fo, float %i.fl, i64 3
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index260
  store <4 x float> %i.fp, ptr %i.fq, align 4, !tbaa !78, !alias.scope !318, !noalias !319
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ec, i64 44
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ee, i64 76
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 108
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.fw = load float, ptr %i.fs, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !49, !alias.scope !313, !noalias !311
  %i.fz = insertelement <4 x float> poison, float %i.fv, i64 0
  %i.ga = insertelement <4 x float> %i.fz, float %i.fw, i64 1
  %i.gb = insertelement <4 x float> %i.ga, float %i.fx, i64 2
  %i.gc = insertelement <4 x float> %i.gb, float %i.fy, i64 3
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index260
  store <4 x float> %i.gc, ptr %i.gd, align 4, !tbaa !78, !alias.scope !320, !noalias !321
  %index.next261 = add nuw i64 %index260, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next261, %n.vec258
  br i1 %i.ge, label %scalar.ph215.preheader, label %vector.body259, !llvm.loop !277

.lr.ph325.i:                                      ; preds = %scalar.ph215
  %i.gf = getelementptr inbounds nuw i8, ptr %.0226327.i, i64 %.idx.i ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0226327.i, i64 %.idx274.i ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0226327.i, i64 %.idx275.i ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0226327.i, i64 %.idx276.i ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph325.i
  %indvars.iv377.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph325.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph325.i
  %11 = mul i64 %indvar, %i.cg                    ; 4 uses
  %12 = getelementptr i8, ptr %i.dp, i64 %11      ; 4 uses
  %13 = getelementptr i8, ptr %i.dq, i64 %11      ; 4 uses
  %bound0 = icmp ult ptr %i.gf, %13
  %bound1 = icmp ult ptr %i.gg, %12
  %found.conflict = and i1 %bound0, %bound1
  %i.gj = getelementptr i8, ptr %i.dr, i64 %11    ; 4 uses
  %bound0131 = icmp ult ptr %i.gf, %i.gj
  %bound1132 = icmp ult ptr %i.gh, %12
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx = or i1 %found.conflict, %found.conflict133
  %i.gk = getelementptr i8, ptr %i.ds, i64 %11    ; 4 uses
  %bound0134 = icmp ult ptr %i.gf, %i.gk
  %bound1135 = icmp ult ptr %i.gi, %12
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx, %found.conflict136
  %bound0138 = icmp ult ptr %i.gf, %scevgep.a
  %bound1139 = icmp ult ptr %scevgep130, %12
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %i.gg, %i.gj
  %bound1143 = icmp ult ptr %i.gh, %13
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %i.gg, %i.gk
  %bound1147 = icmp ult ptr %i.gi, %13
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  %bound0150 = icmp ult ptr %i.gg, %scevgep.a
  %bound1151 = icmp ult ptr %scevgep130, %13
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  %bound0154 = icmp ult ptr %i.gh, %i.gk
  %bound1155 = icmp ult ptr %i.gi, %i.gj
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %conflict.rdx153, %found.conflict156
  %bound0158 = icmp ult ptr %i.gh, %scevgep.a
  %bound1159 = icmp ult ptr %scevgep130, %i.gj
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx157, %found.conflict160
  %bound0162 = icmp ult ptr %i.gi, %scevgep.a
  %bound1163 = icmp ult ptr %scevgep130, %i.gk
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx161, %found.conflict164
  br i1 %conflict.rdx165, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 112
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.gu = load float, ptr %i.gq, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.gv = load float, ptr %i.gr, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.gw = load float, ptr %i.gs, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.gx = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 1
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 2
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 3
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index
  store <4 x float> %i.ha, ptr %i.hb, align 4, !tbaa !78, !alias.scope !323, !noalias !324
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gm, i64 52
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 84
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 116
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.hh = load float, ptr %i.hd, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.hi = load float, ptr %i.he, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.hj = load float, ptr %i.hf, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.hk = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 1
  %i.hm = insertelement <4 x float> %i.hl, float %i.hi, i64 2
  %i.hn = insertelement <4 x float> %i.hm, float %i.hj, i64 3
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index
  store <4 x float> %i.hn, ptr %i.ho, align 4, !tbaa !78, !alias.scope !325, !noalias !326
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.hs = getelementptr inbounds nuw i8, ptr %i.go, i64 120
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.hv = load float, ptr %i.hr, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.hw = load float, ptr %i.hs, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.hx = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 1
  %i.hz = insertelement <4 x float> %i.hy, float %i.hv, i64 2
  %i.ia = insertelement <4 x float> %i.hz, float %i.hw, i64 3
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index
  store <4 x float> %i.ia, ptr %i.ib, align 4, !tbaa !78, !alias.scope !327, !noalias !328
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %i.id = getelementptr inbounds nuw i8, ptr %i.gm, i64 60
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gn, i64 92
  %i.if = getelementptr inbounds nuw i8, ptr %i.go, i64 124
  %i.ig = load float, ptr %i.ic, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.ih = load float, ptr %i.id, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.ii = load float, ptr %i.ie, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.ij = load float, ptr %i.if, align 4, !tbaa !49, !alias.scope !322, !noalias !311
  %i.ik = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 1
  %i.im = insertelement <4 x float> %i.il, float %i.ii, i64 2
  %i.in = insertelement <4 x float> %i.im, float %i.ij, i64 3
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index
  store <4 x float> %i.in, ptr %i.io, align 4, !tbaa !78, !alias.scope !329, !noalias !330
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %scalar.ph.preheader, label %vector.body, !llvm.loop !284

scalar.ph215:                                     ; preds = %scalar.ph215.preheader, %scalar.ph215
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph215 ], [ %indvars.iv.i.ph, %scalar.ph215.preheader ] ; 5 uses
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.i ; 4 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !49, !noalias !311
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.0226327.i, i64 %indvars.iv.i ; 2 uses
  store float %i.ir, ptr %i.is, align 4, !tbaa !78, !noalias !311
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.iu = load float, ptr %i.it, align 4, !tbaa !49, !noalias !311
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.bu
  store float %i.iu, ptr %i.iv, align 4, !tbaa !78, !noalias !311
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !49, !noalias !311
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i
  store float %i.ix, ptr %i.iy, align 4, !tbaa !78, !noalias !311
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !49, !noalias !311
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i
  store float %i.ja, ptr %i.jb, align 4, !tbaa !78, !noalias !311
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond376.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond376.not.i, label %.lr.ph325.i, label %scalar.ph215, !llvm.loop !285

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv377.i = phi i64 [ %indvars.iv.next378.i, %scalar.ph ], [ %indvars.iv377.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.jc = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv377.i ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load float, ptr %i.jd, align 4, !tbaa !49, !noalias !311
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv377.i
  store float %i.je, ptr %i.jf, align 4, !tbaa !78, !noalias !311
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 20
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !49, !noalias !311
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv377.i
  store float %i.jh, ptr %i.ji, align 4, !tbaa !78, !noalias !311
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !49, !noalias !311
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv377.i
  store float %i.jk, ptr %i.jl, align 4, !tbaa !78, !noalias !311
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 28
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !49, !noalias !311
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv377.i
  store float %i.jn, ptr %i.jo, align 4, !tbaa !78, !noalias !311
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count.i
  br i1 %exitcond381.not.i, label %._crit_edge326.i, label %scalar.ph, !llvm.loop !286

._crit_edge326.i:                                 ; preds = %scalar.ph, %bb.e
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.0226327.i, i64 %i.bw ; 2 uses
  %i.jq = add nuw i32 %.0224328.i, 8              ; 3 uses
  %i.jr = or disjoint i32 %i.jq, 7
  %i.js = icmp ult i32 %i.jr, %i.da
  %indvar.next = add i64 %indvar, 1
  br i1 %i.js, label %bb.e, label %.loopexit311.i, !llvm.loop !287

.lr.ph.i:                                         ; preds = %bb.d
  %i.jt = lshr i32 %i.da, 3
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.jt, i32 %i.y) ; 2 uses
  %i.ju = shl nuw i32 %spec.select.i, 3
  %i.jv = udiv i32 %i.da, %i.ju
  %i.jw = shl nuw nsw i32 %i.jv, 3                ; 2 uses
  %i.jx = and i32 %i.da, -8                       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %.1225320.i = phi i32 [ 0, %.lr.ph.i ], [ %i.kk, %bb.j ] ; 2 uses
  %.1227319.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.kr, %bb.j ] ; 2 uses
  %i.jy = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !311 ; 15 uses
  %.not267.i = icmp eq ptr %i.jy, null
  br i1 %.not267.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !311
  br label %.critedge.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.jz = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !311 ; 2 uses
  store ptr %i.jz, ptr %i.jy, align 8, !tbaa !90, !noalias !311
  %.not268.i = icmp eq ptr %i.jz, null
  br i1 %.not268.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !311
  tail call void @opj_free(ptr noundef nonnull %i.jy) #15, !noalias !311
  br label %.critedge.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store i32 %i.db, ptr %i.ka, align 8, !tbaa !331, !noalias !311
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 %.0238354.i, ptr %i.kb, align 4, !tbaa !332, !noalias !311
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store i32 %i.dc, ptr %i.kc, align 8, !tbaa !333, !noalias !311
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 20
  store i32 0, ptr %i.kd, align 4, !tbaa !334, !noalias !311
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  store i32 %.0238354.i, ptr %i.ke, align 8, !tbaa !335, !noalias !311
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jy, i64 28
  store i32 0, ptr %i.kf, align 4, !tbaa !336, !noalias !311
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  store i32 %i.db, ptr %i.kg, align 8, !tbaa !337, !noalias !311
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  store i32 %i.cv, ptr %i.kh, align 8, !tbaa !91, !noalias !311
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 44
  store i32 %i.x, ptr %i.ki, align 4, !tbaa !92, !noalias !311
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jy, i64 48
  store ptr %.1227319.i, ptr %i.kj, align 8, !tbaa !93, !noalias !311
  %i.kk = add nuw nsw i32 %.1225320.i, 1          ; 2 uses
  %.not422.i = icmp eq i32 %i.kk, %spec.select.i  ; 2 uses
  %i.kl = mul i32 %.1225320.i, %i.jw
  %i.km = sub i32 %i.jx, %i.kl
  %i.kn = select i1 %.not422.i, i32 %i.km, i32 %i.jw ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jy, i64 56
  store i32 %i.kn, ptr %i.ko, align 8, !tbaa !94, !noalias !311
  %i.kp = mul i32 %i.kn, %i.x
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.1227319.i, i64 %i.kq ; 2 uses
  %i.ks = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_h_func, ptr noundef nonnull %i.jy) #15, !noalias !311 ; 0 uses
  br i1 %.not422.i, label %._crit_edge.i, label %bb.f, !llvm.loop !288

._crit_edge.i:                                    ; preds = %bb.j
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !311
  br label %.loopexit311.i

.loopexit311.i:                                   ; preds = %._crit_edge326.i, %._crit_edge.i, %.preheader310.i
  %.4230.i = phi ptr [ %i.kr, %._crit_edge.i ], [ %i.bk, %.preheader310.i ], [ %i.jp, %._crit_edge326.i ] ; 2 uses
  %.3.i = phi i32 [ %i.jx, %._crit_edge.i ], [ 0, %.preheader310.i ], [ %i.jq, %._crit_edge326.i ] ; 2 uses
  %i.kt = icmp ult i32 %.3.i, %i.da
  br i1 %i.kt, label %bb.k, label %.loopexit309.i

bb.k:                                             ; preds = %.loopexit311.i
  %i.ku = sub nuw i32 %i.da, %.3.i                ; 3 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.4230.i, i32 noundef %i.x, i32 noundef %i.ku), !noalias !311
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !311
end_hunk_0
