Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3HullMap_first:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store ptr %i.k, ptr %i.g, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload11.i = load i64, ptr %i.f, align 2  ; 2 uses
  %.not.not12.i = icmp eq i64 %.0.copyload11.i, 0
  br i1 %.not.not12.i, label %.lr.ph.i, label %b3HullMap_fast_forward.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.m = phi ptr [ %i.o, %.lr.ph.i ], [ %i.c, %bb.c ]
  %i.n = phi ptr [ %i.p, %.lr.ph.i ], [ %i.f, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.0.copyload.i = load i64, ptr %i.p, align 2    ; 2 uses
  %.not.not.i = icmp eq i64 %.0.copyload.i, 0
  br i1 %.not.not.i, label %.lr.ph.i, label %b3HullMap_fast_forward.exit

b3HullMap_fast_forward.exit:                      ; preds = %.lr.ph.i, %bb.c
  %i.q = phi ptr [ %i.c, %bb.c ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi ptr [ %i.f, %bb.c ], [ %i.p, %.lr.ph.i ]
  %.0.copyload.lcssa.i = phi i64 [ %.0.copyload11.i, %bb.c ], [ %.0.copyload.i, %.lr.ph.i ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0.copyload.lcssa.i, i1 true)
  %i.s = lshr i64 %i.r, 4                         ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  store ptr %i.t, ptr %0, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.lcssa.i, i64 %i.s
  store ptr %i.u, ptr %i.d, align 8, !tbaa !100
  store i64 -1, ptr %i.l, align 8, !tbaa !111
  br label %bb.d

bb.d:                                             ; preds = %b3HullMap_fast_forward.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3HullMap_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !98
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %i.d = icmp ne i64 %i.c, 0
  %i.e = zext i1 %i.d to i64
  %i.f = add i64 %i.c, %i.e                       ; 2 uses
  %.not9 = icmp eq i64 %i.f, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = shl nuw i64 %i.f, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.h, i8 0, i64 %i.i, i1 false), !tbaa !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  store i64 0, ptr %0, align 8, !tbaa !98
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3HullMap_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.e = mul i64 %i.b, 18
  %i.f = add i64 %i.e, 26
  tail call void @b3Free(ptr noundef %i.d, i64 noundef %i.f) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr @vt_empty_placeholder_metadatum, ptr %i.g, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @b3HullMapByteCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = add i64 %i.b, 1
  %.not = icmp ult i64 %i.c, 2
  %i.d = mul i64 %i.b, 18
  %i.e = add i64 %i.d, 58
  %.0 = select i1 %.not, i64 32, i64 %i.e
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define ptr @b3CloneAndTransformHull(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, <2 x float> %2, float %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !74
  %i.d = sext i32 %i.c to i64
  %i.e = tail call ptr @b3Alloc(i64 noundef %i.d) #25 ; 21 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !74
  %i.g = sext i32 %i.f to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.e, ptr nonnull align 8 %0, i64 %i.g, i1 false)
  %i.h = fcmp olt float %3, 0.000000e+00
  %i.i = fneg float %3
  %i.j = select i1 %i.h, float %i.i, float %3     ; 2 uses
  %i.k = fcmp oge float %3, 0.000000e+00
  %i.l = fcmp ogt float %i.j, f0x3C23D70A
  %i.m = select i1 %i.l, float %i.j, float f0x3C23D70A ; 2 uses
  %i.n = fcmp olt <2 x float> %2, zeroinitializer
  %i.o = fneg <2 x float> %2
  %i.p = select <2 x i1> %i.n, <2 x float> %i.o, <2 x float> %2 ; 2 uses
  %i.q = fcmp oge <2 x float> %2, zeroinitializer
  %i.r = fcmp ogt <2 x float> %i.p, splat (float f0x3C23D70A)
  %i.s = select <2 x i1> %i.r, <2 x float> %i.p, <2 x float> splat (float f0x3C23D70A) ; 2 uses
  %i.t = fneg <2 x float> %i.s
  %i.u = select <2 x i1> %i.q, <2 x float> %i.s, <2 x float> %i.t ; 3 uses
  %i.v = fneg float %i.m
  %i.w = select i1 %i.k, float %i.m, float %i.v   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %i.y = load i32, ptr %i.x, align 4, !tbaa !70   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = ptrtoint ptr %i.e to i64                ; 7 uses
  %i.ab = sext i32 %i.y to i64
  %i.ac = add nsw i64 %i.ab, %i.aa
  %i.ad = inttoptr i64 %i.ac to ptr               ; 9 uses
  %.0.i = select i1 %i.z, ptr null, ptr %i.ad     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !71
  %i.ag = sext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ag, %i.aa
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !21 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 100 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !18 ; 8 uses
  %shift = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.u, %shift
  %i.an = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ao = fmul float %i.w, %i.an
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  br i1 %i.ap, label %.preheader362, label %.loopexit

.preheader362:                                    ; preds = %bb.b
  %i.aq = icmp sgt i32 %i.ak, 0
  br i1 %i.aq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader362
  %wide.trip.count = zext nneg i32 %i.ak to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.preheader362
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  %i.au = sext i32 %i.as to i64
  %i.av = add nsw i64 %i.au, %i.aa
  %i.aw = inttoptr i64 %i.av to ptr
  %.0.i299 = select i1 %i.at, ptr null, ptr %i.aw ; 5 uses
  %i.ax = icmp sgt i32 %i.am, 0
  br i1 %i.ax, label %.lr.ph374.preheader, label %.loopexit

.lr.ph374.preheader:                              ; preds = %._crit_edge
  %wide.trip.count399 = zext nneg i32 %i.am to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count399, 3      ; 3 uses
  %i.ay = icmp ult i32 %i.am, 4
  br i1 %i.ay, label %.lr.ph374.epil.preheader, label %.lr.ph374.preheader.new

.lr.ph374.preheader.new:                          ; preds = %.lr.ph374.preheader
  %unroll_iter = and i64 %wide.trip.count399, 2147483644
  br label %.lr.ph374

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !84  ; 3 uses
  %i.bb = zext i8 %i.ba to i32                    ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.0279 = phi i32 [ %i.bb, %.lr.ph ], [ %i.bg, %bb.c ] ; 3 uses
  %i.bc = zext nneg i32 %.0279 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !80  ; 2 uses
  %i.bf = icmp eq i8 %i.be, %i.ba                 ; 3 uses
  %i.bg = zext i8 %i.be to i32                    ; 2 uses
  %.1280 = select i1 %i.bf, i32 %.0279, i32 %i.bg
  %.not296 = icmp eq i32 %.1280, %i.bb
  %or.cond = or i1 %i.bf, %.not296
  br i1 %or.cond, label %.preheader361, label %bb.c, !llvm.loop !256

.preheader361:                                    ; preds = %bb.c
  %.1282.le = select i1 %i.bf, i32 %.0279, i32 -1
  br label %.preheader361.a

.preheader361.a:                                  ; preds = %.preheader361, %bb.e
  %.2283 = phi i32 [ %.2, %bb.e ], [ %.1282.le, %.preheader361 ]
  %.2 = phi i32 [ %i.bu, %bb.e ], [ %i.bb, %.preheader361 ] ; 3 uses
  %i.bh = zext nneg i32 %.2 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.bh ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !80  ; 2 uses
  %i.bk = trunc i32 %.2283 to i8
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81  ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = icmp samesign ult i32 %.2, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader361.a
  %i.bp = zext i8 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  %.sroa.0190.0.copyload = load i8, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  store i8 %i.bt, ptr %i.br, align 1
  store i8 %.sroa.0190.0.copyload, ptr %i.bs, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader361.a
  %i.bu = zext i8 %i.bj to i32
  %.not297 = icmp eq i8 %i.bj, %i.ba
  br i1 %.not297, label %bb.f, label %.preheader361.a, !llvm.loop !257

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !258

.lr.ph374:                                        ; preds = %.lr.ph374, %.lr.ph374.preheader.new
  %indvars.iv396 = phi i64 [ 0, %.lr.ph374.preheader.new ], [ %indvars.iv.next397.3, %.lr.ph374 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph374.preheader.new ], [ %niter.next.3, %.lr.ph374 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !78
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !81
  store i8 %i.ca, ptr %i.bv, align 1, !tbaa !78
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !78
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  store i8 %i.ch, ptr %i.cc, align 1, !tbaa !78
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !78
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !81
  store i8 %i.co, ptr %i.cj, align 1, !tbaa !78
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 3 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !78
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !81
  store i8 %i.cv, ptr %i.cq, align 1, !tbaa !78
  %indvars.iv.next397.3 = add nuw nsw i64 %indvars.iv396, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph374, !llvm.loop !259

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph374
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph374.epil.preheader

.lr.ph374.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph374.preheader
  %indvars.iv396.epil.init = phi i64 [ 0, %.lr.ph374.preheader ], [ %indvars.iv.next397.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod585 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod585)
  br label %.lr.ph374.epil

.lr.ph374.epil:                                   ; preds = %.lr.ph374.epil, %.lr.ph374.epil.preheader
  %indvars.iv396.epil = phi i64 [ %indvars.iv396.epil.init, %.lr.ph374.epil.preheader ], [ %indvars.iv.next397.epil, %.lr.ph374.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph374.epil.preheader ], [ %epil.iter.next, %.lr.ph374.epil ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i299, i64 %indvars.iv396.epil ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !78
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !81
  store i8 %i.db, ptr %i.cw, align 1, !tbaa !78
  %indvars.iv.next397.epil = add nuw nsw i64 %indvars.iv396.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph374.epil, !llvm.loop !260

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph374.epil, %._crit_edge, %bb.b
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dd = load <2 x float>, ptr %i.dc, align 4    ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.df = load <2 x float>, ptr %i.de, align 4    ; 6 uses
  %i.dg = fmul <2 x float> %i.dd, %i.dd           ; 3 uses
  %foldExtExtBinop537 = fmul <2 x float> %i.df, %i.df
  %shift539 = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop540 = fmul <2 x float> %i.dd, %shift539 ; 2 uses
  %i.dh = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.dh, %i.di           ; 2 uses
  %i.dk = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x float> %i.dd, %i.dk           ; 2 uses
  %shift542 = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop543 = fmul <2 x float> %i.df, %shift542 ; 2 uses
  %i.dm = shufflevector <2 x float> %foldExtExtBinop537, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fadd <2 x float> %i.dg, %i.dm
  %i.do = fmul <2 x float> %i.dn, splat (float 2.000000e+00)
  %foldExtExtBinop545 = fadd <2 x float> %foldExtExtBinop540, %foldExtExtBinop543
  %foldExtExtBinop547 = fsub <2 x float> %foldExtExtBinop540, %foldExtExtBinop543
  %i.dp = shufflevector <2 x float> %foldExtExtBinop545, <2 x float> %foldExtExtBinop547, <2 x i32> <i32 0, i32 2>
  %i.dq = fmul <2 x float> %i.dp, splat (float 2.000000e+00)
  %i.dr = fsub <2 x float> splat (float 1.000000e+00), %i.do
  %i.ds = fsub <2 x float> %i.dj, %i.dl           ; 2 uses
  %i.dt = fadd <2 x float> %i.dj, %i.dl           ; 2 uses
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> %i.dt, <2 x i32> <i32 1, i32 2>
  %i.dv = fmul <2 x float> %i.du, splat (float 2.000000e+00)
  %i.dw = shufflevector <2 x float> %i.ds, <2 x float> %i.dt, <2 x i32> <i32 0, i32 3>
  %i.dx = fmul <2 x float> %i.dw, splat (float 2.000000e+00)
  %shift549 = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop550 = fadd <2 x float> %i.dg, %shift549
  %i.dy = extractelement <2 x float> %foldExtExtBinop550, i64 0
  %i.dz = fmul float %i.dy, 2.000000e+00
  %i.ea = fsub float 1.000000e+00, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !19 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = sext i32 %i.ec to i64
  %i.ef = add nsw i64 %i.ee, %i.aa
  %i.eg = inttoptr i64 %i.ef to ptr               ; 3 uses
  %.0.i300 = select i1 %i.ed, ptr null, ptr %i.eg ; 5 uses
  %i.eh = add i32 %i.am, 3
  %i.ei = and i32 %i.eh, -4                       ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !72 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = sext i32 %i.ek to i64
  %i.en = add nsw i64 %i.em, %i.aa
  %i.eo = inttoptr i64 %i.en to ptr               ; 16 uses
  %.0.i301 = select i1 %i.el, ptr null, ptr %i.eo ; 6 uses
  %i.ep = sext i32 %i.ei to i64                   ; 8 uses
  %i.eq = getelementptr [4 x i8], ptr %.0.i301, i64 %i.ep ; 13 uses
  %i.er = getelementptr [4 x i8], ptr %i.eq, i64 %i.ep ; 15 uses
  %i.es = icmp sgt i32 %i.am, 0
  br i1 %i.es, label %.lr.ph377, label %.preheader360

.lr.ph377:                                        ; preds = %.loopexit
  %.sroa.0133.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2134.0.copyload = load float, ptr %.sroa.2134.0..sroa_idx, align 8
  %i.et = shufflevector <2 x float> %.sroa.0133.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %wide.trip.count404 = zext nneg i32 %i.am to i64
  br label %bb.g

.preheader360:                                    ; preds = %bb.g, %.loopexit
  %i.eu = icmp slt i32 %i.am, %i.ei
  br i1 %i.eu, label %.lr.ph379.preheader, label %._crit_edge380

.lr.ph379.preheader:                              ; preds = %.preheader360
  %i.ev = sext i32 %i.am to i64                   ; 6 uses
  %i.ew = sub nsw i64 %i.ep, %i.ev                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ew, 68
  br i1 %min.iters.check, label %.lr.ph379.preheader584, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph379.preheader
  %i.ex = shl nsw i64 %i.ev, 2                    ; 3 uses
  %i.ey = getelementptr i8, ptr %i.eo, i64 %i.ex  ; 5 uses
  %i.ez = shl nsw i64 %i.ep, 2                    ; 3 uses
  %i.fa = getelementptr i8, ptr %i.eo, i64 %i.ez  ; 5 uses
  %i.fb = getelementptr i8, ptr %.0.i301, i64 %i.ex
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.ez  ; 4 uses
  %i.fd = shl nsw i64 %i.ep, 3                    ; 2 uses
  %i.fe = getelementptr i8, ptr %.0.i301, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.ex  ; 5 uses
  %i.fg = mul nsw i64 %i.ep, 12
  %i.fh = getelementptr i8, ptr %.0.i301, i64 %i.fg ; 5 uses
  %i.fi = getelementptr i8, ptr %i.eo, i64 4      ; 3 uses
  %i.fj = getelementptr i8, ptr %.0.i301, i64 %i.ez
  %i.fk = getelementptr i8, ptr %i.fj, i64 4      ; 3 uses
  %i.fl = getelementptr i8, ptr %.0.i301, i64 %i.fd
  %i.fm = getelementptr i8, ptr %i.fl, i64 4      ; 2 uses
  %bound0 = icmp ult ptr %i.ey, %i.er
  %bound1 = icmp ult ptr %i.fc, %i.fa
  %found.conflict = and i1 %bound0, %bound1
  %bound0493 = icmp ult ptr %i.ey, %i.fh
  %bound1494 = icmp ult ptr %i.ff, %i.fa
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx = or i1 %found.conflict, %found.conflict495
  %bound0496 = icmp ult ptr %i.ey, %i.fi
  %bound1497 = icmp ugt ptr %i.fa, %i.eo
  %found.conflict498 = and i1 %bound0496, %bound1497
  %conflict.rdx499 = or i1 %conflict.rdx, %found.conflict498
  %bound0500 = icmp ult ptr %i.ey, %i.fk
end_hunk_0
